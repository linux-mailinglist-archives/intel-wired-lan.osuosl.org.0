Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C15F4CAEFE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:46:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54F6782611;
	Wed,  2 Mar 2022 19:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9GrfgdesocH; Wed,  2 Mar 2022 19:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5365A81865;
	Wed,  2 Mar 2022 19:46:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5A0D1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEEAB40492
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k6CoRhWU2axM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:46:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1D9D4048D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250360; x=1677786360;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BEKFyxSubqf3xoMOHPfGQThhWtIYTELYAWWo7s1jFaw=;
 b=fsMHOxasHjK3rSBKt5eGd/jy7ezKoj91plJ3kAWioQbiNdYZ6+18lJ6r
 m2lHyIOsABwpBJ1rqJgg1QVyO1DCFxWSCHR1kxkZdz6dsbrDjSya3n25X
 WXBk3tRQPTG9woBgE4ucFTn8EVZd45Z2wTs0KSXANElhmArHMjpub4OIL
 pNrj+F5fytehrl8gMQU6wOou2VgbtUQyULxPaZOkAwMNyoXv4MC1MhmVh
 cT+3aysaJSxvP3rgMsHCQzzBed3G2HW6q7Ntgj6ralDgQFbD6GHnGBvrQ
 6ftuILWlAQ5blBwhvr7aDtC7oOo+CzwtR5oRFhjxSY9JHz1wRJy6sffRt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253418736"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="253418736"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:45:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="686241182"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2022 11:45:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:45:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:45:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:45:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMUcWSapZiuHGSLXVS3I/g2vnhOk9mNz4Jj5N/vBGyKjW7XQj14+e13qlu5Or2zNQFVu3dRGmwRysEWHlvAc4LS7WvQHwqV6v8w8rfhBT9prztgFVIr8STMcAoLFjQfCa8XjXMRkS1BExoKMJGG6/xZgv0QvFYxdzb0EqphV+SDEa0i+NQjl5oMyIv8WXEmFDGScoLP8mS384TKVPVLDOSid0UO7QWd4nlliwhIIgeSLiuhffwNtotg0NirMoZDwWpzoIN19Q81Dld0g9zbFiS/lxX1bDhfAsKDbbWeSuEvct8Y+tBZH0KfbzcSAZ6kn+d+8vr4Gi+11A60I1fIynw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeAQAC9gLS9khl+suKtHfj08m/Rkm5V8DKaznxxBOcA=;
 b=d2RBwZTMIvTAlpW3c2q1NuvV54wF34gApANARQ+w028KXKI42Bcf7SB+Y3R4CSs/dZz9/ZJDwK4db/Is4eATO9wV503OmA9PvUq3EJwh+ulc7wdL8TrHVh0qNpo1QEZ8jwJmgL9HtdwaJmuneZ2BUhLNkHl1JhhJsHaJtcFO44xFQKrL920z2s0mNgLcbRTaOLZGdt5II7wBBUdpxInlVw/+zSlwN70Mq9v52JSES96A1lN75l+kCmmJGgBsTzCa+6QlocTAzrXi9E+5ygJHHMKz1fZW0W3OxPTE8mSuJYabdHCLxjgGt5z/jcFsY7wb7b1KGtAI0Auyhe+XbXDpdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1617.namprd11.prod.outlook.com (2603:10b6:405:f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:45:56 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:45:55 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 20/25] ice: convert
 ice_reset_vf to take flags
Thread-Index: AQHYKExIYxriy/DrCUqWe1PsDd7HSaysi5XQ
Date: Wed, 2 Mar 2022 19:45:55 +0000
Message-ID: <SJ0PR11MB5629CC15840245A001E0D6BCAB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-21-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-21-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 7dc7cf9b-3967-425b-eb2a-08d9fc854477
x-ms-traffictypediagnostic: BN6PR11MB1617:EE_
x-microsoft-antispam-prvs: <BN6PR11MB16177E88F82F111DC40F3A41AB039@BN6PR11MB1617.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O3tPo6Iu6l31aofvqvQ09S/rTfzhNx9Z3NgRCKYWkqINWkO7neoUidR27cb5IKc4iomweeLLztje1Pj7sat1Zuw+i4XLSvKsWV483+kXZDGyfg5A8zI6hTTQKs5Pn6RP0tVT9dYw+GtYJW+xCxoZ0sMJtdZh4Y2UaZpDrJpSmabWMWp1JqPVITKvutbeaeA0oSYDKkYM99fzPhdqx3I5qQs2SPZ2ZItYmTZGuL/GySmkiw9Vk24+105rRnA8FGavbrk2pMix3fOjwmfugdc58+kSYqm+IsMVM4xwGPrlslwfGgyJHhNQljInzRukT+CNNRAs2Pcf25NXRJrafpz4ig0kuTZGs9dHxhatnIKF8qg336TVnl8OOkkyadNJimvwlVBF8K7UPSFT7fhLvNldHrZAhzUtEuQnd0BJeYoWxj6nungKpWjdvuf4ku30TGrsxiedJTzTjMpLg4/mNmqqH9sZ+DEAWc1gsBuKF9eerYKg6ktQSwlx46DBvmshBEDUZMqpqWoYZGfzNfjEEX2f3+nDf70ghbk22C+jUxKIFiiX4NjS9ItU3E312IvZq73Y96BnbQOt0JNFAO0isUhuSS0xwAqzoyLe5+g3F9k0Xf60snkuaHmi/sxPmoukUj2ETX5yqFkI/9WiZlro0YvxwMT3Fiic+Dbgwk34DvQfXQEwtHgF7EXvSvKNZ746A0TqMeVkhX32WE+eYQka9b1PjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(86362001)(122000001)(8936002)(38070700005)(5660300002)(82960400001)(2906002)(38100700002)(26005)(186003)(110136005)(508600001)(9686003)(6506007)(7696005)(71200400001)(53546011)(55016003)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(33656002)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GENM2+8ujZDWvlEVtm5+5b0tOY/z30R0RpPFi0cV+wYJLBXbPs13N8w8+cKW?=
 =?us-ascii?Q?5M8lU6AyrrvXbSiTmT/Rq+v+dDmdJKf8Q1RGxnuRCOYQcCUb2NeUASpApSAa?=
 =?us-ascii?Q?+YqYd9guENjRAPVDPvwCIxR3JVL1l1MqQ7ZvlqtJrSuZaG+4TGZE2t8wE3rK?=
 =?us-ascii?Q?5H3V/AP79zoOS7QuxZA8V+ztdRygHibBqd9McGUrU9gM2iuuYNkWvzMCR/ev?=
 =?us-ascii?Q?TM5mYZ4TRc7+gLoLWb98BSaCTceVo6sxyXuQZNod54FyPlk0WCGFWc7rvtf1?=
 =?us-ascii?Q?FfrW3DSTWV+Gt/DvSO48X0Hol1mZmCNUBIcSv6X36TOmOmTEqoV0+gu7DsBc?=
 =?us-ascii?Q?7XwRVumm+j0qqhiSC6CCEAdcgyaQpbePbMdJ48Ty6ZJ9pW9vVajzPJ2yv+jS?=
 =?us-ascii?Q?b87w29C0lZxSATL7DYRMTK+PIaSZdMo5jYaJi4dBLm9vHLbzYo9AOqzFQpxV?=
 =?us-ascii?Q?woL5Iv1jHkyzgZNBWILaFMcDxiHJjaR7Gl0/0H0Z6MXgrFWOIQggyXVJgXi/?=
 =?us-ascii?Q?SmR4rcE5Pw3tsaLvgCaZa9bc27xwtPlkrCfr2pkvbVJbXrM1NuTO4EfVU08c?=
 =?us-ascii?Q?lKoCAbVp8/zmysH/Meb6UtA2cFyn8/DWeeCu8KrYD6cLEgKM2tqmQyb/FHBk?=
 =?us-ascii?Q?GxaYd9XAnxNrveWjTj8rzkk/TZ7JcoMXDFLE+ixjEDnWq/MvvyNJQs2QkDjU?=
 =?us-ascii?Q?PLFOIXxz8AlW8MTdgKGrtyI5KRRsh1Rd+GXPjRWjM6jzymaIDxkdN2fgKdfF?=
 =?us-ascii?Q?bV0Gpo6131VMML6Bg0EJWz9ML8qX8KV9lyU7/yn90jQJROLQeSjGU4E9oyqA?=
 =?us-ascii?Q?imh50GKoBrOQff0OROmg+FfogUPfG6fgUH87BiI2LDOk0zZYoUWfU8Lqw6NF?=
 =?us-ascii?Q?VGDkPkU9WbjRDt33mdwABjVIMcsYJM9SMQk51j2VbKGvdkaSVJABGU9qGcMs?=
 =?us-ascii?Q?MPYjmOB7RHO1xDw/l1Sf04I95N77Vs2epZbAgdZ1MGjvhsD/V4UesOdIHKjR?=
 =?us-ascii?Q?tBswXdxtvAlfKnW5SvM7LCDgGyoIBHb5m3zg04FXRrylyyjSa6l/8TQQDfu1?=
 =?us-ascii?Q?UBJxHPt7N7yGvn36bNJDQAF6VVr3uLBKwwKq5QIZ7VTch3rlzG6DylpV20Kb?=
 =?us-ascii?Q?yOhX3gwAa3we6p8TjFob9r3dIpsjg8HO1w4DAnjekl0tTv6Ep1u9ztU/9HFC?=
 =?us-ascii?Q?XUdQFNAGfbi79hyWqUKSRNZg8GX+j8vcWwGhsBKGKcw0nObkL90lG3S7FAh+?=
 =?us-ascii?Q?kpSUFxzaIwWxCc7M8RMdHwuI9H0FQGf4CuZ0fKHAqw6Oyc4xMzU4Yc7hDYbO?=
 =?us-ascii?Q?8wJri/2W85Do2AqdXkCM3LGLBfzF/nhT3vY6zZwrinStKybseEkca3HxJcyV?=
 =?us-ascii?Q?7MWnmdQ7B/qtLhPvUQLbVPI0a9kf14UXGdCBIxmC6TervdLcpyuv/28nsXkU?=
 =?us-ascii?Q?WlDxXWKWoXUIiz+dd2dmBy/azaTo5zDV25VTxg+A7qMGf07oMifqn4+AJRZn?=
 =?us-ascii?Q?j1KTGdJaPUHR7qe47uYqiORkmz4KBDz+xGqeQNNXKb/M6bhRPuKaEzADmjc+?=
 =?us-ascii?Q?4d7MNYxQp/Q/ry3U9wDnF7AlsZ5xGm77EusfA16b8uWX0JdSFuKqz/QTRpy7?=
 =?us-ascii?Q?lh6G/ktqhRky6Y/Zou1iwLlDBoNRNQYPerkvOVrqMKtCTrdfVZil05Neru+Q?=
 =?us-ascii?Q?AA1sGg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc7cf9b-3967-425b-eb2a-08d9fc854477
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:45:55.8414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 56n7uZL6CtEfuKrX28k936yoPRJJ97ziDZWQM2fKStP7qBs2YCFn5txysnDEKa/tG9a4MXrKQHqoIb3aE/g4lBjlGLkQHdjvg7VuktxPXLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 20/25] ice: convert
 ice_reset_vf to take flags
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
> Subject: [Intel-wired-lan] [net-next PATCH 20/25] ice: convert ice_reset_vf
> to take flags
> 
> The ice_reset_vf function takes a boolean parameter which indicates
> whether or not the reset is due to a VFLR event.
> 
> This is somewhat confusing to read because readers must interpret what
> "true" and "false" mean when seeing a line of code like "ice_reset_vf(vf,
> false)".
> 
> We will want to add another toggle to the ice_reset_vf in a following change.
> To avoid proliferating many arguments, convert this function to take flags
> instead. ICE_VF_RESET_VFLR will indicate if this is a VFLR reset. A value of 0
> indicates no flags.
> 
> One could argue that "ice_reset_vf(vf, 0)" is no more readable than
> "ice_reset_vf(vf, false)".. However, this type of flags interface is somewhat
> common and using 0 to mean "no flags" makes sense in this context. We
> could bother to add a define for "ICE_VF_RESET_PLAIN" or something
> similar, but this can be confusing since its not an actual bit flag.
> 
> This paves the way to add another flag to the function in a following change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 6 +++---
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 9 ++++++---
> drivers/net/ethernet/intel/ice/ice_vf_lib.h | 9 +++++++--
>  4 files changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index af4befb22d0d..9d5fa9840004 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
