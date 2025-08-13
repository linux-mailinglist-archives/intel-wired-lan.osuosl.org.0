Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E1DB242ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 09:40:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6193B411CB;
	Wed, 13 Aug 2025 07:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xslxlmhu9bC; Wed, 13 Aug 2025 07:40:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CB8B410E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755070852;
	bh=4KG1JY3269E/hfyR/2aHVuKD0MBzDoH7dhbMXoGgJjE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OSR3xtWL5z6xPxudlN9uKMEG7hZ6Lx270eSbV0ItXioBHjTYpBRk4NATt0KHleZgE
	 bIFE7h5NEWSFZISea8TFIbvvChUz7h7hAS0xKl9eRNdzxZ9VUw6/73jsk0MSpPIHM+
	 kRGfcEeJbFousKWiMtkcdYMLC5tqEW+aSgrARFPP0XeaToACBqvmWFz4EsPcofLEod
	 QEk8SaqJAITXRXlZPXx0/dPuuPdYq9hhb9F91ERVcSmuJxAuFLMYBPuTLHQD8hW8nl
	 /MEoPQkem1doV9m52NGyZuKAJ/Siu7RXKLe+n1GYISP/NvAD6JH/p8Wkj/OitBSkFR
	 JTdneBbdUpq9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CB8B410E1;
	Wed, 13 Aug 2025 07:40:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C48FA938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5D9B82219
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5V82ArPgx7wl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 07:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BCF8D82213
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCF8D82213
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCF8D82213
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 07:40:49 +0000 (UTC)
X-CSE-ConnectionGUID: eY+Jhd1EQ9G92hpCanXnAw==
X-CSE-MsgGUID: D6slrLrqSx6DIRKSEzR/jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68058722"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="68058722"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:33:42 -0700
X-CSE-ConnectionGUID: 5yGvIoSyQZCbbwQBIRkj2g==
X-CSE-MsgGUID: 77fd8dkPSLCpz0PLZpsSHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166673731"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:33:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 00:33:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 00:33:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.64)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 00:33:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CKWcv5jGhipAjlxyO9DSjVbXWjKrSUxfkKvYX/Ff0Ccyymgv5K/xJSEnJPDPQ0JU87G0xP1tkTauh8D7tPSjX+kHqmJLHvtCyPB7yqj7expAcQtceEmHQAOgr7jHlQJ0T0BROEyqWXHlZg0D5+3EX47n5fi9dC6X8DsLSMxyiHtOzAaevy3akSVUw4wX0kOGO39hT2xH4wYyTAjougtjcPZ8QIydtN7YCnUiW1/SXPOA1C2sO2eDrvSuuKm1jY91pSsz4bSZW4uywhYsHehEQQEAdLnHxDt5OFXqVc7JC+b474jXeZsu5Jcgozj5DN72WH30MiRqj36wiiMU5VA4rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KG1JY3269E/hfyR/2aHVuKD0MBzDoH7dhbMXoGgJjE=;
 b=gr/wkdO+7xseAFnlO+AXaUSN7EVhCVgo4dwqZ4RwnO1XONQmbb/oF1fXt2w+m7GyPoWH49syYHkyKtKVKBjA/6q/UfjgMOPh6eMQ2VN3FtGA25DZxi/KDobNSlFyksj6JU5gzV2SywDasf5eIhQK4czgddQE5lWK3PtSGWXhXO3k+LZ4fX/bAoFmTeNiH0veI/ak74j+CqzNTHoM/x9DZo52KvfaCl37vkdRCqPVYItB1Hq/ccHJ/B78N8oDlYqTun2LtDqDoZrCkhZf0b1YoLBnPdc6/E1zuq5XahyRQACEDf63IpsBR6REBlN+uDOWWbrD3wL37eAsZc1e/oxOFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6920.namprd11.prod.outlook.com (2603:10b6:806:2bb::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Wed, 13 Aug
 2025 07:33:39 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 07:33:39 +0000
Message-ID: <4d9e2ca6-006d-4da4-8e88-3cf6692432a7@intel.com>
Date: Wed, 13 Aug 2025 09:33:35 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Kuniyuki Iwashima
 <kuniyu@google.com>, <stable@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
 <20250812135714.0e1a7ee0@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250812135714.0e1a7ee0@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P250CA0013.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6920:EE_
X-MS-Office365-Filtering-Correlation-Id: 29889f1f-f74d-4d8a-929a-08ddda3bb8cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEZ0QmcwK1M0bnEybG5MS0IwTkpVU3BOSVlrVGRkL25OOGlCaEx1cndvOUZT?=
 =?utf-8?B?cGZNYVZDTkVKQ0liQTVrYSswSDdlbFcwTUNINGloT0VCOXdSL0YxZ29Ib3lK?=
 =?utf-8?B?NXpRZUpJVmowUzd2WC82aUJzVDFod0V6S21EcjFod0wvT2hUWWFHL1gyUGta?=
 =?utf-8?B?QlpDNmk1Q1pLNHZsbHlGVFFTL3U2bzNNV0ZMOGxGamduNXJ1d0VkTnpwQ05Z?=
 =?utf-8?B?K3QwYVBWWEpZOTFpZXJoQWRXa2k2V1d1NytiVjBhSSsvYWUrN1BuSTlaOUhY?=
 =?utf-8?B?VjExMi9jOG5RbzQ5UGpqWlBPWXhvMElsUzhYM3h0OGd0NGRXMVo2N0tYRDgx?=
 =?utf-8?B?QitTQmY0TGRrblh0UFpScjBWbVlnUEFLMkg1R3RSdzZJOHlKaGJXNFd1cFZ1?=
 =?utf-8?B?NTVrNHpydUo5ZU5oa3h3RThUS3FydXJiZFR6TlJoTnN1SmlJS3lsUlhhSHBy?=
 =?utf-8?B?Zm9ybVVmTFYydFdHSlhkL01aNlZvNHZNZnIxQXZsdjh6cEkvZDc2clU0VGpz?=
 =?utf-8?B?UktEb0xxZEQ1dFU3OGFSaE8wUVg2NzBWa3BuZlZnSStIUk16NHpSMU9VNTNJ?=
 =?utf-8?B?YXVwaEhUNitIWjE3VlU5bHhXTzM1VlkyYlBKeEtXRGFHKzN0K1BRNHJQN0p5?=
 =?utf-8?B?ajY0cjVDWXRPdDMrUndnU3NqckZGVkUzdGpHTjdRQjlOWDhaVlJxYnF0SzZj?=
 =?utf-8?B?a1lSeG1hOUdKdzR2Nm5TV21JNndmdk1mVkFTVHU4bkFJZmx3OVFYMGEza1U5?=
 =?utf-8?B?RG5XRDVSSEplSWJqQlY4ME1JV2gySXh2STdsR1NnL0s0TVpYWjZnNmdrMFY1?=
 =?utf-8?B?U01lTmtRak1GU0xUc0hRMVhzdm82aDRRSUpWQ3JLVWxIZGdwYlprVEs4a0Nj?=
 =?utf-8?B?Q09nZVArWDJPQy9BeWtYb0YxdWZuOFN1LzUrRE9zREh5SUEyNFRGcy9sVmlt?=
 =?utf-8?B?OFA3bmMxOEMrRWgra25TcTR5WkRRSTJUdnN5eTA1Ky90a29TZk1MaUhXamhj?=
 =?utf-8?B?cVB5S2xCWkFoancvdHJsRko3c2gvSlN1N3pPSytnZkVtNjhPM0NIQ2NGckhU?=
 =?utf-8?B?QmxkanIyWXFhYTZ3RkFTa2dFcGpLRTBteHNISjNYN3o5M1A2NmtkWjh2Smd1?=
 =?utf-8?B?NzRNYXRJSFYycVhqVmRWNmlPay80NU5pRkFkRFkzMzRLaVBpWWdiVTZMYVc1?=
 =?utf-8?B?ayt6SVFtQUpFSEZDMVl5UGJvaUp3b1l0dFlLbTNsdUJHWGhDZS9lMzhVMkJn?=
 =?utf-8?B?Z0luT1UyQ29mT0Rjck5FZ29lWHloamJQWG1pR3UzRU5uakp1ZDdLYWNPK1Z1?=
 =?utf-8?B?Q3JESjVFeGh3S0NmNG1JZmE1OTZxNlRrL0swSFllVm84VnFNZFJwVVp2emFv?=
 =?utf-8?B?bVI3QjRFL3hHc3FRU0E5OGw3YnhTT2xrR2hWYzduWG9yYlpDS3NHOXRaQm14?=
 =?utf-8?B?ZEM1WWU0LzNlV2tYelB1OUN2L0ZwUW5QbnZGRUxUWlZ0RTI5V1RrTDBaTDl5?=
 =?utf-8?B?MHRQdUxzTlFjdk56cXd0YjY3V1hFMXFKUFBtcHdPVGZIRXI1R3AxSGNjQlNa?=
 =?utf-8?B?aWtCVW94czNpMUZGWGd3MjBQcDFDbVhaZnZoaFAyL1VvaGczNS9sdlBXZ1cx?=
 =?utf-8?B?WURvNHIrQ1YwaS9RTHAzRnNvdjNPUEV5SkRUektkWDhhL2JXakptM2U5eExX?=
 =?utf-8?B?b0hRQmg5WUl3N3BTRjdXalVEbm5tcFV1cklIYmJIS1RYNDhtcWM5SDZmWHNP?=
 =?utf-8?B?ekJpVzVCMlB3bCtDQVpBeG4zai9QMXZ0MVpSb3JlZWZtY1hDNmM0Um1TT29S?=
 =?utf-8?B?NEpVMjlFOGFWZXJVUjZtNytLUCtIdTZOVmtNSHNjYzlxWjlYS2hVZmVyNkxj?=
 =?utf-8?Q?TT1EgoScM1V04?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmdXVjh4UXdhRVM2MWZhT3ErYk5vRnNqdmY0UFZlNStGNk81Z21qSkFibFBI?=
 =?utf-8?B?amNKbVhuMGdXNFNyU0Fpd3VrTTZJcDZxUklwKzRwdkM3MDN5K3g4aEdIMnZC?=
 =?utf-8?B?Um96dVBhanE0Tnc4dTdmdWlUUEt4MWtlcTZ5eGxDaG1oeHpMSWJmTklIbGFH?=
 =?utf-8?B?VnZ3dE4wYmxtdWdoWUZVSU5BckZWSi9LVWU4Rkxpci8rbk1CVktuOHFsNFJr?=
 =?utf-8?B?dDFHdW9iZkUrN0xudWJzZWYyQ1lqNVllOEIrSmpqNWN1bXN2TEFIZHhwaHcw?=
 =?utf-8?B?azBacDNKUmFZbkRsTHEvVTU3R1FyU2ZqOEUzWG1od21rMXdERGJjYXFHVGo1?=
 =?utf-8?B?bndmVWJiN3JUbDhJZm9NTU9YZzBxNXgyMGp2WWdLcnkwbVJQTCthbHE4am8w?=
 =?utf-8?B?UTBLVVVHd1NIVjROMDV2ZmJhQXlORnNLbFI1cXJReG9MSU5FKzNtemV5M0h5?=
 =?utf-8?B?T2lKRi9kMUlFMW12ckJPUXE5T0hFUk8yeTQzOU5NcUp0N1YrMnhybEtKek1S?=
 =?utf-8?B?NEtmL1ZNTTBWT3NQeU1WbWN3RDNtdVgxanNzQURnb24rQTMvaHVlZy8rZXhu?=
 =?utf-8?B?R0Y2b3FXa05uS2xaaDErQU5ta0pTOVNKeXQ0RndJc3hJUGRtTnBGMmIxQnp4?=
 =?utf-8?B?OGNFeWFzVUpoQ2U2U1dnZXhHTWh6clEwYTVnS3o2MUh4UVlGZFR4aXlEby9N?=
 =?utf-8?B?dEcwZUZBajF0L2hrUzdVZ0pxZ1RsajFmZVJuMEttd1JOVExBcndjbnNSdk1P?=
 =?utf-8?B?MnVySzJtdWkzSlFVSFhnaG8rb0Y3UTRtSFh6SE5pZnY2Q2pKN3dIdEkvd1p6?=
 =?utf-8?B?NWh4c05QV3pwRUlvNGY3RkF2MlhjTTZQMHVjclZ5blRNdWlkRGZrRnJTZ3Fm?=
 =?utf-8?B?WStMUTVVNUJZcUwzTUFJd2M0S2tDQlg4MEU4bElEeW4rb21CdzhBbFRsL0RZ?=
 =?utf-8?B?aXpneW9qSlpZbU0zaDQvUFg2UnE5Uk1jNk9XSFFSeFBSeWRQbkI3YnR1YjhM?=
 =?utf-8?B?ZFdteEdXOW1XM0hURzR3bUdrbU45VkVKMGxGaUhVUklzVFlmVlRIMTlpdlg0?=
 =?utf-8?B?M1gySVk5ZHQ0VnJzR0JxbGI2aHRCT1hBbVFFZHlkejhCY2N4REVZeldyNEhq?=
 =?utf-8?B?WDdncEIzVjhOS3dJaWRqSXRzcTZ4b05QbkY5NTM4YjdGSHMzT1Q0cmJPMTBz?=
 =?utf-8?B?SjF3eDBGS0xyWXVQYWs4NjJocWY3MkU1YjIvaGNQbFV3MWNodkR1RjVKT0Rp?=
 =?utf-8?B?ZDNDcjk0WjZxbTVDUzQrdGRTbVhWb1o0SDhTNXZrd0g3eEZMN3lNUmxvc0Zz?=
 =?utf-8?B?VW5JcGNndnN4RHRJTDZ1a0UrZnZjNGNxVVNEVTViMjZaY2ppVmhSVzloTFN1?=
 =?utf-8?B?RVgzYWpDZE5mSmF1UEJJZklQMHFjcEN5bTdTU3hTYVZQV3pJbmxKUW8vT0pa?=
 =?utf-8?B?ZExPVFlKbGd4RUlKUGtiOHRUbmZpa0ZOUTh2czN3bzJ2Mm9kSmRsUmp2WlZJ?=
 =?utf-8?B?ZjJqejYrWlR1OGV3S1N0QTFDRmVqVG1Fc2czeEx2czNxVDR4WjNkRUlsUFpr?=
 =?utf-8?B?UndJVXJWV2RVcW9yaG1ha08xOFVRRmFiZHBWb0VweGVKWEZyYUE0Q0RmemIv?=
 =?utf-8?B?dUo1eEdsczk5SHdja1Y4L29hLzFqanBZMGJqZ3J3bTd0SDF4NG9IWlhoVUFE?=
 =?utf-8?B?cjBZR3VkVUFxMDdEdUtac3ZGaWVmdEdRTHhHOGNweWdRWWx0MkQyWEJsTHBI?=
 =?utf-8?B?T0ZnU3VzV205alBYZU11T3RJRk82VTdadzVTaG5jYUZUQXNzaHNPRWNCSHcw?=
 =?utf-8?B?bjdKNC9QWU1lNGp0QUZ2dWJDWWdqZEkrUWlRU3Nnb0t4S1RCWE4wUDhxY0Zl?=
 =?utf-8?B?cVhGZmErMlVLOVhveGFSZlFWUjNzUzVhQll5b012M3hKb0JSdFRxWnIxZkJP?=
 =?utf-8?B?SnRLN20yZDh3SldySW1ZdWo2UFZaN1FvdWZBZ2xXb29KblFIOERBQUdjN3Mw?=
 =?utf-8?B?K0gwd1Z2cTVhb0FzRWUxK0h1WWl5RTNmVEJsZ3ZZaWFVZnJ6TmdGdDVpYm96?=
 =?utf-8?B?WHFDUzNCR05mV3hlblNjZUp1L2hFR1NwYjdyM0xLWjZDYTdYZVZFMGhIaGFF?=
 =?utf-8?B?UXEzWktWMkdmK1pjZjE4SkFSTDcwOGR5cFFtK2tZVDEwZ0pGMkhocjVnRmRC?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29889f1f-f74d-4d8a-929a-08ddda3bb8cd
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 07:33:39.6981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZCZPDBpMyFbj1/9gPa2Rv9dPGIvoC0QGqSaDeiy1I9oFGc66BIlzRMX62dbbKfbmVRVjfKCLFWiDX3NudzWym0KLA9N3sT+dET0H193x1QQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755070850; x=1786606850;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDr42sWHWP5/mmRDx9MUfFWoX756TGAHNRpCDZaG7dk=;
 b=XkPgaPzRP1zgi7FNCW7+pu5uHUznTQLgAGXdPnM5r37TJbjU6H3/RffE
 vEPXEWNNHg0grXLi83nS08rvW3tfDxlfzvPvc97EGkY7vyyJ8TD1o1amV
 owYOfbV9bVwtN7vL6CIlknOafRBTMATsXnOXYrhovAA4+le9+gCMzaDH0
 ASJcxgNIbeeX9CKCgyKmO3vVcE87UZ6xwnAIeD0skHm/4ikUOO8qF96Rm
 TCe+FzuIYNUwYiUQi8fWkZQext5jWyNDyZvUiChFPH9r5scKeAatfAHY9
 ESysS0rAb7Y9QDEo+/+QpZLTdXfbd1pkYBLseVohmGFw0rZ2ncxguqPa+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XkPgaPzR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 00/12] ice: split ice_virtchnl.c
 git-blame friendly way
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

On 8/12/25 22:57, Jakub Kicinski wrote:
> On Tue, 12 Aug 2025 15:28:58 +0200 Przemek Kitszel wrote:
>> Summary:
>> Split ice_virtchnl.c into two more files (+headers), in a way
>> that git-blame works better.
>> Then move virtchnl files into a new subdir.
>> No logic changes.
>>
>> I have developed (or discovered ;)) how to split a file in a way that
>> both old and new are nice in terms of git-blame
>> There were no much disscussion on [RFC], so I would like to propose
>> to go forward with this approach.
>>
>> There is more commits needed to have it nice, so it forms a git-log vs
>> git-blame tradeoff, but (after the brief moment that this is on the top)
>> we spend orders of magnitude more time looking at the blame output (and
>> commit messages linked from that) - so I find it much better to see
>> actual logic changes instead of "move xx to yy" stuff (typical for
>> "squashed/single-commit splits").
>>
>> Cherry-picks/rebases work the same with this method as with simple
>> "squashed/single-commit" approach (literally all commits squashed into
>> one (to have better git-log, but shitty git-blame output).
>>
>> Rationale for the split itself is, as usual, "file is big and we want to
>> extend it".
>>
>> This series is available on my github (just rebased from any
>> earlier mentions):
>> https://github.com/pkitszel/linux/tree/virtchnl-split-Aug12
>> (the simple git-email view flattens this series, removing two
>> merges from the view).
>>
>>
>> [RFC]:
>> https://lore.kernel.org/netdev/5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com/T/#u
>>
>> (I would really look at my fork via your preferred git interaction tool
>> instead of looking at the patches below).
> 
> UI tools aside I wish you didn't cut off the diffstat from the cover
> letter :/ It'd make it much easier to understand what you're splitting.

ooof, that was not intentional (turns out that git-send-email itself was
not bothering to generate diffstat when there are merges present :~|)
anyway, here it is:

  drivers/net/ethernet/intel/ice/Makefile      |    8 +-
  drivers/net/ethernet/intel/ice/ice_sriov.h   |    4 +-
  drivers/net/ethernet/intel/ice/ice_vf_lib.h  |    2 +-
  .../intel/ice/{ => virt}/ice_virtchnl.h      |    0
  .../ice/{ => virt}/ice_virtchnl_allowlist.h  |    0
  .../intel/ice/{ => virt}/ice_virtchnl_fdir.h |    0
  .../intel/ice/virt/ice_virtchnl_queues.h     |   16 +
  .../intel/ice/virt/ice_virtchnl_rss.h        |   14 +
  drivers/net/ethernet/intel/ice/ice_sriov.c   |    2 +-
  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |    2 +-
  .../intel/ice/{ => virt}/ice_virtchnl.c      | 2051 ++-------------
  .../ice/{ => virt}/ice_virtchnl_allowlist.c  |    0
  .../intel/ice/{ => virt}/ice_virtchnl_fdir.c |    0
  .../intel/ice/virt/ice_virtchnl_queues.c     |  975 +++++++
  .../intel/ice/virt/ice_virtchnl_rss.c        |  719 +++++
  15 files changed, 1922 insertions(+), 1871 deletions(-)


> 
> Greg, Sasha, I suspect stable will suffer the most from any file split /
> movement. Do you have any recommendation on what should be allowed?

