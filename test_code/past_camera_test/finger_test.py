import cv2
from sympy import false, true
import mediapipe as mp

mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands
x_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
y_pos = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

def track_movement(x, y):
    if(len(x_pos) > 0):
        x_pos.pop(0)
        y_pos.pop(0)
    x_pos.append(x)
    y_pos.append(y)

    swipe = False
    point = False

    '''for i in range(len(x_pos)):
        if(i > 0):
            if( (x_pos[i] - x_pos[i-1]) == 0 ):
                point = True
            else:
                point = False
                break
        
        if(i > 0):
            if(x_pos[i] < x_pos[i-1]):
                swipe = True
            else:
                swipe = False
                break'''

    if( (x_pos[len(x_pos) // 2] - x_pos[0]) > 200 ):
        swipe = True
    else:
        swipe = False

    if( ( (x_pos[len(x_pos) - 1] - x_pos[0]) < 4 ) and ( (y_pos[len(y_pos) - 1] - y_pos[0]) < 4 ) and ( (y_pos[len(y_pos) // 2] - y_pos[0]) < 4 ) ):
        point = True
    else:
        point = False

    if(swipe):
        #newPage()
        print("swipe")
    if(point):
        #getWord(x,y)
        print("point")

# For webcam input:
cap = cv2.VideoCapture(0)
with mp_hands.Hands(
    model_complexity=0,
    min_detection_confidence=0.5,
    min_tracking_confidence=0.5) as hands:
    while cap.isOpened():
        success, image = cap.read()
        if not success:
            print("Ignoring empty camera frame.")
            # If loading a video, use 'break' instead of 'continue'.
            continue

        # To improve performance, optionally mark the image as not writeable to
        # pass by reference.
        image.flags.writeable = False
        image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
        results = hands.process(image)

        # Draw the hand annotations on the image.
        image.flags.writeable = True
        image = cv2.cvtColor(image, cv2.COLOR_RGB2BGR)
        image_height, image_width, _ = image.shape
        if results.multi_hand_landmarks:
            for hand_landmarks in results.multi_hand_landmarks:
                x = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].x * image_width
                y = hand_landmarks.landmark[mp_hands.HandLandmark.INDEX_FINGER_TIP].y * image_height
                print(
                    f'Index finger tip coordinates: (',
                    f'{x}, '
                    f'{y})'
                )
                track_movement(x, y)
                mp_drawing.draw_landmarks(
                    image,
                    hand_landmarks,
                    mp_hands.HAND_CONNECTIONS,
                    mp_drawing_styles.get_default_hand_landmarks_style(),
                    mp_drawing_styles.get_default_hand_connections_style())
        # Flip the image horizontally for a selfie-view display.
        cv2.imshow('MediaPipe Hands', cv2.flip(image, 1))
        if cv2.waitKey(5) & 0xFF == 27:
            break
cap.release()