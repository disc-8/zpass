%global srcname zpass

Name: zpass
Version: 1.0.0
Release: 1%{?dist}
License: GPLv3
Summary: Storage-less password manager
Url: https://github.com/disc-8/zpass

BuildArch: noarch
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

Requires: bash
Requires: xxd
Requires: libkcapi-hmaccalc
 
%description
zpass is a password generator and "manager" that uses a plain text input, like an username and website name to make a near-uncrackable password.

#-- PREP, BUILD & INSTALL -----------------------------------------------------#
%prep
mkdir -p ${Name}-${Version}/usr/bin/
cp ${Name}.sh ${Name}-${Version}/usr/bin/${Name}
tar czvf ${Name}-${Version}.tar.gz ${Name}-${Version}

%build

%install
rm -rf %{buildroot}
mkdir -p  %{buildroot}/usr/bin
install -m 0755 %{Name} %{buildroot}/usr/bin/%{Name}

%clean
rm -rf %{buildroot}
#-- FILES ---------------------------------------------------------------------#
%files
%defattr(-,root,root)
/usr/bin/zpass

#-- CHANGELOG -----------------------------------------------------------------#
%changelog
* Thu Feb 29 2024 Artyom Vasilev - 1.0.0
- Released
