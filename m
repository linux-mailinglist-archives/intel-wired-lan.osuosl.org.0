Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B7433AD25
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:16:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAE3C4B1F9;
	Mon, 15 Mar 2021 08:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13-_n844Zt_G; Mon, 15 Mar 2021 08:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D8C74A5F2;
	Mon, 15 Mar 2021 08:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E0351BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B38A4A5F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWoWeXm1lURG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 182804A332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:16:38 +0000 (UTC)
IronPort-SDR: cvsmZBeodYcs+Wmf5TttFCLg6ZbE1SrK439GJZFroG6rKksbJ0echIlkvogeCd3AO1P32dr9qF
 FYt8qKrrmk2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176182748"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176182748"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:16:36 -0700
IronPort-SDR: DlinLJeV8KJ81YbXHQAi4rc8QC88egSSUrQZifdifGlRf+GJh+TK8vl2L+v7JJTbqxvAqm5le5
 7gITKL5AO9KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="449291523"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 15 Mar 2021 01:16:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:16:35 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:16:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:16:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdE6CrryBQx5WYdBFgRY+RkgciX1/BQsonkILC7hIy62tNb3SXlNxA74SMZI1NMBTTbAIl9X70tKpfpXXTYWQk3omaZf6H4xtuFPUvIm2BTGT8GJMeCIOvwiFAm98mOoUM9uHJIGO/3CiKx585T8YPaGwK2ZJrs0HB1GBFq2mTpR91Z3C8SRvAIvyFbv6kELUYIuFGktvgc68yACvQq2Qze5erLZBuh14ajslN1Oxf8MUzZlxfi8eBp9httJAp0LPcAmVvHgDuQPwxI4AbbddBEgK4a9UIjZxkdoKHTl9+VG10W1eoL0nT6wGYwyoD7yNrxGp2ZRetd4UI/Yqkj1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtycZHG8V6HEWfmEq/1fntJ968NliEALxeoR7aFPmv8=;
 b=N6E7AzrBnAe6ZOxWvAwDCgKbToQSoxk4ZLF2KXLIApTbcZOwktgHJko7n8VF7ZO7ScpQRnUuO+2sRULdH16W6ZJkIX1GSC33ybxKZS5Sh+cmXXAe4Cuw6azJNg8mVWsqXEPWjFFWZUR6F4C93Z3zZCt7BseFH6PAUaFkKr3JLs2M9jj1sYO+Q2v6CyObW1tP9b40Xz+/EheBanf6CNlqbB6C2R6Vyx/4p9EcAxsgTLp9zkptS9fwZUWtNNHZ1n0K4DJNA1TDb6yUF41xj/vLckJp/M3Ms+aBkrnt9KUTqnGDIghTr2ZPnVxCGbM+NL+f9vip0eCHxNjVxVYt17xNSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtycZHG8V6HEWfmEq/1fntJ968NliEALxeoR7aFPmv8=;
 b=fC29iVGotNU2pno++JNbxvPLj3Efxe/+Ensm0xXhVyFPCXStNiw1dOVBSYeeCXTcRFVeVs5siQ+rtEYkRj9RHO+IKMuq2tcvSt4ZUfU0iYsYwPwbmAHTEVjvV2UgxwmbG1AI6A/EoXyRunEJYgGcQvpt1W4hSXu/GTMR52Jj7ao=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:16:29 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:16:29 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Chen, BoX C" <box.c.chen@intel.com>
Thread-Topic: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
 protocol support in flow filter
Thread-Index: AQHXFJQHYsfob2rPE02wEQjY58myYqqEvbWA
Date: Mon, 15 Mar 2021 08:16:29 +0000
Message-ID: <BN8PR11MB3795B1E52DF1CE8056E7CB37F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-4-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-4-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3aa40cd-3ee4-4114-d260-08d8e78aa2dd
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1297FC05446A240E59295EFBF76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fY0Py+AI4kaRaov8FMMSEY5pC8Hz7Pr9fPZ7VQcN56MSQqFRbLC23yPrbFlZwER0i/uLt1QzL8oumJxDaF85Hhm+NJccOscGCg9yywntevXSJWYFvmNITUQzmnwmacJZeYKs8ij7sAFi9QiT+mc/xZsz1CR/I7XwFPLmbpcL+VSR/d0faspyt8XPFVwgquY4RZbtzkx5iExn6rkjXZi6teKTuY3TRnsLub2vuYG5g7P7SI0/agQEAtughj4X3d+rfJWD9NsejIsJN2kdjfV/IgLDGhmlMcCIMXDK1As2lz3A4JYMKd7V1OMEmbf2KLigRhp9w1nZWb5IxTMXU8nLNErODG3QJGRkwfcAIZ6Ox/7ktBouqOC3Gs+n5Vkf2hdNz+Al/bFHA2H7m8IzMCnJwODs5LBCb6wswDh1gVVN2ecgt3vJBe0Vc47f74Lh7CmnTrkTx/PT/DFzHU12JDCDMsL+cH9WyH0LpE21mw6B36pmpjtCQP8y1yslvUs3F13zp+TrLlngcF+3smZ052ePDn8uu8Dn0StF53usMj7CtU2iuvXkViNQTBoVFj9hTrz+AyU/VbaUVsuMQB8WaHpLImLe95p9wIcunLznQKDuQ4TuoB+SjelTELicsxropK0toAgmti2tRv1CTa/nP88BDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(71200400001)(8936002)(66446008)(7696005)(110136005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(6636002)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?KlGd4G4eo38deE7SnhN1X4BOzw+49VvNo4cYe1yhImlDLETDTF3Flv6zVYZW?=
 =?us-ascii?Q?1kSBh3/0p7NQfY59t8SE6WZAVY+VuCZgpcRkHjO02XhD5uJCsluK8n2t6O1y?=
 =?us-ascii?Q?x9h1yGmow5wN93aPuB1T7x8VlNOyz3z61Xq3azQmeje/i2gmJd+KUHnbTwSs?=
 =?us-ascii?Q?G3X5JKRGBrBmiaG9cTNa6cCoRkpQ8ptYOp9QT84Z0MxrzTt18yzCliENjT5h?=
 =?us-ascii?Q?ijlx+OVNAYA7RzDNO+PddAikRbp1ZQgJel4LnvMNLP6kVW2F9O4dFsrW91Ya?=
 =?us-ascii?Q?45lLBjt18XnhmP+RXUMtRieB7ke9kEJJ3G/vP1JFvrP9Ruw+uUNvVylKj9cH?=
 =?us-ascii?Q?GFDkJ3ruEdd4gsVpudZaLGdflzQOxzrpfKW3y6J7cJ/xBtznrtAV5J1zBQ6R?=
 =?us-ascii?Q?8uuVT8qzsKxWl8gjPlZnSoW1UwaLZI0hmuTQwPcktsikkslIdBfNjh2Aw6Lf?=
 =?us-ascii?Q?UoIH4w86K5fanNhUCneCfdXkTj7vcMElXiL90R/jLkmhCQ1kKa97ol4wyo06?=
 =?us-ascii?Q?+CdbYh5Wt8C7Mu+h4lYjAkSdLB8bgS14f8x6vVgZVgc2HjB8FaC4BwsIYsBs?=
 =?us-ascii?Q?Yz4h1j/8Hxi/p9Ein+ym2QgLEdZW5WS4RSnV3OPteWmHWUTDzyRQ+S5oYJkG?=
 =?us-ascii?Q?NwQU696YqSGCU573uO92zk8La3I0zvtw3hi3cG2lkAV/13vVqS0vTXZEA9Qw?=
 =?us-ascii?Q?cjJ9yaRmHu8bhT0ISUaAuCUYjhLhdKLSi+oY/axOkSdURO8Q16TxZUfwOes1?=
 =?us-ascii?Q?sJbLOIlqb56EsvwZVuPK/VL7uSx8WjyrRj4BBaijOJ5Sge5QpwSciF3eUAX6?=
 =?us-ascii?Q?iFOqkCq5hNq3U1SNeoOqI/W1UB4DwzqBrHPsiEpF7dn9q6EIM8joXqmfiz5N?=
 =?us-ascii?Q?ffsKLrTQp97XipdL9BSkwAcEx6rgf8DJ3XVWae8qtoBcHxEhCJ9bA/4dBPCs?=
 =?us-ascii?Q?moxV6DDoo0xg6VUxcUxBB82iyAl+70SgRTvbyj1NDRBLD1/biGqXWNtwcOnv?=
 =?us-ascii?Q?CNz+ZG7k5fwDIIUdDfCsCUc0lKq4r/v3fgvP+0zwKS37KH2QfOLS0C59u+Gz?=
 =?us-ascii?Q?ndrCnGankKVzPuM/FTOmRlgxdfbgTSeQ1Ld1GePOkvtMXKM/awZIONJkeeCr?=
 =?us-ascii?Q?DmhTlX8m3O+iKM2VCiH9xv7x2HWQ0XK1YwC9d5wysEt2NnAwYBp7xwsU+dJG?=
 =?us-ascii?Q?heieKsHgsLF0k/Yxpm1AfIdEztQHi2h6PCHNygkoUQkJ74te0PXr56kpwv0V?=
 =?us-ascii?Q?qsyu7+prEck27pj6UPZOSeCddbSU6neAladh67Iiw44KRf//8d8UecknIgLh?=
 =?us-ascii?Q?UI4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3aa40cd-3ee4-4114-d260-08d8e78aa2dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:16:29.4435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 17GxW+ZZ+7Rul1AZeEtQladeoSXKRGbxDlKkWXDCP0MlIRLFbspDylNFzRqEvly6sI9lG1x9LgnybkHFOynrKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced
 protocol support in flow filter
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Xu, Ting" <ting.xu@intel.com>,
 "Cao, Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Xu, Ting <ting.xu@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 03/18] ice: Add more advanced protocol support in flow filter
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> The patch add more protocol support in flow filter, these
> include PPPoE, L2TPv3, GTP, PFCP, ESP and AH.
> 
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 270 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h     | 128 ++++++++-
>  .../ethernet/intel/ice/ice_protocol_type.h    |   4 +
>  3 files changed, 396 insertions(+), 6 deletions(-)
> 

Re-send to Bo, as a new member.

> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
