Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNWVAsbDAWqUjgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:55:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C36C50D2D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3CC141602;
	Mon, 11 May 2026 11:55:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Mf6zwPWhoEj; Mon, 11 May 2026 11:55:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A16541605
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778500547;
	bh=foaIc/LB1gjmOKzMH0EtAlX2zd6LinbIFrhTjnqjxHo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=evllq13sNDuT/aJKD2JpCeJWtXdNMk7uz7fXMwm5Mtc0DM4HssUGdlk7COmvp28Bu
	 HZbzoCLfn88LT/sNOSAHIjMhrbutpcRsdI2BhYwj1Y64G1ORKOfSJ2H9B4L7t+oUzv
	 DNX7O/ewyvFXtfiLqoCcTSLSzSrfQxtTDsmLdEYIU0nGpoPeqNW0zKhpUI+4RB3LPx
	 vGUqGn1aCNF4DgezRusNYTjSQ8I0INRmIEb2DdpF8o0lSfRecWZpT3rOwNzWibZyew
	 4QvvLB/giK8EUMPTzbglrqf7wZuW3h+71UD2cEyVG3478jNr8T6SZzOBqbSHk50J0d
	 efyQ9t0KgT1bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A16541605;
	Mon, 11 May 2026 11:55:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C8F0173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87EAB41216
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8D1Q_FQ6C5mP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 11:55:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6484411E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6484411E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6484411E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:55:44 +0000 (UTC)
X-CSE-ConnectionGUID: SpSQiK54RtK015W9sgXijw==
X-CSE-MsgGUID: cA3vsjBsQ7igvUtNn5j9Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="66916551"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="66916551"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:55:44 -0700
X-CSE-ConnectionGUID: PcTYIf8aSUiS2EkWDelL+g==
X-CSE-MsgGUID: HAW+FPXNS6mvjFLSQjSQqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="275566345"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:55:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:55:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 04:55:42 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VBBGTBPuOHyg1iKse0h1Ur2UxJYGMKDh1rLDyIDcSUVoy1bEZhXNJlJn8FEqZm74LY18xtPx0+7/I9msNUBI0UMw2LE2wBwIsY8VjT19I2NwnOkMhTQJ40O0Erh24I/bPCDBkIpvbh6apkmNrNvEkO3O/j0YJD9zHADpSFi3AnEIsNmonGKdmbzXP1Z+qWyHt1WmDpVRcrH8MiYLryj6qiy7L5ohmgwhMXlQUeCEQ8gIkqYk8rMSMC33e72QOzCZ8YFLZnB6RdFMkKXheB3puFeDV205nWA3nJ3QuJQ77os7u7Pq+fzGj1yuUrdFyPFS9+lvlMvIYTKiolEJbemZcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=foaIc/LB1gjmOKzMH0EtAlX2zd6LinbIFrhTjnqjxHo=;
 b=EcBvpgAfy6qg1ey+/FTZ2bw94aCudJZThoPy806zZiiAzvpf1Hlmuw0mFBvXXZerGHFZZODUyl/96WWLuLMZf7V/neOAwUZH1o0sestd4QiH+t+3m24kCCgSUGcPjIeN8A4Hl2y4CPMXyp1ZGqMFgjs/g+frDtc3JRsw66ACQ5f/NW1hqKThC6BqEZjZRyGWqhTw/h9jbewp6s8BI0lyJ6Qj/fj+kMQVZJsz75Md0u5vD5ddoJnel3ksuBhH+Pxng1+PvWB2SA4lNEo7qCC2LBTzpUlSdvPKcpf3dH+VusTuv55warIH5MSl/Zf3cykXMYeEMWfxmBpEcMadM3THMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 11:55:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 11:55:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Ratheesh Kannoth <rkannoth@marvell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "oss-drivers@corigine.com"
 <oss-drivers@corigine.com>
CC: "akiyano@amazon.com" <akiyano@amazon.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>, "darinzon@amazon.com"
 <darinzon@amazon.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>, "edumazet@google.com"
 <edumazet@google.com>, "horms@kernel.org" <horms@kernel.org>,
 "idosch@nvidia.com" <idosch@nvidia.com>, "Vecera, Ivan" <ivecera@redhat.com>, 
 "jiri@resnulli.us" <jiri@resnulli.us>, "kuba@kernel.org" <kuba@kernel.org>,
 "leon@kernel.org" <leon@kernel.org>, "mbloch@nvidia.com" <mbloch@nvidia.com>, 
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "pavan.chebbi@broadcom.com" <pavan.chebbi@broadcom.com>, 
 "petrm@nvidia.com" <petrm@nvidia.com>, "Prathosh.Satish@microchip.com"
 <Prathosh.Satish@microchip.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "sgoutham@marvell.com" <sgoutham@marvell.com>, "tariqt@nvidia.com"
 <tariqt@nvidia.com>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH v12 net-next 7/9] octeontx2-af: npc:
 Support for custom KPU profile from filesystem
Thread-Index: AQHc3zdXzInbgUM2oEmTNfNtihDbubYIu1eA
Date: Mon, 11 May 2026 11:55:39 +0000
Message-ID: <IA3PR11MB89869B60A745F66E6C43A9E4E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508034912.4082520-1-rkannoth@marvell.com>
 <20260508034912.4082520-8-rkannoth@marvell.com>
In-Reply-To: <20260508034912.4082520-8-rkannoth@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7459:EE_
x-ms-office365-filtering-correlation-id: 14091cd6-daf6-47fe-330b-08deaf543876
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|22082099003|11063799003|38070700021|56012099003;
x-microsoft-antispam-message-info: /grIzO3XTMJ0cENUW66zah6ieDnWxpM+hNTBWB/ErwpW+QXgg/Wnq3trg/XKvmusyazhzLRyyqznzHdXGu7tTSvw4SPka0KDZovuzo/8SZqMBJOQZY81O5ndQ3xd+QDTtMrzxE8z/aHfv4paLL/NLsVYCNeaTkZJk7WtbPtz1umNss1YUpuLNDwGrKLUAJoLxebbaico133oJuMeEMwg+39Jc5WFk+vNJHtobgdc8m2hbZ1g0sFqNvbL3zhJ1QeQPgesiJG6UyWow3P18d/ZDDwVUE2HEa6ka6EobW0eZdOoEcTvP4DHSz3DSF1qbDi/FWeZm5IUQZMaRj4RlIPk5EsAj+qy8xX7yaq05zBMo3KJ2FpOsz3VcMHufD2ykHdVOrM9jX43nRhHtBJxp5DmzXvhRhkVYQ4t59pmnugKHo8w+TTOLxnqYpVxmda35ui2pkZ0gKGbVuWaqUZ3Qkaij/AEhBOcoFpS1tzJCdXg1AIzpxth/CWcpwWFtTdRmPoE3HoNRSEfeINhakrBcwzlNZFnwmaRR7dLbs16dkWcL1ad6zEVcJZT4T9NjoaXP0uIlPjCKoZjZY/D02dxhwx5TNsPQOaL1DYsHe6aatbsdouzykgYJB4knxvwq1K2KGFdmSOZmtgg4ib0SUpJD3teawvWOKbMYA3p63n33GlcCBaH+ah46sf+12ulFH6Hl7PhqyX6gGcOg3Fs13s0P+/pK9W9yCNS6zOxYC0nny2AuTpgzEBgu4HooPwB9FFSXPxe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(22082099003)(11063799003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aHvypirsTkDFk6XU5Rp+b7uh03WEEsh6CKOhCXpxAdOag9Ia0m9QqE8G21L2?=
 =?us-ascii?Q?amSS0okD6Sx8INgbfJb5WpzlYvkve1TKmY/KlbZ5Jc0u9fSD7A0mprpdcimX?=
 =?us-ascii?Q?NZlpC3copyhhIeA1is8PPR0T4srWB6ffcb1Xtjv2KuUyBBZsGfef6wzDI6aB?=
 =?us-ascii?Q?GY3OlBPjaHgZX3RURR5W1o1uRixPUo8Sd38Lw5A16s0eLOlsJBjx4BZG8LmF?=
 =?us-ascii?Q?fA2hyaiPKlSftHFO/8YlKMhowS+nyBCb/oXGAee2BWlIFnfuJllYpwgQ4Lgf?=
 =?us-ascii?Q?H9r5LKp5UcGVUd2/ommpezli6t8NzSaWnEdxMV4w0D5PtNSrb5AGW+jdGWIl?=
 =?us-ascii?Q?9lflpo+rzSMFbzoRnhWXRjgiY4wOytfOtae7u25U+EnCgCXL9hjicJ/QimYR?=
 =?us-ascii?Q?b/EZhZkRHM7gDPRFnP0t+A4g+OActTtDKbtI2S1OSBoexI7CoQTJwqpH5iCh?=
 =?us-ascii?Q?RhRi9i0pKKjLgHO5RjzZT1+oVFUwCHz+JZ4tOJA1yJjmgrSVc9N0I8sLtAgq?=
 =?us-ascii?Q?WA9VLUxwdYTRS1Pvc51vzyFjFOSkTYUV4KYT0TVS9JWvAYMy98tcWSbIkAx3?=
 =?us-ascii?Q?/mnGY+66iT9+Gm38MkuY0mUK1QCk3gfz8sdqyLpTCEb8ahUSShzcfF+Q2SAF?=
 =?us-ascii?Q?7zL9GshbtGsNuD0NDAGk4q1dKRTdAZr3QFLniUOHcxvJqoRjZb2X9XzIQn5m?=
 =?us-ascii?Q?4a+P5XeCUVT29NtLl9q7+3+aEkF3tn6AJvJTBhTNkq78uhEm8wFAz2ko1iPZ?=
 =?us-ascii?Q?unlF/jj/9JYUHPDdwOxHhke+/m6vmkmGbINnRtxlOXw+KBhK0I4SylEdNI8r?=
 =?us-ascii?Q?BjtiqFDtXNrUEYbMSDoCa8fd0KZjBywkQWcn9wHjF9cxWTmCqurYm+VssfcI?=
 =?us-ascii?Q?r3wyZzEpddjjE79Yh9uIrUuqh7RUloxLcVfizbchlU5DTTv6lFk0GmqUUzfB?=
 =?us-ascii?Q?uHhKtzmzy79VNnrH5Ih1WHq++rlFnnxFc0stAJSzk2B2VJfeT/uiG1iUPLT1?=
 =?us-ascii?Q?KAaqK4cB1rnbIOV/YfoSZP9QkyKZ6FFvp3bECGKQlzky4cOojdvul37DO5H1?=
 =?us-ascii?Q?JFiIsbTkCLf4YjKvuReGp3RugXYk3T5c3XCnxPg9JoiZf8RnvgzvrIekHc5y?=
 =?us-ascii?Q?uafvtsbR1swSbIALani0Y7FU1G6NO4o95HmZAdmBPcXFGJ7gWxBtNKsaJQs7?=
 =?us-ascii?Q?nfz1HelWYD2kgNKwY/ffQMJZAhaUMS4kxa+ZMUtonQ5KR1eiZtCElm7Ujgvy?=
 =?us-ascii?Q?G+B0PfWbp9pamIaQgq0c2Z0iktQD4oDT33n/jsUKtcZl9/NkwAsriHRH2sCy?=
 =?us-ascii?Q?xed+USYyrDztKgCk920RSCCFzRung37scW5yr7Arr82kO/96Avc9E05mHcvN?=
 =?us-ascii?Q?yKVr5cexu7scFnuGHQCVbyMEci/PxJFdOuC1Rlcp/tdDTpU9e56Mmd0C8cr2?=
 =?us-ascii?Q?iVGKFxVWeKtR2oFEKmpuRQASGJKYaMa+Ux86CVahjRGmPnN5MKfey2Scd+Nu?=
 =?us-ascii?Q?e/1qJgcl47ZdMtMbKu5rTNZefa8xXuhPo/uRoyt9eRL0e7zhKb+Vy52aS9Z3?=
 =?us-ascii?Q?9RUMjUY5NQ0wklpkU7uIYb3EBK3IrxYF964Mq3AkzC4RDxu5KjqwHheUoLNd?=
 =?us-ascii?Q?6zguldDVZ8EzPxr0wD0Pdm2+GXBdQ/C4nB5I0ecIClCYXSOfR1X3XnNlrWfI?=
 =?us-ascii?Q?9u6UH11l2i+kiRFz+M8k4imcAbs3qcJl3tUhSs5cLwibz5thjME1b+S6glE9?=
 =?us-ascii?Q?Xus5RTC02ixR17nlTdrKIzU5/EvacGo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tydUyr79FiG+2EvVK8r8pXp+QHoW+W2Tvg/Npezon7FTgyQPaz32Fr1Z39bGgnNcBB45vfBdCiEZqSvtHvWJfN0bJHOisQIDhxKOJut9jbE266EAiVcZsBv08SEvGj5jTvdb0uepCvJ6TJpYg/jsrr7ooAeEz5SQttKAlN/wTlg6S0ZMfRanQtXiusJMwDB3UbXDwB7rUj4wJW7sfJn4xr1BnachtHxqbl9RCiM6s0S9NJSseecqEvbJWOsahLbR1JmIfHbHV9MaznxM5cj+O+M60kRTtSe4A3/70/JrImCWxb37zleyIszfntG+viSS2I2McAy/X62fzRRBTlvxVg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14091cd6-daf6-47fe-330b-08deaf543876
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 11:55:39.2539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DoZrieYnbvx2NGhExQIX4TQuUKS/lH00OBUvFcm68MLlqwVjrEMJWf9L3Mv0NF8VYbP60ssN+/2ATdocRu2bblfxElJuccknGK3ofbrvd0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778500545; x=1810036545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZvxUh53qw7MkcBIxEU9rTz1bYdHZNciGfMCB1QMyaKQ=;
 b=VWUv6XgIhyF98FZl/gA3DQDfQh0hRdfScgxyH0gyQoYe2LlxJqc0UONI
 BqscqDmmzLSBbbMAgUg3a+EXhz7bTSTJUbmmFa85Hm/Nfx0NYBp2DYPtT
 I0viFufsKy2FIqmhqmQWxYt+SXmxLciSZ+8ycKCTNSWfWZeIxe0zu1VVO
 0lVimHMGyaKsu/YQSzoQwRHlAU1lIlzADAdag+NoBDhCaGfrfA35q1IPN
 VUY20P35dPKdQVTSbRAnmKopOHtIDDnTMhwDVpddB64COXbJmDb860uT9
 Sb3uLDVVqnBZJON7pmQlybH9SoH7RvrOl8ihxOtfO3T5sS0wy+1oS5WdG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VWUv6XgI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 7/9] octeontx2-af: npc:
 Support for custom KPU profile from filesystem
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
X-Rspamd-Queue-Id: 4C36C50D2D7
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
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:rkannoth@marvell.com,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:akiyano@amazon.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:arkadiusz.kubalewski@intel.com,m:brett.creeley@amd.com,m:darinzon@amazon.com,m:davem@davemloft.net,m:donald.hunter@gmail.com,m:edumazet@google.com,m:horms@kernel.org,m:idosch@nvidia.com,m:ivecera@redhat.com,m:jiri@resnulli.us,m:kuba@kernel.org,m:leon@kernel.org,m:mbloch@nvidia.com,m:michael.chan@broadcom.com,m:pabeni@redhat.com,m:pavan.chebbi@broadcom.com,m:petrm@nvidia.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:sgoutham@marvell.com,m:tariqt@nvidia.com,m:vadim.fedorenko@linux.dev,m:andrew@lunn.ch,m:donaldhunter@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amazon.com,lunn.ch,intel.com,amd.com,davemloft.net,gmail.com,google.com,kernel.org,nvidia.com,redhat.com,resnulli.us,broadcom.com,microchip.com,marvell.com,linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ratheesh Kannoth
> Sent: Friday, May 8, 2026 5:49 AM
> To: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org;
> linux-rdma@vger.kernel.org; netdev@vger.kernel.org; oss-
> drivers@corigine.com
> Cc: akiyano@amazon.com; andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; brett.creeley@amd.com;
> darinzon@amazon.com; davem@davemloft.net; donald.hunter@gmail.com;
> edumazet@google.com; horms@kernel.org; idosch@nvidia.com; Vecera, Ivan
> <ivecera@redhat.com>; jiri@resnulli.us; kuba@kernel.org;
> leon@kernel.org; mbloch@nvidia.com; michael.chan@broadcom.com;
> pabeni@redhat.com; pavan.chebbi@broadcom.com; petrm@nvidia.com;
> Prathosh.Satish@microchip.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com;
> sgoutham@marvell.com; tariqt@nvidia.com; vadim.fedorenko@linux.dev;
> Ratheesh Kannoth <rkannoth@marvell.com>
> Subject: [Intel-wired-lan] [PATCH v12 net-next 7/9] octeontx2-af: npc:
> Support for custom KPU profile from filesystem
>=20
> Flashing updated firmware on deployed devices is cumbersome. Provide a
> mechanism to load a custom KPU (Key Parse Unit) profile directly from
> the filesystem at module load time.
>=20
> When the rvu_af module is loaded with the kpu_profile parameter, the
> specified profile is read from /lib/firmware/kpu and programmed into
> the KPU registers. Add npc_kpu_profile_cam2 for the extended cam
> format used by filesystem-loaded profiles and support ptype/ptype_mask
> in npc_config_kpucam when profile->from_fs is set.
>=20
> Usage:
>   1. Copy the KPU profile file to /lib/firmware/kpu.
>   2. Build OCTEONTX2_AF as a module.
>   3. Load: insmod rvu_af.ko kpu_profile=3D<profile_name>
>=20
> Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
> ---
>  .../ethernet/marvell/octeontx2/af/cn20k/npc.c |  57 ++-
>  .../net/ethernet/marvell/octeontx2/af/npc.h   |  17 +
>  .../net/ethernet/marvell/octeontx2/af/rvu.h   |  12 +-
>  .../ethernet/marvell/octeontx2/af/rvu_npc.c   | 456 ++++++++++++++---
> -
>  .../ethernet/marvell/octeontx2/af/rvu_npc.h   |  17 +
>  .../ethernet/marvell/octeontx2/af/rvu_reg.h   |   1 +
>  6 files changed, 449 insertions(+), 111 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
> b/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
> index 6f8f42234b06..67dfbe5ca903 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/af/cn20k/npc.c
> @@ -521,13 +521,17 @@ npc_program_single_kpm_profile(struct rvu *rvu,
> int blkaddr,
>  			       int kpm, int start_entry,
>  			       const struct npc_kpu_profile *profile)  {

...

> +void npc_load_kpu_profile(struct rvu *rvu) {
> +	struct npc_kpu_profile_adapter *profile =3D &rvu->kpu;
> +	const char *kpu_profile =3D rvu->kpu_pfl_name;
> +
> +	profile->from_fs =3D false;
> +
> +	npc_prepare_default_kpu(rvu, profile);
> +
> +	/* If user not specified profile customization */
> +	if (!strncmp(kpu_profile, def_pfl_name, KPU_NAME_LEN))
> +		return;
> +
> +	/* Order of preceedence for load loading NPC profile (high to
> low)
> +	 * Firmware binary in filesystem.
> +	 * Firmware database method.
> +	 * Default KPU profile.
> +	 */
> +
> +	/* Filesystem-based KPU loading is not supported on cn20k.
> +	 * npc_prepare_default_kpu() was invoked earlier, but control
> +	 * reached this point because the default profile was not
> selected.
> +	 * No need to call it again.
> +	 */
It looks like comment contradicts with the code below?
Isn't it?=20

> +	if (!is_cn20k(rvu->pdev)) {
> +		if (!npc_load_kpu_profile_from_fs(rvu))
> +			return;
> +	}
> +
> +	/* First prepare default KPU, then we'll customize top entries.
> */
> +	npc_prepare_default_kpu(rvu, profile);
> +	if (!npc_load_kpu_profile_from_fw(rvu))
> +		return;
>=20

...

>  #define NPC_AF_KPUX_ENTRYX_CAMX(a, b, c) \
>  		(0x100000 | (a) << 14 | (b) << 6 | (c) << 3)
> --
> 2.43.0

