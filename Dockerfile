FROM gentoo/portage:latest as portage

FROM gentoo/stage3:latest

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

RUN emerge -qv dev-vcs/git net-misc/openssh app-crypt/gnupg dev-util/pkgdev app-portage/pycargoebuild
