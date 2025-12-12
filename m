Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C296CB9F58
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 23:37:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3D2C83B95;
	Fri, 12 Dec 2025 22:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mf4hgy5W7zSv; Fri, 12 Dec 2025 22:37:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40E5483B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765579066;
	bh=JDp6IC7kynuTzB/KdfnwMJ4FamkkdZZATwvtdO15D3g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=44Oa8IxeYhxWat2Ucjjq+Z12MJa5OHw08bCs78oYn2nfqt/Nzev4J1r6lCOZQqJjr
	 FvHgP/3+2tv62UY8wDi15csHPQYrxJiKg/U96Ge8pZ4F+nivec3Av0hQRk0AWNyKin
	 0KSUWHujWMEryJrGMuOm3MqvXQ/ry0TGZYmI7PhsygJ2XUhEXof4J1wyLuc6Tc2+qh
	 mIAv6aEnxV0fTgXxF6FH93f5JrIGfVNP291KIXaxVqhFKFpYFzaD0PktDfQ2eye0T2
	 Adx3kA7ewtOHl2tHkJD0fzqqmkyrY/9qZVGZm2P9o59cN74NwSFNq9Kq3p5dfTO/CT
	 HMm89m6T12x5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40E5483B9D;
	Fri, 12 Dec 2025 22:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B6AB22C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 22:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A81484051A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 22:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5mOegcAigPd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 22:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 910CC4018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 910CC4018D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 910CC4018D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 22:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: QebWhCn/QwufLxOeCnfUgw==
X-CSE-MsgGUID: urId80q0RMSfYP3/pmHEQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71446758"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71446758"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 14:37:43 -0800
X-CSE-ConnectionGUID: ocN57cNQTfSYWwlT2BIoGg==
X-CSE-MsgGUID: GRn47468RBuLGV1GzVNWPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="201378795"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 14:37:42 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 14:37:41 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 14:37:41 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 14:37:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S1XGkzK9aHz6kKBRmdtHY83Itj+kP2VG3ApqDHBJWDD5s7JjAt/vdoAhFxTHV5xEb8OlhluP5FZR5qlS8eFxJcgZvrGgD2VzrnE5JMCjYfFKG8xna2/aYclfTh0MNOmFDBbKqYNFe4GWuNYTRg8v3slNXK6Gjeci6xzzOgO/GPm8j2UGsyUIXAyxyN6qj5QPBU2/uxzIxoG8bLrLH+kS2kf9tvkkBPQQE4k4I3C7GfaTeHAX5khKcvNg5XiNrhRzP+baoHnGrTqfSvbbF9jMAMv31dWKKy/JlqyBB31KsxqXm9uoWv8Wo7/ST4CUeJ76sQ/klfst+InLrmYLNNc4Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JDp6IC7kynuTzB/KdfnwMJ4FamkkdZZATwvtdO15D3g=;
 b=QPuswvSDsio5Q5mfsOIGAAC+N2uOngwklQXpjpmFvh3bz+0JI6CsNvS4rL7bhdWaDqZ3ASNdGQEhNGS8QuI9zzMaHWohmf2bwdOl9C8FLy/gyXUduLJRb/ZdRGZvrovfvqRYN0axbZkyFcFs4r3Sfgg8SJTUYJRU9MUCsG7hx2lcMTR8h2T808Kf4QZvoeGvB8qNhoBKyhFD/qHIp47obUBAEQNYcynA3rDw2quvC5Z7jYOmcBvaH0KSbbsDJNopO6YXMY8oRqBoCXIgedtUPE629brGohWGAtUqW7LTz6Z76WNh13ynh5v3si7VZfRK7FOM/+2jdemxxcv7HCExaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH0PR11MB5031.namprd11.prod.outlook.com (2603:10b6:510:33::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 22:37:32 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 22:37:32 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Joshi, Sreedevi"
 <sreedevi.joshi@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix error handling in
 idpf_vport_open()
Thread-Index: AQHcY+FUAdOqLHJWMEyParC1VvvJarUQTByAgA5br0A=
Date: Fri, 12 Dec 2025 22:37:32 +0000
Message-ID: <SJ1PR11MB62979B75F424F758B262BB1E9BAEA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251202231246.63157-1-sreedevi.joshi@intel.com>
 <aTCNk9wSxcNQmSSE@horms.kernel.org>
In-Reply-To: <aTCNk9wSxcNQmSSE@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH0PR11MB5031:EE_
x-ms-office365-filtering-correlation-id: 39b8f3ee-1ea7-4815-a3c9-08de39cf0a55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?G8zSwv4yElYGJtveU0R4MQDtpQ3S7fUpxra9/P2zOnpAB+M5sm16t0vsURmy?=
 =?us-ascii?Q?JKuYeEXzHKN9nBEPXGFjkHWWf2j+91HVdbgVUiso11u9QG5VyyfoV4rCiUdr?=
 =?us-ascii?Q?8QX4iz+c+uc0IGHT8anHCAEU4C0E+0AIENAxPF6Wnt5xcIYSa1NatxZYrZbZ?=
 =?us-ascii?Q?MKrYSr3+14HvFNowZrZcn6jpqJ1l9CIpq/AyIDZ/SoFqJxEiBilMI7pAsKJZ?=
 =?us-ascii?Q?IQcKjjQfKDaU3Oy4p0Lknx+I3TDlb3bMs6DofLk3+pYKi9PvHjEZZjLwkyYG?=
 =?us-ascii?Q?rQwbwSfwZ2oUc/K+10XemQSKUqnniEBd052MInATFpFYS5ti4VJ7KJoLHZy1?=
 =?us-ascii?Q?hKL014GsdvKgkVM271sFVqZoHC6Qm4VgQKaKalIQDk9nBFhNazqqniSs+3uN?=
 =?us-ascii?Q?3tkH4Bp0gYyvd0IXzGa+1iyDl/npqcMmZuXNttSiPQezSb8rRBm0dCR0a7EU?=
 =?us-ascii?Q?OJb/DycSN7FXCnS/2lGPlrfk77kvJbfgeS/AvDBaFrAjKrrHFaR6hVv8S/pg?=
 =?us-ascii?Q?JUylV27zwVPSFxUt4g8SIhzb515VXb+YJAwZ1pzuuqCuTAwE+QC6BIoeeXsb?=
 =?us-ascii?Q?5CCwhJLIFU0RumPgsXwXZxukxEWPRcYedQKhytRda9Cetv4Iowey2nz7p21K?=
 =?us-ascii?Q?uLBUK6AXQyuDInjX0X5Wf/9jHhyR+zC1vsux0w8bYQjusJCduHjZcs94lnJI?=
 =?us-ascii?Q?sU7au+UO7CmXyufY0L6a/jtlgufnFz5BBMNR4A2aGuVT5x22CtDrNr7JHicI?=
 =?us-ascii?Q?i4wn5bOwHF+fR5zj4hsMbL70+ZuRRaBOWaaB0Y77Z6HYTzkXDIs02DhsLswy?=
 =?us-ascii?Q?6h6+9TRakAPCYJHI9Jql1m/JNkugzugom9IbnOdnQkmuxD/l0cTPVk3WkJHn?=
 =?us-ascii?Q?FmAVRvPzriZxG4ikBfYDqLNdqjTQ+YF5Agqn6iRDXPZWrfJ9C17rtMhqu/AA?=
 =?us-ascii?Q?MQmiyf2YE4LND0xGRXB2iPxtlgqIDQFR+TQ+g4FSKpdQbSwlnzyLC1U2Xfi2?=
 =?us-ascii?Q?2kWr7dbAE0XyX2t0DS/PKteTm4fxnIRT7QasnNaMR7Q63Cie5R/Pti2DQgoQ?=
 =?us-ascii?Q?LlO/TXSoA12y269wqUljjOdz2Fl0GwLTZLOXPSIwZ/Vp7oxjMhEKOWFHqUWF?=
 =?us-ascii?Q?vNNlXnUw1uBu8vtVww8DPi394Et1U+bglEsdx52oe8oSXQzISOHaUjPwjqwv?=
 =?us-ascii?Q?uHcc766FNCOldt1+/byTuA4U+bjHHdBTQfELFnk+y9i8uP0W+5qb53xYrxbe?=
 =?us-ascii?Q?aJnMe4xKpBV/q3xfLl8q9MMBMCBFGtzLJqYDpS7NjjwoppFDZMEt1MB8yDsf?=
 =?us-ascii?Q?z92nqePwFprb/pK8dMR6uqabI0DegeO2jrzmHn6vzM0HDcb0Yn32i+RIdNTj?=
 =?us-ascii?Q?/MKzKIpGklS9TBmklos4RmEIb13dxu3tZiNimYjdpcezfon1bbC8IpdKA0FF?=
 =?us-ascii?Q?wk0UKXnYdMcOvO7+Qa6R9i3u1wqaZ1cnFg9e2DT9wpDWJbDkQGfDjrT3DWQs?=
 =?us-ascii?Q?IBUgCC0qzFse19IPgWgNKaA9ukHvO/0+g0lr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sNftNBiNn3++TS9s01ZG8bfe1KhK6w5qAHbk0q1Y+DaZI4oayFO+Hr35gSk6?=
 =?us-ascii?Q?SC3svdhfJFcAPzet6/u6uzmQxRZB17spI6+m4EAjtlgiHnWafS5+gsc846Gk?=
 =?us-ascii?Q?k/s5mxNTUwMQ+r/tWcjOHmMfRqmU3M+LOOutTOtmXE1Bqfl66dgVRUzeOUWL?=
 =?us-ascii?Q?1VA0sj4e4n1nixzUPzdqJfNxTjS0vnsD6HQeUXyQVgW49tG5OoCzka2s17+9?=
 =?us-ascii?Q?kAE8QXmXD9nXEk4VaaRo5X1HIk2aNygMmd6hViKZJ3n7Hn8CsCEDnG25DC91?=
 =?us-ascii?Q?DIF0Snwocomfk0JiIlcZzE5Z1bLPlJ1Y4MvLeZ7lg+EdWhzu1pC1mYvHt6/a?=
 =?us-ascii?Q?81VLpHbN7DuZ9nGesU3Xgio866XvY56b7rE1PbMP8K/Y15Rgr8bIu6qS6PPq?=
 =?us-ascii?Q?ue95QCjztni+45C6dlMwUL4mE/ww++6a6CPeC1JlGMx9bdgVKa4f6sx8jBYx?=
 =?us-ascii?Q?TW1k7+FxEypcYXDMMhiu3aM2k7YAbil2F2Ep57gQyYyDWLrD3OcVx+el8fcf?=
 =?us-ascii?Q?3wpDSGEE9GY+Ew9+fF16SGrbggy9vR1io4w0vJllaIPEqVxq7GjQlGzYQAhK?=
 =?us-ascii?Q?LiivSLnI7tO6CCANGXebKLzohSreygT179Vd3Rvg0JfDV5QshODI0s8w/HTK?=
 =?us-ascii?Q?3OYPLQ6k/LNikVB6abewkZF5l5CJ1hyhqmAYY1GZCY2ckb69SqUSSKwnxD7L?=
 =?us-ascii?Q?PCqG1nT6mKNdRTkJIkzaA3fRmrDm9UkhusI5yXShGSim3UP4TmXc3MGFebt8?=
 =?us-ascii?Q?+dX2A6AIvqlAUguMyY36XPcW11fC4ZMcw1NmQLp/Ex+DboO5T8/8CWYJsa5y?=
 =?us-ascii?Q?8f8MQaDyoa85FwbExpADGz1JEJ2kIJ6+poPRfWJyLoSSiT9Azb41KhiUB9Fi?=
 =?us-ascii?Q?BDgczLrbg2j5TxjIu+ggbZelRuyDAfJPFGxiMo8Qvzpzm3F+JwLhqlMsyoHT?=
 =?us-ascii?Q?tMEhYpN41z5AbLHhmpvfulDSf/WVxlxcUZisugjdl5Cb4Nd6VM8tWJf+7CTw?=
 =?us-ascii?Q?060o8L6sBIjrxQWjYolM/aY49aqJHcMD4N50wMfxmVU8jFNc4tSdTtXKov6S?=
 =?us-ascii?Q?VRoSgjX77ZMo8pL6EUNY7i0cMkE5kErX4XZqRwOVDSeYQaKTezzZD/u7yRjK?=
 =?us-ascii?Q?HxA4eUWq1pAhOXs/Z4RLV6ySzmgrGNBxDrh6U6EjCKoXcsY+ptnGIyG90dnt?=
 =?us-ascii?Q?/evhcGmFHM7BDMJ81dsdWxh/1oiWy12699wFaVBH4Zx36uiT62KKxp4HvkHb?=
 =?us-ascii?Q?Ap7VzEkBsxvL7cerF4xjomE/BqUCh+5iGX7HtegmNQNVtvn3qKJ/q51zkHLf?=
 =?us-ascii?Q?O48cMxg5wJmbfGnVgeyDv6DHmjMw/8zVeaA+HinxX2t+0P6GdcLZofBwLdFY?=
 =?us-ascii?Q?0O9YdqKUmiHvmztCc+riicB2Jnd9KKnwd0KKMM21hY6BUMnvznTftuFJFksU?=
 =?us-ascii?Q?ADDG2P8OK+QhQfxeLn/ySyY28oA7KkOh3ef9mVpW0TA9CpI1CXyYNNXYCDlx?=
 =?us-ascii?Q?egwq+JG2ARZp+vRYYIPiYdBZpCcwxaevds0dL/HmAo4tOKCxx+ayAKzX40Do?=
 =?us-ascii?Q?ze8G1aBoFZX34GRaXx32CdFCOWKRMs4k2ftb7Vfb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b8f3ee-1ea7-4815-a3c9-08de39cf0a55
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 22:37:32.7043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XdjPDk9+AU1om1arOSaV5+1dZy1eCOEWRZSLqZYc4OIDIvyDCJEa35gNpUmWrAqVVWoSqqKt0iK/5EIVEivHtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765579064; x=1797115064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JDp6IC7kynuTzB/KdfnwMJ4FamkkdZZATwvtdO15D3g=;
 b=bx+1QO8poPDX3BUzsoMZqFcnquxDDWpk9P9CL1RutubxOiCwhpY2qr8q
 H0gzAbVhkX/3z3NSgEreBL956RetQ3QpArMXDr5DXbnIZIPiXsIK2XMx2
 WMs3owAtOG+m8v+vSlm79c3/jUNOZmDGsi8D8LnUB5gaTmR9m7QwqcTIL
 ePZXx7AgZRU5tWLwhIklIDLIvzz7ijyCCRZcQqgBtLNaW1BiP7QHE6pW+
 DT2GqvFtYPFDJomHiyxT98T+zVh3dLt8NYHCB4FgBSWU6K6iYcDNEMKRO
 jp3wl0efiCh9EcJygYonTWU43AseR7g6dUnXda4vpDBuuXc01emNFalxj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bx+1QO8p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix error handling in
 idpf_vport_open()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, December 3, 2025 11:21 AM
> To: Joshi, Sreedevi <sreedevi.joshi@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Chittim, Ma=
dhu
> <madhu.chittim@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: Fix error handling i=
n
> idpf_vport_open()
>=20
> On Tue, Dec 02, 2025 at 05:12:46PM -0600, Sreedevi Joshi wrote:
> > Fix error handling to properly cleanup interrupts when
> > idpf_vport_queue_ids_init() or idpf_rx_bufs_init_all() fail. Jump to
> > 'intr_deinit' instead of 'queues_rel' to ensure interrupts are cleaned
> > up before releasing other resources.
> >
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> > Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
