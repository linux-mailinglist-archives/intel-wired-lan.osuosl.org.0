Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E64942840
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 09:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 524B7401E4;
	Wed, 31 Jul 2024 07:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4JJrkk97ncQ; Wed, 31 Jul 2024 07:41:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E2C040154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722411717;
	bh=Qn+yqNLGBV6ux2rzGRfC73viPCQewjaV4eYbNZXnguw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3eEn1o3mZrKKmU3hvffSQ9i4nNlFNKUMmXGL125266j5Zd6TzO9WABiizqkc08t8q
	 yh1Zr5r2eiPZNU7m9j0ObGaqzF8NExvTzy1Jg99B4PGBRyVaGcpl2IwmstgkJW000W
	 SNgU8jinRx8tiv66+PZ32zGqbMFSwUCLUPEigpNoM9v1JYBYqXssgXPbrTdEJUR4Rh
	 XCUhvbtajo6ogBUtFTNn2inX6BVsgh+lkTSvNQqrupDT9G/taQRaV0KiRxUHoUOiWv
	 zwJay7N03dGEecZRDldhUgnCUD9Hs5LNjXbunGf2WU82XBMjXG6PpjLG3OLCmi2UQx
	 9rmSCyYsQ5M2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E2C040154;
	Wed, 31 Jul 2024 07:41:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DDBE1BF232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 07:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79D3E60A9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 07:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ux0BqTjfdf9F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 07:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB03160807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB03160807
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB03160807
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 07:41:54 +0000 (UTC)
X-CSE-ConnectionGUID: vsmqz+jtRgK67SzgxjWG4g==
X-CSE-MsgGUID: lSO1ky0ETpC8cuohGwRLwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20117559"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="20117559"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 00:41:53 -0700
X-CSE-ConnectionGUID: 4eVNqMWhQd6/pVr9ZbxZ/Q==
X-CSE-MsgGUID: dwc0rEDFTqGj/tbV/DIISA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="59675716"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 00:41:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 00:41:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 00:41:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 00:41:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jd+qHA56f7ipCBGUrjwjVqpl9Tl1ZLzb/TpbLtqunYMs7vsYzx64PLRd0LSltlsEKNjZdFiVEQeSq+Qo4/BWpuiC8diCPLXUNQmVC8V5wknTjuvgs93L//kp3Xn2enuiZKH8Wrnz5GTWJOgyb6sQ5iVJCzG8uF/QeJC9DXDQskc9uBQsnf+2cefh7x+mF211EpX1VNrD5iaiD+vTAiyVoxwe96hNnBeNNLjTPKad4LP1bf8+Iiha16e+Hs/dn0bSp5J8dBs0EzFOg7Yrj5A31eOMhgsJhp7YRfCBLzBDyxKcygpaGUn6lDhMtFGalBEHbVkkiYQoQ0IoTJ/5H6lHZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qn+yqNLGBV6ux2rzGRfC73viPCQewjaV4eYbNZXnguw=;
 b=KPqZVhfLl3jRRu7yT7CcXW6EDN7gp3VNk2acLq7w9zEkVN59O499A1cHruq09QRYAiAYH4oHgKMEnMC12Owm4vlKc1nxbh4ZqyMy5XHTOE9wN8H9yDcoV3o1GRC7xZiUxzRDfqduX7m/NXH8Jf8WNMIBPCNtjz9gZuwMFQb/w4/TsxiiFeIo0JNS+c6nvoT4VD9UdwJq9NcKfrAjbKxdO6CL3T6VCv+C0RmsMZpRpjmd6HqvVI/aT0kS4S8GOEdUryZGCfUqylCIVpIfmcPHVpyYCy1AccV1Wt+umvxWz7AN9xpI7S/CgSq2lkdo/iTcJXO3wKYHqpjosFRrq7Yseg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SN7PR11MB7437.namprd11.prod.outlook.com (2603:10b6:806:348::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 07:40:30 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::c80d:3b17:3f40:10d6%3]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 07:40:11 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH iwl-next,v1 0/3] Add Default Rx Queue Setting for igc
 driver
Thread-Index: AQHa4h8PLg7tcvdq706oyoxDPBv147IPXLGAgAEDg/A=
Date: Wed, 31 Jul 2024 07:40:11 +0000
Message-ID: <PH0PR11MB5830E21A96A862B194D4A4A5D8B12@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240730012212.775814-1-yoong.siang.song@intel.com>
 <20240730075507.7cf8741f@kernel.org>
In-Reply-To: <20240730075507.7cf8741f@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SN7PR11MB7437:EE_
x-ms-office365-filtering-correlation-id: 56918329-6c41-4fc7-fba0-08dcb134025d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SmWiO+YO+kvBxnWbLj2lB8LTyqca3v73LB/MoFyLUHQjgoZGSElhztsiLRDW?=
 =?us-ascii?Q?FFWzQPLLLbCibuw/uZwBWt4hvtV4Oz9KLLh1HTVzIjXwCiQ/bmejvvTRoAok?=
 =?us-ascii?Q?89zIBchd08ZTKh4a7RRn1tWE/Re1LLrDGU7icHlVDRchr68SRPDWu3hvbn6e?=
 =?us-ascii?Q?qSuR01Q6TdYHO7A6sYi6i/TobhiJe2xjSxk7Mk1jPXOfqshDB4T0Qy6p/wnQ?=
 =?us-ascii?Q?apzrBOOf6xTYPxZZhrAK1FKs0YBCmWpywOYKo4ecQJaDYzyhUJ6tx9YrM2v7?=
 =?us-ascii?Q?SaHQDJ18W63ZkfO5cmtgE7OD4Aux75F59pmjtvEG9C9sU+Ajd76N7vwJgC2w?=
 =?us-ascii?Q?JNVFm72myoQb4EvmBGeOOLgBPProvsQ+R6914Hmu/oQa9McQspAKwaptJ60D?=
 =?us-ascii?Q?1CUMEb2CLZGJTxZxQzKdqNxf7n4zs7Wg5ykizdKkps2wwert+KI24oHsxWU1?=
 =?us-ascii?Q?iOjbYjtCeeytefR66mOJyV3cQY/taAIqX54y0TglPwFa2tqkYPB/yH9/nay4?=
 =?us-ascii?Q?/mF5WbG2n+ohMFcR88hFnjIyGPFN4GNvvN2/kEifdRyd23Wh/vKn0JvljBGy?=
 =?us-ascii?Q?8Xd4StCGffbpBGk2cKvFLzDwZRhj8e1UGvhaKnqA6qn0F/3L+FqBVAMltypV?=
 =?us-ascii?Q?PmVVh77sxD8PW8dgHUEMaCn31RCzpMAtkuLC8e/iyJhN50lRlK7jdW5acFm4?=
 =?us-ascii?Q?iyXv0rvU4pNWb8TP7WEyTTunxCzHwW+5mzIOO/ekcp8HjJinYOnfFoNMG13Z?=
 =?us-ascii?Q?F1vjpFQ/i8of8RFCTJ04o32qtdq/C9mdqZGu8TsZ8lHJs1lV5s2C8fU2Qk7t?=
 =?us-ascii?Q?ZVFIUZii/POWF1Nc3qhOQXfEaO66jSotYps2Oa8vr/zl5wt5g4PzVGWvAGP8?=
 =?us-ascii?Q?P8ZdAEweNjfA/ndV9XS8EoBxCWpBBH+sAagOD3Q/zlwq3GnCLvX39P7pNMUF?=
 =?us-ascii?Q?5mlFVATSeHhkLtk7myMIuS+I8gRLWiMGunk0yCZS7/YI/Ow/EFVFD/RB4SYk?=
 =?us-ascii?Q?fapB8fXSf2nktoH7zRNwuPyPP/rIiRrS1ddYZOU4OIbFiMST5A2nXJH6FcNh?=
 =?us-ascii?Q?ZHGcOHAkoNwoIf53EJwfBZvOZxInargExekL0gmiY3mQBRtpqx5d6g2VLAzw?=
 =?us-ascii?Q?Xa0o1jt1YUeACz1RpNysjsL0X4v3fUlE9FxbmQa/x0dELG05X/3hh6wGM6aL?=
 =?us-ascii?Q?SJZ6qdqmHosZa9t9dP7AhpZQp0XPTPBwZ07NKVTvppbfZOAYwcB/79aqNPRS?=
 =?us-ascii?Q?RiTZ+/XscIZcOKoaALI0Lmmjqnmvh0UlZkuS6wOpYnzSrWhKKp8Nx89uCIoh?=
 =?us-ascii?Q?2KjAkgaJyUg8EILO76ODo8/x0AglRlASHv4yfFlLcZFeR/yVgCuA3Wct7Fvc?=
 =?us-ascii?Q?QFiy7+nF6rD8pB6TI+ayR5sZv+hRFHi2hTCTHSduSmkD+lIHHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UFGtlFtShWaweFeO6XZhFNvvW/Fi0C6dgBspMaTwyuF5iWzBfhYHvh1csaiY?=
 =?us-ascii?Q?0G0wZLBx4EcnJLfICubOGUiHmYzuwUrhS9rrD3JdZMkuJSzDgQ60+ntgEfv4?=
 =?us-ascii?Q?6OJgAC/zF2M1VB7BRpNuqnDDr2d3hD0iSlfeQDIxA8+3gKpWv1d/yDusq9Ek?=
 =?us-ascii?Q?UHg7Kak/tjIRxsQMAa5+NPkfj5bgqxsMBvoWNEAHb3Js1lWoxBeOX1wYR/r3?=
 =?us-ascii?Q?uJhN1WRzR+ZEOVZLgKgm9qJtZ73hfvBFrEboyc8E6IjydXDGJcjO/nn2Ryfi?=
 =?us-ascii?Q?IZoVxJsHoRKlx01SC/rS8cNwyTTlel71h6vYW4784vaD+L8jfuDCJ8RSFbGX?=
 =?us-ascii?Q?jJb6URduaAQMZluxGcDLIJcvoTPO8YsUsGM6v4MTZIBK4bMoQ+hrX5u5Q7X4?=
 =?us-ascii?Q?7c6nFBBYbCTHiEN5uarjvsOF60Y8L3T8aKQKmVmOwoNSIs3JH+Cpjp1RoZXl?=
 =?us-ascii?Q?PVYkZH4Bv5o/UM3u0C98E1wWkxMXMIx5tiTUHck9NHajG9Lci1Y48HFKWXw6?=
 =?us-ascii?Q?4QbIUdOZb9t65ZCgNtLKG56wkjJ/2FmIpdP0Fy/6YCNFqpwcpmPsbfp4chC+?=
 =?us-ascii?Q?Uh96NdJ8EcJuVByvHmeEZsE4m7Vh5SCCGh4yDLbXf82H5S70iXgnMnqL+vDP?=
 =?us-ascii?Q?BODmvsYKoZtFmy8Bu9FYFhbnG7Nz7jpJrpBErA3BM/CxGxPKQsHbGgTZhoNH?=
 =?us-ascii?Q?M0v7gKsoT2gKyAjyRLDkw8Y1ztSuI0OdrddyYdjyZBpqKIIIDR+/j5uY6VWs?=
 =?us-ascii?Q?xuBGKptaXGww9UcJ70UNN43Kmeth6Pqb3nkez9wPD29/iHeRXjWXb1K4qbsU?=
 =?us-ascii?Q?gcjXUziuT0geJWWH5d94IxxkgSnBvpVqIUJEHUolIMPN/vEQCx38pK1sZjTZ?=
 =?us-ascii?Q?iOnaYacIHuftJkOHzQz2LmmT+ttpBzOZi8UeLYhuqOrh4N5wEx4IeWMacZ27?=
 =?us-ascii?Q?dPn+AwyA9WyPnzFwyaZmPYzxmtNUoMtWMa+3KxiP3BKMvBcYf2g5rO6gp1Eo?=
 =?us-ascii?Q?pN+fIAdc/UXMUhZh/4Zi2B8bBr3zNJZ2heopWE3Z8KrHApbCsHuIytwjv1fZ?=
 =?us-ascii?Q?q1R8py867gFDmX/QUC0bcmTaFbKozTe47DSzt1XX2MQ+gTB1SBqqFlAPD99w?=
 =?us-ascii?Q?4Zln7D1wkr0x7kOyRepC5yR2dCAaLFYBlibSpHfWMaxX0josbjjvhXx5cWYh?=
 =?us-ascii?Q?wtOoOJors7aclTKiCt6NLL3zEtpq+O0rgcGNj8muhQXiWH/h9Hp9xk3+bd9E?=
 =?us-ascii?Q?2WRpZBEOBfuUDWeci3zv3QZxVb4/ZCfV90mc7mOQjBXX4xz+P6gEmY594rrS?=
 =?us-ascii?Q?n9tljuUBv0WAOTb8JrzEtEINGo8yhVRz6DwvNBMxvHPde02Vnk0kk8QfNaxJ?=
 =?us-ascii?Q?pjqRP27CUivOXJJbVlHpy3w7p2tJNm8ygTG5Z6GjustbN2ooEskltKcCf35r?=
 =?us-ascii?Q?qNexzN6aCVrIbotv0a7kBRfFoRkIpSMZ7p0qWqgZdm26i79Qhpnzw/QC/wAg?=
 =?us-ascii?Q?LZ2U2IRkLtQQZEy43yFCCWhseqyvBMbrhTcBPnoO4GAc25uNBzJKq8zIgKFe?=
 =?us-ascii?Q?7VJQxBttFCPsY7D563B3eybERrV2ju22Ca1MzY9VISeGPbwWKHbmf9pOGoFm?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56918329-6c41-4fc7-fba0-08dcb134025d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 07:40:11.5731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mgP9xNtlkXWVmgkQi+enJLAmeDdwW861tIkD8SbCnbEdPzfQFlrrR84s7TriHxaHOK1yfLR5vPH6lg+aFRU9s0CFE+O5bXmiq2uEu9j5SnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722411715; x=1753947715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Qn+yqNLGBV6ux2rzGRfC73viPCQewjaV4eYbNZXnguw=;
 b=i94Ucd191zJMinWDVql+L1ugEBi4YIQHJzSA/iwRIrV3m2rosHyehAb/
 RVoy+F1n93aaPIGxwDM0CQ0e++zSgbu13UTVm7+Nthfl2ScO/Dr0MKbwE
 aGVqmErMAU6CroRRh9HYqSvf7wjUwEBuTcgFSbRIXU4lr+nVef/+3FhR+
 NtPpd/rwmf0V5ZE8V7Tf93/odY+IebVW1/SW5y9W/15zv9VBEyTC0GGJC
 CarEDWAqy7GweaEfZAdrW3LZL+FuwLuAkYAl+0FFrxcsZKnAsCr2yodPV
 mVF+Cwh6hc1DE7Q5gKqDI5J7scZnn4Tdn1v2hxuciocA+L7B93951Ue7u
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i94Ucd19
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 0/3] Add Default Rx Queue Setting for igc driver
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, Alexei
 Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Blanco Alcaine,
 Hector" <hector.blanco.alcaine@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Shinas Rasheed <srasheed@marvell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "Tian, Kevin" <kevin.tian@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tuesday, July 30, 2024 10:55 PM, Jakub Kicinski <kuba@kernel.org> wrote:
>On Tue, 30 Jul 2024 09:22:12 +0800 Song Yoong Siang wrote:
>> This patch set introduces the support to configure default Rx queue duri=
ng
>runtime.
>> A new sysfs attribute "default_rx_queue" has been added, allowing users =
to
>check
>> and modify the default Rx queue.
>
>Why the extra uAPI.. a wildcard rule directing traffic to the "default"
>queue should do.

Hi Jakub Kicinski,

Regarding your suggestion of implementing a "wildcard rule,"
are you suggesting the use of an ethtool command similar to the following?

ethtool -U <iface name> flow-type ether action <default queue>

I have a concern that users might be not aware that this nfc rule is having=
 lowest priority,
as the default queue would only take effect when no other filtering rules m=
atch.

Do you see this as a potential issue? If not, I am willing to proceed with
exploring the ethtool options you've mentioned.

Thank you for your guidance.

Regards
Siang
