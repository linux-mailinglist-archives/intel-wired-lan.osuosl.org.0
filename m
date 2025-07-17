Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D96B0895A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 11:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6207D4169E;
	Thu, 17 Jul 2025 09:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkWeG_BGUWbR; Thu, 17 Jul 2025 09:34:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A625B416A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752744846;
	bh=ib120EDByQZZztunftTyJkwzldwbNuDAchlQouakrj4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hZIgqQ+3WRaDY8P4Vsx+HFU5LU7tuZVz+8JD8P9x9fiGWnLxUP5EPEz17GiS/IyOw
	 gQLlBpRIEva77jGVl+M+qKedHBkQlj+OcVHXi4nqB/0r2mp/Qgk0AkxNjzdROEwgoy
	 Zzg1qyGZ9sxzGmDCo5p8+cvqYnEEGl9UZtmdrpesp3qvn4rhrfzEcdRLuUWWgl8eqC
	 003OQuunMjYD6LkspmG2J63i+LX8YiVEyuThUUGXtwIu1MaEY1rwG57mXZSY2A5dKQ
	 CFv9o5gISpZhDzdazQpdOL//Pj5eLZCX6iulm2EdObD3Oo1PvfyZzqesO5USd4Ghqi
	 vKZ4hT/8LyGUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A625B416A3;
	Thu, 17 Jul 2025 09:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1621A117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E53F74109F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uF4_emOGMsXT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 09:34:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A9B240380
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A9B240380
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A9B240380
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 09:34:02 +0000 (UTC)
X-CSE-ConnectionGUID: 236H+86IShCpTm4EMfJJwg==
X-CSE-MsgGUID: J6EhZgD+SlKs0jrhaeS4Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58784440"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="58784440"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:34:01 -0700
X-CSE-ConnectionGUID: dQ417DndRhWYmHto3bxmjg==
X-CSE-MsgGUID: d1QlflHhRUSyXkfMDxUnnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="157121025"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:34:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 02:34:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 02:34:00 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.77)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 02:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tu5MBVo29L3wKz7RNafzOCHTMGPtg6sbfhFa/Aoklkzc/vSL+9uOr3jsNcJnW0DOw6W0gIELu1c/hWL07Whq6mJraCA/Q+Vd1gIncn/rMEHI76PbW0bgI53hgCAGwDsczkBuKtkU/XBxMG0oMP/QExzrkRXgkRHtuhFcGk7UgoZUe7HMw54TPwNFOVb8FcClAD1kMIP2NlHbzHGv0gP6Z32UnObqA0H/0KoxKeCPqUyU2xyG56vY7QMqLRhGguVp0TAc+yCwLc5SsEYAiadynKqk8PG84+NJ4f5OGHWL2rWOE2ggedVoPlmSdNIjWVe+iBA3gO+VNVCQZSaYQYXShA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ib120EDByQZZztunftTyJkwzldwbNuDAchlQouakrj4=;
 b=lVoFTOiFEwUpxwWrPxA6MYP8X/Ftyg8ITFhID+fvX8zkI5nGF19GY7oAl2srlisa3bS3vbu1xkBvLaTBEitlK1FQOzJB2aRdZlSVXyHGGISEdCFFYqf8mw8kBsiyeLsHrYPAJP4ScV+9pHiWqkpyt6obtqs85k/X5ztSDtyER/lLRCtPDwiKm8ruf/YHNeDw5HgklsGEf0cTJrznJV2V4xRdvfMWkKPMQpLFOUZ/hYbabM07wTL1cPrORa55mzgipDPEr3eSFJRfZOvOtUGFoRQ2lK+uNvfH87E6r3e+zBHSKisNMvLJpME5+WUp8pu8lstMj8upQ7TK4FPLPILYQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4780.namprd11.prod.outlook.com (2603:10b6:806:11d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 09:33:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 09:33:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Yuto Ohnuki <ytohnuki@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
 fields from struct ixgbevf_adapter
Thread-Index: AQHb9vdVlz1/3hpwIU6AYIrCLSnYbrQ2DaYA
Date: Thu, 17 Jul 2025 09:33:58 +0000
Message-ID: <IA3PR11MB8986F59CEDE4BF3B7994241EE551A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250717084609.28436-1-ytohnuki@amazon.com>
In-Reply-To: <20250717084609.28436-1-ytohnuki@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4780:EE_
x-ms-office365-filtering-correlation-id: 6ed85ffe-1e92-4d89-c904-08ddc5150e94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?56qCEEZVZ77wZtrnhsG6/HXnzlCdNIcjjsyHnWXPDgX1w2CXlvDrLkoRRUet?=
 =?us-ascii?Q?EesOBlRTGQw3NzUm/XnQ3DQvdNg97rJ6YmEiwmPxMaiIiLgcgEGyx0MAgdLU?=
 =?us-ascii?Q?SWAETFElTZ9qlE7f/v0xaTa4RSRrpyeM57ckln5u311iVFi6gFOLo6aLApVJ?=
 =?us-ascii?Q?t3tNfWGZDPsycWJuO878VOOiY39ndWYaAS0DNk78sFTt4Mq/1C12et4Ufg6y?=
 =?us-ascii?Q?BWwoSW+PGXcFebpvVS5a3NDvWo1xgYgcaLeMW5eLE3SHusvkSAuZ7aIENDBJ?=
 =?us-ascii?Q?XtEsgImUiC5vNXG5HwfEeyqIkHUFTnKy1UBkr9KjvOq2AvFm6iW1TOBwFqhK?=
 =?us-ascii?Q?+e0n0NNJsEPxFu/3mfJBlZgWCwtceC49MqmXpxyFN8WeHLqxoFsrXQmFPgL2?=
 =?us-ascii?Q?Oar911jRrN66WxX/2V+xXZQCo7lFWxq4uMr++5KAct27wP0rio5gfgR497ZU?=
 =?us-ascii?Q?YeF/kaDfWRjqtTMk8yt+Dr+2dCiUzrmY0J56W436LNTsFrnhEjrTE05kK3NJ?=
 =?us-ascii?Q?8iK9MxtljEaq99e9nCN664HaArXAbCMzcJpcGtk6kqRfE0ly/Oc48v7GjR4U?=
 =?us-ascii?Q?3X01z3ZCjuXEB1RtB/N4H3SUOjSR4TM5yNgbeLF9IZuUx9zhMPg/YVHsR+mO?=
 =?us-ascii?Q?VGyPmNW+D8Osy+EjQy8fXJjqLkFrIQjsmu7GbxKRyQX0vPdAVRjcthP+UJcA?=
 =?us-ascii?Q?PS/I2RSUO3kEewbM96P8hqt7rY7TfcI557rsmndzWAfW5j8bO7o5Anzpd73a?=
 =?us-ascii?Q?GMfX4LPyikjZdk6iBCvttKpU5OSvA8CjiwoG4Spf7MF1JhwrztthMP6JiJrG?=
 =?us-ascii?Q?NoOse8ZAiO8IC7s7nu8exmVwZ83M/fGJfdmD5fxZcLMbpQ+SB2yHzLf39syH?=
 =?us-ascii?Q?hE7aG1xCclbq5MShUrjove9AfPQPL8Ft6tssMEHRHVkBaJbW8HV5TLbOvN4R?=
 =?us-ascii?Q?R9vYNNG63UTWwMZDFj2h6S8KSAsbv9SgN1XzeYHandp0t0BP5DEDBngvXRXQ?=
 =?us-ascii?Q?8He6gb20A3ZEZl4AOqOcBX4iFJiqLwJIpgYGCjwY40+fkGh7mfo/ccztkcx0?=
 =?us-ascii?Q?g7sn1hnZscMuxResail17mVvNHyRlJvFf/5H9XP2J/tQe+3ybx5UgEoNoKPZ?=
 =?us-ascii?Q?FmnOIJpoXy5xR1dyOU2Omsr6BRxxJJFoSj0leZCxyTgDj5IkGs8UQFB3ph5P?=
 =?us-ascii?Q?qBE8s/obFGDwZ7fKPwEDQS6LeR3c2XjT5P95fmCB8x6fDEQl+l0UXSxXCV6K?=
 =?us-ascii?Q?7moQ9oQrKvM1ExiZ6UvGk9TrqNg8RBH9XnTN09jh9Pq23y71Lx0xNWhJm3Ri?=
 =?us-ascii?Q?lJnnzaCXBWEDeMbbqAvq4fZ+SiJhoClMUyBYcCVyL1aPewbeXe4686EaGDPF?=
 =?us-ascii?Q?Z58nB4m6ZBDtn9rGICoqmf160r9zByKxr+kWM1M75JZUsv5FeJsHDOW1fu8n?=
 =?us-ascii?Q?9uQ2AcCaJp/6zd4y4DSVajQRdSpPmp7qamzjik8OlkFFRgaj8+Gszw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tk3iHXTRUpkdaBfBiWndhFMzDcK78V7gxgHWOQMZsl7nP9AOGoUWb+qGqm3/?=
 =?us-ascii?Q?fZcf4Vi6hT1YcXDwKw00jLblIrmXuaEKNFz65DeVlTLndoBdKCungWwzJDuQ?=
 =?us-ascii?Q?p4JcKNkF4FOCoW/iqtMwimmtV5kSLagha1/89h1zwEzQ/rYiLqtopLil7hfh?=
 =?us-ascii?Q?ZBHwO1kUAJncfDIkpHopkjS1Hv8qN7xAkSk+yhOhIVWQti2ikifh/QPa3ZVi?=
 =?us-ascii?Q?cb6qX8s41KXWJScSnu4+CMb/SbLzcejcJALgilhdGGHHkXcVh+0X95a2ONyr?=
 =?us-ascii?Q?YZexrbe5mEHmacycHe3tOl/vie/bOhFy16gwQ46YHPU7UaLWG26bhi9PeZQx?=
 =?us-ascii?Q?lpJVSo77KFpafP9SQs/hIfSe8BvfnlhjAkF5iFJunXNcawI7hf5HuizvYO7D?=
 =?us-ascii?Q?7EJNTUfbHabkbW457PJAtBWn4+ZRtMceQyLj7xlshQ7DbwToNo51Et86T07T?=
 =?us-ascii?Q?s8aWe0v17YWFbO9AfdKrfMcnVWKHaARAb102BBkIW8Eo3fv0gbiEDXVzBZ4q?=
 =?us-ascii?Q?9pg2uUHwi51EQhvIpc3Uo48c4ot1S8H4lSfpvNM2v/rGkpS/2y91DBiWWKVs?=
 =?us-ascii?Q?OvVZprbT8ZPlW+X70v74hSYpKHybk0rtDkr3hbH7jP9KqPOfpkzbPshTCIFm?=
 =?us-ascii?Q?R+PWpOZ3OzWteCGcSoX5qsr+3aH+Xv0vOZo9w8S03WvVjsa4z1LBuqQDGTqg?=
 =?us-ascii?Q?jcTdgMo94e6ZuLixerHLvxF2+k1gP7jjlcjFkwR8dOl+0K2vHF5erDQabZ2v?=
 =?us-ascii?Q?FMO9cQS1i8Dx7P2uKfvJJebb1gWi4O9ebnBFlff78wOJZrW0okSfKYXeySv0?=
 =?us-ascii?Q?/t7Mc3ew9hx5UkdkLgvTXTZUSz5YczBxAjilbT2OiFgSjVSpC6gCVMpZ4vy9?=
 =?us-ascii?Q?xgzv0cUPX/Cx8OCLVwdDFLRmSj80kbF2ZNmXMUsS9mBEJEpTHXVXnlCYOQsx?=
 =?us-ascii?Q?jmoj6+XEfZqyBnTLgoiPffXaAWmjdCbtjbUIxGRXxy4HLmJhU3yTgoNTpuI1?=
 =?us-ascii?Q?0oExMw4Esr5aWuTMhXaPaZV67fFK5Mw0r9q9D1XbrmYmqY00aSM9fqgm4Qt+?=
 =?us-ascii?Q?jSG6CseEfJfTeLwXKEUP6P+sw6cDtmOqFip+YUPxF8TV4yBstKYDZnKGceyU?=
 =?us-ascii?Q?wfkGo2RgEmrTpei7jHBumB5zgLMwvfNhCdBTSpYq/vKOti+zGhe0m/Awjaaw?=
 =?us-ascii?Q?/Hat4a9Gj3LryXBe9av0neEhN39CaQBLlmE1s/oT7Kjhc/QnKMzxd6wM6qll?=
 =?us-ascii?Q?c655x/O8a3/FzTVa8GsGdiEFIZoKb3jXTTgKdaJivh7tYs14/BywtFqLUJ89?=
 =?us-ascii?Q?LjrL2LH2dKxtlp7UqFpNHy+7s8xMPJUReIZG4brwb2W9qDRYlIl4NMed+buB?=
 =?us-ascii?Q?c15NcRgO2xGb7LNHqay2zF5myeQUDzVjeoF6Mdwbk3xOFmhVa6pqFtj8WNAk?=
 =?us-ascii?Q?nQSmW3lx27W+QtMVXYFSyB8jaswMsEaxJBNvxUdPCwICiTbMr57n8ofJnrgQ?=
 =?us-ascii?Q?SppxvLfDNFb2TqDisj8xbWRNVhqlM/RPsxb1qTqb3f/HtVkG5BgVlAX0o9bZ?=
 =?us-ascii?Q?hgo992MRuZ+Cco+BXLGrOVll/1M12cO1zerAmFdv42txDB2fdCBlt77wd5V3?=
 =?us-ascii?Q?8A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed85ffe-1e92-4d89-c904-08ddc5150e94
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2025 09:33:58.5525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcihQhWKUpmbjnF8+5MaPOXHYJhR4ehr6J0PMPw/4ZpYRJ/yZ5KTdEJYV39NfEG3Su+adCxxroXig8A/7qAUa6f14TTph1E7M3phTnKlEbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4780
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752744842; x=1784280842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wMVwKCzGPlKZnqCPjp1F6XuBPvjP/2rtRPViOKxFKFU=;
 b=geSHJib7KJ07NglHTEC43geOWEu3sW3xqb8GfHZdyk3dbmnPLjH3ZHIb
 i1IZk5USQKXvgQuRjxpTzIY+AMqRkroaFBsC94m5CsIz6GKQu7aEOybn5
 4vVReS1zdVE/TL0vjdl49iemdwlsPAXrYjUtA0bYBW+y7V/I8A4MfeT5+
 SXKuJhjrqQ2j4HbPGdtceKi9wLTa9x+GL9IT5aAzdiTBhX/h9KbiOlrp4
 m1O/CH4dpal2Ujri4e/pdc0mcSmRp6FmG42GJmDjzydfVMLJmV/lu8HrX
 0RE6mbPEG5Wk59iPVjcVjcxuGWxu5xHUNnAnIQ2h35PqmccGRuB5iMmq4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=geSHJib7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
 fields from struct ixgbevf_adapter
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Yuto Ohnuki
> Sent: Thursday, July 17, 2025 10:46 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S . Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Yuto Ohnuki <ytohnuki@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: remove unused
> fields from struct ixgbevf_adapter
>=20
> Remove hw_rx_no_dma_resources and eitr_param fields from struct
> ixgbevf_adapter since these fields are never referenced in the driver.
>=20
> Note that the interrupt throttle rate is controlled by the
> rx_itr_setting and tx_itr_setting variables.
>=20
> This change simplifies the ixgbevf driver by removing unused fields,
> which improves maintainability.
>=20
> Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
Can you add 'Fixes:' or 'Cleanup:' tag ?

Alex
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> index 4384e892f967..3a379e6a3a2a 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -346,7 +346,6 @@ struct ixgbevf_adapter {
>  	int num_rx_queues;
>  	struct ixgbevf_ring *rx_ring[MAX_TX_QUEUES]; /* One per active
> queue */
>  	u64 hw_csum_rx_error;
> -	u64 hw_rx_no_dma_resources;
>  	int num_msix_vectors;
>  	u64 alloc_rx_page_failed;
>  	u64 alloc_rx_buff_failed;
> @@ -363,8 +362,6 @@ struct ixgbevf_adapter {
>  	/* structs defined in ixgbe_vf.h */
>  	struct ixgbe_hw hw;
>  	u16 msg_enable;
> -	/* Interrupt Throttle Rate */
> -	u32 eitr_param;
>=20
>  	struct ixgbevf_hw_stats stats;
>=20
> --
> 2.47.1
>=20
>=20
>=20
>=20
> Amazon Web Services EMEA SARL, 38 avenue John F. Kennedy, L-1855
> Luxembourg, R.C.S. Luxembourg B186284
>=20
> Amazon Web Services EMEA SARL, Irish Branch, One Burlington Plaza,
> Burlington Road, Dublin 4, Ireland, branch registration number 908705
>=20
>=20

