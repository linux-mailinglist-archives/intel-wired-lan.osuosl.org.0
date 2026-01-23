Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Qj9kOzMHdGmE1gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 00:41:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7617B843
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 00:41:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0F6D40BD3;
	Fri, 23 Jan 2026 23:41:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOhUGplyKH5N; Fri, 23 Jan 2026 23:41:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4057D40BCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769211695;
	bh=B9b2Nill/6oBRxbzsmRW21JPTaZ4zSd70kK7t0YkmEE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7RmezDIhTebcrUcAqH2oK02CuNXBliBa0MHrW9E+bbWYu6B36QMOlpLWWzRoZQzrT
	 xqtfwW86bmvA1LDueUgXO7PFkiThGupI0NFboIPXVfr4IOtxScMHyulkrUQOgjMFTz
	 igrVpBPL0KTpDc6+i8YOrotHeV7PYwjDOoVxVZc8UMiQxNhoUOUyzh8KMewBWDCxF+
	 htbp8PVw5vCtqWo1OYft7ncummTTkbR8YDnm0TL1H6z0/AArJm9a17bqd6elNCsa04
	 9ZGU307LvvFj41prFcDyWCoJxgov8dThEsJKzLqAu0ZeMSEJr0bgHKx/BZuPf1qyla
	 ebnMlK0c9MlGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4057D40BCE;
	Fri, 23 Jan 2026 23:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05B2E23F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7AB640BB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:41:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSsaqrW-khDb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 23:41:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED45B40BA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED45B40BA5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED45B40BA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:41:31 +0000 (UTC)
X-CSE-ConnectionGUID: yMFr3jhlScWCSYHavoQ7WA==
X-CSE-MsgGUID: 0lfW6FXrS7+QY6g0nTUisQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="74315178"
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="74315178"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 15:41:30 -0800
X-CSE-ConnectionGUID: OyCjKORpQ8a0w35DVctB6A==
X-CSE-MsgGUID: zdrNumYqQ9WGZuqRhzljWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="238404419"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 15:41:29 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 15:41:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 15:41:29 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 15:41:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EI9d0ioGEz5ZoeK7Hbgu+NcKu++agrPSArSamd0RRXODTYYr7NiottBhWFamcLoj8rUW7PoLl3bTxyNYaDexBmFzB0gSYdRfsY6rso0Y4LTsOQCW+ZU8id00lqGseA/tmrLy68V+ESlDNgmXpMBQ1OsMI837D24D1jtmg+jXVo7gXa0D5BzsvFQQce7BhTNw4r5Fwk4gVopV1bVGNqddDZtvlUMU/4xWhtaW0NQcF6RpnBLcOYOUkWxPeSnOJxWwLv7kITU2bjqIW0Wg8Zl2AesbWGotUPbGzuG5oc6x9BP5bkQRWd1CEtYTbsMyYjZFClDJSYGW5/BZ/KBrhwL3tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9b2Nill/6oBRxbzsmRW21JPTaZ4zSd70kK7t0YkmEE=;
 b=VKTvb3bjJJ28c7ofPsBY0y4HnSnvC6SvrFzEiTG9OmEZfmPds9re/UQnyUCzO13hI6YDKCYsiuGXYbJwI4Dutr3OzDUMrBJ8NFlpd+0RVt3M1AVm+HgsTsN1xMKtLC+DLNnbieOjoAJ6aVcwFSZl6XMZj769RbRjmzUWQlZLKl1qBr6pmf4gWsceuLq2ZivuI+Dl431bnTnUTb4D/i8VXp0y9nXM1EwCJyxAmvHGDX4YS0estfZONf/zVzNQsZ8HUpyzzz33TXE2EDGSY0UJNnJ3jm7hkQHtLyV1bQPMANZ/YWe1Avh1iSZcc9K6i0ZF73/hK7VaRiciNCTcHcGbQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB8304.namprd11.prod.outlook.com (2603:10b6:208:48b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 23:41:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 23:41:26 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor
 buffer to little endian
Thread-Index: AQHcjKPoPa78aX4vpEeKyXf2xCM1GbVgaTWA
Date: Fri, 23 Jan 2026 23:41:26 +0000
Message-ID: <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
In-Reply-To: <aXPU4YQi73T088lS@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|IA0PR11MB8304:EE_
x-ms-office365-filtering-correlation-id: 4a1092e5-6ea3-4f5e-4c45-08de5ad8ecbd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?/2gQcTNHP4NdN4zRrnZEvIxu+0qyurtdNh+3WiJ1xrk/fr62K2rL7ayrY0nR?=
 =?us-ascii?Q?pn2aJVpsiqpUb1ibsiHh3kE8Ug2bLF1s9HcO16P7kp/HS7+D0fHsHnoXmF/r?=
 =?us-ascii?Q?Hzetun6doIVXW2yM4gpskTDwv/sDiSqWGLNPVsdGovsZxzO+imFRMvYLF0tg?=
 =?us-ascii?Q?g5p1UmBEZMfrBNiAJvkwRMGtAKNVzKBn+nj5/p0jIFu214awKX1cofYiPVle?=
 =?us-ascii?Q?teEnsyEXPs3FE6CtbqisW79xDxbNgWK9BTcvW8/71EiM7X2yrki3N+YGL3kI?=
 =?us-ascii?Q?f00dLtV+yCUnIED4RCOWmEXWH3wiDerH1SVFiLJwmvVIRqDzggqnvlmz4CHi?=
 =?us-ascii?Q?RRdW91fkTVn0IzaGGGCTs3la4iKnN2aVBjhRGeH0OlSD9YRuIF0AlilBHjyu?=
 =?us-ascii?Q?z+w8I1V9qykOqKwXfWkt2yfULi1Se4InCiixxfkZ5y+Caofg5lltEm6tBApm?=
 =?us-ascii?Q?LLEV/bCOA75f/m/e+pqYSBjX/zumGWdd/KdmeZ69x4ZW4fpycnGYL9XzuXVt?=
 =?us-ascii?Q?04z+6gF7IRrMsZRYUOd82rAmL4ExtY5Xj8ORlHJM++EB3Kfhkp/2Il4cvB5/?=
 =?us-ascii?Q?0xd1hiqLGm4KJMygfQ9Bz0vsiZTu6+8KDrDguiyV3RDd407Hi+tSI8oshj6Y?=
 =?us-ascii?Q?Tfqszhl5ecllH4wdeT33yKYBXwXlUq+xK7v1c2x+OP5gX/9ft2cf90KT8Bcw?=
 =?us-ascii?Q?uzbUNan1zDtF4I8nInQZQN49HdmUwg7MsoNXw/RRdQrIckTBXK4vxIUrpQKP?=
 =?us-ascii?Q?mTeEu4raJ8DBE1AQRmvC8krX3ubPGD9d4YUBEUCQvzE+3fDqY0cnnVGX3du+?=
 =?us-ascii?Q?A18ec7G3UkAI7X8zkwrB6LDOntU7NpRbUHD5yZ+386+S9XZpjZU7vGqmOLga?=
 =?us-ascii?Q?gh+IHJaOmGnmiU/39pQCx3Iz38Sz0waHCHDuZX+Cr+zFp18hQQcgLSlCuL0p?=
 =?us-ascii?Q?PFqK8RCrl0fUa2UkSwCHFJPoWLLiNF7RMjtYkEUL7qbi+S5Zcz+JFvU348+X?=
 =?us-ascii?Q?9WDxueJaZenGEAoSvg2l7iLtxWqu+QAQwSso3YORmmMIPIZxXSa0c1ykpj06?=
 =?us-ascii?Q?MvLqZeAr7lw6kVOOz0f1ormcZwIgc3t0Jo/236EMEsjgLAcQRy9wmqHnROho?=
 =?us-ascii?Q?UtYa0vu2pc8wjRAZ9oMg2e1vtWjAeKq53XLFkcEaWw5PnRfd+FVN+RWh8v6o?=
 =?us-ascii?Q?782cEu7RuQtYmXuBb3SDS6bd9TCjaB4SongBCleJi0JyqYKM+S7/cDWD3Vs6?=
 =?us-ascii?Q?LpF2FLSwR1MDguvGMKepiVYnhJAHrUhirVn56RXqB/Smmc/DCNyoDiR9YybN?=
 =?us-ascii?Q?5WF8eZDUFVFcsNF2zGU8Carqe+otDcqqwONywqmlZ9OIy1z9axfYy3rooA4T?=
 =?us-ascii?Q?iBeEV8bDkUn9JRwtDPIASsJ+brsHuehUlI46oLbjEHA/dAwTtlgpTguvXA+J?=
 =?us-ascii?Q?iZim9PvAkfOWoLfqEQgs5YGwttNxP1oAWz7dBchvfqi/CDhrHKQUjC/lhEUJ?=
 =?us-ascii?Q?2ojDEUWmXArLvtJUshK1nYPqjotsPAljOvBTDuoTsaf9mdmG2i2YXFZ50IoD?=
 =?us-ascii?Q?YFf2b+oHNeaFkkyaWPufECep4AkXI0LhBZWW7VyUAC8r/7+p6dyolwznOrQM?=
 =?us-ascii?Q?Y0L9Pn55JRicFAESvn7ccXE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WgM+5V3DYOHcRXieuSpeO1P6dBFTa8nS1j1DhQIbwM7LX88iTBktcH4bUpMk?=
 =?us-ascii?Q?/L+v8RQ59nCIkirfj9+WNl7Ysqxz2GD7hF6J824BjkkjMsnMNa1qpGnf1qQv?=
 =?us-ascii?Q?Sxi69nWWlBfpZA2N6YQamDy6R45i7j75Zu/z6PfkG77hRR5jMiL1oE8ztO17?=
 =?us-ascii?Q?lnj7jbFSMCN+fO8ar0z3dIr63mIki4iPXKStMvSLmBuekzQ6jnsIRsp2ELfr?=
 =?us-ascii?Q?xEYeLX/5ph+CEBj6fHT9FmnaMdwkj/XLdNtNpJPGuxzha0+qcE61cInjdBWW?=
 =?us-ascii?Q?ixhp7BfoR9V+ARFGfdhvnvqOg2fVIv0I8DnUMldFszzrI/cIoMMVfUK3Tgic?=
 =?us-ascii?Q?Ebl2h+0K1rb3dKLOtxCKlffgRhwc2M/iwzctIjwzp+opeRME2iBnFzoFHWp4?=
 =?us-ascii?Q?JMw9m/HbtZg1LHsGC2usOPsS691VLUKrf6cn59ePERj9WOYeIGKvMFAvwEb9?=
 =?us-ascii?Q?BAi0yefnBXsgeevZToeRHJSmK8Bke3sCwKI0gGuLnWnW2p7kZ8BZSuKA4Aiw?=
 =?us-ascii?Q?/CI5QVMeXJ6Xq/VkzXSQqtgwoxsrBsuPe/nTYKQCiBs9fOaurSOz8760vED9?=
 =?us-ascii?Q?alY034E2OmYKvZuuYELcqh9WJfDzS3np8f0CQe+1NRKru4dUUGUxdCDUUVoi?=
 =?us-ascii?Q?6qSXyi7l9yBBq/fvD5tfyJNkesuxh2Fnje927fgcp8DESV2KJp+X2NRN6xut?=
 =?us-ascii?Q?/7ZcPVtqrQT0aCwIr5nFJfFN1qPRUKZd3gReQanwFuCcOTvB+iaAAdRy4PU5?=
 =?us-ascii?Q?g58yZxdMXkrd/mzPHgDM0/O+jjkwJms5dODxNDLZaZY0dHUt7EIAua5LJHf0?=
 =?us-ascii?Q?ti1SsxS3nHAmeFYyPKYI82sRgUT1JFeTLT2A7C5/bHf7eNr1M27zgdfPvQjZ?=
 =?us-ascii?Q?h4MyfUi9szVM4QQr/Uo3b1Un+VCfAseYmJP5ARkNPy5dDZi9y8zQDAcjhsEM?=
 =?us-ascii?Q?2O1qt/0GifsGsXA4k/X2gmMGAXwzKw9c218gdO9t2i121fAA4Ze+J51UXtsx?=
 =?us-ascii?Q?E8OqjpTqiXCZ/hWncYGLzgFbgR2BIhndktF4QSOlV3newcKhD9tSJuKxQS0h?=
 =?us-ascii?Q?jDwZtzn3BaYVI7e4h0t8J/k6gRNgGa6kUCobGro0SNxMl7ddQn4kfAy5AU9w?=
 =?us-ascii?Q?woz4TMl515DdwyVYTso295JpXPTvU4C61qkf6PY3PzC8pzaISr9RGYukgd+s?=
 =?us-ascii?Q?UU8cbJOtaYz1AsbxPi7rjDGGuA+n2ZcOPIUMZCrs5zMGkN6dqi0MyiEpS2w1?=
 =?us-ascii?Q?lxni5xaCV+C2nMZvIUQuWrZ5sX3+JWWf49BQHBbovkb5+pYRLHbLfTQB41hq?=
 =?us-ascii?Q?nmgiGJuES54JrOU3+p6wIl2dFCAzvgsco/eExQtso4VKr4nRph1uznDFwQkC?=
 =?us-ascii?Q?V40VSj2Q4iB1oH3UrVpXg8pGbaooEksabFauy4zAKf4ygpvENO4urcoxzE2G?=
 =?us-ascii?Q?R82gq3+xOqmUCNOIpAeEMx7ulp0thJPFwHOy7QtC9vUTlJEAeD1BESJcqu7S?=
 =?us-ascii?Q?7O8BcoUtrd6ScLdg9bONB0u1ey2ivSpoW49hVyQfNayCVAfJgrCwhnzML0t5?=
 =?us-ascii?Q?mHEbHCozEAjhdNd7R1V3Z8BnWLQnRj7aIVTYPaTdpK1oQPP4Cqt5kh6fScFh?=
 =?us-ascii?Q?c3Yv+6oAu70DWkVBCtS6Wytcohj8kaaIBxmQcatAv8VcWrohH+x70hu0NP3J?=
 =?us-ascii?Q?gLgAaU+nz7PIv4RzyfBld3j8SyFBa+/hEn1h1/3bWtN34QIIEJ5Qd0PvCIZ/?=
 =?us-ascii?Q?urlvB9UEIw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1092e5-6ea3-4f5e-4c45-08de5ad8ecbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 23:41:26.4119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mI1HQ2LC06xnUR5OZLsITY1gHdcE4n4/4AbAb+rxQUGzb9ApAwGW/adQckPjKPviAZY1bBvf9bz0W6RCyZsO3Xi2VzGaW+38uhoDfoZlEnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8304
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769211692; x=1800747692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aAX4w/2X0vLmyFQk1jTeVoF3fzUAYe0fU/Q/CmuPvDg=;
 b=JS7be0CpgS8bAD822xdvsPZedbIctTzQdTyrfJhRCE0PHnGwSzURQQ10
 tvG8dFOTa1112zXgy2wyfr6/RfBDKNOw+CVYeljS6N0LdAJ1fWozwrp8G
 9BPVDNOEGIB5fIVx9qNxOEg7cJqIFucUzFOseqxrK9tjv2DawjXbgSUFC
 TfkCDfsLl4XQC4bR0AVEbDUEnuzOsEs3RZOZQjjj9TvhgYtK0vGe9/uyI
 u2MIEqQ/dTbW4lwWde3EUxSgPB+zMgDaLiPWV5Svh0phXOIxh9UcfPiTr
 sAV0NCoBnj6Rli5ohQacghwZ/k5AM++N2SwJ8q5E68uSrb3vHV+5oNRfG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JS7be0Cp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,CO1PR11MB5089.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AA7617B843
X-Rspamd-Action: no action



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Friday, January 23, 2026 12:07 PM
> To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> dan.carpenter@linaro.org; pmenzel@molgen.mpg.de; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor
> buffer to little endian
>=20
> On Thu, Jan 22, 2026 at 05:46:32PM +0100, Piotr Kwapulinski wrote:
> > The ixgbe device registers/descriptors expect little-endian ordering. M=
ake
> > the code aware that the e610 adapter operates on data with little endia=
n
> > ordering. The extra conversion is required on big-endian hosts. In most
> > scenarios this conversion is not required.
> >
> > Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command
> Interface")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > index c2f8189..f494e90 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct
> ixgbe_hw *hw,
> >
> >  	/* Descriptor is written to specific registers */
> >  	for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> > -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> > +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> > +				le32_to_cpu(raw_desc[i]));
>=20
> IXGBE_WRITE_REG is backed by writel.  And my understanding is that writel
> converts values from host byte order to little endian.  So I'm confused
> about where this is going.
>=20

Yes, it should. In this case, the raw_desc value is being converted *to* CP=
U order to work with writel...=20

> >
> >  	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
> >  	 * PF_HICR_EV
> > @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct
> ixgbe_hw *hw,
> >  	if ((hicr & IXGBE_PF_HICR_SV)) {
> >  		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> >  			raw_desc[i] =3D IXGBE_READ_REG(hw,
> IXGBE_PF_HIDA(i));
> > -			raw_desc[i] =3D raw_desc[i];
>=20
> I'm also curious to know what the intent (if any) of the line above was/i=
s.
>=20
> > +			raw_desc[i] =3D cpu_to_le32(raw_desc[i]);


It's being converted to LE32 order here. But if nothing else touches raw_de=
sc is there any reason to convert??

>=20
> Please don't use the same variable to store both host byte order and litt=
le
> endian values.  In this case I'd use another local variable, say scoped t=
o
> within this block, to store the intermediate value.
>=20
> And if raw_desc will be used to hold __le32 values, it's type should be
> updated.
>=20

If I understand Simon's comments correctly, this whole change is a no-op, a=
nd unnecessary. Writel and readl already handle conversion to CPU format, s=
o unless you have some issue because raw_desc is assumed to be LE32 somewhe=
re else, I think this patch should be dropped. If you do have a real case w=
here something was wrong, can you please provide details?

Thanks,
Jake
