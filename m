Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78260B3B401
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 09:13:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15C20613AF;
	Fri, 29 Aug 2025 07:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X0KTpIudSdf5; Fri, 29 Aug 2025 07:13:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83D866145D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756451592;
	bh=1MDcto+c3uVrohCbr+ZQ0FN1NtSYm1t1mgCH1xKczJw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QN7JLkF/Ry8UsqWsQP/VpO5Zou+0txuOu4ne8Dd6tz/S95/5Wjth3qvdVy+nPZuh+
	 sDh5A/GI3Xzf579Z6hqEuQFwGSGakGerY3PvHhe93ethZtKbvQYlumvt9dxz2KS8hm
	 u4m0mN5kPgswuES4vnOnY80DGZLBrptmWoAr+l6MymUy+gQGoBl8a1tBhiHbNRJnQF
	 qjor3oZcv4v46rxEGjGefI/fU1s+X5qbxFkW5WAlY/Xzfz+/xwW4QFb0ta35BqAdSZ
	 +1Z6wJ4AFKriCmENUbfpqFm8eaDIHM/jC3NEjwT0lHO69M/+ZVIVLGQ3sPEIrlSDoT
	 +S28uZxPChF7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83D866145D;
	Fri, 29 Aug 2025 07:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D8DC69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A55540E01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ALD1FmQI0iL6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 07:13:09 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 29 Aug 2025 07:13:09 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C24C40242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C24C40242
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C24C40242
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:13:09 +0000 (UTC)
X-CSE-ConnectionGUID: 6MT4b1SQQE6sM4otQ3OBzg==
X-CSE-MsgGUID: lsiR0kFzRcWV61dPVk+rRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="70172954"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="70172954"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:06:03 -0700
X-CSE-ConnectionGUID: m0zTKB/HQZK/TB8h2PEI+Q==
X-CSE-MsgGUID: Biis3FWhRzuna6hySic/jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="207452648"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:06:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:06:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 00:06:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.79) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:05:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s/N0nI0r0XWp9biuKNyjmur857e9IvT5HdIq+51UnQph/+D9M5TDUMgzRZdITPxIjHKL1Y/zwNuwBnCx6K+2Gdgx6tQDXKiIrHTgxZVF2zJBDiLvI5sz9GVF4SFwAVXvOoASoFmWUTmvP62sM8EXl44l5umcqzSx5024ti6zesDxaQrnrIgzGRW4rErdqYE95HcozeqYtmt9OJLoISV/pY8xVmTHlklLXACfg62ktZbyIZQoOs259eTPErgzd76JD1tGOrqmXUawe1uXyRq2T7alxwVOAhQ71i0uGJo5b1w7Lpe84yJ862qs8jkO2GlJbSiOt3R3RkE3NEoBcmwl+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MDcto+c3uVrohCbr+ZQ0FN1NtSYm1t1mgCH1xKczJw=;
 b=dxVJAne0z8AKFirLZnSMzFWfCeJKgB+jbogVp14xJjLsnwgxgLzOioianYBsGJ1yMT3AHFAfLJ37NnpaqycQM4gNLNbOnx07QJ2F2g2YvmvkDYVEREPWgVUMIhVv2V+heLPq5wEQEH4g7bOTiR655VUJFJT+iW9/Wlr7aCCT38Y4/rvY0T3NwgDJuBNDffpddk205yubNvGeOGSioRxwGmgi7zN2wZ6dn5dpTHh7I5K6xdQmTBn+SG2EYcrL4zUVQwXIE66ULzFrhgCTu34QG3HmzHmDc+PurfmJMUvQpVpSwZHVKINMUSC1Uiac7u0dsJzI5ajFRSwLlOVpVNzTOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by PH7PR11MB8477.namprd11.prod.outlook.com (2603:10b6:510:30d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.17; Fri, 29 Aug
 2025 07:05:52 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.9073.016; Fri, 29 Aug 2025
 07:05:52 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "almasrymina@google.com" <almasrymina@google.com>, "asml.silence@gmail.com"
 <asml.silence@gmail.com>, "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Vecera, Ivan" <ivecera@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH v2] net: add net-device TX clock source selection
 framework
Thread-Index: AQHcGDvl/LMwp05JjkKtLLSsBfpR/LR4S86AgADqNcA=
Date: Fri, 29 Aug 2025 07:05:52 +0000
Message-ID: <SJ2PR11MB8452BC7078EF68F086C1AED19B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <013d723e-ac62-4207-ae66-31126f890429@lunn.ch>
In-Reply-To: <013d723e-ac62-4207-ae66-31126f890429@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|PH7PR11MB8477:EE_
x-ms-office365-filtering-correlation-id: 4878c1ca-1f55-400c-8d8c-08dde6ca7d9f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1zVAkU1/5l0KD4WUR/1l3L1F76hHK1SeToylCFwP9QKnAghLdqdVbSo9vNuz?=
 =?us-ascii?Q?eVSYI3mFiTdZMuM2OB1iB2KssRsKh+OU7vJObIksAWuqsWOO//1e1xGy9I6t?=
 =?us-ascii?Q?NNohYhIhKqzN0fM5lNv4Tcvn97jc+7C4s5CXPnnR9SwVPePrVjQ9XOy0aZs9?=
 =?us-ascii?Q?7U6dojWLo1ZZIiJt+eieB1L/3bozFOmFUds3uvxU3rjQbICVePe34IM1r/rJ?=
 =?us-ascii?Q?yaXVOMv9jvTxvCGxMvOdsw4yRKBwZOp5laU7dOgxWc6E357kjCsO+81lG48o?=
 =?us-ascii?Q?i025IV6BKmMIGzwT5wI9sI6Cf+8GHs1LlzI2C1JQE9pvPTnv3HfxuQBoIsEJ?=
 =?us-ascii?Q?y6yxg0Wc6XZVjtXaAMpp6zd3PrSipynfkr8mSEj6hE5yd4AdXSpthdW1D3hp?=
 =?us-ascii?Q?139QfBZp207VeI7Lyj16zZQXArGQ8/6cWeari463Qd5HtjG6JEcjD4A0gytz?=
 =?us-ascii?Q?ejJ7KeWXIkgrvHbZUvvugAxzdjDd4iQmoTT29cnjrZbGCPAVMusGj15LEO9F?=
 =?us-ascii?Q?LlhDsn2rvur6oC7oOiD4ZSGGcIeZsm95Q81QyQT68X2CpGAJa5hGZVHZrOWH?=
 =?us-ascii?Q?XwlYxb2YDWSPtgRJj6qnMCV38qscEW93O+Yx4z3EwuBhK6rvm52p/Czejr/8?=
 =?us-ascii?Q?6UlG+cRBpKRkUg8ffxWfB7orbZt/P12xEyG/dqs5iW2HMpIO3M5iSnCrMBVM?=
 =?us-ascii?Q?DbTpZEsn0VVeb5z+QA4UQzAfS1pJKtOvRQR/w3xo8T99FDVW9XIz9WF86GoJ?=
 =?us-ascii?Q?wL1Opgs39P8jmr5pcwmsZ+ddEXzNT7WJVaDbM4B5/Y/rwLkmLoi5ULVX8O4E?=
 =?us-ascii?Q?A7Pl3SZ1g1W0sljbLXK9n/VyoiFwq3UUeIN7VHhllOx7/snFQhwK/3+eioQm?=
 =?us-ascii?Q?WWO8DV517dyRSjzprIWfd2Vs4CHViGos7UDjOijQQkmW3GMHAHf2E00/dKKK?=
 =?us-ascii?Q?1oL40waVEoi5aEwzVgI8ZD1qH2GkWLEF31zmvf1ws5YOyjH1cPtH9O/Ji11I?=
 =?us-ascii?Q?MPrPBbZyoyjfDnmqFrO9mYUitsfUk7Lncru2Eo5P1+FvCrFMBR6wW3sgvwMH?=
 =?us-ascii?Q?MgxsCN78ulN7YaGiWZMSHLBPFtkVl5mF7ku13S+Oumn4yhE+/zaumi2DqAxM?=
 =?us-ascii?Q?f659kD0mG0/GRGrz4qqh2OuTLtK50Zq2NFvV0Mg9KAIJnLJbjg4DlP2GUyyy?=
 =?us-ascii?Q?VEutXSlgaIQrzsaFktF9PKmJjzDbBTshrGd8ok8Yr7UDby8VP5hPKg43B9XP?=
 =?us-ascii?Q?KB6MODcJuJKaQaj8ZrpruKSNmD+NvZPnG7BEcfTyZ0ltHHVZ9dhezjVcYBWq?=
 =?us-ascii?Q?PgzvVk601IPW2q+eIEc+DYVZI4Fu7y/4uP65dJsnYKEBh/UdnZr2g9Y+yuqe?=
 =?us-ascii?Q?Fqu7oxm1GaaLYZW0dpCWtpndMtjiu7ZlPKkpUtqP7mipiKytQeCH/5fV2WeP?=
 =?us-ascii?Q?gMRozdbJMtvUFo8Y+y385A8zJST1q6Jy9TFBXXG4BuRe77CND+mNGg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vu+nl89nGwLWDdc8LDUaDf+eh5g9h7xo57X/OFGqBwtJd7/MSaUJxX69/PGR?=
 =?us-ascii?Q?gEPL9CkAF/4KlPsbZdwWW5I2LwxgsejGBJFaROHUbKYBee5kqCtr5z/OglE+?=
 =?us-ascii?Q?d3lxC5+qI5rubKq427UdpRZTb9taelOi1xlIWSYj6SI38pZabkwI3dLQDPOj?=
 =?us-ascii?Q?eRpB7fQ+Wde7/iW7vg7F70agInmmQEL9Qgynj28Oe1VGF380idGe2v13OXoU?=
 =?us-ascii?Q?IdJBnaGh8UgGcgT4ER4l1DOaXTSTvyw+oOT5/ULZx2j1QK8xEYIK//FGkBfi?=
 =?us-ascii?Q?HMXaPdiu2vH1cp3YwjP3ucTjkkyHZSdyBfGlqKStJEQVPMszOIAyKh0/Pr7W?=
 =?us-ascii?Q?B58dv88qvOCk7G4yueV6VEYelcrVAAnkPDMNj4THjRZa1qmJvwEj1bwwpyJy?=
 =?us-ascii?Q?3l6sMHemFjubLL+JiWaR84S6EttpTTIUJlxIrxlvVy5rlGLxDzHX3cVXk4Gd?=
 =?us-ascii?Q?K5qgdQYJYLax/c9LcSOUAB0g1L/nzDasU/ebdEzGFREoYaEX7pliCzHBCL09?=
 =?us-ascii?Q?EjVqAkKuEowPj9DWXn3+P/VysZ+W5bwcL0BhYReXUXczMAEe3lZjbGs7oq1T?=
 =?us-ascii?Q?SvYr25tspyuvgK14VVYaR1plijJO7k6b+BzKfmj1YPJAT9AHZ15wbho08hG3?=
 =?us-ascii?Q?RqrX46Fnr8Is8bNHgad7eq7V1IIJD2jGIFSJ2BvycShcuXV2ezNpz5JAvrp/?=
 =?us-ascii?Q?Yc8+Omv425H94bc/HZfUWWZROOghFGuJuHs+Bs3RG0cVR2t2QV3qAeswkN7E?=
 =?us-ascii?Q?hp8puIQNbayUwQjL+Go/gtEINhYRjTrbCiFYd34CrCMDWltIcekZRY6iYaQK?=
 =?us-ascii?Q?p6TaRgU3jz+oIZY/hfUTKincYmhE/VDtW4rx2TeTOuklUfUX3ig9YIIs8YhX?=
 =?us-ascii?Q?+yyrC5oJ2yToLG4edRMCrrBGlqGID2xB0/HYjIh7w97TtLEhLfdVIhKXdEGj?=
 =?us-ascii?Q?Jq6mQ0tko/cllW2Z4xhsak5SueTHCdE4qvrqb0Ch1H4DAjc+sevidyO1iO3V?=
 =?us-ascii?Q?7VeIg2CeKKV3E2bG4EJrnjxNwd+RX79dqdBI0IUauhuwbPJ0g3/V9DxhZsnL?=
 =?us-ascii?Q?RZyOk6bn8fWvijG3kTeFPuA2//Ir0Jy40MldXUc1i/ZN2PciFyoIGjLc5ef0?=
 =?us-ascii?Q?vu7XaNmobK2+T229VcKBMy87fnXHeEmmip2kax3Hxo0dYct/TSzLHZKR3Orz?=
 =?us-ascii?Q?4zJ2Tn2o3esVjwPD5gx/SrL+TJvJMMQt9lPJmeo22T9WHZwqBOi1RgYft7Fa?=
 =?us-ascii?Q?KH/itoaYVF05CgYbAIsTTCOTrpiGgbnbtE5kN9qDRM2XwlvWPNQzEAEpQkFn?=
 =?us-ascii?Q?NHhn717tqpVBWNvhJA8yovic2IC//eQ0eglRw8J5/y7IXJkHGFBfccjiExJO?=
 =?us-ascii?Q?Kjk8kB83njAaLKdea/CSf69PPYs3GqQsx9bmItlEGwzYK+iYlAk3xpwh1+J/?=
 =?us-ascii?Q?V+iGL6bwgx/KkWiyedJ7JFO5RrQgBul43YrSVjkbAtDKF7JK7wAM226yTgeo?=
 =?us-ascii?Q?o1UsYavcscnNpPdJISg04/SSxP7wZO/8H9ST0tpwXoO5lNQfOERb0fHqgntQ?=
 =?us-ascii?Q?CSqbBp4ZTk00HXcjWFbAPFiHtSf8Nz3mr78ZvYiBtqnhsGUjCZYKiMGXCija?=
 =?us-ascii?Q?mQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4878c1ca-1f55-400c-8d8c-08dde6ca7d9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 07:05:52.1389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EsyNXcYEYu5KQebrcHsXCey4eIvz/ZNazx7azErZ/6t2gZhzxzzO8R2sMUlbjZZ3jIg3v5UcIW12jEefLwDpTPQrbjZCDTSyaDXD/QPi+BQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8477
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756451590; x=1787987590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4IcB/3HhMQwjoW8KwWxWuywsiECYI0No8bOMkaq5oV8=;
 b=YgDictMs3kj+hWAaxDQ4pfFo+UapygUydzvVfz2rDBep/A+zdDk///1p
 GJUSTNnSw5gqLcjoHyuxD6MPnfiqQih9lwRgoDIgpaKnPYcQyrJHwvjzd
 ipyhmrsQMomOcI78X/bVEU9g6T9DWbu5kQ5qdnq3YTikopZx56yOTWumd
 bF/zrSgFyhWuvZ8w6eRhSj96c5k2KXivwTK2Bqf6tB/oR/M7I59Yt3QjH
 EG3zj6WQv8B//7BYCKCnj3zDlA1R6xbLsEKhzvPqt6ZXMmWXcRjOMofPF
 sD5PiF/LZ7f7Di6hHHnLvk8F447bXP2EAlRt8KUTo/Vo5SlFp82xot2Kj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YgDictMs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

>From: Andrew Lunn <andrew@lunn.ch>
>Sent: Thursday, August 28, 2025 7:07 PM
>
>> - use netlink instead of sysfs
>
>ethtool is netlink. Why is this not part of the ethtool API?
>
>	Andrew


Yes, sure, will extend for non-RFC submission.

Thank you!
Arkadiusz
