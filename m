Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9068650F074
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 07:50:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1815182B8C;
	Tue, 26 Apr 2022 05:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvxcY0R2g8ht; Tue, 26 Apr 2022 05:50:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0579C823F6;
	Tue, 26 Apr 2022 05:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9505F1BF577
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EDE440951
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaGSDt7_ZeWM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 05:50:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4904A408D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650952231; x=1682488231;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Pabkt450PaaoUXJ81hsE45NnHo5m1wm/TGMlPQEFEpo=;
 b=duK/dTh31qVOJVF0NwoCccULhUVxMtjaJ1Biy4IDv5ResA4my7L5pA0I
 jq3ReAUr33FPGmWqyWxe4r4APChCy+i4BP3BqCTaOklZqbligKsOTQN/p
 noOjDkdARU29vqgGVs7i0aPgtM0KmJiocTTR4OWKbI1e6OluoG8oCzY/o
 GRpoAurrQYSzwaJNKbSbWrvO97OwjmpyP2Kjkwmlv/JGMOIyoRISlmZT7
 hCEqJ3xvQDdbKh3AYrVvOC6jIVxfnm0b1rG5iUkn40SW2BeNQ2koF5tZE
 nYPB2YcgfV4Fz8F1SZev0anaLuH/jvrHwn/2Uby6ODpJJWsGKV3Z7OX4p w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="264308272"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="264308272"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 22:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="730085446"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 25 Apr 2022 22:50:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 22:50:30 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 22:50:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 22:50:29 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 22:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hYdZBCTXvztiFe6ieNplgV21Bbe9IeqVeNFKUAKL1opRXYxa/r+qyg95RLPiZG0obAWjJ+oBZTz6feUHEaRXt5RtbpcdRlR7CfbJ81QGPdmsAYl1XcFjGtjhpNcjRoEuhCIznEgCUcipYoStpSIGVXApbp5S4geVHJgHJ0f5glCyjDrMvIhQIk02hncil4o3E8RfvJgE1TVQBZDkEN0c8G3XJvv5SiBy0OIxT+msYheb11BYQlRMxzCP92K+lirgoYfFwduYibpTqlUXhAljf8nqCsOxUwAaaghYv57wJ0gtmEyKM70HBPsca3AsIswwEo47kCOkC26dYWYgaV9/jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sD4JukOGp5Wswqp+3HW70GrPJHGdcXyf0LhC5oMRC3w=;
 b=iCJsT21oxGs0P5UxFBIRb0ASzHS5awyrNc7zHiVBcetpyGijQfXBrbAPkZyO+/qu7VD/vMrACfSNcIypXALz4Sgwxhf7KC7C3eDjGmBd0Zm56NUTTkSSEVhymsr+YHO0a/5UId49wMmg2QOWbZJo+TTKKCPna3RR24mWsCwqVkNtE3kVpxuPo/ZzERyupNe3Lyan1biStW1YJd7FoVtEN4twvAjsYqeIJA8CJIBCJOtLLFaLIC57cROnsqAcBHX8GizUgA9CD8zs9fwewK69Fwo3pS4TfdBJXam97K7GwlbNgdl3SwGnMtdxkQI1oUJ6FieqpSbUhBGymu48t2fFRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5672.namprd11.prod.outlook.com (2603:10b6:8:26::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.15; Tue, 26 Apr 2022 05:50:22 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8%7]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 05:50:22 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
Thread-Index: AQHYTfwPvHZskrUvZUu8upvKqtHClq0Bxvlw
Date: Tue, 26 Apr 2022 05:50:22 +0000
Message-ID: <DM8PR11MB5621223FB2D965FFCFB0F9B7ABFB9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-3-jacob.e.keller@intel.com>
In-Reply-To: <20220411232907.1022602-3-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 767b4a21-9ebb-426b-0c65-08da2748a781
x-ms-traffictypediagnostic: DM8PR11MB5672:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5672AA927CE6254EADEE74E3ABFB9@DM8PR11MB5672.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a4Azaid7YRewc3VHpheVQn9YT7HWsmsItHAl6mAqO0DeqT5pNNsspk3WQcA7Pdjm5CWiN+Mm7lX+h7D95r4TJUJXW2f5WBMv0MuuhZLUHhvZUWa+XLElKKIsG6Q/mLk4XmQl8Wt8zaWSWepQ3l4Ik1w74lo3m3OkfoZJcqlwgY20Mq8oSFirmqZd1qeJTDzJTvEdfFRhoVQ9i4vrvvKXtJjTZT3SzXH1Y1Gxdihr11FBs+4C+NcADQ8V2T5dLomPaYZ8f0+o0T3/EO+i9G/JgDHEWQY5nEm5ojej7GXsMemoRwq1NKgxE3c6AwhCvQmoCJpQN04s4HTsfBQGK4mVg0XTKkxMJyPnBTS/fi9Gn/xa96+F4TR/bqwNbljrLmNhRX5NqywRnefL3pe3neAwuCbCLh53m4t1ggpcViku73Tcr0KwMMU+zysX0fLZAM1zTjgXv9XvtrFZd0OmH3V8LhxKt6Fv/t5T1CuNWx66z68oCl6D9IRtT4FlFb+yUexL0mc1GuFA9/y0Yolwmg2AlwKp51JAOJcIUjOXWUfAp78om5MWCzE5mfz9AaE6U06OJgXzO4lJPrSSYZa1mdcKyt0ZxnMcsACxT9tUbqKqMonEzB2X7w5bRaO3hpCXgFih8LVRjgGS0ryC2C5zG0TmrnofHwr8bhCGc0QZ2gJ+hAaQWWgYG7HtJhvArzUdne2c5tvAmhFKrZqFGDIgezpv4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(53546011)(6506007)(52536014)(33656002)(9686003)(2906002)(7696005)(26005)(122000001)(82960400001)(38070700005)(38100700002)(8936002)(508600001)(55016003)(186003)(5660300002)(83380400001)(64756008)(66476007)(8676002)(66556008)(66446008)(110136005)(71200400001)(316002)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l2VEFb2rYyFjlr1UUkY5jKV3YJ3nJ3fsm1KAZxkKwys3CcugkmMetSwkj7z1?=
 =?us-ascii?Q?VmFiViGz3u4qQ11UdONXrTrjnivfrHGGIl7+K4pyuSYmzgX0THj1AyE+0QPC?=
 =?us-ascii?Q?L+4u0nChrVf40rW81Ireuz0W8vK6IpCn2rWadN6u4m28KFQR3x2ubqMssOYJ?=
 =?us-ascii?Q?se74CPPtDuZAYM+7DFd1+WX+IsqJEoPtQVGqf7lvMoUe6FrkRkOXG3e+S2VI?=
 =?us-ascii?Q?RX876Mj6w8h9B7c7vHHaeloQhE0vIjLXDDhTp+UaHdDAOSCv9DTYKQXkHItp?=
 =?us-ascii?Q?xW0xc8TmOh9cofDRL5XMkUwzwRYqvMYDAcmwA4zYCZxuXaYA5qk9dRh/U0ou?=
 =?us-ascii?Q?YuyO26+o53hpUSCA6va3a6Hyt52i7aCGd8ai464uASJ08sVKUEf2S9AWaeeC?=
 =?us-ascii?Q?7iqXC5mq6SBlPFtRmEBXiPnQWn5eXNjSpbHJlEckNhA1xiZSy3Eh76yK3lgq?=
 =?us-ascii?Q?43J32wAev2KDXQvrRljY3GOgKYtrie38Q+1aP9gdqOEBH5j+FJQ+tQoB1hUs?=
 =?us-ascii?Q?S6bVXcsdcP7A0mMS5KsxywareGqj8nF7WxdMTHDnfw6AIJcWbICSlec78Jxu?=
 =?us-ascii?Q?letxF6GVdwU3VTnExUzY58lx41FoZm3N/3dQKk/NLAaOkpc8rVc3x8JZAHN8?=
 =?us-ascii?Q?V3BjgWJV/93w5xKr25CGN9tl00/jojvjPdhzpEt+osW3rNMcSim78FlFewaN?=
 =?us-ascii?Q?7SBUfYff8gdIOOwoaVMKjTKXnYqgnnTE1ytP0TQTBcmADwAOLiG4kMvGv659?=
 =?us-ascii?Q?8qgz/967I3szfP3K5GwbsuaxLjw8xcFYRfIPbAwWs7VYXejhvdWbosrq8wIi?=
 =?us-ascii?Q?tV0aA6MwQExztm+RxHIEhpmGbdwhBHAo3+4bHGkrX6vhGKKq0rtb9VKsjuA8?=
 =?us-ascii?Q?vckN0NJzD2NAKcQOdqMmO4sMdaqRtpDGh43zpVwB2slkDcUp578UPgzrmWHU?=
 =?us-ascii?Q?EfFkw/vyR3nqhPvInETwNvHURCR0G5r4IcceDbeBNY/Coesi3bwZjtSL3HLx?=
 =?us-ascii?Q?LGdo7dXQ5V+8vuNzGscNP2c8YoebZFZMEhH/KZzGRunQyFO07+Zx03Z7GThW?=
 =?us-ascii?Q?ss5NEY4nWGxJRyfsaFw1OtmakN9dUFM2JRhdP/kr8prcQ94JxBFOxFOyFRo0?=
 =?us-ascii?Q?NFzOsAcjm+8TNeAhnrsfFwqUmOdEdYlkoTIUGwJVmNFXX6QTdzUP7cs1qJ57?=
 =?us-ascii?Q?wFNsr9AQm3sND+myVxThYGffBnBiekKO8IHJsr8+b9DFStfHbWi9rItWtwRQ?=
 =?us-ascii?Q?0G766wKe6b16xnBdjLGYb6LaF6Dq0b6RqekCFbFNeiQUupNuqWgietqzwyGQ?=
 =?us-ascii?Q?+vaN2EE1Sx2Ub8e0rbNWRkeHb8ikXGJnB1wKUe+2wy4KNyxHtq+bhSY1NbLP?=
 =?us-ascii?Q?viFdCCHIx02nOTf5rLSowi/aKwPZfvoxN4iei2UCiSzf1DWAAmgtnRvAXkP7?=
 =?us-ascii?Q?/GxstBQVyFVonY689J1eVkaUob/HpZWSh8Fw5zpTEjzLpGd+SN/dnYi0u3pk?=
 =?us-ascii?Q?RasDLLuue7AAygYsstkCMDGwKkPOP7vW1zyXJrkR7EobakrvxYxYu0VZDl/v?=
 =?us-ascii?Q?V0K+amHjXJRRKI+RAZm1Kv3ZMABqS3rjaKgrwqRkNK5+RFC+g5E7Nl4V1bUp?=
 =?us-ascii?Q?j1esKvYSgN6Ar2UOFg2EzuLhHy3MNjZC/u0kbIfWJ6u+0cUMPoRjLaarWVQF?=
 =?us-ascii?Q?D6/rb6aiTEhpNqCjqwF9A6q4h9uRb8nacTfb6Dg5g4xdquk5PHomWqDcTNmb?=
 =?us-ascii?Q?sihb2EQ1FjhSOazPhJFqH3qrp93rqk0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 767b4a21-9ebb-426b-0c65-08da2748a781
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2022 05:50:22.7410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IUb1z7pIr0sFO98kFIIsLxxw5Qh8h3f4T0E267B8MmeTt0W/vN1dOdq12LQFKHaFt2jbdJzURgHej8uxGGMzdFFKVmXRMcm7JqX8aStJ0Ww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
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
> Sent: Tuesday, April 12, 2022 1:29 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
> pointer values
> 
> The ice_get_vf_vsi function can return NULL in some cases, such as if
> handling messages during a reset where the VSI is being removed and
> recreated.
> 
> Several places throughout the driver do not bother to check whether this VSI
> pointer is valid. Static analysis tools maybe report issues because they detect
> paths where a potentially NULL pointer could be dereferenced.
> 
> Fix this by checking the return value of ice_get_vf_vsi everywhere.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  5 ++-
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  7 +++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 32 +++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 28 +++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  5 +++
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  7 +++-
>  6 files changed, 77 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c
> b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index a230edb38466..4a9de59121d8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -753,9 +753,12 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> 
>  	pf = vf->pf;
>  	dev = ice_pf_to_dev(pf);
> -	vsi = ice_get_vf_vsi(vf);
>  	devlink_port = &vf->devlink_port;
> 
> +	vsi = ice_get_vf_vsi(vf);
> +	if (!vsi)
> +		return -EINVAL;
> +
>  	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
>  	attrs.pci_vf.pf = pf->hw.bus.func;
>  	attrs.pci_vf.vf = vf->vf_id;
> diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c
> b/drivers/net/ethernet/intel/ice/ice_repr.c
> index 848f2adea563..a91b81c3088b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_repr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> @@ -293,8 +293,13 @@ static int ice_repr_add(struct ice_vf *vf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
