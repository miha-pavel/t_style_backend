# https://nox.thea.codes/en/stable/
# https://github.com/GoogleCloudPlatform/python-docs-samples/blob/main/noxfile-template.py#L135
# https://www.programcreek.com/python/example/94790/nox.session
import nox


@nox.session
def lint(session):
    session.install("flake8")
    session.run("flake8", "--import-order-style", "google")
