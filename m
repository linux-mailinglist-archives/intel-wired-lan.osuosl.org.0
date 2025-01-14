Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A844AA1103B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 19:35:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0F5D4126A;
	Tue, 14 Jan 2025 18:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_uTPXrSFly0; Tue, 14 Jan 2025 18:35:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6964C412A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736879732;
	bh=OsD1t81qIDQJvhTvJRHMN46AS+Naa+yPuctvjGTuRZs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gH86MK+Fu2jPTdp4hSYn9KEOSHsVSs/NJQB0ZPNK4dMf/H7i79OxuBZ2RDGn8O1oY
	 1uVb0FKbyT2o0rv39qSZ9nQeweaAT8Bn2kFuK6HEEEYm0QnoGQ/c/iayFySVMLua7v
	 re4spPmbOIi4aWIjni/yN5OWl/uwLwOFjBaupWanlRKkuaBXHIHzvfLcLsp8QSURQl
	 52snk7r8XfQm9qS4qxOryuCND6yoh2851AdDCpbEHm//NWw3BEgnkkgUfPfpFZTi4h
	 Y65xiaBv+dZdHVGLKjlOB4upKKdVerR0dxjiql6C94AP632QbauPAARt35gL+iSXwa
	 9fCQU9J6xQKIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6964C412A3;
	Tue, 14 Jan 2025 18:35:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6024394B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4064B4126A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:35:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUr5sCHJfOCM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 18:35:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3ED84125F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3ED84125F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3ED84125F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 18:35:28 +0000 (UTC)
X-CSE-ConnectionGUID: Ched9MH9SY+G0Pk2OHbrZg==
X-CSE-MsgGUID: uDtDYrudQK2e8nB9l5bcOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="59676398"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="59676398"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 10:35:28 -0800
X-CSE-ConnectionGUID: ODqRdd/zSQCFl7sYf1/JpQ==
X-CSE-MsgGUID: lzcdHy0UQdeMub5bzznpIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="109853235"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 10:35:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 10:35:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 10:35:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 10:35:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TieCBwp27kTzcFtwGVRMgjgwhIqsPJUKhVvJ959nNIbcAAtVBqo6XEEN/sPOFX4OL5b3A4Zb2JMWQSv5MGvK3cEEP5mcRzpEwIIDUTSLBQb3LvE/bJPaWsnJY7Zi/3LPjZy4j3G9l/HtqK9HJ9DiC263yjDFGo77iC9c8GkITt9BXVI2vNHhn02YQw+2O285r+dC7NiMPCd5AOxK8cyZYL+xmYqNKd8ZHUl6hhyjcb8hzzqQImjSmIo1JBh6u+OZeiipbjMtLg1QmZitNAdv/dm54GyrRY2SPkoUh3owycl6sPOMU+nrGAV5QmrkHWE9/QZ8ECLlI/kl9eqoqCE9xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OsD1t81qIDQJvhTvJRHMN46AS+Naa+yPuctvjGTuRZs=;
 b=npm23C6VKQ1tdzUhqO+nxGWZ02NtPCsVU9DcqG58L2dHO22AjDCFa1VZ6TKbN2vlHrvgsQYlK6zDKHw7cfO1a6H+p/4NOat1Kbl6E49W2074jEZUZ2pVqmI2yJCfV/S8uYbJ+YaGJhJGqyzNnMYd20ajK+gMTe96d4ZXX9UGlCbT4bICLCD/jbuda/DipeGc3adyopCKUXnx8OqzmUcZf6A3NVVmHHi7UykXBzDZl2NfEOs6nKNswRTrkVfdYwpAva/qtZoGS/aR6kHSHJpXN+17GZIEZtiUABzl6g9h8HbnyVnN3NgnpsjorQGy+pP5LOR8y1U+so8z8a+TiRcqDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Tue, 14 Jan
 2025 18:34:58 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 18:34:58 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix
 ice_parser_rt::bst_key array size
Thread-Index: AQHbUg2FZ/gj/D4qbkqcH5VuP42rWLMJpfkAgA0b26A=
Date: Tue, 14 Jan 2025 18:34:58 +0000
Message-ID: <SJ0PR11MB5865E8A88FD06D0FFD49C6418F182@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241219115516.11708-1-przemyslaw.kitszel@intel.com>
 <20250106102334.GA4068@kernel.org>
In-Reply-To: <20250106102334.GA4068@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CO1PR11MB5057:EE_
x-ms-office365-filtering-correlation-id: d848e18a-f650-477a-8484-08dd34ca25f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5ZSHY69nQEFFCFBrpP7y83h3fAuc2dspze0xy2tmGuvmKX6oWffjNp/KmxDb?=
 =?us-ascii?Q?/stnOuDUDXxG/vf0n3YhuJ0qC4yd10MYxdt17GCtu8UswQsNOBF3DYn2S7K9?=
 =?us-ascii?Q?ui7qdIqA/SzEuv7KJ+HzlsieG3h+yFbmNfdgPD4rFDm1rz4kSNg9iDNxJmQg?=
 =?us-ascii?Q?aNN8lZj7k0A9EclzkcvM6EilDYhp/09RZ1VAGGuZOSjsmIZHSAJIuBDR8Huq?=
 =?us-ascii?Q?wJqi0Q7PpyH74ILYJ8CJlnzK0cbZvFtA4iaja+r8QLFrC80LQ5BzXa+trNKl?=
 =?us-ascii?Q?7yOzB0/Lz7hh8DlxRKHEtKRVzuYMbAdszNp4iN3sMrIgqQIrx5RggY0XgbyG?=
 =?us-ascii?Q?6xFHKTopfPfRawCSROgPLVBpgmyKzpVHjn6BHgztsXCH5kgo375bRbwl6GYd?=
 =?us-ascii?Q?XD7VaS20MxLHfqS40oulSOJKiK3xUl+CLO4ofWRHmgtheBNrT3xzYSi8tetk?=
 =?us-ascii?Q?5vQ5Zc4KoEFCY1giD6stPx+xJCpKeJKIkM+jhBIm97Xad7GFQixos8Rfybwe?=
 =?us-ascii?Q?E10rQtxpfX/L9bI9+VAJ0f2mHT/wp1tlA70oT9faCiC3Zt/cIAjlAXtb+BJu?=
 =?us-ascii?Q?dj4PLq6aDCQhjNUntdAFsLUT5xZB4ysetaMyGy+CT8eiP2ejHkENGIv/WIwp?=
 =?us-ascii?Q?TjRFibL6WpIFZNe8qnm6A5oMap1k/MPT/b7JGHKDG/prrMrLs34d2PtZNtbF?=
 =?us-ascii?Q?EXqgdK9JbkSPl+N5daZtX+l8TYrnuyZ2juB135jrqqwQBSqoJqylBo14tTEt?=
 =?us-ascii?Q?mpf1zDX1K6GrXXzVB508NDeNGtFE4eZKbBHoXkyJglkHyf4+lARQY4rADxOo?=
 =?us-ascii?Q?WtQhNFAIuICoo4thbrBWnS95r9V3c+sWhOzDysdD1wA1eMADqVzHMIRt0Z+m?=
 =?us-ascii?Q?jCBM5JABF1Eqk/zi5SCvGOplfKWftvM52wVDXfJbuMAgZLG/PKexO3fs7sWL?=
 =?us-ascii?Q?8YSvd2WFQvwWqLPdKoTtGBAqUpLYqTjTGjRLVR7HkuhSKODCtJ1RtvmDsero?=
 =?us-ascii?Q?tDdVHtyByuY91o4/drn9u0BK8oqTMnr8gKNl0jzqCkL2lw1xHrf9xhLDsV/x?=
 =?us-ascii?Q?rnNnkSamPYwakI8neXmQ0V+EsAufXfze1u58bnSre5k/lE5lZoxbOI5FyOjD?=
 =?us-ascii?Q?ptghikQ1X7QKDKU44aUUkr1XK2Mjo2SgBAi8qfMp2p6kk0Dv4/AFUS9HQtZS?=
 =?us-ascii?Q?6TUmEbI/v4FO4XH+DOnuIkRyojRkLrr850L90LGokviNcc7RrS2v+uF4IJoh?=
 =?us-ascii?Q?imj8HU9yv7bkVGlYyp3Z3ZANBZvvGD4B+Nzmrqo8xTzT+Bj0PopMbN6v4J/x?=
 =?us-ascii?Q?PPA7x5dPKUJS0dGgpMyw3qbg2Y8a2Y1T5Ov1gyN8bx37L6pT8HiE25E+s58v?=
 =?us-ascii?Q?EnFkl+cQz64WgSvp1HRSR2YIN0/N0EwGhzXzqmtg07x/GQ9OK0bfjvAT3oRT?=
 =?us-ascii?Q?bJxaN3R4kpXROgcbs1ty6BUzUeIayKWWZqrFM2SCzK4s/lms4PCnSQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RjMaYfTf/xJu8VkiiYo8xkqnMVimPRkUFxjuAEQ6/if80JvC2YQ9Ooyc9xhf?=
 =?us-ascii?Q?NDMA5eSgdFQUsfAKuPFuhhrfRxj+b9cYTJD3fFT36NQUG0hki97I1s1l78gP?=
 =?us-ascii?Q?aDOAKLZIElptWIbTyW2Vp3K41+o9Ol8XG4C9uYZZufNjBLFe2QJeRUO3FspB?=
 =?us-ascii?Q?6B7ovn1CP6ywXa7T7rNO+zCHZrUcCNg7n52QQeXFL0wkeWvmZ57OCVh64nBP?=
 =?us-ascii?Q?HBnXfemJO5TbJzlAHFTmCgKVbdufmrjAOq9dkKHs+feU+pOInhUK/MXKCaXy?=
 =?us-ascii?Q?KS1eZO1n3/i9FNW/+FQf2sggCVv1aALteF5h5t9whQhat2i7O64WSTvEcLI1?=
 =?us-ascii?Q?2zLtXC+v174blAfTybvtdpxV4exLNqRWJQ8m5BPHmhJiPngFlnvDVNbMQZyP?=
 =?us-ascii?Q?p9Mcml8Y/awLU8JXZcurZzI5zt2DbGfNu2ZFhmcXeJsmm5/m+17L/U67iuO4?=
 =?us-ascii?Q?EsXMni/PF1XV4bgRycuDA5Gm8Ctr5svReDNSnCC4JBT7D5/uPG150rriGYXs?=
 =?us-ascii?Q?4nvW44XsfFoqUcDjr067ZHMX6DEmgJJfG735yntA7KTqvhpJm40EtYdGnul5?=
 =?us-ascii?Q?AxG09EKdvemq6lc800I557zhgFuMjXAR8k93/14nkJKfnzzi8M89RaivYxOS?=
 =?us-ascii?Q?upJWWUZvPVnoqzlHvfYGfEbO6EzkaFiCtFa5FpY6d2N+9U+SMBfz0ym+L0km?=
 =?us-ascii?Q?B3dMOJy6kQq/CuAahVveTO82TeoAA5TiWbbnEVMlZ1YtlRSVYjCWqf0j9jxZ?=
 =?us-ascii?Q?s/L1D3531fo/U1tuYNgXCKbC1LqKkuvr0mXqvwjpVKWY0E/UrXPaoV0vHURi?=
 =?us-ascii?Q?tCR+pVY+H1haqvcdoN1QcSkqFLxbqgXP87vVzV1BW0BVUsW8GZ2xEVFXDVWO?=
 =?us-ascii?Q?keXxeS07m+wPc3b1lgxBjAPrux7ZnFTZwor1OTqFgohMMPLnRPGEZ0Zk8uym?=
 =?us-ascii?Q?PhBo1tkoWvG0pa5u2aMwjidmeaDTEPYIuuZ2pEyQByIh4PMMrU4xddnq2eSq?=
 =?us-ascii?Q?CTcF1UueCMPTZnoYwBe4mVdw++vAitJR3bcZhIchVesW7RWGfsdMGD2CPSI8?=
 =?us-ascii?Q?X2fVG8aypRlH3iy00hKGdauqHcpSGcwTo4bwGNPAbMgj+jIz6e0VSt+byOkO?=
 =?us-ascii?Q?K1KHGf6qRfjQdOZup944I/oszPYDYGFd4HorNCPnR3grpqwx8MRstn2a82w2?=
 =?us-ascii?Q?6bkCuQF31C7yYmXWZH4EVToPEZR/TE/xWwEyTy/r2aEjNFYARo+Hs6KPs9FK?=
 =?us-ascii?Q?EsRUphJYwO7cPNqGMJjxN7JBx4DmofVXOxjk7v30W+uUPa7t0BSDeO9xAvza?=
 =?us-ascii?Q?wGP4xNonfKuynOnGs2mskQvJ9HKiNNy2Y41V6GYitV04yrWFKBmtrBqBnY6W?=
 =?us-ascii?Q?+qyEOUZk7yucNoArW9Gs6KeI28VYMHoHArJ/nJLjh5XRalcXUBM6LTxuBSsO?=
 =?us-ascii?Q?F37T8tIZw5N6iH+LHBB8ndlNlw/vWTPMQ9cfrKC2owvIlzkMm6AYDyLOIfAJ?=
 =?us-ascii?Q?fOrpAo+lZZLLb4N0GOA9n14hehh3cvF1gmYHgeDQLH2ssPvrel6v4QVe8z8P?=
 =?us-ascii?Q?gAgwkQ26Xt0wQICBogAzLZJnoox/wd+1Cnn813d20fn9F0gvXt21dJaO4dIL?=
 =?us-ascii?Q?nQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d848e18a-f650-477a-8484-08dd34ca25f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 18:34:58.1190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4tZ763u/DySzPs4FTBzhaUSjHUzLTTft7tvXwKfNR4EEAxkr0aQBkUSHkp3iZw9Cy1Ngl9cpgWpeRAaTEkpbfdnEM9S2N9EASiafjq/+kAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736879729; x=1768415729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OsD1t81qIDQJvhTvJRHMN46AS+Naa+yPuctvjGTuRZs=;
 b=lJCoXwdy6jim5TLs+preRuNnDdJeM9VlAQzjptRHPyZnB+fMAGDTP8dN
 ZPemAEL2U5HWBTdKibc2m/GujLbqBu3CviFXOO4HALiFH9FmefEI0PioK
 ZqA+j6wOCAE8aQ9qkTO2xWaKfLvVf2XKxfECQkXppMlevfzfybNQqS5Ao
 6SEbBY9w2wZ0oIft7LfbZr0UeXFZqwsbOxjtsWSKk6KKlCUgzLqWlp2+f
 oJIR5C47/f8tJ6FtayVlb7eHijZXEa8epJ2nuhRY5dKYqDDY9vAGMdGMK
 8t/bVj40FVTa4Y+DkxlX53rfoQK/diulcDCm0PKDCrI5foLwVI9CUXkUN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lJCoXwdy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix
 ice_parser_rt::bst_key array size
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Monday, January 6, 2025 11:24 AM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Dan Carpenter
> <dan.carpenter@linaro.org>; Zaki, Ahmed <ahmed.zaki@intel.com>; Zaremba,
> Larysa <larysa.zaremba@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fix ice_parser_rt:=
:bst_key
> array size
>=20
> On Thu, Dec 19, 2024 at 12:55:16PM +0100, Przemek Kitszel wrote:
> > Fix &ice_parser_rt::bst_key size. It was wrongly set to 10 instead of
> > 20 in the initial impl commit (see Fixes tag). All usage code assumed
> > it was of size 20. That was also the initial size present up to v2 of
> > the intro series [2], but halved by v3 [3] refactor described as
> > "Replace magic hardcoded values with macros." The introducing series
> > was so big that some ugliness was unnoticed, same for bugs :/
> >
> > ICE_BST_KEY_TCAM_SIZE and ICE_BST_TCAM_KEY_SIZE were differing by one.
> > There was tmp variable @j in the scope of edited function, but was not
> > used in all places. This ugliness is now gone.
> > I'm moving ice_parser_rt::pg_prio a few positions up, to fill up one
> > of the holes in order to compensate for the added 10 bytes to the
> > ::bst_key, resulting in the same size of the whole as prior to the
> > fix, and miminal changes in the offsets of the fields.
> >
> > Extend also the debug dump print of the key to cover all bytes. To not
> > have string with 20 "%02x" and 20 params, switch to
> > ice_debug_array_w_prefix().
> >
> > This fix obsoletes Ahmed's attempt at [1].
> >
> > [1]
> > https://lore.kernel.org/intel-wired-lan/20240823230847.172295-1-ahmed.
> > zaki@intel.com [2]
> > https://lore.kernel.org/intel-wired-lan/20230605054641.2865142-13-junf
> > eng.guo@intel.com [3]
> > https://lore.kernel.org/intel-wired-lan/20230817093442.2576997-13-junf
> > eng.guo@intel.com
> >
> > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > Closes:
> > https://lore.kernel.org/intel-wired-lan/b1fb6ff9-b69e-4026-9988-3c783d
> > 86c2e0@stanley.mountain
> > Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
> > CC: Ahmed Zaki <ahmed.zaki@intel.com>
> > Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> > v3: mention printing change in commit msg, separate prefix from the
> > debug log (Simon)
> >
> > v2: same as v3, but lacks code change :(
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/20241216170548.GI780307@kernel
> > .org/T/#mbf984a0faa12a5bdb53460b150201fdd7cc1826a
>=20
> Thanks for the updates, much appreciated.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


