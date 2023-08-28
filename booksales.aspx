<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="booksales.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- this is carousel code brother-->
      <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://source.unsplash.com/1400x500/?mac,coding,programming" class="d-block w-100" alt="loading image">
            <div class="carousel-caption d-none d-md-block ">
              <h2>Welcome to icoder</h2>
              <p>technology News,Development and Trends</p>
            <a href="bookstock.aspx"> <div class="button btn btn-danger">Book Stock</div></a> 
            <a href="booksales.aspx"><div class="button btn btn-primary">Book Salse</div></a>  
            <a href="bookstock.aspx"><div class="button btn btn-success"> Book</div></a>  
            </div>
          </div>
          <div class="carousel-item">
            <img src="https://source.unsplash.com/1400x500/?coding,hacker"  class="d-block w-100" alt="Loading image">
            <div class="carousel-caption d-none d-md-block">
                <h2>Award winning Blog</h2>
                <p>technology News,Development and Trends</p>
                <div class="button btn btn-danger">Technology</div>
                <div class="button btn btn-primary">Webdevelopment</div>
                <div class="button btn btn-success">Tech fun</div>
              </div>
          </div>
          <div class="carousel-item">
            <img src="https://source.unsplash.com/1400x500/?coder,programming"  class="d-block w-100" alt="Loading image">
            <div class="carousel-caption d-none d-md-block">
                <h2>The best coding blog</h2>
                <p>technology News,Development and Trends</p>
                <div class="button btn btn-danger">Technology</div>
                <div class="button btn btn-primary">Webdevelopment</div>
                <div class="button btn btn-success">Tech fun</div>
              </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>


        <div class="container my-4">
        <div class="row mb-2">
            <div class="col-md-6">
              <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <strong class="d-inline-block mb-2 text-primary">world</strong>
                  <h3 class="mb-0">Global Coding Conferences </h3>
                  <div class="mb-1 text-muted">Nov 12</div>
                  <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="stretched-link">Continue reading</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="https://source.unsplash.com/200x250/?network" alt="Loading image">
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <strong class="d-inline-block mb-2 text-success">Design</strong>
                  <h3 class="mb-0">Learn Web-designing</h3>
                  <div class="mb-1 text-muted">Nov 11</div>
                  <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="stretched-link">Continue reading</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="https://source.unsplash.com/200x250/?webdesign" alt="Loading image">
        
                </div>
              </div>
            </div>
          </div>


            <div class="row mb-2">
                <div class="col-md-12">
                  <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                      <strong class="d-inline-block mb-2 text-primary">world</strong>
                      <h3 class="mb-0">Global Coding Conferences </h3>
                      <div class="mb-1 text-muted">Nov 12</div>
                      <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                      <a href="#" class="stretched-link">Continue reading</a>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                        <img class="bd-placeholder-img" width="200" height="250" src="https://source.unsplash.com/200x250/?teacher" alt="Loading image">
                    </div>
                  </div>
                </div>




</asp:Content>

