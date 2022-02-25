Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E1A4C4A9F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:24:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4702F83F27;
	Fri, 25 Feb 2022 16:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yu555A8yvver; Fri, 25 Feb 2022 16:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E28B83EBE;
	Fri, 25 Feb 2022 16:24:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C10A11BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE147415FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIu-s0n4CFFD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:24:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11E7C409E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806291; x=1677342291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jXltF1oToWF6C5mnpCbBZMETenSKBK/MTHhiOclLd0w=;
 b=APFBgEz9fGu0/aL1hvSPIV6UjvUzvWn2UPim3r2V9IEfuZW5wjd2vP4I
 0DUY4tUhiH6Qg+m1mgF9e6iZHC/21L+DHV8rsOYh9bd1X6tRqDp+Qe1mR
 MkvqUGHP2d/n8Za5zhudyTWPmX2qqLOe6lq6bQqevrtoIZ9/Ku8UD1h7f
 ieXfC3MgdaAirmvB+a5haev440nAOYSJ00Jk48MN65wWjnXpyZ9Z11IPZ
 fD+1IL76Xoy9KYOt6IMgkJPdc5LXAhHCI3QJbUBSCzN99KmcKy03MFRkL
 3BahEFNU4zaQqhusGACQk37GBo6Uf8x8+HkZ8khPhzH9lXX18seYxhV0a w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313244684"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313244684"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="533623070"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 25 Feb 2022 08:24:50 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:24:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:24:50 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:24:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMinUliVsxSn7hJF+l0zUfpGhOmRXPfZpMi/A/wzlmxNJtU02ydsTXWeOKJPJyTBMewYbmdik4uxE9pH1fLH4WYf5DOReCb4jQJrxhktQGkj4lHeSrJjLh4VlYgRAYcltZgMEgH0aNtD7kBFKUejEgSFPH7K5gB0sO1ouro75Z0QoRkRlot0On5loPehsorFW/uOO27ucicf7GGnGbnQrqmmDLEk5+eoSgHtDIHyM6rfGBf1fuVVO/jQR606R29UnID/FaS8i9GZdd948J4sTL0xGEwhJRagIS5N9zpPKgDmDn+CLn1Pfk/MuI/XRTTQV3ghVH/BfApShQYWNs+iSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WqWpK1m1NH3M8UoIzCTtYK83d6XZFnfWiYRmc39Y4AI=;
 b=fRaYBLuVuMpe6WzXFDohivdp/YpnrHwMrAFzcB5K/BcMCwXuKg1mwfZguqExIeYRuK6681ezPWpHPmVj3rFeBQeH9l3YbQohVUoMDf0Qu3mkcWsiBBj7RwsR0SY+vgvkUpIKkC6EnWraQZDw1hwZ72GGLds8Cm5ab4ss+3REoe2fkcUOlhVVvSCYNmV8JRA6qzVDso216PG0inxNcrksug4PHjC/SYnZps3ZWWX5IoouS/d4MkbcXXsfWM1VnjblJwqAlRyzMipkHU4bpQBen2O9yXe1Zwoy14M0ZY2QOSz8EBQd76JRAZjzMPE4WRfRBy46l2k18WSe9WrLepdHSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM8PR11MB5670.namprd11.prod.outlook.com (2603:10b6:8:37::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:24:43 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:24:43 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 10/11] ice: introduce VF
 accessor functions
Thread-Index: AQHYI32cp4YHbOFgREqy7f9EOVPBmKykgVcg
Date: Fri, 25 Feb 2022 16:24:43 +0000
Message-ID: <SJ0PR11MB56298A8E20222A49FB43B61BAB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-11-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-11-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: c40dbc0a-fc45-4a95-a1dd-08d9f87b54ae
x-ms-traffictypediagnostic: DM8PR11MB5670:EE_
x-microsoft-antispam-prvs: <DM8PR11MB567065A538E42226FA6E20A0AB3E9@DM8PR11MB5670.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nHxDVoTADL3CNnjc/DXz7CmzqDxWN4sL4zDiknebcMTaCSKPfK29FgIVSFC0nfzLOj2fEABY6wFZJxqNcefPcIXLCEWp+iyTZ8DpAOJWrIBWbsIvdL/PIJfMVDh+5thpChHgKE1Z+shG4+/IeD+WsL55DFZSiKGUys/b3WFDW4fv6wY5pPsk9Mw003Z3bPP5f6gR/KwMUXSplfzb2qWmSCMpmAGXhzMmvjWEIQfXmDcaKCvXDIHNv6qkPYY96K3/CC0M6FLgL0jlb5ZnbkPAn4vkMikihjA7F+iauIrk/S34BKyOpfG7Tw0XVc/nraNjRIA4FECn8ujeURnZArvHLqGd7cwUuK1IpdWRprzZ66RbSWydQ9L3WgcEladnJPo64FDsrd8kpmyTpj/QPXqPM0Z7YvkdsOvkjYde7CuJhlX5Pe/P1rjqY/F2ZhT7P2rPE0Jk1cHgGJc7G2xyn6GMfEMuAJsaws4bZxhnR1iiCy0uaK47m2UeGUB6ki9oJFO2WQdmDw/dGScdVsNEo44bMKoOHS2DPGkXa/GB7fnxopk2m6qD5zfZAlHw7PKZ8ROX5e0zpRFCMsjU4tElRtw+fITqDzTSVxpsyowz1rRRVZUd0kAOSbPFZdptqXZj5jWp2KhlZjGVuaggZvAevXCNpLJwgdh8pWJaTdpVviTG/EpXoEGq7NzvALHxbcXQ02THgvzpsyGbSQwXtXmj3NvrlA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(33656002)(55016003)(66476007)(66556008)(66946007)(66446008)(76116006)(64756008)(7696005)(6506007)(2906002)(508600001)(86362001)(53546011)(38070700005)(71200400001)(8936002)(52536014)(38100700002)(82960400001)(122000001)(9686003)(5660300002)(110136005)(26005)(186003)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ouP4ehRBXwp0ObCc0DqbJVv9+dxtT/QkVBGX5LaMMrHd8dN/JmPv/SdlSThs?=
 =?us-ascii?Q?X6mJC6mL7+Qg4z6XNg/UdYjKQZZxHi9qC7JAd36ZQeAUBKV1XpTY5YgsCMjs?=
 =?us-ascii?Q?eTgk7Y8/0EMl4K1T0Pc9k5Y8BrCy1ZPR2xcW2GE1VrHUkL1QuKjPCEW9yvXt?=
 =?us-ascii?Q?Dfq7BIK4AXw0Upvenv+f27dDVlvm6++4Ki89cgsFa4c1J36lB5EipCWnHzp6?=
 =?us-ascii?Q?iS4CHXFVJ9+miTPP2jjwaSoqhRcMoPFqhVoPnqVdCcQ1U003JvnDV07uKjKx?=
 =?us-ascii?Q?s2Zl/wJeywItYKIvQ0DEKKXAv/O4FAVqOQSbssk0K2jCmVK8rHM4Wxx152Y+?=
 =?us-ascii?Q?rhntdMJmznro41hsB8/xXvmcMMjPtK3zPjWLysf9HbEE/PBOQIVTZheFL5uh?=
 =?us-ascii?Q?9HylTj0KTyWl1ntBfwKFv9r2JYRaeq4ajCrslLAdoaH2QqbC87LKojjNJxn2?=
 =?us-ascii?Q?2nmGSPua0fYdhbKY31tzioHnbblTrfdAaRshioTNr6Bn+OTmTknAa7J0Pvj5?=
 =?us-ascii?Q?HoEXD5nV95g6qr2m39fe0zwpLCjmyLXTYsCoecaIxQRwGUcUYW47bCurzJ88?=
 =?us-ascii?Q?iIeOGVl4ONja6KuMo/2LdF17YRE6EnYU4dS1HmCEfRTbpgC8DgTaJI/KaVyF?=
 =?us-ascii?Q?WUGryGGKX1h41tSmP6jyjW0stMyNhAS0naI5LNSpCL30T5o3dSlNFgxHYpEH?=
 =?us-ascii?Q?64SSjPijOYbQsLp9fkV6vUUDwWweS7fpwg16Mf65IdCF5MQ10CIvqwdfHHFP?=
 =?us-ascii?Q?DjQi3j65jIKyIjzSp/XJ3hpfbFjdDKMwXZCoYlUlEcJhUj7402CaclR8l8Qu?=
 =?us-ascii?Q?FbQHAA85jaX3+JtpPUvMh4CAvW+Fka7Y4B5R5VPWig63HK0NQURiNjJbRcDa?=
 =?us-ascii?Q?SljS/VbUWTJA4zzP9z6+dwCuMkYwcfxE7YdK4fv02Zgs58/DWE0khuHgXhDL?=
 =?us-ascii?Q?pS1Hkumjgdx3xS0M6vftZHSfjahdRPXNDS2cHz3ioCwT/zcJC8ZSEj8mAueE?=
 =?us-ascii?Q?xcWFY8bZTkaQTyoXPWNNrOPnzUXoFrkEbl4tKxHUCQooJg7zUbzDoWmtMA8S?=
 =?us-ascii?Q?P/zxMPvaqyXIvdqnMTi63NHwZl33tj7wOCMF5LqWkBZZyQRzgCnOPC9VgjEn?=
 =?us-ascii?Q?AkBs6Jl04d6aItpSSD9q6jsePqzUTrbWPBHIfbDGi10uPKuSrTp51WoGa8Gf?=
 =?us-ascii?Q?Ozk2irsX6oLXf/YOsj5JQoOgDvfaQRflgb6IVl7+Y+9JEh8G7/i/wJ+VNiGP?=
 =?us-ascii?Q?lymSN6mhET6fNowsLR2nm7MvvNlBAMaG0cwOJnNw1GHeeCNnnh1bn0FBvSoM?=
 =?us-ascii?Q?7U+E2blXLYcE/a4neo2y43DGqh0wC6+zWNJU/nl8RUin5zw49o47N4qsq7FJ?=
 =?us-ascii?Q?N2Vxtp0rFcrZmWbeFyU2Xs7gXzZIwBf1t7g4vAIUUcWxdKL11mEUyQt5Vs+q?=
 =?us-ascii?Q?r9RMUhOX1E4fB96q6dy/Jvbbz72N7LwYzwa1fl4Irga2UXwCytRFxWb44ns/?=
 =?us-ascii?Q?MwhTA6ayoqUFcT1UtwGRoZBF9t/AVC65UtFL2alfMVWDg88ea048TMkdWOGL?=
 =?us-ascii?Q?woa+meRY/g7LO85qHHNLcyw+1A+X+fxwcx6QRWXSp028UVcuDEW53Cp86XJ2?=
 =?us-ascii?Q?53sOtYUi7V4REP/RMZ5qbN1SdC6XeiqI1PvMa/2WKD/5IBKRn5xmLzOe4N8D?=
 =?us-ascii?Q?6NkdBA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c40dbc0a-fc45-4a95-a1dd-08d9f87b54ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:24:43.4407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f/nB3JGDw03jzDzYvneY0f8svnACOLHI+YcYQtC5WuvgJQo29e8Qh37UWXn3d9xMG6oK8EARd2eGqx5Ox2N8AaPZ3HbQxZsYf0d0vwbnH+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 10/11] ice: introduce VF
 accessor functions
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
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 10/11] ice: introduce VF
> accessor functions
> 
> Before we switch the VF data structure storage mechanism to a hash,
> introduce new accessor functions to define the new interface.
> 
> * ice_get_vf_by_id is a function used to obtain a reference to a VF from
>   the table based on its VF ID
> * ice_has_vfs is used to quickly check if any VFs are configured
> * ice_get_num_vfs is used to get an exact count of how many VFs are
>   configured
> 
> We can drop the old ice_validate_vf_id function, since every caller was just
> going to immediately access the VF table to get a reference anyways. This
> way we simply use the single ice_get_vf_by_id to both validate the VF ID is
> within range and that there exists a VF with that ID.
> 
> This change enables us to more easily convert the codebase to the hash table
> since most callers now properly use the interface.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   4 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 133 +++++++++++-------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  25 ++++
>  5 files changed, 116 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 7bcba782f74c..c27013afcadb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -182,10 +182,10 @@ static void

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
