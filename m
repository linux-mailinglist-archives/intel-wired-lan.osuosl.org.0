Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A5D5212DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 May 2022 12:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38C5C4060B;
	Tue, 10 May 2022 10:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7pmYU4-qJjEG; Tue, 10 May 2022 10:55:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35997401B7;
	Tue, 10 May 2022 10:55:41 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 206E01BF27C
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 10:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D60D415ED
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 10:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x2IhDlUy3JPq for <intel-wired-lan@osuosl.org>;
 Tue, 10 May 2022 10:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B510D41615
 for <intel-wired-lan@osuosl.org>; Tue, 10 May 2022 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652180134; x=1683716134;
 h=from:to:subject:date:message-id:reply-to:mime-version;
 bh=Jdle6BXFxbAGlyY/Rm+zzrtAzvSV65IrNP4tpxet2M0=;
 b=hGuI4Ztuq8Oh2IPYh1dObTtf+ATHcGsSr3fi22n1SEszErBNwoGXqUA7
 U8IhHEnkJCoGENnRpVwOvz5SwM7qPrcBrtHbS5M6VMttHEmko3IRmyFWq
 4YVK9VcJY7+ZD5yuylox2KeczGc5CBsMXHryWlkXbIyWcEu50m/DLBXz8
 F6ZwmveYyAEhqhk/91MTxIZni/IeRi2mxYWWeXWJjQsKStDGkqbyJYUMs
 QP5/CBPEUul6IBix+K8DPGpd+xO/pSCFW+TP5VmfkAxz9v9Q7qnsuSkEK
 baItuC06r2OP+LvJGPPJh8HWIzARDWiyQIFRGR5LSJ0r12b0nvMGI815B A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="332370870"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; 
 d="scan'208,217";a="332370870"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; 
 d="scan'208,217";a="593443633"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 10 May 2022 03:55:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 03:55:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 03:55:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 10 May 2022 03:55:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 10 May 2022 03:55:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncX0wMWD2a6TbEBN2MlS/Fe/Pe6jRJatJ/OmNmdOjpT+FdFDO0GBb8YNVHtIPTesiUjb1y1GwqE852XNsgzsO/uhacQcmO4jo48MS16+25U440ujJf183lfjn0WBcRlX7RhpwL6YuYOONb7i84KfMuRuBgWD456XDxjJyO3Ne3/j7cmvmzZEXXqk0Obk/XXGkhg+h6jePFgijtWR2NbxhyRpVeu7fjxW5cvfPf0IyIIeBICnot48pB/W3nRH3v87wJahdrnrcLr1VB6lu/hSeoHMT+orpZ9P9w2h3h54oKXRw6sgQEvP4ekl7U+nQZQTtS5cm/03v4yHJATMNjGqZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fq3dcqKtaHkvyiuobRfyG4Y8J9L2TVp6A/LZzx+cUWM=;
 b=ewLfpx8zi5SDUzX3QbspTikqpMx06Zd5SZzgIjNYZJbkW5hy6tW3PIaie7yMzjGHNqf7iOVp5BqyDYmkIvFhjZ4JFKrSWYy45J2M9zV2ShXHRFBtG9q8lJtSzlbKwUe/5KfeGgny721zhvBAujUv/E9WIE+T+fNjm6dODt3PomR6bwWbigCMKn1cytNSpUNHQJmbUxgyEeDPpI8yi+fWXy7YtrMa6IeRiQUl+91iaenGXfp2qeJKjkjtVQnK/ijn2CPMtjurqDKYma9tT1bBAVkfhyFYOENFbQ986Sr6T8PTkO4Fn7YNsgc+UVCSRVudvOk/KaT2XdmsZ/pCLWqg0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB2993.namprd11.prod.outlook.com (2603:10b6:208:75::28)
 by DM5PR1101MB2298.namprd11.prod.outlook.com (2603:10b6:4:53::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Tue, 10 May
 2022 10:55:31 +0000
Received: from BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::b5e2:6a18:aace:7ece]) by BL0PR11MB2993.namprd11.prod.outlook.com
 ([fe80::b5e2:6a18:aace:7ece%6]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 10:55:30 +0000
From: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link  partners for X550 SFI
Thread-Index: AdhkWnfw15cxpYoDTVS3R3exnezNzg==
Date: Tue, 10 May 2022 10:55:30 +0000
Message-ID: <BL0PR11MB2993565D55461665F19EBB3C99C99@BL0PR11MB2993.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 850cd2bf-b6e6-4a59-0a8a-08da3273999b
x-ms-traffictypediagnostic: DM5PR1101MB2298:EE_
x-microsoft-antispam-prvs: <DM5PR1101MB2298629BA30B9CB3F1A1746399C99@DM5PR1101MB2298.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Emhs/9x0SxSEp+bzym2B5BfU1DzxYu8Sjq9//VbyFOUj17p8o3cnVwLSc6kq7zfc3xxN/2p04mtw/XPC7x4WDrKxGIpAbPDPe+gXCgFnOmkjQzjyxPqshF1u2JIhNsdFVPcCROUZpyHGwfuybk6T9JwgTdkyr+ZIB25o76di7LiVzK7PwDoM13YDV/N7lG5tczU/2lzhNZT+DvuMoVo5Mfg5tjALfwNJ/f3ej+NneoG+eLPn7FrgrnnbB3eCFXrCR5sddHUO5HXf3/H8KR2qvqLi3L9OSrwi62FTqavCtXBXPcMrjUEyVDLMV+D6vm2FK/hfysnEeSiPuMZi6jLVmMiYh5EkTLI1d3WaQFVtu6jS2wq75QOl0nQarG7ZTVZoEwNW4Zdszv0E17fTDxnwC6jxyiCOmSiIFqmM0kxrWDBF+QGSWLq0JS/k4dI9HKJ4eAlhgx76aDK4gIbhg9fBUdk2QVfK14S4zXqrexGGP4ij8WtCJcJpx2NO0hZ2bd9ARsFm56PlGuBHkKH0d9MyhivSZLqyykw91IdUbn2YrcFLA7HNYy5fTNcGjOPX81NlJALYZXBbR+PXRFJsNEXK0aUQwx8N9MoBJbOAOqJ3TJmoGff31ZQZpmT2GnDSseJQ0sVIKg0ZflwqBa6TmpYtxz8j2YZYRmj2KD66TL+qdjYV86vFma3+XP78Bz3xStazYRBKkefsvdFPt4CJ5mzf7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2993.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(38070700005)(122000001)(316002)(558084003)(86362001)(38100700002)(26005)(5660300002)(186003)(9686003)(71200400001)(52536014)(8936002)(508600001)(9326002)(55016003)(66476007)(66446008)(76116006)(66946007)(33656002)(64756008)(66556008)(2906002)(6916009)(7696005)(82960400001)(3450700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/3ti+OVNPI8DQ7tjYsSn5JS8oU2ZEDJwVhRCsMsOiNyQxT1ILWnyuaxAv0UR?=
 =?us-ascii?Q?9ToSLyB/4Cv05axb6HPUmL84ZoP2FBsYGjJhnS8At4TSR1X+iyLQCt5x6Yws?=
 =?us-ascii?Q?75zndtzrUyzbvJL4e8dLTu+eW6ww2pTnFTftI7igWGHzLezWtQ8pDQ7xeOm5?=
 =?us-ascii?Q?hSUV2rq/z9PVKx4HXEXlftzTgQ0P9fiTT/oY94DcDolWFY39qTAQtluK047k?=
 =?us-ascii?Q?hfeckneaGFzFB/DYvU5CMOF160nZI5RQ2zh3+uZMf3PRmhTCMfR2+d13DRyp?=
 =?us-ascii?Q?jl2WS/NUJwRJqODL69ZHMp2DlDgb1IzYSEZTYp/pRpxmxaooNrZLjeExmQEV?=
 =?us-ascii?Q?8jia3II89ESXd4uYIJN/cjY0ewsGbWxybnrOpuM+KFYsQ5PzngwYu/Zg+QBB?=
 =?us-ascii?Q?rMAtetnKXXm05TIi8kkiuTLfbm74syHPxlptMs9MDsKKVr2ZZ8lINhVANAe/?=
 =?us-ascii?Q?r28syGkcBpZkaYzV3dJ4rY5+EC7N9TQIQjmULOFbrrpsgaoBi9eb/W46Ervm?=
 =?us-ascii?Q?+4X7VjPe0s9HjE5fs+i7GvV6z9cfjtDe4jr4dYSewXfgwbXPO5X8IkG249er?=
 =?us-ascii?Q?xe3hZ8GRYQrLHcDUj5iry91zUSMBs/Gv+llOD5JrZ4rMJJc3/GWPAyWEFu8E?=
 =?us-ascii?Q?LgoXBnHLWRaZXk5E9y3ERasQflgjY13mLlj67MzugFWvLTq2CA9k+rUGpmdX?=
 =?us-ascii?Q?G7Pp2pzwy1up//Ch/SsQz3906JNQW+HlE4S7uo1AwLClxkpSP/2AJyOLZOTp?=
 =?us-ascii?Q?+bd64cLQcdoHu/yDNpp+TmW9KcIiH57nfLhjktNRo6mebIPuic8Ondn9gGsx?=
 =?us-ascii?Q?Y62en/Bnfs9h3yXGdAuwg6lB4/BzPdEljKs+oOQ6U0AeCLOzsr8j681el5zk?=
 =?us-ascii?Q?rLA6Mgqz17MISfOTEfdsC5/Qy1lyolshllaA2naGnb/9IOtAU5b8A4SHz9oq?=
 =?us-ascii?Q?6rEWygdEe6ImSyPZGFGcJ+3au6rjl9PlYbICNImYXJf9t9n/JKZXfibqf0qd?=
 =?us-ascii?Q?bmyQ9B1rsVNuquGGUtUH48DNr3bjLsY+D2COqk/SItDE+nhniSdNKuZgMXWp?=
 =?us-ascii?Q?LjVoTdnqUVcmxSJSH4Eud5KY4OUFEz6wQRzSfzeiRWvc7q98enA+7DSrcqT7?=
 =?us-ascii?Q?3LDG3TmHuAJO+j9IZryhZlvVZ5qVYn50AqulJEYqrqJjUXF+OXTWxuV1BARr?=
 =?us-ascii?Q?9UYSl8Ryx3Nd2hA4jmdw+3H5J5sI1AxH/quW00Qx1X6jHXAn9IUpzxfs6hLc?=
 =?us-ascii?Q?Xh1Vd4AW1CwvLG6yzUiYoU15achwXyfGJOZcn1fsORsQA6N7yoB4NJmRJrRP?=
 =?us-ascii?Q?NLY1g/toE3O35l0sA8iPJtDTFflxI3miMcP664M+MY5gVTVQ90qDpWJRmqzl?=
 =?us-ascii?Q?3y90nq3vwXNEZJMaKcUvkeYmQ45U4XwlPrcrM0F0ezgd4lRnZEePGnPog57Z?=
 =?us-ascii?Q?ADU6o6zSPQPw5pW9bA9Wd1coKhlqN+fCmfaptD5SZMKDVO4upqmjtWRJWsbl?=
 =?us-ascii?Q?uc5Lwj/upcjwA3TlU4o2mtn73K93fjqkyOTcXVChH7OFT+XpTkTTLjkzTZrn?=
 =?us-ascii?Q?QiU08BEIbKVE8am0yODV44WAyLTHGFgTnyQW4rEZXCPAs5bCwrFLGEU0JPHz?=
 =?us-ascii?Q?cR57yOL8YTfwlaUKzVpCgSplaxK9joU+1S282m0BzITrzoI1bH10BQZ/dSaT?=
 =?us-ascii?Q?MiBrahJAScOavPZxvYQVKSUKmMRyFMYIOYS2PP+Jl/68slpt3HC5FnLqx8J0?=
 =?us-ascii?Q?ADOQsLNPKuLQCLJn0WLuleil+9BDorc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2993.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 850cd2bf-b6e6-4a59-0a8a-08da3273999b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2022 10:55:30.5424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3x2kgoGnz3A0FmfjS+sV9nobAw7UU5c1HoFEdG/fMX/eJb9eI3cDiHAgXK7ywv45AL5tu2A7XluFnElN3oEoqO/2bXo+mtcmRk542SFGPXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2298
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Reply-To: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: multipart/mixed; boundary="===============2202021543540507075=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2202021543540507075==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR11MB2993565D55461665F19EBB3C99C99BL0PR11MB2993namp_"

--_000_BL0PR11MB2993565D55461665F19EBB3C99C99BL0PR11MB2993namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

This patch has been tested by validation team and appears to be working cor=
rectly.
ACK, but first take a stance on the comment form Tony

Piotr

--_000_BL0PR11MB2993565D55461665F19EBB3C99C99BL0PR11MB2993namp_
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
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Jeff,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This patch has been tested by validation team and ap=
pears to be working correctly.<o:p></o:p></p>
<p class=3D"MsoNormal">ACK, but first take a stance on the comment form Ton=
y<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Piotr<o:p></o:p></p>
</div>
</body>
</html>

--_000_BL0PR11MB2993565D55461665F19EBB3C99C99BL0PR11MB2993namp_--

--===============2202021543540507075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2202021543540507075==--
