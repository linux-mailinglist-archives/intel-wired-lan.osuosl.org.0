Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGI+FUp38GlgTwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:00:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F98E480CAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A1360F1C;
	Tue, 28 Apr 2026 09:00:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JES5_XT0KsZC; Tue, 28 Apr 2026 09:00:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDF3660F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777366846;
	bh=YncHHcyu20s0zyjZHUmW5LDWNr0caKlBi5bFg37Vg8c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6KzvMC3S4ctKBBNoHFg3ZM0awZW4I1c+LsvYljzugYPVwyyRqWhy/Oj4wBPMg0UCz
	 Vtiy3iNV59/w/nN9rMQp64zy3310+owhFUGnlYRT5teaf7yGB9bQlo40UyXdo+6ff/
	 RzLDaWdC3Ija19QEwE8lMS7x/i+cNKahXrIXyy28JVaPDslsctTBCc4HIlUs/UoYgK
	 SE4z5pgxNruPwam5LsEg6SiQOoLbLBEHFMRG21z3UP2MEbcKjvhY29Rfrot0u38Yga
	 4wLh/gU3pBOgJeZiBwP5qKvkQBhPBmddxKvqdE8Z5sLQlHrNEMcYMfgR2MsSZq2cUX
	 ycAkYP24esHCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDF3660F1E;
	Tue, 28 Apr 2026 09:00:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DE7C51B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3E49404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tEBL2yZsLXvc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 09:00:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 268D74048C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 268D74048C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 268D74048C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:00:38 +0000 (UTC)
X-CSE-ConnectionGUID: wnYvWT2pQeWPi8xFRiR8JA==
X-CSE-MsgGUID: God2xXiMRjCDEyppY2GNng==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89730567"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89730567"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:00:36 -0700
X-CSE-ConnectionGUID: xpInJJxuQfOzcTGbrO7OOA==
X-CSE-MsgGUID: fVs8EXbgQpWRiKksyGDcTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="233032799"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:00:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 02:00:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 02:00:34 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 02:00:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LplGLx6ZIYmpEEXxiMxtI7CFOvPBjqhRWxeNsVMH9cy972JrDY23asuJwePxBkC33088nl2a3CU5RVSmKl+tRDjDGXmxX3M22N69C+2r2zrwZ4pdtvm/lW6Wz3yw0Go4dZWUma8V1Tx75XR7Qxo9dhecBZFoVYqAhr3mdfl70XLY0dXKIIuQ8dTbHCYbHpnncTaI9YSKJs9toPSSlM6MvX6GXRxDhumwT7dICKuTpRPDtQDZl59/NR3LiBM/ZF4vncUr+zmphwn+f2i2XsExEGLj4vDL0tyR08jaHg2mb3XCQ71SAuR/AkMqm87D+FIWEIbddGmC4xOWh0MSBWZUpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YncHHcyu20s0zyjZHUmW5LDWNr0caKlBi5bFg37Vg8c=;
 b=QCTczbGLfnvHTDXrl6GNnphsjm8TJ6FxN+GjGNS00nPNciObDbvxWuUkP7UG2i3sJwiwa7Etebmb49mUH7fQNT+nCkw5faY1heYBHEG9N3RoAnM17GvkW23Y1WEQfADpKLJP2eCURq6Pop2P/Negwdu/Mf7/ZkiG4qe9mcM9YHquxvK2nPZS82idHqsbeJzOtgdJm3mmlo3Bs+CXfRa1S7yIDjM0ZdnoSfXNkf0D7+wbkTy15RUFQLcT/EzRiUCp3gW/iiI8OspC+MrBXpcVOFEm3YPcC9iBqdAjOzIYyoXZSIxaSchL4INiyLVW1VQkQb5/PS0EJtlGU3Thbo7NKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB8016.namprd11.prod.outlook.com (2603:10b6:510:250::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 09:00:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 09:00:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor idpf
 to use libie_pci APIs
Thread-Index: AQHc1ujyZSMaxGI7NE+CoLBnF9lmm7X0K2Rw
Date: Tue, 28 Apr 2026 09:00:22 +0000
Message-ID: <IA3PR11MB89866811B05E0CF99A6BA98CE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-8-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB8016:EE_
x-ms-office365-filtering-correlation-id: ea91255f-1aa1-467c-4cbe-08dea50494a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 0EzuEiBMu4nEAj6m2W96+Is2y+IinJ9my4vf4yZSJ9+O/fp3ZlxfzclM5eM1hJcnLLbU+rCImKiyQzYUxhUWbMCpsnC/G4rgO9bcMNTkAgsnk7mI98NG4kTus0j03NrnvA+CX55AoE2/kwU416Mnq8kuqnOV0/7QVBWovhVWi4msmVrS9H55L1AQ4Y4CMJb7wu3fAVCLHg+l5/SJv9+AybLg8fLQauZUgzI+o4pS03jjV0wVr3pwP0YIxmQdSZ0AvAIZ8bNRJ03hNhIfXPNKPY3Scb4fhb0uKcHnowxnLapgP3SygleQFf5eLb0gzcyWwhMKioG2JkoRh3SG6pLOfl8e4pxLYiXlwwwW6qj5MCxYzATCc2IB384YngJHUtUZTiOfDMoF98HZCMRufAXC8wrjL9scSgfTH9Wu1drDNpHCiS2+CUFekyODRwDaTe2Th1vEJr+q8gJa0FhAfYqxQmO1llSo0HYnsDrTjwr/MyEXhdNx5PDsCqOjJr8YT6S82b80aIdFaGtgkBwT7eW8VeVw6L/yhmFwyYqZCOVG38b5yCkgk2119Yt2owz3tzhhP8M9LEinORiaqsnUk4f58z5iftSRztWakJBGEUiTE3NXBM3MZGac7ySkUVog+06ugWAF4DwI6JFSPk1xn9y0O1a4+eTAiFh4BRo1ljbZKLQ/SPl/88cXOofuvLnpe/Mp83PKTiXPbg+Vw0ZgGgF9OX+hoWe2blazYV1saSNuIw8IHiBbFpelrNJFL0iitgrdsDF73kGZKkC5b8yGa63kLXQgpBU2M/4CJ8UluWUwcSk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7GIr3kzFb0r6Tx5ojtWUvYOXVVIJMwS/I5Bls9k1rOIVh2vMsQRwIkqXY1GG?=
 =?us-ascii?Q?Ux1zj1DSqB6808UCSQXfJVXcE1AadisWuElthDbn74f1r0yBC2JCH5afzgDg?=
 =?us-ascii?Q?MmofhCIv5oWp6X8cIug4QiWBXF6hhUbkZ8InlqQVDGbuDBbMP7MzVmkst8sS?=
 =?us-ascii?Q?klKIVluDUBff9mpiQ+0oZ9yzRNTFYCstG+LW2/zzC3WysRHd8GcQvDVQ7O4L?=
 =?us-ascii?Q?Aoj4m6NJFimM8qUPVMxloUfT1cA1DJcQziGUNsiDmHAzDbGdi5R+eb+wYmzx?=
 =?us-ascii?Q?w2OIazxjm/nwdNm+fp1v7tQ/9lSbPvl1eDk+Fg8vDSc5B+K2ilUxIDZnx2cB?=
 =?us-ascii?Q?0jDtiWRprrYkAGS9QgnmJzvBFUN9nT6SLKF53hnyJeXmizd8ceBlMDtbnW7e?=
 =?us-ascii?Q?mJ9LTBwRqCbFDrwa1i0kUve6ab2hXQHozivjaqoMAdFNfg4w44Rg1qoze32M?=
 =?us-ascii?Q?m8fjJ/ffBXFPfjjCO1W7aC3tBwm7iXQSXKGldGJLs//bR8JtSIkVT/aiL86a?=
 =?us-ascii?Q?YVIVaRUbxSrUKN7t+ZIqHq6lcvKeUBtX8fOdDE4R6vkCSFGAccZ77+WOu5PQ?=
 =?us-ascii?Q?gJEyNTY1HqxuAocATQZLbCRjUkJjrozGjJQxOOQtl+D3xCGLWvXrR9fODATu?=
 =?us-ascii?Q?71SgmhrHCUl5t7sxJ/802/cQduv918rUPPe6xAOx7VPWIq20mPxuJDVBUUGI?=
 =?us-ascii?Q?vebv15SLsBpl6yCE8HAfe+diPTM8hR88uG1zx/jn+rryUSXrUOMmlhjNG1yh?=
 =?us-ascii?Q?vM1Cit/KCs4ULV3jyW6azZD03XRMu6ZkGl6p+X9gKpH44Q0w14gKlDh1U/O0?=
 =?us-ascii?Q?OiPzssdRWwB60chAEe5jQywINblittPp5dSqTI30IeuF/xKSJbwsqcTPkaaw?=
 =?us-ascii?Q?LsUr5Qh75ySC4x/6QDgCiBqyie8QclXJlfQ+7tBqpfh5Zv4tD3FoE98Hp9eo?=
 =?us-ascii?Q?1s9f1EN5m7oy0UwbJBXzCUI5GH6KMU/NYFMkCL8msmz7PuI8x34qBV/L3yas?=
 =?us-ascii?Q?U4Wq8ac8FhCnpdtCT/hvDvnmbMcwEn6bpVGsyleZgDzzz/czl7uOvufwiYwo?=
 =?us-ascii?Q?D4SjbvzYFOhclvVqkua5NvBbQbz4ukZ7fC+rsEwAZMcix8Q6sAkehgDGzvSY?=
 =?us-ascii?Q?OYB/bIiJ0gbDuus1QHA30vulAMhgNS+J807MGyEr9u8bsuBuLffUILaom0W8?=
 =?us-ascii?Q?K3TyDJPN26Xxn5V7UbQcOgOjvOGFirg0ug1D3uusHGPxDO2YQqn4ud998044?=
 =?us-ascii?Q?HM2vnFig3dq2FUQ/l6E72OYK2+Up33ggwboYg3bp8bFiYybzeQKOg/20RsGP?=
 =?us-ascii?Q?3AskR4SIkFhmMUbvw74uaaA7WRaUd3XHloVNmVviig6b9UOqFng2X89LEo8W?=
 =?us-ascii?Q?lUHeddO4OlfWxJ7sn5hncUtNKPdezbtcKlllOyL+KlzbDBSqjwkjPbBeRX64?=
 =?us-ascii?Q?2evOtWwW/J/wCcHtu68zkyDX0aJ9PDiDBVML4ajBt3arUNY+QRTR6/daVEi+?=
 =?us-ascii?Q?INvmdxxTfNe12oLXdwdZAjrzFd0FKxMRTGCiXOziLj4VaEmOAx3vD69C5ofd?=
 =?us-ascii?Q?/I3B7AXFwfwBofkQK5ko0841Ur7JIwzX6qzOc0TaQ+WJqBKXsiuVLumI5I97?=
 =?us-ascii?Q?GBc0kK+EeK/vPJaDgZLWmYh8c8hGWV5P7RG8/BdktNmIH/UlAnS9ubCM39mZ?=
 =?us-ascii?Q?lNc0YHBsgOD2WUFVZAybX8AYbAid2ijIX07hlazOqWQ2GjQTW9VbuS7HKvit?=
 =?us-ascii?Q?1OeFISGaB9P9TYc8+wLHY/yQD/zJDOE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VsSTY9je1lJ50ezDb5Yk0RPWW+m7sn6idJADffNLWg32VjbLpk5F74EK3aT5RJ/535aGrWkUonE7UdCrmvrABdWu2aHOP2wluxZKfxsR0EhCD6MeCFZIRNNxiw9sQ6eBHEoJ3RhlqxdjpKV9/lIRenUudfBDHAn+zLQQqNDxeN6mWnYB/m2t+0NG/1Frqz59oly3oJwTOyKKqqR3nKBNP94NU2UBe8HkQRhHF395NksQPrmP70nsF3xHvJxlbwxitd9Eon1b0L+pPkBdUNLbmtPnv7W+8AuK5hpY7vahQhq41fNSPCOfut8SktVvL16DgyTl/rkqzyOfrN9Z/7wskg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea91255f-1aa1-467c-4cbe-08dea50494a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 09:00:22.5515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9g9LhI+DVJotBr0r1eYyz5vVEY+xlQYNy60JEDFFVxOJDDOVG/DhyDUgVe75St8pO7c/sN34hlXjxsC5jOOkvoFHs4RncDEjMCP3yOXVN+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777366840; x=1808902840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bZJddvxg46huEo/ervGSz2Yh9gc6A1gDHKEMwYybPAU=;
 b=TiaTwzVT3Y67+0JJ3BrjrHsvhltV4FMkV3XB7hYONXZIUBpflSH7PMZI
 +frFzzAy07y/TadJVhKq6J9p1cCImxOgFRGJ+x1gFLsZFV/yKhfKnhQGo
 +AsV/oPvILzJSdEh2oJY+OuLSAiOBkiMhTQpEkWd97bh6XIwWuitfDCG7
 311EUtsH65lBArUs+OF4dwyZhn5D1xmp6HtUOXNNNX0ZFvDJ8dcrSEFBg
 F9kJ+DznCFQs9L35m6LwpkRKrP2BEtlBTL0yfv2Yis+QV+SZornazTK7M
 +W5qQGrHK+JCmvALWgwJH/ovi6absOFkBvHk3TUgsoXM01RYxzxj7uXyA
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TiaTwzVT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor idpf
 to use libie_pci APIs
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
X-Rspamd-Queue-Id: 9F98E480CAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[6.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,checkpach.pl:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Salin, Samuel
> <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor
> idpf to use libie_pci APIs
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Use libie_pci init and MMIO APIs where possible, struct idpf_hw cannot
> be deleted for now as it also houses control queues that will be
> refactored later. Use libie_cp header for libie_ctlq_ctx that contains
> mmio info from the start in order to not increase the diff later.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |  70 +-------
>  .../net/ethernet/intel/idpf/idpf_controlq.c   |  26 ++-
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |   2 -
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  61 ++++---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c    |  38 ++--
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   7 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 114 ++++++------
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  57 +++---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 169 +++++++++--------
> -
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  58 +++---
>  11 files changed, 288 insertions(+), 315 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig
> b/drivers/net/ethernet/intel/idpf/Kconfig
> index adab2154125b..586df3a4afe9 100644
> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -6,6 +6,7 @@ config IDPF
>  	depends on PCI_MSI
>  	depends on PTP_1588_CLOCK_OPTIONAL
>  	select DIMLIB

...

> >dev_ops.static_reg_info;
> +		bool is_static =3D false;
> +
> +		for (uint j =3D 0; j < IDPF_MMIO_REG_NUM_STATIC; j++)
I think you need to use here unsigned int, didn't checkpach.pl complain abo=
ut it?


> +			if (mr->offset =3D=3D static_regs[j].start)
> +				is_static =3D true;

...

>=20
>  	return 0;
>  }
> --
> 2.47.0

