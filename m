Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 514FAAD44FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 23:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A80942130;
	Tue, 10 Jun 2025 21:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t161P_76dFPM; Tue, 10 Jun 2025 21:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA90E420F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749592268;
	bh=zwl7fxN9SO0Icm+fF6edWATV2jwFRCkq7I+mt9PedvQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tBlfLGwxXmLfkGXiACgMDHenJ+xlb741PO/2+/7Y6izo4ULTQ6eEeHBDurq+f7lVV
	 XwpfqjnZtVywukhx6sTHKhXvgLfMhuwrxgboj9EzQ0EclEb2talru0VmuBYIU3oUgI
	 nAnJJpURkfKNQp1nggSL8WvK70gWjyX6/WRpVKK1ws+8Vvez1to1NgQ+12OKiiXERP
	 n324SGINDJ4iNq3azECJS/5MfZ3cAkIxJmu8NQs1tIRYBGFtbn48Cr+2CUpuvwej7u
	 2KVtu3eADbAWRUF3wdrSk1T3ckDtvAEcgr8P1uiTJ+ivMiSCstyrft+nXEgHj/YIJ3
	 wK/bJ4T57NulQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA90E420F8;
	Tue, 10 Jun 2025 21:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5A00183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C305C4024B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id di0qBrwJdCRq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 21:51:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 543B040069
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 543B040069
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 543B040069
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:04 +0000 (UTC)
X-CSE-ConnectionGUID: toor4u+MRkG79Bg/nEHA4A==
X-CSE-MsgGUID: Hs9bg3s1T46fNmTmFxHdyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="69282552"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="69282552"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:03 -0700
X-CSE-ConnectionGUID: 3swDCq/vQjWwGRuca34EdA==
X-CSE-MsgGUID: 7vm5FCaISOeBzk8Qk/gy3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147903350"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:51:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.55)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=McPP2ZlTmbaNcOd0Hw5RCYzA9Oi8rnVKnGkV1oBaqGiwl6CPFVh2rIslMXDWcpjlzgo5nEYo7Ns4Xrj6wtKRi4nw8plq/xF1wWTc0u4cWRn1hg0P0L3d417WVdY1EzTKTHKtGxNjgER1uHQOSBH64XEe+Ae8e/jK65oH0LGsnY1gSwyqTNa9r2tlJ5Rs1op+xutwkypk1X48Mt0r30V2JrFx/O2VTRQl7BHyZ93RBVC9Bq/BMqxifEqU2qt2TbxdJEVYB0Zhjtf2nJgOlslDWlDhIdJvmXot2ci50fOL605YTCtkt+BNDnCMkxYc9C/qdXX7Q+yTm5N3hzVqHCYBBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwl7fxN9SO0Icm+fF6edWATV2jwFRCkq7I+mt9PedvQ=;
 b=D4pkNlHFLA+nw6H96qxc/HYWWkP4WeveabLcAm4ZxpRhnI2ZPwGd8H8PiAwjVOknPWsQInkNKaVduz3Weml1mbrd0zgv+Rocg8SoMzxHjob1tk5HaVyVpO9tKy+XnHv7lGAtQIrxeROQukXQMnzgc2itmfpIkdU3Tt5DO38yVDBsHhMaM5r1TeIWISf54D39Ws61WI0n6/uCsrg7to/GONG8ZhwpLbpRIUJZ8jt7QjzlIRs/nP02jkzqPs7ZpJKgNeiT2dDKMy5rOThEOcBeGGketLoWb2d+gEVdSqVUflY8QokAJBm8GCeF44Uvj4gBoBj1/sOM3h4jyT6MCeNDyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 21:50:58 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 21:50:58 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 07/15] idpf: remove
 'vport_params_reqd' field
Thread-Index: AQHbxnMgkikszEMUzUyzde56HWG+MrP9FChA
Date: Tue, 10 Jun 2025 21:50:58 +0000
Message-ID: <SJ1PR11MB62973B69B2CC21C7D6B5DAE79B6AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-8-larysa.zaremba@intel.com>
In-Reply-To: <20250516145814.5422-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: a85ac4ac-d542-4c59-689b-08dda868e288
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GdJtbQ552ohCGdvVw2NSkpaPKbAyG0YOtK9pKi+i9rbB5MIoMn/9KWG7WYpb?=
 =?us-ascii?Q?9bUG1teJPc7F7IxtFfUPmIYlCGzJH7MMbLICPo6Yy4GtCRD02bO4mpUchaaH?=
 =?us-ascii?Q?SEH9tJX9zg4Phv01Q2UrFZp8gcFNMtgGQkiclSvGOMLMvQAA2WRZqKssFtH7?=
 =?us-ascii?Q?m+qI8YtTh4l7spE4XPnoLs7IQwz5jv452GAgMnext4AERQvsi8U+hbQUW4b8?=
 =?us-ascii?Q?dfrb9xWkT3Lcxjp/XTKToj9/yD5hrQWReRqFPIsUf7o6PMVOdj21yZHkrlPN?=
 =?us-ascii?Q?3RpGuUpTcHUv8tkx4tny5zgx4XFp1YJQSPgEkTamx2fXaBVYdsU9urJZ+XtD?=
 =?us-ascii?Q?/mE71drCszuGXeP4P9Xb8dwqt5RTDcjuqFoMWf4GkUpPN3rZhcWnhyIocVyJ?=
 =?us-ascii?Q?5YbIO+vrGjnlp2jlLRODKIHZY5yz3GM1k4UNXBpVkJchV1kb9ZMSHvHw9wEP?=
 =?us-ascii?Q?rk9H+U16KNABFRcbQg66p81l/ylnFBUHI9UV5JrXd9Ag2titwJ9IvFv/Ugbk?=
 =?us-ascii?Q?CLf5jA+pnEZoZfyiyvNnkrKGwPb5jacsPOjtjhyfTZz59ckecdWKwtGs12du?=
 =?us-ascii?Q?gNn25TdiRBieriLp61m6FleAH1FA6+wRx5GPAduIHRhidanZy53DGZpn9BR5?=
 =?us-ascii?Q?3B9lyOLOStPLSuKwZ+SmLpbLvWYuEvEZc+kpxMwBNyr1BhrmHrTTusSKxNXt?=
 =?us-ascii?Q?/mYNyzecRo6ML0QXVa6aqLofiTA+2t962Ohuwnyw7KBrDJVMmSuG0g1x+v3D?=
 =?us-ascii?Q?VvUoS3laV6e7d6Jzlp2yhP5Si/T7twj0vjCym+kyl6tuSzrkSgaKp5DMChPH?=
 =?us-ascii?Q?Sf8AZ/aC32rmKhhb+FPEAwJ9wyh6S3hZWTCEkSyLbiRyKLGiT2hqKjcN8x9e?=
 =?us-ascii?Q?NTk0Qsr5ucwUzjcwXAZkd7T0npa1G7Mc30P9vMk0FjdaaV4yGOs37Fxtlg8/?=
 =?us-ascii?Q?DNf3ull/aUPUXHGm1kxjraanlosGM40zf0RamQt2ZtPS7oKroY9WU2ioimlb?=
 =?us-ascii?Q?+8ogkDByadmd/cYrkCLEQkCHU+mb+UsKp8ZXLgH+CAY469eQnpHU7XQfKMGq?=
 =?us-ascii?Q?PqV8m1IHtecHASYeA9rEjmOgmmlidFHfH5geyxHG5R/y80CmTZKyDqcvr7tB?=
 =?us-ascii?Q?2kYF5gpLInmfLbYwBTwRRcCBTuF1bas94oqveRyXr3sGpzkhB6KLYomxMd+/?=
 =?us-ascii?Q?gzhvoVM2ES2GfT4PiopXnw2wrxzRAPxx95991K2BhHEd1WSJsLGlzFOR8Znq?=
 =?us-ascii?Q?uJH8nQl23HjyjoaTSWfc7hAxuqkGkGfRex2PtrgEk1hbprFo1NW/AS5qmBd0?=
 =?us-ascii?Q?WS+/c/atry/O0JtzNpk+uLvHFygBQBzxxAQ3rPVSRIbAwak8F46e8EB1d8bg?=
 =?us-ascii?Q?EnOvkePef7qorM8yGx+5NKgCPQszCaxdy/5/duD9ao+9IKKqNFZgPHfyf1bQ?=
 =?us-ascii?Q?Tg/79XpVLG62UEcEyHyn9jou1OfHQpySgA4MD265nCCJhqRHR/gAFQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c8kmmQnJCUGPUKXzEJHwFTDuxR5P82rnOId9r8rB/X5q0lkXla1pJm7yUh3G?=
 =?us-ascii?Q?qMT/yxpNbUVOFoYpOBYVzeL6mRvtgEzs1Xk0VQ3it5GfqJkd5/ZbcGboNkqF?=
 =?us-ascii?Q?iTFLEu413pmnJqNUSDJvFk/rVQtYNsaeLXScpEiZ4rCWms0fXyqpyVpvfb4l?=
 =?us-ascii?Q?zbG9gXbOm3V6RQnEwpBzK/aHAYLLyaHFgYROzcbX7L8DSejaE2xC7xnhxa7J?=
 =?us-ascii?Q?ySl+bDPOafPXt7l9b77J/5Q3e/CahxjU2l4yfS5ROyYWUicn4SmyYqtwDZr2?=
 =?us-ascii?Q?rCq7OavMz9vMfe0NqKkSwe/tWSkUwRoKl84FEyZmwbD/5WIy5z4jKbLkywY9?=
 =?us-ascii?Q?SaAH9W94dayPqEHz7q1fdjkTxzpWkNOUYMg9D5aiz9KdVwfQB/b+8ZIjBoG9?=
 =?us-ascii?Q?QGj6kGCmU2RMS47EaiIqkyXfbU3TQh0zdvr9k7T7nUQiIIjAMp9s666+aWSB?=
 =?us-ascii?Q?JY+iFVqyDMzHC5HuWmaALu8oKjlmPV1k1DGcb8NhlxhYXqZu6bdnByQyRMSd?=
 =?us-ascii?Q?Q+e60sgepvKuYCn8aXJF0Etsh0pyDUHjV5vSgWHug+cmgdvo8BRqeEnqq9xl?=
 =?us-ascii?Q?xSa575+US52Wiu+kGt+HFtNtlIywGB/bp1So/546c/eZ2kF43WyV3nWLiA3H?=
 =?us-ascii?Q?a+1gUrgOcDD/nk1nIKxJaxKZoRCH1BmJjREAAQE2yDf+cnZ6g/HlxFTtMXJx?=
 =?us-ascii?Q?D87XfB7y3DPHabgCZ0/2+PPE99KAWi0pn0PXzqgEBTx74pXeh6feNW/reVbR?=
 =?us-ascii?Q?rytTww9/X2sWckPciSUFJDjRHlhV/qoMaMVDHwKM9pNLKFDhvKbCtwi3G1Mt?=
 =?us-ascii?Q?qJRCKz/OVMnjijw2hPv6FaNGj3fQSWI3uCBUbWN78g2be6L9rPp7ejKii8bO?=
 =?us-ascii?Q?CW3tkPehJbUIoaqDaetQ60YEzoK3pSJ7QyF5ZS2NNEZcRSLLKmDixPCdqhtC?=
 =?us-ascii?Q?qwXvX32oIseAQaWlBCDVL6ND8XB4KJfSpeJhKDiL51PitKtBGYute6capJ15?=
 =?us-ascii?Q?e3NkBhxwXbFGbc6UTI6gE1K5mG3IP56GWe0lxXuL+R3JYBw/gxLkzUH/Lp9r?=
 =?us-ascii?Q?tx4PcycWXFdko9o2BWAxQ5GkgtWarVZvLIWnM8rU94l9S/9Ir7dTuiK/+oVT?=
 =?us-ascii?Q?bPOdAJ58BeWpCMt7ENTyHzzUfrgZ9yNggUUldTXrO0sGh9xA2umGb++Ehmah?=
 =?us-ascii?Q?4wmS/4K+zT268L0AajWUw9PQ2Q9lRhV5ClBN1uJ7ftXBv4SZZOs6xgCUpQIB?=
 =?us-ascii?Q?/WRUMmEhwAmC2YfNJxSNddoMokU5KrtF3aHWX91E73aIMayHhfJDFrUy23rN?=
 =?us-ascii?Q?8/+iThXffm8/w3Hz1ry4BJ++ZkDH93wfMzV9AR6AMAxkeVNSTnMUw3sFOSX6?=
 =?us-ascii?Q?+AEtXnQjCAIkbxiL6btSGV+5vDSm13yFRcEmb1AbmYHPvvEGXRYPbl5Sq8by?=
 =?us-ascii?Q?WwixxZGcvACXKDFpc0tE6BHFZdO6L2bgNjOTvCDfJ5/5nkOLBP2LhqlwRfNz?=
 =?us-ascii?Q?7EuJpnvicKtpYcKMKCzyLsIrEHJwB3ZUnL3Q0RHD1hInNMRHaK64OXB6mKw7?=
 =?us-ascii?Q?K76iolYu39t4T7UjyAY0iTZvdkbBlgpSm7w7hOv+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a85ac4ac-d542-4c59-689b-08dda868e288
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:50:58.6955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQm/Rsoatc7pbll02yEjCly0gx1DmkyDdkLOtUXmRRcoQ/rx2JTs/VNVcYSh4mDxNK3O9XvvDmnoHBuNqhPXXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592265; x=1781128265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zwl7fxN9SO0Icm+fF6edWATV2jwFRCkq7I+mt9PedvQ=;
 b=N90t8RFOYiAQ3gtn8UjrE30x/cVSfBVCrvr6CooRGWdQY2tfsosaoQKC
 OffAbRj/RXfTS16EYYf3j6HZHPO+/XXtjE6yVz0+IX6w0jsX2Tipujazm
 ng2mg5j3btGx4gssjPzgxWbIV5vaIPOkcUxD1Ww22v5M2WCytumzBvRcp
 53ml6wgCjOSBVQUghc+/YSJBfNVL8XvnzxfWirrggaC85jbRDk9PxBKqK
 1XbT/YlgUcGsVAc2eQ0MNuOgzkbMH62sFJ6CJXGsoJ21qhhXD9Kqx+355
 2fH+y2m6fqw/6nBaD520v+BFpMHaHTJok8QZkEH0eF9VCvE7LZ3sCaBA3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N90t8RFO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 07/15] idpf: remove
 'vport_params_reqd' field
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
> Larysa Zaremba
> Sent: Friday, May 16, 2025 7:58 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jiri Pirko <jiri@resnulli.us>; Nikolova, =
Tatyana
> E <tatyana.e.nikolova@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Michael Ellerman
> <mpe@ellerman.id.au>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Lee Trager <lee@trager.us>; Madhavan Srinivasan <maddy@linux.ibm.com>;
> Zaremba, Larysa <larysa.zaremba@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>=
;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Olech, Milena <milena.olech@intel.com>; Linga,
> Pavan Kumar <pavan.kumar.linga@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 07/15] idpf: remove
> 'vport_params_reqd' field
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> While sending a create vport message to the device control plane, a creat=
e
> vport virtchnl message is prepared with all the required info to initiali=
ze the
> vport. This info is stored in the adapter struct but never used thereafte=
r. So,
> remove the said field.
>=20
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
