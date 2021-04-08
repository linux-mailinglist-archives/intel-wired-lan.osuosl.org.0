Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD114358FDB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 00:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FBEE84B42;
	Thu,  8 Apr 2021 22:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnBQuW2bLi4y; Thu,  8 Apr 2021 22:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7857184B02;
	Thu,  8 Apr 2021 22:37:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C69AA1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF46740E7B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2PCG3acA6O5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 22:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2127840E77
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:37:27 +0000 (UTC)
IronPort-SDR: 61wBOcQsUphK/lxGJ2EOSCDCEQGPiSREUbfE/Im95YSncz5rrtFH+xf3Dlp1H8ETP+06nWgJL+
 DewM/PW/bn1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="257626661"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="257626661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:37:27 -0700
IronPort-SDR: nJr6azFbKNmPqQsK+lDnnB3WDnwKm0ZUrKKY267EWvG0QqElp4uZOhZCrv+GCuOqV+lzFSx23P
 kqBhac5r0x2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="380429239"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 08 Apr 2021 15:37:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:37:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:37:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 15:37:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 15:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gABStyiqkUIuP8in6pne2KnhDn1JIj023aJ6GDPzlevRSWZZ99AG5tGp7kUHozTwVL4zF3PP/gwkY+LtSWNaAV1csRHsXaI/tqxPk7bJXDdvAHamqE6cuxYqRk7QuLVtbltAHM5L3FfgCQuGOnFeIGBtMTCQmS/ZPdsfE3G8h/KzeezaJVQJQ8u7TMVX9c5oM7LGbtR/qk+LltjE6uhZA2bMrdS1i5lNTfcEcD21PZ0Ei0wTm0VZGmJOKJdj8RDUfjqdQalshAPhfQghdehTGe5a9r869MkijYwJ7xFYbQXz/tW/eUphf5E7f0MAGVAtRZj3LITvqI6a0CLEMqoorw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1kpIOjBbpihvpy4LwMyintVraaoBpc9Jnudfne/AdXc=;
 b=GudqTw0O4Y4J0QTzhAKNpKDLE+beeinLDfJnbkuzYkQKwb8I7z4HwEkCKv1dyjrvGoJyJVdPcxbfmfur5Q5ion5WN1GeDAf1cUDYyU1b99ZWFO9WjQ+y5BLKYXSDYodRS4ZsKMZAwYU758iInOllOwH6ahkCSo7B442gUSFNF2Kcp3FzxD8rKY72pDslql8L2wkwkFDDngi4WBTbKaFNZm6TgPtDMtTMMbFTAq5dvWX2rL4N2DtERycfo22u5YXvyDiS/9STOpuc98l/PiE5vg+REr6buuAVRejHEjjbyFJ6Ho0h0G8+HUxYJvAx+79l+MCmYM3T+2XtJKAKBoussA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1kpIOjBbpihvpy4LwMyintVraaoBpc9Jnudfne/AdXc=;
 b=douESdPdZxG1V2aYi9ljjTWJCyfd7gFcgM59qJykcxfw1pevVmPdFzwojcOlIY2jz4yiYmkTrpB6DolDBERjchz8EwZeYHQcteztAjrwax0P94AXSlk4IqR5rAVhS8ZSpYhGCEfWSfghLPD7A41f5kKO0MqGcf7LqwxC/tWPHxY=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1295.namprd11.prod.outlook.com (2603:10b6:300:2b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Thu, 8 Apr
 2021 22:37:23 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 22:37:23 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 13/13] ice: reduce scope of variable
Thread-Index: AQHXJnS76wuiFBmzpEmfeCbAuhgzRKqrQn2w
Date: Thu, 8 Apr 2021 22:37:22 +0000
Message-ID: <CO1PR11MB5105D33940A288FD2120F695FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c76bbad-dce1-400e-6028-08d8fadee093
x-ms-traffictypediagnostic: MWHPR11MB1295:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12957593AB4949AB96865564FA749@MWHPR11MB1295.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QGhehabuvqo4fGO8cz9Te5O2H2yhv64n3h+MArMo/VjTOOSLwJMJHA5KcwAPnlADaBR+Lsi0WCX93Vt4mQHW5nOaD/YTM09I8LbqKv6s/I1v+0sUHhpA9vye4qcYeHzTKjUOPgXmdlA5AF//OjpqPxgZb6+59sFCrboiWQe6TW0U8n8KG6liyPjZSqjcaxprjnVTyq7syVCFAt7TZh511fwekQh36QUJ7YeGKwHqQO/lsEN+LP/mb7hXwkYkxeGiVwnmNZ4GVE2rMIFd3z5i/9n/DYr932KVt7t3W+SfvL6BdorC0p1XRKD6JOUII7ekpZoyDDlIXunC7S6xBC6O9vibSYhyl/VFsOe6SVDRGdhlOkGKlY3y2ybGfweHtXDio8ucQN/9XSdIcemdCmOD3stFYDSQuNXy219n+v1FzRuOCbozjbM+bI2X9VJmAD9C+YBxJbN1PEPEBzHtxA041lde71QtA1BnCRRYA5gGTt8kpYpZmk+iXzSjSCtFjwpZsfsi3+In2TOVbd1wSb4ze5+CGzpJwGT6Mu+TyiMHnyKOtstdVZTlOJcRhlzxKaEnNdrAq40q1wS9jHI1sfC2+VuY73aWcPsouI4+KRkJ0d+WSIxWlvfiVfPsoeWV65WQnD3m0xwmEewi5T6/YWDsg63x0uHk48byJeZkqXs1Etk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(136003)(366004)(396003)(76116006)(66446008)(33656002)(316002)(64756008)(4744005)(66946007)(86362001)(8936002)(8676002)(6506007)(53546011)(55016002)(2906002)(66556008)(66476007)(38100700001)(478600001)(9686003)(71200400001)(186003)(83380400001)(5660300002)(110136005)(52536014)(26005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?uYZ/wURlc0Gr/H95e+2HOV8/elEFMdA5le0fC58o5d/TquuMi2nnZDHZbaVe?=
 =?us-ascii?Q?GfcHcjdBjOMYXMbeoIc+9uReENPfEMlanPUSCHii6iuSIQFrCgvxqQsaqs5r?=
 =?us-ascii?Q?J01Kbkf1l1l7bJPwsZIko1X4Ltafjz0+YajuppQRNzbdlSqlbQSyo9p2eX0z?=
 =?us-ascii?Q?5vaL74fWuipbuWQiFIHXBMlHLdVnCJPJlnGxkF/VCxHj4wjgCNRIB8jG1H/5?=
 =?us-ascii?Q?pc3tdXpW/dJ4bhATtd2408hO0btCH2P4exGgtBuNm/akBC8O0sT3Mr6s83B4?=
 =?us-ascii?Q?Wu91qwI5DFMgDaek6vJ1gK8NHzfkPI78WUxwlNrEXiLPuMLMQuZRBiqWf61k?=
 =?us-ascii?Q?qK9lxFm/7HkjG57lt5YN6zOkc7de9XSlhlRSFfNtgEj/AqGQxLLd/7LlmOV6?=
 =?us-ascii?Q?PVCQstgEd1z5yp1rbMiao//5AhGZQnJw0SdxZBUNn3xe8HKk+jmi35MTPUVl?=
 =?us-ascii?Q?z558Yy1nM1DoBhuitwPesZo+r54GJkwhf52Rs3vsczQZqe9zR7eMmRN/0zKo?=
 =?us-ascii?Q?PqZufjaha8CffTItRO4jpCw7qd7aY26dukeEngev5w88OokXhsf6ZME1I8EP?=
 =?us-ascii?Q?7pafe97KumiEKYLsbBGlNYs1YSu/Jc4r8qfM1CGjaExiFf1dlU1OX2u73S9O?=
 =?us-ascii?Q?8xMszzlQzlzcAmXlrf4B0TA8qXOvrdC85IzaEwL/Ok0TgoseGJUP7QOsJBMp?=
 =?us-ascii?Q?9H0+wwQVWEIJ00x4tGiNBqLPqtdu+csS+amgO5PMfJIBEapJHbXbiYT/EijJ?=
 =?us-ascii?Q?JWQI7VlM8dl8lOJh5Z0ihOpO1kkcPZXdkVLKjaPl4B/YyeESUr+28tEmwEnY?=
 =?us-ascii?Q?rNMkCKS5gtHzY9gqN9hR0/iXVN8YbCyhBh25cQtxATJtXV8fDh+UaWo+rM4K?=
 =?us-ascii?Q?k+JDdZB/0LBaX1PWCGRY0bntxpOM5CZB/rIED/OF0++/7rkaoYfw7ogc9jTp?=
 =?us-ascii?Q?Ynqa+OLbY44CkeHwFCTMV09T9naG+xl3uKyVvlkRHd9Kgayetk3sBF4lLA1D?=
 =?us-ascii?Q?d9p+Quhp4RwlxFJ2P/8Nd2hZLsCJ94pst9apA594LTSeXiolIVO4mtl8udxN?=
 =?us-ascii?Q?+CDDKv1yOvdzuZA9KQBRo1Zfq87Z/e3bohS9rMqrevIAnWD+j3Yf2pVSqBDv?=
 =?us-ascii?Q?xNT3IY/IT3qdfZYt9Es1jyfh8/DrVTkGChnMS57V3yz0r0vgSwQFPj3eVfVT?=
 =?us-ascii?Q?fm+j3/xqK88sRHRc2c4wbdI14ipHuMDkLKUXWN5opK1gmmrE6JAWDYaxRYNM?=
 =?us-ascii?Q?SSUC4stRnazgYrl5Q3BClaOZNZh57RGblVCfk6Cpgs5Qu6jhsNNMZ++bSr17?=
 =?us-ascii?Q?Ks3S2wNuDt/mAJmArmE1pf/4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c76bbad-dce1-400e-6028-08d8fadee093
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 22:37:22.8710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iwIt48zTqBCrXY3Zt7QmXoBWHWgEXr+JuqQ0zoGNXUJsNf3+G1gi0lCwtV5e/qEs+suIERBA/vzJAw3nT1UT3i1jlB4z5gwfcCx/tfVW5Wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 13/13] ice: reduce scope of
 variable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 13/13] ice: reduce scope of variable
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> The scope of this variable can be reduced so do that.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
