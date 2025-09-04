Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F976B430DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 06:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF7656F5AA;
	Thu,  4 Sep 2025 04:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yd1jcySs1C6; Thu,  4 Sep 2025 04:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A9F06F5A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756959011;
	bh=gjP5ycctPX8FqADFs1WQ0UDVvjsgaF4w4WP5E131cAE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DJKJXDqPsV7GlynbbNCyhy3LL7JgwG86j1OgIC09lP2CAZ8cHkcdWhVA6XhOz7ka+
	 BirIx1TqpTFw4whsYBKGQniURqy6ywTEcoCgWg3DIvFPxuEvwJXUQfffhwXzhpj4Lj
	 ojizbHa13XCsMk3z4r6KBJ+FgDaoxpdxTBO+2Yji/vktROnzZerjDPCgX4XnqfufHW
	 dLxMcZHPJA/q0hWZSYadoAf65ge8Zt4kiR1Wlbf15jvnAM2wlfcm882IlTTICO9ijt
	 OKD6Qr+EZO4S0jf/jBf7IKjz1fHj57p6oYzu2rgqzujtXtfwqWqNH5ityLijUMaG4b
	 RNabEH1JWJRCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A9F06F5A7;
	Thu,  4 Sep 2025 04:10:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0F46106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6EF7423E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyzWnhqRIAiS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 04:10:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1E483423D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E483423D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E483423D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:10:08 +0000 (UTC)
X-CSE-ConnectionGUID: RPc+TJlfTk2u7TN8mClYkQ==
X-CSE-MsgGUID: ULE6H0NfTEu0zPsvsDnfew==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58502178"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="58502178"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:10:08 -0700
X-CSE-ConnectionGUID: k4IzwgZnRtmAOY8o/JndXA==
X-CSE-MsgGUID: C0XZwpeSS/+ExY/upfwStQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="172607133"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:10:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:10:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:10:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.40)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:10:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KYDPMXvG8G1M39EWYSSLSrvqIwQW4qv432D2MRa/syBXnmAL74mRiMd0b3KTAqsJhA6tcI4CfJ8jHViPqvG7RZiKgBSdDKpLEQuQMVNXsmbxLasWyrE/QlxDV5s24gTngvUG7JlCJfX8O3d0hxcX24amPJySbP2CbXgo2N7I2fSEGPUpnzZrSL6B05P1QNbjC4b0OqYfojGwCX20G1sT8TvZTM5u5hB64l/fiJt19NKjz+Ps9vGzvlN1nueZsXFZAPxqvoW2+krvoGRHLQNaZuB6CmzYS6fOvoJcbFzce4kwplksjfX37hn81Z+rY/2YVjaHNc5Q+WKI+Ubp52ul+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gjP5ycctPX8FqADFs1WQ0UDVvjsgaF4w4WP5E131cAE=;
 b=AiJ5mL65Qt92vYktztn4hKaL9KfjWmlS7TEZNoqvHkiJ0c6IPdCAvXH+/Sx9a2aHIQuOJ4txLguFNDthLPbmG9wI1k2NgN++++qsJ5ixuwla/1nVWT/io78MpKfltc1FBaU/mRSFBmfO0xytZC7NOFeFtD6np2H9dGr39FkeaifxvPu3g7/UX6rReoFYlL3EVqyA5Ul6A3DA2aojKoFPSbbMlWCwMLm71qpeBJKgKDtM9tNvmxSGs2BQ5b/iCmiXHVW10jvTAdvYTbXjO8+xPnlOJEYNuet+3xnHcfBoTcdr8+fmEE9ZXuRCewdVhQFluwlwJbmQQxI7psjDr4p9eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 04:10:03 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 04:10:02 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice, libie: move
 fwlog code to libie
Thread-Index: AQHcC0VII/uZ28bla0m6SaZBgaT+9bSBD/rQ
Date: Thu, 4 Sep 2025 04:10:02 +0000
Message-ID: <IA1PR11MB62416FC5DD031E401B006FA18B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-15-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-15-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW3PR11MB4699:EE_
x-ms-office365-filtering-correlation-id: 305a8fce-e422-42c2-1b38-08ddeb68ec40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?1LpHByfZRl42hB/4P8MqZgIYCioNPobzFeXjUPzB9Kjb/WW773QR+PgwP6Pg?=
 =?us-ascii?Q?Q8gx/PFamEtjLtY/0qZuV3wZhANYTwOowuCWXii/vU+iICPrDBK8zBOTXz0U?=
 =?us-ascii?Q?MUGvLDgaoyRj8U203vwc2vcH6Bx1L/52NmRjYApTiXfLm8+nWtaeF+v6sCjB?=
 =?us-ascii?Q?7w2s3vdDdXwRF4MuDDaoXJeWuMEtZBzAJRevdcMhENLmcMZZDqHBFd56TgVg?=
 =?us-ascii?Q?ZLVOeqTDFTjuFM0WLnbxLJxNI5/dLD/51EE9m8vrarTFyR+MAnNO9JhHLeq3?=
 =?us-ascii?Q?nSWuytXPa1DC10DsZIvqWEENBKRPF4kRO2bslmjfHkDk0W+5JKxqHJO2Yfn0?=
 =?us-ascii?Q?5FntQYZ6pk/+adYdiU6taJf2ml/pF9ScOEIrl6Mw+YfhT5rQrgeSZcL3lhDZ?=
 =?us-ascii?Q?agEP2v7zAbHIU6Pm/Og+ANj1o03DcDZndjjjMRzI0ZdZWfjYxH9r3MYtmMhc?=
 =?us-ascii?Q?eBACrFUxQZxRxVAA7iNgCEsx79Al4VP0iW2OUKF5nbRCXM3ETjBoxlQ2o6Hx?=
 =?us-ascii?Q?9HKE+5AAJ1aAX+2ifruRIknH6RQIIDYahlzxDmy+EmldsLlV4KtWbf0Z5wPr?=
 =?us-ascii?Q?AXxVg1UJXGQupM0HJXSizjs1iG+0pNzugkoYWs5SBFMTuOnRtMWl9NLBbERH?=
 =?us-ascii?Q?XuHZOrsm1BnXqFebPRgybu1IqT2Fk9ztYLa5pStA+DaPuwwaZRpuBIZBuOOz?=
 =?us-ascii?Q?tQc2cy5A0rF3YT2xcJJqdxMCzR0SHinI8D3YKQbiak70ZIe2UGALoa1KYh+5?=
 =?us-ascii?Q?Ox+DcLxnwi8MJUp2jxHnprjHKhfIkiPRRsm9JCNjB3K8lkR1HoNGiMjRuvgB?=
 =?us-ascii?Q?jjaW6if8Rof8x2BSMQ/krw8f+iJYt/IDKWoRZOWK5WcTt/Lb+D1i1jX7s10C?=
 =?us-ascii?Q?1JM0XyOVEdFd1eDPR9X4wi4ndTPaxph3ZvSFf3rttgrEAqgFGWjg/9as7lYH?=
 =?us-ascii?Q?EqGP+0CXIdjuG0bGWVDS1amU0BveOYguNDeFswq8Jy7uFdMoJ+upB4clPy5W?=
 =?us-ascii?Q?q8RR4yooADXv4jkWkh9a7fm7ey2N3mbSDt2e4B94y0Xf810nSuMKoY8QEObp?=
 =?us-ascii?Q?CO7YBXbDd65tdSxZttACDwDDVtkr74K7xZR3FaCuvSbalvdBFla49zFIE2Om?=
 =?us-ascii?Q?W5m53eaGmCrDCuBPguBa04spwKJS8vepM1lMgN9kcfwiftVVR2xfbJFaFTui?=
 =?us-ascii?Q?5kPMJGkeRMrWTyQ408W1wSEflywGKdqcpCgN6znDdALI+SO1itAWFGqPuwZc?=
 =?us-ascii?Q?K5Z9UuSqqlk0F2DZCnkQETTczXpeQjGUMsnllSBgKDIa3xj/rLDNTp7Fh9Mw?=
 =?us-ascii?Q?Mtn3hiV73jeo+w3M5/th+iVe61zgJitEFeNXWMkhZobfDU8rbS5fmcMz9TBh?=
 =?us-ascii?Q?83sZFxt5E/fzZxkLJbOcaaBmjDbK/ennDEBkUG/U9cnDY8iPF5gRdxHh3pFM?=
 =?us-ascii?Q?JYu6yMXBcpFaTIZiiCzzRTduF2FhF+Yk9pUX3mt/ZdufFuLuZFBYug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8cVeNh9uT+0GJQAvMqodHwqNayip4CpM/Wirw0g9m6lINbcqmKcGEYgkK8SQ?=
 =?us-ascii?Q?9OGsKAIzEW0RXfq7uMXMCd14gZpAkuf+ALUnQmJqh+DMzS3YIVbRfRX5zP6l?=
 =?us-ascii?Q?2jW5eyL478becLvgw0OVVS27ZdUr0EVuHTIXZo7qxKdBE2Rx0HPyd+fzF7ce?=
 =?us-ascii?Q?sdn+izdbBvDb2AzyVn1S51MfFQqXSRGhQEtSV/1d3vlBTm1k3fOE3Bj/RcrY?=
 =?us-ascii?Q?dTB9/S2hH6AzA6Mb0astj1+L5DWEoSYAWXssfeQ0ILP93nXbON72bYJrzLJ5?=
 =?us-ascii?Q?0jVhotOOX5dl5vwTPrQzepTBU9uyFOrJF5PVF82NaYAcpS96KOuQTryokpM+?=
 =?us-ascii?Q?QrNybp7v6NiSpB+upIy1cmIAfgnny4cD0grdzMVlKxlGUwnNL5JiBPce+J4z?=
 =?us-ascii?Q?siVtcYNvbN8kY1tNnw1SCbbgdWRMTdFAExfu3BWfdmrhppU7QSG8hcHhg4z7?=
 =?us-ascii?Q?Xl1KmxyuVc7FqU/kuRjQMVG45Z6Y3oM/Uc79W91up9c6/npSyDUO4Eby6ELC?=
 =?us-ascii?Q?/LZi65DMuro1N8s2TxZdTSixkDtVxPx5NFJsLxbSrpG0Dk5BE0YuXEsC/zAI?=
 =?us-ascii?Q?WxAvmmeBPMvUS0dPHGYSj5pL+zMxZZezWWlq8csB0cM4DTX4bJK7aP7sujAN?=
 =?us-ascii?Q?OunL/fr8T/G045P97tX3BiPRiNAUrvffMGdXWM7qDkgwr0jBLcgbOrs083B1?=
 =?us-ascii?Q?4UIiIpf4sagk5xQLmWuaKRFgmpFZ9Mq1UFgFv6tKduorXhDoQa0ZptMuVoc+?=
 =?us-ascii?Q?RCu6FD4hYn6IKvviSYw1bw7/DzGCytoYFvVP6S+HBStphAFlAt8aaP/mHHj5?=
 =?us-ascii?Q?CUIUxqrFuIxpHr/4GcG4vOIFD4/xIV7sr87RysU9C35V70s5h3N7L97oxW5q?=
 =?us-ascii?Q?51o9oZVCbKPnJHnEWz+ynklK8qokrwu/ZHvt6g6ZwlxyJ9CNpTwhq9clpUk1?=
 =?us-ascii?Q?6ytjf4SS9W/XAKC46CuHvumACXK6trOaLJN/89GBDayq2pN/IEhv4dbLNcO6?=
 =?us-ascii?Q?FfDZPFAbB8P8ncGy73aDNrVHS7+Sn8sNVmeG7rDThVpQRCE7T/BRmkzbRuEF?=
 =?us-ascii?Q?epU+XkuXBX/upPjmIh2YpSnPuMS8SzYVdJi6G0wBazOWsIm3OurKXz6lMOdO?=
 =?us-ascii?Q?VF9MWejaeseeANIpQA2pI47h/OM0RdR9USp0Ku5tw4NZKtu1LGBxK9Rbh5D8?=
 =?us-ascii?Q?UKjjJk/rO/bHXaqZoNkgvPMeXMUNoxUgtoCxMdvbxH2DKS49d8L2g3I9Tvo+?=
 =?us-ascii?Q?8PxelvxN9sAxG9a2I+Pj4ya7njHkid2rkdMTGZeOAPa0ZVe7DyMnwVw/IMSy?=
 =?us-ascii?Q?1iYdLt2EM0ePNOsTlcqftBthozvNR3+DGmSDy4Ropdycf8j+rgIm3PRSUGQv?=
 =?us-ascii?Q?cXwBMHzMAHfoWqgVKWhZTxYXSNsfFB53/121+QE3rSQmMtV1UOEq8n6uVZLZ?=
 =?us-ascii?Q?M076+2vGi3HMXUMS75ClsfePiI/LcdoIhYbo5qcRDIvnbGjWCgGefY28GMa/?=
 =?us-ascii?Q?ASxkS60xYFElT2S1B6fTqu7IZh4VSCnuBSndLsZXqeNtsgpEAGYRjKWCrTha?=
 =?us-ascii?Q?Nqd4Zvzg/hFpnihir5PGR8hUQoGqR/vRDW9IvA8l?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 305a8fce-e422-42c2-1b38-08ddeb68ec40
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:10:02.9070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H3miQB3dx+rtXhJ1jJoxncqyzHVsP3b83kVOeT3WPs9scfQSYmdbb+8VL6lqWwnWffQPM3aKMTs3xCVlIZnLog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756959009; x=1788495009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jaBL1VfCjRsn24SgBMvT++gusKht+AXV8TRxtCBrXCQ=;
 b=Rm6awGt7BdhTfENRSGZAYob/cp6MYJ6hld9WOCR8G0iPEDc1iooD4p6J
 Zkkq4rMKLvJRgVpXC1egdO3EnTCjFTO0bICmQTG+3T5tuoZRnUOIFdkd4
 Kzf2bMiF0qCVE/pip6v2jVj2balyRepwXMLOLJ8NpqSbCviReP7SdG5Up
 z4OVPcJvVs1XTw21GdX+BYSOKaK+bjQUNKKHLVOIIShWObMTm8zwf82BR
 +5wsvXooOGYhDjt+Q6riYaLEtgxsukbcSAoEITsfmolR2NHrpPu/1HO2n
 K3IwE0ZGTfA/o1cJl5BOyqJHcTFuM145K9i4as8AUbHBKkIe65XEebrR6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rm6awGt7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice,
 libie: move fwlog code to libie
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 August 2025 09:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice, libie: move fwl=
og code to libie
>
> Move whole code from ice_fwlog.c/h to libie/fwlog.c/h.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/Kconfig                |  1 +
> drivers/net/ethernet/intel/ice/Makefile           |  1 -
> drivers/net/ethernet/intel/ice/ice_main.c         |  1 +
> drivers/net/ethernet/intel/ice/ice_type.h         |  2 +-
> drivers/net/ethernet/intel/libie/Kconfig          |  9 +++++++++
> drivers/net/ethernet/intel/libie/Makefile         |  4 ++++
> .../intel/{ice/ice_fwlog.c =3D> libie/fwlog.c}      | 15 ++++++++++++---
> include/linux/net/intel/libie/adminq.h            |  6 +++---
> .../linux/net/intel/libie/fwlog.h                 |  3 ++-
> 9 files changed, 33 insertions(+), 9 deletions(-)  rename drivers/net/eth=
ernet/intel/{ice/ice_fwlog.c =3D> libie/fwlog.c} (98%)  rename drivers/net/=
ethernet/intel/ice/ice_fwlog.h =3D> include/linux/net/intel/libie/fwlog.h (=
98%)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
