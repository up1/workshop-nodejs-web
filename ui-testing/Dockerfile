FROM python:3
RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
WORKDIR /testcases
COPY . .
CMD robot *.robot