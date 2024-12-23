Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B2C9FB388
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 18:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09C0481971;
	Mon, 23 Dec 2024 17:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IuriYOINaw-9; Mon, 23 Dec 2024 17:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47AF381911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734974213;
	bh=U+eoCfZkqlqsaZJzFSESoD3TStXVIfg/9grWKbZMoUQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xgeuJ+tTg9OWx0IvD1qVdzy4wBL5iuBwCrrDGPj/I4ffA6rTtmfg4TVhqxtzUxqUA
	 8n1HITBwf1NMw366mmp2oP31KrMi+EgjVm6/laDINKEWdRz5YB4n/2RWYBF4QZHglD
	 vFX17C6UAfgrXnMb8NGIKRE9TttG2Mq7ErzZRbPM8EFCIKv8/M/h+8eVrZGYa2Dsbt
	 lNhs0YEKgvhCo5eBRL4glNC3duW4GmB3OIWb6Yx28rA+R/5w/vTbZe6S2T+TCnu/Vf
	 dejZhDzt6MqmSvszPDi8y5Q0uWWO6Y1tMRHFD9PujGOoXJsQlsvqYRP7iz7aN+WnSh
	 kTP14o/jFdNKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47AF381911;
	Mon, 23 Dec 2024 17:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 04B04757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5C1640294
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0HrEDgMEdNI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 17:16:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BAE194038E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAE194038E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAE194038E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 17:16:49 +0000 (UTC)
X-CSE-ConnectionGUID: 1OeSJN5OQ+CCNvbX6AboQQ==
X-CSE-MsgGUID: xUGW6vbeQoWvTGbkkAiXUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11295"; a="35341050"
X-IronPort-AV: E=Sophos;i="6.12,257,1728975600"; d="scan'208";a="35341050"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 09:16:49 -0800
X-CSE-ConnectionGUID: 99GNs1ZUQ+eJPh4NsJOYiw==
X-CSE-MsgGUID: 9bNdF65qTqqSnspfmpb9gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,257,1728975600"; d="scan'208";a="99115812"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 09:16:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 09:16:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 09:16:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 09:16:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=icmVjvxlsFkFBDwOuG8vxu00NMTwukH3ZgeS2nQ1vPVN1rUgx446IoGjukAkA3I8iumz8p9gAftuc1BI753omvL7cD17IE8vZfTseQQRW5cKqumIwtI+dzOD32/bnpYaX0cGYrRHTE4oLLcEi6UrYkVCrUC5N8IUIqSbmiKFTbMwufXuLe6JEreRms8SZLoE5hbXAB3SOVzFG4sOBIXUOdc+fnK4frCM6befwLdP3M80EdO5DLwqDUaagxl0kk0MA0+0Vh9iE/TK0lB5auJBKVxrO20fQgJg0DauDYt1atduTHKBvzOjQy/XTrjAXOFT7rYE8LjzM8ATF2oCmOy8aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U+eoCfZkqlqsaZJzFSESoD3TStXVIfg/9grWKbZMoUQ=;
 b=UcC9V3S/fZJSsCBGXO99/tEjwLGybXBweCpqz9HuF3MUA/ecXrPY6VuIBVQxBUf5bFXpuxMFh9m15+BavxNO6X91Z+a5le2GpQgFF+L80i60+dRRPAQcUHYGjqH+YPnSAyvzXOW4MJCX79v3/BOpy/hO5/OY+TBuGErSbDx6S2p9K7ZCqCNj1LhUMXdusTECy0fpwg29wPnDks7U8cIgCMD1Sui9sQEnSAUDj5yck+ENAiViZLcKl0lNVyNLLIkWV2SmKY4RKHbkCuqA6wmF01NMdhOpfH7U7oBUYsQw8k5+kQcTbB8PmIXUutwGW1PjpNtywXOik4Lhvi6OySAi4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Mon, 23 Dec
 2024 17:16:41 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 17:16:40 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: use
 rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
Thread-Index: AQHbT5h1SYqFpOlvqUm8RMfZfZuBFrL0HU9A
Date: Mon, 23 Dec 2024 17:16:40 +0000
Message-ID: <IA1PR11MB62410F84EDA48194F475D7FC8B022@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
 <20241216145453.333745-2-anton.nadezhdin@intel.com>
In-Reply-To: <20241216145453.333745-2-anton.nadezhdin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6537:EE_
x-ms-office365-filtering-correlation-id: 0e8687a8-b836-46f5-fc40-08dd237590ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/Zb/VvKqndyf3d95cOiWLRjSQqE2NaqKSzc+JgUMi+0eIYvIJNQM2DIx34cw?=
 =?us-ascii?Q?JKS0WQvJSLYdnY3c+DolOrUKXk3lP/VlSrB0Z2dn7NjxgEEX3XW9rz5r9eeq?=
 =?us-ascii?Q?GTnpQfChjUhxo1zuwfj9I2DOFfJvJ4nzhak7LIqUyRDe7Q8XbGuueTYfqF1y?=
 =?us-ascii?Q?/v1Z1p/uJ7GMwOIg/SsludkHsf6+NGjQwYe3MyGhAkJI/TPCG7+6A1pnhp8M?=
 =?us-ascii?Q?DrkQxHBTkIWrJotNtgeb/0nhkob+72KiTuPGvaXtelvDk1lNlTa8XyLszygo?=
 =?us-ascii?Q?j/nXp6C+EbXRsF9j9dvbB+MH2H4WKYnC5AJl6z2T8CstYwJs7KVt10PlMeS/?=
 =?us-ascii?Q?LRLU0DESGk1dwCQhQ83lv8DdcLGHUsHwitJohrQPtIlw2fOrzmp6og/ruCcd?=
 =?us-ascii?Q?IK61OLfLTNtgIly2DtCfJFkeJG5KK+MEl8cfrLcqpYoaNLEXheowWDgBB+cZ?=
 =?us-ascii?Q?YNeWbJmW/2MiMYdABe8GFab3Qz5GQxTmnMFLResHWjWGz+2IiqL9P5oWzXsz?=
 =?us-ascii?Q?ScOKbiCuqP6fqY0WADL6xL3cmoPLMrPLLfiFxsQ6SEl62W7MgIm7MjHOFgZo?=
 =?us-ascii?Q?cV3uMQXfdBCgraymOCvPfbpz7k4MrNl4sUZ6H6De6cb/7RB//wdu8be+q0Fx?=
 =?us-ascii?Q?YVuWpsCI+UILBbt7iREPrwKPXR5V4vqNY/8Ff9iaDZXPTnTIHrtr761TD2Hv?=
 =?us-ascii?Q?wUoRIF/FwSPaL59jjGAN5qmCIuSR0+emjs54/CwiJtQPAegLTjg5Cz8ft9sI?=
 =?us-ascii?Q?Wq9jtf8OEZfYb83fDI+Gccxx2o5uHmGoho2ilrFHESCDFJqJ6WWF+KEXD0Gm?=
 =?us-ascii?Q?NI6T6/boyu+U8aJSG/nnkk/yhsQBO/E0dktP+imsgokykYPS+uBKHZoOhs78?=
 =?us-ascii?Q?C6SMLNLUuW6hKtqTbNQ+ff2lWeguKhttmecph1Zf0jVMNfIZXX7w6FD4SBFz?=
 =?us-ascii?Q?vieR7EgP1g1+lSyvgO+YY/h9xjAC1RgpBVN/8pyH7cas2afZukfLIqEKvpDP?=
 =?us-ascii?Q?SUpTRzp+zekdHujcdsDeS4FdPfSzxVOmcAgm+Gu0/k5gkueczA1F4exJrVw0?=
 =?us-ascii?Q?O0yUojraj/7+b0K2AXhfiDVy3UDW6uYANfnYamNALhDZaxn/U6JEX7wpyJGB?=
 =?us-ascii?Q?6PmJnhIxj1abbagzNcyAM16UnK0h7/uAPevse0+Na+b4tmRZjgLqEr1zy+Iu?=
 =?us-ascii?Q?SBJNzRBbQnQDjyTNc+sg4m8/xzqWDRAw6UdVeZI7PQ18QJINaU6h4ohUJ4ca?=
 =?us-ascii?Q?56HzxiS/yozgUdAhl5tYsdrOQnfjUxFS96tQ7rtOEddosxkQUI9eK7LgRGX+?=
 =?us-ascii?Q?RZsNoi2P24VPoLsnF+OnJa9rGMn6s3KUJ6vjlvLkjNc8e/8srVuoI7eoudur?=
 =?us-ascii?Q?J2Yb4w8qB5M8BYdrJljysBrkQ8UrRMpgNUEnykdViUvvt5E6Ov9grJAlfUXp?=
 =?us-ascii?Q?SfcU2mWm9wjMipXNfRzl9g3wpZOrdm8e?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nyXtquYmNwzWL4iCeaadXnt5kukyOjEgyo4L7kEZdumbhaFSu+t2WM/X0AAI?=
 =?us-ascii?Q?J4afsHImFqJTPG4gAZBSkOG2oSUj6OZHiEn+aR6vB/enywhW2Jm8ZhvmesTt?=
 =?us-ascii?Q?FepmyfuWIYUS8G+jJSRSyC9ynLqTikghp0ePyU1OQ8ZGQhBGKu55g86MZG3d?=
 =?us-ascii?Q?/Lfb0Butn3jLLoWzQexul1icOkYdFvMZJg1VoJfi09q38oQWvYDe/HYFXA0k?=
 =?us-ascii?Q?y4Fq+wjo2fEOB2Xz/fRGldqn/LiYu6sLuNkqxm5DlVKSz90kxOCryOvDYtP/?=
 =?us-ascii?Q?7IuzpzBiLgHr1JB8MOPyV/qaU9JB9in5G0R7zsVxa8Rugouq48XSwgciuc62?=
 =?us-ascii?Q?GPoe+mS8GkIL0uWxtku98PTUsiVTW+uQE99fMvqZ+jIDkgdf6g+vztcoJu/M?=
 =?us-ascii?Q?V/WZEiob+nnJxFd/jjZMvTbSm9qMzStiL+Xx2yyGpP6aDxBBSSZ5g970ESbq?=
 =?us-ascii?Q?ehQgxOsTvp61xWfs5xqPU2DcMw4p9AQyOw/vOliLmeypKYVZnsBjgperbjCp?=
 =?us-ascii?Q?CBLS620TkOQH0Jzs7DNlD7FIQjjjM9QHiAQ7tCLpOz/x7ToZXuCNK9Y/bu8u?=
 =?us-ascii?Q?Pus9vM4/fDYutoU9P4LbFamx0m8doo163CIg6ZUPlrW/eB8wJbYw8JR4exwR?=
 =?us-ascii?Q?KOA5vyT8Tz8HASFvV86YA3/faFmHYkFZqTtcBe5x0rEQwYXQANQMzm//h7ii?=
 =?us-ascii?Q?ZgqpCnLLwK18MISihuEfpYZa4DBT+EQeKLImPAs09iyc3nkfkI6ucs7qBQDV?=
 =?us-ascii?Q?v/6xo90cR/S40DUCgq0kIuSHnYl15rjgvVqQAHj/C8E4kZIMGRqdiPsn10Ni?=
 =?us-ascii?Q?n/O3ZZHUmrv6JDy1wR10fAH5A4fY50DRmDGmR0qcpLkl9obgzIc1VS45CNuZ?=
 =?us-ascii?Q?7WeVxG5d5Z1ncoxxKEMD853MriUtwaAY5bGdfopAJ82XhJdbO2BJtYe1aZZu?=
 =?us-ascii?Q?goWTqxvahejKK1blK76EB7mHTIaEXqgeVKumQpL/787SYMzF9VvV7+x/19rD?=
 =?us-ascii?Q?avO7ID8OdX6Z9NrecAWOvuKllWtJThlRq6bVHTF+FBNqwBwf5Lrv2F7HbOhu?=
 =?us-ascii?Q?M0ldW6TWR9asdMYyuqiWURAfRzg8GM698DrRC5ZQ7RekfjMekNDTvfmeL+bg?=
 =?us-ascii?Q?rt0mG0Oe1WQRsWnIxahRSacuMkjPjV2FijelF9CPaS9ySAUOKrx+434/Tnjv?=
 =?us-ascii?Q?X3vVMr8RzUdAp/kWaljlmBSlvopdBxOxNtu9SWta56kM2gGsKivCrt9gYQcR?=
 =?us-ascii?Q?wEP8bb4cfj4Ys0nXzvwNWBSJFMjOfLcify0WNxM25qws+/5nnHwad3FV45Ol?=
 =?us-ascii?Q?5jtwPLQ+OjwbGTYJ3qTWeQzzL9ne2rbgYer6AE5AYkz+/sBGgbO0qVvpaPTJ?=
 =?us-ascii?Q?9uYMfDfXqKy53a3EcTbmVYWnCBXTDQn2hoZZ3jcY+/pZgJ01J3mKh60QRz0X?=
 =?us-ascii?Q?cvNoW+dRvX0UcVAHG8eKyHpeDx8DxnUuN/cxDUEnex2miHoe7SnQyxynqF2e?=
 =?us-ascii?Q?eGuMptloB6g5nJeu/B2N9lbY9XHBOV3Jvo61XsefrVw/4OvsezPzFcrKfK+3?=
 =?us-ascii?Q?LVuvH8hsyVOR+MmDsTOhzJv+HguW+qq8RI98rHQb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e8687a8-b836-46f5-fc40-08dd237590ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2024 17:16:40.6767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wLPkqF7hd8Ea3j0cnLG+NQdXxuNZKE+Y3MzuMV3rgrbaVNANuCv5K15V5cHnqLd18V7/6toLo09MiAyikNJvXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734974210; x=1766510210;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pBXZSGMEspcCGgfjoVqInm0twhjYodmtmV00WY1OTGY=;
 b=GlmTboyLsgSFPJQf12bXUVe4BbGFgVwkIl60zPy8XnuT6R1arEo1BIEV
 bgmEoKxLlmTzlh5HWQyHYEqvImWLLF+j1o9peCRIwXWQuxbP1MBq7FVT0
 Ifpt4icd8swrtu2978QV0YTexIPRd2q7Xrc3c0aInN7mF/jqiApAxB80A
 BW21yzodfSqos46gJhF4NzNJfdy1sQ78p4Gqg2ZBP2A6q2q4LVr6NASQW
 k1KnLOIcwJir6MaujgjpR1StFZcgB6EycZfLjMYCqGN1qSMil5Ye17qFq
 AuprykMQ/tSqtfeWJeeXP3EEIYCppAvdzamj2JlJg9km8ML9wVlnmz8RW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GlmTboyL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: use
 rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
nton Nadezhdin
> Sent: 16 December 2024 20:23
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail=
.com; Keller, Jacob E <jacob.e.keller@intel.com>; Kolacinski, Karol <karol.=
kolacinski@intel.com>; Olech, Milena <milena.olech@intel.com>; Nadezhdin, A=
nton <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: use rd32_poll_tim=
eout_atomic in ice_read_phy_tstamp_ll_e810
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice_read_phy_tstamp_ll_e810 function repeatedly reads the PF_SB_ATQBA=
L register until the TS_LL_READ_TS bit is cleared. This is a perfect candid=
ate for using rd32_poll_timeout. However, the default implementation uses a=
 sleep-based wait.
>
> Add a new rd32_poll_timeout_atomic macro which is based on the non-sleepi=
ng read_poll_timeout_atomic implementation. Use this to replace the loop re=
ading in the ice_read_phy_tstamp_ll_e810 function.
>
> This will also be used in the future when low latency PHY timer updates a=
re supported.
>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_osdep.h  |  3 +++  drivers/net/etherne=
t/intel/ice/ice_ptp_hw.c | 30 +++++++++------------  drivers/net/ethernet/i=
ntel/ice/ice_ptp_hw.h |  2 +-
> 3 files changed, 17 insertions(+), 18 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
