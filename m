Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDC294B4FB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 04:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2619A8164B;
	Thu,  8 Aug 2024 02:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uq1tAc_-yvqB; Thu,  8 Aug 2024 02:18:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33AAF8169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723083509;
	bh=PqgU5+7nfXBsko7pt973GdrSwNovYxYxirioSk97knU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4mIZWUVBw/dseISPMBJHkRv8m5dWRZpXkNAHd10dGXrLoONUa1jhUrKEnv/OptAxB
	 j0Q6pG1/n2Lsoprb3o1nyHJKlUQvqotAPWjErPMcVCKi0h++m+p2r3VBTVrI/evYmd
	 8RN/blaxxhojOwg04U14q488SjAZnVJRDGPTcr3Mmdn79XHlFpPKuoZ6rYlgju0rnY
	 4tmJWf6l++WZqPOteuocvlSGUjn0WzfGX5lwFo6Ia3qBR57djdabRyVPgNem8JhCAr
	 zQ+1iJdWbt5DVMUPJxW0vKGlhHzjdjm4AzOI2UXzrcqMCe1Hm9npjHfNcxx5A7g3Io
	 9dRqA7SQTrzSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33AAF8169A;
	Thu,  8 Aug 2024 02:18:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D78B51BF32D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF6FB403CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:18:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7qbSpXRPQry for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 02:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8948B400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8948B400F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8948B400F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 02:18:25 +0000 (UTC)
X-CSE-ConnectionGUID: SoybkODmTxClzCx+mbEubg==
X-CSE-MsgGUID: j1t4iGk2SwKhED/5UB8kbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32331508"
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="32331508"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 19:18:24 -0700
X-CSE-ConnectionGUID: krxi1TguQpO7kzZzkgyyCg==
X-CSE-MsgGUID: ME0Hp++SRe+U5f3nto3S6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,271,1716274800"; d="scan'208";a="56752061"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 19:18:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 19:18:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 19:18:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 19:18:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oHl2r7EE10koDbMUd33Tf9dQ8dd2E6lfnT47zc6fuSfx+j7VxHABmHmA7nZcYWNNQ5K5Hn/cSlxReqsJV1TxGIBD0M8RpjXMJMFij1nWjiBXuDKKWW7pGZxabo4vLTapcXA26K2a4hOo0YK4R5bXLm+3LcPkMcRfLu3ssY1t+G8yl3sb0usvwQpK2OC0FdiEC35Nq+S0R2w15z/QjOLuKy0BfD7uqnnu4gWG6I7o+rBE3H2W9PLztufasE1cmi5FIOmwZxX2yFJ0vMLF8v09tJq+gFzljD8JmSlTVW0yqvXY2Eo9r4DFJ0x6oeINagkNRsPVk46Phj4hTb0HbzAWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PqgU5+7nfXBsko7pt973GdrSwNovYxYxirioSk97knU=;
 b=gm4ZJ4IfLC+Y0CFBzghpaQlB/TpB72JjXywdQjzZMUxoW6wwp7l4hm1BVhiBu3HR3LNPLLeUI6jVOg3Juaj/NXRNp3hKm7Bqjcu4JI5V3HyALTLxBNCoRr6E2HaADCsYAUwUNtXuW5CsrCHwiqM4Kk7kIxgx+4QNZfUp/uMYQ6K7b+SmwVFIcD3MZxWLwy4lZZOlOW/2KHs9ugld4N00LZ4lwEpJfl4XwCEYBo2C9+F2wwJcrPlsqgNumm6E6BHrVLRsYHWEUjh3fRn8hxymcv0MfM4IgmQUlOGPj+rLpX1f8GtGmJT96gjyIaREhb0SRL34HyDN/SuyWCvgvyvuwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by SA0PR11MB4621.namprd11.prod.outlook.com (2603:10b6:806:72::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Thu, 8 Aug
 2024 02:18:21 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Thu, 8 Aug 2024
 02:18:21 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ice: check for XDP
 rings instead of bpf program when unconfiguring
Thread-Index: AQHa3erQuYED7/R91ke0a351KjKzM7Ictnfg
Date: Thu, 8 Aug 2024 02:18:21 +0000
Message-ID: <CH3PR11MB831321BCBA25371A571F172AEAB92@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-4-larysa.zaremba@intel.com>
In-Reply-To: <20240724164840.2536605-4-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|SA0PR11MB4621:EE_
x-ms-office365-filtering-correlation-id: 5f90c867-d8f9-4cd3-2d7e-08dcb7505fc0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GYA2AABcJgYkKh2wbYkTeOYYYW4FB+0ZnLpuFjOL1sQvsDYmrem88bM0JSz4?=
 =?us-ascii?Q?iOvIFhOuPwkI/O8aburz4vUAvgpIJpsGtO1zlxiqWmbB8eX6313RN/Lj+nDl?=
 =?us-ascii?Q?bOZtGM6yS/ToYgaI3XkXYcdQ+jCvBvEyVweegJui3VDJd6dfQMPL85jRJX8l?=
 =?us-ascii?Q?d048OuJVeSdt/0SrU1h7NE7HtOQZ+Ghy++3hN+RjCRxkVdqrq3eCuY2T46T9?=
 =?us-ascii?Q?9GkC9XWsWfQOiSagU6DYu/ql4hehOlBvMZjYco79f29dBUsgqZxMJlDgSAtf?=
 =?us-ascii?Q?5RctUeQOh+3ZLUiM8vZ/bHIFuNwlQtU6C/QK73LFuVKGU+j970xMKkTuUUYD?=
 =?us-ascii?Q?nH3nMuDAyZX730naQQfBWk3zWgFFTSMjMemS3MA4lVEqF5uD5IKVAp/nnXjH?=
 =?us-ascii?Q?9KriHOn9p7084wU5m8cX5SpjTfXzQsdNQb3FqS+qkSf4JtIR8uXgGI1DX0Oz?=
 =?us-ascii?Q?upgI1XL00VwKq3c/EM69wHW7g8gnRxYM435M2jinFMIvhsfkGSko2FJMtUmE?=
 =?us-ascii?Q?OB9PoDc/xjw8yy1SwCBFMrZjGNb8tAqmfL2eIEvzsiJIvT4u7i9e1HOPEdSy?=
 =?us-ascii?Q?kHcThM70PDoX7FAistWuBsigd+nBf4RTwixLdA8XslWuzmAId26d1lSwzVge?=
 =?us-ascii?Q?/hP786D3n2yC+NPksGEl1TpuwcAPyKnqzWCOVQwq9akWvp+bcf30EUNNf+MY?=
 =?us-ascii?Q?avFX9X1ZbQ+ZeR19GKDAvjdyCDxFgj8qCeVrdhUsyGT1imAh/6VECzsnhX4+?=
 =?us-ascii?Q?exOfGl3lJjI3hvNUT6zWdUSO/7XHfLH3QAr/g56LDimxqgxAq2x9DGa4cDlc?=
 =?us-ascii?Q?XmuFYlzAPE+poY5S5nurlCk16WKmivRWAzxRjdZWIQu4tpg7DWKKnKTlhrEU?=
 =?us-ascii?Q?UOK2lTWL5hu1DD98C2KPBrI1p4nPr1AMdjXBK5VOA+Xe6AlWbambQD5fYSh6?=
 =?us-ascii?Q?spoJCEQV6ml9w6Q87wJ895+cNKJBR2+YnuuisyJHhudsG0HA/fcdCGiXSUHs?=
 =?us-ascii?Q?9tJQ6ViVET2Llef+5ZmQlmSaTkzT9Bt/Tjve17uYStMfdwIvniIYDd+8HV8C?=
 =?us-ascii?Q?XBNC8t7GPw1v/D2mQCwCe0gA6Tr6E0fJ5noX6iZdj6DXZVtZNu2V2UtVkfQh?=
 =?us-ascii?Q?91yhkc6IJZIHxtbm4SLor+DUQ1DHM8zse69lonLV6deyQHDDqNHGdaV+bXT2?=
 =?us-ascii?Q?AIarj5295/2CenhveLzDaYtMLxDshI3FURJKndgCgIJsghNWo1chmV/GgzON?=
 =?us-ascii?Q?mlU4ykzvOP9TJA1Umq1vD2QeI+aFHbxlTL6uXDbR+rnKVbyinL0GTglbOw+r?=
 =?us-ascii?Q?CjQ+5+rSPGirLOIA0wcJZ8FBFBjbgomHkZLB8TIor53L4UUsv+ZSRb+h4eyn?=
 =?us-ascii?Q?f0L3YW59mTTlQgkf0g0zmMONsOVEphYAyiKk8RW1/xhhruJyfg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TTPqGlhmUHK9i0haL8eYPgM4gJ/xTCpmUmtW6VRZaO/Wc+i+u9XbZDE2OSGV?=
 =?us-ascii?Q?HxHyvmxWBCvzTyA+V60zL/msMvQrXmfxvModv/cEUKBbUTPJj74SI26qnbwT?=
 =?us-ascii?Q?TVeQjtAMPGF7kwjqaIE52RvhKjrZmbhGg5cvUzgzZ11Qg0l1IQE8TRadHz6K?=
 =?us-ascii?Q?nYX4a5+Oax6jIG3lnF11AMr4CMZhKZNUWI8ihYFpSJPbJcME2soycbtQRU6q?=
 =?us-ascii?Q?+kcHPwR28Jy+PmfUljP+CtJIz5hOj95uBCR0St3Ke4wzjv6DhYkQUrqx60Oc?=
 =?us-ascii?Q?ttoKx0FP3GuK2hOxzm13zIoSyC3geZAM6ZbKuKc6z9o2yD5sSRGfsUHuwgfv?=
 =?us-ascii?Q?4kQobDr0o6wL3/IoKCPsXURXrBhJo6V3PUSv/d/7/mLYFwtQwPk/eyphoByn?=
 =?us-ascii?Q?Mx1MmsoDbsoUkDkzLGXeDHyXPwz+EYpf57F888tSvWrpAuPKGpe4IYAk/Amw?=
 =?us-ascii?Q?+4gBfU/nmD6nxED0KkwEQuFgqf9Rt9eZVJTWcGRolEicRzyVz6FUUJguHpHi?=
 =?us-ascii?Q?7Dj9PZi6lD6jX/FEloBGIQEHAtvt7xoJ1fvsRWKdjEDRUPr9dcqOFJgVscV8?=
 =?us-ascii?Q?RGRj9dFlkRkT1xy9jkFfyp9jVJ3ycFOCNPZAdXXRJAUAv96aUiFImYp0chnr?=
 =?us-ascii?Q?mLDjNJNdmvJe9xMm0UmWkHRMJeXZwYHbaDZ2n+teebOIYMOWUOFrBpTxWt8g?=
 =?us-ascii?Q?8sY6eTvs0N/vZc1zYL3vlxMmI+bcOQF4RIsJ9uvR4dRek9a28An74F3MeMK9?=
 =?us-ascii?Q?yQwSD95vpZlMELHwEu80dXfFbIpglG62qv+weUyrf3W5+vDYlo3uxZQVn2yn?=
 =?us-ascii?Q?RmDDOOSnej1Rxq93rGGMHQa/dTlJqzC72Xj8n6xIKMa2RG4Y2u2UUn1yQ4m8?=
 =?us-ascii?Q?VBj1L5MAfchdccZOVqedEaZdyT5vTvU4bxOvYR6gOZfN79OrGzHkU6Hq6kPt?=
 =?us-ascii?Q?etCt2XqrwjMeb92CGnrqH9A/D7aHjJ0fTCh5BfZDJZOZWTYbQP5ZGbCxxgvT?=
 =?us-ascii?Q?E//tLfGHD5EJg2P5La30GBlxeHcUqaXREBvY9t3AEEbRCTmYxv/HaYoZmnJ7?=
 =?us-ascii?Q?eUlPROXzWSz/uxk8rPRoSiGlvLc+S1P48xMJs3oY+MyJaRolrsWKKTSyFYWX?=
 =?us-ascii?Q?xwGs+RqpKNhFO3b0Ds70hnUPq/i17Hec/j0TGCwEuU3KCSLMzaJk+5E+7BPo?=
 =?us-ascii?Q?X1ISh28Z/Rb4cb0oFn7reNdVzwyixqkFkn+gCFDdC1sA8hcZ73w9KFZNmURP?=
 =?us-ascii?Q?DV06nxh6l9T19JYIvhBUYi8qWtDmYAXL23jTO60OpewiWog/VQFdYxNKcx17?=
 =?us-ascii?Q?njcLULgBC4QZImwmVQ3QCadf47ghUb0ybbt9u9CqGBnWxF7bNKHWKubqBdU3?=
 =?us-ascii?Q?3Olvp2bH3XBxbWVNOjcaLHfrOO4BMu6OlrsYYTFlgZy6cGDeSEQnbclKFu0W?=
 =?us-ascii?Q?o91r74haFq976zDSXjY2TAQqP/p+YLpOUCs4uwYggkS2bJtjzV8m595cxeXM?=
 =?us-ascii?Q?LWsiZZQOLb35JQpnyi2dFn82IR+KoYmkJb9wZkbCeDVBKOIUT/pekOyHEJ/C?=
 =?us-ascii?Q?s7eob5f++5W+ud94juxKWYIomiQopLsRrPIHQg8M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f90c867-d8f9-4cd3-2d7e-08dcb7505fc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2024 02:18:21.1204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 363P7XHL6H6G+Q6QTFWZeh0hNpWQTtSeo5hN9mNrDsUKqaG+xWdx00tUzH+hlz6yGDfqonzsnaHc6wjWfVuktQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4621
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723083505; x=1754619505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O2e9lyjBCwnCyX8Pu2x56dTOoTYiOpdZYKo6dX2IT+s=;
 b=G9YpNoMzEEE1xaU9aihqngQGFud3EaShg5POkYUEYzOAfx5f/g8fo/19
 BgU3hb80XyixMh5Oqd9Ah2NmfwojIvxN2o+0mpHsjAvy13UUxJrJXYIar
 hUcZMhI5E5yzyjES5q+KfIpzK2lzQv+n+v2DxBINrYlwQr0G119c1GjFT
 LgQaoTE2XtIwaHlNQEIuT0i+heGEuGgPDw3XDY6cUibRg5jQiErFKxJqX
 3VEaZ0RYa/p34VnuqdrxVx3odkxnd8Pr3axXXTK6q2kgLrpBLgpufFTQa
 OOk9V/q9iuLIoKbcdAWBWc6jabZQAFwXrwgA0oq4tJ1aNwKLKqUGf0Svb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G9YpNoMz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ice: check for XDP
 rings instead of bpf program when unconfiguring
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Nambiar, Amritha" <amritha.nambiar@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Zaremba, Larysa
>Sent: Wednesday, July 24, 2024 10:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Jesper Dangaard Brouer <hawk@kernel.org>;
>Daniel Borkmann <daniel@iogearbox.net>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; John Fastabend
><john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; linux-
>kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Kubiak,
>Michal <michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Nambiar, Amritha
><amritha.nambiar@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>Jakub Kicinski <kuba@kernel.org>; bpf@vger.kernel.org; Paolo Abeni
><pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/6] ice: check for XDP rings
>instead of bpf program when unconfiguring
>
>If VSI rebuild is pending, .ndo_bpf() can attach/detach the XDP program on=
 VSI
>without applying new ring configuration. When unconfiguring the VSI, we ca=
n
>encounter the state in which there is an XDP program but no XDP rings to
>destroy or there will be XDP rings that need to be destroyed, but no XDP
>program to indicate their presence.
>
>When unconfiguring, rely on the presence of XDP rings rather then XDP
>program, as they better represent the current state that has to be destroy=
ed.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
>drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++---
> 3 files changed, 7 insertions(+), 7 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

