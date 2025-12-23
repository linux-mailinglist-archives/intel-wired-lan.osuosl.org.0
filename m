Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C81CD96BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 14:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 878D56067A;
	Tue, 23 Dec 2025 13:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QM8O5_7-d8Lr; Tue, 23 Dec 2025 13:21:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03A0F60B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766496086;
	bh=IfQle92U/FqAq1t/wejugmAvPHc7WO/De/n8uFOfjVE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kqQ8W25iGHtaYf9lS5qbBydwSblp4NaZ+q+BehjxBcxlAE7Vr9wByo+ZvHd+A/3aX
	 iq3NFfdcQgHWATP4zGNWkCmpidih/PPVwWjfmtED8le/9ZIkgdnivskj+kNVapcGMM
	 IEJ3DVcq989h/ICLD8v+y5XReHjkF5tB6y7AqdcadXZUaYIIpHY81vWO3u7H1uxtdT
	 F0sOiFSoa6XDsf9JvrCxMN0qq8uaFz5gvCvQuq3rzo+fGydB4OpPZ+n9PcuHq/A5tN
	 qswDyqD2mIy74s/FI4InfFwYhwUMsnQEOzjKCGIF6H6DUrypl5vUjNNvMyBNb+MAOX
	 7+GZDAKKUlFUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A0F60B13;
	Tue, 23 Dec 2025 13:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E1B3119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6056540900
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:21:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UNjgFaNFlenQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 13:21:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89F88408D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89F88408D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89F88408D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:21:23 +0000 (UTC)
X-CSE-ConnectionGUID: /KcBhhmtTdurvh4w3Ck7Og==
X-CSE-MsgGUID: vRdK/wLmRgaw40Ak4Qfz8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="68226027"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68226027"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 05:21:23 -0800
X-CSE-ConnectionGUID: 7tnYvqZ1SrWmJY/SpAJuBw==
X-CSE-MsgGUID: ayFb6sqKSimjOeymXYQBHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199691159"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 05:21:22 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 05:21:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 05:21:22 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.44) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 05:21:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hVohZvkMDlP9iotucs2lHLHH+GXxRnmMJZNDWZHnymC4JF8W1qpMTjKerhXEVsXMuV6yLQoou6Vz57f3jmNtMKOuV1ZrzgA4aIPjw/NqYXC2PVkg7/M6F621dr+r7MZ93glfomamCJiM6Yp7HTEKnzzwUrTHYLPbQzX1yODPrA4VD6Us7Tgx8Y57lkGu7om9S32Tfw2rX8VJ8R8fHvGpud54dHNq7K3C61vrzpuksJMsV/ENAqAMcrFF1aNkttr0eqJiEQpHLG2xTiAGZ0oMfDoqoCkZ/9KyYNtANBzAksoKYebtph3cfgfkw4icPb14IH09eY53G9xFmQFzNeARYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfQle92U/FqAq1t/wejugmAvPHc7WO/De/n8uFOfjVE=;
 b=sbJSrxnP6gLLJSzLg78Si6aWOCrBfJoF5/+HuzFfoMjYV/L0t8jYb8ophwnOB58pjUPJOei8qoC/AMsh8PpSIZH5/k3j7XyPqf+6kV+nZvz9n7EhTCx1d1PmAftfE9sTOEwWO3Z207k6GuZSN6vl7CxcAL/yBewHIcz8bHNnj6cE90gitWG95CyUhriH6GtF+F5FiF2V9p248ETMLO/MA3/nMHHDavAKrqjdt7V+G27GlXOTAUc/GWNWmRJekTOTh38UqwLxcRB9wrUZdz8CQXCzoXbUeJeMCPQaEgwsMQqC/pGDhZ0s6LTqYURsXc6NhP7e3jpOhaR/nDGQvoWYJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 13:21:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 13:21:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
Thread-Index: AQHcc/GlcNTp7Emye0O67FXaf6jpCbUvNIJw
Date: Tue, 23 Dec 2025 13:21:20 +0000
Message-ID: <IA3PR11MB8986636862CA90FB68A97FD8E5B5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
 <20251223095032.1379862-3-vitaly.lifshits@intel.com>
In-Reply-To: <20251223095032.1379862-3-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN0PR11MB6088:EE_
x-ms-office365-filtering-correlation-id: 6c235be3-a494-47d5-385b-08de42262944
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Zmf1Q/d20Lws/42AQO2wdAKRhEyr3ytyRCJL863oLr+flV6W2dtyoV+7ieSc?=
 =?us-ascii?Q?ryYWD9kSslJJnvKlPGNE8jAw/Rh9A82wrLg3RQNR5mtyo6hjP8/WQ79Dqw+K?=
 =?us-ascii?Q?nfQFnjW4vcXv7d4iILnVKvV/xLEVBZdXA2bzydTaxTD4AmE5SkYCAgx2sLIK?=
 =?us-ascii?Q?fwhJLNxaRgimM7CIZq7q0JClkCqeeRw/wcZglpsIi+Qug93OPDp6poMNGQUH?=
 =?us-ascii?Q?HQDKcykq2ChjDeepUNQRarYQuvL/2PfcPJKeYBkAtREU23sKqMveB5ac1e/V?=
 =?us-ascii?Q?IWlSlivVI21Gk6+m9f72wmWVMfIbDtC+HGRQ7yeBpyk30IzGEDDu2Dh2Y62m?=
 =?us-ascii?Q?xGqURKNa2yvRiov/JwdLiRf0+M81Ull9BPn+JPMuTtqWbAnHmWo+not7im4L?=
 =?us-ascii?Q?Ll4NQXAtzUZ5Xg8MaYqA4j+daDr/iWvL5rSUPmZZsDiJ3HsffvK3ZA44CoFG?=
 =?us-ascii?Q?NXTMzZ0qVSPPUJ7rxoNi/9M7/Ci2cuLdpIJg7FnAf8d3FtjWMiwyeiU/qITc?=
 =?us-ascii?Q?TG9d+04+GaDrjUbtDrG/fipOop6OQQAHBufAP7yGHbhq5ZT4yg0H2xb2X77I?=
 =?us-ascii?Q?TjSYDC+GDsLLFGbl72HiVLcRMkcGHZX1/pwi10KZGuaT0+kL/DRJHw2iynXU?=
 =?us-ascii?Q?N4vJ2tYmbztCHNm60U7l+va0ahb2Cq7p2FXK0ZeMmEu6tZbP1mU2wdyGFHqP?=
 =?us-ascii?Q?O895uEQYZ7WFiviJsWBQ0Se+ly8omdhkBdDU/tnLH3LXaV+f76SNwTvA8niZ?=
 =?us-ascii?Q?TdGchL46i00H9EDb3JhdiGRGQOlRs6rHBxM6mwjVPb9M6g2LImXLjOuSFuUL?=
 =?us-ascii?Q?hJ/Z08xPgwbIjdckAk5zL9Qa4NdOgfUCJ31oC6DXRf/IqMoaDt85oaI4wpsG?=
 =?us-ascii?Q?hI+QwQfpEGiZGUgQjvopQVGa1Ti2DZ9/r5s2Nc8PKeSlovraIMU0g6sXfEJu?=
 =?us-ascii?Q?xxw7G+EasRT9hhHPPv54ffSGWTTg3axUZNX+ZecjBnIZ2QJH1bx64dkie5dY?=
 =?us-ascii?Q?4jqVDk75jB/Bibbi08N+2JlMtxhVcrWcTzHN2blHXr1yThm81hCUqouAegmD?=
 =?us-ascii?Q?EnT/+57ID7x4hyars5rZBIylp32QEh5pCB8yXi2CY42DW487xGoQc0CP+vsF?=
 =?us-ascii?Q?O2LQGJ0IlFtdwiLw1Gg7AO5GGHvEm9GBJffn2OTKGDZ8hlfS8xdrzn9ckf2f?=
 =?us-ascii?Q?ys15FXV4MqpeBqcr4SGvukLQ1CHH4vNF40VmCL+Ym3F3IpUBlKTe1QXDhXTG?=
 =?us-ascii?Q?Q3QCBshYGUOgJFi9z2QI0yv88M7vE+OS8bQP1t4kiJwm3lHfUid+/Syl4vsH?=
 =?us-ascii?Q?OwhRxJJHbfoWw1Egwaakjuc68P6/j1Fi9pEhDBrqj5bDNpd8dlUhINcNOHbW?=
 =?us-ascii?Q?wPN4Muf8SkPvgwEjaLJYF3NlyApxT1DQCciOgz2zW9d1Y8mJJ9irAy8LMDqC?=
 =?us-ascii?Q?pczkgGOnMiv+k29+KbVnbssWuVmMkaNsKaVEXhLyPU8RqXPUANZ5E3QLU9AH?=
 =?us-ascii?Q?joAamhw4V/obH/6XrOk+CoUI25Ib21XUpG6d?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qa4pvK/5LU1ZVfA/CkM0lO+uGrFOZ4Vd0ydWMI6a+9ASSIFYW/KZ+62baf8S?=
 =?us-ascii?Q?xJ9gr5AsxeeawkpbkGZqdjlPdLE1Nf0rgezBSWR99KEdz1Z8RYZCx2BvbOQp?=
 =?us-ascii?Q?ht3RENIaYo+YOlvt+ab3IhBfgI4csSnGdxnyZO23ItMWjTb4h30S4RKLnTQK?=
 =?us-ascii?Q?yhcx37k4COHINsbolUyg28HYXs/DAK96eAlc1Uk/xBSeAt68aQBkrVB9ghK6?=
 =?us-ascii?Q?6n0uDHAQHBrWSOq5+1Kfk9l/b6v4fLhthbqSQiW/In5WYOw4q0VpLI3ReckB?=
 =?us-ascii?Q?fJXbn+JawL6x0XwMyLh8PyOLwZuRV/21a4xVZs2uDBDyzNNmoP1+tC3V3xLv?=
 =?us-ascii?Q?7eTehV2rxbe3EXGavVKjINMMnExBW5kIMGHyfKZilLfIZ5oyQ5OIcs+LeVBL?=
 =?us-ascii?Q?vZSrn9Wv4PGi6zH8AXtzeS6qnNDu6Gy6bUZ79vSzKH4c5yGxU0wu82g2W1lx?=
 =?us-ascii?Q?z85TDGKQX03azi0Y8K/xbmOCOfSCyRQvpysb+Tc2E8X0WPtlkMHpYwLe52ma?=
 =?us-ascii?Q?Sgn3NRn0CIrOwEOWFJAP7TezDvEEjCCMY3Xp7SEAe7h5JP58H7TmH4MbYLTZ?=
 =?us-ascii?Q?/gz12iXWd2uF57JNqsEdmiPrUAoX8Me4qtCSHeOQHCYEW9KpQ8/Au1bDKsY0?=
 =?us-ascii?Q?Rrk2E285CCfgpxTev4BVspSKeSXnRQumHA9YMLuWwVNk8aO8kseB8DRIb/tC?=
 =?us-ascii?Q?i3Jlc0r8lnqlFdPRGWDUEYNlmvgx0K/h63jCb7d/sNJQ7Ac5hZNzM9rN33cM?=
 =?us-ascii?Q?OkqJ5+yiYdzNZbADCOr6aGF8ByXiK9m8QmrxpT07VUY2Y1QpFJCzuBvVIwO0?=
 =?us-ascii?Q?pQHmU5KZWyU0FejECyWlQAVzr/zKBD9sGumXc7psmtaUIb6QfV87+Yi8wCmm?=
 =?us-ascii?Q?BA2673e/hGp1vBNE1olaKBqYB3OLXPcREkjpMANq/26PaBcr2YnnKIc8CCO5?=
 =?us-ascii?Q?YvQFMJS87cp0YhTSxcIcRwgqnwq6/3G7VdfWsrgttlLGm5EHaHazcBRCHHW/?=
 =?us-ascii?Q?mSiriJ5XwelrLmzNr3aTp1Ch4kf4jfYPGYVRdSeFRBAMOfrcJFhszbvqBMb4?=
 =?us-ascii?Q?JVhExZRNe3N4LHJeY8mgNg7je6aepkEo0O+HG2/zwUmmDTEN7pB2ibmMUmcq?=
 =?us-ascii?Q?ng8B99yemljXekrzhIx79UuZ1yYUPLfw4IRv7ldoH6pGu/kTcRu2cOwllWF6?=
 =?us-ascii?Q?bjDLQsO/YomjBPoR1bQJ3J90hFCSSvq1+2HtDyKIrOqmywUEjWtW9rhJcDs8?=
 =?us-ascii?Q?xACP1RHwOJ0Z3slN8K0/Plw8ZRFXSGFpyPnJfjhvc4ReWpA0CrDD0/NKIYyF?=
 =?us-ascii?Q?hZJ1SDln24Yi3tN2plNlqeU6XiwZhTe5mC8AJ+iyNH66OAa8nvAYE/VETGEE?=
 =?us-ascii?Q?5CS5Gc5UvnMiqIX50nTGDDq52L8wGBQcs//lb8qy32psQpocH/zrFIs2gejp?=
 =?us-ascii?Q?RnS4cTtmryORITj9NhYfiYXwVTIYikratPHCW6GA9GorpbVErIuDVY1jDKZA?=
 =?us-ascii?Q?P+Mwd8FF4hiHSYRXxvs7qdXKPqxaSI9Vg95qVW/nKIVAyQnhyPg5Yfq62Gpl?=
 =?us-ascii?Q?x1G2dYQbkLjCnvkwHnYcmUdue8fzZTgE1LEaA6dCfbV24FCu+k+0RYCqDmM4?=
 =?us-ascii?Q?dH7YVjcEArWY5xyQhOO80BdAA1Qg97Eh2iarwivTrlxqeLJEB+AbpM1Gwz5d?=
 =?us-ascii?Q?NZilkM3uTydoXN/kkny7USUlJovReK2WDQPo2YtVRCqFqme5p2V5gMGxl/1t?=
 =?us-ascii?Q?ADyV+3eRl+Ad+HX7wp60WL4cLVjrkig=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c235be3-a494-47d5-385b-08de42262944
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2025 13:21:20.1254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tt3r7uGsxMu3TzYW9p54vlHNhdpCW8an6/qYFco3f3XfLu209pfPxqim68fgVV+DCd4CPyDSA0RoVo/umRoDYlj0BtDXBY+FYCqyad7TU4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766496084; x=1798032084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jXFopelEtX10MLH+/brwPBkiwAkvLAgvt6QnvZJrV3I=;
 b=Ds1uK6BU597WTGFceg/byKSIhhIZBGyz1bTVa5ujIQO0PRdhSmxKAIrw
 sQJqQw69uRr4Pk2ch/6y7fu2nwKxFV+XUYd3RcFhAzfojgqLfEvjLm40A
 SNKEGeVIbwDXiEbs6dPEhrWI5pFBNnvPck8o+L/SMEYEcsG1DBi0KLNrB
 /1TTviMAl6RYDWtXyIguDUZ2s1WUVNelMWcf8AdlpNoQF1ZJ9hLlEvFoC
 MLx7tcn0G4qQGjPfzfr0Q++TAyiuQnjgvBja8bvzJ9sqBKKgMODwWgbfK
 kjlpykDJTaniricqmW0jDT0h3PId1drlSH7Xnx6kCF9tK8rbdrPVvqgcy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ds1uK6BU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
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
> Of Vitaly Lifshits
> Sent: Tuesday, December 23, 2025 10:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN
> after reset to avoid autonomous power-gating
>=20
> Panther Lake systems introduced an autonomous power gating feature for
> the integrated Gigabit Ethernet in shutdown state (S5) state. As part
> of it, the reset value of DPG_EN bit was changed to 1. Clear this bit
> after performing hardware reset to avoid errors such as Tx/Rx hangs,
> or packet loss/corruption.
>=20
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM
> generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index eead80bba6f4..dbf240c8b483 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4932,6 +4932,15 @@ static s32 e1000_reset_hw_ich8lan(struct
> e1000_hw *hw)
>  	reg |=3D E1000_KABGTXD_BGSQLBIAS;
>  	ew32(KABGTXD, reg);
>=20
> +       /* The reset value of DPG_EN bit was changed to 1
The opening /* should not have text on the same line for multi-line comment=
s, am I wrong?
But short one line C comment /* ... */ could be better.

> +	* clear it to avoid unexpected autonomous power-gating
> +	*/
> +       if (hw->mac.type >=3D e1000_pch_ptp) {
> +		reg =3D er32(CTRL_EXT);
> +		reg &=3D ~E1000_CTRL_EXT;
The mask E1000_CTRL_EXT is applied to clear bits, but E1000_CTRL_EXT is the=
 register name, not a bit mask!
#define E1000_CTRL_EXT	0x00018	/* Extended Device Control - RW */

> +		ew32(CTRL_EXT, reg);
> +	}
> +
>  	return 0;
>  }
>=20
BTW doublecheck you don't use spaces instead of tabs.

With the best regards
Alex

> --
> 2.34.1

