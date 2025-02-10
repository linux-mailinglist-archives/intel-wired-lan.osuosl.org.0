Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4D3A2EA9B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 12:08:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F18E960756;
	Mon, 10 Feb 2025 11:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v0quH5k-PfBC; Mon, 10 Feb 2025 11:08:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44BCD60762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739185706;
	bh=5Oe6BNcG7jpwRA9qiA5NVrPm6RHpKu9ypi2h4FZ6SJY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GTD+2VYZ9erDgwdAorRG6wwZfUiSQF/2mpqTKFJlD7MFQJWFAR7yfVhOTy0ECvnRT
	 l5Ufx32xb0hCFP9TjS6q1PxSrxq9A1HilrQOihRPATOgdf86HFzNLKTtKRvHqt0fHn
	 QGl0Jp2zOOCaUwRrdf0KEERDRkfUubcCJ69tLLitbMu3B24UFMoWspML2Whreni7tn
	 yt1UZre9Y6jtcjKsCmqfKaJ6uONJV4jr7B9lsrEKgE4Ck28fv8JUbvhkNiHpIOfEC9
	 2bVXmxJ+S59EiZPKhbTnT6DntUCkI1FnkoNwjKl+PaLEKs4XCcggu1L1jwY52I1m31
	 GGa8/nT4ckK0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44BCD60762;
	Mon, 10 Feb 2025 11:08:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7981199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5E47606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:08:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4R4za7MyMQMd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 11:08:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1ACB3606D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ACB3606D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ACB3606D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:08:23 +0000 (UTC)
X-CSE-ConnectionGUID: UyoBiAO4RVmLJ+2zBkVyIA==
X-CSE-MsgGUID: mCq/iPZAQXKKGdPJdz1LeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="39625934"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39625934"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 03:08:22 -0800
X-CSE-ConnectionGUID: +6IbBuJZRXaj9FCcUh2ItQ==
X-CSE-MsgGUID: yIQls2UVTY+zw1QH5Oga5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112112322"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 03:08:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 03:08:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 03:08:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 03:08:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FALkBavZv6hW+7DjgIhTde9PtsgQxB5coJwtf2g3iumC9ZhAMlFdoS40+aqBNeVZFQhewo5EJJ9NcqTQ0U0wXoJK/BIDbg6Ub7IClj1/jk+V9CtY3qFtSrL6qJwfWVkr/2+gmqHFNot2E9XddvDWfs2ZXu6km1PH5bqsIInUSCesqATwaLpQStBru6r6qkakrhAtOacLDDKazs+ymLD0aTnROcFsOp+pBHXootdq/RyzXDQsRVhWaUYJeO+kkXqmTac/RvhWUSs/YwaRwiqm0HaAuMBXfSkgBad0wOM0Lv1CXPSIAq0jiD5xCRj1StCWTLarWiyYvJLDZI0o3q661g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Oe6BNcG7jpwRA9qiA5NVrPm6RHpKu9ypi2h4FZ6SJY=;
 b=wvxI3qqcNGxABuPQ6LU1qQ9eoFsXtN3xY+VxRt/uIcujnocYVfG70eZIrTLgJQxbbb7mDahxIxOjQWYbrYkLPR3YSy2dh9eW01hB1FWk9YoGwzqps1WeC3JEC0X1ZcGrqMHmZ0fmq+k5PWsF3JXmBGaZq2bfbWWdAN6M46XWGePuTVfyswOOotOJRStxlymsQn7rQeTQWRmSlWn2pe47/KwI/VAEraTqR4SAlVFYf44eUHzaEr9+IgUL7uoXNRHDsT9nkZZ5cca+IMET6i3pEQgF9GCaG1ItRAZ6nQouwe5YQuErlprh22Oy++crZVZvx2VD4AlL1i8t5MX7LhZWCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SA1PR11MB8490.namprd11.prod.outlook.com (2603:10b6:806:3a7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 11:08:20 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 11:08:19 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [PATCH iwl-next v1 01/13] ixgbe: add initial devlink support
Thread-Index: AQHbdk66bpVzRXjQ8UySbS8HV0FvArM7rqAAgAS8ptA=
Date: Mon, 10 Feb 2025 11:08:19 +0000
Message-ID: <DS0PR11MB7785C3C05F467DAF4E6955DDF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-2-jedrzej.jagielski@intel.com>
 <20250207104702.GO554665@kernel.org>
In-Reply-To: <20250207104702.GO554665@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SA1PR11MB8490:EE_
x-ms-office365-filtering-correlation-id: b8d85bcb-2276-42c3-3894-08dd49c33a0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3vK5WtEFCcY+B4RvbcCyftd9i/oGR8bnPYAygKvZZNCGWkeJ+2+CLaHZwzjK?=
 =?us-ascii?Q?deOq3GPfJcrhI4liwRM51d6Bfro3/qq9Zp4wogwlJ5M06tbp2qaXJ17psmLH?=
 =?us-ascii?Q?aVIjKeTRjNljd5FUH2s9MSdysuPth+zNROfAZpmyt0UspkEWogqt2s2uvlR4?=
 =?us-ascii?Q?hx/3XokXSTjSVmYGs2gS8btYU79ryZQAB5lQkQoZVzDfHzDAjXYe4HuK6sgp?=
 =?us-ascii?Q?5aw766Llwv07LRFiOgMWcNEvlqlMvl4Oht2VDKqcSy3NErhCqH6Pc4tMS4J8?=
 =?us-ascii?Q?lwWeRlbj3KiHiOawS59pO78wVzGcWlypvGDjFCTFd39Jd2kj+x2LhN7IS2QW?=
 =?us-ascii?Q?Cx7jSd/6EUTgd7zEVt2HVezRXxOh6eq88MyaRMGGfLaZlxN9UppMCSUDoBqN?=
 =?us-ascii?Q?d00WmOkkJsTav7vQ/t17x1FSqmGm69oQTexVXaftpXNFsVOVvd9Qo/0LwY9R?=
 =?us-ascii?Q?l6SOclOm66M1LJMubtbzR7+3/3JOOqELamDt6QW4UUu6M0WWvb1QSB6RMRbj?=
 =?us-ascii?Q?GhdjoVEeEN7UuY7rw+npazDnJGpfFVKKKvNbM22/CCFLF9YJI1L0ic8qXZna?=
 =?us-ascii?Q?QaRypBb5xVLm4JKpabHuaxJl+zi0PeKtJUXGdwQdOrO/hjBRh+mn+DaiOu+m?=
 =?us-ascii?Q?zGN1ckM6Uef0D8ZDXq/0Vkc9Ip3URnBPod9YqMJL9V6JrHl6c6GC4yFLi3sM?=
 =?us-ascii?Q?bRpBXcwC12pe5MXA70M9aA3v9WpmttqM6GcrdbOPGFkmMcfgoqaaDYT2gufB?=
 =?us-ascii?Q?LtQTjKGudaQquVPAPIxVcMZxWkQQyvz9m5fel0VBDNiqAbmvRSyIQ5iyABUW?=
 =?us-ascii?Q?JKuf9fqS5PlJ/O1xxO1le5kjrSqaZd3bXQtb43NVtLrv4F5oS/PrNzLYmcrR?=
 =?us-ascii?Q?cN716rmvSlgU2MrmTf8i+w4YADk5Wv9B0BNhV5XWglxMvheax4NSZZKA8c56?=
 =?us-ascii?Q?OKpNH4MzLbU85B69whfv5d6wMCMMUT0MP1mRb2qU3KDC+JN8ZNIG3UIcAEOP?=
 =?us-ascii?Q?l4fHcedwEoQ1P5boh0l1+oq902DbygQfH8k7euZwJhsTlQ/Z1bzsxn2gjR2H?=
 =?us-ascii?Q?menfbSsiHrhrV+rU5EhbjGY2FFrn+1IP8QIZLZN4VPjavtFeSF70wZcI0F+N?=
 =?us-ascii?Q?Bz4fjWl37KcL39/OUiJh8pxijlIa3H+y2nr+m2H2lzXEpgUhzhObcDFsbJfw?=
 =?us-ascii?Q?VN5sCsWkzKQB9b/eEhf+SmSY2u8m6OC3KVA40zNVv38YKBjcwAEJh8+gTfNr?=
 =?us-ascii?Q?6BG68/psIv3WB0i7VcdOqgtciy+jShSnndou1QSdgmxAdW3P/3dhCvDxdv4I?=
 =?us-ascii?Q?yNYkw2G/knvxiyml3GCKya56f5vgOtZKQUwPe6lpJsz59XSgoHIJ4FDz2Njw?=
 =?us-ascii?Q?+SLieq5Edh2I4QnERY/OaysqpdPLef05mFvZ8V1CQ8Ju0TgjMT0IPk7H/d4n?=
 =?us-ascii?Q?V+EagcnzNEeKgF6LycqpohautFeJAAH8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?076+MXq+M5tH8aNCqM/+ShICthL0/j88uJ0zaaJFSyoMK33WoWAwicJZqbrj?=
 =?us-ascii?Q?mGDzLoPUlkkrNkmvF7z/PfCac1XQAstMJfkE598hNt3PrpI7VWI9mYmWRcFq?=
 =?us-ascii?Q?h3UVK/PFO6ZZYUjvSVgf9m4p+JoCQRon0xAc0bZN+3fwkVYGWacyGWeBCgBK?=
 =?us-ascii?Q?vcojsCUId4/6br2TPIyZbqzmgXrm2RJdUyzde0dZipV1SSdy3NH1kQ0H1cOc?=
 =?us-ascii?Q?nqA0Itu/ov/aU+wVjIEw85Kn8fmVLMyP9xd6LdhQK8OJM67RAkcBpVo0dryY?=
 =?us-ascii?Q?pItcZMitVlF2/2JtBQt9SrG4cfqrUC8YTOAPvZKdDLE4Kb4ZFL3qV6Icb9fC?=
 =?us-ascii?Q?hlQjSCVm7JoOQhV+aAqguJ+dnh3uAGa1ykU3PhP5ZIQluaqsc6x/ySTVzqJp?=
 =?us-ascii?Q?PFqDnU1OeHWFpgRu8hOhkx83veUGS+Wx4qFFbCajHQPXyTRDtcOEbr2Wl4YY?=
 =?us-ascii?Q?GF2QXq/mm6TMDFGw84SlOkA9DOzC5CRRt7L6Tmj+wtM8EXK9MGGNuLlwTDNJ?=
 =?us-ascii?Q?d4MxsxNveiR/gwKcQUS9O8B0dGinNch3IHqri/Nn5uyZNAE6sLjSQaLXG9Zl?=
 =?us-ascii?Q?KqzwVy1RsVJl0FM9krSoNJZBA+VY/gjhXRD+9zxLdaTarcAw9zVU4+DCm/dp?=
 =?us-ascii?Q?xj0hHEWfPYJiN2NBOdfBVjnEEjZj1VVEUOJzxeYgPLG4oB9n9jG7sj6+XTjD?=
 =?us-ascii?Q?Wco+tx6VxMciC2GEIQsM32nEnVZ4lgfWG1W8cuPX6e8xAbqRLysN4/g+oQEv?=
 =?us-ascii?Q?dM3+Q4QOaBDhlFXNKaR1GxhkCzMpIFP0Wsd6bp52bIdWiuV3mu7tP0BbfxOy?=
 =?us-ascii?Q?K1u6DQWbqpWg1RvQgwsPYj/jNiueIWwNbX4vYPcujTOP+aKndaCTV/9bpXT8?=
 =?us-ascii?Q?7s6YYVyrMd2Ekmv+iJkKmuItk3a8nmRuCIBmUi/mq9xaHZwtaoZgdlXDsqX7?=
 =?us-ascii?Q?HjURdZcQPXGj71tqGjCQupqP+kO6gFfq6D0a4Jy10bk41n5XTFsObqoemxtj?=
 =?us-ascii?Q?nYrYfpzsAAcVZtKpr52raoEUPadwvgtCmeGw96VI4vbv0fWjGXs356AR9NZ2?=
 =?us-ascii?Q?bkhyX+/eNCaK5hB5C7SQYWuP4cOAe4i4u27RbrKwYQIPtORWWoMXSqf8ua3q?=
 =?us-ascii?Q?sFvKSkTX2oA8eQpiWPOMnacUz9ExzAD1OM1gCK9Hlr0Dps1QdmIWxCv6pTHd?=
 =?us-ascii?Q?7D/yF265cX/sv2JWVj3/RkE5mVGJTlHgaFO9AWa7B39bu27bxHg7fd+2Mjwg?=
 =?us-ascii?Q?j38ng5dHYQ/CUr2oNvHQNixLEEjfJvvzy9OSocv28UkXbbIXqvTRGzqVyL5V?=
 =?us-ascii?Q?j55eAISlckwt+pKNtODokfNa9IovVWaDs8giwpeBBkZfGz9FR9nZxvrAvkpd?=
 =?us-ascii?Q?s77uMB/eIad8EA3hpAzGzsxWWne26cRxzvCJLnXQ8BULVbl4Ynh3a/9MFDRr?=
 =?us-ascii?Q?gGMwRBYsRz8XzEgPJE9rWupaZlPpOk0uqTKKnlYFlyXc32Z1Oe3GpoMAK52Y?=
 =?us-ascii?Q?hOUAwa49E7EOSuVhcqhqhHBsPb6TdmXa7cLC7pEhVoKL0doV+a4eLh5D9dvE?=
 =?us-ascii?Q?p1B0cFTWv2qIz7u/CwUTuRuRm/KLVoqD5MpqV0DI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d85bcb-2276-42c3-3894-08dd49c33a0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 11:08:19.7573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DHRCvYSfZvykaVzm18K5+Hez4B84n54dMdt5erNleujul7NslW01ZDquSvAjVMBlC97si3gA9z4jaHfK55yt9hsE2ZlKGNlxDLiHJmGx3TA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739185703; x=1770721703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Oe6BNcG7jpwRA9qiA5NVrPm6RHpKu9ypi2h4FZ6SJY=;
 b=gtWkQ769lN/YDAVQWryrtufpuaV0hTVztgaJIwvl7pqVg5mkE/ETGeaZ
 XgGm1Sl0QGL0JzSDwTHffMo/Kwis94hqGGwEQ//a1rff7jNml+mkadE26
 SSnbwo21t1OrUqsZ9two2vbHF5BNlPbJjUFTT9I24sOes66QgBUcx550Y
 HorXY7QFIsK9UlArDry2gGxn+qcAG+Q1os21ZrL74Gw0PsWeMj3KhydR7
 0H76UnXrJny3piDRwbyLGy/Pm3XHlA8Nh8vSEmmcgr5fuvaoWw1y5hBYp
 /pc/0JsXbs76W+C8HRYI2Hl67MGYZCXsRL/fSnhQvYsRVJsV1W4gv/AzR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gtWkQ769
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/13] ixgbe: add initial
 devlink support
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

From: Simon Horman <horms@kernel.org>=20
Sent: Friday, February 7, 2025 11:47 AM
>On Mon, Feb 03, 2025 at 04:03:16PM +0100, Jedrzej Jagielski wrote:
>> Add an initial support for devlink interface to ixgbe driver.
>>=20
>> Similarly to i40e driver the implementation doesn't enable
>> devlink to manage device-wide configuration. Devlink instance
>> is created for each physical function of PCIe device.
>>=20
>> Create separate directory for devlink related ixgbe files
>> and use naming scheme similar to the one used in the ice driver.
>>=20
>> Add a stub for Documentation, to be extended by further patches.
>>=20
>> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
>...
>
>> diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/=
networking/devlink/ixgbe.rst
>> new file mode 100644
>> index 000000000000..ca920d421d42
>> --- /dev/null
>> +++ b/Documentation/networking/devlink/ixgbe.rst
>> @@ -0,0 +1,8 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> +ixgbe devlink support
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>nit: the '=3D' lines are one character too short wrt the text they decorat=
e.
>
>Flagged by make htmldocs.

Thanks for catching it.
Will be fixed.

>
>> +
>> +This document describes the devlink features implemented by the ``ixgbe=
``
>> +device driver.
>
>...
