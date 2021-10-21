Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31100435D10
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A241405C9;
	Thu, 21 Oct 2021 08:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1IzExuATyJL; Thu, 21 Oct 2021 08:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38FC7401DE;
	Thu, 21 Oct 2021 08:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C34B1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0799D83A8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aj7hWvPskU27 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B61E838AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:39:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="226438052"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="226438052"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="595016120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2021 01:39:57 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:39:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:39:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:39:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:39:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TAk+YZm7XvSuJj3aruEcaz192RNczK0ed6DRs4oFoe4IgeYkGbxUOuyHcCrApsiC44fQAeaj9gfMbSGyS89EvQUZZ/lR4RQFvjAbt7/TNno8tc3/hIU2klJAk3dsPes4PgROvowBVb+wvjkMxO9O+cBE/+fHZF3oiP8I+v6fBGZo29Ip2ZuSnziniTKFA7J+VkglSyuJ7FFFLZwWTBLOxW2GwXSpIsNAYmO3xsNmsVQtSDIEjclAyULGcElznXsdRO3P402/vcpd/3BN30BOrShcZm3rzZTFpUSNog2llwuPPwJmsN9oCHJen5JtwlnPcMIgJli9PL+hlSG4snCt/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0MVHNq7P95e8WgpdX7D1D8c4D+2lD1JqhXeQ07IzW8=;
 b=RFlO6vi5QySTxRdydmm1UnwlFWi9x3emj66F8ojq3c7Be19EwJJSvF+okx7jpgG4e0KlKueroScgakiQy824AZggHJ3vkRzbBrLaunGqRR74dGbbHooxEuIAF08AU+X8XltIDsTCgOOaWoGWyO0gHqXXNaDz26q2LileLOiZvIzwhNNBBbIUqkEq0EAqVIKK+GGISBSUI7eC+IeyWpyZ58ZH8XSJun1+ertnB2YEweu3dw2yzvUcfYkQlYjMDnkxClI9fKT7yo74x00InbZTW+nVnriTmE1RMV8YUKAgF1vPnK9rYWAqvwZsQQl3yw3ZYMtmDbwPRZi6afjhKe8AWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m0MVHNq7P95e8WgpdX7D1D8c4D+2lD1JqhXeQ07IzW8=;
 b=T3QSzuPkLizuo62cKU7MGwKTHn18xB0t4m7n70d152EjNDyprk7VsEwOKG7hTr1A+hS3MHgOfxMjrtFZO3wneiZJsIsz3908hrXTnEzRkUcah8ZVIUDYkLRyW30SkfxgZQQQ/KDg1JbXRfyOrMIxOtlkKgaoCnlMMVjX5v4ThWg=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:39:55 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:39:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 3/9] ice: use 'int err'
 instead of 'int status' in ice_ptp_hw.c
Thread-Index: AQHXv7DTmYjEQeZLEECm9nNSb+CcWqvdLtsA
Date: Thu, 21 Oct 2021 08:39:55 +0000
Message-ID: <BL0PR11MB336392E43EC6DC08AC614FCCFCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-4-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b74f5b6-d99b-4561-e895-08d9946e5bc5
x-ms-traffictypediagnostic: BL1PR11MB5303:
x-microsoft-antispam-prvs: <BL1PR11MB53032BF416D6D0095E66D024FCBF9@BL1PR11MB5303.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GErDGzid7Exv78usdpFlB54OB7fluw6xela7beq7ust3H46G8Z7h+UX7FAVVDpO5YQcT9IeT+vnI5hby/17mRO51Ff9zx0GiYekbTfBM2ONAbru4J1iZMchEFnK+aa6sLsRtLK/sSj06NL/1mAvSUkUAfVM3YlIDbxudvwWf166FgbhP//33eiKcUEwF+xx/sIN1AkAW+umKZI3A97lX5GDfoFR1tIwQ5r+pQRWnDvG1yWu0yjROjg2PP9zto+Dx3o7zoR1q0EdgGrAasekWfh9e7ZnmwUzKjHflyufsIG+lxnbuFnih9U3+0JMa8+xSa3ySduY8McHTQ+XsVdVrKjD9qslu+j/1QJ+T5ad357zxsUuSHH8+5ioCWaHwdPQiETdRkDlnLKCbkF/bsWksRJCaO+xb1B2b0JI6VHdbQHmlmXrkntKHykr9WsWAnlw+wXUwsxpjMCubANxQU3D+96cnZHVcsKUSVzKBMK7/n+4hHysYfLjHjtxo8VTYAg1viRYyv/W4x1q/jh8MDTvBSRhKQZB6p7lcfnMybdJlzYhGYfz3Lu/J3ygeSA0znBZTKtKqW0r4MCL9Ue1S6dZ7qsDSRpPfBiwxSuga0piGjO9kARI3oypxprjQNRjknCL/XYnioxxHaS3isDjvEVxC40NiLJb8KuSfCyMAFh9UgA35tCo4SRZhppUR3oGUan3J7tAc1MhweoO1tuwFDUGywA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(33656002)(110136005)(86362001)(52536014)(66946007)(76116006)(82960400001)(508600001)(71200400001)(66476007)(66446008)(64756008)(316002)(38070700005)(5660300002)(6506007)(2906002)(66556008)(186003)(26005)(38100700002)(8936002)(53546011)(7696005)(122000001)(8676002)(9686003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FZEYDWroTFyAJfYQMZqmIiYlsXbczGn2yLMZGiVG9PbN12k4E5zDn1nd/lml?=
 =?us-ascii?Q?cpsMCDxOcnpt+9FovtXjWQCCGJfH1YMeZZsHCPycscA9pIwlADvdwUeu/+rA?=
 =?us-ascii?Q?w8AjXL0fce3hewUGmRbYgdsCkEfznmXcnz0XPcjc4pTXTmr12X3mQRhLBmxc?=
 =?us-ascii?Q?T7kjcZpussaMrPe78S0rxiG9s+yg7U+qrKisx29dCh5A/AZsdgf/rAt9lXeW?=
 =?us-ascii?Q?W2ccCDJZnmi1qnphLo4LFEJNY48twoWNJ0Tzlj76OS5Uzz08cBsol0D4zpEk?=
 =?us-ascii?Q?m+b2IJSddJn7r9Aa4OElpRpL4uu6fGDee6T7Qxa1nF2DjcX2KsCoVD1bEFbw?=
 =?us-ascii?Q?yE18vkX7sa3pohyb78CPFDG5F4Yso7exR8cI31U1JbvOw+liFLitYN3BmnnX?=
 =?us-ascii?Q?TDabnSndYl/o7Vd1ewN/iOTOg3JUo4O4TmmbrZ0Wh+rwTfRRYHlXXvyubF6l?=
 =?us-ascii?Q?lFVcNwu8ChQx7v4reu/IgVAk3leyIY8sb2FP21yOLOuAYpVpO5z2c4puEMm2?=
 =?us-ascii?Q?FCdVSLvxcpm2KPVe82jMbtvT28o4OxwG6LRJTHAJ57fprRr32JK7d28V6zln?=
 =?us-ascii?Q?fRVsgy+VGtEh89ukRl6jLL0yQlF8PQztP7vT+WcLFUxCcKJna5uQu2gxH5Br?=
 =?us-ascii?Q?t4kwy+4pU64I5GgfF1O40yq3L03AHrMWSJT594+4+9F9pQo0OGJWvdBN3n5g?=
 =?us-ascii?Q?Cc9l7ayCZm6GnB5HBu0zNDoZY7N8qbKi74gQ70MQgjB8C2NnqDgd2qPTk4x8?=
 =?us-ascii?Q?yolrU79BU6883oPQC5EYaX4zjSk8bKcMYTDqy1MqBTP9BPbBQZfA7OAh02jp?=
 =?us-ascii?Q?UKnz5adMzZzSbI9SMcgDyLYzzHw0r0uUdyGordly3jMoYg9r3oDmZhgBfmPX?=
 =?us-ascii?Q?jrKFXnx627CHVF+5w9snnm+wsWtfzX/WyHAnkFH66dZSkzdII3zAjyNHvU7/?=
 =?us-ascii?Q?rjtvilb+nuMlO8Be+BCEVhc7d4+TR5ZZJIwGn9sO2HnsV953i5cdK51g5/cm?=
 =?us-ascii?Q?WCUThd01sgplDhvvZ3ZRiwbUYPN8w+GACHSMwuju+gvj/ywffq4bGkFxacEr?=
 =?us-ascii?Q?kz6r7zprlTb/+BTnsF3MN0vv0UrlDfxCigaLc6vFCkw1wcnder5MFmhdxb24?=
 =?us-ascii?Q?a3dQB/v1LEaVf2v+ocdEgDErAvuaTZzY/xnqpGrZR/C7QntjEICAMZIp3d3L?=
 =?us-ascii?Q?ka/PnahZBXYL09VxPCuuFfD/JiwiEoh32rn7cXtejHH1gdRr/yN45H0F5pHw?=
 =?us-ascii?Q?QH0JrrbLKv0EdWMAR8P+XVkukwUtPRircl0oDWJ41AVVJVN5SYlZaw0T4rHh?=
 =?us-ascii?Q?QBYbIWYOGt+mCoeX/RqCcHlwggkaGdCAd0eYJm2XTwpqdTGYJVmep+4cPMIP?=
 =?us-ascii?Q?3nQxcMTt9nnUDZupGhrw51BgF1X00LstGTj262HQ6ztmvawGX8xbYeTZGCU2?=
 =?us-ascii?Q?rgYkGH1c4lM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b74f5b6-d99b-4561-e895-08d9946e5bc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:39:55.5216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 3/9] ice: use 'int err'
 instead of 'int status' in ice_ptp_hw.c
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
> Jacob Keller
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 3/9] ice: use 'int err' instead of
> 'int status' in ice_ptp_hw.c
> 
> The ice_ptp_hw.c file introduced a bunch of uses of "int status" instead of the
> more traditional "int err" or "int ret". These are actually traditional Linux error
> codes (as opposed to the recently removed ice_status enumeration values).
> 
> We're about to add a bunch of new functions to ice_ptp_hw.c. It's normally
> preferred in the ice driver to use "int ret" or "int err" when dealing with error
> code values.
> 
> Instead of making the new functions use "int status" lets just fix all of
> ice_ptp_hw.c to use "int err". This will match the new functions and ensures a
> consistent style across at least the PTP related files.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 206 ++++++++++----------
>  1 file changed, 103 insertions(+), 103 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
