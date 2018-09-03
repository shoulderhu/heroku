<%@taglib prefix="header" tagdir="/WEB-INF/tags" %>

<nav class="navbar navbar-expand-sm nav-masthead navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">Blog</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#data_target" aria-controls="data_target"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-around"
         id="data_target">
        <div class="navbar-nav">
            <header:isActive active="${param.active}" value="index"
                             href="${initParam.home}"/>
            <i class="fas fa-home"></i>
            Home
            </a>
            <header:isActive active="${param.active}" value="writeup"
                             href="${initParam.writeup}"/>
            <i class="fas fa-pencil-alt"></i>
            Writeup
            </a>
            <header:isActive active="${param.active}" value="tool"
                             href="${initParam.tool}"/>
            <i class="fas fa-wrench"></i>
            Tool
            </a>
            <header:isActive active="${param.active}" value="project"
                             href="${initParam.project}"/>
            <i class="fas fa-code"></i>
            Project
            </a>
            <header:isActive active="${param.active}" value="about"
                             href="${initParam.about}"/>
            <i class="fas fa-user"></i>
            About
            </a>
        </div>
    </div>
</nav>