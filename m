Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F6FC2347E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 06:06:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 479258470A;
	Fri, 31 Oct 2025 05:06:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70j8SfEfa_nl; Fri, 31 Oct 2025 05:06:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D21D8470C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761887165;
	bh=DxZGE8KQ7p11uiJ4Zvu3AD7APbHmpkm17aF7Ewky52g=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uIIilMbcBo3jLjIdwETpoEGVLt1FU3Fxmno/E7FQS+v5pOA1kwhS5JQTJWXxD0JTa
	 yuB9y+DSZRmQiLQ8BkMX8xEt1+cvRsj0PhlHpRICHSjSiAWKZ3ZvIcUClH1H7qe2aO
	 PMQvTFR53RpvFh+1iuAf3SGsCs5nY07Z0NNY3RhRLQCM32+bwBytG/n8Z+sc7b+YMR
	 zI5eb1Bp5ob/DkdS4qyaQUYRABpoqZZe75hDLF/1e43DtMfLEc/56RQGZ+BNfO4Fs4
	 gBudPzJTC6wY59iyiOk+JZEU2tgqHlbHr0++yBjlHHGCGKMWjlR84Y42qwlviTB4Ms
	 QaR+JyHlK/IkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D21D8470C;
	Fri, 31 Oct 2025 05:06:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B2CDCD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3D38540211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5qQ8s8WeVEX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 05:06:02 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 31 Oct 2025 05:06:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 479EB40ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 479EB40ABE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 479EB40ABE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:06:02 +0000 (UTC)
X-CSE-ConnectionGUID: zBdte4YRQkOg2CWtJ8PD6w==
X-CSE-MsgGUID: uEq/cVfySjm3E5BOmNF5OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63061593"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208,217";a="63061593"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 21:58:55 -0700
X-CSE-ConnectionGUID: gczx2Yn1QLKpJyDqep3JdA==
X-CSE-MsgGUID: Z1EG69bpSfS5o8kk9zycdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; 
 d="scan'208,217";a="186077237"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 21:58:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 21:58:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 21:58:54 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 21:58:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lpXRryuqQuGndvkS2AvL15kz+VtQxZwejWP9XNN+iKStMgIR2JG77WQEYa3YvncC3Majqi/9a40oJQppowlvA+jXeGfWnOWIPnCrl61JDtDI18mYL6WBG+axOpK6FU6hIWiUFs5zRyVyqQJbFJd2kSikKi2aZfR+U26GrUiEsyFVJaSO9UH7Hhmd2dLyDWB+OJ9WuJzaXRrkkw3UH/4aqEFZU5tYiv595USPYzZXKXJZUPV7aoqnC96/B8mXxS5CXIdDJGnx0ZbyGS4qdYv1Of6jZMrcA1w7SwbHvWljz9Dqgc23+8x2/e3RQRK5Vli3JuIP870guBOFB3ZQL1Zorg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DxZGE8KQ7p11uiJ4Zvu3AD7APbHmpkm17aF7Ewky52g=;
 b=S5xWixcR4xnT93dTWfNW3qMi76Z6fVV3HhONlWRhmAT2jfUTAI2ru/hux7zeZoo4bTZShR7PNHm6TsSqRic3GfNk38NmBtBu0Ol0+m+I8SiR4kfewB+i8G0v0XZMaLzp6UiD09lVO0FJjXyjk/bvEfqqYdgcvwcIbj7tsCJ9HsSLRafVNCORJeDm3T2hqS0CH33oQ1kgtPJccRBG/AAqPVO97st9UmjCSDITRGapukouyn/GBpn2MJuMnOJ5JEVJnMc89OqG5iQvFDyLlmZIZvyA3mvifwBsluuc/YaqEOxL7HeI0IK+Aqp2ExSKKTuSOMnLe6CdlK+CeddDbsEnwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 04:58:52 +0000
Received: from PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152]) by PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152%4]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 04:58:52 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove legacy Rx
 and construct SKB
Thread-Index: AdxKIr+BeYcuqEnfRz2PbIym4mAWeg==
Date: Fri, 31 Oct 2025 04:58:52 +0000
Message-ID: <PH8PR11MB69764650A4A2EB8CCAFD5461F9F8A@PH8PR11MB6976.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6976:EE_|SJ2PR11MB8321:EE_
x-ms-office365-filtering-correlation-id: 33eb404e-2dd8-40e1-cd42-08de183a2fea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021|8096899003; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KeheJldDXq0+p4Iv53p83XUv077XUrXMMCXovgVdvfboTAy2NEH9G6Tn+zsL?=
 =?us-ascii?Q?ZnKzUw9o3cIe7G2z74KTMGzRPVPECnAO55/Ayba3izxJKvCCFwXcDvS5NSYd?=
 =?us-ascii?Q?+bIgF88iANPMV7yD1dMS47uGygii9ElGHE7McIoaSFQPwT6PD4jD4XRWNLdy?=
 =?us-ascii?Q?rDjXa+S6b086dmV9udv23yf4d/Q+Al2WrFUPwm9k5mFG+Bw4XXOvC2CWCVrE?=
 =?us-ascii?Q?0thdcEA6MeW/Hd044epQREenyIcjjndfJjEliXa9dS5w3jjnz63zvdXs3yIy?=
 =?us-ascii?Q?CkC1lBnJZEzzd4U28qI0FTJMZL4vptPbx4ojMnAjSGOk+pcC4ciZfelilmIx?=
 =?us-ascii?Q?+xJWOdch1ZL9MSnakL0N6SVngNR5dh+olKCqW3TAMgLURm6nOMyuPN+pXLR3?=
 =?us-ascii?Q?FuCaYmB5kc9bGu1F29ggeDMt0LIsKaaAFpJHG4OcapjipkmMYDlitckuAkXF?=
 =?us-ascii?Q?ht1KqwpgaXcW0tMbcMp8oT/2WYS3habTvs9cUa0goq+086CIixpq76KWjvSA?=
 =?us-ascii?Q?LKcj/fUKKf54RwA0gu5QV+MQHknbaaSPhHtw+vCMbXY1y8Xqk6RFtv4F0Gus?=
 =?us-ascii?Q?TCTb78sgO0sM96izufQbgdtkbRjngaC9VKFUfl5nps5WDRmhFYgF0WbfiVTs?=
 =?us-ascii?Q?towCtelrcfdyukm76TzN96bACE7uITF9Tq/NNuGVsA8TyaN+uXj17LGNpYyQ?=
 =?us-ascii?Q?v9nseWdhJtFuU5mpr/vM9wuxXeMOLCgGYnYBhfbuGMr6JueuKMIMJviAGmL1?=
 =?us-ascii?Q?kRXZnAPaf5isG1O3zUXdfVFF1gQPen3Alb1tT4gmFi8lU5rTQ+HfeAD+9lhD?=
 =?us-ascii?Q?wChl3WYNpsbA/LSI8uruWfJU8dyMVklnRvjUu5xkhiyyCDxLiRKbXQgkZQNt?=
 =?us-ascii?Q?v8/ghNW1YbsXt16Pc5Qsn+VitOm0lrROYY8pmUGwUb32gP2gYyDpAF16BqrQ?=
 =?us-ascii?Q?LXyJIasam2p2IVgYmTTskBUTBuIeTSOoxkYl5wjNAgnW7DMp0MyItEZvOHtN?=
 =?us-ascii?Q?f+eR7+CKzKMtiaGqgPc9R4oK9UGbKZLM9jcEg4xmWKr//iCgPqXrxvt7ERe0?=
 =?us-ascii?Q?Sebbl0AL6WIg3kUO0johdbByP1dJmOkOXgmbZDpCqEPhDlNDBzlVFMrG5bNY?=
 =?us-ascii?Q?BsYQH3i/D1bZLUAzhrfYIFkCTY4ORLbsn/qaDKqwngYGzY/Ypks/DwtHZrX7?=
 =?us-ascii?Q?/QtEzVcQWt9zImnbsL6tYRocntwHqs7OIrLkDBhP9r9e7x/yxL8YdWJXuYDB?=
 =?us-ascii?Q?srVRbfAMmSSpw7jRm45ejPwgfZBduXRRL8KaVd1x4QfQacG3v+5PYGSXCMHH?=
 =?us-ascii?Q?yL0Er4lBXbWzh/dfNFw4S77p4bF6aqx56GHkix3Nqthx/Pz1+5mMz7EwK0U5?=
 =?us-ascii?Q?2Hnc0onBJwTO1TSgSXoRiqdGlZpOcH+I/FzW7x++eC/Usky1T932fbEKRw0N?=
 =?us-ascii?Q?JcE1VYh/63zR1BXuKynv+1sf4ipU32Qry4qPDGPc9rLGjAVkjPXOJXzdN/fK?=
 =?us-ascii?Q?/8PhqqRbB4cKxkiFgI7x8etSNn8NSOEsfSZI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021)(8096899003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y8l7iuGXgqXxTwl3H6U5K8BzfsR/fF+iU3BiXVIoV8wc8zYXYrIUN/dfJUsG?=
 =?us-ascii?Q?Y8roiDJK0aMvlbXaApRJdPw0Z3Z5/hk6McNetdY20wUNS1e5bcgOIzN0fK6i?=
 =?us-ascii?Q?1Ml4doDc03d8x6xUERc2Mo2QABXZnVi7CIvUqMswKKUoOBFKz/2tp7eK6vmc?=
 =?us-ascii?Q?0oEqen05ks4YeX+aM9Wv96wLlXh9pGf06nxD4PGpuyGqFKYf2+TeRIcCX9g1?=
 =?us-ascii?Q?98b8SaY87V2eSq7tnPf9OaTzZ/0CE3wus1Y6QQTFlPMIjbRyhhjfd+myXCBi?=
 =?us-ascii?Q?Qg3PMm/zLDIVPqof6sEAbnvgJwfZHwM4vCycfethJuu3P8vOguXkURNH4jJQ?=
 =?us-ascii?Q?Rh/z65NQMT9X9Y/4Rk4nCTC9ULAQdeZxgGDfEynuU2kjvjV+t4b+FfqR8HF1?=
 =?us-ascii?Q?qSrAa9+kdxF1Cv3Wed53+iWA/vFxE3WG9febC/+BWvviy71xIbex+ykfLI5z?=
 =?us-ascii?Q?o/aKB5jQggoKmDfkba1pLB/5OG31vYHqELoC4RpZJJ52Tb1/7lft6iPR6Yue?=
 =?us-ascii?Q?2s4pk5Ww3WlSnpm89CssFtNtAn241nS24IV1KmxZQ1ecR4RkKkaVu5YT6pNq?=
 =?us-ascii?Q?Cj6zFEHZ4q383Gw3lyjSKXOWp4ejfM/8UNz8pPpkEQqJIMm8hCj9Z/hEYRkN?=
 =?us-ascii?Q?GqlmhHbjRjuntvpJGbnkC8g7voetWn+TL4BuM8aNPsjDky2ppaqqP3U5xQxi?=
 =?us-ascii?Q?6ACFMurFgbmI2X2ZNJzmgNyykGyx5iCY3cpdiJSwYnwYWXght7ZRN+FuUe/8?=
 =?us-ascii?Q?27N0CHkKVb318zLLDlFpyhmQVRYKScoBp7TBn803qqtzGXH7lkf3ZRF0chTu?=
 =?us-ascii?Q?4k6/LSruygvCajDHvawcXp3Q3OcTjG9fKsgbrJn9mDs6KFXxpx9f02QOgriD?=
 =?us-ascii?Q?MQcb7Gb/4F/qxi68mxpg5vULcsGHjUxtfHkSGGjIIsUp5WStu/Aw2X12v91K?=
 =?us-ascii?Q?8evo59p+D/A05KJDhrsDBL3Z3Gn+63LROkfxhm27/EcWm+uaQ8hnJIj6uG0x?=
 =?us-ascii?Q?ELJ2GLXKx/uGv86spKhNVLIV0kwvHcnRSRmmcvnHGnkPjNCrQnvI5UV5Wprz?=
 =?us-ascii?Q?f8SRnhPYWS9MLBZ0AK5CaKYMmX7uzUVFwgjCxJE1r5WLb4Gzd5A/iNIvgc7j?=
 =?us-ascii?Q?1gwzEFQfp3AMDq5nSOzB693sGBnt/yMyakFVa/MnksYba95xa6pgjhVmdnnW?=
 =?us-ascii?Q?X+xZXlVweuEVuWykJlFmgwlQPzDK04oXuvqdxjarvdhyhoyDSfdXkW8TAw2a?=
 =?us-ascii?Q?Lrkwh4tzUrFvSowLxSWbVe1v1OaP+xxsDWU0t8y1yAf1xNhVAL1kYdpBxEUU?=
 =?us-ascii?Q?TrKcEReeRUELvn1b40EDFWyfvuiFCb7BQ2I0/0yzfXrbV+wPOLv56n/RNzql?=
 =?us-ascii?Q?r5QXLUyp2iW3xSZNmHTd4lCrrpTnj+oLCyRrWVhzeeTSTn3fxf7zHDuMsPq+?=
 =?us-ascii?Q?aI8OJMexthDtyBCd9VzhwgWTgL0DuN6NH6XoX3aZyqFAtQ8MqIEvogLHFJ4m?=
 =?us-ascii?Q?Eb36xIpBiGKO0PtopBF6NzTCJSGE5U7MQBxmjbbCSxcP6LBQziWUgR+KakG1?=
 =?us-ascii?Q?cA2E+rVMMENTtHbndTSWAipZY052yR9+lG05YmQ0A/B7DrwJAG97DaVVE0k7?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PH8PR11MB69764650A4A2EB8CCAFD5461F9F8APH8PR11MB6976namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33eb404e-2dd8-40e1-cd42-08de183a2fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 04:58:52.3653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X8wVE96G9DxksJ7dE4AidLVpR5ojpJso//ImAm8c/F1D3m0njip8Gyy87PqFsV8HZ1ndliqdv4gyZYPqoy+iC0P+MTHkjUXf40g9wDfkUoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761887162; x=1793423162;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=RBVZHlyTNDyOMlinliwyqDVUrH/26t8HUFcp4KF/vG0=;
 b=OfgVUikCM9BbtXivhzxfd9m2+ve/U+12ek4UKt3IVpseFEo8E2JccnTN
 2WuOwiETFi1xMBzmHKR1GcHHPi8d2MWjPdE7SvQaVf6gFD7lGm8CZaHcK
 oW0BP00+xEw7Hf/35CWyXoN5xXVGK4iIvSwmEFzcmbTGUrRnjLIXVgiSG
 lFGbV28bpQ2pZHXrubvVNLXzEbC1692ZNog+S2xAptizgLlS5bHLnmBKg
 M5EyWbF4kNnJu00KlYDuGgOLV76zLE3XuOv2w8SmoIG/E7o+Q9Hhk/nHh
 +bg1uj751VkYX0SSQC11OfiWfy/JNU7lzwmOVD94TpeZS94KoagVyxAI7
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfgVUikC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove legacy Rx and
 construct SKB
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

--_000_PH8PR11MB69764650A4A2EB8CCAFD5461F9F8APH8PR11MB6976namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wi=
red-lan-bounces@osuosl.org>> On Behalf Of Michal Kubiak

> Sent: Thursday, September 25, 2025 2:53 PM

> To: intel-wired-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.=
org>

> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com<mailto:maciej.fijal=
kowski@intel.com>>; Lobakin, Aleksander <aleksander.lobakin@intel.com<mailt=
o:aleksander.lobakin@intel.com>>; Keller, Jacob E <jacob.e.keller@intel.com=
<mailto:jacob.e.keller@intel.com>>;

> Zaremba, Larysa <larysa.zaremba@intel.com<mailto:larysa.zaremba@intel.com=
>>; netdev@vger.kernel.org<mailto:netdev@vger.kernel.org>; Kitszel, Przemys=
law <przemyslaw.kitszel@intel.com<mailto:przemyslaw.kitszel@intel.com>>; pm=
enzel@molgen.mpg.de<mailto:pmenzel@molgen.mpg.de>;

> Nguyen, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.l.nguyen@int=
el.com>>; Kubiak, Michal <michal.kubiak@intel.com<mailto:michal.kubiak@inte=
l.com>>

> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove legacy Rx =
and construct SKB

>

> The commit 53844673d555 ("iavf: kill 'legacy-rx' for good") removed the l=
egacy Rx path in the iavf driver. This change applies the same rationale to=
 the ice driver.

>

> The legacy Rx path relied on manual skb allocation and header copying, wh=
ich has become increasingly inefficient and difficult to maintain.

> With the stabilization of build_skb() and the growing adoption of feature=
s like XDP, page_pool, and multi-buffer support, the legacy approach is no =
longer viable.

>

> Key drawbacks of the legacy path included:

> - Higher memory pressure due to direct page allocations and splitting;

> - Redundant memcpy() operations for packet headers;

> - CPU overhead from eth_get_headlen() and Flow Dissector usage;

> - Compatibility issues with XDP, which imposes strict headroom and

> tailroom requirements.

>

> The ice driver, like iavf, does not benefit from the minimal headroom sav=
ings that legacy Rx once offered, as it already splits pages into fixed hal=
ves. Removing this path simplifies the Rx logic, eliminates unnecessary bra=
nches in the hotpath, and prepares the driver for upcoming enhancements.

>

> In addition to removing the legacy Rx path, this change also eliminates t=
he custom construct_skb() functions from both the standard and zero-copy (Z=
C) Rx paths. These are replaced with the build_skb() > and standardized xdp=
_build_skb_from_zc() helpers, aligning the driver with the modern XDP infra=
structure and reducing code duplication.

>

> This cleanup also reduces code complexity and improves maintainability as=
 we move toward a more unified and modern Rx model across drivers.

>

> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:a=
leksander.lobakin@intel.com>>

> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:ale=
ksander.lobakin@intel.com>>

> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleks=
ander.lobakin@intel.com>>

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com<mailto:jacob.e.keller=
@intel.com>>

> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com<mailto:michal.kubia=
k@intel.com>>

> ---

> drivers/net/ethernet/intel/ice/ice.h         |  1 -

> drivers/net/ethernet/intel/ice/ice_base.c    | 23 +-----

> drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 --

> drivers/net/ethernet/intel/ice/ice_main.c    | 11 +--

> drivers/net/ethernet/intel/ice/ice_txrx.c    | 86 +-------------------

> drivers/net/ethernet/intel/ice/ice_txrx.h    | 16 ----

> drivers/net/ethernet/intel/ice/ice_xsk.c     | 72 +---------------

> 7 files changed, 6 insertions(+), 208 deletions(-)

>



Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com<mailto:sarithax.sa=
nigani@intel.com>> (A Contingent Worker at Intel)






--_000_PH8PR11MB69764650A4A2EB8CCAFD5461F9F8APH8PR11MB6976namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:=
intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@osuosl.org</a>&=
gt; On Behalf Of Michal Kubiak<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Thursday, September 25, 2025 2:53 PM<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:intel-wired-lan@lists.=
osuosl.org">intel-wired-lan@lists.osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: Fijalkowski, Maciej &lt;<a href=3D"mailt=
o:maciej.fijalkowski@intel.com">maciej.fijalkowski@intel.com</a>&gt;; Lobak=
in, Aleksander &lt;<a href=3D"mailto:aleksander.lobakin@intel.com">aleksand=
er.lobakin@intel.com</a>&gt;; Keller, Jacob E &lt;<a href=3D"mailto:jacob.e=
.keller@intel.com">jacob.e.keller@intel.com</a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Zaremba, Larysa &lt;<a href=3D"mailto:larysa=
.zaremba@intel.com">larysa.zaremba@intel.com</a>&gt;;
<a href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; Kitsz=
el, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com">przemysl=
aw.kitszel@intel.com</a>&gt;;
<a href=3D"mailto:pmenzel@molgen.mpg.de">pmenzel@molgen.mpg.de</a>; <o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt; Nguyen, Anthony L &lt;<a href=3D"mailto:anth=
ony.l.nguyen@intel.com">anthony.l.nguyen@intel.com</a>&gt;; Kubiak, Michal =
&lt;<a href=3D"mailto:michal.kubiak@intel.com">michal.kubiak@intel.com</a>&=
gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH iwl-next v=
3 1/3] ice: remove legacy Rx and construct SKB<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; The commit 53844673d555 (&quot;iavf: kill 'l=
egacy-rx' for good&quot;) removed the legacy Rx path in the iavf driver. Th=
is change applies the same rationale to the ice driver.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The legacy Rx path relied on manual skb allo=
cation and header copying, which has become increasingly inefficient and di=
fficult to maintain.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; With the stabilization of build_skb() and th=
e growing adoption of features like XDP, page_pool, and multi-buffer suppor=
t, the legacy approach is no longer viable.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Key drawbacks of the legacy path included:<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Higher memory pressure due to direct page =
allocations and splitting;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Redundant memcpy() operations for packet h=
eaders;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - CPU overhead from eth_get_headlen() and Fl=
ow Dissector usage;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - Compatibility issues with XDP, which impos=
es strict headroom and<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; tailroom requirements.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; The ice driver, like iavf, does not benefit =
from the minimal headroom savings that legacy Rx once offered, as it alread=
y splits pages into fixed halves. Removing this path simplifies the Rx logi=
c, eliminates unnecessary branches in
 the hotpath, and prepares the driver for upcoming enhancements.<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; In addition to removing the legacy Rx path, =
this change also eliminates the custom construct_skb() functions from both =
the standard and zero-copy (ZC) Rx paths. These are replaced with the build=
_skb() &gt; and standardized xdp_build_skb_from_zc()
 helpers, aligning the driver with the modern XDP infrastructure and reduci=
ng code duplication.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; This cleanup also reduces code complexity an=
d improves maintainability as we move toward a more unified and modern Rx m=
odel across drivers.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Co-developed-by: Alexander Lobakin &lt;<a hr=
ef=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>=
&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Jacob Keller &lt;<a href=3D"mai=
lto:jacob.e.keller@intel.com">jacob.e.keller@intel.com</a>&gt;<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Michal Kubiak &lt;<a href=3D"=
mailto:michal.kubiak@intel.com">michal.kubiak@intel.com</a>&gt;<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice.h&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1 -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_base.c&nb=
sp;&nbsp;&nbsp; | 23 +-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_ethtool.c=
 |&nbsp; 5 --<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_main.c&nb=
sp;&nbsp;&nbsp; | 11 +--<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.c&nb=
sp;&nbsp;&nbsp; | 86 +-------------------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.h&nb=
sp;&nbsp;&nbsp; | 16 ----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_xsk.c&nbs=
p;&nbsp;&nbsp;&nbsp; | 72 +---------------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 7 files changed, 6 insertions(+), 208 deleti=
ons(-)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Tested-by: Saritha Sanigani &lt;<a href=3D"mailto=
:sarithax.sanigani@intel.com">sarithax.sanigani@intel.com</a>&gt; (A Contin=
gent Worker at Intel)<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH8PR11MB69764650A4A2EB8CCAFD5461F9F8APH8PR11MB6976namp_--
