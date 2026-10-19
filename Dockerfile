FROM alpine:latest

WORKDIR /app

ENV STUDENT_NAME="Yerzat"
ENV STUDENT_SURNAME="Kali"
ENV STUDENT_GROUP="IT2-2301"
ENV STUDENT_ID="38307"

COPY . .

CMD echo "================================" && \
    echo "DevOps Student Application" && \
    echo "================================" && \
    echo "Name: $STUDENT_NAME" && \
    echo "Surname: $STUDENT_SURNAME" && \
    echo "Group: $STUDENT_GROUP" && \
    echo "Student ID: $STUDENT_ID" && \
    echo "Application is running successfully!"
