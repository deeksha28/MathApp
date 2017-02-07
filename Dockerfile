FROM golang:1.6

# Create the directory where the application will reside
RUN mkdir /hom/efli/app

# Copy the application files (needed for production)
ADD MathApp /home/efli/app/MathApp
ADD views /home/efli/app/views
ADD conf /home/efli/app/conf

# Set the working directory to the app directory
WORKDIR /home/efli/app

# Expose the application on port 8080.
# This should be the same as in the app.conf file
EXPOSE 8080

# Set the entry point of the container to the application executable
ENTRYPOINT /home/efli/app/MathApp