Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C672EBB00
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 09:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DA7520498;
	Wed,  6 Jan 2021 08:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUhmTurWlRtA; Wed,  6 Jan 2021 08:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0138C2033F;
	Wed,  6 Jan 2021 08:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC6D1BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 08:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8756C86A98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 08:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3R6mv3H1VXum for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 08:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4767386887
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 08:18:34 +0000 (UTC)
IronPort-SDR: JquUw0b4JpC850RNim25uepKWEVmkNZ1zbo5HBgBjPURLxKCTyk07YvykOVhNpuHEx9GZzbnlf
 C754iezvj/Kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="174672264"
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; 
 d="scan'208,217";a="174672264"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 00:18:33 -0800
IronPort-SDR: dAoOOjK+RbGKD8clTdQTZoz/b9c3Qfxu7Lt1sx74u+PWv7Nja5aHAADY2P5VCZ2lYiHbeQGdFu
 MqjMoywUqk6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; 
 d="scan'208,217";a="462605335"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2021 00:18:33 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 Jan 2021 00:18:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 6 Jan 2021 00:18:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 6 Jan 2021 00:18:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NiRgSBNcvCtVJIxRPJP9TyNM9NuwRg7DuVlT7xMwzRQXbScbmsxOCrJ6A427Uj4I8lloSJIJZHgNcWY5qefqm4hpBKByTp4XTIqQKjA6izGjf+YUD4bh6a1al4g8qjosEUfBBURBUQUuEXESa/ue8lG+Qxw2leGWbROC1rvg2Af00AnIiT0+1adDOeVEVlEn6dM6A3kBPgzBCoSwGi9sPB25isbMoXe+Cj3p8FtBZhyUdfSfTiEna3m84wHIADBjajA9b786t++KEdPg+9sdvc6izEEtJcDItUNa6RleQHyP4O27GpFGPJSiYPMirn+zjSmlxQuoU8pEFa1BtTajuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5KWEhPvzpwfB7OANA+HlgDCKM1SJL/qhCT/pBA+yY/w=;
 b=Z97tk1LGroMtRQpdw55BBmu9yyIoN8zY+/Da1rFtqGIMbFW4am4bLRsWRYPGrW6aB2Je5/qDWRti6rw7x52BIb5Rc8PwRHJPQxa3oj74Sbt5odDH7oeh9GeBNVNKePcrK6S+EgFO7BMyXJ5ssYSpvYDFryd8KO1lB4XLQKmQmrKg7HMVwDm8j0A9Ia4+jlNvW43EK1iIa0BdLhZnehrh5lMmZxe3t7X67dMpN1CkvIhm0fRWxI3lnEeiwyHK6dR4+qt4SUAY+5Bx8zHgUDTFTluugWwxX6/xku5agnY/afEvUU+wYvAUQf8wUBbEU/dILHD03uP/cqRDUCvLsrdonQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5KWEhPvzpwfB7OANA+HlgDCKM1SJL/qhCT/pBA+yY/w=;
 b=d+c00317WjyCyuq2RVkAsxMIBr3Pgi2fcKTXD5+HhQ1i0C+WpUgMAdnysSsTiQJ4Cn58GPp46lHTvCOiWOfGVdvMJ+G7yjCAZRAaAEgwbzX3KLixIcpUA3o3v5SO4Tx8M03JYPuxmbb4oZYkJruUuXo5vAQfGDtA1wrTBaKWAXc=
Received: from SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 by SA0PR11MB4558.namprd11.prod.outlook.com (2603:10b6:806:9e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 6 Jan
 2021 08:18:25 +0000
Received: from SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5d6:3d99:8c49:6d9f]) by SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5d6:3d99:8c49:6d9f%5]) with mapi id 15.20.3721.024; Wed, 6 Jan 2021
 08:18:25 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
Thread-Index: AQHW1VZZBVGSlXHazkygYllnXj1MaKoaWzhg
Date: Wed, 6 Jan 2021 08:18:25 +0000
Message-ID: <SN6PR11MB3008D9DDF45209E14ED85C50E2D00@SN6PR11MB3008.namprd11.prod.outlook.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [112.133.251.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 480aa337-b2f4-433b-54ab-08d8b21ba412
x-ms-traffictypediagnostic: SA0PR11MB4558:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4558C8CD8FA378A6FBA6F63FE2D00@SA0PR11MB4558.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Htv0LJ1YCAPjalXOAVF6jG7FzQ1HIgo12WsDQ9UveB+sDY0S/AyaWxi7oFVsz5EjXwcCsUcXpIOc6AwfI00sOozufz/5vstRVmwE9yXC8AQ3F6XgRofZI0PEhwHuRYd/i33Ba4oPackNM4mDCIVjbTQn3Xwl/+OTKa/Xp1Hdb2CDOWfPBnCVkRcoFJ1YIhQDZ4tpqkYIUhtamsazlYs59dnSpGURIxaMW0CsK66Zh90rrxteW8Gimub1W0Bcod3HPHlLh5A0gagZdeX9h135XKPi2blGUfQM7nZCXHEL2BsDYnyDFPE7lGHjw/CI/PhzB5VGagH54PLoMDpy0SP6lmRXN2gRxwAVeLSAWC1d6LtxUI9JlWQ//fmL0UKLxtjxwfmI7YNeAHdY0T59YyoL1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3008.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(396003)(376002)(136003)(366004)(66476007)(64756008)(66446008)(66946007)(66556008)(86362001)(107886003)(76116006)(55016002)(5660300002)(71200400001)(9686003)(33656002)(4744005)(8676002)(26005)(8936002)(2906002)(186003)(6506007)(7696005)(52536014)(478600001)(53546011)(83380400001)(4326008)(15650500001)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?8rNOqYzU7cg3lG0LGgVJed8S0A4L6PUhve5NBUbT8bPhBeRjO0r3VTqA187l?=
 =?us-ascii?Q?MX7a9hNrTxucaNoeHe1gWpz/LZom6zs6E3T3UHPm2co7WeMsnig2HN/BU6OH?=
 =?us-ascii?Q?jkbLlv37tK6YC69cQSIRA1La5XPqOlg3tkVeCkzn1Ij4PW45h395HPTLvgWA?=
 =?us-ascii?Q?ACz8CwrZLJCDE5jfEIh+B7RpjfTcowqhCKNGpLBEtoAuJrZeEdklCBOFc1v/?=
 =?us-ascii?Q?lCuqPmuK6Pm1nK9y2sODushxlNtSR2nO9zpzSho4haZtXLwws/QsMwAgj+S6?=
 =?us-ascii?Q?Q6OlB77kFbCYQZAu+ad7JjOSsj+W9ba3I1ZZN5ONhfFZly0EFZUicyk6jS0v?=
 =?us-ascii?Q?T8jwZR8FJT5xTUNziAmIYRLeiv3tm9M+QvxDbKyBjepORsriW71p3g/2HBkU?=
 =?us-ascii?Q?BMknyjNjBdiLwfiPKKgrST8uuuLGBe4a4IyLIufCm/O/PZyaPeth/vIP+YCK?=
 =?us-ascii?Q?1XSjouvoTfqH05YboKSzTLt/JIPiwPpFUEiXLt7VZ2ICnFOIJBd6iNrewdPu?=
 =?us-ascii?Q?zTYSSistHacXowWVZGYSetpyMLEIjmfyruwjHa+22rFbKHIsB1G8ehPmsmGz?=
 =?us-ascii?Q?yfqUJshtY6ExjHduLhI5AwKrJPA7zrNllGU718rhKhIW2UEHPcPJSPCrPSDC?=
 =?us-ascii?Q?GqC2WE9uzN9QRQ3TdWWE3IscrBWbrM2MTAhJoR8B4nUq0NzdDlehc8OADYGz?=
 =?us-ascii?Q?wWCjV/cjcYg1vUR1WHzrbGC8SIcu/lw49nIDIxuM4Ago04htkNJ4MWdigAnq?=
 =?us-ascii?Q?bx4tPakgTkcb/nnxIc4X90fzN/qXOWutmMRD2vJhtl+zixNXljyXsFeyQv7Q?=
 =?us-ascii?Q?Jhq0WVUtA+NDC2HybfnZk/353Lz3y3f2KRZZH1YllVuJxAy+rwKiQehqfmAn?=
 =?us-ascii?Q?bStY5pweM2fdqDgRK4FwWldu/SixiIA3W31H1URqf3Ii2w16/lX1s3qG99Kz?=
 =?us-ascii?Q?8jrlCZtezr0qV6ufqnH/S11SzxjAJ4S8nAqBYR9pIOI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3008.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 480aa337-b2f4-433b-54ab-08d8b21ba412
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2021 08:18:25.8751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yMsPgLtGjP+WwV8jdJTk4a3ZAlBh/PZTWaUT+3GirxTYYsC7sp3s3P0MjOZO7RX/2hWspZWB4QF0mYYo8UaWm8eAm24gfsxmRVop01viTMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4558
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>
Content-Type: multipart/mixed; boundary="===============6835056968058035822=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6835056968058035822==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR11MB3008D9DDF45209E14ED85C50E2D00SN6PR11MB3008namp_"

--_000_SN6PR11MB3008D9DDF45209E14ED85C50E2D00SN6PR11MB3008namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of E=
ryk

> Rybak

> Sent: Friday, December 18, 2020 10:23 PM

> To: intel-wired-lan@lists.osuosl.org

> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>

> Subject: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on de=
vice

> is out of the range

>

> When attempting to link XDP prog with MTU larger than supported, user is =
not

> informed why XDP linking fails. Adding proper error message.

>

> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com<mailt=
o:arkadiusz.kubalewski@intel.com>>

> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com<mailto:eryk.roch.ryb=
ak@intel.com>>

> ---

>  drivers/net/ethernet/intel/i40e/i40e_main.c | 11 +++++++----

>  1 file changed, 7 insertions(+), 4 deletions(-)

>



Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com<mailto:ge=
orge.kuruvinakunnel@intel.com>>

--_000_SN6PR11MB3008D9DDF45209E14ED85C50E2D00SN6PR11MB3008namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
	margin:1.0in 121.0pt 1.0in 121.0pt;}
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
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;intel-wired-lan-bo=
unces@osuosl.org&gt; On Behalf Of Eryk</p>
<p class=3D"MsoPlainText">&gt; Rybak</p>
<p class=3D"MsoPlainText">&gt; Sent: Friday, December 18, 2020 10:23 PM</p>
<p class=3D"MsoPlainText">&gt; To: intel-wired-lan@lists.osuosl.org</p>
<p class=3D"MsoPlainText">&gt; Cc: Rybak, Eryk Roch &lt;eryk.roch.rybak@int=
el.com&gt;</p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH] i40e: Add=
 error message when MTU on device</p>
<p class=3D"MsoPlainText">&gt; is out of the range</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; When attempting to link XDP prog with MTU la=
rger than supported, user is not</p>
<p class=3D"MsoPlainText">&gt; informed why XDP linking fails. Adding prope=
r error message.</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Arkadiusz Kubalewski &lt;<a h=
ref=3D"mailto:arkadiusz.kubalewski@intel.com"><span style=3D"color:#1F4E79;=
text-decoration:none">arkadiusz.kubalewski@intel.com</span></a>&gt;</p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Eryk Rybak &lt;<a href=3D"mai=
lto:eryk.roch.rybak@intel.com"><span style=3D"color:#1F4E79;text-decoration=
:none">eryk.roch.rybak@intel.com</span></a>&gt;</p>
<p class=3D"MsoPlainText">&gt; ---</p>
<p class=3D"MsoPlainText">&gt; &nbsp;drivers/net/ethernet/intel/i40e/i40e_m=
ain.c | 11 +++++++----</p>
<p class=3D"MsoPlainText">&gt; &nbsp;1 file changed, 7 insertions(+), 4 del=
etions(-)</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText">Tested-by: George Kuruvinakunnel &lt;<a href=3D"m=
ailto:george.kuruvinakunnel@intel.com">george.kuruvinakunnel@intel.com</a>&=
gt;<span style=3D"color:black"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SN6PR11MB3008D9DDF45209E14ED85C50E2D00SN6PR11MB3008namp_--

--===============6835056968058035822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6835056968058035822==--
