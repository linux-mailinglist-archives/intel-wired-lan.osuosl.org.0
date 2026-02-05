Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPFTEaZghGny2gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:19:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2DBF084B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:19:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC6B180DDE;
	Thu,  5 Feb 2026 09:19:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q7MOQUi3YLic; Thu,  5 Feb 2026 09:19:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2637A80DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770283169;
	bh=CfESR4fdGmnDY0KEn/qLUtWwmmXBgfb6GJpSfdSH/sU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pQSVHC5PrGmIiw0IeMFiM1bHB8SUtceMGDoE3Q7KT2BSMxJn8LJ0zHZm3Oka+T5pK
	 zz/GL/wNu63JGGOEthMRsp/QL+Ky1srUpwCk+RfDYENWaKRITiVegvRk+XTVkbbR2Q
	 JRW0FmwoyVPYmDZirnXeXzQkaoUq4faM8Hclsjz6Bllt/ak6P3kOaEG/fJzf5yqUQj
	 dNWNUuNnKL8fH0kfvPXhzF3vq1424b6Vl13AiL6hYUkTUF9JgZqbcuuitFh7OnP4c7
	 HyxiuSBriFvlkuye/HT/2nx+6BsZwJtETj/lrG+nrF76jngzgkUEvNmWCKiiLJZSHE
	 NhrygjTmQaZpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2637A80DF4;
	Thu,  5 Feb 2026 09:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D10FF5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50EC94074E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ix-sFqIRfbs8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 09:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B67B40088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B67B40088
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B67B40088
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:19:26 +0000 (UTC)
X-CSE-ConnectionGUID: UQ7/5tyhQ+2QnNzohMRXEg==
X-CSE-MsgGUID: bk8BOT8qRlCofI7mP5e04Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82597153"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="82597153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:19:25 -0800
X-CSE-ConnectionGUID: 2be6hEO0QYSI+MpbaiLbJg==
X-CSE-MsgGUID: YoCbgpeDQgKXOnDAewS0Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215430545"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:19:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:19:24 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:19:24 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:19:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IuZIuuwJ0kSiyzk7h/Nzq9eaCGnigbD/THNZ7Otsk2jFZ3WONFLQavEw7+ofnAqZDEy6/B0gCszMnnM8qUaY9V9rQDETmowGlSewUbcou/jqCAn95glHpC+w2o+WspM7nAPSc3AnW4wRrrQvZNNcWA76iqDO4KH2hi6Ta7913bbEeVeAsbKoCaeGVpLk++HCsQwUFwOZSMX8dvNCNGLsXetgFzWj/fNJ1YuVjg+NfizSM820afi7bonOj+xYKT5AR19ZQXUJlCqAJO5YW3Xxr6YwlG35GrRBoF1bxoYVwdmeNyJvhnlFEkzEeEf+dLei9j0dF8OPlBR/Ko1BbtqeVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfESR4fdGmnDY0KEn/qLUtWwmmXBgfb6GJpSfdSH/sU=;
 b=jaohk3Vvpy6BorVgCFSIiqdFlKpYDFmZyQzJWE4R/2mxEjtPYLWK5/oBx+3U4Vlm+EW6zDLksRpsKd3c8/LW/sKQ9+YOaK0GHjof4gas4Iw3ap5gdrDRgDTk/X1hXWKzzkXfAJb8dDeAilzi02+DrswcqQCksHDzDJawhf0aCeSZ/wJh5bHR+scxF16SQwgIMGccB6lG+sSs7pVqkcOU/Qir7Hu9Gj9tg7N2YdWvRwsoUaz+gW7iZoBEmJZWCooc/hH9h6rB51iNbtIfig1hWHoqTdHXNjHwQHtXaJaBRYCD3o5C2MiqplgySYP6tI5JIAbk0dg348Y8FHPonIGPZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by CH3PR11MB7866.namprd11.prod.outlook.com (2603:10b6:610:124::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 09:19:22 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::6f0e:9ee3:9e98:1ed%3]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 09:19:22 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next v5 3/9] dpll: Add notifier chain for dpll events
Thread-Index: AQHclTRHvnYaVEjkMEKrqVu+t7n087Vz0VwQ
Date: Thu, 5 Feb 2026 09:19:21 +0000
Message-ID: <LV4PR11MB9491D093C1A1D3B86B6DF8B49B99A@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20260203174002.705176-1-ivecera@redhat.com>
 <20260203174002.705176-4-ivecera@redhat.com>
In-Reply-To: <20260203174002.705176-4-ivecera@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|CH3PR11MB7866:EE_
x-ms-office365-filtering-correlation-id: ab4802a5-2c41-4e66-707e-08de6497a5f1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9izTE555H9qNF4Digtx4pWxeqlYohhtvCGBub9n66mvmke4lIxSihPAbmfqY?=
 =?us-ascii?Q?5KV5xBu6H7NxTxnG9o2jdcbQ5se/w5h87zTx5fmrQcFBuCToZImBF/7LTHcx?=
 =?us-ascii?Q?65DBolSO8W7kd9zDOHpCxK8vaQmma0V9L05rG05JlCiZmTRBT7BrvgV7vwf1?=
 =?us-ascii?Q?pTWpaSqv01VNYeJ4GpoqdMhwOcg3iiyFQ9ZQRKdmrxOmpte+YZY9D95qJ5/C?=
 =?us-ascii?Q?QUfJJYmXcISKq83YavliIQaSSaRdfq35VV8u7GdEdKj2QUmk4WhKy+xwehmw?=
 =?us-ascii?Q?uAUApUPsHSqfcyhzOLP9K/i9Er4fpKemhsBDXmj0k8DcHd/BipQiD43L6kJT?=
 =?us-ascii?Q?ry4VfHXIB0hyTlw8Kcjvkcc19O1sDiK4oau+noQCCiWm/TbPy4iz63uHufBe?=
 =?us-ascii?Q?uOIdTo6/AseXEuVIbXsnUN9dnQ0yb+L54Gg+hwyLpmeGuZc/MVtQnoP4CjNy?=
 =?us-ascii?Q?pWbAi2gXPKMye4GeCTFsQdXIpEja29sgDkJx9MYdbt//SBk2Z47ZNW4je1s7?=
 =?us-ascii?Q?UnMPo2n7Dqc53tS3acUB/bY9PaoP03PqJ8X81onlOnW3KpiYFD3barXA20EC?=
 =?us-ascii?Q?6ct/kszPrs5HO452sjXuSX2dOiLsMBZIx1TLzUJ0HndHSqmjx9nrcfHHuPwL?=
 =?us-ascii?Q?MGf52Y8LOgnHDXjj/hzKr+JVp4PY4dLIzj5GKvdpen+W5hfO1zXHq8lz4YNn?=
 =?us-ascii?Q?/4FaMChdXhjrOS0Kt/Tr6P9xbfbRlXTUeKXBF0BazHoo8KrCkRGccqYCEzh+?=
 =?us-ascii?Q?Ua4laOJWlDQCdqMwrmy52ep/Ai1xp4DpqZuufiMRoyYSgOWozl06AKDca6fx?=
 =?us-ascii?Q?+dKfxV3NVUmVDqSO6jYBukR2PBENH6wCDCfnJ6aJdLZyyNslnkc0C5iCzgAD?=
 =?us-ascii?Q?UHfUE86WeiPXFroyLp5+RILTohesbNaCgZ4EJIe9SDyhbIPt43zdRAZSu8NT?=
 =?us-ascii?Q?0jvkCJz5ofvVzIAbOFLliWrHUP8ydJkFsgPsVFYSQfKJqp/vtAFas4Pl6M3i?=
 =?us-ascii?Q?uhix+7mTgQUal8FIENU07XFe71fr8eR1K7qL53A4aHlM7z65PKiH4ZXd5y9I?=
 =?us-ascii?Q?YjrQ3xPck0e8cY4HZY6+eGovXmJF06BVI6541hoFZci17/6cVPzkP7kHSkHK?=
 =?us-ascii?Q?eySbA5O0wh2KrSrgDUE1zwMXYD/THAA5UryYf6OBQnSzU13BSCmytG/WxHT7?=
 =?us-ascii?Q?hTZED7bGBGv9GMp0yXPv2PEUqC6wOXU0fnOZbQf5Lz7X4gs/nTDVk6XUXdRv?=
 =?us-ascii?Q?sB4rx8FEhlbfpjXc1JBPK+A8v1hG0QkFwUkOJ7vDlSjS6UGw8NmvWwN/2RDF?=
 =?us-ascii?Q?leb7wCJo5mCHihfE/o7tuaAatjwTf/rQtcq7zzQIDkf5iXWctSerAiuaAt6D?=
 =?us-ascii?Q?Ykl71wwSYr2iwNOHRGsl76V/hZRpeI+hZUnkH3YGASWPM+AdkZ6zK3ZzxaY6?=
 =?us-ascii?Q?MfHsYjhxXlmuOCTbmSf0NIhbLSnM3xwgDKxDhpklu9mlodbJPzrcv5/I+Jdo?=
 =?us-ascii?Q?iOtbU4EhJ0NEFbH+ycWkqD2kP5pay3Ci+q931bIPI7W1VkB9XRis6u+Bp1b6?=
 =?us-ascii?Q?vj0VdoQqTMOJoCYrfg4HFoe0xWKUs2msiwNXkXzmaApAn5X86yqGwv9TITXa?=
 =?us-ascii?Q?K3To6vnZT6kdJG17BnWMtlE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NQLzKUBKPQYFwXiH5sFHwgN/cPESs4mg/y6rKASSXC2jFI/MATQV3tZm2XIk?=
 =?us-ascii?Q?seci1Chk7zOlneT35TruD+FF04Z2I6OgPsDD/txDV+gHh8LsNmk794SsEqWe?=
 =?us-ascii?Q?6NNodbkWvkluhT3ANhqRrce7hRjG6esqBiEaevngjMii32GvI3w1LDBd7XdN?=
 =?us-ascii?Q?AH2LWxzpe2fukVm/oVPTKDpj0/CMJgh4VQGucGzrjj3W36yVua+9gPaR5412?=
 =?us-ascii?Q?iO+MLcNRH38S+AndhXf04EgF5qzQV7fLYdx/vZXV6xdhOy8U8agWvMOQ51bt?=
 =?us-ascii?Q?CJNACQcrdjv0mGG0XKWkDRIOipyQmPwCjSgdPnqRgdzKeNMcD1uwNMKopXib?=
 =?us-ascii?Q?sEAwdGIN46TqFhDLBWv6b6JrYO9H4uZqoMlezwaY8gEMF+0X3RWM0m96GX4G?=
 =?us-ascii?Q?QBL0mz1ct2Zv5NCt8GELxrCq+ArOKhoxA9eVY648eJsVe8G1IMg7racb6pPD?=
 =?us-ascii?Q?g+9/mbMaIZLHlf1rht9xN4GstnXMvr00/2rqhA6B3EVIbNoUhcEObl2MZL7w?=
 =?us-ascii?Q?c0kDrivyyU0oj4FUYRc4zikrn7uZ+zGo+alpPA2L6ZHxPGM/aG5blC0sy5k/?=
 =?us-ascii?Q?CrNj/OLp2+IeMBJ9bPN5CMImLxqYGj1XOvDUKGjoBkSiJ62r42PU+oqOPNSt?=
 =?us-ascii?Q?O4XZY1BLo8SWB2HtFBLoMA9UrqhMWtMjl9zBf129SsZlSiR8qtgZvFtvWbGj?=
 =?us-ascii?Q?iUVtugeskTAQt/UdscIrxNqMlGe4HdvrMjXLYtb2BDy4ZO5omtDjsaL3er2o?=
 =?us-ascii?Q?VNemLQXyPYn+t0EJyjcWXGXn6XnCp2CsHED2DaWl9j9bhePMy2MJivmMgvCP?=
 =?us-ascii?Q?OhZ0DAj6ljWLjxgJjhdj5kchB6EKtQmhy+MzUTJeRAmuZ5YaufTX9yBTtj9E?=
 =?us-ascii?Q?cqLnNAPKTSsLjVl1w2KKHLTMau0hC9YiMk1xKir330QeS/nKcT3xAUXFIdqa?=
 =?us-ascii?Q?CKZXu08c3QDF/dEsqfpJsLR0xXyDMK2ki7ARmIfK8ZfaNYsX6XlHLJpWkGN1?=
 =?us-ascii?Q?ST507ECLEiNf9ZdOTWC6LkNqLFSYVy6TMaed7UoiETYFQOL/qJ4MKKTFyLyZ?=
 =?us-ascii?Q?RfbX0buPIKgruscyg6lgWb/XFEHUnipOSqWVPS3hBYmsyRCZMRO4dbB3twqb?=
 =?us-ascii?Q?IKr5/eZ37K6Tn2nAjtBurvkSG8+Fw8+ei71lPdpPXaAaZuLTzVYoE/Dssqhe?=
 =?us-ascii?Q?jz5uKs4mWndJmRTDXpUH6U8M3tN2Bog63bHfOciHd2iqOKYe8MDk0u1dzPSa?=
 =?us-ascii?Q?HPgA7EjB8HhFcaHwTMgFnV7bvs2BTAWXd1kDWz11y35RYYBsdsZJH/IAknPU?=
 =?us-ascii?Q?iypBScBC/Ny4kK4tpvcHQJkexzwsIy4LfUsTFXmeqV+4kBoZI994bL6/koB3?=
 =?us-ascii?Q?dbMs+7MHn15zO1SCH6zT9A/NP5HpVOIHftIBylsikNPx1J3qi8SQLAuDewYL?=
 =?us-ascii?Q?pXjBEkJuty5bsDeK0tRSxGcADo8Aa68SwBQq+ZuvIeOGYE6ca0xws1r0WYCb?=
 =?us-ascii?Q?0RhhMr6pMtY0LQjXBil72S9iGyF6nI2VZWuSavnCYweG3/0YFF8hP2avaNJ5?=
 =?us-ascii?Q?T5E20teLF26uZr35jcsTU6l2y5omxTuNqghdUu3Wp4w3uRJ2JDxC4moeQ1Kp?=
 =?us-ascii?Q?5x1rz/xmox2utj2Kgb1T8aKgbP6b72m3Pa/fquaKDpQU8X88WoDwJeZ3EH0y?=
 =?us-ascii?Q?XkMoGumlLMVLMnwVNrKyDLCArRtYGt7QM71FLhbOvrWcPOR2QiN0O3uddv2d?=
 =?us-ascii?Q?tnh53n7Bw6q2xlwbeimEnZfnLohkJ4k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab4802a5-2c41-4e66-707e-08de6497a5f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 09:19:21.9928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qDeuLNwLyeiBIaXc6tiqHsdRRtREJKYfoShYwFnMtLjg29+k4Uy+5V7DxD8l39ErGO+y0xytZ34TO/+sleQ3XtPRjLPPDoPOtD11VGsz8LU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283166; x=1801819166;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tMcXMdLlCTR5ZfAvdLAGGqWBsAm5gy1gswrYpPL2nBM=;
 b=hCDEwmIpP1LfmZHKmDSUbZJA6EKtg8TJxTsC+cMjZkQ4cpkxluLuLmfo
 5N8fWcye1x7no60klYtx50zFGxCBJ3jCBPo4f+BokPV0kbhLtZ6Myu5Zb
 PcEfI2zXO7edFOIxpArtNBHZa0kOOblrlZLdAS/Kq9e9RMwJAVPlFbwpc
 wEQp+1w2FEBOPU1sg0SCy4/V6o+RcxWnfxIYF7HlboQBdZM3giItwmFua
 J6wl0WCTBYBb7fHcTl5K3Bz1fILlB6Jibhwg1W7yOoWIp4L7ypqUb43GW
 0JNSjt9J1L7v9E3Jz+zCnE1i8A6WSIzpEkqJ47EHIIcoP2CFwNNAtEGYe
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hCDEwmIp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/9] dpll: Add notifier
 chain for dpll events
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
Cc: Jiri Pirko <jiri@resnulli.us>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, Mark Bloch <mbloch@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, Tariq Toukan <tariqt@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prathosh Satish <Prathosh.Satish@microchip.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David
 S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:jiri@resnulli.us,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:mbloch@nvidia.com,m:edumazet@google.com,m:tariqt@nvidia.com,m:linux-kernel@vger.kernel.org,m:Prathosh.Satish@microchip.com,m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:jonathan.lemon@gmail.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[resnulli.us,linux.dev,kernel.org,lunn.ch,vger.kernel.org,intel.com,gmail.com,nvidia.com,google.com,microchip.com,redhat.com,davemloft.net,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1B2DBF084B
X-Rspamd-Action: no action

>From: Ivan Vecera <ivecera@redhat.com>
>Sent: Tuesday, February 3, 2026 6:40 PM
>
>From: Petr Oros <poros@redhat.com>
>
>Currently, the DPLL subsystem reports events (creation, deletion, changes)
>to userspace via Netlink. However, there is no mechanism for other kernel
>components to be notified of these events directly.
>
>Add a raw notifier chain to the DPLL core protected by dpll_lock. This
>allows other kernel subsystems or drivers to register callbacks and
>receive notifications when DPLL devices or pins are created, deleted,
>or modified.
>
>Define the following:
>- Registration helpers: {,un}register_dpll_notifier()
>- Event types: DPLL_DEVICE_CREATED, DPLL_PIN_CREATED, etc.
>- Context structures: dpll_{device,pin}_notifier_info  to pass relevant
>  data to the listeners.
>
>The notification chain is invoked alongside the existing Netlink event
>generation to ensure in-kernel listeners are kept in sync with the
>subsystem state.
>
>Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Co-developed-by: Ivan Vecera <ivecera@redhat.com>
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>Signed-off-by: Petr Oros <poros@redhat.com>
>---
> drivers/dpll/dpll_core.c    | 57 +++++++++++++++++++++++++++++++++++++
> drivers/dpll/dpll_core.h    |  4 +++
> drivers/dpll/dpll_netlink.c |  6 ++++
> include/linux/dpll.h        | 29 +++++++++++++++++++
> 4 files changed, 96 insertions(+)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index f04ed7195cadd..b05fe2ba46d91 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -23,6 +23,8 @@ DEFINE_MUTEX(dpll_lock);
> DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
> DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
>
>+static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
>+
> static u32 dpll_device_xa_id;
> static u32 dpll_pin_xa_id;
>
>@@ -46,6 +48,39 @@ struct dpll_pin_registration {
> 	void *cookie;
> };
>
>+static int call_dpll_notifiers(unsigned long action, void *info)
>+{
>+	lockdep_assert_held(&dpll_lock);
>+	return raw_notifier_call_chain(&dpll_notifier_chain, action, info);
>+}
>+
>+void dpll_device_notify(struct dpll_device *dpll, unsigned long action)
>+{
>+	struct dpll_device_notifier_info info =3D {
>+		.dpll =3D dpll,
>+		.id =3D dpll->id,
>+		.idx =3D dpll->device_idx,
>+		.clock_id =3D dpll->clock_id,
>+		.type =3D dpll->type,
>+	};
>+
>+	call_dpll_notifiers(action, &info);
>+}
>+
>+void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
>+{
>+	struct dpll_pin_notifier_info info =3D {
>+		.pin =3D pin,
>+		.id =3D pin->id,
>+		.idx =3D pin->pin_idx,
>+		.clock_id =3D pin->clock_id,
>+		.fwnode =3D pin->fwnode,
>+		.prop =3D &pin->prop,
>+	};
>+
>+	call_dpll_notifiers(action, &info);
>+}
>+
> struct dpll_device *dpll_device_get_by_id(int id)
> {
> 	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
>@@ -539,6 +574,28 @@ void dpll_netdev_pin_clear(struct net_device *dev)
> }
> EXPORT_SYMBOL(dpll_netdev_pin_clear);
>
>+int register_dpll_notifier(struct notifier_block *nb)
>+{
>+	int ret;
>+
>+	mutex_lock(&dpll_lock);
>+	ret =3D raw_notifier_chain_register(&dpll_notifier_chain, nb);
>+	mutex_unlock(&dpll_lock);
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(register_dpll_notifier);
>+
>+int unregister_dpll_notifier(struct notifier_block *nb)
>+{
>+	int ret;
>+
>+	mutex_lock(&dpll_lock);
>+	ret =3D raw_notifier_chain_unregister(&dpll_notifier_chain, nb);
>+	mutex_unlock(&dpll_lock);
>+	return ret;
>+}
>+EXPORT_SYMBOL_GPL(unregister_dpll_notifier);
>+
> /**
>  * dpll_pin_get - find existing or create new dpll pin
>  * @clock_id: clock_id of creator
>diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
>index d3e17ff0ecef0..b7b4bb251f739 100644
>--- a/drivers/dpll/dpll_core.h
>+++ b/drivers/dpll/dpll_core.h
>@@ -91,4 +91,8 @@ struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct
>xarray *xa_refs);
> extern struct xarray dpll_device_xa;
> extern struct xarray dpll_pin_xa;
> extern struct mutex dpll_lock;
>+
>+void dpll_device_notify(struct dpll_device *dpll, unsigned long action);
>+void dpll_pin_notify(struct dpll_pin *pin, unsigned long action);
>+
> #endif
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index 904199ddd1781..83cbd64abf5a4 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -761,17 +761,20 @@ dpll_device_event_send(enum dpll_cmd event, struct
>dpll_device *dpll)
>
> int dpll_device_create_ntf(struct dpll_device *dpll)
> {
>+	dpll_device_notify(dpll, DPLL_DEVICE_CREATED);
> 	return dpll_device_event_send(DPLL_CMD_DEVICE_CREATE_NTF, dpll);
> }
>
> int dpll_device_delete_ntf(struct dpll_device *dpll)
> {
>+	dpll_device_notify(dpll, DPLL_DEVICE_DELETED);
> 	return dpll_device_event_send(DPLL_CMD_DEVICE_DELETE_NTF, dpll);
> }
>
> static int
> __dpll_device_change_ntf(struct dpll_device *dpll)
> {
>+	dpll_device_notify(dpll, DPLL_DEVICE_CHANGED);
> 	return dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
> }
>
>@@ -829,16 +832,19 @@ dpll_pin_event_send(enum dpll_cmd event, struct
>dpll_pin *pin)
>
> int dpll_pin_create_ntf(struct dpll_pin *pin)
> {
>+	dpll_pin_notify(pin, DPLL_PIN_CREATED);
> 	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
> }
>
> int dpll_pin_delete_ntf(struct dpll_pin *pin)
> {
>+	dpll_pin_notify(pin, DPLL_PIN_DELETED);
> 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
> }
>
> int __dpll_pin_change_ntf(struct dpll_pin *pin)
> {
>+	dpll_pin_notify(pin, DPLL_PIN_CHANGED);
> 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
> }
>
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index f2e8660e90cdf..8ed90dfc65f05 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -11,6 +11,7 @@
> #include <linux/device.h>
> #include <linux/netlink.h>
> #include <linux/netdevice.h>
>+#include <linux/notifier.h>
> #include <linux/rtnetlink.h>
>
> struct dpll_device;
>@@ -172,6 +173,30 @@ struct dpll_pin_properties {
> 	u32 phase_gran;
> };
>
>+#define DPLL_DEVICE_CREATED	1
>+#define DPLL_DEVICE_DELETED	2
>+#define DPLL_DEVICE_CHANGED	3
>+#define DPLL_PIN_CREATED	4
>+#define DPLL_PIN_DELETED	5
>+#define DPLL_PIN_CHANGED	6
>+
>+struct dpll_device_notifier_info {
>+	struct dpll_device *dpll;
>+	u32 id;
>+	u32 idx;
>+	u64 clock_id;
>+	enum dpll_type type;
>+};
>+
>+struct dpll_pin_notifier_info {
>+	struct dpll_pin *pin;
>+	u32 id;
>+	u32 idx;
>+	u64 clock_id;
>+	const struct fwnode_handle *fwnode;
>+	const struct dpll_pin_properties *prop;
>+};
>+
> #if IS_ENABLED(CONFIG_DPLL)
> void dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin
>*dpll_pin);
> void dpll_netdev_pin_clear(struct net_device *dev);
>@@ -242,4 +267,8 @@ int dpll_device_change_ntf(struct dpll_device *dpll);
>
> int dpll_pin_change_ntf(struct dpll_pin *pin);
>
>+int register_dpll_notifier(struct notifier_block *nb);
>+
>+int unregister_dpll_notifier(struct notifier_block *nb);
>+
> #endif
>--
>2.52.0

