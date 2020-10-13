Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3984128CB93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Oct 2020 12:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E178987A81;
	Tue, 13 Oct 2020 10:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id py9+vGqDxJLj; Tue, 13 Oct 2020 10:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A426879D1;
	Tue, 13 Oct 2020 10:27:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87FE61BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 10:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 82C01274EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 10:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id irDgIpHBn1KT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Oct 2020 10:27:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id EBCC6204D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 10:27:02 +0000 (UTC)
IronPort-SDR: M/sRRfDfCck9AUVX8jLGw1Pc7uq9YdpqRie3652gkLOVUo41xr3+hk723cwd0unMWZwPLcRZ1t
 v2lvcItf6RlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="183361674"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; 
 d="scan'208,217";a="183361674"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 03:27:01 -0700
IronPort-SDR: KuvJ68mMUMf1mfbw0Wap+FXYuxH3wdrjEX4RdiNsFTTbHR6/IVOzmf+/0Np7JPHAiJijVKD2Md
 cOcuTQUCG37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; 
 d="scan'208,217";a="420489626"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2020 03:27:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 03:27:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Oct 2020 03:27:01 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.56) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 13 Oct 2020 03:26:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lGVTw0j3QAuK5GjPJ/BHjSnYlVinlmsyFzIsYK+EusfxCwAraS/2dInvP6cZI5mRFxqvG9e84DaeDK95Blc+kIVT6J5bQWHS+TM6onM8WKY9oxS7di7SiVzv/1ivEeQN5QgxPNztsg9rkQ9ePHrymo6jT35rVY/bxfgSnQyVuPhEGknDXiYg7gGLGWa/ll6soNGMtExJQt6Su6o2XdK+cZPjDU9dP/pY5Pn3zQDGAQqdyzmF8x3uc3MfOvtUesWiqJE6WWuEZPPAAEty1uyTpV/mEMbEXcwBwr6JdtxOogk8Wyw/S4LN6sK8fiYabC5pcBFo/C80Uv8Sd+UyWsRIPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zey5uH1uR1URvgKsbow6MCbAbqisdzH8BDSNjwSZarg=;
 b=cmCb1kb74IhqgwrjHuTNCBw9tbBFPNDiph5sYX8Yt+Hgo67M40WeY8tmlRM/DU/8kTm0qZgvOYnv5jnmoEsTPNLg49jFFi0NXNEuZOZWHnzHImdTUAvSycf3Zcwd/FwP9nwRBdHhFnOcXWNygktA3o91SnoZeBfydqLTE/80ggGxmzoHYyojW2rm/+6aZaa6V0P5aUP9mHUHCS6us4H0tu/CyzWVmOXXRASouRd0+SLbW3iPMRACnPe/ZR1My2BBJo6Op4sm61ZmoZAd9fH7rg6vhUEuRwAwAyF+MWdIyyMlcdRaptBOciP/EjaSfltP7KvOU+CRwtCOyDAi526VaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zey5uH1uR1URvgKsbow6MCbAbqisdzH8BDSNjwSZarg=;
 b=ieqNEeOvn8QIWz2DeFcSAdnnZY0isw2u/YYbL6e8qw70wNYMQpcIUVpPe/dzR/CREf6kw7j0y/wsGVsD6IssVamXErk6GD7AGJBI8AtnLJRgAANEHapIexDyZKSAnUpsZEttSIv6bKjeKzmfX8QV5mnkErucCQ4srT3hLEOgrbk=
Received: from SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 by SA0PR11MB4656.namprd11.prod.outlook.com (2603:10b6:806:96::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.24; Tue, 13 Oct
 2020 10:26:52 +0000
Received: from SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::5072:297c:9cd1:48b3]) by SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::5072:297c:9cd1:48b3%7]) with mapi id 15.20.3455.030; Tue, 13 Oct 2020
 10:26:52 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e, xsk: uninitialized variable in
 i40e_clean_rx_irq_zc()
Thread-Index: AQHWjDZPb31T983zhki6FBOR3ogI3amVeRnw
Date: Tue, 13 Oct 2020 10:26:52 +0000
Message-ID: <SN6PR11MB3008497E4E77166FE98A9CBDE2040@SN6PR11MB3008.namprd11.prod.outlook.com>
References: <20200916143228.GA764370@mwanda>
In-Reply-To: <20200916143228.GA764370@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.200.10.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1147327-cdea-4402-2e3d-08d86f628051
x-ms-traffictypediagnostic: SA0PR11MB4656:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46567609612C5217046BCB65E2040@SA0PR11MB4656.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E+aDwRb75ziK5YCa1emvQJf1c+6yOPA7V8lsAQ8wLOl3XN4gIGP0syARqJuQSztzWqhR5SO0FTg/4TvSJuUh9Nachi0fPXJomCHf60CtIvgQ9+cbJLmCFXh8cdZAjZ1La0kJ0SCl0Dg/KwWRzB7BcEQuqNQy6czd6T8zVHxDhhheW8ihMVFYMkmm9//hxT8U+UlFWahuthM6tRUJDRVgLSE41SWjpW0bNlH4k8byJTbaTfCBZrML1lJwLeEkhaR2T6zcSxjDBdpGifjhFibvM0LLdeBypmgHPxABdC0Mznvssn/x8LYqN1Gy4X+OVOnJondKw3fqiTkiuQUf6qCZrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3008.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(346002)(136003)(64756008)(9686003)(5660300002)(66446008)(478600001)(186003)(76116006)(66946007)(33656002)(52536014)(66556008)(66476007)(7696005)(54906003)(316002)(4744005)(110136005)(107886003)(86362001)(4326008)(6636002)(26005)(2906002)(71200400001)(6506007)(8676002)(53546011)(83380400001)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: MOXU5oMXCWebCt0StnfoyOl8sr5mp/g1NBUfdwbmJIr40EW9WzVv2GIPpl7bNh4YaHtFftJe21/Lw3r4N8vfvtmfYAPJvXedXAL+gQDuZPoS26fLS+W3z/8PgErZHOiR+HVskD3nAm4HqfIsYHbbUigLTUqwMOYt1N9ZMfMx0uUZ30FAJincwyFTMa05sk3VXXWJBDBQLxCQWv1HJBf4+GDpShG34JKheKxtPHfYKm/6PkdOIR9iA452C0TT2hOR++tp4mXPyP0HjU7phZfpVL65TvWLQ+vz1VPfsml4zXQIrU4LtVib4hR9ZpsPmyf3I8JSsiB83/9+mw1x/1PzMG9UIGqbkqDYYTztUsik1LjMXc9dVPslyfYHh+VXSU5o1r52JwYOkdT09HR4IMn1cmWi8PmEGeF4znttPy67DZwLqZct5lSAXEiSY7HCEa1U3ZMYE2iYx29vM+0P2HB9BfRS5zRPc4tP2Yy49BJQG7s/lJQlMFv/q3IrmmMiHT+PwG2se1JcoEna4ZEgQaRsViW8f9SQXIkxGo0KAmyoRp9G0k4I+u9IfC74Eh/BOTGv7nYUTN6L+A+nMOCgkZ3x+CqbQIkwencSJYyrJfh+boTWrz2l4sMIvwGjfJ71SoENpakdBAEbjtIxazgQoZYDLw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3008.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1147327-cdea-4402-2e3d-08d86f628051
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 10:26:52.2237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 72LdeFwIf4O1WkW0Stzu1n4IIQ4k8aTuSBluemJ1sG48O2X10SLOAK1Pe9Sp91cB2Y+ZLAdhf1uwK2X2kTs3pdTD7tk/97VJ9f6743DQcV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e,
 xsk: uninitialized variable in i40e_clean_rx_irq_zc()
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============8373698617735986507=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8373698617735986507==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR11MB3008497E4E77166FE98A9CBDE2040SN6PR11MB3008namp_"

--_000_SN6PR11MB3008497E4E77166FE98A9CBDE2040SN6PR11MB3008namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Dan=
 Carpenter
Sent: Wednesday, September 16, 2020 8:02 PM
To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; kernel-janitors@vger.kernel.org; Tope=
l, Bjorn <bjorn.topel@intel.com>
Subject: [Intel-wired-lan] [PATCH] i40e, xsk: uninitialized variable in i40=
e_clean_rx_irq_zc()



The "failure" variable is used without being initialized.  It should be set=
 to false.



Fixes: 8cbf74149903 ("i40e, xsk: move buffer allocation out of the Rx proce=
ssing loop")

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com<mailto:dan.carpenter=
@oracle.com>>

---

drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-

1 file changed, 1 insertion(+), 1 deletion(-)



Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>

--_000_SN6PR11MB3008497E4E77166FE98A9CBDE2040SN6PR11MB3008namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	color:#1F4E79;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Arial",sans-serif;
	color:#1F4E79;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Intel-wired-lan &lt;intel-wired-lan-bounces@osuosl.org&gt; On Behalf =
Of Dan Carpenter<br>
Sent: Wednesday, September 16, 2020 8:02 PM<br>
To: Kirsher, Jeffrey T &lt;jeffrey.t.kirsher@intel.com&gt;<br>
Cc: intel-wired-lan@lists.osuosl.org; kernel-janitors@vger.kernel.org; Tope=
l, Bjorn &lt;bjorn.topel@intel.com&gt;<br>
Subject: [Intel-wired-lan] [PATCH] i40e, xsk: uninitialized variable in i40=
e_clean_rx_irq_zc()</p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">The &quot;failure&quot; variable is used without =
being initialized.&nbsp; It should be set to false.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Fixes: 8cbf74149903 (&quot;i40e, xsk: move buffer=
 allocation out of the Rx processing loop&quot;)<o:p></o:p></p>
<p class=3D"MsoPlainText">Signed-off-by: Dan Carpenter &lt;<a href=3D"mailt=
o:dan.carpenter@oracle.com"><span style=3D"color:#1F4E79;text-decoration:no=
ne">dan.carpenter@oracle.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">---<o:p></o:p></p>
<p class=3D"MsoPlainText">drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-=
<o:p></o:p></p>
<p class=3D"MsoPlainText">1 file changed, 1 insertion(+), 1 deletion(-)<o:p=
></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:#1F4E79;mso-style-textfill-f=
ill-color:#1F4E79;mso-style-textfill-fill-alpha:100.0%"><span style=3D"colo=
r:windowtext">Tested-by: George Kuruvinakunnel &lt;george.kuruvinakunnel@in=
tel.com&gt;<o:p></o:p></span></span></p>
</div>
</body>
</html>

--_000_SN6PR11MB3008497E4E77166FE98A9CBDE2040SN6PR11MB3008namp_--

--===============8373698617735986507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8373698617735986507==--
