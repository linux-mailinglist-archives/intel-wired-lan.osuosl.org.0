Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67497B8D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 09:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B18E084458;
	Wed, 18 Sep 2024 07:58:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NVcJiDy0vF1Q; Wed, 18 Sep 2024 07:58:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7895D8445D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726646280;
	bh=E93cCgBD04hSNZZYJXFcXyG5mP8VYnIfudK7obwuLhM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7Gq+85yGQIugmCc0FS68TtBUXXn6dOaN1uUW1BjEcTMieRWfdzl+2XBwrfodXtZf2
	 DPG6eFqd8mlFAHc/5owrKrvFrOqsWN2sN9M0CZM9VdsDCFZJNLZFoKXZX2Pu3iZfV1
	 gXXb0UuTUGjM0cV3D7vU5iga8DKpOz4ZtFGALQ+MqXQiPi4JfPapp5iy2iUrqvRqG+
	 6TIFdjftm+J/YqwkotNsvdfCnoh9HXieboOVRFgmb72dzULs5UYeQEeIO0AKeahPs5
	 VIBkDNOTrxENHfNRs7Nb9YDiyppTd9e0G/6FkJo2R4jImHRfjnK+03WGDiC7he+1AG
	 DzgasQTxfplMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7895D8445D;
	Wed, 18 Sep 2024 07:58:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBB01BF83E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 07:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DB1A61518
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 07:57:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uub6GocNZd7m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 07:57:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 019FC61516
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 019FC61516
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 019FC61516
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 07:57:56 +0000 (UTC)
X-CSE-ConnectionGUID: oaFbbuQ+Qx6O5gJPfduLAw==
X-CSE-MsgGUID: w8pzU9gaQYGF4f1tEfopYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="43014547"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="43014547"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 00:57:55 -0700
X-CSE-ConnectionGUID: /P4xltbuTLyW3nzHvmEDuQ==
X-CSE-MsgGUID: IkIRb7QKRZedZuvCq6Thxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="106926394"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 00:57:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 00:57:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 00:57:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 00:57:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iYf8YCrQFD2asFoALKyIVwWnw7tR1iR158sAlj2V4YLYvkmczxo+XZ3PYb9LAuN8MBmnS/hR6u4WxETjOm7ebErJ+7gybH7c0faBHXbjpfbMpm4YkmdNpgd+JmKJkp3JswpKxlDb044WBdOlzP09MVZ4xn7jBY5FzfRIPyN8hzIezO5WNNwqPGZhWJRr09EK0mXYP/ji5Aid64guPKjE+WCJy3supco9T2PGemFlg6KRvFNTjCB7/rIRb8axVENk/Ms2VvY+V+LgWYv4gGSL/fFzBpHfdNY6x9XMaefiZ8LZ/sXMEkwt7YaBppSaWIQFRJSUT9qRPuANzRkxgWIN5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E93cCgBD04hSNZZYJXFcXyG5mP8VYnIfudK7obwuLhM=;
 b=wta/WGiVY/9/QQcV/yBybBVhPY8ecFyUWQjnSU57D3iSHDJRpEOV977vhLNvnhHIZrZXSYowvqZcXmWkC7cFvbPP/KJzN8SaBMwUWbe/3l2uh58G0bQRsRNsDeNn6Tl8iRH/1jdYIAxtkWDkBUHOP5W3CtkX3Pb5dKclTQq/m4z9YLHm/EacDRrS3Y2uzIXBD5Nrh0yaxIz1QbqjD7QyIh1IxLT0+wEo/cHm4aknUuoBZaQUJN7s73FBE9IovZ3/4gkEBAMqI8Kp3l861fUyM0yfxVDkGBUwYYBpu47cP3ip389JQt5+4xCGwJpv+TSUsPCOGGHhntnUpeYyfzEkyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.16; Wed, 18 Sep 2024 07:57:46 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 07:57:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in
 ice_init_tx_topology()
Thread-Index: AQHbA4mpnahQnFGMokmNxcc16WUrYbJdOTBQ
Date: Wed, 18 Sep 2024 07:57:46 +0000
Message-ID: <CYYPR11MB8429C86B639760B11EEFB994BD622@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB6068:EE_
x-ms-office365-filtering-correlation-id: 2ee91e5c-ed67-4e27-5c5b-08dcd7b79557
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4PdNhz6gYVvG3R0hWY5pYqgOhTUe2Lfq4rejNaQhSVrAv4q0u+1udOwej/8y?=
 =?us-ascii?Q?4/ze+k/rVSVFp+LG9QX7aQY5I+/BU6FcDNS1XcYVj9vUvFzA9sDUkurY/7tP?=
 =?us-ascii?Q?WQvq/xS8cKiSrYe1Df2vUvAyLGmS/wUmZRuFpWBZldT5UA18gYTldMiNCFEX?=
 =?us-ascii?Q?pkysTssWwR/hRkc0TGZsAyX1BM6Qb70St28PKHPJFP86olwl+mwGLHrQww1U?=
 =?us-ascii?Q?VHgcQWASEhBLTbD6P1XZl0vnPb0UeQum7KQR1uw/+Wl8pbNeto2n6+7rM19t?=
 =?us-ascii?Q?K0YBp2I8dKi0uvfhvIZWZ/lgo9CudPprAM8sVNNOu51v8u3vcI0wLIcD+FWP?=
 =?us-ascii?Q?6ecWHjm+SjCb1iHHNJ41lNDvROozeG4CUTUHCM0nFP78nVkAuLeCMucah1UU?=
 =?us-ascii?Q?AWRZJEZNs2TzvjfApSbR0zJbqWJ7emneyGzazwWKakTQAG2vajJSPYqcRHbF?=
 =?us-ascii?Q?xvncvXd8KyXtPJhmD1UjdXMAbbo27F7XYXmGxMjI8GdW55UAitNUb2MGkyYO?=
 =?us-ascii?Q?ALNm3Bwg207EjFwedPlfCWOMf876PZYM5xetyh34078RzS9NHdlDeaRwpn9l?=
 =?us-ascii?Q?PmRZ/GlWLxBj8ByHwtJKwAIM5++RYaZbv2WuePsu7V/TwDl/9IusZTU/M+a9?=
 =?us-ascii?Q?ifT99X6Bq1um3de3hL0LIb/J3bylBx5qHqo5/jcNFZ1krkZeVqs0AqyrQQ1e?=
 =?us-ascii?Q?dACafxxUguHjgUcSTFzVMz2NvDy0sIdisvQLDPDqOKdGKXpDX81IjIUA+Bss?=
 =?us-ascii?Q?uzoXvcL6e63niT/jxm+qz9ESFvXpjVwfKaewF3Ht2R+Ur9Tks855ujXE1P0f?=
 =?us-ascii?Q?e1xjEc1p47/YYKHdtEtiwflJ6ssdlpU2DHje4suyqst2iyNyS2By0sXNJJwb?=
 =?us-ascii?Q?SEK5JkCWIP1gmuzThq1zjbYiVq6jxeaFfK3huCteIleBSaRx4OFTXQForBec?=
 =?us-ascii?Q?UgICQL/59S7R72xQfqZaMUpdcsyrsEdZwgeog0HdkmVzNf5mna11Y3+BxjLZ?=
 =?us-ascii?Q?+uUId4C9D4crC7o3dMr4qhyDXEpRzz/KzYfawbyLuvHE4mm4BhXRP6ujnvJl?=
 =?us-ascii?Q?3YsnJsam3S0gUVHwUYvb1B/6v+kLyRGRS+Xfmy0v5zwOGellsEW5NkYrWIAM?=
 =?us-ascii?Q?28rWLwu8VL2DGfp3I3solh1xl6IeGThC23O9xy05YxpcLLr//776Cs+mLZPs?=
 =?us-ascii?Q?tg1bihHiH1Hb9za7igJUPCH+5Ic5rObh53XgGT68cbwKUJqGYauWSsGu+6Y2?=
 =?us-ascii?Q?QhHNsDONEbb4Xn7xIM89t/aEF+bADmTekzsYqJh4nlVSowYMnOEOqlAhGmWu?=
 =?us-ascii?Q?2mUVSOd20fCw0uenW1JjDfkfwFz5Ar7wzKbXv5IcmJkDbzfh8ncnnNAPKyRV?=
 =?us-ascii?Q?2FjcBnwy5xudDCWaW7hwoed4GXQDi2DU4ZKiDTUoWyvsVJRsyd3Xel0vIZec?=
 =?us-ascii?Q?6cKlNhfge1k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a7PqXAIOw159J7LdhwDpyauDBm/ceT3x/2c7yJARKOFJ5iIuY8JFjgmwStCX?=
 =?us-ascii?Q?swK52xxWrLiiVcwe0IPGKnKqMIJdkoCSR3EZh2HqRAIlxiDJyRKV/tS6q4e3?=
 =?us-ascii?Q?WxdvVbDZt/ViK6i0kjtr8LFdeY0maUOl8wXwFjxk16pSjmE+qlYjAtoCE7dg?=
 =?us-ascii?Q?Ec2zcCAM6apFC3h1JxzlCd2EOp0SAT7HfOUrEuGrHPpxsSdPmi02kPSkXnV0?=
 =?us-ascii?Q?TGUKHLC46GoiTpm1TbsgzIHiyqBY15PN6QIBqILwJabHuanMTGr2BB8gK5Ft?=
 =?us-ascii?Q?f49r3dHVLaVrL74iMRLPqPVJZCC9KdyEtqBp61prluAHry0u/Mst7m5xKdLK?=
 =?us-ascii?Q?/lWPFZvfnsNbAAnuxGtKXhfKSBPvmcCZ/+Uj8Mq8g1GWEQc9S8nPs/37MzxD?=
 =?us-ascii?Q?7w7Ek2QvyzpO5RRzRZQVZGhy6YAtQClHQVjWq1w0J/9McXJ2HzpXgRGvOTQt?=
 =?us-ascii?Q?sYXwALmVXZjDVafIWuI14/nT8QK1A8rtwwE7ti9YnDCN5iON7zTVrUgPoJmo?=
 =?us-ascii?Q?YnVFxf2a5wt2RUIWB5g4SDEMyoIuV/fOujaiF5rMJihj2XJPgpem57sUyfMi?=
 =?us-ascii?Q?9z134IPcq2rye9FP2tVoZ6BrLece4/Xd3T2znSwA1BWLta/uXTYrZMkN9YIb?=
 =?us-ascii?Q?n6pShTA8iE80xR5AzWc2H/zxQML+2ZLmbCwPe1vgtoCdkd+n8cR3C1Vq6NZP?=
 =?us-ascii?Q?rtI00HbsUjyDcLlJ2g2/PmeXbW9KhOPbI8i+hmC7ZjEtIUIs/c2nCU6a7u0W?=
 =?us-ascii?Q?DxrGRH9hVG8HEChX9lWkC2QKGPFEPyqxH88oz4YMW2AdTXI0uyT5bDaBCdTW?=
 =?us-ascii?Q?TWJf/tZ/GwG3WGQ4rLwvjZ4bbIua54hAD6iKaLihEP1q3KoSIzS10vl2Adu2?=
 =?us-ascii?Q?LA47PvJs0/BeUVb1mqKRYyZYlo4TcanX1SOy/oKpUleRm0vaaXJBUoOykI90?=
 =?us-ascii?Q?BJ8lfLlQCNZMlsqZpqL8A67mZD2iET3GGcG73zvenGO4jaDda2k0PZsSOv0u?=
 =?us-ascii?Q?hc7vGGRHc1O2no73AINf9cNBRo4LHd+rbC8I0djcx95CqlTcYPT7VYiV7KJF?=
 =?us-ascii?Q?FBw3fgfpWYl7BqBUwtPWLri7WPIZV8mb3KQa1yQGzQ7ToHVpZ593F+yQFLjk?=
 =?us-ascii?Q?ksagGXrr0JYrCjDiwEK7X1A4L0SknzT1RrkrYIWMld4Pjge/owoDf/yp2W+W?=
 =?us-ascii?Q?qWpFAyqQ+xHNImn9s3Mq/yLZ1RbTPSMQ8RKvSkMFCIl/EpEczlKr2OtM5zLs?=
 =?us-ascii?Q?ZvooSE/BVH4rQRIAlYAnV3+wmogxfY8RA9bbObeFESs9f7zJVvYp0hf58EQ1?=
 =?us-ascii?Q?b5EV68SBJZ/1Gs2xFFEDgYj6kTE6NYSJr0Tck9gRYVhDuf0MuL2/tCUnrfZd?=
 =?us-ascii?Q?itvFfD9qh0Xdfpq+waRu0IU0cBJ57/ys6jrHlBu0EzHrI124HNerrRx6zoOa?=
 =?us-ascii?Q?5YfFT96NVvLgLAKCK+917gfrgVEZcNY4nRyCYsE2yNiBlDQSfj12EanEMy7x?=
 =?us-ascii?Q?PCfbYoqU5C18P2xXh0WaUg2vuU/8OR59cD7twKJtmpOINNsa61E5YeuTKiTe?=
 =?us-ascii?Q?qI1CbU4/4kKURjx5+FOOu1i6Rm69vh7EPV4Kkz9yvhi6xjVWRmkYeJvw1uWH?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee91e5c-ed67-4e27-5c5b-08dcd7b79557
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 07:57:46.4268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yp2l/zN+U8M5LvyoiExbe+Wfleir/9+a1pj1RJkIOpk58+HEmfDI+TFUipDI929mnNTPCD3NmBERwnlYgKMez4xYZNe5SlEQ/O1e8gtRdvdPZsjliZuyQuFYjtVLSOmX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726646277; x=1758182277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z+qYZVn7HIJtK/+xFU/8TonwOQAfnMAd958d5uGIMWQ=;
 b=XONA0sksL/CtPUf+DHOAk9hTXionV4yJHcINoVyXo6l0JmiytyRatJDG
 6M/QAkhSXfNiM4sSkYtgjRJWmmJZ7SfqsaNr3hpQTNIE+/eyECsCM9u05
 OPuuDIy5RV0b7P8IlklrbDdkkIgoPWJKmQ5NJ+VAbKGKs1cLL3ZcU4Z2j
 nqQ6oQWbek76L0LiMinBb6JUKFCXDTJAtcMSZig4wfgp8umD1aahD2DJT
 gAu0cpU1SW+FmvBpI0EKu/kTM5LNza2os0pSen2PZZwC3GTqwoXedpaBp
 QXdKzwjb5Q+umHAUXzk/G8n4oLK5eNrpc0WI0OpLorV/fdHjVjlcM8D89
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XONA0sks
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Tuesday, September 10, 2024 7:27 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: Pucha, HimasekharX Reddy <himasekharx.reddy.pucha@intel.com>; Zaremba=
, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org; Polchlopek, Ma=
teusz <mateusz.polchlopek@intel.com>; Keller, Jacob E <jacob.e.keller@intel=
.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in ice_ini=
t_tx_topology()
>
> Fix leak of the FW blob (DDP pkg).
>
> Make ice_cfg_tx_topo() const-correct, so ice_init_tx_topology() can avoid=
 copying whole FW blob. Copy just the topology section, and only when neede=
d. Reuse the buffer allocated for the read of the current topology.
>
> This was found by kmemleak, with the following trace for each PF:
>     [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
>     [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
>     [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
>     [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
>     [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]
>
> Constify ice_cfg_tx_topo() @buf parameter.
> This cascades further down to few more functions.
>
> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology=
")
> CC: Larysa Zaremba <larysa.zaremba@intel.com>
> CC: Jacob Keller <jacob.e.keller@intel.com>
> CC: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> this patch obsoletes two other, so I'm dropping RB tags v1, iwl-net: http=
s://lore.kernel.org/netdev/20240904123306.14629-2-przemyslaw.kitszel@intel.=
com/
>     wrong assumption that ice_get_set_tx_topo() does not modify the buffe=
r
>     on adminq SET variant, it sometimes does, to fill the response, thank=
s
>     to Pucha Himasekhar Reddy for finding it out; almost-const-correct iw=
l-next patch:
> https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.=
kitszel@intel.com
> it was just some of this patch, now it is const-correct
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.h  |  4 +-  drivers/net/ethernet/=
intel/ice/ice_ddp.c  | 58 +++++++++++------------  drivers/net/ethernet/int=
el/ice/ice_main.c |  8 +---
>  3 files changed, 31 insertions(+), 39 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

