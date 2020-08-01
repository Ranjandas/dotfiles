FROM alpine

ENV USER    work
ENV WORKDIR /home/$USER

RUN apk add --no-cache tmux \
                       vim \
                       terraform \
                       zsh \
                       curl \
                       git \
                       python3 \
                       py3-pip \
                       openssh-client \
                       netcat-openbsd

RUN adduser -u 501 \
            -s /bin/zsh \
            -D \
            $USER

USER $USER

WORKDIR $WORKDIR

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

COPY .vimrc $WORKDIR/.vimrc

CMD /bin/zsh
