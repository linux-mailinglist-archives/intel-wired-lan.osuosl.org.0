Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB627C9BAD8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 14:54:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41EB760BD7;
	Tue,  2 Dec 2025 13:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D3nzIDXWPjC0; Tue,  2 Dec 2025 13:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65D6560B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764683685;
	bh=hy++HNpzaT3Kq86Y7oy5q2aQHMMq8RvNJu3uJEzNWzU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JkfAadjmGNH7jxx4zB9xLjwRJUFabZiwkoDkUw8GTC3dNcxoGXDlV2jh8uaCjevwe
	 53kDucmLsWZ2HfZF2XEdTMTENpuSKVr6jf0LO5Kn71bQfioBdXoUjaNWyDRyqif9rS
	 0Hbo9aa5BEMjv8P/pyTyj35xcWS8aFduz4nD4Cc1vkG36781K28/kDhwKRBc7BAD9L
	 GyzEk7PkVfA2q7g79PuvLjcQRTB5N0tURii2b4OHOlob45PUVFhJ9bLL3OhX4D3HW9
	 wqgHCDm13SlEa6m+7PXmbdNHLnwbY4e9C8d7W9/PBqnf2GYdblSUaOHv/WjwQ3FDu8
	 ITlkGNoUc0xaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65D6560B15;
	Tue,  2 Dec 2025 13:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A5F6DD3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 13:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 887D960AE6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 13:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jt5QsfOKxxX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 13:54:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7988560AB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7988560AB9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7988560AB9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 13:54:42 +0000 (UTC)
X-CSE-ConnectionGUID: ZizOL6+7TWCBhE1atJf7Iw==
X-CSE-MsgGUID: ToFd+gszRJKSkr/pxwsraA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84045113"
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="84045113"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 05:54:41 -0800
X-CSE-ConnectionGUID: Ywa++8kESGadqOq3o4oxKQ==
X-CSE-MsgGUID: nYaNLJ0ASCOaG2XVisnX5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="198580053"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 05:54:42 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 05:54:40 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 05:54:40 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 05:54:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BW4iLB137L6ML0aKuViIWweJUqwK3UmIIANKY9DueQtWFmM26vUFNf7+jwmU43vvv4UB2Nf696oE04B2KJFVwjMbA9IwNGDFNsA5CHq+zcHLCjqTd3+wvx4bVA6LXAvjvEiIIzjXqWBSn383PVZGSBqUEthwCkrs7CaVczoJEwgnRtiUKR+mYWd85GHWfR5RsiKddQ+zYskY7C99DQz5mkgK8dxiVuZTEIMQy2llagm7Bh2Ctsfios6iVcj7GDqQJkAMOSCjRV1poQVMqelM89r8TSsWevM9dGG70nck0bONv8wWRYmcbL0anAmduw4aMWjv2awvyodXEH2qfaaysA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hy++HNpzaT3Kq86Y7oy5q2aQHMMq8RvNJu3uJEzNWzU=;
 b=sFLiX7+TGsNN1wQ0L4is/V8C1X4V3wlw1GNTHfIN+Dr9zq5zTDCKmfGP/XyLZ5vvRtyXAE5GSyvMEQuf9wU6JpvtI7KAXx2PYk7oQpYoG76C+5XfAKqn3Iycn69+fiwP38YixwecilEpWJAJdme4ErfjARtnrmdwfOp2IJg9WkYdcpkhGz/jCOF37M6MykheJy+/PNANjJ8bGaXeDBeLz5jCANs5zH5xjKRR2ZBGUBic3dsNZwk02e/7SgS7tdRI4l+X7qrHEHjRlMEgvLC+P8XEBXafsdWSw6vETRoSwV4bEPzzfpi6zbohMH3KewvPj+voaA0KD9/AE3SSNImYwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 13:54:37 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 13:54:37 +0000
Message-ID: <27edba00-5d5e-46e4-b51c-9a69ef11e9a8@intel.com>
Date: Tue, 2 Dec 2025 14:54:30 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-5-jakub.slepecki@intel.com>
 <IA3PR11MB8986E6C10E42C5DD6DC717B9E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <32fd9c75-e133-4f53-b839-101a579fd79f@intel.com>
 <IA3PR11MB8986430837663B174A8AFDA9E5DBA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <IA3PR11MB8986430837663B174A8AFDA9E5DBA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P195CA0081.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::34) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|BY1PR11MB8079:EE_
X-MS-Office365-Filtering-Correlation-Id: e64c42f9-d33e-43bc-3100-08de31aa54f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVVvaHFtb256cGwzMzh4TlFtdHpwVEpkR2VZSFlvZ0tPNlVhZEJLK09yUWQ2?=
 =?utf-8?B?QXk1M0wrR083Qmg4bDNJS1RWTUdhNUttbzRTenJqaGEvUVJ5YzVFcGRudVk1?=
 =?utf-8?B?TG54UTR0dFhKWEp0bzZvT1RhTXJLZ2hIbUZZYTZOUjNUZ1UreU9mZUxRNVRO?=
 =?utf-8?B?QUFadVl5MENKOWhGemNVNWFnUEJMSU82RTljU3pTZHp6Q0lFNjVKNWlmOXlN?=
 =?utf-8?B?eXM1M0dhcTV5bGo5NzFwa3ZML2tLbGpEOUliandFRWxCdVpkVWg3a050TFlI?=
 =?utf-8?B?eUs1S0ZBUk9yZWtHczIwcWNzdnNxTkdCSHpYcHc1c1o4SUl3dHZJRUY2RlZs?=
 =?utf-8?B?Z3FmMlU2TVMzU2txU1lQd25YVXNjZTVHOS9TMU8wNEFOdmtPRUZzV0JMUDN2?=
 =?utf-8?B?enJzUWJ5dXNhVllZSkZCcWMvbGlHSGlRV29LaXVoZFJtcGhobW5iYzB2YUdG?=
 =?utf-8?B?K09sV0dVem0wUEJnTzcwMCs3ZDFUODcwajQ5eDIreUtZWFRzWkpRN1RjTnVv?=
 =?utf-8?B?ZUw0ZjRTNVkzcGNRZkd5OWx2YVRwWStqbzFxSWttRDRrZVR0Q29YR3lieTR1?=
 =?utf-8?B?MDNCL282TXpCVTBwemNwd1pCTEhXd0ZDYldlYmo1RjJ1dExZVjVuVU9hSzB0?=
 =?utf-8?B?aDl1dXBVRllNTkk1NXFKS3ZqUENIZEtidmxoUTVHWWtDZlVLQzV6dXJrM0xy?=
 =?utf-8?B?bmNwM2x5SnBqWUZrc0I1SHJUVWFSNmhQY2tvZzRITm5BWitqWnZWbk5Yb01j?=
 =?utf-8?B?SGNTbWNOMUd0T0FCUWJGMVFmVEM0Zk9YN1NTTjdMb3VVb2E1YWNwbFgwWjcw?=
 =?utf-8?B?TjRJQWl4QlpmT0JpQkZPb3ROSHJrK3FweE42RTFkODVSVWpEQndMZ05jZ3dU?=
 =?utf-8?B?WnU4c3FETFNoNGo1WElyd3djQ3lIaWFoQmI4N1BFT2tJREJYTCtFQWp0a1NH?=
 =?utf-8?B?bGRjUThMQkh3cDMwNy94ZGlhMDM4NTVReVFsNTdwRzFZRUdXYmczM1FQSnI0?=
 =?utf-8?B?ckgwc2JjQ09UazRXcXptNFlQSmtBNlE4VERZZGtqeGc5L2k0OVNDY3JWNS83?=
 =?utf-8?B?Rm8wREcyYmV4VzJDWnV6QXNCOE5nZnExeThacEVhYmJXV2ZIcjNrenJ3RUZy?=
 =?utf-8?B?Rm5LK2phT2cyaVY3NnNuMnhOVXpKZ0JoTTB5SC9yNWszR3FDM2hteGszTytC?=
 =?utf-8?B?L2ltcnpLWWNsd2IvaXhuNjdiL3ovVlUvSVk1MHg5REFPckszMTdZSHJrczIv?=
 =?utf-8?B?R05kbkpxMy9YM3Zjb2VCZ0wwVDdLSS9UbG9MMllZeGhnTXNPcFJBOCtiZ1do?=
 =?utf-8?B?emdDdkpFUkg1M216b29wRUFNc3pLMXhDYVB2K21wcGZQaDA4WlV2clFpdTdx?=
 =?utf-8?B?QkpEbTVXVnBMTW5JSGdueWltYWVPYlI2WFAzVFhHTXExWTFwakdMdnVJUWw2?=
 =?utf-8?B?cjBBb1BScHpwcGlHWTRnWHBLUXVOUUdPZTQwODlhTmRRQ2FVVWtmY0Q5MWFi?=
 =?utf-8?B?bWhXNkFUR2xLZ3IrWFFpblhSZUEzSzVUUHh3NTFiOEtPVkkweGFucjFyT3dU?=
 =?utf-8?B?aVMzcnVUNmNIOHhTV2Q4R3BvbzVTemxnQ1pZUTNUc0JBdk9rQ3Z6cGVWbVFG?=
 =?utf-8?B?YTg5RGdkck1ERS9BOXR4OE1XM2JWdTB3MHVFOW50dmhtdndIQUVkR2hpenFP?=
 =?utf-8?B?cUkzekNvRjRUVjM5eGZQT3kzR0pqdUZSUnpJSm50OHJqSDg0MU5hUkZqZUxG?=
 =?utf-8?B?VUc0T2RJL0RZOTduMktTT08wcHJhK054THl5ZmtTT25aRkVBTzZ1L2dDc1dI?=
 =?utf-8?B?Qlp4OUNYOExyakNlNkRtM2xWaGt1R1N6b1pkMHJKek55MHFLc1JwVHN1VElB?=
 =?utf-8?B?YkdQS2t3dk0vakY3RThnR3gxNnlyTzhLY1lzd3JtS2d3YVFXT0VrcTIzMC9u?=
 =?utf-8?Q?VoNtLRZaMuByWSt4cg4zGC4ZC07ViLqJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dURXY2UwWnJseGlzZE8xYy9JTEliS1g1ZDEzNFM0UnhnTE5Hei9rcG9sMEM5?=
 =?utf-8?B?Yk9zR1dDNjN2U0NHcjBaaGxMVVFLcHpFMEhmMnBwbk16UTlTZEYxbTdNeDRh?=
 =?utf-8?B?Z3Y5bXp5b05ROGlYUGN4MUI1TDd1QjBoUHh0NjZZWU1aQ2t4MDhUb1cwYkJj?=
 =?utf-8?B?NHMzMExMMDdjRlFmdnJDUW1LNVhFa2pvVXg4anE2dXk5a2gxczdKeWpzT0xj?=
 =?utf-8?B?bm1nNnVPbnMzK3ZkT3dqclVNcFFLZHpJTlk2QVlTOVMxK2Q5N0UxTEVjWlM4?=
 =?utf-8?B?a2ZXcE9yYUFRR29FZXFtTG1HSm9JRlVESHN1QkhnajBUQlo2Yk9mWXFqTEQ5?=
 =?utf-8?B?d0dlblRRS1FlMVJCL2I1anN3ZmszLzFlZDNLR2ZvUE5paXhNdzR4YVFONmFL?=
 =?utf-8?B?ZkxaUTlIakdtZ3BReWlMS1p1ajZocDBQcHJKQzFSVExoYW5pNjJ4OGhZSTJt?=
 =?utf-8?B?Qmk5MmIwSFoxOThKUHJSUm1LbExlVHNnRUwydFRaYy9LTk5RYVBrcktSWEI4?=
 =?utf-8?B?NHlyc0srSTdYNWQwVjVxVmJaeUZyVm90Z0s0OUFqSmpza2lMSHFXcUNtbUhv?=
 =?utf-8?B?V0Q0a2EvTGRtNjVCS2ZoTXBtS251amwxYnE0WjFvV1ErNXJVNTlMTGlHUFR6?=
 =?utf-8?B?WkEyd1B1TDNUVis0ZndqU05lU3cwMzRCNEpQM0p3ZitWSytGeXVuM2Z6RUJZ?=
 =?utf-8?B?SCtRRXRyYWNRUS9JWWdGMDNmUzV3NEhMNms3aUJQaXV0VVBTeGhrbDN0UWFp?=
 =?utf-8?B?aW1OZ3BUMFA2NDZYRU11dThYckV6Ni9xcURLOFh0Vm9JSEtkdDZObHVrVDVR?=
 =?utf-8?B?MXJ0L1FUNklPSE1NSzlRN3B2VUlGSVBoc1JMQ3puaEJORjJIT2l6ZjBhbUZG?=
 =?utf-8?B?eG1Rb1IxOWNIUVJEaWtLdmZzb1BVSmJqdnlUWWc4UnQyNHlzU2hLd2I3NGRV?=
 =?utf-8?B?ejZFbzBaQVpsQW1BNVo0d2ZON0ZWVlhtTHZBcjZibTdweFYxY0pUVzZsL2E0?=
 =?utf-8?B?RUVsN0gxWmJnNnkxa3FpT2dSQkNiS29QaXJEU0RsdjFWNEU1ZWx4VVZpeTha?=
 =?utf-8?B?S2tWc0xVVE1Zd3pjOURnNGZWc0w0ZUgvT2FTb0ltVmQ0c3pUTUFhdHo5Z1dD?=
 =?utf-8?B?RU9WOENLQ0RWTTR2UDVSQUxBYk1yeGRsWEN6cGFwanlRVE04T1pHZGxTSCtO?=
 =?utf-8?B?ZzVJUEdDbXRTNnRoVFhuR3dTaUNjczZzbTM0SGs2dXpPaDcwQldjeTdzQjhY?=
 =?utf-8?B?Z2Y0NnNQWkc0aFp3SEo0VTRSRmszMElmdnJvaTIrb3pKSExxSUExQ2pCV0xQ?=
 =?utf-8?B?eGxUcUV2SjBicnRvZDVuVTMzbEVmVnZHNVF3VnlOYU4rS2lSTXFSa3dkRnds?=
 =?utf-8?B?d3owUFg2K1ZIcm5IWVRCbmJQaWlNaDhwbzlubi8zcHpoY3pyMlBadVVDMWhT?=
 =?utf-8?B?WWZwN01XMWJDa1pzbUFPMGpqTWJUVURyK3MwWTBrN3NDYXp4WEtzeUxBN3Nx?=
 =?utf-8?B?bm5VNldlNTVQYURneHZxVXdEYnk4R2tWN1ZQcU1JbExOQmNZVzNXZ2hOY200?=
 =?utf-8?B?NkhOTkV1NUpSSUlPaHF2MGIyQ25FM0s0NGNoYTc2V3NicTNndG1nUk92NTE1?=
 =?utf-8?B?S0lFeXlGanRMQUNhdllsdWYrSk5XRkZiOFU2K2pURVdidVJZRXhoTXZ1ZGNz?=
 =?utf-8?B?ckYxVndQcjdqMG45M0x2OTVSVEhzanJLUDhpUXh2M3R3UkZSdld0TmtyUnk4?=
 =?utf-8?B?SlVWdEtmZytuVkR5SXJDOUoxSUlkbkxxQmt1dHJ3bHk4emVQc05FTWV0c2gr?=
 =?utf-8?B?ZGZyRDJnZUxZaHlWZ1Z5aXJGWEUzZXh1cXd5b1p2V0wxTmVkSWVpN204ekNC?=
 =?utf-8?B?aUtjQXg4U1kxbGFjV09leVQwU2tCOXRzc3lNUW1WckV5czJRZkZsN0k2K3N0?=
 =?utf-8?B?WXdlQ2ZzWDRiWjF5RmZvVjdOUElRTGFGYU45Qk1oUHVXS282VGhFV3JQM2hw?=
 =?utf-8?B?RTROUWkzNUh6YWlDZnhKVk5lb3Q0MTM5eWZiQjFLNm9Md3phTU9PSkxodElM?=
 =?utf-8?B?Vmk4Z3RtTTVWbEJJY01HU3NYOFFHcDQvZFN0bytmSFAzL09qdHdRc1BKQThV?=
 =?utf-8?Q?PyWyzkWuRh+JIY7mWTJb/K5xk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e64c42f9-d33e-43bc-3100-08de31aa54f1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 13:54:37.3769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8j1KUCpqnastiIPiE2UwgikHfCruwQdjk2ISKMxxDngkNkFLjB41+FkptMI4Liq0dLDI4aFqG36mqzOl/MLGDqXFCB3YR5/yZvOjDZQSNDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764683682; x=1796219682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OprtAKL5BNlImmB3CG16wgjSnKUdEW6KIC6OO1NUYS8=;
 b=YQBGdz6xj2hKrpy/Vaka8I9ATbejPqVCYbXcNw7NlMwFtQiASNs+cc13
 LS3gtm0eNmnBPRhqV0AnN62eAQoAmycMDA6BdFVebhmL2f+A/ocDU7b28
 0bfhyTwaRvawIs1nLqCsjzEpehXZk99WKZiUZOeerJOnXJlsWa5Z4n+hn
 ojLfhqngG18J7BN4DI53Qky/KUhvv5bT4NOh2IjkqfD3J8VPeKt41v5ZG
 /ZpRx3ljAauPQNMtuMTn6o6a1vsGmRBzjjR9f/DHdd35vKKbUis4s4LTs
 HSg9CfjqYTAfMAR+lXd6ztDrMqxFV4TPzaRwDJWoBxFkXsefdF1IcxPAS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YQBGdz6x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ice: allow overriding
 lan_en, lb_en in switch
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

On 2025-12-01 8:37, Loktionov, Aleksandr wrote:
> For u8 fields if they are used as u8 value (not bit fields) using FIELD_ macros not good.
> What about compromise:
>   - Keep lan_en and lb_en as bool or u8 with clear comments.
>   - Do NOT use FIELD macros unless these fields are truly packed bitfields.

After patch, lan_en and lb_en are always dealt with via FIELD_ macros.
The confusing part could be in ice_fill_sw_info():

+	bool lan_en = false;
+	bool lb_en = false;

Where throughout the function we decide on VALUE for each (stored as bool
lan_en and bool lb_en), and only then we apply it:

+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lb_en))
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lb_en, lb_en);
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lan_en))
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lan_en, lan_en);

I could tweak names of the variables or maybe hold them as u8:

static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
{
	u8 lan_en = fi->lan_en;
	u8 lb_en = fi->lb_en;
	...
		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lb_en, true);
	...
	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, lb_en))
		fi->lb_en = lb_en;
}

Or s/true/1/g per previous discussion.

This seems better at expressing the "tmp -> decide -> commit" than the
current version.  See draft patch at the bottom.

>   - If FORCE/ VALUE semantics are needed, either:
>     +Introduce a dedicated flags field with proper bitmask macros, OR

I addressed this option in my previous response.  Let's not exclude
it yet, but since there are still some alternatives I would prefer to
avoid it.

>     +Keep separate fields and handle FORCE logic explicitly in code without FIELD macros.
> 
> And handle FORCE logic explicitly:
> 
> if (!force_lb)
>      fi->lb_en = lb_en;
> if (!force_lan)
>      fi->lan_en = lan_en;
> 
> ?

I intend to force values in 8/8 in ice_fltr.c in
ice_fltr_add_macs_to_list().  Decision is made based on:

1. whether MAC is multicast or unicast,
2. whether VSI has PVID, and
3. whether VSI has VLAN 0.

There are also implicit conditions, because ice_fltr_add_macs_to_list()
is only called in particular cases after some expected changes in overall
driver state; compared to ice_fill_sw_info():

4. filter is being created,
5. filter is MAC or MAC,VLAN,
6. target is guaranteed to be a single VSI, and
7. VLAN filters are guaranteed to be already created.

I'm reluctant to move decision-making to ice_fill_sw_info(), because
of these implicit conditions (and possibly more; each would need to
be proven).  Overall, I see two meaningful options (with some variants):

a. In ice_fill_sw_info(), reconstruct all needed information (1-3 from
    *hw + *fi) and make the decision,
b. Before ice_fill_sw_info(), make the decision and store it, then use
    the result in ice_fill_sw_info().

FORCE is (b).  I chose it because it seemed to be overall cheapest
(LOC, memory use, number of operations) and (subjective) semantically
correct (ice_fltr.c is responsible for requesting filters for a VSI;
ice_fill_sw_info() is responsible for populating defaults).

We could also go all the way in the other direction:

struct ice_fltr_info {
	...
	bool lan_en;
	bool force_lan_en;
	bool lb_en;
	bool force_lb_en;
};

? (or s/bool/u8/)

Current working draft:
-- >8 --
Subject: [PATCH iwl-next v2 4/8] ice: allow overriding lan_en, lb_en in switch

Currently, lan_en and lb_en are determined based on switching mode,
destination MAC, and the lookup type, action type and flags of the rule
in question.  This gives little to no options for the user (such as
ice_fltr.c) to enforce rules to behave in a specific way.

Such functionality is needed to work with pairs of rules, for example,
when handling MAC forward to LAN together with MAC,VLAN forward to
loopback rules pair.  This case could not be easily deduced in a context
of a single filter without adding a specialized flag.

Instead of adding a specialized flag to mark special scenario rules,
we add a slightly more generic flag to the lan_en and lb_en themselves
for the ice_fltr.c to request specific destination flags later on, for
example, to override value:

     struct ice_fltr_info fi;
     fi.lb_en = ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED;
     fi.lan_en = ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED;

Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
---
  drivers/net/ethernet/intel/ice/ice_switch.c | 27 ++++++++++++++-------
  drivers/net/ethernet/intel/ice/ice_switch.h | 19 ++++++++++++---
  2 files changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 04e5d653efce..3896edaa8652 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2534,12 +2534,14 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
   *
   * This helper function populates the lb_en and lan_en elements of the provided
   * ice_fltr_info struct using the switch's type and characteristics of the
- * switch rule being configured.
+ * switch rule being configured.  Elements are updated only if their FORCE bit
+ * is not set.
   */
  static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
  {
-	fi->lb_en = false;
-	fi->lan_en = false;
+	u8 lan_en = fi->lan_en;
+	u8 lb_en = fi->lb_en;
+
  	if ((fi->flag & ICE_FLTR_TX) &&
  	    (fi->fltr_act == ICE_FWD_TO_VSI ||
  	     fi->fltr_act == ICE_FWD_TO_VSI_LIST ||
@@ -2549,7 +2551,8 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
  		 * packets to the internal switch that will be dropped.
  		 */
  		if (fi->lkup_type != ICE_SW_LKUP_VLAN)
-			fi->lb_en = true;
+			FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lb_en,
+				     true);
  
  		/* Set lan_en to TRUE if
  		 * 1. The switch is a VEB AND
@@ -2578,14 +2581,20 @@ static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info *fi)
  			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)) ||
  			    (fi->lkup_type == ICE_SW_LKUP_MAC_VLAN &&
  			     !is_unicast_ether_addr(fi->l_data.mac.mac_addr)))
-				fi->lan_en = true;
+				FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M,
+					     &lan_en, true);
  		} else {
-			fi->lan_en = true;
+			FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lan_en,
+				     true);
  		}
  	}
  
  	if (fi->flag & ICE_FLTR_TX_ONLY)
-		fi->lan_en = false;
+		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &lan_en, false);
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, lb_en))
+		fi->lb_en = lb_en;
+	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, lan_en))
+		fi->lan_en = lan_en;
  }
  
  /**
@@ -2669,9 +2678,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
  		return;
  	}
  
-	if (f_info->lb_en)
+	if (FIELD_GET(ICE_FLTR_INFO_LB_LAN_VALUE_M, f_info->lb_en))
  		act |= ICE_SINGLE_ACT_LB_ENABLE;
-	if (f_info->lan_en)
+	if (FIELD_GET(ICE_FLTR_INFO_LB_LAN_VALUE_M, f_info->lan_en))
  		act |= ICE_SINGLE_ACT_LAN_ENABLE;
  
  	switch (f_info->lkup_type) {
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h b/drivers/net/ethernet/intel/ice/ice_switch.h
index 671d7a5f359f..e421c562626c 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.h
+++ b/drivers/net/ethernet/intel/ice/ice_switch.h
@@ -72,6 +72,14 @@ enum ice_src_id {
  	ICE_SRC_ID_LPORT,
  };
  
+#define ICE_FLTR_INFO_LB_LAN_VALUE_M BIT(0)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_M BIT(1)
+#define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_VALUE_M, true) |  \
+	 FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, true))
+#define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED			 \
+	(FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, true))
+
  struct ice_fltr_info {
  	/* Look up information: how to look up packet */
  	enum ice_sw_lkup_type lkup_type;
@@ -131,9 +139,14 @@ struct ice_fltr_info {
  	 */
  	u8 qgrp_size;
  
-	/* Rule creations populate these indicators basing on the switch type */
-	u8 lb_en;	/* Indicate if packet can be looped back */
-	u8 lan_en;	/* Indicate if packet can be forwarded to the uplink */
+	/* Following members have two bits: VALUE and FORCE.  Rule creation will
+	 * populate VALUE bit of these members based on switch type, but only if
+	 * their FORCE bit is not set.
+	 *
+	 * See ICE_FLTR_INFO_LB_LAN_VALUE_M and ICE_FLTR_INFO_LB_LAN_FORCE_M.
+	 */
+	u8 lb_en;	/* VALUE bit: packet can be looped back */
+	u8 lan_en;	/* VALUE bit: packet can be forwarded to the uplink */
  };
  
  struct ice_update_recipe_lkup_idx_params {
-- 
2.43.0


