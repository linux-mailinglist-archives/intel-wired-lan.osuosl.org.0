Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DEF86121B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 13:59:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 311A58374F;
	Fri, 23 Feb 2024 12:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id onuUUXYWRQ-t; Fri, 23 Feb 2024 12:59:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EFA283720
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708693177;
	bh=u7WN3PIJLo4Ub81fhAIbNFcMUiqLLh+9Y9FHAkgxC04=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SHYpdKUCm6pwxDTb/B8Y9DPaetkX7wMyEPrm0N0XdFtKLHtq/T2iwIS7CeLAk9iZP
	 YOaQpUONILvMUq6SwqtqJ7Ba2+5Ge5DRIScVvP6l6I0uZkuvlIQ5/NfOtsRBD6oGz8
	 KBsEAM7GhrJw+vk+MJACC3OtRrdHRaRA9gTlsc12L5gWkLJPvTYSCFV+gQEwlKt9iB
	 TURb+RF/HSLvyWI014cpLD+HpQuTWwZtpqPjDk2HN3+AaRURv0WzHWxXI1u4/obfCl
	 EW5QnE6YIUDqeCHeAvJW/bHwKw9qt5VOvfekSFmue/mYZfONhD7CClyfzld73/+gHX
	 GBwhidPo49T3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EFA283720;
	Fri, 23 Feb 2024 12:59:37 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4D9C1BF28E
 for <intel-wired-lan@osuosl.org>; Fri, 23 Feb 2024 12:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A02CE41AFC
 for <intel-wired-lan@osuosl.org>; Fri, 23 Feb 2024 12:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCUjBcmMIxsz for <intel-wired-lan@osuosl.org>;
 Fri, 23 Feb 2024 12:59:33 +0000 (UTC)
X-Greylist: delayed 316 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 23 Feb 2024 12:59:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2ECD341A84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ECD341A84
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=149.217.71.135;
 helo=smtp-out1.mpia-hd.mpg.de; envelope-from=kulas@mpia.de;
 receiver=<UNKNOWN> 
Received: from smtp-out1.mpia-hd.mpg.de (smtp-out1.mpia-hd.mpg.de
 [149.217.71.135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2ECD341A84
 for <intel-wired-lan@osuosl.org>; Fri, 23 Feb 2024 12:59:33 +0000 (UTC)
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6])
 by smtp-out1.mpia-hd.mpg.de (Postfix) with ESMTPS id 667C513DC9;
 Fri, 23 Feb 2024 13:54:14 +0100 (CET)
Received: from mailer.mpia-hd.mpg.de (localhost [127.0.0.1])
 by mailer.mpia-hd.mpg.de (Postfix) with ESMTP id 5FB8710C6EB6;
 Fri, 23 Feb 2024 13:54:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at mpia-hd.mpg.de
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6]) by
 mailer.mpia-hd.mpg.de (Postfix) with ESMTPSA id D795610C6ECD; 
 Fri, 23 Feb 2024 13:54:13 +0100 (CET)
Date: Fri, 23 Feb 2024 14:07:41 +0100
From: Martin Kulas <kulas@mpia.de>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Message-ID: <ZdiYnfCJX8d1QDHu@argosmk.mpia-hd.mpg.de>
References: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
 <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
 <ZdSmcQ1HI8cOSJhj@argosmk.mpia-hd.mpg.de>
 <MW4PR11MB58006701601BD1A1863C83CF86562@MW4PR11MB5800.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
 micalg=sha-256; boundary="pBSifk289XAyhiq0"
Content-Disposition: inline
In-Reply-To: <MW4PR11MB58006701601BD1A1863C83CF86562@MW4PR11MB5800.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=mpia.de; h=
 in-reply-to:content-disposition:content-type:content-type
 :mime-version:references:message-id:subject:subject:from:from
 :date:date:received; s=mailer201911; t=1708692854; x=1710507255;
 bh=oiRmTY8RpxXMYImDEZjabVLyxsXiPSmNL+V9wqNj9FI=; b=AAE3x+K1mbXi
 pZsBR+aVdUjuCCnt74mA798kwGb6fSSARx6UvkISFoaqfxlCAqHZ6E2ZG+JUkvHJ
 KrKFW9j1Iefdb4AZR4+4Gq4/1hugGOPJPxkuYeq3mD3PRdjmiibVLR60zKVLuqS9
 U/JB4XA2OHNyOKeVCn9thQ9F/liwBg37pgs272l5AickK5PrdzSrI25+1b3frNJc
 WJTjCw0XVHwqni/LOFxzG2Ml5sT6tnHajrSly3cvWJjRZ49Edc+0aNTDdb+kcX3L
 zZXoYq8+5KIMs7Z19CeFAZnTrF9BqZCT8U146MkY+wxB0KorvPEN+In6ONJrssDv
 oYEKFT9HNQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mpia.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mpia.de header.i=@mpia.de header.a=rsa-sha256
 header.s=mailer201911 header.b=AAE3x+K1
X-Mailman-Original-Authentication-Results: mailer.mpia-hd.mpg.de (amavisd-new); 
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=mpia.de
Subject: Re: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--pBSifk289XAyhiq0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Karol,

On Thu, Feb 22, 2024 at 05:30:09PM +0000, Kolacinski, Karol wrote:
[...]
>=20
> On Tue, Feb 20, 2024 at 2:17PM +0100, Martin Kulas wrote:
> >=20
> > After having applied that commit,=A0 the TX timestamp read latency stays
> > unacceptable high (in the range of about 700 microseconds), i.e. no
> > regression.
>=20
> This improvement utilises 'low latency read', where the driver writes
> a timestamp request to a specific register, FW has to poll this
> register every 0.6 ms and then the driver receives a second interrupt,
> so that it can read the timestamp from this register.
> Unfortunately, polling every 0.6 ms is the best we could do.


Thank you very much for your explanation!

The fact the the firmware (FW) polls the TX timestamp register every 600
microseconds explains the TX timestamp read latency of my application of
700 microseconds.

Since it is a firmware problem:  A updated firmware with customizable=20
polling rate would enable low TX hardware timestamp read latencies.  Right?


Currently,  I am looking for other Ethernetcards with TX hardware
timestamping capability.  I am not sure whether the Intel X710-DA2 (i40e)=
=20
supports TX hardware timestamps for all outgoing packets and not only
for PTP packets.  Do you know the timestamping capabilities of that card by
any chance?  The datasheet of that Ethernet card is not completely clear
about it.

[...]


Kind regards,
Martin


--pBSifk289XAyhiq0
Content-Type: application/x-pkcs7-signature
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIIVIgYJKoZIhvcNAQcCoIIVEzCCFQ8CAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0B
BwGgghFaMIIFjTCCBHWgAwIBAgIMHDrUUIR+7vNY+I53MA0GCSqGSIb3DQEBCwUAMIGVMQsw
CQYDVQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQD
EyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYxMTAzMTUyNDQ4
WhcNMzEwMjIyMjM1OTU5WjBqMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMREwDwYD
VQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4LVBsYW5jay1HZXNlbGxzY2hhZnQxFTATBgNV
BAMMDE1QRyBDQSAtIEcwMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ4ceOfS
4eFqoDrPzHdOF8VNshbXzNeWbiVdD2T+wZqkiSiyz8qpjqwA3zXSeTyBgbaNiQYbUUQR3RtB
kTjr00R48zoGveVjk3rq2u/U9tRVsMAMGtvThZw92aZULOh4HcEK2VjYtVhzScZ/+JgNfazR
AVHObq0iKWT72YuV5pRd79yRzpcdylle5lLXgeKcBBHxk4OJ6TwCW6dqO2q8UHaCKvj7tjrL
6oQ+0ZOEHml/hDNUEuJandaLVuIRO9Ifzgz8tcX34G2YrqLVkCwupyMGuuUL+m8qpSF9Kmbr
vfVbLvq97FmLC+UgZIHnDSO3zCebXx646MX6ypfxK0wLfBkCAwEAAaOCAgUwggIBMBIGA1Ud
EwEB/wQIMAYBAf8CAQEwDgYDVR0PAQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGC
LB4wDwYNKwYBBAGBrSGCLAEBBDAdBgNVHQ4EFgQUxIilB+64e6oME7/aKXRjUhtJcBYwHwYD
VR0jBBgwFoAUk+PYMiba1fFKpZFK4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0
cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNy
bDBAoD6gPIY6aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIv
Y3JsL2NhY3JsLmNybDCB3QYIKwYBBQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9v
Y3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2Nk
cDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQw
SgYIKwYBBQUHMAKGPmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2Ev
cHViL2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQAS6Xg+RcoM6jo4/v5Q
DsttFEDhlpcdETLj3COJ7shU/EhpivZQ+0AoPx6GiZX1P6+/HsfkhInXt9unr5RQKCVyBY1c
szZbQ4aTCqzyA7odjdds8p9RLWoKjy+obuKVUc3AaZfxdhwr7ZjMeSuFjdS9X5h1i3EmqXYV
y7wGfURvwd66slCy0jTfMR12F6ZrbxtFRiQJ3WfpY/gR+7r3d5x1p1xBwtqu4kJQ1KoNGsCK
liYHS5cdUPA4P7KHb9JvizdJDsxr1Q0QpqMAXVhoYbrA/nbileuqQZfqoQvuC4qWq4lmjKiu
aaTEETgE42HjUb8CPpw3BF69rw2ipnW8YA1cMIIFEjCCA/qgAwIBAgIJAOML1fivJdmBMA0G
CSqGSIb3DQEBCwUAMIGCMQswCQYDVQQGEwJERTErMCkGA1UECgwiVC1TeXN0ZW1zIEVudGVy
cHJpc2UgU2VydmljZXMgR21iSDEfMB0GA1UECwwWVC1TeXN0ZW1zIFRydXN0IENlbnRlcjEl
MCMGA1UEAwwcVC1UZWxlU2VjIEdsb2JhbFJvb3QgQ2xhc3MgMjAeFw0xNjAyMjIxMzM4MjJa
Fw0zMTAyMjIyMzU5NTlaMIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBG
b2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYD
VQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9y
aXR5IDIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDLYNf/ZqFBzdL6h5eKc6uZ
TepnOVqhYIBHFU6MlbLlz87TV0uNzvhWbBVVdgfqRv3IA0VjPnDUq1SAsSOcvjcoqQn/BV0Y
D8SYmTezIPZmeBeHwp0OzEoy5xadrg6NKXkHACBU3BVfSpbXeLY008F0tZ3pv8B3Teq9WQfg
Wi9sPKUA3DW9ZQ2PfzJt8lpqS2IB7qw4NFlFNkkF2njKam1bwIFrEczSPKiL+HEayjvigN0W
tGd6izbqTpEpPbNRXK2oDL6dNOPRDReDdcQ5HrCUCxLx1WmOJfS4PSu/wI7DHjulv1UQqyqu
F5deM87I8/QJB+MChjFGawHFEAwRx1npAgMBAAGjggF0MIIBcDAOBgNVHQ8BAf8EBAMCAQYw
HQYDVR0OBBYEFJPj2DIm2tXxSqWRSuDqS+KiDM/hMB8GA1UdIwQYMBaAFL9ZIDYAeaCgImuM
1fJh0rgsy4JKMBIGA1UdEwEB/wQIMAYBAf8CAQIwMwYDVR0gBCwwKjAPBg0rBgEEAYGtIYIs
AQEEMA0GCysGAQQBga0hgiweMAgGBmeBDAECAjBMBgNVHR8ERTBDMEGgP6A9hjtodHRwOi8v
cGtpMDMzNi50ZWxlc2VjLmRlL3JsL1RlbGVTZWNfR2xvYmFsUm9vdF9DbGFzc18yLmNybDCB
hgYIKwYBBQUHAQEEejB4MCwGCCsGAQUFBzABhiBodHRwOi8vb2NzcDAzMzYudGVsZXNlYy5k
ZS9vY3NwcjBIBggrBgEFBQcwAoY8aHR0cDovL3BraTAzMzYudGVsZXNlYy5kZS9jcnQvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY2VyMA0GCSqGSIb3DQEBCwUAA4IBAQCHC/8+Aptl
yFYt1juamItxT9q6Kaoh+UYu9bKkD64ROHk4sw50unZdnugYgpZi20wz6N35at8yvSxMR2BV
f+d0a7Qsg9h5a7a3TVALZge17bOXrerufzDmmf0i4nJNPoRb7vnPmep/11I5LqyYAER+aTu/
de7QCzsazeX3DyJsR4T2pUeg/dAaNH2t0j13s+70103/w+jlkk9ZPpBHEEqwhVjAb3/4ru0I
Qp4e1N8ULk2PvJ6Uw+ft9hj4PEnnJqinNtgs3iLNi4LY2XjiVRKjO4dEthEL1QxSr2mMDwbf
0KJTi1eYe8/9ByT0/L3D/UqSApcb8re2z2WKGqK1chk5MIIGrzCCBZegAwIBAgIMJahoTIbr
tXOEmu+gMA0GCSqGSIb3DQEBCwUAMGoxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4x
ETAPBgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdlc2VsbHNjaGFmdDEV
MBMGA1UEAwwMTVBHIENBIC0gRzAyMB4XDTIxMTEwODA5MTU0MFoXDTI0MTEwNzA5MTU0MFow
gZUxCzAJBgNVBAYTAkRFMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdlc2VsbHNjaGFmdDEsMCoG
A1UECwwjTWF4LVBsYW5jay1JbnN0aXR1dCBmdWVyIEFzdHJvbm9taWUxDjAMBgNVBAQMBUt1
bGFzMQ8wDQYDVQQqDAZNYXJ0aW4xFTATBgNVBAMMDE1hcnRpbiBLdWxhczCCAiIwDQYJKoZI
hvcNAQEBBQADggIPADCCAgoCggIBAKOk24kjFpyH/Y8/nbU5J11uYDFyNljQ9X5+DMt5secK
5yD+m1oCA/N8oz26GttGHPvX+U5BmD0TBATkvzg5KoWyjzri02/Wh3oHQndISwHRmqQEN2kQ
EdSudPlSbbSZqXDkdVpFffIPMGTJtqAcPGPZsd5C7vBPWWqg+fKpTl2o4nUGsilGoWoQGTBL
rRlYhMNU+ZupM7StqP13m896kWL2A9s/ev01J16+wFKyjKCpF1qCE/iBBsFGFaeI+COuWisO
LUvB48MygrRksIdHFGA0RSBDx0ZpWtfxUSdmPbtFXjXHSKzvmbc06Sgl4ExShX3e4uJD0dZt
vHepzSH98LBz3/g4qNTJA4FvAj5pCtpf50HHqbPP589FI+nUzf/JmrSZSvhVNc+fr37oAk89
O+SRQfyX2Qpt1QIASYH/kK+iOqKSa3RmIIjQhzZbSHxqNqD/Dmjh3bTt5GhyuTamEDuVZPqX
gqPI1icHTKiU6Dka4sMRboxxsAVheU7BtsB8vGpVmvqwK84ZIOiqf76DZC88Fh9N5nH6hz0x
bMOnYhYyLF3aB+EsONEADbeXSbzhQ48yBi6LjybLN3JZViXX5aa0En/i5q0RSL6gwdDh4l4q
N4oJk64WtihEjAauG2dpMLQrXiRlflZ++sudhLafmfGaOW1OlVgs13Qr2KbC0KF1AgMBAAGj
ggInMIICIzAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcD
AgYIKwYBBQUHAwQwHQYDVR0OBBYEFAfoLsdxW/M5oNkUaS9RrcuZQ8V2MB8GA1UdIwQYMBaA
FMSIpQfuuHuqDBO/2il0Y1IbSXAWMBgGA1UdEQQRMA+BDWt1bGFzQG1waWEuZGUwfQYDVR0f
BHYwdDA4oDagNIYyaHR0cDovL2NkcDEucGNhLmRmbi5kZS9tcGctZzItY2EvcHViL2NybC9j
YWNybC5jcmwwOKA2oDSGMmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvbXBnLWcyLWNhL3B1Yi9j
cmwvY2FjcmwuY3JsMIHNBggrBgEFBQcBAQSBwDCBvTAzBggrBgEFBQcwAYYnaHR0cDovL29j
c3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEIGCCsGAQUFBzAChjZodHRwOi8vY2Rw
MS5wY2EuZGZuLmRlL21wZy1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwQgYIKwYBBQUH
MAKGNmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvbXBnLWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0
LmNydDA+BgNVHSAENzA1MA8GDSsGAQQBga0hgiwBAQQwEAYOKwYBBAGBrSGCLAEBBAowEAYO
KwYBBAGBrSGCLAIBBAowDQYJKoZIhvcNAQELBQADggEBAGJKKXYLic9otKnG/Rv68nfi4zcy
LE57THi3AVLC3UAjfDeb0vDK9mekpb9dcjMzvOSXYpGp7k6jNw2gYCjiYKuP1bbPwxMFymBP
YufdxMvOZDEwzfPST6oS3ksFH1ZrqQeR7PYZyY6vubWvcyyjABUfzAN1QbMTNbuck275rWgZ
lFl9wcNJLXUw30fXYyaKUnlsOFzG+scti1SUcxxukTuPz7vNUQdDZo3ToEPpp08A/WO1sJ6D
WbvrGSxpb2bebbT1d8D/T9Kjy7xOHEfK+WfE45dTEheqHaL9f2KgDhPtnkaghKY1GA47kTp+
JGrIlfBVVnTtkERUN2Dl2cjcVl0xggOMMIIDiAIBATB6MGoxCzAJBgNVBAYTAkRFMQ8wDQYD
VQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdl
c2VsbHNjaGFmdDEVMBMGA1UEAwwMTVBHIENBIC0gRzAyAgwlqGhMhuu1c4Sa76AwDQYJYIZI
AWUDBAIBBQCggeQwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcN
MjQwMjIzMTMwNzQxWjAvBgkqhkiG9w0BCQQxIgQgvtWjppbmbWDL6IbS+HxPT5vNJjfnlcqm
TADGo+5YDBoweQYJKoZIhvcNAQkPMWwwajALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEBBQAEggIAmHLBpHn/DW4ZSXil
N+3Kh0U/CUes+3uKx8ELUQicok+dk51VqaKlBV/l1cyoAkxarkWCEHNw4DXHbfwimoHPu4oW
IQ8gqWN1QginDf2CapnIEZ7vSM/K8Es9H3z0W7dUClgpCuXPNiZnlhoHFwK1GqGui/eUvjcx
SxVTA1Oo1N1SaOmgM4HU6lqkLVQZVpRrT2IJHrenJK64lswHLiWKJQ95ed74CBhDhSEPAr+D
kItrE8EIk2hJ9Wz1c9Atmup+PUGbHt+MEdfcZgm4zuYUYLK4PLovSuHjmM5bjEt4DE3SybeC
nWQrgwkFbbq1ISasfBc0WNQm6Eq0K3QChJlDmpTXWzhVkuI3xNQp3AhXX74U+tMeZ33vhf3n
SgTtmQLt7pgpXupn47mVLDD+YiTdPSNtrRMpgELn7CzmTwf7iPmDWg5LlxtXDnDvJBRJ0TgB
m7niIK1/sTSYp0xuEfpK0PV9j0iISGgcozmyvwG7UTY0Mzn24xhKKIXSGK0iE7OrKLY+R2sK
X4aYTgxcuRep41PhByS6/bk1KrqhajC7i59/mFFCksLZfdOHK0ZAHdwOHyNmFmEX8eXrWlla
gwi0Iosfbm8mEnzHe+oA4JAuonCKPwTcffbRDkomTm84G//nlssn6xQAVHCHnfTy196wL7KB
s2wWxLqGTJqeKIqqQ9o=

--pBSifk289XAyhiq0--
