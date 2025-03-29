FROM python:3
WORKDIR /app
 
COPY api/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
 
COPY api/ .
 
# CMD [ "python", "main:app" ]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]