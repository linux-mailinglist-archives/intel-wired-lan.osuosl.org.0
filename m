Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mIE0HmwgKWpkRAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 10:29:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B001E667297
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 10:29:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=gZomgm54;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD78A60858;
	Wed, 10 Jun 2026 08:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dF_uSoi--H7R; Wed, 10 Jun 2026 08:29:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78E226087A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781080168;
	bh=kTd0kbdEno44gdte7AOCXwTqygpGAf5LJcXEBoK+sCs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gZomgm54oI3C+ycHsyhQH6H1m5yY1Ha0G1pcagOO0LBMoJevV441TU3TalzoJXzD3
	 E7/YgsoaPVwsWIx/OrAlOXQUHozoOTNJEFVmBxLRpeaAOJBT10aKjGvvN38IApVXm1
	 uhYCzxs33aowpmQ5SnlE3wZZ6VHU6Xi46bLsBtaW669WTS/egM1dSpLCLbxbTk0khJ
	 3sUQ8Iu5Fge2pS+RmrzxnGuntArxJDCtgUylysyQv6g8gdOkg0M0P0WXUo6qgv3sOm
	 sKU4rsKhxhFIDFnqSQe++siVZPdYGMsw0xQn+/OxVWPRBDhnXc7Lmasu9s5Wxnksbc
	 +kayCISXQZWAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78E226087A;
	Wed, 10 Jun 2026 08:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07E20196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0528480C44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:29:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GGT3TpDv_NDi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 08:29:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B1DC80BED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B1DC80BED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B1DC80BED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 08:29:26 +0000 (UTC)
X-CSE-ConnectionGUID: KhAifHh3R5eXzX8ODl6Thg==
X-CSE-MsgGUID: NiKpHrK7QNCT31U03KdWsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85759058"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="85759058"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 01:29:25 -0700
X-CSE-ConnectionGUID: S3yq+X3NS1y5cWddmYAz8A==
X-CSE-MsgGUID: 4d7Zid9vSvaIEq9WZfF7cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="243643677"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 01:29:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 01:29:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 01:29:24 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 01:29:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SlpBQ5yJawLsEzNFosVTGXhgXrfHezzu/wERer11odRaFhNbBuH6mf4zaOuRO6KDE+QBQcEdWs/Ub0/OlRcxWZ6Z+MRe48xThUkFQEKVFoRRqnkOLFIdK8DiJ54ZpJ47MqQYnOkBmIS7Nn6AV8SASvwae5jt/0Mmw9+fm0oykz/JPA1Go+S1rumXNoCauugorQ2vPkNOsBOwDQSwvZqXEc2pUzeLeeZqN9+bIpaDMFy3Bb/ZUwyyWTdq1nR1tAtdYy13HPjaO08jQ3RFQ1/vC6pFqF+dR0/f1L4PNzY1HjUp2OHp2hvm0MPTW3L4x2ZOCDXngeqMor+TQvMFbw83Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTd0kbdEno44gdte7AOCXwTqygpGAf5LJcXEBoK+sCs=;
 b=hbrIs434fjeChsQFu+DazM3Tfi3l1rsBTzbpVwkDCUwWZpJWiV+VY7vFE58jUYSCZgKWXpW6heg/lEQT978VELzHa3vyFVQ8XpsPpqje4nGeXPNaFbVH+/SJjO6qpkDYdXC9tOQsVaMwJV8ipGSXR/7OqncMb1f7cOq0iABvrQPTlV1wxu5ZHnk7Gx9yj7JiMKRJwRxjCVcp/GaX/DrZeWFhnrIUAh29D1KJdTFucrWSrumxVT1kmO+1GI4Kb09Ms4+S9vs0xzc9YrGe5JkeookUAG7/HLMm/Bk8y1lAOTRR2IvGwNwejzdF0vqv+1xsybSAtQe95/6oCnNxf4BrcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SA3PR11MB7611.namprd11.prod.outlook.com (2603:10b6:806:304::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 08:29:16 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0092.007; Wed, 10 Jun 2026
 08:29:15 +0000
Message-ID: <3b1b2455-76a6-4e0d-be0c-83aadfe18a55@intel.com>
Date: Wed, 10 Jun 2026 11:29:09 +0300
User-Agent: Mozilla Thunderbird
To: Dawei Feng <dawei.feng@seu.edu.cn>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Dirk Brandewie <dirk.j.brandewie@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <jianhao.xu@seu.edu.cn>,
 <stable@vger.kernel.org>, Zilin Guan <zilin@seu.edu.cn>
References: <20260607145706.2933860-1-dawei.feng@seu.edu.cn>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260607145706.2933860-1-dawei.feng@seu.edu.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::7)
 To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SA3PR11MB7611:EE_
X-MS-Office365-Filtering-Correlation-Id: a420f422-6749-4e0a-50e2-08dec6ca5b94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|7416014|376014|366016|1800799024|11063799006|56012099006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Emug1oe1n9oTrQU9k+YjzmpzoNQEBtE1+lIeb394J4H6FpgWIyjuUn2pyTAdwa82dAT4A19fyfQiqZpaXR9UjdnA8dlu9+TNaQG6lhM/nK9HQDMN6876M9JBzQdTHa+cV8+Z7YSZC4hhpwxcmZr53xCB58hT0sYR79UdlAQ0QH0yhZGKv/ZlJJpotfXDH+DLo9Ndl8yZ5uXo0tpBlqFkq9DiOI9E/qmAOcAbwrveh2nTGSAtHnWe6PN3EnAW8oU5XpMADO5ntYsLr0lJsQb6Icio8CCxGGUru22+6ykToBgQ2sQel55SkD0tweNxC4iEFYTXT8G6Dd+8CwEs2n/NEvia9p1pAvGMonxnbd4zARtVp/oWseQ33YkFIpzG77VifToqoVCucc5e2fc7lvWRWvfpnQEgopks1z2Z2MgvSKi8S0x7eTXgtauf/7R8OvTg61Yi7ThKBAvOGOl6cVrA4yasliuFQlL2gvFSGGcUmY8bcU2AKuo2eXrGRb6MAykZJl/ofBZii5mGfS/EEDFd09w9xlXL9yK/eIVEC5R3lrimUI0GG6YX1oOtjUmeBxP2/dC0iMolcNe3gU7N8B4vvdsFQwrAHik3iwVB8Xt6xmtQzVKKyA3GH+oXa/xY1bMXlPLBzesncqixOCh4pph9OKRDk+DVHfAcyA8+TVM9Bb5pY8aZV/n7pOC9m6oew4tY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(7416014)(376014)(366016)(1800799024)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlphaWI4UTBsWEFPL2lyS1I2S2RZTTdJS25VZ3NEa3A5QjlnTkZ6WUFPblk1?=
 =?utf-8?B?K1E0cmZuWXI5T1N3QjBNemN0Uld3THNxUU5wbjBRMFBKNktBa2xQL3d6aFVC?=
 =?utf-8?B?QzlYbzRpWHBHMlNxMVhpRlk1QlBVd1UyUzI5aWFWR3FZOFVmbk5jV1hidmdD?=
 =?utf-8?B?TkpMSldJQW10ekE2cVBTc0VzV3grNHBGbGROWGIycitQaGZKUENKd2FzQ2wr?=
 =?utf-8?B?cENRbGpHekxHUkVFOFJWS3MwVG44Qmc4NnlxZGk0cDFsWmJBaGF0eXdRYkpz?=
 =?utf-8?B?bkMxU0pwVC90SnI2TTdiRVg4WUtnNFNxQ3d5ZjJqQTZPeHJNb3k2djZlSGZv?=
 =?utf-8?B?cXByeWhEbWFWVHVvMjVmWFJWUDlNM3YzSmhINXlJVjNjNzNlTDVBUXhGUDVy?=
 =?utf-8?B?TnpsZFZIYzBXUlRFVHI5QzdqM0g4Z3ZvV3ROcXpZbjg2L3Z2WVZiQmphK2Rr?=
 =?utf-8?B?Q0o5VHV5OUltcnNWUytFYW5pK2xJbkMrM3U0UnZvZk5GREVnR2VmQjlCa3Jz?=
 =?utf-8?B?dnV0cDZhbDJJQlpFbTUvK1JEMzBwQmFBbGNaWndQVm50Z1RidjZqTkczQUQ0?=
 =?utf-8?B?UStvTlkxN3Rwb3pjK3FaOGQ4R2xRSDQxYnZsYTFiV0w2T3lqSEdiZUZmTzFB?=
 =?utf-8?B?c0gyZnplVWh0VzR5cFpNTW0xSU1rR0dBQ1BLaWYzUHRIL0VNeHAvbDh4T2JW?=
 =?utf-8?B?WmNzWndyUW13ZHZYZU5zaFNnYThTa3EyeDQvTGQzRnd4UG1hTEFvTms2d0Qy?=
 =?utf-8?B?WWIwZVZOSnJ6N1c1a0l3blY1UHFTcjNvVjJyenlQREI0QU9HR3BEQnJ3Q3V4?=
 =?utf-8?B?dVNPSU9WdU04NXdEWmlsOHlOMEVhMlpKY09nU0duNUZRdFJ2VVpFNXRySGFP?=
 =?utf-8?B?b3lKQnRNRm9FdWR3bVI4MGxRcTlzSDVod1R1K0RPYncwNHlWdmI4dTJtb3lu?=
 =?utf-8?B?Y2UzaUFmVzRKQjZIS2RDcWZKT1Q4ZXNmMTlrYUNTbEdmMHlDaDFvS1VZenZ4?=
 =?utf-8?B?RFVVSkYrbCt6SEpxU1hXcDFCQWhWM3VOWkttWC9XVEVCMzV1NWxpRWJYOGNu?=
 =?utf-8?B?T2xXeTc0M0pTOE9lc2xoZzJFK1d4ZUkzYTZGd2N2MkF2RGo3YWV3enU3M1la?=
 =?utf-8?B?MWxkSkloM09uUzJDTjMyUm1iRGhGcDB0RkNlM3ZJbG5PSDJxRmlpZ0hhSjNR?=
 =?utf-8?B?OEEwdFEvM2lVNjNyT0ZsODNrV0J5WlJlRDdQYXJWSXZYRVVyYU96RWEvS1V2?=
 =?utf-8?B?VnlWVzZvbS8xRGtyc3VDb2s4T1lBcG55Ry8veDRtckd1NS9uWTBLYXZSK3BI?=
 =?utf-8?B?L29WRkZYeWFiSjRRY1BWYkZIUGN6RE9KbUdNYVMrbk9UeSt2VW5IalVLd1dM?=
 =?utf-8?B?QmFNWmlyNm4rSmVCMldlNkhUUUtSZm1jOVE0TG1HTG45NDE3SmJwUzA2cGJH?=
 =?utf-8?B?bTVXakFjcDF3MjB4Nm15Tll5bDh3dHNpY1dIM3h1ZUkzRGRsOGVrV2I5cXda?=
 =?utf-8?B?L2llaWxjKzB4TmVwQytHc2FCWVQ2Z2ZtMVVJcERnVVA4S0dsOUNBSjFEdjJU?=
 =?utf-8?B?QkVtQ2RLREtYVnFIam1hQjAyRWYwdnFQUE9XZytnMEZVTnRpN2F3VnlvbjI2?=
 =?utf-8?B?b0k5NWc0SDJaR3d3aGlkYWJZNjBoeFlzeFN5OU10bys3RktSMSs5dTBSc2VM?=
 =?utf-8?B?SVNzMFJyOE5ER281ZUJ3SXI3MVdSWlZCdzkwUThNdXZqWGFSRVZQbFhvQUQx?=
 =?utf-8?B?QkFBNklMZmRBSnRqeXpKSW5FUjZkbDJqd0VpcWpGSzJXdTQ3eUMrUnZ1dmt2?=
 =?utf-8?B?TVFzY1FWK0QyWjh1V1ltWjRRRXRQc3gzYW90emxtb2JNZFo3TG5venZZd3Qz?=
 =?utf-8?B?T3pEa0hHWXdNTjBpNXRkaTBNbVBoM1hHWHluS3dFd0hvbm9GUDB0cUczS09E?=
 =?utf-8?B?bkJtRzNZNHMwQkJ1VFErQTZuR2tSN0ptMHdXM2RHTjFjWjR0MEx6eTc5ZEl1?=
 =?utf-8?B?S2lyU292RG1KYmZZQ2pTQnl5akhjNGdrNm1SR2plK1FrWmFvTmxYTmtueFBu?=
 =?utf-8?B?NDdLYm5LdE85RFBIYm1aSXNMdURMV2duSG9LVVNTM3FjZm1EVllzRnV5MEp5?=
 =?utf-8?B?NUJMWWQ5L0N3R3EzbFptamd6NFZGbDRtcjBrSmNtNXNqZU5xWDVNV2owUVdC?=
 =?utf-8?B?YU5pWjQ1RktXUjg5Z3ZLdnE4a0hvOTZwaGJ2V2pUTTBVTDJMSzR6U29OSUNy?=
 =?utf-8?B?NlJvazdSNzlmWDVUYzBqK3pxVHdNcjNUQWVXRVZtWk9ZOXhXMXZOSlA5bFN6?=
 =?utf-8?B?OWNnNE40aW9aVzhCNHE2akUwcWMyTHJuU3BhQWIyNDFTRjBmNjhGQT09?=
X-Exchange-RoutingPolicyChecked: ewPQV770wPhnrrDgepDL47bSS0/AY0B/IsLhVCdIWFn4xZX+1EC3RyS6EE/bqsJy30mGEJBN0LJa8TreLRASm3lKWR6C83K5j7CyrT3uPwjgjE2dV4NppoKV1foc/qKxFlbb1xouEOHxbwvrrrGU9xI+P4CBUhqHFyr3kgtigOdVbBacZ+W1Ta+yU2GRQeyNC8aokAYH7dbzhadbiINHxvEC4szsjmbMfnI8lGve6QiWjC2cO6FbFQt+t3NTGhjjKrEYiRckdXU4W1W6o7s2dvkUDCiTgec9vhI0lL5oYUvgPjYUSCHNamsctb4rHlJ3N4SLAmyA1MQcVXWa5C7qgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a420f422-6749-4e0a-50e2-08dec6ca5b94
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 08:29:15.7425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1FahHoznPzQJOlhTnz2LSqWLnxulueB2BbQvl4XBeqRfQjiFbqn4awkg4imHULKSsuZDVYNOIfPWlmQO9/aBtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781080166; x=1812616166;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hgxVN2zqcpmjly7y2tkgW3jbZUOZ1MXkPDQl5IFkpO0=;
 b=VR3F9CAy8mqhemOsKEWYWZfj8gffexKixkC1kRC6dMYS5NoDxnWfmaLF
 HTwzKZy11THPgNHtNiOIQbgeF2gr94/a++ZHjP9QhDOUinPsxj6pgRuGf
 OwFO+QJHTIZMU7BiuwbsmD+einTLjBv7rEZ9kS5qVBpkU+aSYfyTy82E5
 +XtESlgjYoQf8cdh3BLfjr2CXzwCEW5dzdEx5Xt+v7kBs/SkD6shdBm/7
 S659a+P1Zs8EdGBZBFD2pIz18ocW7P1X5DlCLSBH40GtpePPE0kb1hPsh
 q01UH1hBQUvfEiJxpYvC8P6NvDKuVdBSTNB0k+9lGicKS+2c/ftIvKDDf
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VR3F9CAy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] e1000: fix memory leak in
 e1000_probe()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:dirk.j.brandewie@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,intel.com:email,intel.com:mid,intel.com:from_mime,seu.edu.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B001E667297

On 07/06/2026 17:57, Dawei Feng wrote:
> In the e1000_probe() path, e1000_sw_init() allocates adapter->tx_ring and
> adapter->rx_ring. If the subsequent CE4100-specific MDIO BAR mapping
> fails, the error handling jumps past the ring cleanup code, leaking both
> allocations.
> 
> Fix this leak by moving the err_mdio_ioremap label above the ring
> deallocation logic. This guarantees the proper release of these resources
> and prevents the memory leak.
> 
> The bug was first flagged by an experimental analysis tool we are
> developing for kernel memory-management bugs while analyzing
> v6.13-rc1. The tool is still under development and is not yet publicly
> available. Manual inspection confirms that the bug is still
> present in v7.1-rc6.
> 
> An x86_64 allyesconfig build showed no new warnings. As we do not have a
> CE4100 reference platform to test with, no runtime testing was able to
> be performed.
> 
> Fixes: 5377a4160bb65 ("e1000: Add support for the CE4100 reference platform")
> Cc: stable@vger.kernel.org
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
> ---
>   drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 9b09eb144b81..d7f5c6f16142 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -1222,11 +1222,11 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   	if (hw->flash_address)
>   		iounmap(hw->flash_address);
> +err_mdio_ioremap:
>   	kfree(adapter->tx_ring);
>   	kfree(adapter->rx_ring);
>   err_dma:
>   err_sw_init:
> -err_mdio_ioremap:
>   	iounmap(hw->ce4100_gbe_mdio_base_virt);
>   	iounmap(hw->hw_addr);
>   err_ioremap:
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
