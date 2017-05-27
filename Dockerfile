FROM greyfoxit/alpine-openjdk8:8u131

# maintainer: Greyfox Team | team@greyfox.it | @greyfoxit

# Setup

ENV VERSION_SDK_TOOLS=25.2.5 \
	VERSION_BUILD_TOOLS=25.0.3 \
	VERSION_TARGET_SDK=25 \
	ANDROID_HOME=/usr/local/android-sdk-linux

ENV	ANDROID_SDK_UPDATE=build-tools-$VERSION_BUILD_TOOLS,android-$VERSION_TARGET_SDK,platform-tools,extra-google-google_play_services,extra-google-m2repository \
	PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools \
	TERM=dumb

# Install dependencies

RUN apk add --no-cache bash \

# Download Android SDK packages

&& mkdir -p $ANDROID_HOME \
&& wget -q -O android-sdk.zip http://dl.google.com/android/repository/tools_r$VERSION_SDK_TOOLS-linux.zip \
&& unzip android-sdk.zip -d $ANDROID_HOME && rm -f android-sdk.zip \
&& chown -R root.root $ANDROID_HOME \
&& mkdir -p $ANDROID_HOME/licenses/ \
&& echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > $ANDROID_HOME/licenses/android-sdk-license \
&& echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_HOME/licenses/android-sdk-preview-license \
&& chmod +x $ANDROID_HOME/tools/android \
&& (while [ 1 ]; do sleep 5; echo y; done) | $ANDROID_HOME/tools/android update sdk -u -a -t $ANDROID_SDK_UPDATE \
