# Select base image
FROM nginx

# Label it - add optional details
LABEL MAINTAINER=IMRAN
# Copy the data from localhost to container
COPY index.html /usr/share/nginx/html

# Copy index.html to /usr/share/nginx/html/

# Expose the required port - port 80
EXPOSE 80

# Launch the app
CMD ["nginx", "-g", "daemon off;"]
# CMD will the run the command in this case to launch the image when we create a container