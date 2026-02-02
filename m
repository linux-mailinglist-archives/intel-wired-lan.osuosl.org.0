Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AyHIg1pgGlA7wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:06:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDCAC9E57
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:06:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15D0F40769;
	Mon,  2 Feb 2026 09:06:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjkdHHZkN3wZ; Mon,  2 Feb 2026 09:06:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7E2840737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770023177;
	bh=sHbcjAenQcBpWuDim6f5B/RWT9HVLGx13BK1qbvcEfo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yc7mCMoZXbKWs33haw7OhILpHKEpmhgFujlIGPv6IqfrY1BBDPdkMf2KRpxteGNPH
	 5OFkmMF2X75JxoKT5cBtEb2t+OVS2jida+Y0C2vqgr/n4k29WlQda5w1eowaELYgZY
	 N0r/GuxlSax79Q2oqUiYSRUgAlmW2eOD7u08St69Wt4FDYXxgcFwpLXf+y173kJCst
	 091ffCPEY4GUjSNYB1amAsagEuMKBnAxJuhJvhXF55hGKBCdTb+mKzHEipeU2cT01p
	 sx7oHCkD/pHN9fUz2bN6vmKvXKHhsD7KAgZMF560KSWr/4vt+quCUunKCSxFP/U5eA
	 753vy++GWD5PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7E2840737;
	Mon,  2 Feb 2026 09:06:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A3F2149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 832A483168
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:06:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_R440V1sSnj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 09:06:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD4F2831BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD4F2831BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD4F2831BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:06:14 +0000 (UTC)
X-CSE-ConnectionGUID: aO5IuLAmS02tpeGDK+2qxw==
X-CSE-MsgGUID: 5VW9tSlfSbCJTqsRHXYfgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="82285888"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="82285888"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:06:15 -0800
X-CSE-ConnectionGUID: PQWGjfpfR+KElDuIx9tyOg==
X-CSE-MsgGUID: DMrGtWBaRr2B7WuaBv9XgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="209752234"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:06:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:06:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 01:06:13 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:06:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y2EamLRkQP+4Tu9qrEtJE9IrOu6/bk0roYm8266mIQpbHaMzo5gUFOqvrCq0J3q5dV54Z9YDbOmZBH7w2Trh1M6vp3BqqYhkduL1eds9+ZKjRvCm6zN7G3udk8tjedYdrKdqc+RvWB+Kz37BSwnb6+73WVSaVD62O/B5Oo4cumJfsPyve5fGTLXx6qQxL0zdySQUTxxyrui90UW0FdebJenUo9wnImRGqu2kB6516txCdJrc+01tP+cjFjthTTzBfCiEYAwuLi1QNmm5sx6T3/9f6lz0Nw5g5o2Y8GWhMLm7phnYVJx2IYwGxz2ys4A0tND8aTufBAW9SZhC1SfwZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sHbcjAenQcBpWuDim6f5B/RWT9HVLGx13BK1qbvcEfo=;
 b=gmeUzT0y2Q5a6NYxmRMfmD4qqJMFyudXzIwb7JlnOkeb9xB6OIWTsh8qHKDe7azxvxclUmpWSM4q0SaEJ/ngKZlmjCHKil7r+Mf0AqJtFb76RLszRP2nytTXqe+yfd49QabH2ErMMCghHhk8JOSXv5sdx63zLt7pmmF9dMVw/8tqg/51dhktJJO9btBxnUKjJUcMXcGBP90nkL1gL3XQUTRe83f85LCBTtzCowmL5Z+MtL1hd1io5K+r30+1bIkTDKJ99uF2GSTmYrLeLYuMRz7Unm2sRyeGl/2u2Tcp+lx5iMyJAtSMEmSNjW/7uxmqt4y2T+oR3t5Q5ltxuZSl4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 09:06:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 09:06:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Stanislav Fomichev <sdf@fomichev.me>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
Thread-Index: AQHclCDEkYC2oj3OMUer/0qag+cGlLVvHbaA
Date: Mon, 2 Feb 2026 09:06:04 +0000
Message-ID: <IA3PR11MB89866AFE45F0AE14DCB4F64EE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260202084820.260033-1-poros@redhat.com>
In-Reply-To: <20260202084820.260033-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7323:EE_
x-ms-office365-filtering-correlation-id: 182b59fe-0bb2-4a68-df9e-08de623a4b5e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pwoxON2YRRWj6aEW91DyQHSe62AljrVplFlD/qhy99X8XiOW8wOeL30Uc0xV?=
 =?us-ascii?Q?ygwNsKEq3GDIqNSTDKTrFZI+pwOCjk8OQxvzYXKedet2cRgfUJsqyChXn50E?=
 =?us-ascii?Q?aEfs9LQWjPby0VS9Xj+jmXdlUU2r7ynBln7inraApx/ybrn6Tm9UIwPSLDXu?=
 =?us-ascii?Q?GzK2eUhf8x5kUUFB0bN3XSDFDYd7zOIMJv9DU2ei7LRCrJEUWf4BlIxVTMGl?=
 =?us-ascii?Q?sV6JqTxcx87W7Z2sxO6wiPblQB3cmVhZ40UdlECc2dwkh7xq0q97E6rIHiKh?=
 =?us-ascii?Q?3PVMlLYge5mSd6wUcFoRBmdMBd5JvW3gvo5hy063x2pshb6R1oCzP2YnKmBu?=
 =?us-ascii?Q?HQ5hITf0Me6X37fmuoFyKClk6JYmbg5Ta7inypha9Kdz4BMy03t+Gc+IGhGU?=
 =?us-ascii?Q?0hxwMSLvPNWWFb79xNANzpBec/1qMBS/CtuyI5lSHVZgooeUmHH+ZXih6Wnr?=
 =?us-ascii?Q?++w4kCHxyQqj4X38QKN3CImjWgjKeZejxQqPZ3sU9VWA85/zI16tztZfLCyI?=
 =?us-ascii?Q?xtzPaZHpJJxS4+X94tKTe2O9+zpy3svGxaQ5IamEA+cJB54nMushDQ/cwDdr?=
 =?us-ascii?Q?wh0pxHKOy9xUMJyaZwKpBJnMj0INRIuNH4R5CmpruR4oV3ktp/trrzteAGdQ?=
 =?us-ascii?Q?W8Gxjq9cIssLWWRa5NXk94F4z6MqhLeuqaoTeDv0gPbCmaGg7t5YcrUDglo3?=
 =?us-ascii?Q?P8ut5bl8zyHJnt0VhLaVDOFhdiaxMDmI3l0pjKICqWeOkxH7kdTgc2wIMnga?=
 =?us-ascii?Q?vJCR12AFDQ2DbP0C2sb8g0mprPB5q5OXnTdPFPMj4p3CjvXf6gHIzY/Lx8NQ?=
 =?us-ascii?Q?D0zK1O0RczFxIt7ltsUUFxjjiu19HVeBl11/qRnCVdo8i69F/s2Jxo0cBvsk?=
 =?us-ascii?Q?uIlSLsxKIXqm/drSqoVfwZq3GY6czP7wgPqEtU4XRJzVnyadMR9EstjjSGvD?=
 =?us-ascii?Q?z8Y+Mgh/3Dp3kJCWGiYZrQUrfjTn61naaDHFZ2j9o3m4wS31emEQkYEc54bf?=
 =?us-ascii?Q?L+sr/zrAtjieE7X3KKqfqEWGWlE6JyMScE3HGA/tK1LRgfJgpvaMnCnIxHnp?=
 =?us-ascii?Q?T/sU5KqGGbv0AUKpqZxysTpU2g0BVX3juHk98RzB+3lFlYXDcCKCDFX4Ja8V?=
 =?us-ascii?Q?4bQ+R1wBOs1XNBY5Mfy6ol8EXR5rQQywSxrSV7w7nIi73DATg8H23e7j2i4n?=
 =?us-ascii?Q?VCUyesyBb/Cxb8zAfGYHSfcbHPyGgUiX0JDy5gZrj85nOfwPDsqWzcf7Rq+u?=
 =?us-ascii?Q?8kuATapaXW1+AzpdphBHnY4tLstBIDuHKHMUGam6fmyjdbVnXT/zJHSbx/N2?=
 =?us-ascii?Q?jLKXo6e5m0FB0O8xDJ0PH68DJ/wpt+euwQm0IiYhOLtlEFtxwbcoS0DuTLHm?=
 =?us-ascii?Q?stJZwVeiCP2CN161CU1Muy0prujyziIFKQc7y4bMULa/hzamKHy31byIEDgc?=
 =?us-ascii?Q?EXISkdAXi7mEsNJqXAbRLgMa26z+q3w8alLnXqA6Az1RMSrW2b90r/SefYOm?=
 =?us-ascii?Q?cpQIeI9jkDyL/KkE5FZU0OGChIsi9U9syNcQMKxzjG8gsXFVXzp0Ef0Kp7Gd?=
 =?us-ascii?Q?EqJqyJlQArJhzWOJdpXM965iRAfPjtBzW9lyfLyp+EGhfalr8JVD0VZORLiD?=
 =?us-ascii?Q?lc11J6qP8b12XQf+tNX1ZAQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4SeZaaLUAClPu8yG1AmOU2s2dbRZTgKzvsMtF3UNN+VsT1oR0CJSJvAwLTHG?=
 =?us-ascii?Q?0GNbnsbJgpfNfcgBHG8FSzhbtm9rvxRkKR8qDulFA1MZyuvrbeVuflmdx4RQ?=
 =?us-ascii?Q?S6I1ymkma2yIattGjEeGdFjoa2yjFCLTANsSO1fsj86in6vqBr3YdeqxbVv0?=
 =?us-ascii?Q?ADQkYm80IFiAHRYsZC1IS5giglq1wcdklpgrx0MQmnHfyi+H09jBC7pQbG3I?=
 =?us-ascii?Q?U6XgLdbpVZL9HU73eUOtbmjA3u+BxVkB2CQ77B3y0tfcQymiHrqenH/gIc8t?=
 =?us-ascii?Q?q51h7NNPv8UaMKtCi79Ya1/epeEXcEHCPgAJJXMk/8ywrMJkt5/ACzuP2Si7?=
 =?us-ascii?Q?qnteJjZxEPxNVG1uVc0XUbFP6redtZP6Cle5r1JwtelKkngVcP4hLLcCZGqn?=
 =?us-ascii?Q?cr7m1BwIE7Sxe63Nf5N9l4/HMpjWarM8dz789VgO3D4dxc8NTKz9AUNbnt2u?=
 =?us-ascii?Q?qLycKcqFAgHLp5eIh1c35rgKoNrGC+/BYaphOZrd9prU4TSErlw0rmoVXVgb?=
 =?us-ascii?Q?qTjH65B5B6DtTaU8aiNrWuta2dmHW21Nr4giDMVf2Cqx6kE6y/7UTOsgZ1EE?=
 =?us-ascii?Q?JekPzk3UJHNQlfR+yt9VssJTGUZFA4p5hSdFdx0/PxWQczVmdH/tTqXa8zQs?=
 =?us-ascii?Q?Qm17azkf8CaMS+EWeQCHTuDqs4cM9rl0yaVxtLiTRElBcCFe2qLCzYhnUrNa?=
 =?us-ascii?Q?TAqbj8lm9ZGsEI9FmCmByHfj2+FxT/6f15tk3h/kVCFdW6PDJOQBP1Gah7FJ?=
 =?us-ascii?Q?ZsjWiIhKi33W+OByfwYBZyVrOJE2eIInLoF7Pq72SpzEs5hKhmDOe8mp/vap?=
 =?us-ascii?Q?4r68pc/5AK5ii46AMAPqJIdaCoY55t+UkLcvMGZeQECSHoRAdyhKexi2R08m?=
 =?us-ascii?Q?4u84kB+VAkaGCQfcOsDIfWn4ZfuWdZzV/zyDWcVsb39kTto94kQDzVX0eT4d?=
 =?us-ascii?Q?3co9zOHTsVtZ5NA/vYPRHa+7g6LBdHC8JK3VaZkC01sRdq4BUUwHfItCxdU0?=
 =?us-ascii?Q?IQmLJRCcD7GzOHffOiBTfUeVbF9bj33OeEweBQYoG0+ZZmmBLG8O/mIo72kG?=
 =?us-ascii?Q?LrFK3UjuKj/4UgHY4aMWu4LDhMBq5LzHkNX01figrzabFKVzwM9wRxKEtVy0?=
 =?us-ascii?Q?73N5PYAOJC+jvRL0jE7ZgxyXPnIIyQdqXLAhK+mokwzAcVSF01/Quz26bOGR?=
 =?us-ascii?Q?TNvlWWPFfw78TNx3EM519aenlmNdt7JB55nh5TfU5y3UtqNj4DhlUbaapNX7?=
 =?us-ascii?Q?ySD3R2NdteVfhZhOzTjCGyevDYAwG4Tcc8s/3+qUR9GGwQrxbIS8wC56s9gu?=
 =?us-ascii?Q?SdIGGI4df5sg26gh7FxLq/A1jw8tCIDB4h4aWOMdbQ8iK/g9WBjK6449Thx9?=
 =?us-ascii?Q?YhYIp4jJvdHCAkPG+0WgKZ87z3e0uvrPjZfb7+X1YHBvrpyHm5k7Q0u7I1u8?=
 =?us-ascii?Q?mKfNXuEd0Su0cc16uAQJmShL1Xd8fTR1ZI2DUX5XBhf7ZQ/S47v+xoSzkNS2?=
 =?us-ascii?Q?z+cNnZomQ4PKBLA05rnv8caB0SSV+BOxyZLOtwihJ9dQe8j3FMeytntLUl9z?=
 =?us-ascii?Q?eOPcFVW75RUZE7odYqQB7CJSUE06JVep1AaJ7SwdymsFKwpBdjkgsIB/QwRR?=
 =?us-ascii?Q?6ahlKthyotGJiHfsuIqg6UZaPMQihMcbl0OI3vAwZES3aBeTGGI1KMK3avpy?=
 =?us-ascii?Q?2TEjdohQRhZLzQ/rOpraWKnBgnDnPw4zBja3FzOCHN4LZf/O2sYXzMuqcPvf?=
 =?us-ascii?Q?vBmARceDgg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 182b59fe-0bb2-4a68-df9e-08de623a4b5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 09:06:04.4786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tSZAKxHZ53lJrsDvq0oNjvF5ALF60oy9a2hbr+KJkfgRlkIKoXwihFIdZMt+QhlCEg9a1hPFJ0Do2iqXaCFMsK5/SGcB5gz7v7mQc17TGbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770023175; x=1801559175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cph1pIOMJ6te4m5mWEfPHdHEK+jsoRVXjpjJ8TUdooo=;
 b=aW74k4MyoUeVvQKEZztq/ivRqDkiI5s1Pr+uFE3sTe1A4j8H2BZ4pItc
 QVzzXXMOpJ6OeCR7sz1h9sOmW4SGOiuz97RYkm0fKNf1Kjtq4vHq36p6L
 gGGTKwwdZXYITRG0JLzvsdBzsnx9iSbRR3twkVHfi5pmeqWgxnU1QxanB
 Dr2BV0Ksp5RMLd71zPktRD5g1aQknhJzA6LhuSP7wPrYCKhj/OieH55XM
 H155/Y+AYTLvJjHc4CrsSsD+Vn2X+a1wWi3cZNwtSrlM7gqOEMfYgqQs/
 WlnsSuBR40oA78HOTHd+R509cXYM6RVpAJViG+3QyeGUWpzvTVr8m3+dJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aW74k4My
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7DDCAC9E57
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Monday, February 2, 2026 9:48 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> linux-kernel@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>;
> Stanislav Fomichev <sdf@fomichev.me>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
> handling
>=20
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool
> set_channels().
>=20
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added
> by commit c2ed2403f12c74 ("iavf: Wait for reset in callbacks which
> trigger
> it") to fix a race condition where adding an interface to bonding
> immediately after MTU or ring parameter change failed because the
> interface was still in __RESETTING state. The same commit also added
> waiting in iavf_set_priv_flags(), which was later removed by commit
> 53844673d55529 ("iavf: kill "legacy-rx" for good").
>=20
> Waiting in set_channels() was introduced earlier by commit
> 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF
> has enough time to complete the VF reset when changing channel
> count, and to return correct error codes to userspace.
>=20
> Commit ef490bbb226702 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked
> NAPI variants (napi_enable_locked, napi_disable_locked) that need
> the netdev instance lock.
>=20
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations") and commit 2bcf4772e45adb ("net: ethtool: try
> to protect all callback with netdev instance lock") started holding
> the netdev instance lock during ndo and ethtool callbacks for
> drivers with net_shaper_ops.
>=20
> The combination of waiting for reset and the new locking
> requirements creates a deadlock: the callback holds the lock and
> waits for reset_task, but reset_task is blocked waiting for the same
> lock:
>=20
>   Thread 1 (callback)               Thread 2 (reset_task)
>   -------------------               ---------------------
>   netdev_lock()
>   ndo_change_mtu() or ethtool op
>     iavf_schedule_reset()
>     iavf_wait_for_reset()           iavf_reset_task()
>       waiting...                      netdev_lock() <- DEADLOCK
>=20
> Reproducer:
>=20
>   # echo 16 > /sys/class/net/$PF/device/sriov_numvfs
>   # ip link set $VF up
>   # ip link set $VF mtu 5000
>   RTNETLINK answers: Device or resource busy
>=20
>   # dmesg | tail -1
>   iavf: MTU change interrupted waiting for reset
>=20
> Fix this by temporarily releasing the lock while waiting for reset
> to complete. This follows the pattern used elsewhere in the kernel
> (e.g.,
> do_set_master() releases rtnl_lock before calling ndo_add_slave()).
>=20
> Fixes: 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8aa6e92c16431f..d7738fb8fa60bc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -189,13 +189,22 @@ static bool iavf_is_reset_in_progress(struct
> iavf_adapter *adapter)
>   * iavf_wait_for_reset - Wait for reset to finish.
>   * @adapter: board private structure
>   *
> + * The iavf driver selects NET_SHAPER, so callbacks that trigger
> reset
> + are
> + * always called with netdev instance lock held, while reset_task
> also
> + needs
> + * this lock. Release the lock while waiting to avoid deadlock.
> + *
>   * Returns 0 if reset finished successfully, negative on timeout or
> interrupt.
>   */
>  int iavf_wait_for_reset(struct iavf_adapter *adapter)  {
> -	int ret =3D wait_event_interruptible_timeout(adapter-
> >reset_waitqueue,
> -
> 	!iavf_is_reset_in_progress(adapter),
> -					msecs_to_jiffies(5000));
> +	struct net_device *netdev =3D adapter->netdev;
> +	int ret;
> +
> +	netdev_unlock(netdev);
> +	ret =3D wait_event_interruptible_timeout(adapter-
> >reset_waitqueue,
> +
> !iavf_is_reset_in_progress(adapter),
> +					       msecs_to_jiffies(5000));
> +	netdev_lock(netdev);
>=20
>  	/* If ret < 0 then it means wait was interrupted.
>  	 * If ret =3D=3D 0 then it means we got a timeout while waiting
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
