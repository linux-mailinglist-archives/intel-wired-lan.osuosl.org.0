Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F885206DA2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C32ED203FE;
	Wed, 24 Jun 2020 07:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7RF8n7Yp4v-4; Wed, 24 Jun 2020 07:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 622DF204DB;
	Wed, 24 Jun 2020 07:29:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE73C1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A770D86D03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7emXGbRHHatd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 986F7860D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:23 +0000 (UTC)
IronPort-SDR: dfhbkGH8+cswGWTQLA5eTtXgqrBrzoN44EItUjrqzX3TbPisYi6CjMjygT1gy44oqRthWYoF/U
 H9VXRsYX42sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="124627212"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; 
 d="scan'208,217";a="124627212"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:29:21 -0700
IronPort-SDR: LpDBH7OoedX8T2GsQAy1Hw/OTgAXIQAGW3Nq/kNtukb0hFeJJMCnKeVHjLMTQSlrX31l19Oh5h
 W3jX/jxon0hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; 
 d="scan'208,217";a="301534625"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 00:29:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:29:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzYTpVCsz6/L70bsjuRkOlUAZvi60GEzZR2qmgPO48hdcLTL9J6WFOoavr+5BR/H97MwohNsYSZLwvKd5tPwMmnGB35Ik57hrMWwN+wjksjKPo/GqY4eZ9y6rbybQvT1v802jfl7IFhGs6nqO8UaUdACK3BgUMT+QqG2XdukpSnES5tE7SUo4DNuxXVRmJFwirioZSVhhbznCteLHBP5HqAikuHT6tpNddlTDH1/+mA2ntbx8Q6nQmoGtDeiDd0Qo1rSandHGz/R/5SPgPi31w3EUXub6URwmOM5+RhUubVIe/dqc3YJyCaqBG6KhbD0j5ClyVtnYoWooU4Vn/J7rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LTD8a6lL8wbNbYwYzor/VLqTyRC1dTPwnjzhRtFlg0=;
 b=bbu39xVK80EdfMAE2h8gFrPPhd2Q+2nRnVgFyr9zWGNlbmYZ6/XadrbjO7YeuFx+L24uqjWYu7Dp7T9oRYcYZTY5DQass0Rej4vef186GlEJBVACvqIl69k87W3R+CKrKHluepILnT8q2D0bp/hNvBqmQ1mrWmhR4gCV+QrQ7JcKa0k+ZnxzqJxw0re57v58XsSn++8M+li4ZJTY0cb8VTR1sGY7WMhFpulB1kiAStcuz/ZnWmqoe/fOKqk0BoCpKCh5gEj24FVgPWMobeGciJnXjbA5bbpkmNKoKXrw+lYPA4yyRjCMdNhYfzrzBkAwQnnHtmxtKggbK3AbP7OsLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LTD8a6lL8wbNbYwYzor/VLqTyRC1dTPwnjzhRtFlg0=;
 b=C9wUgyJEztm0rEG5Lzo2x/a0W1I+ka37ID8WTNB+jSUqimDNC4GQRyGGPz+qKNLJ6vBsWfw5xf++ZkXtoGL22ZE8r2H9cqJ+1mHwIBrk5/GOx998JZAgDayXQ8iN/TyDc/3JnpolM8eAnYMUwcGFDYwR5zyJBp8e7Qpgl/ah/+c=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 07:29:17 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:29:17 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: RE: [PATCH v3 2/5] ice: add DCF cap negotiation and state machine
Thread-Index: AdZJ7dMCzHO87thmSwiUOg87u6OXRg==
Date: Wed, 24 Jun 2020 07:29:17 +0000
Message-ID: <DM6PR11MB3900972A5B75352AF9ACB601F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec7ed3eb-6390-444f-8ebe-08d818104dc7
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2043FB4567BE9E2ED26A098AF8950@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GHqAsGJWhL/oAK9UG/Aez9Ps5x03pkvzz0RY6KTJ0Z48mH3+/WCPbTVAfB/4W6pXTZusKz68pxYObY9oHdWStcEhWZzCjh9MICNzSgfvNMScUj3WSdIXUIHDFG7gNuFXFKIIu+AYvs7mFbHylfW4UbblhUJLywbBO9tKkGS/wHeaWlJ1jfqE8ti9H98ji4E1XftYQp7MCmL5r42V3QLCWyw2qwhPXyGRu7jk5835H/spNSz9+ZuycuRB+6DihY2ksoWAYw7AUuVBYZqS3YOpiX5jZYmgHMxtBNVcrRiRZHC3LhsoMMCQenaYOQSrUTC/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(52536014)(83380400001)(71200400001)(8676002)(26005)(55016002)(9686003)(2906002)(316002)(33656002)(186003)(86362001)(8936002)(478600001)(66476007)(110136005)(64756008)(66946007)(5660300002)(66446008)(76116006)(6506007)(66556008)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Hw/jFT3xmwLC+u1MJjdFUOpE+3DHK/Gv7ShKzGFkR2Q+yBa8mYkCHrRxdzy+cIC1RtTTidJGxtS0VAi+ENoIe23gIe8vOKrsNKcW1GHBQ9vcRgsGbyxHgAHM0ANaB8k8OpTKjztE80O0ACHwY0fve2GBU8QYGOVO7E4Cak/s9ctiOkQV1jbakAAkqwm9649za1lvBnSP1Srk2g24G1Ku/Pjmf666flqlXi7SS7xQIGC+0lkiUhSUmX/BMJmR60yB0/bxV2/LUcqOHbBo8KEpYWlXQY1CncheUbl7B5jQ6clPUihovqQgPkqObXRtUTYg6+eTdtoI+831ND+TyvB8MiagE2Dq3lMQ4EYoLSIUeeB30oaE531uadVBk2GYOLI85DJUX7bN54YQWwzbgpVCDmVR2MAZgt1+SnM4Yk6wsqejlbrfa3GQA8MBtHf+zpjaii9tQw4xVU+0fnSXzIt1OMfk6ZagQF/6SOnPQmHMw49bJ4rNIMfagoNfFjbSE28W
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec7ed3eb-6390-444f-8ebe-08d818104dc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:29:17.5043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ettjneihT+aR2IWBhgqdlONr1QFBbc9bpTglDUXr8CmA6TlguZfst/p6u7+TIWSwp7bmQlOBLr0no5jLF8QmVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 2/5] ice: add DCF cap negotiation
 and state machine
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
Content-Type: multipart/mixed; boundary="===============8572675831762406511=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8572675831762406511==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB3900972A5B75352AF9ACB601F8950DM6PR11MB3900namp_"

--_000_DM6PR11MB3900972A5B75352AF9ACB601F8950DM6PR11MB3900namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Wednesday, June 24, 2020 10:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wang, Haiyue <haiyue.wang@intel.com>; Li, Xiaoyun <xiaoyun.li@intel.c=
om>
> Subject: [PATCH v3 2/5] ice: add DCF cap negotiation and state machine
>
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF
> driver may allow this VF to enter into DCF "ON" state if various checks
> are passed. In DCF "ON" state, the VF0 can send the AdminQ command to do
> advanced switch rules creation for other VFs.
>
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the
> wrong rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This event
> notifies the VF0 to restart negotiating the DCF capability again.
>
> Also the VF0 can exits the DCF service gracefully by issuing the virtual
> channel command OP_DCF_DISABLE.
>
> The system administrator can disable the DCF service by changing the
> trust mode to untrusted.
>
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 77 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 24 ++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 194 insertions(+), 1 deletion(-)
>

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0

--_000_DM6PR11MB3900972A5B75352AF9ACB601F8950DM6PR11MB3900namp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; From: Wang, Haiyue &lt;haiyue.wang@intel.com&gt=
;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Sent: Wednesday, June 24, 2020 10:08<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&gt; To: intel-wired-lan@lists.osuosl.org<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&gt; Cc: Wang, Haiyue &lt;haiyue.wang@intel.com&gt;;=
 Li, Xiaoyun &lt;xiaoyun.li@intel.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Subject: [PATCH v3 2/5] ice: add DCF cap negoti=
ation and state machine<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; The trust VF0 needs to negotiate the DCF capabi=
lity firstly. Then the PF<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; driver may allow this VF to enter into DCF &quo=
t;ON&quot; state if various checks<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; are passed. In DCF &quot;ON&quot; state, the VF=
0 can send the AdminQ command to do<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; advanced switch rules creation for other VFs.<o=
:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; If one of the VFs resets, its hardware VSI numb=
er may be changed, so the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; VF0 will enter into the DCF &quot;BUSY&quot; st=
ate immediately to avoid adding the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; wrong rule. After the reset is done, the DCF st=
ate is changed to &quot;PAUSE&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; mode, and a DCF_VSI_MAP_UPDATE event will be se=
nt to the VF0. This event<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; notifies the VF0 to restart negotiating the DCF=
 capability again.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Also the VF0 can exits the DCF service graceful=
ly by issuing the virtual<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; channel command OP_DCF_DISABLE.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; The system administrator can disable the DCF se=
rvice by changing the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; trust mode to untrusted.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Signed-off-by: Xiaoyun Li &lt;xiaoyun.li@intel.=
com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Signed-off-by: Haiyue Wang &lt;haiyue.wang@inte=
l.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; ---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_dcf.c&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 77 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;=
&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; drivers/net/ethernet/intel/ice/ice_dcf.h&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 24 &#43;&#43;&#43;&#43;&#43;&#43;<o:p></o:p=
></p>
<p class=3D"MsoNormal">&gt;&nbsp; .../net/ethernet/intel/ice/ice_virtchnl_p=
f.c&nbsp; | 85 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;=
&#43;&#43;&#43;&#43;&#43;&#43;-<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; include/linux/avf/virtchnl.h&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; |&nbsp; 9 &#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; 4 files changed, 194 insertions(&#43;), 1=
 deletion(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tested-by: Nannan Lu &lt;nannan.lu@intel.com&gt;<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt; --<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; 2.27.0<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB3900972A5B75352AF9ACB601F8950DM6PR11MB3900namp_--

--===============8572675831762406511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8572675831762406511==--
