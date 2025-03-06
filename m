Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AFBA545F5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 10:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C523D81521;
	Thu,  6 Mar 2025 09:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hc4Gp5iD57BV; Thu,  6 Mar 2025 09:10:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E982281518
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741252241;
	bh=ORG0EQ3X7a7pGfSzhr0EymhuNAkqsY5vWJq67JE9ceg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eC7xCdu8OWVlah/R/JWRcyn8cE8Wa2Jl6x6lfDXrU/sHrJZjauESwxirfT6j78//U
	 HQzz1S6j4JGfpAp9WUON9duiAhBsP3MjBEc5TkyvFuxPvrbyZ9hKmi4Cs4v1EuKcWv
	 GJ7clV64RkNA3cAQ5NEXRN+5boTmpDbO8JnZJLts5G5dTjGw6oTOUCg19E90kcV8xM
	 t6rPpLCPNVziNzvzLQJt8qZrcRb1S3uXDf3TiCITu84llpFH8/iZF7bJJEJWsDJ0VP
	 +YlPnyKZwExEIiN07LALaiioGxNTCKpr0KVeuNLu49/0L62WnRhRz0RY6+7fV7/7cx
	 zeQfD2fPje+aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E982281518;
	Thu,  6 Mar 2025 09:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86221194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 742C08149A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIRUoVXhSQzg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 09:10:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A7DF81470
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A7DF81470
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A7DF81470
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 09:10:36 +0000 (UTC)
X-CSE-ConnectionGUID: hBWqTguVT0yjJa/6TKtukA==
X-CSE-MsgGUID: 5aegp1OcQgyvstNdbbphcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42490594"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="42490594"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 01:10:36 -0800
X-CSE-ConnectionGUID: TRMqWUzPQxyYdjB9TQdJlg==
X-CSE-MsgGUID: rd9EPW5oQuKzV8DMrgIO9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="119466519"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 01:10:36 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 01:10:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 01:10:35 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 01:10:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUnXANh5dgUt5c88rZXlCv1o1jkrYdhz9hrQqd0Y2zY9dT1G85ZDRNxd5PTGBE0adWgS5kFWEDrk3Yr/s+rbOFuScbzfZg7Muh5Ec6hZUwNsnY//S2P+hYPPi00MdbHVa80ZhqwN840853df4ln6NWlFWv5xUsLd/5BbjwPtkfaDAAjnsV46twnQ3Wac3UGMC16fPdMoutgkdwTKMMpHVhn4j4E7CHqpU+FGr+lX236m0MHr2vMOdS1fL08VCWGp628aZYqFudk/4390Z2R07hTqbau3RTloQ26YuVtRMpoZtQ6Q+561v50b0OqeBw+hZ2qAMzyG+Q0nB1jKji45Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ORG0EQ3X7a7pGfSzhr0EymhuNAkqsY5vWJq67JE9ceg=;
 b=IjtA7r0oRcYZQTmaVB1lViozW21WqqccFPTVBFN+i3k7ckRe9NV2BjC+KGcblIQ2LMZoXBOQ5ex70WinUpajt+K45GutiWqx/06o0Gvf8J/4Kry9KmrZxtlJ7/YTDH9zrnlCAvR2FJTCZnJHaJpxw2t7gir72Jxq7e/q2Jl4wvEkqjdIFrYIuanjC2ipyAY8B0SZGpVomi/42+J4vTkODNO3Mooj8zIEqCbM5I83jzn3wDgygE68u2CEi0iKxDyGpMmrKPTT5yCOIvmpVSjUNsWIwS5tgeQWWwn2WSJ1BlYyax7SrE7902uTfX3M3JOJCHF9ed/0idbHVgtbWZF5Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 by BN9PR11MB5323.namprd11.prod.outlook.com (2603:10b6:408:118::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Thu, 6 Mar
 2025 09:10:31 +0000
Received: from CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::1be9:1746:a35f:7e6c]) by CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::1be9:1746:a35f:7e6c%6]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 09:10:30 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Greenwalt, Paul" <paul.greenwalt@intel.com>, Alice
 Michael <alice.michael@intel.com>, Eric Joyner <eric.joyner@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add E830 checksum
 offload support
Thread-Index: AQHbUW7QZt6BRGrVL06uiSMxdy/3/bNmSHFw
Date: Thu, 6 Mar 2025 09:10:30 +0000
Message-ID: <CY5PR11MB625801B244213D3FEDA181B28BCA2@CY5PR11MB6258.namprd11.prod.outlook.com>
References: <20241218091145.240373-1-paul.greenwalt@intel.com>
In-Reply-To: <20241218091145.240373-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6258:EE_|BN9PR11MB5323:EE_
x-ms-office365-filtering-correlation-id: f219c574-8501-492c-dcf8-08dd5c8ebe95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mIL0bm9f/XmY3N810ggYAFzS6KWTEE8H1J/h/EAC0z5Q+Bf2UGuHDGR23spJ?=
 =?us-ascii?Q?UAjx52CIXzqsnSyYTwgDFgQWhB9qnZ7jMlZW3y8y87AISddZj2k8aUO1PFng?=
 =?us-ascii?Q?aZxeXo94hfoi21HXSlV51g41t5rtMI0H7D3AbBkiJ6nzMqUjRq0Nzo1JvhqU?=
 =?us-ascii?Q?l+N3IgEhOK4RD0xWiUaAV7aznruI9EpSJyfio6kIsQZKnPuWQK/jDZlh/pWk?=
 =?us-ascii?Q?608/eO5qjP4UdDIRQI7Musjnpl4mHQRGZoIxBXI3ertj3rlAHPfPPjAHHmrh?=
 =?us-ascii?Q?+fn7wIlg+LQBVrBDlu7hsPHiGc9nj7ratH4a1nj26qbAy8qZQZPWUa0Haop8?=
 =?us-ascii?Q?lgHfsUe51JBqgn3haRLgqVV6S2PbGbcubP/tJpJWAqVn6TbNI1ll4kBPj623?=
 =?us-ascii?Q?HvjzJsj2AkCXgZsRvR6W7oLd+6qxl8prxt1RnAN6d/gcu6XTUKHOCQxcynHM?=
 =?us-ascii?Q?52P/BS4r+r/c2EkGBd7nqQ6MQ1yYaIFtwgwPS4YLeckBqFxMBR7P6Cks1BUV?=
 =?us-ascii?Q?V6p3W7ZsXATUybSt/I7DoPx9vXuMjXlIM9hgj6ydkDvGhaVV7FOo7co1fAjP?=
 =?us-ascii?Q?PQmJxIihFwM66Nh4wmyv9SccxTK/fl73HUY2d9KGfUVZxy+of6gYkVzcr4GP?=
 =?us-ascii?Q?xpfXtl2AI0OUlbjpVqI7XBffz1+qUqN5Vl70Wr/KAlnz6lKbNloR8ZAVfKwU?=
 =?us-ascii?Q?wBpDWZ5IX6vbE5VWNM75zpI8ZxF6gqkgT/ROD7PxqmSSCxhNKuIFt7upjS18?=
 =?us-ascii?Q?eyNZhp87S394Tjnr1srgFlq1vnJeW6tXqLJn+IXVCU3wciQ17XCTmGOM7p8e?=
 =?us-ascii?Q?L9XXy+hN0PwExSoUYvXTTHqhvXYUiOLpDbxQlT2tFHH5OOPe1VgTIxDBNZ5d?=
 =?us-ascii?Q?SrWhvE4s95zjYz7IutFijmf2T1cmKezkeuRGbr35M6GCge5fnRqxej/YzXJz?=
 =?us-ascii?Q?n658iuIO6tLkKHjJMiNpczVZ9gRpI/kFiw26RBqYB/9x4VIkdHUl0VHGCT5o?=
 =?us-ascii?Q?/Ir9gAZkzbVZDYflILfiAEOKC5BYbvZso/nXwJi5E4EDvPlCj2wq+h6rBhoy?=
 =?us-ascii?Q?yjjrW4h4nU4dexJLgY1MTpQFYZR2tFLdjYb8GWsX7kbTg5hSWw+efgvR8Sve?=
 =?us-ascii?Q?mzsKx8EKcwDwqjbVcSctAk8VZWTVqd3EX/L21XQRuIwgt/QlUdEUjeat+B8t?=
 =?us-ascii?Q?0JVBOkc2ToCCFuyCuWf6SmvqKkfZVxMFxRjY5fMq5z/Mqc4VF+6PSYhttgkM?=
 =?us-ascii?Q?LhKmSE/VOXHdMIiBNligZgZvTcn9aIoqpKiJIcB+7E4D7nnsU/eCpXJgnyd8?=
 =?us-ascii?Q?ERyfzGWwVi+gDS55wkBeHfjRmjItlwGiV1FbSbDgxRirC1Gw4cx4BHnxR7V6?=
 =?us-ascii?Q?4pswk7JYHoTSXa5D4dWwLe+yqa+33ydy2v9jF62a8nQBIuF6VnlHZ6dYAS9D?=
 =?us-ascii?Q?H4wujW7DpaZi2lNAsRFKv65KvAKeJtqT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RFZ4ojfzzTRoqWXTLiH0USAoyh/rR+MdUPQFqJ2/8qqjLSXjLM9nA/y+kUhQ?=
 =?us-ascii?Q?sDiPijB3xfJEHhb+zqLb70b4K2MJ2uitNOqyc5UidX1QLwvJMalm/DW3mnhK?=
 =?us-ascii?Q?ovysx2fUHXXdVL21ZyqrWa4wF/h6ERJkzUvKeQqUa4aUOhZn6o6enMvRXe8E?=
 =?us-ascii?Q?zcS/uu7OMuDFXVpytdYj9bVeYqMDgBDkM1zrEbu7sxwz0plpNJ5XZLyodECU?=
 =?us-ascii?Q?vYzzSvgJxNCb6riLBu7maflyr+DRIQNTMdj+JzpyHkU5FMPeHEj5kRFtq3hM?=
 =?us-ascii?Q?5rTrdPxzWTsGarfdTeE+2wjnS4s3AUj8EMRTB5XPVJ0LDT5Bsf5nlUFxdtSq?=
 =?us-ascii?Q?2n/64nfL12PU47a2fErPtGUu9osTH/L98qG0o5l5KnGMmLlbPVC6OrSB3LXG?=
 =?us-ascii?Q?YZAXuSTTkl7seyvNeMo74PvPDqFcQ3WaLjAizqYU/2LUmXuOYcVogsjQrc47?=
 =?us-ascii?Q?2JgnDgPsjbCdff9NM5DcNLU+Nd4jl+MaiTvzWhjv624G4AZRx63Eteo1HEN0?=
 =?us-ascii?Q?yInH2XfflTIYxuINYKkUKrelj4ng462QerKDZlkYlZdt+XD72+qM0nBRwdxa?=
 =?us-ascii?Q?86sE6qYyfUPDHsl1QSNyLbzzes9a76oMbC8BCZYRVA4xKMo/lX6WO64PV470?=
 =?us-ascii?Q?ho0X/gYz0RAW2rVSovF5mXQhW+RDFoh7UYm/6OAHj79gk5yVggNmkwv/MT/F?=
 =?us-ascii?Q?BkFdzl6SCLjtjQeiQFOIbiTmdP3H0tN5JYxp9H473+RBq9GB3Tl5euNDZE83?=
 =?us-ascii?Q?htGFF88XvFz7wQAJH76mnizf3JddoTwDxfSqnxQv5j081oa7LkqYSAx6xhzo?=
 =?us-ascii?Q?wtD5KnpPevro1M1Obkm/vH/7rvScGejWxTI6aPC/l1JOmfAJLLA+qyxGwN7R?=
 =?us-ascii?Q?1gn0415lKBXtH6ZU3U9W8NPm0iEuhQQUGPE86Ialro6l/HQfy65gBZjJ6IR5?=
 =?us-ascii?Q?YZidk1cp8nkTk2wvhrnZ+2VpINOPD/DG+a03nEW+ToAfnWxXWaAqCLiBrbu2?=
 =?us-ascii?Q?RfroOUUmIwhZOBlXfTd8swz0/E6KntXWSxCgZhNMs3um7z50/aJD+f+lnYs4?=
 =?us-ascii?Q?UGiEZdz31cAuaCViNUWI2ja66x6AXY8YNeVMpyIMvUOtp5bAiVjtZfhuDW9d?=
 =?us-ascii?Q?jxpRyfYep9jRpttQsO5tIMUSUdvhHBMXRxYwd5rfPbC6k3d0vYDSyhneJ8yQ?=
 =?us-ascii?Q?dnrmsRMt0Ess5tbIMm7r8hqZtji1LUTTlMZ1qQjOto+3QxVHDsaM1bkncuKl?=
 =?us-ascii?Q?1/pAjJ1tPpi1TlG71lztJD7lbNQ/P0cGfsWItSYTEqGAfKN8ZXZ5CG3reuwB?=
 =?us-ascii?Q?+GS9VO7WBKX1sGkEdX9O3ejZrRhvfLcAuyRLFMZRkcvJQOyTnV1to98z4n1X?=
 =?us-ascii?Q?zceuAiPQyPNc76NZA4diqoEirZ+vk7v0Y43iW+AElTRlSFvbEjpTGtpC0E1k?=
 =?us-ascii?Q?HVMy1cn+Fz1pFWY7/9yL/YOv4pqYztsnfMnnWdW6urNyOwxUZDcen6MqZ2VN?=
 =?us-ascii?Q?Legr2S/vLBPyGxLKla8FeW+lgOD+6g8PC1kiYekJUjqwFNdw5CHpjRRT5OhE?=
 =?us-ascii?Q?C5K4ysWLqPQ4thw7wzOGYqFFQFViZ6hKSaWoPNZL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f219c574-8501-492c-dcf8-08dd5c8ebe95
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 09:10:30.8627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f5yRJa1xo6VQ5D+CMUBuTe/3k8HnJ/muWR+TtX6dsTKCm7beaiVcsIRyVAEuQ0gZAMbPIx3G8JIKY8tILQUVlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741252237; x=1772788237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yA+cpwEntnR+JNOHrG6ttUfNGbJ0WR4iwz/INB9QVZ8=;
 b=UKOKhOPJcR57RnU+DlMB6uzBBQoXws6+tMs2yaFVYracZ5aHbCsQbTWV
 62rdqYrZZWtepFdI/04HUJ5PYRUF/i7ujvS0ULSOPfEnLw/VXltFNyDm6
 1PIWrr4RLwJY7vnlkKWXNE5xg2m/izaT4IvG/ltUqQZXbOHU6dv/4YUoe
 qUfLaE+3Qi5lFF2Nj1crW1Esi0sOSjaeRwM/+c4feA6K8ctcTxkIlduRI
 PewJEuAeDRD7cuJuN+RjSv0m584zEmy5b4RJ6/Lu2V1XaHucCA/TnD2Ps
 Q1kD0mPv2+eRdgiLD//1qlhPrHfZV9K4EmlVUoL7gJdSW8tOpHZthgF2E
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UKOKhOPJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add E830 checksum
 offload support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 18 December 2024 14:42
> To: intel-wired-lan@lists.osuosl.org
> Cc: kuba@kernel.org; netdev@vger.kernel.org; Greenwalt, Paul <paul.greenw=
alt@intel.com>; Alice Michael <alice.michael@intel.com>; Eric Joyner <eric.=
joyner@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add E830 checksum off=
load support
>
> E830 supports raw receive and generic transmit checksum offloads.
>
> Raw receive checksum support is provided by hardware calculating the chec=
ksum over the whole packet, regardless of type. The calculated checksum is =
provided to driver in the Rx flex descriptor. Then the driver assigns the c=
hecksum to skb->csum and sets skb->ip_summed to CHECKSUM_COMPLETE.
>
> Generic transmit checksum support is provided by hardware calculating the=
 checksum given two offsets: the start offset to begin checksum calculation=
, and the offset to insert the calculated checksum in the packet. Support i=
s advertised to the stack using NETIF_F_HW_CSUM feature.
>
> E830 has the following limitations when both generic transmit checksum of=
fload and TCP Segmentation Offload (TSO) are enabled:
>
> 1. Inner packet header modification is not supported. This restriction
>   includes the inability to alter TCP flags, such as the push flag. As a
>   result, this limitation can impact the receiver's ability to coalesce
>  packets, potentially degrading network throughput.
> 2. The Maximum Segment Size (MSS) is limited to 1023 bytes, which prevent=
s
>   support of Maximum Transmission Unit (MTU) greater than 1063 bytes.
>
> Therefore NETIF_F_HW_CSUM and NETIF_F_ALL_TSO features are mutually exclu=
sive. NETIF_F_HW_CSUM hardware feature support is indicated but is not enab=
led by default. Instead, IP checksums and NETIF_F_ALL_TSO are > the default=
s. Enforcement of mutual exclusivity of NETIF_F_HW_CSUM and NETIF_F_ALL_TSO=
 is done in ice_set_features(). Mutual exclusivity of IP checksums and NETI=
F_F_HW_CSUM is handled by netdev_fix_features().
>
> When NETIF_F_HW_CSUM is requested the provided skb->csum_start and
> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement=
 from skb->csum_start to the end of the packet, and inserts the result in t=
he packet at skb->csum_offset.
>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> Changelog:
> v1->v2
> - Update commit message with additional details.
> - Add newlines, and add params around
> - Return early from ice_fix_features() to avoid extra indentation and
> large if block.
> - Move and change some defines.
> - replace htons and le16_t_cpu with swap16.
> - Use FIELD_PREP where possible.
> - Removed checksum valid bit check STATUS1_L2TAG2P_S. This check is not
> needed since there is no situation which will return an error.
> v2->v3
> - Minor fixes in commit message.
> - Removed unused register defines in ice_hw_autogen.h.
> - Moved GCS and TSO feature fix to helper function
> ice_fix_features_gcs(), and updated logic.
> - Update to align naming with related flags.
> v3->v4
> - Move a check for GCS and TSO mutual exclusivity from
> ice_fix_features() to ice_set_features().
> v4->v5
> - Remove lingering GCS and TSO mutual exclusivity comments and code in
> ice_fix_features().
> - Remove unused variable ICE_TX_FLAGS_RING_GCS.
> - Remove Tested-by and Signed-off-by tag due to changes to patch.
> - Use ICE_TX_GCS_DESC_TYPE_M and ICE_TX_GCS_DESC_CSUM_PSH in
> ice_tx_csum() to set the GCS decriptor field type.
> v5->v6
> - Fix build error.
> ---
> drivers/net/ethernet/intel/ice/ice.h          |  1 +
> .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  9 +++++--
> drivers/net/ethernet/intel/ice/ice_lib.c      |  8 +++++-
> drivers/net/ethernet/intel/ice/ice_main.c     | 18 +++++++++++++
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 27 ++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 ++
> drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 26 ++++++++++++++++++
> 7 files changed, 87 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
