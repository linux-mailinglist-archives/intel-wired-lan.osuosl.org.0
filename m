Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B621A53DE6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 00:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0495960884;
	Wed,  5 Mar 2025 23:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZN2ln0lgpwD5; Wed,  5 Mar 2025 23:04:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99FFC60894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741215869;
	bh=iSRZEHwTd2hS+oFOnS3UUm6kfgP8QwTvi2Si8zcdfgM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BJqw8aFHZwSTKGrPZ5tf4A9NNckGVTlhBdpgNsNktcy2yqcny9gdXR+wJZfqEz1iO
	 2GZXl67BIEDPqE1Wumc6QQ6+A6V55tJy4eC67Yh8q91W7i4eeEijt6JfWclvd+K2YC
	 wGdcq50G0NYaKvXz8KeZqIjnKtZSRYYCtbiHczdqea30la4NjsXo7GZYuhFQUKVRlA
	 tIccUoZq5uwmVZWrb0kghQDcCoOvrpELqA0pF+qiJW5/pjMTWi0+MbbuF+d6wdFEuF
	 sW+2Uc30aNgTODiA3Ad+n0P5AdlyHO21PllBGak4njo3mLsd0gMiVzpE/ek21H7LCR
	 UG19VVshQ5ToA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99FFC60894;
	Wed,  5 Mar 2025 23:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED561194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 23:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCDAE605D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 23:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xf1VaU2Y7AYt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 23:04:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9AC3C60884
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AC3C60884
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9AC3C60884
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 23:04:26 +0000 (UTC)
X-CSE-ConnectionGUID: h6VYbhaZQYax68YfvfggnQ==
X-CSE-MsgGUID: gK6QuGIaR3qSgWyMhBDFwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45974141"
X-IronPort-AV: E=Sophos;i="6.14,224,1736841600"; d="scan'208";a="45974141"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 15:04:26 -0800
X-CSE-ConnectionGUID: 1xCfPe/VSZO3PccpV/2UCw==
X-CSE-MsgGUID: kXQvxESzRYKwFfUEocpsEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,224,1736841600"; d="scan'208";a="142061217"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 15:04:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 15:04:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 15:04:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 15:04:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rdy4KO1SVmQACzY7FV0cOFAHIz26iRl/4axbZ36CPnhte53RB/Pb/mf9PAc2YrZGM3yyol7JjLvuarZR8ct01Rf4nS6It/3XiQT5lAU2+ceZx8jcLrTmhNUayQO0nJN4Rm88a9S1tjopbaEq4C2SwDnrDhECiSXAhkGrAQ4L+Qf70MKKuI06ycNy+JwpeDd/I9relyy6CbAs8zfqWJMWpiO6/YAYtCQUoAyOpBeaA4/KVuNK2Sl3iYRfvwqEP/G7OXS1NLEgeogVO90OpBSeK0LIoAKik0EhBBo/EweF7z3Z9T4Tu9jop3/pUc7jjsLCW4AfPYRlVJzhlWq1nfB5WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSRZEHwTd2hS+oFOnS3UUm6kfgP8QwTvi2Si8zcdfgM=;
 b=N3cDnmdDIyY6TSL8+Z+CZbfmX0iiOcz2LGpJ8KbK16KEYMO8dNrfoV3EPiXrPbHqTe+iouGGvCJrMs6ELdn/N+HBjeClBvAOezilE5zOboVi3LnPPCwohTTPeYzX9EVPR//k4iaOC6PTQKp2vEXFQm9NlbzE7UArLnGKtnnLu/L+sTc2DbYtjbRHGD/ueiM8UPbsS4kFyD3T+c0cqsQAAMN2gNJudF7nWHZ4NNiooFajwTKuKsYu7OJyoDGudpvwCkebNJk6WplVAHjPsCPs0ekUtYuwzpfvzaK2R12PwpA+7pJJZF3vRh68m7ZX0dgLPbt8R1YRRNf9ss6qauTQow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ2PR11MB7545.namprd11.prod.outlook.com (2603:10b6:a03:4cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 23:04:18 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8489.028; Wed, 5 Mar 2025
 23:04:18 +0000
Message-ID: <d4a7fe72-1e44-466a-9fa3-87e34394a239@intel.com>
Date: Wed, 5 Mar 2025 15:04:14 -0800
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Alice Michael <alice.michael@intel.com>
References: <20250227111333.30675-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250227111333.30675-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0228.namprd04.prod.outlook.com
 (2603:10b6:303:87::23) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ2PR11MB7545:EE_
X-MS-Office365-Filtering-Correlation-Id: 8428afb0-7111-43d3-6e11-08dd5c3a0e7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N2Iyd1F5NThQcTNqWGpEdVhueU5ENzdhTjh5VXI5MndiOXJYK2JPcWlHbHY3?=
 =?utf-8?B?TTkrU0c5TEhlUXJXMWMxLzhvNnJ0TEloQ0NXYkNlMmVpdlFyK090Z2lKN1do?=
 =?utf-8?B?NDBGWHZmN2M4azBKOTRQOGZiS1pwWERFRW52K3FhaWR1NEJzelBVeW00K3Bj?=
 =?utf-8?B?aDcxRnRVYUNhQmRuZjNBWms5UVBwNkg2cDRSN1NVRk9OQ2VjUEllVXdsaFQ1?=
 =?utf-8?B?STQ5UWl3bVE5OU9WWW1kcEZxaDR2RGFVNHd6bmJzT1VJTnExREJKaWNNSFJD?=
 =?utf-8?B?cXIwTUVVQjdweEYxNjBlTzJRSVdkS2NjVmhiSWowdDQvRlJnRE5NeFlxUlBs?=
 =?utf-8?B?M0J3c1JPbjFOd0RIZy81cS9VZ0JUVXA3c1NXbjlGci95eEYzYzJGenlTWVpz?=
 =?utf-8?B?YVlhdHdyRURyM2NRdUhCbGFCRFpaQmxLY1hpbjhURWR4endwWUd1c1hIZW51?=
 =?utf-8?B?MkRuMC9JMzlNSWVwNnNzVTllRDRIVEdGUkxmVFVXa3pYQmFocjExWFl3eWl6?=
 =?utf-8?B?M3o2WFVVd1hLMGo3RmJXNk1JdjhkTHhpQ1Fma0M5dU5PTEhCdHJHVzhvamky?=
 =?utf-8?B?THNNc2xlVVY4YXFWbnhYM3lYeTdvclNieG9VTnZyTG4zWFlHUW1YdDN4cjdO?=
 =?utf-8?B?bERibkZnbWVFVE90eVhIaXhvZ3NqT1dFd3FGbzBWQ3JSanlrVll0UFQ0dlV0?=
 =?utf-8?B?RWZLbE0zN3RYcVZoRmY4NE1BNDlkY0Y5VTJwRmJtcUhmTmF6OTBhWUt3VzQ3?=
 =?utf-8?B?QWU1eVJheVMwUytCMnpHa0dwUnBCTGNTUlhTZ0FzL2xHbHBhemdGRzNJZU4r?=
 =?utf-8?B?WDNYRXFISkZKK283Q3VUNlZDblNHSjRycjZDUlMra3IxQVNlRHVrcm1GRS82?=
 =?utf-8?B?TDhQRUFaTlVSNW02ZHJ6eHU4OU9MQm9ISjVicWxXRks3WWNHdnBpYS9sRUxG?=
 =?utf-8?B?WDVoN0w4NjNPY2dmV1pTNWc0cWkvZXBVQVdMa3FzZ3ZCcmxESklVak9lc0Fu?=
 =?utf-8?B?eXprZkZ2VUs3ejFLYllQektiRXErbXVyV2hTZFB2V1M1UFQ4RTNNT2hvK1dJ?=
 =?utf-8?B?b3RnQm1VQVhGdTcxNm05WDh1R3JoL1VTVHVTaGp1UFVFTDdyTWhRT3pPSWJk?=
 =?utf-8?B?UWxGVVlkcUMzelpLZUU0SnUvYkhjQjJranR6dTYrVFJxR1Z6Qm1oNG10YTlK?=
 =?utf-8?B?NDZhc3EvaFVNOHN3SWljZ3pyOHhaYnBHblBTRzZzYS91bGtoNHFXNS9rWkw4?=
 =?utf-8?B?OUtwSGQrRjk0bC8rQ2I3VWVjdm9peGlaK2xzWExtVkZCTSsvbWRybURwS1JG?=
 =?utf-8?B?NDNxWUtiUFROWGNIWjk5M21xUW9vNjlGYkJHTnhVcEo3ME5qTXl5cHNpeWU3?=
 =?utf-8?B?VFlIYkFFckNoQmNTdWNEVWNPNFZJR09tL2FNQWx2WDhESDNKVnFMTHVpTWkz?=
 =?utf-8?B?aFlnUGptcFBITVR1SXEydzdITlgrYWwxWFZlSm1ieHBJV05qKzJ3bTVkUERJ?=
 =?utf-8?B?R1VnUVY5L0RrU0NLUCtHVlJKR2ZNV0RKK3hxVUVKbjNoR3gxeDlGUC9KcjhV?=
 =?utf-8?B?TXFOM2p4RmtaZW9vcjJQKzR6MHdDR0xaVHFrTHZ3WHZ2d2xsR1l2SWN5dHpY?=
 =?utf-8?B?anZ4alJDMGVBOFJ4MHhJSTJWWmpnRzllZHY2NFNKck83RGJCM2dFamliMUpt?=
 =?utf-8?B?eGVtOWRtaTBWclZvKzdjV1QrY1lEckxJL2I5OVRPYWlvZW50YWUwYk82cm1k?=
 =?utf-8?B?OTcvam5zV2JyZnN5cXdtNGNHYS9jWFR3YkRIRGRaWjdnbm00Rmk3VC9WQUxV?=
 =?utf-8?B?KzN5RFIva0E1M0tHVzhyMTg5RVlkcngxdVROMlU3N3FQS01WSnNQQm00VERB?=
 =?utf-8?Q?ikwQyLceN4h+7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFNBUHg5azZWOVhBZm1NREllSnNBN2tHMkszdEZuaVJoRUtFS1JmaUJaaVZx?=
 =?utf-8?B?OUtWbk8zOUdCaVpHUWIxc25oVXJodjZoYi83N1NYeGJoODA5Wis3ZTVmVFBs?=
 =?utf-8?B?OFBqRzUxeGJFdlhtNFAxZkJ5ci9McU9ZY2QxbkllaFB5eURhb2l1S1d2emZi?=
 =?utf-8?B?RmJQR1h1T2FqTit1NFhJV00xZzZ2WUJkWTFPYU5BNUxFbmRyQWhHcGdZOERk?=
 =?utf-8?B?OTZhdE83dUpRSDM5RFpDTHFFcE1UdXJMV3BxemVKZjZxS1Fzc3RzVVhrVlNz?=
 =?utf-8?B?UjFQRThWaG1tMm00QmYrZ083QjhhME03RERXZGd3dDF6N3g0dTZVUEdqd2p2?=
 =?utf-8?B?NkRYUWdjRHNLSWx1aWdxQ1ZVZUNXUnlYZ2FQODBqUFdiNk93MG9iVG96ZG1X?=
 =?utf-8?B?M3hNU0p0M0tibHl0OWhwaDhuejQvRzdqRWNqOHlGaFlOUS9qMDRJak91WnVr?=
 =?utf-8?B?eWlEV3NvUU5ibFZyTVRwbDlZVDNpUmlGYWtxNG1zcXR5TDMvY1ZhSlJDcVJX?=
 =?utf-8?B?WjhWeW0vK1lDUzhMWXVUdkt0QmxMTkRlc0o1cUJ4QTNPaWdlejZsdk1qV3k3?=
 =?utf-8?B?NlpaYkRsVzJtcHh4Y2FWbHg0cUtWUUtBeUs0TEVMR014SmxOOTdhTURPZmNB?=
 =?utf-8?B?Yzg5Vno3R2VmbTcwVmhWYzZJN3dNN0ZEYU1lZ2xhckZtU2pWczdoMEt4eEh6?=
 =?utf-8?B?REZNdlk4M3ZrZm9leVJaTmdCdFZ5dHZmcVRpbHovdi9OdjBIM2pSTCtjNllm?=
 =?utf-8?B?TTloK1hzbWQyaldvVktqcmRrRGY2VSthV1E2R1JnSExNRlA1dFoxK2NlRnBl?=
 =?utf-8?B?YjIzbkd1djR2VE9ab1BvZnNRWkxDK0xFdEFoaW8rWlFOa0g5d2IzZHg5bjFJ?=
 =?utf-8?B?Qm13c0FzUkhGbU8rM3FYb0piR2tjL2J1WVN6MUd6dTVUVjFOUmZwc29Kak9U?=
 =?utf-8?B?Z1BiaE1TTVlqaXBoN2VhNjkzYktLUCt3aldNanAvRVFTeE5MbytjVmZra2Zz?=
 =?utf-8?B?ZnZWTGZISDhrMHg4dnM1OGswV2YxcEVkM3BLbWZPOTh6azc0cVhQL1Z3bGkv?=
 =?utf-8?B?RjdWeHZyS2JPeXhlMHg4V3E3MnZlY2hxUDEwbnNDYmw3dklGa3ZKUXo3RHFU?=
 =?utf-8?B?Vjh1TDEySlkrTFRPaFFFcXFMY2tVR0UvbUhSVjJTb1p1dFhWTE9PT3ZGTjln?=
 =?utf-8?B?eDc3ZDZGYzhHRFZKR1dIOXZBdk9kQ1hBcjdpN3o2RWgxWFVKTGx6RU5VZExH?=
 =?utf-8?B?ZGdzM05NczRoNEppWlBqMUp1OGFVa0FlOWFNelNOdVlNeDlERzJUVjhUSWli?=
 =?utf-8?B?T3JTZkcwNCtxVWozSHJXczJ1MGZUQ295bXhWQzcvQlNseHROaWx6Nkhndkk5?=
 =?utf-8?B?bmhyb2hrTHVvMmRpODdKNmp5cHhiU1pqeWs3UUw1UUV5bWRRRkhiOVRWOFpK?=
 =?utf-8?B?bHpyM0w2ZDFjN09qQXRnYzdDTnpsbzBCdGJybWtNcUJhdGZzWWVRUkhMeU9t?=
 =?utf-8?B?N3BBSkEvUnhvVzR0UUZBSHp6VGdLTm1nL250MzhReDZNcUVubktSaCt0c29o?=
 =?utf-8?B?aUxQZmJhUHp0ZGVLSVp3M25ndXBvMEpkUDBVOXNDVy92ZjVRUjlpVWIxcU93?=
 =?utf-8?B?bXAzZXBJRkNHYURTZHZwSzVyREVzMzdBd2IxMnBWVDRic1UrRFJLWUt5SnEv?=
 =?utf-8?B?MnNnbkp6Vzg0aHQ3MmdldWJmQW5PdEFraXBJcGVtaEhCUlNGblNxNHVvNWIy?=
 =?utf-8?B?UUlGc095V3RGWXBXR2pEMElWYmJ4WlpqckFrZ253R0Q1UjVHTFVRNWg1UW9u?=
 =?utf-8?B?WVdLUEhITEVzRlk5cUpjUE5ON1hsdGZZZzZ0K0wrcFlTU2NXbmJsMHV2bkZN?=
 =?utf-8?B?N0JnZ0hldnpWQUt4aEE5UVR3WmR2Z0N4NWFhYVhqVGI1WlZqTG5DMVRocEVn?=
 =?utf-8?B?a2JUOWJFSStMeWlJUlJFbk50emFnYWVPM3NJWnhSaUdGLzErNDB3VjRRS2Q0?=
 =?utf-8?B?cVVGMWk1WlI4ZzM1RmRVK1B1dHVWdVo1U0Q1YUpObUNSNjd1Vzd6aHp1cC9J?=
 =?utf-8?B?d0QvVXdwZWNONU5xVUdBZTc3S1Y5UlRwVndkUEQ0N3NOQlNqekhJZXNpZnRt?=
 =?utf-8?B?aUVXWnJXNzlCUUtzZkhlV3JJWUtmYzJSYUVGV3pWREZDQ2JOeDlINVBaemk0?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8428afb0-7111-43d3-6e11-08dd5c3a0e7d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 23:04:17.9791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YNpQdk5XmFJpoMAz4lFih9RS7Ez9YQJxpiq//Pz6ITJSKxtZBdYhm5Vh+3LIZ6e3CK5kLIyFV3w/9jAjppHmXBxGklJT5R116XZ2K3jTVWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741215867; x=1772751867;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mxxjYZES2NSuknDFlMWfsMBr0J0bOK5p9/muy0qaDME=;
 b=BiZVP7vkm2bHt0WPFbbOMPeQ0wBk9GR3DA1rccnKCYmgu64RAlUm+wn0
 qiapZ75vv9XTyCaZN51L8aGKmtv9FVKIWBsRtxflGsuH9zMtU261dkKgc
 gsXIShGCq/RfF+jNSVcgDehaSNn1A6DYA+pfPUogzVhS4/WpdAI2knLHr
 CMwKmn0ffGVgYexH8Z9ot3oZs/JAaX7kOLJPh0goAfnvRJOazc+TFB9c3
 fCI01sVCoTSW9y0yzE1O9WCl22g1cTe47+ebjxWIyxMZc7zTPIb8JHqWp
 4lPWv4MC9JllftEiajIuDigtmgGne0soGiUfe/uta/HKIktfIuD4m1xWM
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BiZVP7vk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add E830 Earliest
 TxTime First Offload support
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



On 2/27/2025 3:13 AM, Paul Greenwalt wrote:
> E830 supports Earliest TxTime First (ETF) hardware offload, which is
> configured via the ETF Qdisc (see tc-etf(8)). ETF introduces a new Tx flow
> mechanism that utilizes a timestamp ring (tstamp_ring) alongside the
> standard Tx ring. This timestamp ring is used to indicate when hardware
> will transmit a packet.
> 
> The allocation and initialization of the timestamp ring occur when the
> feature is enabled via tc-etf. Since the timestamp ring and Tx ring are
> tightly coupled, both must be configured simultaneously.
> 
> To support ETF, the following flags are introduced:
> 
>   - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
>     support.
>   - ICE_FLAG_TXTIME: PF-level flag indicating whether ETF is enabled on any
>     Tx queue. It is checked during ring allocation to determine if timestamp
>     rings should be allocated and is also referenced when modifying queue
>     count via ethtool -G.
>   - ICE_TX_FLAGS_TXTIME: Per-ring flag set when ETF is enabled and cleared
>     when disabled for a specific Tx queue. It helps determine ETF status
>     when transmitting timestamped packets and is used by ice_is_txtime_ena()
>     to check if ETF is enabled on any Tx queue.
> 
> Due to a hardware issue that can result in a malicious driver detection
> event, additional timestamp descriptors are required when wrapping the
> timestamp ring. Up to 64 additional timestamp descriptors are reserved,
> reducing the available Tx descriptors.
> 
> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
> 
>   - E830: Maximum Tx descriptor length of 8096 (8K - 32 - 64 for timestamp
>     fetch descriptors).
>   - E810 and E82X: Maximum Tx descriptor length of 8160 (8K - 32) .

This doesn't apply.

Also, some comments from a glance over this.

...

> +ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
> +{
> +	struct ice_vsi *vsi = ring->vsi;
> +	struct ice_hw *hw = &vsi->back->hw;

RCT

...

>   static int
> -ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
> -		struct ice_aqc_add_tx_qgrp *qg_buf)
> +ice_vsi_cfg_txq(const struct ice_vsi *vsi, struct ice_tx_ring *ring,
> +		struct ice_tx_ring *tstamp_ring,
> +		struct ice_aqc_add_tx_qgrp *qg_buf,
> +		struct ice_aqc_set_txtime_qgrp *txtime_qg_buf)
>   {
>   	u8 buf_len = struct_size(qg_buf, txqs, 1);
>   	struct ice_tlan_ctx tlan_ctx = { 0 };
> @@ -947,6 +1047,27 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>   	if (pf_q == le16_to_cpu(txq->txq_id))
>   		ring->txq_teid = le32_to_cpu(txq->q_teid);
>   
> +	if (tstamp_ring) {
> +		u8 txtime_buf_len = struct_size(txtime_qg_buf, txtimeqs, 1);
> +		struct ice_txtime_ctx txtime_ctx = { 0 };

IIRC, preference is to initialize without the '0', {}

> +
> +		ice_setup_txtime_ctx(tstamp_ring, &txtime_ctx,
> +				     !!(ring->flags & ICE_TX_FLAGS_TXTIME));
> +		ice_pack_txtime_ctx(&txtime_ctx,
> +				    &txtime_qg_buf->txtimeqs[0].txtime_ctx);
> +
> +		tstamp_ring->tail =
> +			 hw->hw_addr + E830_GLQTX_TXTIME_DBELL_LSB(pf_q);
> +
> +		status = ice_aq_set_txtimeq(hw, pf_q, 1, txtime_qg_buf,
> +					    txtime_buf_len, NULL);
> +		if (status) {
> +			dev_err(ice_pf_to_dev(pf), "Failed to set Tx Time queue context, error: %d\n",
> +				status);
> +			return status;
> +		}
> +	}
> +
>   	return 0;
>   }
>   

...

> +int
> +ice_aq_set_txtimeq(struct ice_hw *hw, u16 txtimeq, u8 q_count,
> +		   struct ice_aqc_set_txtime_qgrp *txtime_qg, u16 buf_size,
> +		   struct ice_sq_cd *cd)
> +{
> +	struct ice_aqc_set_txtimeqs *cmd;
> +	struct ice_aq_desc desc;
> +	u16 size;
> +
> +	cmd = &desc.params.set_txtimeqs;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_txtimeqs);
> +
> +	if (!txtime_qg)
> +		return -EINVAL;
> +
> +	if (txtimeq > ICE_TXTIME_MAX_QUEUE || q_count < 1 ||
> +	    q_count > ICE_SET_TXTIME_MAX_Q_AMOUNT)
> +		return -EINVAL;

Should the bailout conditions be checked first?

> +
> +	size = struct_size(txtime_qg, txtimeqs, q_count);
> +

No newline here
> +	if (buf_size != size)
> +		return -EINVAL;
> +
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +
> +	cmd->q_id = cpu_to_le16(txtimeq);
> +	cmd->q_amount = cpu_to_le16(q_count);
> +	return ice_aq_send_cmd(hw, &desc, txtime_qg, buf_size, cd);
> +}
> +
> +/**
> + * ice_aq_ena_dis_txtimeq - enable/disable Tx time queue
> + * @hw: pointer to the hardware structure
> + * @txtimeq: first Tx time queue id to configure
> + * @q_count: number of queues to configure
> + * @q_ena: enable/disable Tx time queue
> + * @txtime_qg: holds the first Tx time queue that failed enable/disable on
> + * response
> + * @cd: pointer to command details structure or NULL
> + *
> + * Enable/disable Tx Time queue (0x0C37)
> + * Return: 0 on success or negative value on failure.
> + */
> +int
> +ice_aq_ena_dis_txtimeq(struct ice_hw *hw, u16 txtimeq, u16 q_count, bool q_ena,
> +		       struct ice_aqc_ena_dis_txtime_qgrp *txtime_qg,
> +		       struct ice_sq_cd *cd)
> +{
> +	struct ice_aqc_ena_dis_txtimeqs *cmd;
> +	struct ice_aq_desc desc;
> +
> +	cmd = &desc.params.operate_txtimeqs;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_ena_dis_txtimeqs);
> +
> +	if (!txtime_qg)
> +		return -EINVAL;
> +
> +	if (txtimeq > ICE_TXTIME_MAX_QUEUE || q_count < 1 ||
> +	    q_count > ICE_OP_TXTIME_MAX_Q_AMOUNT)
> +		return -EINVAL;

Same bailout question

> +
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +
> +	cmd->q_id = cpu_to_le16(txtimeq);
> +	cmd->q_amount = cpu_to_le16(q_count);
> +
> +	if (q_ena)
> +		cmd->cmd_type |= ICE_AQC_TXTIME_CMD_TYPE_Q_ENA;
> +
> +	return ice_aq_send_cmd(hw, &desc, txtime_qg, sizeof(*txtime_qg), cd);
> +}
> +
>   /* End of FW Admin Queue command wrappers */
>   

...

> +/**
> + * ice_vsi_cfg_txtime - configure TxTime for the VSI
> + * @vsi: VSI to reconfigure
> + * @enable: enable or disable TxTime
> + * @queue: Tx queue to configure TxTime on
> + *
> + * Return: 0 on success, negative value on failure.
> + */
> +static int ice_vsi_cfg_txtime(struct ice_vsi *vsi, bool enable,
> +			      int queue)
> +{
> +	bool if_running = netif_running(vsi->netdev), locked = false;
> +	struct ice_pf *pf = vsi->back;
> +	int ret, timeout = 50;
> +
> +	while (test_and_set_bit(ICE_CFG_BUSY, vsi->back->state)) {
> +		timeout--;
> +		if (!timeout)
> +			return -EBUSY;
> +		usleep_range(1000, 2000);
> +	}
> +
> +	if (pf->adev) {
> +		mutex_lock(&pf->adev_mutex);
> +		device_lock(&pf->adev->dev);
> +		locked = true;
> +		if (pf->adev->dev.driver) {
> +			dev_err(ice_pf_to_dev(pf), "Cannot change TxTime when RDMA is active\n");
> +			ret = -EBUSY;
> +			goto adev_unlock;
> +		}
> +	}
> +
> +	/* If rnnning, close and open VSI to clear and reconfigure all rings. */
> +	if (if_running)
> +		ice_vsi_close(vsi);
> +
> +	/* Enable or disable PF TxTime flag which is checked during VSI rebuild
> +	 * for allocating the timestamp rings.
> +	 */
> +	if (enable)
> +		set_bit(ICE_FLAG_TXTIME, pf->flags);
> +	else
> +		clear_bit(ICE_FLAG_TXTIME, pf->flags);
> +
> +	/* Rebuild VSI to allocate or free timestamp rings */
> +	ret = ice_vsi_rebuild(vsi, ICE_VSI_FLAG_NO_INIT);
> +	if (ret) {
> +		dev_err(ice_pf_to_dev(pf), "Unhandled error during VSI rebuild. Unload and reload the dri     ver.\n");

extra spaces in 'driver'

> +		goto adev_unlock;
> +	}
> +
> +	if (enable)
> +		vsi->tx_rings[queue]->flags |= ICE_TX_FLAGS_TXTIME;
> +
> +	if (!if_running)
> +		goto adev_unlock;
> +	ice_vsi_open(vsi);
> +
> +adev_unlock:
> +	if (locked) {
> +		device_unlock(&pf->adev->dev);
> +		mutex_unlock(&pf->adev_mutex);
> +	}
> +	clear_bit(ICE_CFG_BUSY, vsi->back->state);
> +	return ret;
> +}
> +
> +/**
> + * ice_offload_txtime - set earliest TxTime first
> + * @netdev: network interface device structure
> + * @qopt_off: etf queue option offload from the skb to set
> + *
> + * Return: 0 on success, negative value on failure.
> + */
> +static int ice_offload_txtime(struct net_device *netdev,
> +			      void *qopt_off)
> +{
> +	struct ice_netdev_priv *np = netdev_priv(netdev);
> +	struct ice_pf *pf = np->vsi->back;
> +	struct tc_etf_qopt_offload *qopt;
> +	struct ice_vsi *vsi = np->vsi;
> +	struct ice_tx_ring *tx_ring;
> +	int ret = 0;
> +
> +	if (!ice_is_feature_supported(pf, ICE_F_TXTIME))
> +		return -EOPNOTSUPP;
> +
> +	qopt = qopt_off;
> +	if (!qopt_off || qopt->queue < 0 || qopt->queue >= vsi->num_txq)
> +		return -EINVAL;
> +
> +	tx_ring = vsi->tx_rings[qopt->queue];
> +
> +	/* Enable or disable TxTime on the specified Tx queue. */
> +	if (qopt->enable)
> +		tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
> +	else
> +		tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
> +
> +	/* When TxTime is first enabled on any Tx queue or is disabled on all
> +	 * Tx queues, then configure TxTime to allocate or free resources.
> +	 */
> +	if (!test_bit(ICE_FLAG_TXTIME, pf->flags) || !ice_is_txtime_ena(vsi)) {
> +		ret = ice_vsi_cfg_txtime(vsi, qopt->enable, qopt->queue);
> +		if (ret)
> +			goto err;
> +	} else if (netif_running(netdev)) {
> +		struct ice_aqc_ena_dis_txtime_qgrp txtime_pg;
> +		struct ice_hw *hw = &pf->hw;
> +
> +		/* If queues are allocated and configured (running), then enable
> +		 * or disable TxTime on the specified queue.
> +		 */
> +		ret = ice_aq_ena_dis_txtimeq(hw, qopt->queue, 1, qopt->enable,
> +					     &txtime_pg, NULL);
> +		if (ret)
> +			goto err;
> +	}
> +	netdev_info(netdev, "%s TxTime on queue: %i\n",
> +		    qopt->enable ? "enable" : "disable", qopt->queue);

string_choices helper can be used here

> +
> +	return 0;
> +
> +err:
> +	netdev_err(netdev, "Failed to %s TxTime on queue: %i\n",
> +		   qopt->enable ? "enable" : "disable", qopt->queue);

and here

Thanks,
Tony

