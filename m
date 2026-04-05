Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLUBCZMb0mnvTQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 10:21:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE3439DD59
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 10:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAE5240AC6;
	Sun,  5 Apr 2026 08:21:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhsUoKzwalGM; Sun,  5 Apr 2026 08:21:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A31F40AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775377294;
	bh=D/SJXgdslmii/D3YJRcyQ1Ffs0dh+1bbUJiJKCbH6nA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RK4XhHinzY5y5NItXs2Xe1m+VWTkAAUI/Sfl6oES0+rTHK0vbzy9qUgq3w4JVufo6
	 MDI/3QgScWcLE6j6QhNyYowTa3iJ7d5WD3eo0LTlCAjyI6It99fYnZ3+SWQZsw4kFp
	 l28GF9hPlzMZ2fHbs/SqEZg1nrWwno4ibFygjx3bUw0W9Lrm+qWsV+DYYtRuKMEwO+
	 FqlSlkJkdmLRp6N7lLFeRimn82+MRd44nV7BKgWpwChuIjFUO4LCEVuImCbu+Rk5bS
	 u0MdAit7Wjq3sfeGEEr/77EoxKo2Cf9aqOaZs7OyUJVZ50nezHdzHIE2WGnf7Y/LGV
	 0ju9cJSzpEIfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A31F40AC1;
	Sun,  5 Apr 2026 08:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 528592EF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 08:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40B704008D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 08:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LEjyeVU-ilNu for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Apr 2026 08:21:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 604D340060
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 604D340060
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 604D340060
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 08:21:30 +0000 (UTC)
X-CSE-ConnectionGUID: ABo0XB9xR56Ijxw1GyZzzw==
X-CSE-MsgGUID: 8PM1ipJ3St6CoPrp5XU1IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11749"; a="98991650"
X-IronPort-AV: E=Sophos;i="6.23,161,1770624000"; d="scan'208";a="98991650"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 01:21:30 -0700
X-CSE-ConnectionGUID: Bb54i1z7SpOPtlKuwP3NYA==
X-CSE-MsgGUID: RLeMdPMRShiN5DUon0Pd+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,161,1770624000"; d="scan'208";a="226788684"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 01:21:30 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 01:21:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 01:21:29 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 01:21:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jnqfTLLbRKbSZNNwzNu8twggwHPlZ/C/59bcI5vCLfkaEwew693b5PyguSXGN8ugYW4A6FZsXyRtA8Ua6tgFk6rm7oWw12yG9x+MKFLsOtwp/hNWwdRhuVbwvU3fHOr0m1Ef/6pS+OvK4hvMN8hJMVJJnEGwGK2kV90R5dGXU0fq3PdmiDgQrwOyQivm53bTdGqf39l9IwRKcMfHoKrUK8qB6q8ld8k2rLaGsQLwddjTNbtEYdfOpqXh1yKi+havKzdu5M4NHfFyjilzufBCeDaZx49/9tCoK/13vY4rK+UvWkJMCXXdXn9fmi7FC6mlIrTLxT6x/nJzqmQ5JP2xkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/SJXgdslmii/D3YJRcyQ1Ffs0dh+1bbUJiJKCbH6nA=;
 b=gFidLjQypRclMuM+obGpq/TNSNv24bNi1QJV19emaVsDzqAgqJSXilgHyAQuGJ1h7O9tkruDphuVM8ZK0RcQF/6w6cB7U1kZAO/jMgEOF+KuW+tyYy1sj4tjn93OO7Is6fyK3xPLu3Z4/DAsK8knaiflncE+3sv6aUj9zVItqqZyrCofYpkvNdX9YCxy85FC76QAzweqSSg5ny7umbxfKsnFvlqDlpYkw4BjZQZvt3+5QaSzo44bcalCuQmLwIskNEWYqldeRKGY+1gVZevL4Miqc1K3OtJcLCqPLOQxYd1qGqk4UF49kIDqGUVrDqi8WGB+oA14hxmzyKRcIaNKuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by IA0PR11MB8397.namprd11.prod.outlook.com (2603:10b6:208:48b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Sun, 5 Apr
 2026 08:21:26 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9769.017; Sun, 5 Apr 2026
 08:21:26 +0000
Message-ID: <8607e5ca-9224-4803-91ac-fc0964f79e2f@intel.com>
Date: Sun, 5 Apr 2026 11:21:20 +0300
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Daiki Harada
 <daiky0325@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kohei Enju
 <kohei@enjuk.jp>
References: <20260331103924.36422-1-daiky0325@gmail.com>
 <20260331103924.36422-3-daiky0325@gmail.com>
 <IA3PR11MB89865406A4D4891BF48F2D47E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <IA3PR11MB89865406A4D4891BF48F2D47E550A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|IA0PR11MB8397:EE_
X-MS-Office365-Filtering-Correlation-Id: 06da8cf6-3258-4d6b-a3b8-08de92ec54be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: JBlw32H9l7JERgYUVDgarF2zKzGFY7z+xX352Q01Q0Z2SVcLAJwDL9TXLTV+9fEgBz5LimaoU3rw1g7jN939gFrr73I7Dmvji/72toLD5c/AV11IgzJ2xNPvxmkvgq6Y5V0OChW0MuQqMOPxMfioHEx2Ia822xUROoAga8jRvmsXFxDQz/ml8rBGp767y1WjddNGuUoKAmySCKdxfzD+hZ81dCjNZ3vd4XYROT4K1dE9SIWFyed21w1YY8zyYUQaiaSz7atRRfoYx8QfXS41rwqbOn1tORPNWLo4Wz5/KAw1+qD8oD5kMldgRBoPWemKTPg9sH9J57ynGUEBEiL3/U+89ex2lLQ0AlGfWLG+22DtAYFPPk+ETgpt9LzrDPgDio8jk8NqZ+U/N8HIJUb8vs5StKbl5PmaWbBXoajOFIIxOrxa9jW2lZ4PP8Iux48AC7eKC/Fx3qY4kD+aNDZckY207hsCkviEad9FCXyZWFwKLbT8OjpkAUjLswKg3wqYtXyutEhrqV77HiWQu2sFOfUGDVzeUnzh83ZxxXuhERs910/k98OVW/HuIkGhguhIiYcLeUAXfiGTLMVekg/Z4oggTnr4EEwwm/bW0Mlutr3kpX6phyUfXcXskZtSs2ilcJYX3Yd2bQGF/9o3e/kA5CvEQJSm01WUqh66ZxD3tBWNeou1ui0JpiPLPbWb6yXSODCj5C0du/Qrn6VuB6oB7k7EezvQEk3sRMijbTow0cw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZE1qZGZZSlByYTJEWElma0thUEFXSzNYbndIek9wVng4ckZSSTZqOFlvakdJ?=
 =?utf-8?B?QkE5cWJObU5BbkRhYTE0dVNtVGFjRFVLWEJ1R1JGZHNpVDVYamxLd2FWK3FK?=
 =?utf-8?B?Nmx2eUI2VnlBZmJCQ29SQ0lHbWg3eUhDYUtkS200MG9QSzhIbnZ0bnc5ZzV1?=
 =?utf-8?B?eXZGQllGQk0xWmt6TVpyRDFOd3F3bW95b2RzZjRMSVRFQ1BSS3BHdFdpMzQz?=
 =?utf-8?B?L3l2b3BZMHJ6dVdTUHFaa2ZHRUEvS29yby9FSk5UdloxY3FUSXRUZUN3NGNX?=
 =?utf-8?B?TzNUcit6OG1jeXVYTlQ1MDRqTy93TzBBb1EzRmVSbzZ2eUtialpRRDRMclFt?=
 =?utf-8?B?N051aXFrYW9nQTBrbEdlNFRxUzlPeW5yMUFBNGdUTUlEeld5aGplcU1vT2px?=
 =?utf-8?B?U2poeE95dEs2cDVkRTlBZUM3SDBWUE82MUYrMVpYb0w4aWpSUlNPekcrbjBJ?=
 =?utf-8?B?OEttOHZsL2txdHkyYkJrMHNiWi9jRTNRdk00QkxvRXV5dlovTnVnaHVSZkxj?=
 =?utf-8?B?anY1SkNmaVRteFFHNVd4YUlGa2tBb3lXSDZOSndvUWU2Z2JaVm9qN0htekkz?=
 =?utf-8?B?ZEJqSEd2dVhCNVdlNVZMbjQxY0gvMSthaXZ6UEZxNUlJMGNzbUN4VER1d2xw?=
 =?utf-8?B?TUtpQTdMUVNwY2VhQS9nbWVwdUdma1grYU8wRXVSSlk0Kzc2WFNmS0xvS3U2?=
 =?utf-8?B?Y0JhejZaOW5URDV3czc0R2JTUG43Smh1RmJnUUU3Z2t5bnFCQm02TlVwZXox?=
 =?utf-8?B?OFdzaHNYMkZRM0tIOFdMNVpQOTBraHNEQkh4MzVtVkJEbm9OcXhPY0dnWFpm?=
 =?utf-8?B?cnlWZEEzM2psdnNvbkEvTkJKa2VUSWVUcXpMdmFPb1NVMTU2dG5VZ2ZxWity?=
 =?utf-8?B?bzBkOW5sbDFEVnlPRmRUalpoUDlzZi9NdjI0eStQUkJGekdMM2Zab20rTEJl?=
 =?utf-8?B?NVVPYjdFT29DbGRQTUVyNlZZWm1qbUlDOFkxc2hJV2QxZmEzZzNsZEZBUHJX?=
 =?utf-8?B?YjFyNUpkUktJRlkvTGQ3ZitieVR4d1pQTDJjZW1TTWpaMjh6TEpkb3hXaCth?=
 =?utf-8?B?NWJHWjg4cUV1bmFHNmY1V1BBYzVvLy9EbkE3V29pTDJTMHNPTk1xY2QySUdn?=
 =?utf-8?B?N0hQeTNMK0h5M2NVOGJTcGw1VDVHSGd5WnNwSTJDd09veVdhZjRGTTU4emF0?=
 =?utf-8?B?N0ZzZG8xTWJ5a01HanNOZFM3b3hGRkt6V1dZUGZPMjJoUW1IVzdibG82Y09G?=
 =?utf-8?B?MHplMkduVGJyelN6ZSs2elo2WkhCMDFzai8xdFdNZGRzb0crMFcrUkxVcjVQ?=
 =?utf-8?B?RVdYQ0c2ZDJLem9YZitTR3hNcVpRMTNleGEvRjRIc3JnbGpjVUFSTy80S3Ar?=
 =?utf-8?B?U2Z0U0FxQ2gwSWxpMUl1bHFGN044QVUyWjRZVEx5ancyMU9hMUpGT0k3Kzgy?=
 =?utf-8?B?Q0lTbFcxajh6ZnpTRkRMbDE4WTBDRUFsRGxZdW9sMFp4RDVZZnBLVm03K3Az?=
 =?utf-8?B?YUJ1aWZwRkhhOVhtTzJkZjFiOTh1b2QzTU05TzJxcDNVaUh0UitJYU5vWTZu?=
 =?utf-8?B?dWZVUy9uWkRMRGsvdlNXVU04QjV0c00zTm9VNWwvSmRzdS9ZUXFJa0V3S2hX?=
 =?utf-8?B?UXJQck41S3BhazZDUjh3dkszL0Y5WlFEMjYxb3R0dXFQelNTTnR1STJxa3Jo?=
 =?utf-8?B?Z2dSVzJNMStRckNqUlVDQVdSa2RpaFE5dmJkbE8zcVdPakVHWmc4NVJ6STRt?=
 =?utf-8?B?OWM3WDllbFZFT2JEeVM1T1FUZ3daMkRlc1BETTZLVEFXSXduYVo2WGlocWRu?=
 =?utf-8?B?T1REQ2NZREhLVGwxSW5UeUhWQUlvdDRoRk5OZUFKRVdScjNnRU00MFFCWmtn?=
 =?utf-8?B?b3FLOUVua1hCNUthaDRDTG9ST3pienc5VVl3K3h0RmhPeFdmdElsS3NaYUpw?=
 =?utf-8?B?anBCRVVNeUtGdy9oZVowSE00RTRtTkVvVllFaXR6cVgwVmlOWjVnZmt2Y3pj?=
 =?utf-8?B?amFlQW5DbG9DeFhqNjVMZ1R1cjlxY3lRb0thVE5PeVl3UVpQWXdWKzNabTlW?=
 =?utf-8?B?TndjZmFJbkY4UDh5UFFEdDhTSHRjblE1SXkrN0pDQWhyZTFpdFVUYXlkVWt2?=
 =?utf-8?B?cmNyREVXT0hUYm9VcXg4WjRmY2luU1l2Sk5xNXEwdDlZbkdzUWV5NHNKTEY3?=
 =?utf-8?B?OFdzZERFQXhjQXdXczU4dHB3OGFZRjdaZjhJcEVPWnh5SlpDRmoxd1BkZk96?=
 =?utf-8?B?YlVVb1N3Qlo5Y1FjMFZ4R1RYcm80bjFXeW8yQ1R4OERJOG5XZExJeTVVamRU?=
 =?utf-8?B?c0ZWcUlyOFEvS1owVWZGUGpoN3NDMkxyY3QvdDV5L3pYRzA2VXJLaCtYNGtH?=
 =?utf-8?Q?3WXFXBao2Lmdh+78=3D?=
X-Exchange-RoutingPolicyChecked: pG27tjp6aUmL50rY6XO5MJvI+Ep/6eAPiaYw1wOkw+n1g/xALiyqizKe+y4LxwisHwGNyzGO//ynZdD4m3eb6fL+mD1ZxJDx3Qz8rNXRzIVaTlcG5jfgAH0tmKjV60vFIWawjdtUFEuCIe3Tkfh82HbgX0WA/TXolVAB3VrFqSXqrJzWOf59s8y6OzKArkX5vKqQt7jXXPyKW6STGIG4KcGZbi9/xcVesb3/LqsUBbjS3SNv0udGw9uE0huGcb2OsoyRyQH/Z2VD6zd/pRWdosu1ygD18ZL5JHA2WHPMBhgbz7Rj09TxlUpC+FPobwyDAGFz/k+JBwHqvHjnQ/TefQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 06da8cf6-3258-4d6b-a3b8-08de92ec54be
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2026 08:21:26.7170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 08vfXWlOt8tcUfc4qQvsMarbF2mVvHuxOQzWtEDt6CFSsj+63QIMyTxNHhHzuqzXoT8DaX3Q33/hgGvShpVfsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8397
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775377291; x=1806913291;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9H/HRH8gkrB+wl6518UbFm/bHZKo5B+caYo+rC3fA/Q=;
 b=GqCjyQvme6+rBd7TcyDAtv5e3l9/o/zaeYy1AccXvuZ+G5cXHLzO57zY
 h0Qir/5uEkgS9U6ND4APDkKq5Vuor2LnI6LJ2bP55mE0jsiA28KIYaxoB
 WhnzHcxp03CnwbcC0rgZ4mqR/TX5ez+E9/bAgC3KLYriIdk+YYsup5pc8
 TxgpDIvBf8zDt0qwKE6npKDQ06FkJc0MZbiX58oxKlDGcWdcUJcWDewNc
 6WK5w/5zQzmK/hfdqHw5+8Aa720CbRpQZyT/I+OlavsshshfDUUCmbMw1
 ZLs/C3hZmgbATZRMs7JCFLsAG8ifmAHaJpGlFTNMyj7EuV9zvYL7Vs3qp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GqCjyQvm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:daiky0325@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: DAE3439DD59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 01/04/2026 10:53, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Daiki Harada
>> Sent: Tuesday, March 31, 2026 12:39 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Daiki Harada <daiky0325@gmail.com>; Kohei
>> Enju <kohei@enjuk.jp>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
>> napi_schedule_irqoff() instead of napi_schedule()
>>
>> Replace napi_schedule() with napi_schedule_irqoff() in the interrupt
>> handler path in igc driver Tested on Intel Corporation Ethernet
>> Controller I226-V.
>>
>> Suggested-by: Kohei Enju <kohei@enjuk.jp>
>> Signed-off-by: Daiki Harada <daiky0325@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 72bc5128d8b8..712605886104 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, void
>> *data)
>>   	/* Write the ITR value calculated from the previous interrupt.
>> */
>>   	igc_write_itr(q_vector);
>>
>> -	napi_schedule(&q_vector->napi);
>> +	napi_schedule_irqoff(&q_vector->napi);
>>
>>   	return IRQ_HANDLED;
>>   }
>> @@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, void
>> *data)
>>   	if (icr & IGC_ICR_TS)
>>   		igc_tsync_interrupt(adapter);
>>
>> -	napi_schedule(&q_vector->napi);
>> +	napi_schedule_irqoff(&q_vector->napi);
>>
>>   	return IRQ_HANDLED;
>>   }
>> @@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *data)
>>   	if (icr & IGC_ICR_TS)
>>   		igc_tsync_interrupt(adapter);
>>
>> -	napi_schedule(&q_vector->napi);
>> +	napi_schedule_irqoff(&q_vector->napi);
>>
>>   	return IRQ_HANDLED;
>>   }
>> --
>> 2.53.0
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
