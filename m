Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A816854198A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 23:22:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49A4F84214;
	Tue,  7 Jun 2022 21:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7oZZ5RIDWaH5; Tue,  7 Jun 2022 21:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B6C984213;
	Tue,  7 Jun 2022 21:22:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8808C1BF423
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 21:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70DCF4064C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 21:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vpAZEycd-xPU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 21:22:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2887640556
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 21:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654636962; x=1686172962;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pedz7xPsxpKMc/8k7jTb2YFkgFVkkSH43p6y6qD2U80=;
 b=koaRFEVcxbKKLAEDxr8EPaUCLaDBeIGf65gur5zLyui/aY6acOX30j1S
 q0yfUFOKI8a3nZWTkAB78s/T3vjRuitGp7ePM6+9Q32c5iy/p6gBUNTRJ
 gaRcCxRBnyUHlld9Kt6fvqbaz6QDWg9Ro10j+PUu7eiw8mIbxuXeHsE4l
 T/cgUmi1pC54x189P5PSQgKPv8R94BWr4kDLzpX1lRWfH6E6nDCCL6qPH
 dDnb/2WsYHjtEevuIJnUv0GJQsT7YJxisxXceEmW14PhM3C7vKEXTBfvg
 64riKDkXW+qCDJdKKyPVwAb69jBZyiBJz1maNdlabXK+o6DXDhfZ13sEJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="276791612"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="276791612"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 14:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="579769278"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 07 Jun 2022 14:22:40 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 14:22:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 7 Jun 2022 14:22:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 7 Jun 2022 14:22:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0XtOnJza/xnH4mGNCCSAGS2B5gYApzXOwjzhO+n3YYU3OL82phFWl/kSCu6xHMJPoVwrL86fNqVkMqP1UUP3GH4bE9R1bLjlRN8hOsSFDNWA3pNtqQ3R1tB/aM+TO47SyEBqyaoaDr3kUioSPNK7nYuEfF2xtRu5VYGy3nOWlZLwjvOkAjP/gxBkR0OZPVVrl5ldo9Hj25s0CKzV39+nHgIxIL9bNR5LfsVpxMwEE+eWwp7uKNNlW9sXeIcFBV7Cn4UzupGYsORU8CFO4i3/9YsGPEFgyUpgCf5mdT3v+SlDy790hXEK0MhPkrNZMP4MpFTBFzpKRB7fIIxH73+Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBL6xEaHNol290E6b+gkNa6C9T3jukHpcj+cYNMOF9g=;
 b=GJnaRJvjfS6vMXfrK3P15ghEs0zZQfnjXs9BpjYUO7DrG84IB6sZ82fcqmz/OMvVfkpQfygRdFSNuAnlkP4cm+X8YvLdqNqyS6ddLgMAdbQWCHVOIQx56Ypk5DJC6gnPudCP7RG8cnesN2hKO+pooSy15Di/8J0kBt9DDeeaRQyq3FqVJQIBk3o/rz5ojY8MzBP9hGz/4bBDvHQxtSBuq/949yXVxY27Ozt0K2d/XSSd/0YU7Vzj3YGjEMmFJrgJIR58NykvPQslBo4cYTayL1qp29En4MGziWemQaDVDLYQVsiIIOZ0uKfHC+vIpVqcZCiF3Rc01KOLr2Nv5ycYRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by BN7PR11MB2849.namprd11.prod.outlook.com (2603:10b6:406:b5::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Tue, 7 Jun
 2022 21:22:39 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::90d2:de25:1fa0:24e5]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::90d2:de25:1fa0:24e5%2]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 21:22:38 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Jeff Layton <jlayton@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] intermittent ixgbe transmit queue timeouts in
 v5.18 kernels
Thread-Index: AQHYdvt7Z/upuGIfDkSISiPLCBN1f61EXxfg
Date: Tue, 7 Jun 2022 21:22:38 +0000
Message-ID: <SN6PR11MB351830AC7CCF4B4D2C49F165EBA59@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <8225a14538339c7b38d9da1974ebefaf4db1bc51.camel@kernel.org>
In-Reply-To: <8225a14538339c7b38d9da1974ebefaf4db1bc51.camel@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2602b233-26d6-4a0d-0e84-08da48cbd962
x-ms-traffictypediagnostic: BN7PR11MB2849:EE_
x-microsoft-antispam-prvs: <BN7PR11MB2849060E3C6D54625F17010CEBA59@BN7PR11MB2849.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pjdAEyThZX3b8qgmEp81h6iZQsLVeZo01M+PDm6AVcegvV0vHELjhG1HnZIaoX55XKXUVJyVxHq4IfTH4xwfq1+car+cNkHus/vEuPvISxVzkhglMrnjV7zKwPVQMLa3BepXKEZMZ/u7v685UhjcOJHwiofW1tZ/CfKTxb8jzs1EYwAtJ8Epz79YVDyufN4oP00gQ2YhjRRYZbfQuBX/5byZ5IVMSIbht3/nD3zpzpWsiY93AkMz9dAEXngDl8oUvcxxxdgFuAsoPxO4V7lfHBXs44cK9uOy+Jw6eQwvyD7DsES7D4ofQLLWK/NLxkOhG1lF1HmBwRAAt/PUEtvBKY4qVloIIwmDFrMmRP9BJOXMM74pNgCIPkPrKDgUCViy0PPjCFW6eEubaFMEZvDIq4yLwNz8Mc5z118ZPIHj+7QW9LsgoG7DynYl/fCKGEFIGIWECDjyw/5L62s1rBWFiABcQlKg93SjnHXtqZfKeTKiEgaJmO4E86nE0NlzaCYHpqRu8TVRwFm1g4VVDsXltuOYGbU17lt4ZG2/Z6Oy5PYFVuRDhKfDIAMdQISMYMoMwqfOPz+BU04RKFYABZZVqsESAWj9+UuRLaszHtQILzAo7pYF/UPF004yXBrPU+pybf8Z8+Vtr71+QIdvp+EGv1e4FdL6IRyKQf2Z5O45GmYhAZEiIJtpJ8IDssu4AHxMKaYkDNEzBFRyqw0OTRqtC3NJqn6UBbjtZLy9fxb2hgdbhizwdNqSsfKE8ANwMfi83AVQyz1gq6hTmU6Uq58wKOdcACwiFCyRrpVh/7B0neQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(55016003)(66946007)(8676002)(66556008)(4326008)(71200400001)(26005)(76116006)(66476007)(66446008)(9686003)(83380400001)(6506007)(7696005)(110136005)(38100700002)(86362001)(6636002)(54906003)(33656002)(64756008)(2906002)(52536014)(966005)(316002)(122000001)(38070700005)(82960400001)(5660300002)(508600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mcaahdpg7m2ob3g5MMj0MnLzoTLmpp6xTin6hxC7zSmvOH/PKV7CVTT9nE2G?=
 =?us-ascii?Q?EvTsnSPOMKcxD+aAyaYR60+83Wr0Ber0nQi3LFgU+Iy4GwOQQhyrM+QlfFr5?=
 =?us-ascii?Q?Ff5I+niruYBArUVocoLOq/lU34e7DgdoeKPWOhOeOtldRpDbHxwtM449QCop?=
 =?us-ascii?Q?LsZnjkmDHKnWnkxJcjE8BeXAEgPgGJj13pHeepxgv+vNIWbeB1aD6rkfEzgx?=
 =?us-ascii?Q?Qd3STIfWMrYdSSEf5fZv4rVftBw53STAyOybF8Jsqbr/61vK9AHVkhEniMPs?=
 =?us-ascii?Q?cH2m1eFZbTdqUUCZeGESk2Fe1RnKkOhekxks1OYLaLOxJrTjEz+fYbwOEqHR?=
 =?us-ascii?Q?y5fmKIcrsBCI7xWZxI9FyI8yMTK8KqrVfisnQo8FzF7nDt1yjlLS6SmmpnS2?=
 =?us-ascii?Q?WzGsd8ePK42UeJBI0G1WxqxhXkjaaP5iEMdIWFtHCiRUA0J58aYEXhYvsmXN?=
 =?us-ascii?Q?z7a4NbtoYPunmlnl/zcbzHRUz/wGgAPrMWHSi+Hrp0IslfJ4qKg8ELbjDl+c?=
 =?us-ascii?Q?9M24oughNiY1wKGo3xJLqajv35cXs3e4UlMzyFjRW7bxNOd7pxmWex1oV2iX?=
 =?us-ascii?Q?b1PVt3LbGtUzRJY09EvLtW++b2aNsXAsvOA+xFs9M29nK5emut0lsBLmFoBy?=
 =?us-ascii?Q?tXC8XRpva/ldqK4ihSM4Abku/cNU6Db+6jRj6l7mWC2hZYe2JvfmWLYhYO3t?=
 =?us-ascii?Q?pcvtlNA3R+yWwezkDvUR67rCTvojuiJaztK8NpQ97GDkuskWDU4/bnyTnv3u?=
 =?us-ascii?Q?gmDftpQ3WY1+wSN8SNw12ntPGIxH4kO6IGn0UlA9cv/W0thAHDxMwvY1Ivdu?=
 =?us-ascii?Q?OGTirvlRMuKaA2bKM+DO7yxVQcTQifoBsQg66xqAf1lWyUjFDNB1q7sk6DsC?=
 =?us-ascii?Q?l1YVwW8+mtYWeEFAT0Ni8M+VgGxUHc13Uj5UE/8jt+/0Tdt+u5mNl442Aojo?=
 =?us-ascii?Q?XiMTah3P0w0iCEMaVCFdnT8dnuwANZ2lQuCbVpm6U9Jll7pBb/tvSN506o2G?=
 =?us-ascii?Q?9f1SN2AkictfxNzwK/ik5F+YrXNXgxYchLkMkImLGwA8NQhBUDi/gGCClusG?=
 =?us-ascii?Q?TFgnHlontMUr0kNA1m+VckMTDxguXqS+gBbO/o3WQ4Dp0txc54ZHECSLAbbT?=
 =?us-ascii?Q?PfYJZ5TphsxVGgmgEnsJcG06qAcDETNQf+APrgOoDNYvOx7dJ67bHtePxx5l?=
 =?us-ascii?Q?57cMr+mlLZKOa3gFCHbhK3oZE45SCPBat9ChYJUgVEu2RyQgVp7lWwTyZmeE?=
 =?us-ascii?Q?KAXtOQZjD8Qe/yvCs+GtpxXFqncOpR++4ckQ4bCUMLZFUs7SkW/zWJ6W6OrE?=
 =?us-ascii?Q?KXqfXqOPgHh78712j2rErSqPfeo5EnQ8uMEscOGsrAFN8+2yuKsrUvBtVENr?=
 =?us-ascii?Q?GGnKtlB6N45POd+TYb+Srwn2AJ3MrhDd5vtcZfNQyTGj7REZerdvX/hXowc8?=
 =?us-ascii?Q?7x2giaVmQHwlO87sjXkftDjNNR/tie6PzxTuNQNCN8O2MKhzls/BzHk5ZKaT?=
 =?us-ascii?Q?mLVB6L5EezpZJPUOZDPrhv9oeIgi5CgMwRmbB9hrzJJ+JtT/glePPaJNnae4?=
 =?us-ascii?Q?0PUlpCbaOv5T/be8rwrTeAUVQvefRU2Lvk0sH/gHkd4hT599Lf41nyQmPgC8?=
 =?us-ascii?Q?TBEvlakTsXlvwUPynpwY1TqdyvA32pE/JaZzv/bcX6z7p+D5IY42kEkX8Zbs?=
 =?us-ascii?Q?HtKPxL0o1nTxVadKEopd4ishQBs3q0WES+8E+LG/DRSfI8Yr7Y+gyS449kI2?=
 =?us-ascii?Q?b0vHXIpmRg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2602b233-26d6-4a0d-0e84-08da48cbd962
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 21:22:38.8677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W10IkGUNJCBly7/a+KpbWcTn9fjHv6RiYCGDr/qutQhTJQmgruZ6+5o/l/TLOktwO87Rc/guvj0mYwkPiWP7hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] intermittent ixgbe transmit queue timeouts in
 v5.18 kernels
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
Cc: Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>, Venky
 Shankar <vshankar@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jeff Layton
>Sent: Thursday, June 2, 2022 2:38 PM
>To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Brandeburg, Jesse
><jesse.brandeburg@intel.com>
>Cc: Ilya Dryomov <idryomov@gmail.com>; Xiubo Li <xiubli@redhat.com>;
>Venky Shankar <vshankar@redhat.com>
>Subject: [Intel-wired-lan] intermittent ixgbe transmit queue timeouts in v5.18
>kernels
>
>The Ceph project test lab has a fairly large cluster of machines with ixgbe
>adapters:
>
>    03:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+
>Network Connection (rev 01)
>
We are attempting to reproduce your issue, and the output from lspci -s 03:00.0
-vv would help us make sure we're looking at the exact adapter that the issue is
Being seen on.

>Recently, we've started getting intermittent tx queue timeouts with these
>machines. One of them is reported here:
>
>    https://tracker.ceph.com/issues/55823
>
>Usually this happens when we're trying to do a sync, and there is a flurry of
>transmission activity. Afterward we see a lot of fallout in ceph culminating in
>softlockups.
>
>The kernels we're testing have some patches that are not yet in mainline, but
>mostly they are confined to net/ceph and fs/ceph, and shouldn't really affect
>hw drivers.
>
>The problem manifested pretty regularly during v5.18 and then I didn't see it
>for a while. I had figured it was something that had been fixed, but I think it
>was just "luck".
>
>I attempted a bisect a while back, and ruled out recent ceph changes as the
>issue. Unfortunately, I wasn't able to get to a conclusive patch that broke it,
>but I think it likely crept in during the initial merge window for v5.18 (pre-rc1).
>
>One other oddity: the test lab often installs bleeding-edge kernels on old
>distros (RHEL8 and Ubuntu from similar era). Is it possible that the firmware
>that ships with these older distros is not suitable for the more recent driver in
>v5.18 ?
>
Thank you for this information, we'll look into it if we're having trouble
reproducing the issue!


>Any thoughts or suggestions on things we can do to fix this?
>
Nothing yet, but we'll be sure to let you know when we find it.

Have a great day!
Dave Switzer <david.switzer@intel.com>

>Thanks,
>--
>Jeff Layton <jlayton@kernel.org>
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
