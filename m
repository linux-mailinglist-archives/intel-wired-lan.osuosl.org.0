Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3E0357808
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 00:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6D3760DBB;
	Wed,  7 Apr 2021 22:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBwuHGXn3G8y; Wed,  7 Apr 2021 22:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B688F60DAD;
	Wed,  7 Apr 2021 22:55:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2901BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 291C060DAD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Y6L47jIKe0R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 22:55:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53DEA60A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:55:45 +0000 (UTC)
IronPort-SDR: r2vgzOCk7NRPyRPHXzIQnhSjZh7RnnoPZ8lrs70CHd//ZexK9W7M+TRaJSx9pjN7fvbn0ymI22
 UHRkppo+eBqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="173491901"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="173491901"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:55:44 -0700
IronPort-SDR: wKCeEIu1VYiF9H/kosQCi569k0HASNQFfewEbOD4LgC53zAf4PxXmLc1gpgp0sIxs8Mq3FjUUt
 RFghW7WqQHeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="421923407"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 07 Apr 2021 15:55:44 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:55:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:55:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 7 Apr 2021 15:55:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 7 Apr 2021 15:55:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQuHqjTx3uOlcX+jCSlRl7d8bLWd3SgqYVrg8sUzza/4UAXv5By7R4ND5PGXtx1oYmwsLM8aH8zSxSj9rm4kbJHN9PCg2wt72HGBmBfn2UtIYqSvdBjvCLUkGXGz2GRc3Zu8O6B2n+iwAEJ1LtKlJrKjX0PinP0CMCO5vUr0bgKFW9Ezu4P7pPjph9CsaskHQfQ7L+5Dkyzi9UTMcyL0R+tgc8F0ubQ5RQ7kwpYfhScw18v3UOJVqtahHJRg/MQ0OfrWF2P9s2dsQ2+Q+htF/7BL3NX1qQXdqapFJOaE/m6AbNDXn4AbsmE9IEdvbdir2I/ZPItz4wmVKhkhnI6ioA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zus5AJ/Jys7rNrD8U3VBHVpmhvDW4b31Pk/NjTF8CSc=;
 b=Mxa7TidC/8qZ68Rok9UmVdn7P5msM8ek6aWroS3U56/2zQuIfwPjWjjqYwj0WYgoqOusgYdDhBiJhPZgKRmEEuZkGbXPCKK6rAJFEiLV4xuwO3b8z5ISlahZxvkw2OGCvV7QA7kyyJsLnAUAslCSznXZhCNVw43+ZkHYwmUFfODspdTWN+i4gUyi5kZ/AwkVcbGv+unL4+WWe4Ho2W97nxm5uy1Ouvbg8zOydTYTA4bc5sKsa4omBNCHomELHKg+MOSaqbYGOXmkIZb51MYKplKxThykzvdrCPi+SuqqNhDVFTKMPPn/6IhubrnX8+dKLdkah4sQV2FLdNPJRFd7Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zus5AJ/Jys7rNrD8U3VBHVpmhvDW4b31Pk/NjTF8CSc=;
 b=Cd4eVjcZOk1o6kt5skBte6kFiHorHwxvdgYStDKR/FYyAN8beZGyzwm99Vkmsj3D/lGd9XKc3YeWxE4A1WMzGy2D6xQqq3ojt6G67ARUb5nhhsC6k7pJC5wnXybUwxRUoA2HgkA7RlgGlJ8pjx6PHePqOn5a2A6Rl+isIs/hCpA=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MW3PR11MB4667.namprd11.prod.outlook.com (2603:10b6:303:53::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Wed, 7 Apr
 2021 22:55:42 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3999.033; Wed, 7 Apr 2021
 22:55:42 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error:
 'vsi->netdev' could be null
Thread-Index: AQHXInEy0nocW4PHfk20Qjl3BmAtz6qpvR2g
Date: Wed, 7 Apr 2021 22:55:42 +0000
Message-ID: <MW3PR11MB4748BCD0B7C9E4EBEE767F74EB759@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
 <20210326184343.133396-3-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210326184343.133396-3-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 790330bb-e30a-4cc0-f574-08d8fa1845b2
x-ms-traffictypediagnostic: MW3PR11MB4667:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB46671F1663B9A698A3071702EB759@MW3PR11MB4667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: brr1ZTyLsHFZx9KIKWCKDVYMluVrHP5sF9zqsPmtmBQ4oV4XFncHS/PWkJhYbp7WazB+4tFUJuG91MGqMFdEhcJwE+X6cr5sTRrch3U3V7GOcPWPD/Vw9Yt4YI9tA89oTCqhBnry/BvEo64fDmYLFC4YrM7p62zB3KxwA5JVdbxb5AnSgAEpGZJLh+4osVg7WVAfp8FOHE+HqL4vtR8GgRmGR2PkgS/RURWUvwz7GJqFHmpxdPXmLi2kQAHGrnZp+53Bf6p9SRxvdxf2Go8Gf9ldgsR3v3kMx5T00bkUp5IW3IQR0Po8NpCRZ1qOZBJn80yjSCUeXD/O2FkvyE74hytQPcmBwq9R3WIqN8uaTUX6hUnPPVSUt+9MgJs/YFjfcSr1CPDwSn57Jpw7tRdq3XcMblXLnn+NwSNTKfyAV5cED9IgV54XkLxCCqPsIx4WLJUzHGX46dUDvqfiwtTRmkjzfkU+uRniIpvMKZMB2tOGpei4qztSa/Wta9UOCa9i0TVU++1qKpn5fKvTT7+odVK4eNSaSAbpxYPCOjaO0MZDBoZo3D01rmFRr/nZZB0p8X3H+Al1crEJhvt17vqJQ9KhgpFLjULgxllYFIc+gtCLskOcJx7tuLC8EuYpO5/9T7cTXSGrU8XKCJOl23o8Z6LU2NDWc5dxl6mDFCooXeA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(39860400002)(346002)(366004)(396003)(76116006)(8676002)(478600001)(52536014)(6506007)(71200400001)(9686003)(5660300002)(7696005)(66946007)(2906002)(64756008)(66476007)(66446008)(66556008)(26005)(186003)(38100700001)(4326008)(83380400001)(55016002)(107886003)(33656002)(110136005)(316002)(4744005)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?xyOKuCHfLyiqcLLuDvPaqatb6EQdSJyjf5JEd8kwlF8Oflc/r0//8gZFSmNm?=
 =?us-ascii?Q?WPxm4VJP4dxR5YfRC4ruEAyqe2W84svJBqAu1fsTcQzCrRTpbmrGEJdvuuot?=
 =?us-ascii?Q?1TD5JpVOaJ+AV8EFC3OHg/k6aEJtPJowFRWgqNcbdghxzsTag+dxB0fkLgiw?=
 =?us-ascii?Q?Q6ayGJ6QYbZ5oAI/oxfbEyP18vMGczjA364yE74ogo6JIDxG/76a9WDgoj7U?=
 =?us-ascii?Q?/gCJbFt6aLN9hZjQxj3kET+uIV4WipJXKSivZyRmwUvrMXhfF2r8m0zsd61j?=
 =?us-ascii?Q?nf5Ae46cn0kxTUINzDNLJcrTpqdl+xsc2RRqkBD0qBGMmLw9XWHgLwV7kqn4?=
 =?us-ascii?Q?1F7GqMbgAU2ndGMXZUzGkrYua1Z7QYjzMLZpHITVQAXbMdKK/uhNGAt+5txv?=
 =?us-ascii?Q?BIHHr5Kd68Ej6qYDUhbNkf6sPM5mGBuyjGesHNMNE9F1jY4lnrtBPPMPfCSS?=
 =?us-ascii?Q?4u2S4TKDwAAzt735VKVzpi73/L0lrZ2g/IqPcHjASGe9zJ+8tMvrbIYeJoz6?=
 =?us-ascii?Q?PxM0x90hAVS+Bd9h/eMIOH30Xm4VrS7fdhziExJbDtFFYe5PLnQuzvw2bLOU?=
 =?us-ascii?Q?QsvEC0yJnXQT3TwqvILyattlgn5/pYfZS1m3l10MzJxdbR5LKdA6Q8MYA7NC?=
 =?us-ascii?Q?Rbyr5lxtdsUHlw6vkEL2UiZ462Y94w6iMoSCLsyRuAU1odaa2o3G/OKsyLrM?=
 =?us-ascii?Q?GxHSRG0COveMttyC1a3+Ejti89MwuGmdSIZzcgJS7rUgoJhwlr3zkdPEkOA+?=
 =?us-ascii?Q?LdsQW0B9HI7oy0X+OXC862KePe9owfVruAqc7mQirhaGDyCI4oogkZBsOgPx?=
 =?us-ascii?Q?tzo4KdYCfqw3wwM6tMlENX2CWKh/PcVpmEV8jNzspcZxfxYfOPMhOebbjQhH?=
 =?us-ascii?Q?JC1YH7oR3M+/ZLwLd0gR6K0MYgjBBWsu+TPz9cUHAwWKqkuvGP7HNXlgxQot?=
 =?us-ascii?Q?0WLxCVw4angIFnX++Pbmuj04MBeQ7PceIV+OCOcmRwndrS48K5LqLwMSVzVD?=
 =?us-ascii?Q?Cn2IsMH+6HxsPkxhcM1y3vcWHsO9z59lPPLdcZYfnzKeL9YncA8+CeqkUjCK?=
 =?us-ascii?Q?vpPoI4HDgb5PBUqq00yBQOiyFuYLmq1F94nB3NBlya7P5d3IpPhensMiZ5GK?=
 =?us-ascii?Q?/EKiPntspZ7KqXRBwZF9nVTPHRxkfg7ZLuHyEOQCH4ArvZyh2gEyCjcZwe/C?=
 =?us-ascii?Q?KLBct3g0DFxRFQalsKi/yBdBdPqxepQfyHLk2Ob9wj5PAwWOkOWV/hXDfGpC?=
 =?us-ascii?Q?xI+A1AfJ/ViDZogDq86RIgI84wW0v6QPJR5A5pcVbbDU0/eXG1X/BIU3Q7D8?=
 =?us-ascii?Q?HVA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 790330bb-e30a-4cc0-f574-08d8fa1845b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 22:55:42.7514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+m/KD7ShoLpK7cgTElnp/c1h+5Qoxgr1C2Qbo2utWxLwjYkff8MSA37a+/Bgp8gHQsQxJ3XwUO51VZSZixl3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error:
 'vsi->netdev' could be null
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Arkadiusz Kubalewski
>Sent: Friday, March 26, 2021 11:44 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error: 'vsi->netdev' could
>be null
>
>Remove vsi->netdev->name from the trace.
>This is redundant information. With the devinfo trace, the adapter is already
>identifiable.
>
>Previously following error was produced when compiling against sparse.
>i40e_main.c:2571 i40e_sync_vsi_filters() error:
>	we previously assumed 'vsi->netdev' could be null (see line 2323)
>
>Fixes: b603f9dc20af ("i40e: Log info when PF is entering and leaving Allmulti
>mode.")
>Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
