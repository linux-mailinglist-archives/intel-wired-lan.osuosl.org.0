Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A854C4A7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:21:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79DBD40183;
	Fri, 25 Feb 2022 16:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6uQpiSRSLOP; Fri, 25 Feb 2022 16:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E067F40A81;
	Fri, 25 Feb 2022 16:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4A81BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7792C40183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MyhIe6pvTGOE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8264A4012A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806080; x=1677342080;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jS20qZvsAlKKWBf2wcRPzHWttlzonMuDi/SNksLv+rk=;
 b=irl2jInGowqk0OKCRchq4aLC+w30HSHtv98VaLFzAwcy9al2ZFkA8Hlx
 7gDZbrsOTjjFkzqwLa0HcXnR7CqlQywraETsGMgjHN1AHLPxIy+bpQSSq
 vQ4obafa+5vL8K9kvYr28wI8tfrNrQfnFzyMSgXSqGOEE8QBvk7JmnuWb
 R6m9oax2x34F/BphAaId/tYITFzyQ28uBKex+D2Ay5EfB5f/u4loE2i/S
 Yv8ytE/Yb3UZSbZrTlBZKTAprWGBQYNqeYOuE3rkdvTQo3CHX/eesDAcj
 j41sPTxRJW9LeiCznrBMjn1Qpdm2exdse+a/Df4FU1q/nya1d7DxEDUE2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315742032"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="315742032"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:21:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="607804598"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 25 Feb 2022 08:21:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:21:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:21:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:21:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR0ybX/g+vSutwtvCa3D1D9UKqKVtUMimva0W0f3PQdDTm2AkzV7ZbtvVt5LZIzxQZ+04fW/dLxC+lgk17yooWHplPZAmvjJ0Ynne2uuxI9d58zvXlTzVpciqYTtIiDMg5W1sEUk277HZvP/VTqbmmb2cfhdr8SWtHwo5zIyMDcSaE4t031fmqS4FtADl8090fuMSE6Z8l1ErVKiH6O/jlk1yrDWc+3a9CQc0BytkRWqj9n8jwPwXHtUjPQB/zOga2SFuigJA7YQFuq90PMCzdgi1nE4eQgd9/gedc6SSwi1ndJqe/77Pari8zxsf2ATLbDR1HKI2NmyBUsVBVQOLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtXK37w5Ys1SyAU1zLAcF5Pp2/dbC1mrqsJqj1RkFFs=;
 b=frjFVJdtbqTgGm1YRvYXgRrFbDx4xg+xEZCfvsIu1o3GQ4myvq2vlGf1EteocyIF6JC8k2HW16P+xC5MoagqRepezP658JXZNLgArtPLcvquT01o/nMiHeibhW6X8sGgBcf5Kr9Y0FAp7+FVYeDjhiFx7u5gQNj0/uH4AvML0bcWDOSC7IZwmtcTRHozaqQIPF8Y096aZH5gGGanTJPYdI7X3bAbhS4r/tup7y7Sqy2l6yQ2ul+7EMnYh77HTUzk8CAFTXrPM9SsGg0Tttwq1aO6WrUxxo7nbKc4QMDV0VaOJHJdAfRnoeRH4743OArQJPFvdOBOnMdXXAvOSjBstw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN7PR11MB2818.namprd11.prod.outlook.com (2603:10b6:406:ad::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Fri, 25 Feb
 2022 16:21:11 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:21:11 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 03/11] ice: pass num_vfs to
 ice_set_per_vf_res()
Thread-Index: AQHYI32bJEVaatwA1UqjVx9wzYeQuKykgFRw
Date: Fri, 25 Feb 2022 16:21:11 +0000
Message-ID: <SJ0PR11MB5629CB1AB767EC3524887DE2AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-4-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-4-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: eeaa9070-d021-4a8a-1766-08d9f87ad645
x-ms-traffictypediagnostic: BN7PR11MB2818:EE_
x-microsoft-antispam-prvs: <BN7PR11MB28183E63E0DEC15C3F48CF73AB3E9@BN7PR11MB2818.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FzeRaSbSh3/Nskb1ju6wo5NlAUq5jCY5PbJSTb7b51a/NPaZDvEzxQlF7zAfeymj0LKZau0jXQovwLEWFKx7hghqUlW26wh4URnAWyL1hk2mxm3heCyzv0LzNPvrF2vRNNFoEagVhd2NXAtFGcZIfT1OpH/k5lZgFhUg9OHvkf3ogYZpLc5VwV/toVPtbU3HvkLizS4EXPYyybtKfreEB3keWD4pWalmJ0HgIvIF+KJNUVaiuxXofzzjTP5cm2HsIhV8QCwMMn9iHEV3R9N/2ADSKxWXEUcNMFMmpVHjqemqPFw7zVZo0/OH+M1g1gEUCzciTF2k/IfQKgAExB8j3gvVCTHiScMsv38595eB8X42+eA6qj6Q1vpfn98R74IRmWAa2qxn3CZPC7b7IMh6UbglbA/CPW7D0UIQd5xX42Q9J5oXvIAQ1bB6ZOn1fwNBsR4e356ixoPmZqso+huZYtTpCNr1ixCTtNS2P6EDhgHoQ2BS60LIJ61i6c8vMkQ2Juua8sJrpsjHl4PWq0S/UGPJiJr0o32mkPPlGR47O4h8D6+2eznKqgZjgup1koFiZvk/o/eo62QcvCSgB7ZHvWhlms0wDQipqgWVqO06ZlWL8zrmkaB40DyL8cIMVTz0VV2aFf64fz/9Bo1Lv4eGur1YBDz8uzSXJWz9rP1UHeh7o8qSGeF+DfUQMiexh+NC4V8HcN/4wfPGvyMG58981A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(6506007)(82960400001)(122000001)(38100700002)(52536014)(2906002)(8676002)(316002)(38070700005)(53546011)(66556008)(66446008)(66476007)(508600001)(64756008)(8936002)(26005)(33656002)(76116006)(186003)(66946007)(71200400001)(5660300002)(55016003)(9686003)(86362001)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EHMFNG3u8J6F+Y3NIACuknt3ZsKHdVjiynIzTKKDXWtSm1IihulxmqFcrEzF?=
 =?us-ascii?Q?obGsJtaFNtcAsoUTH7NLijJ7BBhON1l8MkpWad/lSEeJPlQWgZkg1VXBPbcx?=
 =?us-ascii?Q?57VbzRU7Xwv1NxSDWnHfsRuw2r1TfGD1PWlRN+pRmd8wi/1x4VXjC0uRtzOD?=
 =?us-ascii?Q?AJWPh0tu+4wsmYdEbZl0aXB+wkZ0AVU40YcmCvqs78CdZvYNfUpoDEEoTvx5?=
 =?us-ascii?Q?CPqzh1U7Xqh21neWtnqUp49GX8yYyKstcMBCYryWGizhHBOJ+4uat4bS+kCB?=
 =?us-ascii?Q?2XDuKprlttBDEgbasngA9Ub28at7KWXuem3mwyJmdRGmko7sUDQuL+LWkGNI?=
 =?us-ascii?Q?lBJDkIkjOMUF9zwJtvzn/VOugG/dFNlT5LheYh/y2SIIcDcN1IUbGFthQdDJ?=
 =?us-ascii?Q?qqAYVmbqxPtaM0Gs/jJsTylDYD7rjlNe58YplisiNZK6hcZn2sNGDHskJ4FY?=
 =?us-ascii?Q?BYGosNf9Vx5xsNg+4ETT9x/U8aXG+lSIhjLHmKMbdGrSiIcH7CxbgZAXRfeo?=
 =?us-ascii?Q?+2RV3edqV5sZK2gibIR/NX89Y2NMSKvkCWaHFeTkaBMZyFlq30SnK60bS1os?=
 =?us-ascii?Q?tNw+6/rn3ajUZYQR6v1kquFacakF0nW2mifq9rSFFX40pljg03NKo8r0Z0BO?=
 =?us-ascii?Q?igDFm61rL/WIRc38XQFSkgCrR8jzoaV1DdcLufVG5nifuBxt+7YRgP4gl2sR?=
 =?us-ascii?Q?iMR7xn77sTxl17zUAwEjtSpEHjnTCu1G+AXVmVIHy9yGElKGhok3f547Qrhe?=
 =?us-ascii?Q?tnw2PYMLWMeGEG3ddNO7k/uFo103BGvFPoTdJTr7DWzKoW01KDfs3umo3+i+?=
 =?us-ascii?Q?byHga1mOke93oUaghnDCCjfeXj705j5dUvWXD/HB7PhJfL6LX1BzKA7Vs3BC?=
 =?us-ascii?Q?dO1U2JYkWBeaaTA8OYH21WhWUM8K7K9AvtAhiuDuHzTrvs4uc28xzU2o9JX4?=
 =?us-ascii?Q?fwFCwEHv0tA7SQftHpzpSLLortTRuuQOLaI5H7RRWvoNiRnCKMb9LEUG56uo?=
 =?us-ascii?Q?MhzLyrkGRjdqovcM6qow70VdHuWilKVSuWs2KSfwVJw1HwARwJRMtufBk/4S?=
 =?us-ascii?Q?0ldHyvbIn7sgOcOGQC7NnXPW+LI6kAe1+VNWTbgNiYJwvBvuHoDoTIJjCmB9?=
 =?us-ascii?Q?BtU+dZfm6/LpCtNQwh5rHZAXOFYdjv879A3L8tXtf3jePo8yrfyoQATgJv1k?=
 =?us-ascii?Q?OhCrpR6uz4hAVwRmPZ7361jo4dBzz5p2xC3vnl6GZUtcrClglvzK+AtwfoVn?=
 =?us-ascii?Q?GxeKoms76Y/kAA9dEIqB+RVF9MUIxuPcHVAkcV8GATo3Y5A7AtfdIv8nQRJh?=
 =?us-ascii?Q?WCNuT2ZqbmTDhiARH4JbpguQTWC03fI6dEf/F55/9hE5ULDL/7LbpHVTr8Z9?=
 =?us-ascii?Q?v07L4a3Yi1FpavmLfDJGhyzlbJrRyY5cCYEH/W3dDEwxfWAm6RwxqAERc5O9?=
 =?us-ascii?Q?h4VJ6tg4BeaA0PlzMF3wmNiQy3+Kt5SlNH8iwzYwr9BBR0LeRwZRrz2JFwMH?=
 =?us-ascii?Q?mkO6hi53qeJKyDhidSD0FcophbCcacT4sAZ3pZ6Ar5a4bKfyBwSMrHEuZAGK?=
 =?us-ascii?Q?PekHsbcCP7aBPioblNKHgkoxpXQk/EwZF5WkyANP8v4mtKTP3xWuEvODe+TP?=
 =?us-ascii?Q?lTIHVUv49nyInxUyRa6qXadgsepjpkJfPivBrz9saHqKhCYba2Ch+lu2iiGD?=
 =?us-ascii?Q?wl0SOg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeaa9070-d021-4a8a-1766-08d9f87ad645
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:21:11.3405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KkIVjJWIfBLafxvwsIZZkkqUmumBqeMYUS8ucRrRoZKchXxH07jNSPxPNyRwk+d01YhHQeg4Oy6uA02RknfGCUG39OHcU3RzkFWTmqAy3O8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 03/11] ice: pass num_vfs
 to ice_set_per_vf_res()
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
> Subject: [Intel-wired-lan] [net-next PATCH v2 03/11] ice: pass num_vfs to
> ice_set_per_vf_res()
> 
> We are planning to replace the simple array structure tracking VFs with a
> hash table. This change will also remove the "num_alloc_vfs" variable.
> 
> Instead, new access functions to use the hash table as the source of truth will
> be introduced. These will generally be equivalent to existing checks, except
> during VF initialization.
> 
> Specifically, ice_set_per_vf_res() cannot use the hash table as it will be
> operating prior to VF structures being inserted into the hash table.
> 
> Instead of using pf->num_alloc_vfs, simply pass the num_vfs value in from
> the caller.
> 
> Note that a sub-function of ice_set_per_vf_res, ice_determine_res, also
> implicitly depends on pf->num_alloc_vfs. Replace ice_determine_res with a
> simpler inline implementation based on rounddown_pow_of_two. Note that
> we must explicitly check that the argument is non-zero since it does not play
> well with zero as a value.
> 
> Instead of using the function and while loop, simply calculate the number of
> queues we have available by dividing by num_vfs. Check if the desired
> queues are available. If not, round down to the nearest power of
> 2 that fits within our available queues.
> 
> This matches the behavior of ice_determine_res but is easier to follow as
> simple in-line logic. Remove ice_determine_res entirely.
> 
> With this change, we no longer depend on the pf->num_alloc_vfs during the
> initialization phase of VFs. This will allow us to safely remove it in a future
> planned refactor of the VF data structures.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 87 ++++++-------------
>  1 file changed, 26 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index d86d47b8fee2..44037d569755 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -1069,45 +1069,6 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
