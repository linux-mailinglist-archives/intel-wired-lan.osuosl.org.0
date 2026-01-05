Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F44DCF5DDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 23:42:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31AE3405AF;
	Mon,  5 Jan 2026 22:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kP-1VOIEbb_v; Mon,  5 Jan 2026 22:41:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3B5E40632
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767652915;
	bh=LoXtTha2eLRVY7nsOs8uPXzwq8GJ+ttq9ChGZmOWHoU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D7g0yjHGEKHNwCYraEc/L88qvKEPPQ2YQ/9kH6KTA8hYqb7niORcSDbApTI4tzIj7
	 6I0mTbHsw60C14e1xckQyIPdgzRMtScu+nzlGy8IWTdggM98pS2/EQhxUZgMsJ9lpQ
	 3VTUgSiYbFowl1q6VG/Y/6zwz9QJHdEk81DlnLtmKNUeBRULWqF+usV0HRWv1Vv9YF
	 tbOCEmCe+SC3cncJQWIjSV29RsapMSDXjdqZcalDPx3gENCAQ6sH1twC1sSobP7Kc8
	 SqFFBoT9VBvtBm0b/w9zbMr8j0bh3+WrSwE1bzbXqIr59iQsOw8KdIhdjO0AnVy95w
	 Xl9hFlGsjjanw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3B5E40632;
	Mon,  5 Jan 2026 22:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17115E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0531540234
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mmCpuc4UrroY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 22:41:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4BF8340086
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BF8340086
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BF8340086
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 22:41:53 +0000 (UTC)
X-CSE-ConnectionGUID: CKg/fV/ZSaaPCQ1L/bbAUg==
X-CSE-MsgGUID: mMeZw+feSxe/U2gvROXrgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69064031"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69064031"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 14:41:53 -0800
X-CSE-ConnectionGUID: ckGeiyq9SSuqBJh27SBgZA==
X-CSE-MsgGUID: RETdTaQSRgWuA/S6kGDOfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="206975495"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 14:41:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 14:41:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 14:41:52 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 14:41:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iXTmkyzvKtFppFRNzlqn+9foKTp8woW9LspVP4hX7qSRW+6mwZXeX2mKUxEt+hxj1WgW0Yq9ZXy2K308j+hGnzZyu0HgOE6Fn7hjKFeUlsSgjTiuFoLy9ZPiqihMBiodCvkE1uuRI4HzHkBpkODhIC6JIUWOtKZ9WTarqXcROJINeBsCc0ZYD/kJSif6vw2Efkp7/KZWfe8hBwQCAPTR4MLRtl54Sacnf/JcZSFlJxSAEmh5Voa58lIKhe3i3cqtV84cWELsuVyvO/o5p+MMIfsOorFLSOhUV3Z6cY0F0aAqNs8FAb/paFHaEn6p2OxxG7TPl9vIFHziznGgYraWxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LoXtTha2eLRVY7nsOs8uPXzwq8GJ+ttq9ChGZmOWHoU=;
 b=OHFMGHejSH0VfLoV+yFdngDteLWq5SFK4tdAOdhlXHFIFA4lERJNPXU71R/7poCb3C7yxdY1sQP3VlxiJQ5MZkwHHfSy1lhI5uiM9hOeKoHR9iUuKuYQqY5o6YNN9u7f+rRwWAPujI7XQKXaApJzJntn90d5LUCCNYpfGFxbucq+sYr35bOz5M8DY5UjqaPurda+Qjp2n3YXg2R6BK0qjyqtqQKIMUR6CYTNNdkIzCE/hmmggnXsuEJhUJ8+qwiFBN6EDYZpoojRgLuPGO/GKBNFF8trvCC0vNgvEUpbRjCJcRj3402zaO7zpKWEx1vljp3n6OAnQ2oZkKA/CNdThQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF0442004E1.namprd11.prod.outlook.com (2603:10b6:f:fc02::6)
 by IA4PR11MB9130.namprd11.prod.outlook.com (2603:10b6:208:56c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 5 Jan
 2026 22:41:50 +0000
Received: from DS4PPF0442004E1.namprd11.prod.outlook.com
 ([fe80::8591:6563:2984:832e]) by DS4PPF0442004E1.namprd11.prod.outlook.com
 ([fe80::8591:6563:2984:832e%4]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 22:41:50 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
Thread-Index: AQHcV5B2rF1O+pp2L0i8JphhVjyIbrVEeTug
Date: Mon, 5 Jan 2026 22:41:49 +0000
Message-ID: <DS4PPF0442004E14B1D12C73F4A6E2CBC07BA86A@DS4PPF0442004E1.namprd11.prod.outlook.com>
References: <20251117070350.34152-1-larysa.zaremba@intel.com>
In-Reply-To: <20251117070350.34152-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF0442004E1:EE_|IA4PR11MB9130:EE_
x-ms-office365-filtering-correlation-id: 54385628-c403-416f-dbd1-08de4cab9da4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ajYDcuIIVTFH7PBMiK5GRe6kE1DFCoqqJSnKW4MnAM4ywU4trRfqAMoMaRf0?=
 =?us-ascii?Q?cOi2Zt59xVZonCO+o/4Y+2m7ba/QLADOqNIWvuMhusL2PvMSN2GyWkYSxkyD?=
 =?us-ascii?Q?ADkLvLaq6kWZXelTgrME0MbQzOXymrStPxSwMC0jCsO+EJO+L9s2JbxhKjXW?=
 =?us-ascii?Q?0i+bGacyQaA3jxktpjCG+JRx0RSgByB7yYDElRQdD1HKqQWHevhjLibjlvFc?=
 =?us-ascii?Q?PuJHMPBnGzhqlJRLFkttDhTu5CZMMONdSQqepfnV9yOKhcvyQtQhuFtzqqiN?=
 =?us-ascii?Q?48N7p71YGrWjJY/K6mm3K4tbG+xaxvgtnO2wsecmfWPD0AvcAnMWHE/fAyvP?=
 =?us-ascii?Q?mrf0fxDBRIfBHkcnaUOkAn49IMtj0S7fjwpcxcuUExDUv0zqgrT6lYYweyez?=
 =?us-ascii?Q?Q06lqY1HHi68/hZARqXDzYfAXRfzEBgZjF68JeP0m1MLfqVMhGPB8QZHuORN?=
 =?us-ascii?Q?wQXCy24lw35AextCNvELI/52FPu/ONv+XP9kWvC0uixF3p7ouHy6GqlemGvY?=
 =?us-ascii?Q?5lzBVnKwVsLnooNpLBsYM4vBfQDgqKOidi3DZX4ypVl/zqOaxDVw0RcPgu9O?=
 =?us-ascii?Q?UvMIc27bnodYf1kJP4hJON+c63pX6UHtQYK7AZZvLDt/4AYmKqAFEnj9YLna?=
 =?us-ascii?Q?rQ3bq2v1/79Lf6mFb29vVFQkWNmgWgm4IwMU+Nhn64To9jPaJ8e/fuhDBx9g?=
 =?us-ascii?Q?jaxw7lc3sLaRsqifJzubdgLpcg3V8+l9L8Y7aOSqhBQ7jtLUDCpgFTFFti8W?=
 =?us-ascii?Q?J7RV39OqwuirnjUzxRpFpwxhh0LhMO7kaMGJ1/KMVVOMyguMUFr9YslcRlNm?=
 =?us-ascii?Q?g1xh0SZkiw4jaUMXRIHUZg7lo6OeWzNIH8dxK8KWMnMKBy6dvsLX+rVSSF9V?=
 =?us-ascii?Q?jtHPwk++XFdfSRoNd3ErOfAXCZtBtBTZgem4LrvB6fV4BtAmXQRwUbpPx1i1?=
 =?us-ascii?Q?rZ+q/bxnu0v4itXneIFjfutskcMgfkOYdmkNrbmflq0134DfEqwnj/1g3e8B?=
 =?us-ascii?Q?+GjF1JvVv89s9qZeHJQMaKzi/vwDbBLdVl30R3aTeJNmt24P+C0Gr/iO+1eq?=
 =?us-ascii?Q?4iGiUDkw6+x+k5WthbH/KWGvGwdF0hIrcU0meoZQOgbE2uGFbuH+w2MOtgsx?=
 =?us-ascii?Q?LljwCcAWbhxcWJ++VhoXUpT7YN4nv2aGeKNsURIrKACq7p1zb999rgSU0843?=
 =?us-ascii?Q?n2Rd8GmGtuINn/jFYgFkDWzD//vTTemNYa1hEhk2kOv9RCiii5F/f4zKdWMK?=
 =?us-ascii?Q?swcKqWBTyPjO8fHm/3XoUfLG50jIHoKkXghB6flncN1U4CHRbEZMyO+lsa89?=
 =?us-ascii?Q?QZmR+G5XJsL6LgLMHtyaJ6rLD+vvZFMl22hAVWQXVp9kiaYD7QHtTIfuOIOb?=
 =?us-ascii?Q?huw2aD0Gk/XmG1aa+Sb5rwrf8Lbul6/qeEyVXQNU37XzpMHtKrR9F1iuw2mZ?=
 =?us-ascii?Q?em3QFbD0iU/kvfGeXkZNSHMS60elMy5pf5uzhgDUlVU6bI43E0yVJONyGx+T?=
 =?us-ascii?Q?HjrTU2cxSpkcc8qdO0E9P9kMHSti6HdzLSLx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF0442004E1.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?69e7t/TCDqi0dbBjX0E+o7Zaku0k9X/OLeYVpjA0gNpKNdFblZ49WnHEeoUx?=
 =?us-ascii?Q?kuozbbRw3zOHKaXDBy3zJXxSkw5BMwrJUQz32UWS9PfPh7YDwarhsyLseHkr?=
 =?us-ascii?Q?mjAhUFZikUG5A01MF0N1YVlAjQ/t5/umeFPv2weVkZdOUvQcu/S0TWhCdjuq?=
 =?us-ascii?Q?DJH6etrdGziHUJzppmBrsO6S4ECKX1hO7rNzwOM48smZea3S214fmabKuePC?=
 =?us-ascii?Q?P1J0EZuQBQNYJRploCTSuAu3K70bPEICYXwYgnCUeSxbHR5pIonYvMWoFG5w?=
 =?us-ascii?Q?tOVAGfNXkFdATv0/xp6xUm+bmnajVZwyDLc+wPwiblakkwCXIUiKefug4QV0?=
 =?us-ascii?Q?YC/rEQFyKHa+FUvxyQO59xxII4Kr/au04swmktlELGT+j9KUeS1R5+4bpRLO?=
 =?us-ascii?Q?+l8cTfG9kTAl17yWrWJQc6ZFkyO6lNy+FPFPRd8MXzkh9b09p21Ocw2bcXQu?=
 =?us-ascii?Q?H2RCt5KziprA1COEwtt8itf3YIga1z2iS9075GqBqUQDTlF6jKYw2K3PElzI?=
 =?us-ascii?Q?qXbADcETZW8rfcTHJiL2i+H52Dvu03bQZQegteekr9FbvrxnUWEG45DYb0W6?=
 =?us-ascii?Q?R6TSKoid5EACrVvwzSdV8yON5wUrnvwTCjZwb0/bsvZ2xygnjVbK0yqtWP3r?=
 =?us-ascii?Q?9cCtBNoUp0LG20XaSHiVONhISR1o37rpnQYfHc6GXX88rfZQeEzyZQ8cWpbv?=
 =?us-ascii?Q?WKAwPxfLHQFVwx8AHkYQSZ64nwYY95Mt1jFTsfOhGeqY/AtX02kYo7+jwzQL?=
 =?us-ascii?Q?W0RuO6ahcdmYXJDgSbqFh/IazHPN6Axwb07JB13QHlv/ks+UMwpMIrw9uKBB?=
 =?us-ascii?Q?OJhSMsXUFlI0C96q/0Yy699s/NoJaaJ3WRl05auofh5uFXCVc4trsPaNiCnn?=
 =?us-ascii?Q?ulhYGH5Wn6R0AzAw1Wr7dyl2K3wOTuoI4jedsb6RJ0B7YjRxjjsg7qu87kkI?=
 =?us-ascii?Q?EZbES+O69qyUsE7Y2Po8GRemLXTwhGaHx/GbMBb+6kZcCuam4kMVbaV2n3MM?=
 =?us-ascii?Q?9exW3Oat/fo4m7jbfXJmcrJkdLMyAil0egl27LK5q+9UF8k7K869QHyd6Y60?=
 =?us-ascii?Q?rbbNnakSVIp7uujP/NuWaG42zCXCmAi2pRgAfgC89uiWMkp9TVdINvd9mcwH?=
 =?us-ascii?Q?H6n/EDsvLEmR0wC/LdgRp0uFhDsO15LoInPC+MaboMkmHIXcn8qxIgh1qYeR?=
 =?us-ascii?Q?y+6KU2jVpnnYb83ezZyg9rsSwu+17vDIdOHFylApzc5uOm72F+29HHNT5IEu?=
 =?us-ascii?Q?TcNl2WB/rDfvp55esRdApgHjg9YGbLfWTjwvlVusTe5nThQddHu19lILqnla?=
 =?us-ascii?Q?D26SqgWIiLisfQ8WWj6r/xGVCGX6MO1x7cOC2gM7zCoAG9yx7rcTIvb3pMSS?=
 =?us-ascii?Q?Ak/ScHFwHwStbUbcTT3XUNwtnoebp8uxdFD8l99yco83Wp9sZR1LuIfgl1HI?=
 =?us-ascii?Q?u76t3wItfhhKbP+vsqQmbNvk6wq4NF0heQgvwMLJN00SZ4waxjxv7X0CyZDq?=
 =?us-ascii?Q?BX8wVjuFhaR2jztjhTFv+yYrwlynoVsmBzzG0v2j5srqiET3qOPfy10VYTjW?=
 =?us-ascii?Q?TQOLj5hKZktttDINBMKdBdbXt8n0Fcox5CPoOv0o5xfnFJSqkacqDxMM3CR6?=
 =?us-ascii?Q?zYI28qmhNRjGSEAIhGLtKhDyBk0zFi3Q7iRzXgYB62y8eMRV3Kpw169x05SD?=
 =?us-ascii?Q?o0q3vSgb9vybor+iiclA8tdfcJhsPMGzcmNb2r9YAGIZXJ8e2yjVWkQH3fD/?=
 =?us-ascii?Q?aw4nf2i96trWdlCOvWbmGrmlbR4hrFA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF0442004E1.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54385628-c403-416f-dbd1-08de4cab9da4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 22:41:50.0908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AnHYTTwj/lUvqFHY7mZyB4+hH+0UP1+Y4vg+IC2TvRv6A/QDo5Y4mJzjLqGBM6DJhEm2o8FF0ve50+fU87bQ8W4699lZEntQUoXvUpq946k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9130
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767652913; x=1799188913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NEJtmBHJkRfg6XyfJLLCcaw8QVg5TieKii6VTrW+/Hk=;
 b=W31Tc7i8T9xj1GzHUvR+5hEZ8tgv80s/Emvzhz+NAgb441cXrKG6zFoz
 EcPGzYRUTgfeZ4z+2Vwd0hgZzWpTXGmkEWUjm7AUXvLXeFFNntRktM6ay
 0cdtzi6MdKujdtLnipkYuYF3WxIPKm1T0IwEaef33MsAc66pRWGQMTT8k
 i0ihfg9GJ9KhrEUCHZf+a8l9nosaMCZ2CKInhLUFkuwsOgIqEdD/Q6cTQ
 97tIvd2wT2FzqXpMLOz4FNKkf1nEoqSDZHYDz2TYVLJFdHpCl2wP1k2hx
 Bofqu3fo31IDnvZ6J9EtlRt47mjpx1y7+/a11roVeZljPpcohsT/4lwqg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W31Tc7i8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Sunday, November 16, 2025 11:04 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Tantilov, Emil S <emil.s.tantilov@intel.com>; Chi=
ttim,
> Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device unpluggin=
g when
> rdma is not supported by vport
>=20
> If vport flags do not contain VIRTCHNL2_VPORT_ENABLE_RDMA, driver does
> not
> allocate vdev_info for this vport. This leads to kernel NULL pointer
> dereference in idpf_idc_vport_dev_down(), which references vdev_info for
> every vport regardless.
>=20
> Check, if vdev_info was ever allocated before unplugging aux device.
>=20
> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, in=
it,
> and destroy")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index c1b963f6bfad..4b1037eb2623 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c


Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


