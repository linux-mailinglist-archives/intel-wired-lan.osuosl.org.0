Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D58398135E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 17:13:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19A7860F7E;
	Thu, 14 Dec 2023 16:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19A7860F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702570383;
	bh=zD4EXuARtQZTT1cNHvStyiwO8Q/MCmbWA4AqHavu/4s=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IndbmnjOrOZbCkl6Bne08w/Rkc/CkRCEOBd8ZCoOAotTo7tdp91OaNKT6HviSTYW3
	 kA7a4pMORfSF955aWau5M9kzftGfcnGxFWLh9hZ/hebwFIiaNW+Vphj1eBJbhS4/ku
	 YsGV90P+pJER4tjOEkupfDgXXCySr2MoohCqoJs/kwuu0nzLq7D92DMKYJ40F058hU
	 KK0YcKgv340AgMp5qLVPKbmEprHY1TA7Vez66JJPO/B+MCYJIiTh0ydXCs8tYOjqw0
	 cEv0TfLLhaYYDzHUj/ao9n2vw47zrVohDua4sW7Pfqgfo024eb+S3sk1JERliKntXm
	 6euDWxHZDlESQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvaqYNDFibRf; Thu, 14 Dec 2023 16:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF5B060F46;
	Thu, 14 Dec 2023 16:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF5B060F46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5AB01BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 03:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 888B440540
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 03:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 888B440540
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xM2BXsL4qV-q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 03:26:16 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33B7940017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 03:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33B7940017
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-50be3611794so8997358e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 19:26:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702524374; x=1703129174;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0KSCb1S2mcequrc3AyiXHoQbetMUHKM+Cp78ymGjchU=;
 b=GZuAeUdtcbPiKrhT/7Yh/enrGR8f7N7cQaiRwLlNkl9o3JwqH+hLrR+7vp+moUnPhk
 nUThQtn1pUSZAN8wGSoUUCsFyWs3HZ/TTSevRycWXoKv6A5CKmgogZmgkqjCOeXiaDc/
 IkxGm21JowxlBjsdpqWFy63j+XgyswdJA0l6TpDNALt68WC6y05M1YlV7+ZjxwYPTEZ0
 E4F3coJ0Nk7PHvFLkiizD31ReJ6MEVY3oFSuMLtgvQCbwZr7CA647EyAFwe4BphENZAN
 mxyqySe/aUCorDPvRhrvQ0Uu0DLTzSRJanAxa6/zn4qHg3utf5SlGPdJ2aBeSx8alLw1
 4GLA==
X-Gm-Message-State: AOJu0Yx7WynczrxGYlbZXKmre32QJmzwDpWplkkYuUHbvc958eXrUkXS
 A8OYwMEMkl29J/RA9ko/tLZ84WrNI/n2g2L3IdSpAw==
X-Google-Smtp-Source: AGHT+IF7HM7Izf6EdCxPtuPZ1DS75QOImZRVwj+qHs/6NLNK4fbb9Hl3WYxhK2k6WMq3eGZ/NFf3xMZqhrFmiIXkLxY=
X-Received: by 2002:a05:6512:3ca7:b0:50e:4e7:458f with SMTP id
 h39-20020a0565123ca700b0050e04e7458fmr2878485lfv.16.1702524373799; Wed, 13
 Dec 2023 19:26:13 -0800 (PST)
MIME-Version: 1.0
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-15-jesse.brandeburg@intel.com>
 <CAH-L+nPi1yCP+18Z=UJj7E-jeV3W8aWnNXP49SDTVXWEErBqWg@mail.gmail.com>
 <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
In-Reply-To: <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Thu, 14 Dec 2023 08:56:01 +0530
Message-ID: <CAH-L+nMmpVBQ6k1TbGe8pFMW0CeHAsWSRgHdWEAbVvK3EGG8Sg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 14 Dec 2023 16:12:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1702524374; x=1703129174; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0KSCb1S2mcequrc3AyiXHoQbetMUHKM+Cp78ymGjchU=;
 b=bQAjHCVmbdjYV+QtBdKfntrgTZWQ6X/2kxRz/rKUZnPC3Ar5aodf4BFtufoy12/aRd
 wZrpP+E4TRxa0xzWa53eZIPyd25J0zWlLjcyKh4+IHwh4jIC81xZjTnxFCRADCZQt5ew
 38xJSyIoQRRpjZO1tIvT+VgmAD4vT0ujG2jPg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com
 header.a=rsa-sha256 header.s=google header.b=bQAjHCVm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 marcin.szycik@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Content-Type: multipart/mixed; boundary="===============3338757140025433198=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3338757140025433198==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000008b0998060c6fd870"

--0000000000008b0998060c6fd870
Content-Type: multipart/alternative; boundary="00000000000085f74b060c6fd88b"

--00000000000085f74b060c6fd88b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 13, 2023 at 11:57=E2=80=AFPM Jesse Brandeburg <
jesse.brandeburg@intel.com> wrote:

> Please don't use HTML email, your reply was likely dropped by most lists
> that filter HTML.
>
Sure, I will check.

>
> On 12/12/2023 8:06 PM, Kalesh Anakkur Purayil wrote:
> >     -       change_type =3D FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M,  mib->typ=
e);
> >     +       change_type =3D FIELD_GET(ICE_AQ_LLDP_MIB_TYPE_M, mib->type=
);
> >
> > [Kalesh]: I did not get what exactly changed here? Is that you just
> > removed one extra space before mib->type?
>
> Yes, there was a whitespace change missed in the GET series. I had
> caught it only here. If you feel I need to I can resend to add a comment
> to the commit message that this was added here.
>
No need. I am good here. Thank you.


--=20
Regards,
Kalesh A P

--00000000000085f74b060c6fd88b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 13, 2023 at 11:57=E2=80=
=AFPM Jesse Brandeburg &lt;<a href=3D"mailto:jesse.brandeburg@intel.com">je=
sse.brandeburg@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Please don&#39;t use HTML email, your reply was lik=
ely dropped by most lists<br>
that filter HTML.<br></blockquote><div>Sure, I will check.=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
<br>
On 12/12/2023 8:06 PM, Kalesh Anakkur Purayil wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0change_type =3D FIELD_G=
ET(ICE_AQ_LLDP_MIB_TYPE_M,=C2=A0 mib-&gt;type);<br>
&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0change_type =3D FIELD_G=
ET(ICE_AQ_LLDP_MIB_TYPE_M, mib-&gt;type);<br>
&gt; <br>
&gt; [Kalesh]: I did not get what exactly changed here? Is that you just<br=
>
&gt; removed one extra space before mib-&gt;type?<br>
<br>
Yes, there was a whitespace change missed in the GET series. I had<br>
caught it only here. If you feel I need to I can resend to add a comment<br=
>
to the commit message that this was added here.<br></blockquote><div>No nee=
d. I am good here. Thank you.=C2=A0</div></div><br clear=3D"all"><div><br><=
/div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr">Regards,<div>Kalesh A P</div></d=
iv></div></div>

--00000000000085f74b060c6fd88b--

--0000000000008b0998060c6fd870
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBWowggRSoAMCAQICDDfBRQmwNSI92mit0zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAwODI5NTZaFw0yNTA5MTAwODI5NTZaMIGi
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xHzAdBgNVBAMTFkthbGVzaCBBbmFra3VyIFB1cmF5aWwxMjAw
BgkqhkiG9w0BCQEWI2thbGVzaC1hbmFra3VyLnB1cmF5aWxAYnJvYWRjb20uY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxnv1Reaeezfr6NEmg3xZlh4cz9m7QCN13+j4z1scrX+b
JfnV8xITT5yvwdQv3R3p7nzD/t29lTRWK3wjodUd2nImo6vBaH3JbDwleIjIWhDXLNZ4u7WIXYwx
aQ8lYCdKXRsHXgGPY0+zSx9ddpqHZJlHwcvas3oKnQN9WgzZtsM7A8SJefWkNvkcOtef6bL8Ew+3
FBfXmtsPL9I2vita8gkYzunj9Nu2IM+MnsP7V/+Coy/yZDtFJHp30hDnYGzuOhJchDF9/eASvE8T
T1xqJODKM9xn5xXB1qezadfdgUs8k8QAYyP/oVBafF9uqDudL6otcBnziyDBQdFCuAQN7wIDAQAB
o4IB5DCCAeAwDgYDVR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZC
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAuY3J0MEEGCCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3Iz
cGVyc29uYWxzaWduMmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcC
ARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNV
HR8EQjBAMD6gPKA6hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNp
Z24yY2EyMDIwLmNybDAuBgNVHREEJzAlgSNrYWxlc2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29t
LmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGP
zzAdBgNVHQ4EFgQUI3+tdStI+ABRGSqksMsiCmO9uDAwDQYJKoZIhvcNAQELBQADggEBAGfe1o9b
4wUud0FMjb/FNdc433meL15npjdYWUeioHdlCGB5UvEaMGu71QysfoDOfUNeyO9YKp0h0fm7clvo
cBqeWe4CPv9TQbmLEtXKdEpj5kFZBGmav69mGTlu1A9KDQW3y0CDzCPG2Fdm4s73PnkwvemRk9E2
u9/kcZ8KWVeS+xq+XZ78kGTKQ6Wii3dMK/EHQhnDfidadoN/n+x2ySC8yyDNvy81BocnblQzvbuB
a30CvRuhokNO6Jzh7ZFtjKVMzYas3oo6HXgA+slRszMu4pc+fRPO41FHjeDM76e6P5OnthhnD+NY
x6xokUN65DN1bn2MkeNs0nQpizDqd0QxggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25h
bFNpZ24gMiBDQSAyMDIwAgw3wUUJsDUiPdpordMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEIGZUeI8zOh186ISS87G8sdiwZzd+OFXbsXnmnqdc3TriMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMTIxNDAzMjYxNFowaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQBF6GY/2OOk
ZGABzZPolvnP/Hek36f31oL750KsEinz73VePWy4jbVPmnmIyN6Ql3iCSRT4qY3jj5YIl0mjPCRL
uviXD6cTD+JWjUh8JQtp08bsUbPh9/14igBOKpucYdIU5VoNdDAQxo0SCuiyj405q1JxKyBNr7s7
hHdObTYIKqSHP6RZAct0DTETCVoFPqRBJSYaxZXhHfAlNSs8hYlHhTHrpHiENib18OmXzNJ0VdYQ
6rzg+RD263YEP1tKkbA6tmqkxG64OhuIubCLbQSCKKEi8pXpLIrLmNO+byc3uVexulldiw9uzoJy
UQsYl7SEFGYj3E9TrTJZb6zNnK4E
--0000000000008b0998060c6fd870--

--===============3338757140025433198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3338757140025433198==--
