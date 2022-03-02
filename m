Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821734CAF21
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:55:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDCEA404B0;
	Wed,  2 Mar 2022 19:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSHSMmWOKd8j; Wed,  2 Mar 2022 19:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 958AF4048D;
	Wed,  2 Mar 2022 19:55:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C54F61BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2BDF60D58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGTyPLXy0sWv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06DD560BF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250944; x=1677786944;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=z7TkYYSuX62aK9/I5FmABTk/gcmcBg5HnOfcfmoEusE=;
 b=Pqcey7EMTrWMOzkUX6N0F84mU7xVXcrl8vMhnjuuhaNv9bG+K7Gb3ZIZ
 D1TuaRmKPWIwbTaVINCHLfM3bH7awnOqRq0IFD9cXZ1DZytrXBr0AbN3n
 dhC6juFUoEQCrqaFXYsPDyeB/2OQGk0dpHjxWABhiBpQ+nQ+LhGK3iSef
 GAk5fm1WDIyz0TPIlYvmArYS++zkygBOcfb4AYtEhkBN4OBAltS1JWtg9
 DLlezhcVFmStk1aI/5J7XKoJWv8vDDqYHl5QxHltbCJh3sI8xVnejLb8l
 8u5+nh4SgFxvVlSgjmFyUWIf9X/AV7P4jncJlRLRhSpvrfN+TqbK/xi0S Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="278168374"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="278168374"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:55:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551413115"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 11:55:43 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:55:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:55:42 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 11:55:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cys333IoenQ1Hi9YdWkqlRFTKHmsZLuXz4iX9Wkq7urKMBl++e8bL/hr0tRpclOHlEO2gDkZcZTx9hevI8UwbL0iG8DoXZBz1SmbLRT/szRo701txZeDvcRgNiKFjdLGaDGQ80cbiOyY8YNrGWNXauBe2pooqw9FSghVoGjRqFolyy6kSVrnvl/99uL2pDrWgeNTTD5yUGX6JZUh2GRFrg3nZ4f1wOqRhRcO0juyLu0SV+lXs1jWjd8g1yyeVkcUKCL+MqSa5TRYUufg03YVuQqxC/axbdyRPnB5AWLhCbotzdBHWjjM2RmUZXzEFYaiyFWVUi26r93xJr87M3E8IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f2rjEn6Te7DG/3TYhS+P7HcARf/EKOOETRYCWG2MXmU=;
 b=gu5fLCn7mJa4FeFLXj7woqe+BdQrtKFeKytHPBzvho+7GSc6nlQBMnW4CMKw69t/dy7faCaDRUe9k5atPwLBz0CnC3XEsmpQWU9WVOVmowf1tgnvnmtVqyM+n7GPSUSzMo+TFWgRUetv4G9M4BqFW5RHAKEuIIuIjZBkyUUA6pxdm00VmzqVH69io3DPyNoxyU10F0LycdeGIpIzaOOS2q8cUK1KMCbHndQ8FdbaBhCRXdBKjQm9vy766jDUP10F0W1dgk6jKIIVjyPDaXGMGZy9WaXfTaZidGFioQwY+tFPGbug9X6h94U77QFDGqSgmJJ//HIkm67Hz0riYAgepg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM6PR11MB4561.namprd11.prod.outlook.com (2603:10b6:5:2ae::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:55:40 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:55:40 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 21/25] ice: introduce
 ICE_VF_RESET_NOTIFY flag
Thread-Index: AQHYKExXG/uy3aE30kaRnp+l5TdEY6ysjk1Q
Date: Wed, 2 Mar 2022 19:55:40 +0000
Message-ID: <SJ0PR11MB5629BD6F16225AF3766AA517AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-22-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-22-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 9b96c95c-4887-4bf3-c479-08d9fc86a0d3
x-ms-traffictypediagnostic: DM6PR11MB4561:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4561E762AF7F958B63C403CDAB039@DM6PR11MB4561.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CoX3c/KiRigSEeUgN1zdcAobbGhasiEzFgDWOePYHHMon8lpdG0o0pgB92zw8OvAxUwX1XT4wyqfNJJJtWXO0igBNyoPgdXib4kdJya8ZlT7ObnG/Rcxy4n6tzT0H5Z+D9Bn4knxB+8okMcjIctoyDXhlpmM1bVCIkmli+qWqoTIZTf1R/sedR2j3nRdz8W9d5kY6yv9KqJ8LSgicK1r4VNcKYvyWZhnfKjgSa4FQbbmBXVBAb9R7gBfje9Z6OoRl+onMc8v1ruFix//CzYtLnPlC7obTyRAX6hJHFZH7NO4rhUlpGoqj+XRpnhzzMZZ8mV48nbf5viywfuuVYl3a5a00ICo6tTJIg5kBQ/zfs16c2DhC9XcAeUnthR+IaxM9Ce/mB+RnY4z8/VNTpEiLr8nxlrbBSzfNAfULeQxdknmEhpJ0X9U85Xvu48ktqfB3U20a8pprBR223f4KKxSQwtxZqcpmciMfXGntwgiUaeO8HFfgowN0BGlU8aB7TO4fy06+KOYv8rlTXl7IUEr/R+Srdwmc7zr7f2WMQaHsmkHn2YBQlzlG+zwwVRdAW2cnZ8/eD1APj/NTb2WXwvpCW0zzYs/uG/RfulX5PYYEN/ENfwQcmhxiMYXY5RHNhKJE3Aioaxlplns0SAE8zhF/KnH4XJGsKlVyhlYJWvmuRQ2aDOygLBeEDFCdw5wWmgeSHVn76ogWHALjVQSX9OPUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(110136005)(55016003)(52536014)(26005)(66556008)(5660300002)(38070700005)(86362001)(8936002)(316002)(71200400001)(66476007)(76116006)(8676002)(64756008)(66446008)(66946007)(82960400001)(6506007)(2906002)(7696005)(9686003)(53546011)(122000001)(38100700002)(33656002)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4woHvFd7VLErG8FY0bhJz8qFEDhoxPm8zjNHrXPh0brYMxNENHoda8Qwjzg1?=
 =?us-ascii?Q?WYIqSuucvmEVp+F2dxrJT4V+AU6TdQDM9EwL6P7Fzlgv3W3j9tGRt3g/IzB1?=
 =?us-ascii?Q?FF81b8rSTL5buaYABBzXWgYae12yDfRCaWfpUF3veTHpk9w/tUBdlxvC8zMw?=
 =?us-ascii?Q?lrnNKtwkqSdnrEKi+VgfD7p0yfOfaBNzjKHo/X7k70zchroNsbRdjVs5xKX4?=
 =?us-ascii?Q?KsuGrUy096Hmj0Tmevow/O4nMJh9MAMoHEYgXRSmlfXOibW72ghCADzZ/qCM?=
 =?us-ascii?Q?MPMnqkCRY36r0RLq24jf67irqVVBrxSDewITzsyGVOLNSETbnJ8U7Fn+eAjx?=
 =?us-ascii?Q?EG2FS8anlM07Wxuir71c3rImbbsf/SQ2ysikiT5kMjhLR6OJXro7Wezhh3Dy?=
 =?us-ascii?Q?HegbJ1Ie4MwesZWjfY9Wp32Vbs4U4yP0paf5GzATtWIGu+1GrZfFELJeXcYD?=
 =?us-ascii?Q?u4dQ/bFGhmhpz+zaj124xL9ioDP7sizOU9C1HQsnwP6u6GIxUMe8LJKn/vyg?=
 =?us-ascii?Q?DG3nuwVyP2vEzwqHTSQmyBs64lk1n9seOH8ys+AdORSe4u8jSChVouJnRLHx?=
 =?us-ascii?Q?0HBa4FeEwRXDIsOJnGFjNaRgzsPjyomq78EYf0kCTCZeaqiEPEjWVV5xy8BX?=
 =?us-ascii?Q?K8LJ2HbEgOOHUnt0AmlnmOICIRXeDRS5wJF83O7M42SQhxHrkxaFoHlOVNKw?=
 =?us-ascii?Q?+2FnOcJqBhwHyfTb7qG0TokQM1bv3XWVot17+Z96eCXRymMmP3z1bghF9T9X?=
 =?us-ascii?Q?4a8hDu6+l0NVrKtvVqvVyETXwfnGudlFRg7vK5K2j27Lyya6W0O/3br2HN1y?=
 =?us-ascii?Q?Pfw1gh/pM5OVUTuVnoMOzC0DRYjwG4H6hZQs4uOnAdazqqccMMTy/TP2FeyI?=
 =?us-ascii?Q?0fKhN+3AkzeSghEvKX6lbsCvKU5ULemchwEGUQ7UzTZtKSeetu2Gbh2JTzJL?=
 =?us-ascii?Q?mWstz1jSzcx12YxcZ/q8mXDz+aZEazgFu19KNf3WHxn0XtWQME6gJ9QdGhz1?=
 =?us-ascii?Q?d3BwoM1f0Xumg7aw6hIP5uD1kysyLZ9oO1D2gDGVDEY+RnUaOp2LPu6nfBBS?=
 =?us-ascii?Q?JCmTS2PhK7CJ4lTcbNt4Xy+Ab9DzaD/Z7Nqjd5kYIg+Oj9InvWB3hKbED9CW?=
 =?us-ascii?Q?0U5FZ7fdyyj6XlUQftFu12S3FNGJD9IyaHZj7itSLKGHm1CV/sxQqF3M0xHN?=
 =?us-ascii?Q?KppgJcGTlka1UAMqDKP5epCUR7MZwAPAJWDqQmTtkdsYPR12sHOTBCwZOTP4?=
 =?us-ascii?Q?XIZZp1SrQYFSA4f7A7anDko7MEBfns5EKItbJKxd0ejogrjXfme4HJU5c52B?=
 =?us-ascii?Q?sD2EtkOaXZLWI0/GXEUkRBHuDeWMkP8hjziDo50uUX16sY2NdpCEkDSdZpbL?=
 =?us-ascii?Q?pDQ37bbQPbEQBlY3rnIMW4x1J6CB9F+L0GUzLQvi5T9ll/Xw5HUdxlb0cXRW?=
 =?us-ascii?Q?PFMKGpcoGnbNV0WvVq0SoR6zJBIaq5KHsd0PruZ85lfESTbTGv0462LifP5l?=
 =?us-ascii?Q?ZMWSjXkpsuKGB74aSEF1XkTbDqw5EU4b64BxScRgl1Mh7sYpM6zN0alGQSHS?=
 =?us-ascii?Q?j8XmkEKXywjLa9jeL2Vp8o75CikiVoDZ7hPVLokQ5Kl9fxAIuz40e4oqio9b?=
 =?us-ascii?Q?jWyi/Kv/mZjPALqhTUULzORctvEmliB/ACdVpwiuK14aimRccdc67SquzN7y?=
 =?us-ascii?Q?5V8yQg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b96c95c-4887-4bf3-c479-08d9fc86a0d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:55:40.3061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vjoiBT7laIT5MKp8+d8SFV3QKcVPPwy1PZXwqECzKMJR7eavAH+qA4KFaL4gHemQb5+PuGN+saNMmlSq5AvKzEjp8Fe3DE+dEQSuJWkm/gU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4561
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 21/25] ice: introduce
 ICE_VF_RESET_NOTIFY flag
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
> Subject: [Intel-wired-lan] [net-next PATCH 21/25] ice: introduce
> ICE_VF_RESET_NOTIFY flag
> 
> In some cases of resetting a VF, the PF would like to first notify the VF that a
> reset is impending. This is currently done via ice_vc_notify_vf_reset. A
> wrapper to ice_reset_vf, ice_vf_reset_vf, is used to call this function first
> before calling ice_reset_vf.
> 
> In fact, every single call to ice_vc_notify_vf_reset occurs just prior to a call to
> ice_vc_reset_vf.
> 
> Now that ice_reset_vf has flags, replace this separate call with an
> ICE_VF_RESET_NOTIFY flag. This removes an unnecessary exported function
> of ice_vc_notify_vf_reset, and also makes there be a single function to reset
> VFs (ice_reset_vf).
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 44 +++------------------
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 28 +++++++++++++
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
>  3 files changed, 34 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index c234e4edc7f0..46d656d385c4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
