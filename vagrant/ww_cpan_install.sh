#!/usr/bin/env bash

sudo install CPAN
sudo reload cpan
sudo cpan install Term::ReadPassword 
sudo cpan install XML::Parser::EasyTree 
sudo cpan install HTML::Template 
sudo cpan install Iterator 
sudo cpan install Iterator::Util 
sudo cpan install Mail::Sender 
sudo cpan install Apache2::SOAP
sudo mkdir /usr/include/apache2

a2enmod apreq
apache2ctl restart

echo "apache restarted"
