Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3059FCB30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2024 14:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FCCC607C9;
	Thu, 26 Dec 2024 13:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vvnEVH2uOCv5; Thu, 26 Dec 2024 13:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D09D60797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735220171;
	bh=fc6av0LxWH1HcAN7ShvWgvSiDHgDSUVVQSfDGtOxCNo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=taON22OlUlbQbxc9r1R6iRQYVcNCxLsAIvg8f1nETl/X4Uhryp/tiTzmkjgIcH5ji
	 KBf/kRrpt64NdmAt7nB2XXK3L+4v1p+RTdlh3okD0WvxSSYi89psjRJ0I1uBwlrRC1
	 tzllAFN3oskgCj53F8RVoPmYIsC8woo7Wl+oZnAcNdULK4gTAi/FsMYVrxpchXAPz2
	 puYsjyEjDg7Vg/SpI0Rpgr4RLhoBIo+JPMBMTsZozMo6LU5Mx1HV2h4T7D6cY6jGD5
	 aIrH+E195FBRdb4x82x1rRnV9yqIEEDAsgd+Mh0BaKh87rdRJpd6xX0cY/FdAsApd3
	 0ZFec0KaYCFZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D09D60797;
	Thu, 26 Dec 2024 13:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CF36E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A7D5403E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xTrkMU1eowJH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2024 13:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B122C400BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B122C400BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B122C400BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 13:36:06 +0000 (UTC)
X-CSE-ConnectionGUID: adxvW+SQRMmBtXYr6Pz6Zw==
X-CSE-MsgGUID: A3iMAFB9Tn6wa5QDGFIwYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="35513803"
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="35513803"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2024 05:36:06 -0800
X-CSE-ConnectionGUID: xy4FpztKRJCDGvGlI4q8uQ==
X-CSE-MsgGUID: YUF4rIDhTPSdljaV/4PtTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="99669384"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Dec 2024 05:36:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 26 Dec 2024 05:36:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 26 Dec 2024 05:36:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 26 Dec 2024 05:36:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HuWe4kyVDJCuc2t8LGx35rSjTh2IglAPlGlkR2XXnp3AsWa+CmsZH1qikjRxsbsqWGbCaquMUCn8zot+FIlcQYW4pUm2lRr01HxbR0gw2ROPRvGDa7TH9V2wb20Ud4Jl8hifd22w/hppaCFIMZL/I99dveF4yq9xr48BRDnh5SXePL1MwaKTijn8XscKw/7gWMkBx5mRxMXszFwCbQM6Z9StdD/PsKdIUFd41aMhs9P8RXmJA6XHJM4WqwKWxgABjszwkZmtIBONUrZC5Q9SSkP4WKbxFPcdyFcDfCPixOyZv0by2I0FpvJW8u7zUrZdbaZjuyBdk1RBWpxfCo0TEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fc6av0LxWH1HcAN7ShvWgvSiDHgDSUVVQSfDGtOxCNo=;
 b=x32zlvvL1EJkNDGhbYLGigXGJdOr/8B30TRG5xzvAWB+fvSbqL0KctHGnB3Pdt0ChfgPG+0kO5tWd2fvaEW9Squ3+Ww40Ap+6scl0AbN7aCXjBYJxr04WZR25AxLz7k7xCzIStBY6TUx7caWUeDJEUqC5y7Ec/MofgMD/J9U53/bUkKFxWhNZZlltwFRs5qgA2Yc7UySCbvVvoQebqs/Ntk6r7lJpsw47VJ9t/X4k/ekNxg/MbhsQAP7MMuI6Wx4J1X1nHIyj3jWtZI2+h0HFeUdIS26qdESqAzuW4NCzcshDnaAouI3w5zKnGPR4XsG7KQr+jUeVSdYvS9M8Xjx7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SA3PR11MB7461.namprd11.prod.outlook.com (2603:10b6:806:319::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Thu, 26 Dec
 2024 13:35:31 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%2]) with mapi id 15.20.8293.000; Thu, 26 Dec 2024
 13:35:31 +0000
Message-ID: <b0e073bd-dc1f-4af9-9f7b-63b4b726c585@intel.com>
Date: Thu, 26 Dec 2024 15:35:24 +0200
User-Agent: Mozilla Thunderbird
To: En-Wei Wu <en-wei.wu@canonical.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <vitaly.lifshits@intel.com>, Chia-Lin Kao <acelan.kao@canonical.com>
References: <20241218023742.882811-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20241218023742.882811-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SA3PR11MB7461:EE_
X-MS-Office365-Filtering-Correlation-Id: 82028102-e642-4d8b-0791-08dd25b22acf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHgxSkR2RHMyL3dyTUlWMFJHR1lBeWgxK2Z4NDAxVkNhdGFnN0QveHVBcWZ4?=
 =?utf-8?B?SHRzMVJCckRYc1ExY2htQWNlc3Y5d0xwcnZsODA2aXNDTlN4YnhjYnRYZWQv?=
 =?utf-8?B?MDdvUG9KMmNrb2FiM0JhMUowU2pMRzZKNlIxWHNkandaL3FwMFFrN09JT3dS?=
 =?utf-8?B?SEdTb1N1V3p4VEFHZnIwRmN5R0FkNDZTSnUrOGN4b2l0RmpNTGFtVW8vQkoz?=
 =?utf-8?B?dmxZQUlPREh4anVFSDZ6UlBlYWRmZzQ1RVh1Qkd6S2U0MGZPR1prOUZQTGwr?=
 =?utf-8?B?akFFQjBQdjVaSVk4dDlPZDNwS0p5dmlmcTYvaW1sRzJzbmhFb21BV0RFU0tO?=
 =?utf-8?B?UFRmUVBRLzE1b3Q3dHhaRnlDTWl4Sm8xK0NEZVlMQldZVlp3clljZFVLR0J1?=
 =?utf-8?B?RG5WeUoyMjNLUFNkdHY5Q01LOGlVRXhWQ0J1c1gzZjhqeHF5SUlqTXJYM0NE?=
 =?utf-8?B?dnBTZENkSUlKYU1jZ3VOYkczTFJQWDdmRlhWeDFtd05OK2dZTjcrV290eGla?=
 =?utf-8?B?TDhzSHppQkREb1g0SzlyZTdEcm9GemVqdTNUV3p2Z2l0bGw1UTgwZlJvdzk2?=
 =?utf-8?B?bnV0dkdmSHZBelJJUDZOa3pNWUwwZnlJY05UOE8ybmRTRHlua2k4M25VUktC?=
 =?utf-8?B?Tmt1R3psODdrZ1NGeUdrYUNyblFsMTNiTmNrYVlHOWJMNjlmalcwOVlSZ3FZ?=
 =?utf-8?B?cmM1RFlSeWlmQm5UZ0ZwbVR3dkM5SG13NGRwYTVkdEh3WVhOQ2xCNjdsenN3?=
 =?utf-8?B?Q2NJU1BQZ1V4c2VmWlk0aWR6MlB1b1drd213THJyTHhBZnJVSnZHS3ZWWGxE?=
 =?utf-8?B?dStmZTZzbHhjV2wrblByZkVmbnVNVUsxYko3cm5aY0R4TVF3alJQQXQxZUM0?=
 =?utf-8?B?VmRuRkFiRE84VUlnY2pjamxUdXpvSEo4S0trTmRxbEtuZUt5eDFMWkpZd3dq?=
 =?utf-8?B?ajBOV2p5UU1tYzhoVGR5UXVYMjZDRWVtbEd4d1VIdlVnLzF5ekxIU1d3dkE0?=
 =?utf-8?B?MGhWcTZqcjhSeDJvMCtha3NNYUUweEVIbW1Ia0VYVE1CdUVaWmUvUWZXOWVE?=
 =?utf-8?B?ZXhJVTU4cjVUOG5WTUJqZXduMCtCbWg5ZzlrbkhuMDdHRHo1cXpydG9UVEwx?=
 =?utf-8?B?STRCeVc3NElNdDdzd05hTmJmWTRBTkNsSFpkYkxpb3pCTkdlUjVqT3FIVjVp?=
 =?utf-8?B?aGtmT21iWVplU1drKzgrVVRHMkVjSDgvZ1NBVlF0STFUMkZqaWxpd0c1RlVm?=
 =?utf-8?B?MER6TnoyNU5NRUVZNldZUm5TY3IwS3ZScVRDVHVGMTljMjk3QWEzS1NmS3dw?=
 =?utf-8?B?NE9JK1lSbStkejZOSFdkWDZJUEVqekxFeGpCTk93L1ZBZjdvQWN6VUNZSTRP?=
 =?utf-8?B?VDB0REpWMUJ2Yk1UQkdwbHpOVVliZEQ5K2kxUllDVk0zUVY1Mm0rYXFQT1ZC?=
 =?utf-8?B?eGZSa013by8xSkRsZG9oeG9leWVIVHRlb2NGaHIyWm9iTlhROWxJWTRzSHJW?=
 =?utf-8?B?Ymt0bTAvS3JQYktaaVA3M3d6QkcrVXlEekhtSktHMXpnTW1SREU1b3JuYkNK?=
 =?utf-8?B?WFRkRzRwVEwwVDYzM2FYUmZkdjNSZjdYNm44UkN4NG1QRlJnZmIzUWlicDBj?=
 =?utf-8?B?K3RsUUUrcSthSFg3TjNscTQ3K3VqNStKNzFUWmVPMEJ3c2EzbTJLU3dVTk54?=
 =?utf-8?B?K1pTSlhvWmlzcEZTQUMvT0JIMHllUW0zMTZDSEFqMTRGeDBpZjlDM0h3YlB2?=
 =?utf-8?B?M1hUZjVPb2JDMWNZNWhKeXpuMDVuRnY2NjBoeDBGcjFzdUF4bVlVUE5XeHBx?=
 =?utf-8?B?ZzYrQ3dhMS9YSEVtZXdiRUdob0xNZzZzS3R0YnhDWmdJdGhMRWxZZHRjUldX?=
 =?utf-8?B?REt2V3JqNXVrU000emwwcFpnN21DcXZXZjBQNTdWVkFjUno4WTFJaENKcXhv?=
 =?utf-8?Q?z0lQfl9YIrI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1RKMXlxSTJBTEFab3hCaDdUL2pQZ3krMm1KbDlaNTRnOEExemg4Vkk2aWRt?=
 =?utf-8?B?UGh1eGRoTXJURlZEWlJSWXJzOFZyU2lkTy9ERGxxMDB4SFA5SS9PQmluSEFt?=
 =?utf-8?B?WW5TRnQ3Wmx6blhKajNMQkJIQUpjd3RMT0xUSVMvRldueTlsQUd4OG5rMjlm?=
 =?utf-8?B?ODNNTzU1em1iMVhsK0c4SnQyZkpFTGlqblV5SUcxR21zRXd2dTVnVCtqYWd1?=
 =?utf-8?B?ZCt4bllDU1hrNVh0djJSZHdqeTI5b3lUTm94TERBendHdlRadGc5dXhBL0N0?=
 =?utf-8?B?OFNkekR4L1krK2swS3JDOGZENHRnQWlJYmhlV3JVbDdxWUh5UTJod1hpKzB0?=
 =?utf-8?B?dGNJcnNlSnVyN053UkNZWmpPSFlmT01SRnova0M5OGlvRlM3dVFLRERZdlZT?=
 =?utf-8?B?MUpQckpTaGFtTTlPMXVldlBOSmdlazZ4TExUSDdtalM5WGxBRncxS0JaQlZM?=
 =?utf-8?B?UnhzRUlFd0puTHRVeHB6MGRYS0lteFN4TTU1THlpUGk5c21MWEFLMkF5a0o0?=
 =?utf-8?B?WnR2M2VCbGtpV3FYQlRFVUQ2dTFTODdKZmFTeGhKUjR5NWQ4QWkvbElGQWNW?=
 =?utf-8?B?NUZIVlRLZmt5dnlVb2R6cjVTeG9OY1l1Vy9vS00vTkxpNXU2OGNqb3B1cmVF?=
 =?utf-8?B?bXdNTmFpdVQzaE5xWnVzdmZENllZTHRCd0FSUWRHNEJYZWhFc2hmaXpMdmNa?=
 =?utf-8?B?ejhQVmdlWGlzS0V3azBnMkJiTGR2VEVJaktuOXh2ZytsY0xUeWRmQnBjN3Zu?=
 =?utf-8?B?cko3SkdXZzFaZCt2NlhQWXpRTFZLSEtmNmkraUxLT0NqVWVmL3NJUEFsWXdh?=
 =?utf-8?B?Vkx6R0NiZFh1Qy9qdjVxTVdQYmNrSVVBNmRGUENrR1Y3c2k1UXNMMDZzeGsw?=
 =?utf-8?B?K2JmSmxUSGlRZzhKVXFhcllob1ptZEhyL3ZYTFYzSGZnVTVaU1kxdTJ4TlNJ?=
 =?utf-8?B?ZWNRUjlKbllOWXd5WGdOeVFKY1BJNnRSQkUrZ0pOSTQvai9TM1lHRGs2TFN6?=
 =?utf-8?B?cXpZSkhTM1M0VDY0YzVQZnRQekRQZDhxdHRyMGxKa3RPbzVka2U5dTVxcVVU?=
 =?utf-8?B?NDA1SFdicEljK01HQkRCY2pueE1LN0lXeXlzWlFnS0xqRmNNajJvVFZiNFp1?=
 =?utf-8?B?SVZlaDVvaVFOWnhBcGtaRTltS25mQjViczNRRStpUjIwdVlIUG5rVWt1UVVq?=
 =?utf-8?B?eDlYZGVCcDhRU1psMHphTmFuUzB5NWRuc3VNNkFHNGZFemdTODBrMnp4MTZU?=
 =?utf-8?B?UVFCUExQOG5vOEhVcDlQQmcwQjZjSG5OVjhuWlZtMEFGeG44VWRxdFRXbWE3?=
 =?utf-8?B?VWpqcC9HZXRKSjZBemN6bUdibGxQV3hOVHlBakRZdG5lM2RZVHF0QkI4TEk2?=
 =?utf-8?B?YlVDNi8wMVAzU09qYXprT0FZSW5JTEs0eW5MVWltYUNtdFAwa1lIYWlreXlW?=
 =?utf-8?B?cEJEcWF2V1VySHdCdXdCNVRBOWYxakx3S1pzU3pkUER0Lzl3NWgra0pQNjJJ?=
 =?utf-8?B?UDVWdnY0TXRyZXNiS245K2hieGpwbzlRNC9kNCszcHVwdTNlRDV6bGtIQTNj?=
 =?utf-8?B?S0FPNXhLU2NmUnVYbThWbjhoYWY5U21vZmNyVm1RUDg3dmNOUVNEUDJCWmlH?=
 =?utf-8?B?eitlelBmNy9zMWtudnA3cVZuRkJLVVBDWi9jN2FpbnZNaXZYOUJwdHlRNEZW?=
 =?utf-8?B?cVI5QjNzYy9LZnVvNUxnaCs5MTBqSGYvUTZrcnY4UjlWb2dMMk5FaWxMNG4v?=
 =?utf-8?B?Qm4xL1IwY2FxalBoZHZ2Z3k3OTJGeHpnNHJGY3RERzdubHZmTnU0aXdqWmhv?=
 =?utf-8?B?OHhxWGxQYksxR09iK0d0cEJha1B5eHhFeG1QTlJNQy9CVjZsUEgrbVlxbnJn?=
 =?utf-8?B?UFZWY0FPVFdsVjZSQ3o0Z3ZwL1piY2IzTU9ndW5CS1ZiOTVBQ2MxVitsbVpj?=
 =?utf-8?B?dDNXbmw1YjZheUFYem4vcGVyYy82aWMxdEVCelZYNGV1Nk1UWTVGY2ZPQlhm?=
 =?utf-8?B?REZBWjJ3SWxtdGdqdGI4YVVobWoxeEVPeDNNZkNyVktZYlhNajI0TndjaXN1?=
 =?utf-8?B?akRIKzdOMXFHQVFQa3dPaDdxTk96YnhReG1LN0plNHFLc1R4Q0hNVytGS2k2?=
 =?utf-8?B?UTE3YkxjdTdmQXJBTnUvOGVVVjZHVUVUV2FLaklmYXdRTjhKd1RpR2crUEdK?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82028102-e642-4d8b-0791-08dd25b22acf
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2024 13:35:31.1752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LBJF6kPs0he7SlEcv67ygTAS6x4ors6trFEx6nGT0oHSbaGfMvWd+IDNW3EhIphRrx0IR0TCAZVXO566VFjJWmhJ45JehQcjNBGpEnVn4/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735220167; x=1766756167;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DOO5Oc4XhPoE8mFpLybPjPBVWa52lvx6q+8HWBV1Mto=;
 b=Cg55Cj6gd2h99Kdhef/k27yN2KQ8c43b09BbzhhjsEF014sUgxGef80v
 1pHz+CmrsEDmFG+F/0JMZfnqNwCWOE0aXE3btsC3UWjRHfIysqTIpUeFG
 jZpNyJllu1RNma2twICyUbui6AENBDH8cw7bE4ZYw04kA26zN5L2K0YKG
 gHH7rkdfW2gKVVPX1jRRndwZpMoRgzwDuI7mjh606lGOUotUJ85OtWHis
 dGFTklYpqoFuIUsvZm41uO8WUvNvc4vahfmIRADl5krpUxqKubG8Ul6bU
 Ct/KDUOGhUB8UYu70RS3gB0wj5QKPUG1L+7Mo9e141PS1JIh7FsFv9wku
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cg55Cj6g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: return early when
 failing to read EECD register
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

On 18/12/2024 4:37, En-Wei Wu wrote:
> When booting with a dock connected, the igc driver may get stuck for ~40
> seconds if PCIe link is lost during initialization.
> 
> This happens because the driver access device after EECD register reads
> return all F's, indicating failed reads. Consequently, hw->hw_addr is set
> to NULL, which impacts subsequent rd32() reads. This leads to the driver
> hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
> prevents retrieving the expected value.
> 
> To address this, a validation check and a corresponding return value
> catch is added for the EECD register read result. If all F's are
> returned, indicating PCIe link loss, the driver will return -ENXIO
> immediately. This avoids the 40-second hang and significantly improves
> boot time when using a dock with an igc NIC.
> 
> Log before the patch:
> [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
> [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
> [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
> 
> Log after the patch:
> [    1.031000] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    1.032097] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.642291] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [    5.480490] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    5.480516] igc 0000:70:00.0: PTM enabled, 4ns granularity
> 
> Fixes: ab4056126813 ("igc: Add NVM support")
> Cc: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> Signed-off-by: En-Wei Wu <en-wei.wu@canonical.com>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> Changes in v2:
> - Added "after" logs showing improved boot time
> - Fixed error code (use -ENXIO instead of -ENODEV)
> - Added error propagation in igc_get_invariants_base()
> - Added Fixes tag
> - Added [PATCH iwl-net] prefix
> - Changed original author from AceLan to En-Wei
> 
>   drivers/net/ethernet/intel/igc/igc_base.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
