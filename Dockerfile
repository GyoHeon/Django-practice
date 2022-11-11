FROM ubuntu:16.04
MAINTAINER ghl12078@gmail.com
RUN apt-get -y update
# 2. install python
RUN apt-get -y install python3-venv zip
# 3. Copy Source Code
COPY . /root
RUN python3 -m venv ~/env
# 4. Gem 패키치 설치 및 실행 디렉토리 설정
WORKDIR /vagrant
#RUN bundle install
VOLUME [/vagrant]
# 5. Sinatra 서버 실행 + 리슨 포트 정의
EXPOSE 8080
#CMD echo "hello" >> sample.text
#CMD touch ~/.bash_profile
#CMD echo "alias python='python3'" >> ~/.bash_profile
#CMD bundle exec ruby app.rb -o 0.0.0.0