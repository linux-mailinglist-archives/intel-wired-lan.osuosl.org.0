Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3E84CAF52
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:05:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA89F60F25;
	Wed,  2 Mar 2022 20:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NO-fILNTjzA0; Wed,  2 Mar 2022 20:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BDBB60D58;
	Wed,  2 Mar 2022 20:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 728151BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E18B404AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPb7x4MN3mIr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6583A400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251550; x=1677787550;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U1lM1UyexED72qWj3yihrGp9U8fI1EGXlbyB6DgR1Ck=;
 b=h4eU4YBbli0OTONQiM4BPs1jfhrIYM2CeexXx7dexZzl2ZODGLwG/uke
 D3+p/x2iK18Gt8zlU3jNR5uVSlPaa3l3DuXBNqizRraDwZQEwPWoT+RXz
 poMyipbCGWNTHMkA9KHOJO61jrnHHDuJQQdnpEZ7b4OhyNZPMNw0C2+AM
 C9s3BwyoGb4bPJc/dB3D/hz012vhbhYXOSX1rCi1OCPQDYSXizmiZAZUc
 CaHdIKiBpRQdXyZ9sLRNm57F0zf+7dOWmUNWffqlLUxPB6i7Ysk45Vhyn
 TlHjqs0BV1uOpN00VWyvTcGgXfeqGpTfeqQO1jqF8k03flowlVqIx61bC A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="240912114"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="240912114"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:05:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551416865"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 12:05:49 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:05:49 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:05:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:05:48 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 12:05:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlig8xF3tZIo8Y0BeEriamFkGcRblWp1JI0YIJ/6+uyenLC68J9dvRjVEMoTSO6Qrm97lQ1PryHfZEhq9xZtZfKqa2Vh2uGJBHYoqOmUqlajltEC1Uq9l7Bvp0TWRRDY679I78y1mQnWxX+fVIBtGb7xr1WUuhkzaT7rteQZqKiitGQ4A3Ac3D1YWFsZtUcX7pjF/WNLWgo96cEqAEAcoJGsWmlfNmNBHPD2JIv9vni/DmCCS8AobhSg0Wxc/HgQJPzj01Xvv5OMEz7JfcHJOHTuV3hnWV5HVjECMq1y6Z6m107+Fyx9T/73397qaH0lNrtmDcxKH4oN3MTqcyQnPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeuNGcH17aUicgeo6bmTJuU3GZZtET1/TqMXs6b78Dg=;
 b=BiQdqCKPO3ARFbgNTyj2pL5azWUEgTXFZxP22rA3FK4Yv4QeCtyxPNo1+4nKN5DX/ew6CCQmVE8VHv4w+qh/gMcSLwVWHxX0naIPSFGC1d7bKIcNyQC+SjypSyPphys4uKj0JOgG6PSEI6SYWS5zuPILdiPItLiIVDxPd2R0ZDlZahujgdVcJduUmrBaq9utXAVXBVt4gB/aLlRMpv/bPmc277Smf05PqOQjGUZF5llCdnwxxd2WYYzGlE1v+juAfDJTy769GHEbeahoOvfNnvktcuiTvJZLsHGJvFAHzCwnZy7TGyTgDqm23hpuzQ/ML+OIhAqgBQ2G7MM6id0ddQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BY5PR11MB4323.namprd11.prod.outlook.com (2603:10b6:a03:1c2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:05:46 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:05:46 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 01/25] ice: rename ice_sriov.c
 to ice_vf_mbx.c
Thread-Index: AQHYKExJ3ms7lPcHYkWdvX/vhK6DKayskSfw
Date: Wed, 2 Mar 2022 20:05:46 +0000
Message-ID: <SJ0PR11MB5629541F17EBDF2F2DD00858AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-2-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-2-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c10a1da0-d4f6-41a2-f779-08d9fc880a56
x-ms-traffictypediagnostic: BY5PR11MB4323:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4323F46C6A2E63B8096D9F1FAB039@BY5PR11MB4323.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gaqMUvQlZVu7yZyIx6r+81LrXw+Thq6vzRZxzXkCxu6Nn5J+cbAJzBzETZR+4lvHGo1LuNpc9+/oiIBW5lP82YrANKz7hlrlvSev+4PNYNEPIR8hgPAPthdDLvux1Rh93BZFiO+AFwtAI76arelqMAwTAyfVhlUoty/nWPeHlELdYA2CgEUCPE1Ds5nLpYWRq0tA0qbfrjoe1et8h+mTVaQv3A5Rr/fH4pR4JEcjQHFCvZlHJpy+5HKlLnVknNqAu3YsWwOyiFMnMBqmC7IUXXzbG5DS89Xqn8u1h2dwmBT1LUHY1I03RHgJh0KnTJl0iz/sd8GyQvGrYxO1CDlsw0GrVKe4pG1NnlpMeMp1q2PRzrguREfGi0lJGtAv3JJVa6z4+IAH3UrC8gRLzUAsJzKsvKqsM88JmvY+pp4Dudj0JSVc2TxvyY+Rk4LLMdWEOu+5nZ6yLKOOEIcZ4LwnBIWtsLYI/3YMAtwnlAI0N4opUs17iPlvY3jcE3gx/ka3xasfMI4O+oByhz9QB6mZ9LVGC0Z+KZk7gDGwmcVAg9GEYi98VTlwQnYkWHcLxJpx0oCgXOWv1gdh8kTgCoDhSUIw7vSSkBxOAT+IIUZdoNzdben9b8LZTeIiWvxltRqvjs2I3J10K0X9CcibzY3wzfi2v8Q3fVrebyK0cgwtvnIgyQOH/EpB5qnep9jcJaCHcHlMD9S3juZV80pvJf0uaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(86362001)(122000001)(8936002)(38070700005)(5660300002)(82960400001)(2906002)(38100700002)(26005)(186003)(110136005)(508600001)(9686003)(6506007)(7696005)(71200400001)(53546011)(55016003)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(33656002)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kgpsicPFPwn/JNbqvyPs7edF+RLpSKoS+uVbhev3P+uBCqtQoUnJb2pwIJq+?=
 =?us-ascii?Q?khrlXB98KwUQ6C3+prxvakLPE193BTrRBj0iiXhupaWi8pKG8eHyyjED0z0g?=
 =?us-ascii?Q?mXDSkwPRuMxJ6V8Hj3Tl8uiD58ysWHDwf5pAjBo30EzyulPoTFxcdf7iYSls?=
 =?us-ascii?Q?ZS/ls638u6DK7SwKC2H0fG3nDFSV2D4lSXgIeMihImQm32AH9apvE4hN8Y8c?=
 =?us-ascii?Q?N287/IkN7LSfRl39grBi1exLpyghbm8pzggMakUfubmrln6cX51a2ZSS8tMv?=
 =?us-ascii?Q?eztdIQdRfq1l7FvgJIh1/uyIke44fD0NkceJjb2zHtxX4zT7+a7fHNm3VDbP?=
 =?us-ascii?Q?f+CNgXE8Ruw2ICjvZ0CZbRWoNF+mccfyMQqnlFuoxQj+7LVtT3KJTESFScfz?=
 =?us-ascii?Q?TFibjqEN0I8QC0/cMRZM4jfE0G2X++voDQ5CvtCrfpy8sTGl1J1hziXes5d5?=
 =?us-ascii?Q?M9hflsSt1xBB2tv0noHAv8kybhButJfIqDQLfOrQVN+Bf8zOrfEBx2/kTKWc?=
 =?us-ascii?Q?dPxOilFIcgZAs3Am+koVatEc7P2WqYq2mpm/CShmjFd9XvOaBD5SMEdDxAch?=
 =?us-ascii?Q?S4FlCnVUYMSX1yp5LVQmg627HPh9ASDwzjzl9b1+9T//iYcjUA90Dgr6Q4OV?=
 =?us-ascii?Q?MpAaFDhEMJ6Cjao8sryrVtpwBwpGGmy7/esvZZkb0v9oJFzp5d9r0qjzS1Pb?=
 =?us-ascii?Q?FA9pdlgEehwPwy0FYAMiXNijXdgSupRZijG+q7nlNqe2jlbpZ5/f/dIYb2WG?=
 =?us-ascii?Q?agEScvMeYo75owAWj7IOwF5cCtLWvipyiuuxoQq/qle+P69rXVyrkk6/3/vG?=
 =?us-ascii?Q?qGZaPQK5sc1A1dIMvGdYTSsJCS1dP9lW5NumfQlIttqFXJNG0+nRIggPNXUe?=
 =?us-ascii?Q?aEfbnG4APJ+D5i0DBK07ESIKBpZ9+xxTwWTeQ66E8TjXEKBTMeauEOBNH08C?=
 =?us-ascii?Q?uf4WVqRksisxuIsuRd39fjZRRUF7ZoEjFnAQ1gDsWeQ4UcbMXStHSpqH5kJg?=
 =?us-ascii?Q?XfIpbAt0TBNpCVah8p0gg50QgmfLigQXuGEvT+X4PPvnFdHFLvlF9AO3M9RW?=
 =?us-ascii?Q?NHaQF3NikpddJ5719lwZ03HNtAkArHxMyPmnMuigpiN9Ry1COuNryB0wvYAy?=
 =?us-ascii?Q?3p/cNlJ7u8z0LOVWuqEAv2I4K9IhjZoQhaFivWIkudciFWrrkCTcNhHa9J5C?=
 =?us-ascii?Q?A2Kb9kV18Kp0duY3pxczhCGFNlh7ToYL+n0raggyLYqp99ePpGWWxU5L2YJO?=
 =?us-ascii?Q?c632S/b4nFwR1/RJ5uR1uadb2dFuUa+S1nUsHapd8ib5CQBmaJujfhG3Slb9?=
 =?us-ascii?Q?e60poIZXVAA2B1xWBlJBlXjGX6ZkCvlAPSWS4aX6aE/zh/rfIJWhzB0TPRvB?=
 =?us-ascii?Q?PYfigZ2Jb1IZ9bJCo5SZu+vGYnofAvCnKKVvsufeDNZlb+ahwJV7iKk0lJgy?=
 =?us-ascii?Q?bcVJZZ8IobIAXrruRDEAfcYMotBTVIh6/EyDsqV4QHaedw9KlKcyvlby8MAh?=
 =?us-ascii?Q?tvNlYeDmUodhIZrt/K7dcub1U3zvLdNH8UvSaxxrq1d32sRT5VxL9tuPwdDn?=
 =?us-ascii?Q?NLxkvqvTLGGRYFfhI58aW4h0ujzn0gsQCIaHc5QQdclX45C/i0K0BkUQTYhe?=
 =?us-ascii?Q?AarzAA4a294X1RwFZKXVoZ/afqlibCBYEcRbtUXQv0V6OcA0WP85RvIA7GJo?=
 =?us-ascii?Q?ehp7lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c10a1da0-d4f6-41a2-f779-08d9fc880a56
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:05:46.7609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljnz+hbIsA2jkjOHQ449aPMs008bWHiLpXTeib+MSDjdYJHQcBxYvBer1EqNaM7meItez+6GBUY5MRLNyOAD5vGSImOZCTLEj8Cb842EvQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4323
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 01/25] ice: rename
 ice_sriov.c to ice_vf_mbx.c
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 01/25] ice: rename ice_sriov.c to
> ice_vf_mbx.c
> 
> The ice_sriov.c file primarily contains code which handles the logic for
> mailbox overflow detection and some other utility functions related to the
> virtualization mailbox.
> 
> The bulk of the SR-IOV implementation is actually found in ice_virtchnl_pf.c,
> and this file isn't strictly SR-IOV specific.
> 
> In the future, the ice driver will support an additional virtualization scheme
> known as Scalable IOV, and the code in this file will be used for this
> alternative implementation.
> 
> Rename this file (and its associated header) to ice_vf_mbx.c, so that we can
> later re-use the ice_sriov.c file as the SR-IOV specific file.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile                     | 2 +-
>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>  .../net/ethernet/intel/ice/{ice_sriov.c => ice_vf_mbx.c}    | 2 +-
>  .../net/ethernet/intel/ice/{ice_sriov.h => ice_vf_mbx.h}    | 6 +++---
>  4 files changed, 6 insertions(+), 6 deletions(-)  rename
> drivers/net/ethernet/intel/ice/{ice_sriov.c => ice_vf_mbx.c} (99%)  rename
> drivers/net/ethernet/intel/ice/{ice_sriov.h => ice_vf_mbx.h} (95%)
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 44b8464b7663..451098e25023 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -36,7 +36,7 @@ ice-y := ice_main.o	\

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
