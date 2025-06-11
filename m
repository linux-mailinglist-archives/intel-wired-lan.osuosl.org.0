Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F361AD5730
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 15:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3938406DC;
	Wed, 11 Jun 2025 13:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MjBeGE179rXm; Wed, 11 Jun 2025 13:34:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCCB84066B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749648895;
	bh=TlrocbhhRNwFJAo6qxt28vaUUPlHlEqlZeTd7aZM9X4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y1waJKrMB0K/q0nID0xw/qsf13937TF2JC2R3OIJ9gOBSfT6k2qAReA5dQblDj5aR
	 3A51bcXh1tBTRr/Lx8UYIU5g75RCA0bLyhgGhwyejA/P3OjC6T6ivK2nszJCH0f6Yi
	 hXOF+pBequRuiDkIjsuObPrlUG9srRjoQ0CSZT4oARIrEXUwkf0u+guPD/iykeJE8Z
	 38zKzLGGzWT/gGt+jQ/RSuA/gU0f3tv+xz5NXI/iUMm7o+tXNYoEaBot9vLtyL7aUk
	 xmT2nGFCMey9s8fACpu0557113le9QMx2LaPEI37X2vYpQ8Rlke/20QcqS8fPUHeZo
	 U7hCb1S4HI48A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCCB84066B;
	Wed, 11 Jun 2025 13:34:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 163A71F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 13:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00306403B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 13:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 09IcHeHxP6-Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 13:34:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9767400B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9767400B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9767400B1
 for <intel-wired-lan@osuosl.org>; Wed, 11 Jun 2025 13:34:53 +0000 (UTC)
X-CSE-ConnectionGUID: BCn0KUXgT76+UNxakR0pcQ==
X-CSE-MsgGUID: 8uWTYOAwS7qp4IcZBYlSXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51504736"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51504736"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:34:54 -0700
X-CSE-ConnectionGUID: uZlanVDDS8K0h4tAm+y4Wg==
X-CSE-MsgGUID: 81+w+J0DTy2Pn4e+dVoo7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152357547"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:34:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 06:34:52 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 06:34:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.69)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 06:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mwkv/+dd94VXoFRLVLY0IMs0Cte0frbcnY8VMQswKW5YOfbha6QXgNRBx9b2dEqvhtWGLL856kMbyxLQxpbWVzWYTzhU3cUcP4Ek/PYbYvJolVxewiLqokIdmwcEhIoeC+Ze5GQMvlBzYMNKb54VAHt+NnVbcK3LguneuKvtv8kLK+aNwzOs1wuYrua/RiaDu/U/LnFzfBOBWkobM1OBjnv+pSG8ohgbF3IPesMlTAa58U5paLj9/ieFYqp26JcLRoL4PX+ibbl5NWDYD5NtbTHzSVf9864jAHXjyuhCGQUivdYfG6XkWKqMuzfJVGu5ZTl3DqtKJ8ucvwxoC1+YJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TlrocbhhRNwFJAo6qxt28vaUUPlHlEqlZeTd7aZM9X4=;
 b=SUm0kNSKGTRZNJhX0O2WiRME4n/0qPtCMoSyuBGOBFoehpb6FZsi6Z8wu9uff1aIbg3QivfEx013yW7F5KqJ7zVqAlwfRI9MbpVoLHhwxQmiDtHQLTz60MtWgDOxpaJtz0vSpp0UcyK7S+TNb0oZcgOXwaumz/KyEyuJ++8kh/m1PVYYKE7imHJVKHvWjH4of01mBx/7WrfzaEmErLG9oceATK5CvpPp+M7i803S2FNOKsPyGkjsWxbUaUeVR3djPlCV1hbX0VNcsNAhneEKX5y3GJxkoYV1Z4IeBHWGgMLuM1An8KXm9/sNio7LUNPhO6GHYogxBiGptugEOer+oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF73E424DB7.namprd11.prod.outlook.com (2603:10b6:518:1::d2e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Wed, 11 Jun
 2025 13:34:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Wed, 11 Jun 2025
 13:34:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: disable L1.2 PCI-E
 link substate to avoid performance issue
Thread-Index: AQHb2s/O/V1XqP6stUqsTTjXbxOC+rP99W6w
Date: Wed, 11 Jun 2025 13:34:36 +0000
Message-ID: <IA3PR11MB8986681BC07158F93FCDD691E575A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250611125254.3648822-1-vitaly.lifshits@intel.com>
In-Reply-To: <20250611125254.3648822-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF73E424DB7:EE_
x-ms-office365-filtering-correlation-id: cbdf2287-3e6c-4d6f-2c40-08dda8ecb566
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NNi+QzxCOD/cRV55HHnl5d8g5Qm5AFwBDic5IpmwH78FVuGmaTfDrYfZHVFS?=
 =?us-ascii?Q?F+aq1Pq9nNVtumde/zD0kMjWHN9Lil+MQVkCVRcHkXk3R5E2YPlmvX3ELULO?=
 =?us-ascii?Q?uVhP7GZv1e8AampyrZ/RmROIeAJJS6qM9jesBme4i/YWNDS+n6V6fPwI5HZC?=
 =?us-ascii?Q?l9A0eUYCTvuZwWDtjpkQrQfs9Ijf+U2uwDhcsnW0Lv6pICR7sOBFIUJcUIJ7?=
 =?us-ascii?Q?/b4gKMJGeg4TXBDUktMr3qSxuuKcB5pkgMxQjg7J7ez7pMNErrDBUMdu/eqy?=
 =?us-ascii?Q?SBSOf/znbxQPHGraBV3Uu9GUtngFcWJ0vSTw0uC8Zj90CR+S5VWkw5O37UFl?=
 =?us-ascii?Q?NDGiNL2rmx2vjzjqe/BZLUtWbLFy8I2Q6tXJsVe+DfrmNxABMS5nlUiFgNZy?=
 =?us-ascii?Q?4gTBAGVrarJ8n38fjgj6PH9zD6h3Xmz4DHnwZqY5j6Tvs+x5PmknfhCFCzbA?=
 =?us-ascii?Q?zX9f3KrOe20Pcr23Kw0xVzZHXv1iolS4yNK4SdM4mHuTPIKO7uDoCT9+h/xv?=
 =?us-ascii?Q?OxncyoqaRhDiG+vbqiATuMgX+tn3RNYUHmsjT9Y3osGkTr4Tw80cYvQZ7SWF?=
 =?us-ascii?Q?tefnBVCVWraVwHhoC02+GeH4TDlFrPp6i7yTstZyJxYvlmP+8u0Od+5d/9AY?=
 =?us-ascii?Q?BPctl7XnN9MVNGWAyGbH+0u6PtEYM9RZcSgU8aEooC0+cvpLfEpksfp+Dk4w?=
 =?us-ascii?Q?izN+Sp/2D8UrifHyGjkyQQq6Bc51QW2qjvg+ilU8bUt6IH2YooHLuulIo016?=
 =?us-ascii?Q?oG26LTi8sx0HIGHVrrvnevPPGs49PmJ9/5VFSdabV4ASjDsPWJlL00PYHYwh?=
 =?us-ascii?Q?a1kWTpwi1jLWLRJmujg8NJ6lpi9DOaEzXUdSSMQoS/btbUKFQ5u/qtOOlN4u?=
 =?us-ascii?Q?gOJDylU1mCPZIRqcmPulMoT/wxpaRwtMNjpovJwt41NLhDxH5uewcP4nFt1+?=
 =?us-ascii?Q?HwDjhsmaN41rBjA5w5L9GuG7ZVNEP1qyOffMIW3FsBc08QsbJd/X/gZfDo+n?=
 =?us-ascii?Q?XKGnTzvJvgiO9W9s9h3o5vQ1wBJtirRTHhg0CMlCYnpZQbbYen+nCS2pm/2K?=
 =?us-ascii?Q?l4j5eN40XyvJs5uyleRhh0WeBNW95AU7YeJaAQH05EYWkSHwAuYIEGtpOozw?=
 =?us-ascii?Q?Us1pLF6aVz7d7M+nI3zRz8a7isu4bIR4Rj5mM+v5wpzxzqNCl7pHg9QgQlTV?=
 =?us-ascii?Q?fV1d69Jr0aNmnIBZMaOA+mPdOd6z6EliERTF71nYQBhGlrktIfDnfNm2qdrV?=
 =?us-ascii?Q?w0PUSFrjMHYFvi6dBIN9Yww0KpOV3239+bODxo2UF11PN6aXk6hLAm0a9JVn?=
 =?us-ascii?Q?q6Y/MHi7JJWkeipxM4MXAUXc0EYKLl/cTv1L7c5IdOyYo19GfgXyvrYRiDsV?=
 =?us-ascii?Q?HRtRYTCzTPVfoVMBx1lfsD1JdJ17FtcENqPk/41Ud1/+UCHih+VfHzueEunY?=
 =?us-ascii?Q?cksI4mtsVAK0KsFRoqtvbupemqqesddLxsH7H31lM5jMXrSZZQGhSOLX+ehr?=
 =?us-ascii?Q?Qn9B+hCLdRp8e8A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MDkWYTi2jJ9XvtjAXI7Y6FLwas6Ql3VGcPMdLet+BbykjbSADllJ46Sh5qM0?=
 =?us-ascii?Q?QtyvTZhnkKg5BDT+p91ty9d2cH+5a08qJerkAK5xZpbxdlN19nvQVS//ETjG?=
 =?us-ascii?Q?0C77ikaZ1DfUwoPPL3uVTbYuuHkj9yHuHO22hcrFG0XmXgzsp0T6I+OFIZ8V?=
 =?us-ascii?Q?YXzKVnd/BYz8HGq20/pqnjitHOdsGnwe/WcavKEDgCNVdjzy0aKdK5tMx8jd?=
 =?us-ascii?Q?Rfdyi+lZuJVb72h5112sLZuW6JrBoZDScdeNQaougchzqRadSZn3nGCdfbD8?=
 =?us-ascii?Q?Jytc1wXpaZ4y2o1NohhqlpuxEmQN6arRn2MSlnmjHcMd9iq87wWaK3NsZzmZ?=
 =?us-ascii?Q?bt6CfOgo+zINzOl4+uCxhkw778FMJDKXkZrKoIhwsD9ZieVdvToWSjv7qby2?=
 =?us-ascii?Q?rKNYx0o+oO1WkScnSEx2ZKuh3LGZIvo1osIB0qIXbj7LMxHGHJCCA62fwfo3?=
 =?us-ascii?Q?JFAcE+/Nw0LORtSxDZW3hqGrZJ2HnnYdot50YeJDiohwk2EfBRO87eru8jbp?=
 =?us-ascii?Q?M0TMHPFEetBxaljWCVN6AMuFeIvrPKFiEnaItKyI98QOtw2YXwesSBBwk04A?=
 =?us-ascii?Q?S+7a0/Fp+DBP8zcTQIPRzaj9vfrOW2W1XdSAt7/0ZNopu3+5KYQrgAnN7EQv?=
 =?us-ascii?Q?7A3NOI5I9h0xA44KmSA5O16kljLI/z6TRek84pgECbVbZbvNxn+aQyIqoe3z?=
 =?us-ascii?Q?HhEacBvWaM0V2sKzWz+Gju1kKMGXlNfsIDM6Qv3lRI7MCemYIJFdnLRHuEjz?=
 =?us-ascii?Q?e/42rlRT7mnZSuGrkf/5BEnU9/RHlHskxk/fVbPDFuVlcIXp7QWwk1CqNbpx?=
 =?us-ascii?Q?AkaeE3al++UYXx7kLnJ7rTtf6ox8YW2v2evof9OosUFw8Zlmru4GRkAZWIKK?=
 =?us-ascii?Q?rk8JTQIfyL7ptG6wLFpzrpMA51ZOIF94okl1pF6nTfnMRI2A66PpP1jb7pPA?=
 =?us-ascii?Q?xMIhOwWZEQ9WUO5zd9fMKsnYzHmRHv9pe4D7wcwUsQS1WLMr8IRwICpjCp+V?=
 =?us-ascii?Q?/ix+GyZGtv7WsWY+9cW2gteS/gDYgw/4q7sMNOj7OFhnS/6pERR59bf6t0EP?=
 =?us-ascii?Q?bZMTMYLlowT/FqFQWM56THc3cQq8SUDeHupwKqmbE33rhwRqdrsXBnfwq6TY?=
 =?us-ascii?Q?bul1aPX/YNIiqRZviuvgo8jQW1MZvHaUUPLRrS4OmfnC+oBaUPGN/oyVJIpk?=
 =?us-ascii?Q?d7/e3p5SkXdhs1bkgEw9zvePTZvePZ1XueKBis6+B0cae3v/JOniH9atcbsk?=
 =?us-ascii?Q?xyo/AWBFCWOH7wS0bIJLuPOcXM3BWPRp5C4Bmtz4EJes5x+64T4p8ZZv2m52?=
 =?us-ascii?Q?xesYrTYSOErP4v3wWg7bo73cSSkUlAU/lJpC4Ce9cmRGxGXIHarGWNWUkp0O?=
 =?us-ascii?Q?RtTyoWHM6F/q1dQAwN+Sb90arxpAA/YAtT1STU2Y7q24flInAFXtJNy1WMQJ?=
 =?us-ascii?Q?wC+J4CS4haAnflAw9Ed6wAQ/jCEVg4wsDwTau28vVs6M0n2Zl4GbXzDbF81X?=
 =?us-ascii?Q?56tfTNPfDjDAY5fv3gpkGZu+YqaOuyu/kBhQKurhRFHWYuZvCU0C3L7rPWGn?=
 =?us-ascii?Q?t0+DcvkjIlzhoSVRivMz5/B3oArhtZpWo4V7yQPve7+gxriHwimLKBxSx/KJ?=
 =?us-ascii?Q?Zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbdf2287-3e6c-4d6f-2c40-08dda8ecb566
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2025 13:34:36.5273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JZ37j9jtt9LS3KCDvW1WHfkfn0znY42wTxPo0V9xr+aqEfcnHu4DrK5fi8NNgGD/R2Ix7JhTu12FGWLGVHoyiHtDqnCl+i/E+J3ZC8u6M88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF73E424DB7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749648894; x=1781184894;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8342PLGarPCcLS+DhAXqb5cRI0/5zFfsEMw+f7qjhAE=;
 b=V+JfYn9LgljZ5sQBxd/zYgm99UmVXlVfWOF+cAsaH+PhfvAR1gpo9q3f
 XCy81raLNETAMkoDiJVk7giegrOWCfaoyWQgF/7PUjcDMHkq/pX8y/R4h
 Cj9wvk20NYU5ycNalPf8n5XDPPj3xkhP3b4f5X6pMLboT9LIbKaFx5NzY
 eRkiJpi5Devpq/IhRgrOdrndFrj7Y0vKepdAjKmDTXJwoV5dJI4Awev+w
 s/bNioyrHLAaHy0CBwJDyGM3W2T4AnIMoMEh6ThDmaeNgH00u8/DflkEk
 69j4AUAGCJX2Cmk8wTdHvDJvDd0pGaJe2nvYsHZunxOi76cxbjhkdZvLP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+JfYn9L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: disable L1.2
 PCI-E link substate to avoid performance issue
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
> Sent: Wednesday, June 11, 2025 2:53 PM
> To: intel-wired-lan@osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: disable L1.2
> PCI-E link substate to avoid performance issue
>=20
> I226 devices advertise support for the PCI-E link L1.2 substate.
> However, due to a hardware limitation, the exit latency from this low-
> power state is longer than the packet buffer can tolerate under high
> traffic conditions. This can lead to packet loss and degraded
> performance.
>=20
> To mitigate this, disable the L1.2 substate. The increased power draw
> between L1.1 and L1.2 is insignificant.
>=20
> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-
> 02bfc92b25e1@intel.com
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Fixes: 43546211738e ("igc: Add new device ID's")
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27575a1e1777..3ada48b85bd9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7113,6 +7113,10 @@ static int igc_probe(struct pci_dev *pdev,
>  	adapter->port_num =3D hw->bus.func;
>  	adapter->msg_enable =3D netif_msg_init(debug,
> DEFAULT_MSG_ENABLE);
>=20
> +	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
> +	if (igc_is_device_id_i226(hw))
> +		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> +
>  	err =3D pci_save_state(pdev);
>  	if (err)
>  		goto err_ioremap;
> @@ -7498,6 +7502,9 @@ static int __igc_resume(struct device *dev, bool
> rpm)
>  	pci_enable_wake(pdev, PCI_D3hot, 0);
>  	pci_enable_wake(pdev, PCI_D3cold, 0);
>=20
> +	if (igc_is_device_id_i226(hw))
> +		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
> +
>  	if (igc_init_interrupt_scheme(adapter, true)) {
>  		netdev_err(netdev, "Unable to allocate memory for
> queues\n");
>  		return -ENOMEM;
> @@ -7623,6 +7630,9 @@ static pci_ers_result_t igc_io_slot_reset(struct
> pci_dev *pdev)
>  		pci_enable_wake(pdev, PCI_D3hot, 0);
>  		pci_enable_wake(pdev, PCI_D3cold, 0);
>=20
> +		if (igc_is_device_id_i226(hw))
> +			pci_disable_link_state_locked(pdev,
> PCIE_LINK_STATE_L1_2);
> +
>  		/* In case of PCI error, adapter loses its HW address
>  		 * so we should re-assign it here.
>  		 */
> --
> 2.34.1

