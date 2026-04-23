Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AGVA/Yb6mmUuQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:17:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC88452AB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:17:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 525A740FCE;
	Thu, 23 Apr 2026 13:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bfjjuyah_ZSM; Thu, 23 Apr 2026 13:17:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC0F140FCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776950254;
	bh=fKPXQPMSktDDXWZmTsBgIq+Qtjg+4Ryn+IN+Hj6cPRY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pUfECXI9FH7y/eItkdPhGrWgTLdbPdBsCXGLe0CvtGcCJqfFFyTnnNZIh3nu0KTIf
	 eEODGr/5OF91FopF4BFo75wtAdCQhOPgPYTK+QMnkpyZTxIfyUdWRvEqXOIpseUrCL
	 pPLa5iryV68W03y7VgFNU6cjJQEuPL3XQberyuyVhwlLmSJxIFYNescOAMRPCVzCPO
	 1Oh9Vdqa3uLmE1/YEiAnJt3VTefM+13boTC0JlgaAG5fthW0Ez7r8xm88ADWyFMg8F
	 gTtpQAWgYURKYJzaEtFqnj/osLdJBHcMkJih+d5J4EhRy3ZVJHx6eViPcfkgqIceiS
	 VnT4C8VqsRAKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC0F140FCF;
	Thu, 23 Apr 2026 13:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EB3BC24D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC3D683BA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:17:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xa6Dcb-u0gjA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:17:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2C09683BA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C09683BA7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C09683BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:17:27 +0000 (UTC)
X-CSE-ConnectionGUID: Q7YIWj5XTqqE2N/fTIhgOA==
X-CSE-MsgGUID: xbl2YbkDRcGNcYY29O+ouA==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77797677"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="77797677"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:17:27 -0700
X-CSE-ConnectionGUID: wgpdXsrDSumAKgWuitkXsQ==
X-CSE-MsgGUID: QZ8uTZTwQPyybP50Q0JOig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="256146918"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 06:17:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:17:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 06:17:26 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 06:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NdpF+lsKxAkH/eJ8i/97iYLhGjJub0Tzv6p0ia5WfinbDY/vzkiHribiGeUzliAzoWxVoPqTaIVWhsIlxoQeyRarTYeAtk3jGAzJG8z1+sDgzgFBCn5UfPS9p9bfLk8Se0kijhJL5VX3Txb2ymjvGbknLzsieibT5o/elu/lNgiEwk8Cml4i3r2Yrdr1bvaBfuO3oiGbsHLfNLELqTIeDPZGB8XG5uXDtpcaiMaACdzAMgiQznUsSetSotPn5HF8LX+CuqZ6YRxkEUmn5HSYn9HGLAKfIcostqR6QiGIuuK9UvJ2leJyv5/J6ElvnEg+R+fRp3P/+Y2Y+txMp4H62w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fKPXQPMSktDDXWZmTsBgIq+Qtjg+4Ryn+IN+Hj6cPRY=;
 b=BvbTJvXIlvYf82t7N7wJY5E/X3DImzTexjxQ1aS7GlAIcPXl62wE8SxgJEdPf3lmtwWijYZkPWhV+LMb5klD2fDpOc0Cs565uEFOOv2hCtkS9E9uNS9HLPHlInu0OqvvAeByWWDEetWlmubPAtPrPDDOaarr+g+i5j52b1ywKe2oz8CHXUO+UsMTXZYW1a/a6XjteRs+78BiACY6hp0COxCOezZ5JpqhgPeN1F/qnj1si8mqvlOho5wX6kaf+Kr4LRQiC84o/y7SsSIfUKlMVz6ODmHKk8phd4FiUJcqm0hcH/5Ba6dtb7ncdc87WW5wcKG5XbIqTjrvrFWECjnLUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF383C22AA3.namprd11.prod.outlook.com (2603:10b6:518:1::d17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 13:17:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.014; Thu, 23 Apr 2026
 13:17:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH net v4 4/4] ice: skip unnecessary VF reset when setting
 trust
Thread-Index: AQHc0yHPL3usVtJTakKErPoC2Bf5x7XsoCew
Date: Thu, 23 Apr 2026 13:17:21 +0000
Message-ID: <IA3PR11MB89862412A9F682D59474841DE52A2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-5-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-5-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF383C22AA3:EE_
x-ms-office365-filtering-correlation-id: 1870311d-8126-4fa6-cf6f-08dea13aa6ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: A8DIpiM7IAOKhrhCAk5gCzd4VBDd/6ALKLG2Irm83Hdw9oCqaW8vkOWZ5wgHblg0MoO68gy6Ezz8kCUvGzlOijgv0/M7xiTf18kpS2rbMEyE3yf+drsPI2puDA7D9qMzPdr7+zJhOjudtgXFA88Ybl4ORRPP0glMvGtDWI0cSvJkBwrndAfxolPGFNNEcpcGGQj1aD8621pGIZ820Iq42yMwEmOomEB5cAW/G6wILTNbofJcaNNBIr2N7vICLYEExE2DhSG60BkjgXpar0xPCrCEvI21MGlKJ0ySf4asfqZD4M0xiA64yCay/kY1VphjNiAcAUayfHnvrqlpOZT0slGLzM4TVrX+Zwbe1IYUCzNUCuea3pn5jKLfwLiQ8QJ4s/FyWCCGgr8gScM+DeWWNYII/f5IiDsegSgtUawdC+yh/Gf9VGK9eDlhbCsmFoOsTc36fdGWbk+CTQ15FM2Ji+e+z7wEyKsxPj+DpRMbCcL60qDPjRPMbpNwQku4ig98qC2PI1pC9m4t8TmVi3/XYMRdLId5+1EJGojhA4HvNo6a36IoDDA/9MUlxSsAI+ozwrytwAW2BfkxT3w1WgjVZjZBS060J27jOGnJJJWRkm8KEwzQJZQZcT5qW4usvo+DTCT/A8z/zRTiDbMjmfaVa89KkelBAyK950F3wXaxZnLp/fFjjpRDkNugGhNpQ8pa12LLoQVyjpzObWk64xSIT1nuyUOPMfATlG5UmqTEiHytq0eNlf84MIkx7JN6v0QV3sIt2RKxNrLgXt7IF6WzJVlerOhvhKPydpZFCD1fcr4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RcyDtwb7BwY2YSp1swI3gXNWOEPlxlJkPGaOBHEjJaXrZu6MVZ3D9cgb7o4V?=
 =?us-ascii?Q?X/OnKIra/jRSd1H45f07USubcx/vzbkfxME3O4b/ETsyRLwHa36L+1xRs1cY?=
 =?us-ascii?Q?gZqvi47X9cwzxFMJuNreZzH1KpDDZyQHQj7W0yV8tbZ4rL8fG4yvM8VU19gC?=
 =?us-ascii?Q?VCx0bLvNcmr+V30fy7Cm5Ip9SHBs5rQXEWfUOsrTTX3xRbp6/FFluGurKmA/?=
 =?us-ascii?Q?I6RkGnljHGhUerYLEtQy0rqY9eLLJBy3/E8fjDVDV+kAkbY3Jd4qa6Xq44dT?=
 =?us-ascii?Q?RGRw5IDPwiNKTXMu7OVKkwW0MROsPH75zM0r1TSE0LlZZ1rgEQz9APLoEgf7?=
 =?us-ascii?Q?JMP04RbhTctAMJl5GPq558395slCfJD8XFMNTD7R2fqUThiisqKykbTwiGgh?=
 =?us-ascii?Q?9lT3EbOYzu9TwKGjMK/ZjWra1QWpXaMPAM8cwxn1z8j7OnluStOjUTxM75ff?=
 =?us-ascii?Q?MwhUPAK2SP3ViDOFirNboC+IQqSJU6VMl7B8LVNWUJbTJ7ulquTr/u2TZOtZ?=
 =?us-ascii?Q?M3p4R4IGPSigaJEdkW/y/xBNqnxai6DJCXG56shCGM2JheJGGqHXDgjQRSj2?=
 =?us-ascii?Q?AE/VFtsnNKEyST5XbTn5WszeIiNXDIZ+NFcniX1YcCtgwbxNVMKvbVGt0DNs?=
 =?us-ascii?Q?iFu45VWlPI1PnQMpZAEplYFQWskjVLeN8A+bxsbdz4O7KMDjIrcJWURyUamD?=
 =?us-ascii?Q?lGBYsQb/FE/bB/0ChvmjiJZYNtNHtFT+ap5s0WSBZKZ6F1nGawMi4aWpggsI?=
 =?us-ascii?Q?stSqDSe2A0Mom1ezfaL180uIIoCJ27Wk4UgXL+i6VbJlmcBo/QAdjzoNAveo?=
 =?us-ascii?Q?t1OqXdK/goCKq465jn3AMQ1PAtCG4BpcBAm/Q0VRZUDWZMbgsFdxASs6wlEU?=
 =?us-ascii?Q?laXX8kK7mHXX42V77EOfw+HaJQZlX9mEHWtB6S3oFxeaOOGou8qcY3OHNt1e?=
 =?us-ascii?Q?P1BE+B63M0WbQvxcawuwuXsVklBfUJ9tenO7mFjEk+bLof6xPG/qP83FjT4m?=
 =?us-ascii?Q?Le5S1Pk1x2xgzMsWLm1iAiX/KzV26uMbjhjL1b+OhHz/0e+Lgd6A1YaOkxKc?=
 =?us-ascii?Q?Ni2dRvEF8wfv/FZqrTQ/QEYjx2IPNiMubfwgUV/E2XvMtvdBfn3c4bNt/LEu?=
 =?us-ascii?Q?34dw7cRy55TTedVcI6KkMjJNqLGjvVPlfegnPVVsACPQfOWdq8g3oagA8H6K?=
 =?us-ascii?Q?1LPwcZJLaBcTsd3CkXixjdW9tvUTGlRHFQ16WDbptrZgJxomLJCLLLpgFHpd?=
 =?us-ascii?Q?eEnm2lRysV4TYWQ6x0BDQV5cpEh6NGIXZvWBOFDEdz7OOtJ7Z/AiAhvA4TGl?=
 =?us-ascii?Q?UVpQqPGrSs7zp7Gb05Tr6aQ7T161WnFzU+/LPQk+MtepcbTXJ4hVOLZ9viNM?=
 =?us-ascii?Q?mLGSHcIUy/wtdIvelEECwP4ZeEzyhPdlyKnTKS8FfqqvtsOYKC8qddQnQk8T?=
 =?us-ascii?Q?+MUTVOeE601VRoQ3asIhkR2LdCCnfrQDRsASLe7iyMHRSKC6utthyQ50aCXC?=
 =?us-ascii?Q?6kmP+62tNn7ER+Sl5GStuLDL35uHd+2oVebCaCZYFB36gxwl1SkJV6u57EeH?=
 =?us-ascii?Q?FhGAACHrj1ZUVL20sSvAj5Bdita95FDFfYgXqogpsVitUo0CMtIt2j+ryHix?=
 =?us-ascii?Q?kMMXF4T9TUK4lVcToGhjH9Ckao9CFcZbNr1mRKEH8XKVwcBljqGU0YrdNjAt?=
 =?us-ascii?Q?ZCsJZtmbuuLAxlQ43QthiZoJeZOnpLJCuhcH17+y/+dGID4RFP7xRqdel7QF?=
 =?us-ascii?Q?GcZmNMjEeEAoPhmLWbWMr+A38QAE4Pk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LIO23jYgsgXoiBY3HN4IWau0lhnYv/HM5npCANgfKsQNxTt4tqcvDwGoKYjVUYPW/JpVC3C2mWtBVLctXBVk+yIeIbQ+ypQIA27VUT9ybuZ02Ua+ywOIU9EM2G3IErXqwRqJot4ID03sBHnpS4RS42qr5VVz0qO4sRBnceAeII/F9r4hS0CYHWXrgYVRt9Q8aHvSoO+JrTtrp4rA1YO3+whRGVOY/r7sseY8CifcOEOBOvc7ro0Xkj68p2Vtcwg67512Rfm/XuHazS2Ia3NkgSKv6q4kBMKWDSCWYYq6QN36NnJ3VIRv9fv1hMLvSi89V8jAyoSmqdtrTRRj2hLekw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1870311d-8126-4fa6-cf6f-08dea13aa6ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 13:17:21.1478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fvaHQ+LNyAXIhtdc6P1B7YC0Uc9qFXw963oanubFNvEJo2EzNmJBAzpIpC1HR5ePrGffIp0g/o8oFfV/REL18cxtz/OFHYC+kQg/YK9Mb7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF383C22AA3
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776950248; x=1808486248;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rq9LLFKLdd7e8k4RsBxHGElwLH65MyYS1V+D20871VU=;
 b=gaUxxh5zzBSf9cm9+qx+vZ5td3M5jMwvsapKm5C0HJk6Kdzf2QNMAwJM
 htWVvSDsG9wA5WSFnr+1CY/PFBFSS8V0UCQReu+m5af4Nuy/Pm6BFv7UW
 b6XlPk/5cGu6o4IWoPwLMpIUPjoZzTxj6gvRx+zsQIj1rcVJb5p3kKxbK
 2f0el+cRCrH/ih8VMbdjDHE+iq498Qr5oIPRp8byIBSNpthj36H+uX5F2
 GFt/R3TWUlBtGOTy5GCWiJNB4eae6Q0rD3mshh9fjXkbiUZJa3MNKD4QF
 8w32Dr2G6iTb6vAIMv2KZgM6sFnZmHCnTdpDlY+YJ7W5LkJxb1GY16SY+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gaUxxh5z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MAILSPIKE_FAIL(0.00)[140.211.166.137:server fail];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DAC88452AB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> Sent: Thursday, April 23, 2026 3:04 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; horms@kernel.org;
> jesse.brandeburg@intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [PATCH net v4 4/4] ice: skip unnecessary VF reset when
> setting trust
>=20
> Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> ice_reset_vf() when the trust setting changes. While the delay is
> smaller than i40e this reset is still unnecessary in most cases.
>=20
> Additionally, the original code has a race condition: it deletes MAC
> LLDP filters BEFORE resetting the VF. During this deletion, the VF is
> still ACTIVE and can add new MAC LLDP filters concurrently,
> potentially corrupting the filter list.
>=20
> When granting trust, no reset is needed - we can just set the
> capability flag to allow privileged operations.
>=20
> When revoking trust, we need to:
> 1. Clear the capability flag to block privileged operations 2. Disable
> promiscuous mode if it was enabled (trusted VFs can enable it) 3. Only
> reset if MAC LLDP filters exist (to clean them up)
>=20
> When we do reset (MAC LLDP case), we fix the race condition by
> resetting first to clear VF state (which blocks new MAC LLDP filter
> additions), then delete existing filters safely. During cleanup, vf-
> >trusted remains true so
> ice_vf_is_lldp_ena() works properly. Only after cleanup do we set
> vf->trusted =3D false.
>=20
> When we don't reset, we manually handle capability flag and
> promiscuous mode via helper function.
>=20
> The ice driver already has logic to clean up MAC LLDP filters when
> removing trust. After this cleanup, the VF reset is only necessary if
> there were actually filters to remove (num_mac_lldp was non-zero).
>=20
> This saves time and eliminates unnecessary service disruption when
> changing VF trust settings in most cases, while properly handling
> filter cleanup.
>=20
> Fixes: 2296345416b0 ("ice: receive LLDP on trusted VFs")
For me it looks like  cc: stable@vger.kernel.org must be added

> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v4:
>     - Address AI review (sashiko.dev) from Simon Horman:
>       vf->trusted ordering bug
>     - Fix upstream race condition when comparing with i40e code
>     - Apply capability flag and promiscuous mode fixes from i40e AI
> review
>     - Add helper function ice_setup_vf_trust() for non-reset path
>     - Export ice_vf_clear_all_promisc_modes() for code reuse
> v3: https://lore.kernel.org/all/20260414110006.124286-5-
> jtornosm@redhat.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 41 +++++++++++++++++++-
> -  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
>  3 files changed, 39 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756d..d0da7f6adc23 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1364,6 +1364,34 @@ int ice_set_vf_mac(struct net_device *netdev,
> int vf_id, u8 *mac)
>  	return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
> }
>=20
> +/**
> + * ice_setup_vf_trust - Enable/disable VF trust mode without reset
> + * @vf: VF to configure
> + * @setting: trust setting
> + *
> + * Manually handle capability flag and promiscuous mode when changing
> +trust
> + * without performing a VF reset.
> + * When reset is performed, this is not necessary as the reset
> +procedure
> + * already handles this.
> + **/
> +static void ice_setup_vf_trust(struct ice_vf *vf, bool setting) {
> +	struct ice_vsi *vsi;
> +
> +	if (setting) {
> +		set_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +	} else {
> +		clear_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
> +
> +		if (test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
> +		    test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) {
> +			vsi =3D ice_get_vf_vsi(vf);
> +			if (vsi)
> +				ice_vf_clear_all_promisc_modes(vf, vsi);
You declare ice_vf_clear_all_promisc_modes() returning int, but ignore the =
return value.
Looks suspicious isn't it?

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> +		}
> +	}
> +}
> +
>  /**
>   * ice_set_vf_trust
>   * @netdev: network interface device structure @@ -1399,11 +1427,16
> @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool
> trusted)
>=20
>  	mutex_lock(&vf->cfg_lock);
>=20
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> false);
> -
> +	/* Reset only if revoking trust with MAC LLDP filters */
> +	if (!trusted && vf->num_mac_lldp) {
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf,
> ice_get_vf_vsi(vf), false);
> +	} else {
> +		ice_setup_vf_trust(vf, trusted);
> +	}
>  	vf->trusted =3D trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index c8bc952f05cd..81bbf30e5c29 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -623,7 +623,7 @@ ice_vf_get_promisc_masks(struct ice_vf *vf, struct
> ice_vsi *vsi,
>   *
>   * Clear all promiscuous/allmulticast filters for a VF
>   */
> -static int
> +int
>  ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi
> *vsi)  {
>  	struct ice_pf *pf =3D vf->pf;
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 7a9c75d1d07c..a3501bd92311 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -310,6 +310,7 @@ bool ice_is_any_vf_in_unicast_promisc(struct
> ice_pf *pf);  void  ice_vf_get_promisc_masks(struct ice_vf *vf, struct
> ice_vsi *vsi,
>  			 u8 *ucast_m, u8 *mcast_m);
> +int ice_vf_clear_all_promisc_modes(struct ice_vf *vf, struct ice_vsi
> +*vsi);
>  int
>  ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8
> promisc_m);  int
> --
> 2.53.0

