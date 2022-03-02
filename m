Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4114CAEDE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A93C60F05;
	Wed,  2 Mar 2022 19:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-9lmOyYLJUO; Wed,  2 Mar 2022 19:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9F8260F1C;
	Wed,  2 Mar 2022 19:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D7B41BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 295C6408F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pt1bqi0oDdDA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 659C8408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250062; x=1677786062;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=h2/7nmi/LsZRaK6d6qvre+kSi0WhJjeItZ7kalClWhc=;
 b=WpYozeyn8+QfHsTVHso1cu9Yf87FzZR7dfT1rhEwHaoXEEdex8Eg2i0d
 bERC+9yj/AxYW4ePpErB9RKYlHjH1jlD9w2TzgC13KwBcD3RsapytZ1iZ
 M3EV1WT/OKmkUZaylI5gHbCKOnN7F6gf+fr4G2LXNy8AMk7qippDXR2w7
 dTuvRFW0Z1Xf3SdpRQt0NiZrD6kx9zVM6qVc7LmnuaZzw0/ffFTTKcUZX
 DnteCEMGAMy4+tPK44WTdtXh16bWz/D5Qys1bqTAtQnJ9WKHcjB0vGWW8
 O2v/UEtee2lzeqL3yKLl6UL4Q1VkYfytYecZWG+kuPNooCeG+wY+w8lHu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253220228"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="253220228"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:41:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="686239952"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2022 11:41:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:41:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:41:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:41:00 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:40:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f846+TfVKPU3DMTE66Pb6p+SH7NeOEDgzuqiwPeI5eV/o/fSlbP4DgMpRO7kc4NmNt2kt2Tx44wo2PIys3paBvInFDoBJWmwI6YMU/h5i1X1t3QiAkUegtsFLsfMqj7UeIa5j3Gm/e3WVEtonQNmRiN8z/YoYVK5EsXUpUq00ECNJcC5hWj14Vhtu3r5RdZsNP8RCSQVcBC7BApt3yzXuy+LubB0bOj2242rBCJlhHMX9n0MJb6U4F4MmCs8gyjGRYA84FCP4KqhR2YoCU8CyQsqwCjgkw0zAdJrdHvNd9Lt+Mqi6l5fKigqVIJGfsoBQgkB5yNZ/wW4ynyyiQx4Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6FG468GVsJWFIkuiryH11bBKQKqkBb49uIfT+tTrr0I=;
 b=XTeO69TEysU/G8EAIjQtouf3ur2r17/u4RNePs2sqYa6Szc/fBVHjK/21a2Lao04uhNjYLwuk/uD9mjqckDmYkip2SVvBw8BoksFThBWKbNaVj8bUW6ADqcmPLrIOwSiUeMO2Ija4Hp14NP2EtlQJU7K7sNuMtNyWNXo5c1H1TC9QajZ6e2t7dTBl9316712Alrj7bs3QSNIVyd6vhbgu5xsveHFy59zxgguPB2QGtzs+TePEQ+3iZJCO4b1Mpy5O0ACicjG+TH1BMUbIRAqGPmRrIfOWCrfqKvQXzle2nQnpRJpLbL7v1Tc5Nr6WLjAi5iicgERk7ZoyeUDgWpMxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL0PR11MB3426.namprd11.prod.outlook.com (2603:10b6:208:32::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 19:40:57 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:40:56 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 25/25] ice: remove PF pointer
 from ice_check_vf_init
Thread-Index: AQHYKExkA182E1Q3sEy+jzIdemN0qqysii8g
Date: Wed, 2 Mar 2022 19:40:55 +0000
Message-ID: <SJ0PR11MB56298202A99227B1133B1457AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-26-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-26-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 7bb624a2-4cfe-4af7-7f31-08d9fc8491c7
x-ms-traffictypediagnostic: BL0PR11MB3426:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3426960A04358E20E3CA04B7AB039@BL0PR11MB3426.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aEmpoYB4imc0zZDNLGkxguT+KZhP4c4f9wbDmOQnr6V5ewFd3LVfGc0ow6se8zYrBTCMP9jQ/n5z/H51qH/joKrPlfp5CaKSZuaKNUcS2stJPSFTPnSjDTN6WOb/UB3qmUTeUJp6dg3igo0YIrneyQ7RNJp8qySPQC+iNdpNXjBMEry9jktDevgA/ZKgpn20fjtS47PLmc6+cH38cIvDp6CQtLcnUoi/7jU+c/jdnqQ4NiWytgpO6CFnr2gMDAhvaue1D14q0I3ZrmNCnGfxPR9vM3WfgwZd8Yw1AxpQqTCT7OtaCJymOT4i029X/esRoWaEOgYVk9I1UwFeB1sY4o0mxQ8oewLGTe9qbF95IP4/i8RGhQui/TBa4jZ8R1jGypKZD0Jn3kjscuQmXUd7+njihbt67m97uuSCXkhOs748JPYUraHlRUuwSZyFbwRZwTA6TtNO8CiUKKiQGNqBzR3bXaI/U9VncUoPs1lFbiNwR5fW1mVducJOaO3OFEOHiBSfe74k3xfw+9ge93pegY9L5kf6e93S3/rxWIoRHYx9QpNvl3bCghNslRoyQX3W0w9hxZr9K7Op1ScB1vyDbEtT5mqP6oySI0ZBCltoK4UV1Cky9xKi3uarrI1MivhH+UUau5NUyPaLdH+TBKhDmMelk1NyW/2ChPOI4NVnGVxAPDgOdT4IB/ub4rLPXxvSGPF3APGFzNLjTrEJQwHMjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(53546011)(82960400001)(122000001)(38100700002)(6506007)(7696005)(71200400001)(2906002)(33656002)(186003)(26005)(5660300002)(76116006)(66946007)(66446008)(66556008)(52536014)(8676002)(55016003)(66476007)(64756008)(86362001)(508600001)(38070700005)(8936002)(83380400001)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oRThTk++1q5zvb4OLxZ2fMATfzzelwivTsaLBPaMV1tfSpgmQwJsuNn3ZYMX?=
 =?us-ascii?Q?bja+NpGkzdutQL30qDgQXUM/6Yme8gGkXJ9k2Z0C5QrwHU75CIBtA1t+b70H?=
 =?us-ascii?Q?uEp5aWLPEoMQvQo+BitM9Vk2xaJAAHunKROAXYhWeDfWZ/rnC7gUOKkaBL3M?=
 =?us-ascii?Q?pmDTU8rEGt28iduUEtkBR6tiZoOvWDZUtx26syDDNrPpaeaFnR/oD0+pVpco?=
 =?us-ascii?Q?/gtOvgKlIpsP9JjpddYIhkBRK46eGjz5bxFj2pBRyR/i4+Q1I0PrlihsZqc6?=
 =?us-ascii?Q?zfKNtdlc8NlXtWjCcLDixjhGMDupg/iCVEN4uyMvQH3fDjBQcY0jcEkWhFQi?=
 =?us-ascii?Q?55r5SoW6okDZeBSzl6RPOiB+Otnmt2Ud2KhSmLmuhwjk6vezMt8Gew8ueQu8?=
 =?us-ascii?Q?v8GaKrm1JIQBXH3xn+cpp8HBLsVo9q1p0lq+NuWuGa+bxJB2bmUf3xWLjTM9?=
 =?us-ascii?Q?7sbVYA727AcCfhgqtuutqrSLs3cseIjdAFB/78KsZM6X5gbBS92ogdc/kOo6?=
 =?us-ascii?Q?p0HN0bG+hER+0Ky6pM5HneRD/xpGCQHslcuk9y+IH8ORrRpQ0HqkTpUFvd7E?=
 =?us-ascii?Q?oTDk17lAurgSePdqXIe6cZ6FjYYu6NqHN0pdvAqyaZ5qMAJ3qVU8KUADfPp7?=
 =?us-ascii?Q?TwtZzer6sqNsudBdC281BteDYvCOtTaqw3Acp2qocj5ZmoMBYuEOM00vAsIF?=
 =?us-ascii?Q?w9capCGCk8gGKPfUbV34jH+YZegsBbPQsVRWqWusZ52A5XBkHi33/gYM7ctC?=
 =?us-ascii?Q?tc0FYUd6VeI8/47TmPrOh0z8WEUKulm+sf4aeOvWrd7gLtqZSTeJFD9SEFad?=
 =?us-ascii?Q?vC5HrJy7lsESexPd/oKdeYnl9Owvtt+TUdBqyLXDeTogASIUUSvoD2Np+u8Y?=
 =?us-ascii?Q?dKLTvoo4dP/Zrex/AXEDUeK9sC9S18PgQcmJ1BDqjlif568LF5Rc7+COm1Sm?=
 =?us-ascii?Q?w56VzTE5Dy5yE6VeSNNwO83gbdnmG+lq5lPGK0ZNEWWcDrN1vyj0z2BZuas1?=
 =?us-ascii?Q?31hxDF8/DMlRy9uecBbVUGzMGmpLSSEChA7z18/pEFaSxuu80Q/VaGMmzEjT?=
 =?us-ascii?Q?3FP+sQjpIjrUeUVaSYnwkinVcHrBgXrZlycfhkLPWQFGRC2Zd5YP9jl0zvz7?=
 =?us-ascii?Q?XXM/XRy8bINedNS/+uh+zz9fWgkyUJbFVowoef/LfV8vwpIm6VL9QN5EN6Nl?=
 =?us-ascii?Q?g0UyCs9fvedF0SvG0zESjQLiOB4/PsuLc15hDaNfFmCokqV//EcncKF00D5l?=
 =?us-ascii?Q?AWbCiMYwGbBZ2u331Td8WFA4GBEgjKfb+q4Cuzhi5Jr1yhzD7x5EyTNV3rX2?=
 =?us-ascii?Q?HkkyyIpGcciNbHoUMx5PNNQyzR/e0SJFKSNf+DnXL5UTiCV++uiWD65cw0sV?=
 =?us-ascii?Q?ZiG/q22Flc8b5ouyo10XAGTKu9/fs6b3S0TiaKcgXAscDYyGFRA9exveLENq?=
 =?us-ascii?Q?01WCWC62vnBCWOgSks31yqIguQPIRc/8ffgErkz3Qip5NiYzLmhTjOgQk+mW?=
 =?us-ascii?Q?isbWgfWglGtDx+YKnm9q9G5c6wD+XHZKpk0WgClg6bPfWJGfH0p7TZFUgTC0?=
 =?us-ascii?Q?odFeTaEimcP5Vjs4B5Nn5RytFD7d2tCdV6VnBPj4dgH+crgSAw5b5lhELyMV?=
 =?us-ascii?Q?V/ksx4MLhWw98no8HMxXNfgvTXunJGwAM1zNWo8VXrdmCf0K+0tQX8MwcqFP?=
 =?us-ascii?Q?klVhaw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb624a2-4cfe-4af7-7f31-08d9fc8491c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:40:56.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gS74wMm4ejhGMG+8POTVooTAj02SItR2IuOdyrCcuflDIqIu7Qja06seWIkIT3CWd/CWQS3NxaF6HqKklrfsc937AZH94FXMJ0W4qrExGvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 25/25] ice: remove PF pointer
 from ice_check_vf_init
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
> Subject: [Intel-wired-lan] [net-next PATCH 25/25] ice: remove PF pointer
> from ice_check_vf_init
> 
> The ice_check_vf_init function takes both a PF and a VF pointer. Every caller
> looks up the PF pointer from the VF structure. Some callers only use of the
> PF pointer is call this function. Move the lookup inside ice_check_vf_init and
> drop the unnecessary argument.
> 
> Cleanup the callers to drop the now unnecessary local variables. In particular,
> replace the local PF pointer with a HW structure pointer in
> ice_vc_get_vf_res_msg which simplifies a few accesses to the HW structure
> in that function.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c      | 16 +++++++---------
>  .../net/ethernet/intel/ice/ice_vf_lib_private.h  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c    | 12 ++++++------
>  3 files changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index c584f5123ba7..6578059d9479 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -174,15 +174,12 @@ static void ice_wait_on_vf_reset(struct ice_vf *vf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
