Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B77386DB056
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 18:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48212616CF;
	Fri,  7 Apr 2023 16:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48212616CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680883980;
	bh=39GenzGg/crLsDNqf9QGy18PO594BdzQ/JtdvXoAxD8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6VfrcFSXFllYqgA64RH9TN4phbo5oOY+iEgmxjEdeFcKjv40CZ3Q+LQeeS6KhdNt/
	 sOxVO754EL8ogfRjhlPb0p6SyVJ6gj3TijjyLN+DC6Wxq+SJlxPs6dEmG8fyVTmEMk
	 HMyw69vkqV7t16cqKGGBoM+Gz6ZOaYy4UGXvjDLfvw2DnoUnHdffVrM1I46ds/x1ZV
	 SY487ujYu2DfxCO17NRnRZoUXJl737dIS8E5NZuWy3N14qZOGKKTZITQys7g3dxnDJ
	 yRSocxLHvVLt3tB/qG3HB/fqmAL5/wslllJkpSn4l18omC1034Im5OLy6XV5Kav9w4
	 RflgZPF809STg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggdKKR6UNVwv; Fri,  7 Apr 2023 16:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3D7B616CD;
	Fri,  7 Apr 2023 16:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3D7B616CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29EFB1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 16:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 007A6402E6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 16:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 007A6402E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVvhRkJu52Sv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 16:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0633F4018A
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0633F4018A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 16:12:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="343023701"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="343023701"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 09:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="861827572"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="861827572"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 07 Apr 2023 09:12:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 7 Apr 2023 09:12:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 7 Apr 2023 09:12:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 7 Apr 2023 09:12:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E96+FTv12Zu3gZJTv9TibB9GgC4FUTKD269NExpLJTDsaYRHIycObAiUIOsMyAfRHyQhWPy+/7NpQy9teB9XewjDt4kYy2JMfpRf9ikli67A1uIqsPkCGld8Mu8sW1r3gmTRfCzyPurWfxUMfDLDKE+fewvirMG0ZBFyUXPzxy2LYgKFoQi9S7EVpgjZqY9yl3SUYXXaanB+HNMt1NgnHdbHKqA85BvGKqW8wEjaANz2H8/YvIBOCMS4JDTWeYeovx1rFWBU22rzcPcza1IzsAdVf1y3VURbDeYZp9vWwDsYs3UExa/38DvepESf2GWNf7W1POjqgyw4GCju0sdKfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/txBb9j2xFcJFtDkfn2q6b4EInvAYwfA93cdeU5uJk=;
 b=HAFbrKq9rL8/WE9Mc5KtyGCJJM+mgVNv+6b+7C5CBTM9auIqqJtmsQ5t02RA7Ak3Fblk00iJPq2VAFPqcFUS2OXOe3+/sc4gkFwSCdG0Pb7JcrF43tPN7hNDGadBQ7EZhrmNkXFzorGKDb+81WInw9MobLSEPnPK3nlD9mLlSoXvTk/e8ttLI0kDKADgTi8DlNvlQS5jdbCO1DBcdsfBQZGxn0LMb0r7XZNHrynyWgtl2shz1Qr5LuKUbDlaLZh47Gs5+ifC63vLJSz2P3RylwbMu4oauKL7K/StB/b8zLzVYsikD/0Ny6sUXfpaxaRfWwohrJIP4Fh0mLwRwa/hug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Fri, 7 Apr
 2023 16:12:49 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::c111:cf7:80c3:6ef6]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::c111:cf7:80c3:6ef6%6]) with mapi id 15.20.6277.033; Fri, 7 Apr 2023
 16:12:49 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Leon Romanovsky
 <leon@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: clear number of qs when
 rings are free
Thread-Index: AQHZWyD6vL0uEfXRIUyhP6vbe53Fya8DjkyAgAA0hACAHFggQA==
Date: Fri, 7 Apr 2023 16:12:49 +0000
Message-ID: <CO1PR11MB50282B593D48A928AE1B11B0A0969@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230320112347.117363-1-michal.swiatkowski@linux.intel.com>
 <20230320115117.GK36557@unreal> <ZBh0wpx9kOU1LTDI@localhost.localdomain>
In-Reply-To: <ZBh0wpx9kOU1LTDI@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB6695:EE_
x-ms-office365-filtering-correlation-id: 5bdd0e20-caed-40d5-87cf-08db3782eedd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xl9h3UuVbK6P21z+W+rOB6XTTCqM1eWidGvL6R7x7pqbCUY45yeNAi4l1lOmDTZOMMm5BRWYD6SXDsxB5LmrXVg3iZUAHQmxZVdEUkVa45osSUWwEc3jxuysyFC/20aHhT2dYcQyYDRvYHikhNHOW9/6IQEa3u1wh4Qe2D6W5hHOTuG37aeUBVCTag5rO5rjG4k7XZRQzkVLSND/t0NTsLGtKOLxZMsF54G6o12vEGfjaGvoq9oldnZZQNPNAvdd1TF+gRm48mdfyWYo5cL3m0hnzGGhFIoQC0gZf8jvoFlzTpqCiYHlgN2iZ5yvJaJaaOB/Xdf0K46Nu2dPF3f2qywmJrNB1hBQxuLc6PPaDi2uecEEmvh2QTLDDV4/LLdzqGcXpTqQE/FAZQyQUSP+JUI4+aJ6CTAFF/dlb72SNCb6dGxKjviuxcODQzpaCzEqWBUPLV3eeM3iiwbEINGBRrwGFjRDvqwid2YNG3TbFSgC5HcAaOmrp2cUpTRGj0qccHvt9H65Pe7jpLX/NGBt/7tfokiBXGq1RD1qqIJGOebAmM/NWWdiY7QMHKdJ4zX7GGRmlCr6fKLkmeYfbTrWW04nD1IIlYfuNTwKIQrwUFMCPQLhsXhEa0+lReh3rQku
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199021)(5660300002)(86362001)(9686003)(83380400001)(26005)(6506007)(82960400001)(53546011)(122000001)(186003)(38100700002)(38070700005)(8936002)(52536014)(478600001)(7696005)(110136005)(33656002)(54906003)(71200400001)(4326008)(8676002)(41300700001)(64756008)(66446008)(66556008)(55016003)(66476007)(66946007)(316002)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f1pzwC+4ks14nyGN4w/4G2B/ozLlC5KHWThrtmVK0c9y2d+72ilT0GtdyGVZ?=
 =?us-ascii?Q?AzkvWpqMI9o3iuiR/OAmIoXY5sxiDcLh6cKHt2HPenIMprtnpLjvZ3AiFy14?=
 =?us-ascii?Q?NqMm6mhmXU/5mk2UdBZ5HSj8xm56nRoXwdrq/K7lzGQSz9ppGm55mJ8RlkC8?=
 =?us-ascii?Q?UY22LNfHdGiHw6YxF8yecXT9/QKKmAK0JR7wcPZ3jHWT7N65MWXQ4gnvUT4v?=
 =?us-ascii?Q?xxDLraWNSlTUl5S1dgbet4hNsNSe/u9SN0bdjIYN7Jhd6XUexE/QVBsUEHdi?=
 =?us-ascii?Q?+FzQopDl3Qj0njveoP/zwrIGf/wLKHYP225BWPkzNEsz9FbGprqen0qSfWs5?=
 =?us-ascii?Q?/X3+1anBTxLlOSd6eF/5idSkvn8kvIvbkOyO9m5fkgKycbWw6d8I2qSBJH0G?=
 =?us-ascii?Q?atNai3VmEvnn2OsxN44neDA2NPTudMqn370QAHYmgr20QAVrClyBqhi3rF6M?=
 =?us-ascii?Q?YMx75u3GyFakI6wH6ReqA9r5XXdPTMtYLTcFLzDogEehu16T3WQg17Tyb7gg?=
 =?us-ascii?Q?Y5WPvW3yP4Y3B9Q3vdQ8viJoPIcmIPuXMH7OhMSuAfJ+UjJwHPP3h6ccZ+xB?=
 =?us-ascii?Q?R3/ZJdUNmnD9UFEm5VN8I79J2RVT2OV4foQqeh8qoocfAt877qWn4/nRyzCr?=
 =?us-ascii?Q?YtVyyIPHdDOHGxWU/Nd/Yto/CfRikRi2iAwzIjQg/ogLCQB6c9VKqjMblY0h?=
 =?us-ascii?Q?gINFSB7n+d+oQ5aVWVjuaqvGoHoIcgSEQzUrn3G1S7DXMpNq8TcDhVGu5R3a?=
 =?us-ascii?Q?fEBEZLPwtvzNpQeeOwHVnbTOVB5F+jKX0C9bASrkCs5YV7eYo+JGelj4j8Gj?=
 =?us-ascii?Q?UeksgCzdEKazS0RaOsbI4t5/CSLYeq1Um5wPwD1/YgvhnBvlBiFNKbiE+X+B?=
 =?us-ascii?Q?cxIRQepfDWZ+pKCGujtkipu8Lcy1q0nxViOOD6sX2iubsFQ+hgIMdiTXNVYQ?=
 =?us-ascii?Q?biPFpIjlaQf8+w0s+aEJoJCjhE69bC071uRpKkR+X9JVq13WSeVfTrvq+Wi0?=
 =?us-ascii?Q?Uv0yUZNyIc4qAowniIUHs4R/piG1yzdzDlzSY9C+ANINefczPEUM2L+lcE7u?=
 =?us-ascii?Q?+iEW7JupQ/QRISUHD79LB4T98vHT3coNqsvddn3Bo5snQogri8U5Bn60YZmN?=
 =?us-ascii?Q?aJP4Z8K2hBaIin7wegc2y0T4BFEe94x4I8I0kXsn7VTbwa9OxciXihnAhCNJ?=
 =?us-ascii?Q?s+73B7zkCN5HXGqOYnzDMjE6fcyzvb58NFABxeWmGnjAExjhQ2cHx0Q/HCVh?=
 =?us-ascii?Q?Ri32dE+3UraDPaFSfk9FKWq8lic0OsocphdpnAvZp0Oxw0x0HAeaqH9NsLaW?=
 =?us-ascii?Q?XVMKsOP4/xz6sicNBzGfHlafN9bVCXSdo3W8CNDvLdAAQQRjsk+zFX1b4Rd8?=
 =?us-ascii?Q?IoFenSirqy1Tao+0izUxGCHA/TTZtKvwFqOycY5t83Qmm47CPs4IHZL65L2+?=
 =?us-ascii?Q?0lO7Z0du4wNF/tKxVyjIruc9h2HHt9o6y6GR2B958fOsHzoGX6IqBioMf+II?=
 =?us-ascii?Q?NkMfBhPmLdOwRgE5oOCN3Uo/0IxHCgpa5IBnAH766FwaAtUgreECTVCMu95B?=
 =?us-ascii?Q?wjAKydcXEIIyvfvF58+PMbSp6d94TTN2+rozysVXV2zCdGKcLdGzHNUTyvGa?=
 =?us-ascii?Q?Xw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bdd0e20-caed-40d5-87cf-08db3782eedd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2023 16:12:49.5527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: glXr03zSnL39H7D4QWb6hnF5Bj/V9IGQfIS6QGtaf/p/96Nslp6OHLqnoydHyYZAlj/FJFrJTFpcvF4xuAjN52WZoE2FSVMQ8mg43rAsU0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680883972; x=1712419972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mSzmjUL+6vzQM3HcZah9TcujjnWc9o3c/CdP1N7k7rM=;
 b=CoUEE0cxLIuO4CZTfEDXENYKA9YFnOgSi15AIeJxx5lJVxcYZLmLQP4n
 GXNis0/UB6eBYdrmd7ZYPoy4mkX/5/s1I8v/xyoXRe2s8DZtq3qG9d/4X
 vFYFICx8hnmYGww+MNkNQf1RSTGspFDGTGB7uoIxd9ntM1tyAmnZJDe5+
 t2HtpZHQm68cotdImXm0bPET+A4nHHlXSDHpKZmRL+4VEr8PsV5gldx/0
 TtgVS6vPGdEgziqStXC5iv0PpYHoMVZCy3CwBPnGInRw+ui9hznyJkhCk
 cvsrtkC8w6UvBvZpaI1bmk+kce/xt4v7g/T9BpRSbnkpWsoNmQBKSygFl
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CoUEE0cx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: clear number of qs when
 rings are free
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Still observing system hung
Test 1: Upon PF reset
	Applied reproducer.patch in kernel, followed by below commands
	echo 1 > /sys/module/ice/parameters/ice_reproduce_panic
	echo 1 > /sys/class/net/<ice_pf>/device/reset
	System did not hang but the PF interface went down with dmesg to reload driver
	On unloading driver, system hangs with no response.
2. On changing queues 
	Applied reproducer.patch in kernel, followed by below commands
	echo 1 > /sys/module/ice/parameters/ice_reproduce_panic
	ethtool -L $pf rx 1 tx 1
	System stops responding
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Swiatkowski
> Sent: Monday, March 20, 2023 7:59 AM
> To: Leon Romanovsky <leon@kernel.org>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: clear number of qs when rings are free
>
> On Mon, Mar 20, 2023 at 01:51:17PM +0200, Leon Romanovsky wrote:
> > On Mon, Mar 20, 2023 at 12:23:47PM +0100, Michal Swiatkowski wrote:
> > > In case rebuild fails not clearing this field can lead to call trace.
> > >
> > > [  +0.009792] BUG: kernel NULL pointer dereference, address: 
> > > 0000000000000000 [  +0.000009] #PF: supervisor read access in kernel 
> > > mode [  +0.000006] #PF: error_code(0x0000) - not-present page [  
> > > +0.000005] PGD 0 P4D 0 [  +0.000009] Oops: 0000 [#1] PREEMPT SMP PTI
> > > [  +0.000009] CPU: 45 PID: 77867 Comm: ice-ptp-0000:60 Kdump: loaded Tainted: G S         OE      6.2.0-rc6+ #110
> > > [  +0.000010] Hardware name: Dell Inc. PowerEdge R740/0JMK61, BIOS 
> > > 2.11.2 004/21/2021 [  +0.000005] RIP: 
> > > 0010:ice_ptp_update_cached_phctime+0xb0/0x130 [ice] [  +0.000145] 
> > > Code: fa 7e 55 48 8b 93 48 01 00 00 48 8b 0c fa 48 85 c9 74 e1 8b 51 
> > > 68 85 d2 75 da 66 83 b9 86 04 00 00 00 74 d0 31 d2 48 8b 71 20 <48> 
> > > 8b 34 d6 48 85 f6 74 07 48 89 86 d8 00 00 00 0f b7 b1 86 04 00 [  
> > > +0.000008] RSP: 0018:ffffa036cf7c7ea8 EFLAGS: 00010246 [  +0.000008] 
> > > RAX: 174ab1a8ab400f43 RBX: ffff937cda2c01a0 RCX: ffff937cdca9b028 [  
> > > +0.000005] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 
> > > 0000000000000000 [  +0.000005] RBP: ffffa036cf7c7eb8 R08: 
> > > 0000000000000000 R09: 0000000000000000 [  +0.000005] R10: 
> > > 0000000000000080 R11: 0000000000000001 R12: ffff937cdc971f40 [  
> > > +0.000006] R13: ffff937cdc971f44 R14: 0000000000000001 R15: 
> > > ffffffffc13f3210 [  +0.000005] FS:  0000000000000000(0000) 
> > > GS:ffff93826f980000(0000) knlGS:0000000000000000 [  +0.000006] CS:  
> > > 0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  +0.000006] CR2: 0000000000000000 CR3: 00000004b7310002 CR4: 00000000007726e0 [  +0.000006] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [  +0.000004] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400 [  +0.000005] PKRU: 55555554 [  +0.000004] Call Trace:
> > > [  +0.000004]  <TASK>
> > > [  +0.000007]  ice_ptp_periodic_work+0x2a/0x60 [ice] [  +0.000126]  
> > > kthread_worker_fn+0xa6/0x250 [  +0.000014]  ? 
> > > __pfx_kthread_worker_fn+0x10/0x10 [  +0.000010]  kthread+0xfc/0x130 
> > > [  +0.000009]  ? __pfx_kthread+0x10/0x10 [  +0.000010]  
> > > ret_from_fork+0x29/0x50
> > >
> > > ice_ptp_update_cached_phctime() is calling ice_for_each_rxq macro, 
> > > in case of rebuild fail the rx_ring is NULL and there is NULL 
> > > pointer dereference.
> > >
> >>  Also for future safety it is better to clear the size values for tx 
> > > and rx ring when they are cleared.
> > >
> > > Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller 
> > > functions")
> > > Reported-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > > Signed-off-by: Michal Swiatkowski 
> > > <michal.swiatkowski@linux.intel.com>
> > > ---
> > > v1 --> v2:
> >  > * change subject to net and add fixes tag
> > > ---
> > > drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
> > >  1 file changed, 2 insertions(+)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
