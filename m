Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09545AC7981
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB95240D38;
	Thu, 29 May 2025 07:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFSjpKTf3B6Y; Thu, 29 May 2025 07:18:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2152240D43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503113;
	bh=sFUmZ3i5Xf2hLFsv6Fd1U7k/hw5bZh/kAdVFsrTH0RM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fR7+nIxx4kbWyc7N5fHiRMIInWUorhDMrnVMpTxMIJNPITCRjy5UdvJJaRCntbr2q
	 Zv1WFZk96WhG5P5sLHYvprcPgpUXc+pfHxGsSytumqXsKGEOOQNuOfeqkrHhheXMh8
	 IVN8nEaruLT0cgsvRQyAsNZFYLR2oDglLLfT1OsKa9/+Qg40mXP9EYscmL123XVJq7
	 k0gK9AUQdc+33GdwP9WKkrjIrO2Z6UuBrfnrhs1EAMiVSGToUdjMLpiR1SEof4Nune
	 QyH/+l5B5DAF0ojkVBZDlwq9HNzBhPF9fnqp7O045v8Xp0bCyOF3BvR4HyXLue/zlg
	 /FpYYEXU9OiKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2152240D43;
	Thu, 29 May 2025 07:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CE31B14F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFA92820E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FG7gUb0zcl6y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:18:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 01F4E82100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01F4E82100
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01F4E82100
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:18:29 +0000 (UTC)
X-CSE-ConnectionGUID: B7gsDh1KSYyU1XLXAuO5aA==
X-CSE-MsgGUID: NU3z65VVTUuZh227DLzR7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="61605702"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="61605702"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:18:30 -0700
X-CSE-ConnectionGUID: TgpSf+5LRP+R4/f24GmmIg==
X-CSE-MsgGUID: D65+3krhR7eFMYqLR/1xkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="143813252"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:18:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:18:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:18:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.87) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:18:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eh2NjRz8Nlxw9CXzwasxrn+nWxbLDXdvpHAuKXgpGFutokq+UjkjVUgA54UOZ8M1qa1nAglUKCLNd7Hbega7qjkj/OYbXtJneBqjEb4K+N2XaB5Ts+Nin6BmHVKolDD7EfSG42I9PJY9sCHIulCNAIziFFsipJXz4fEeIGfplvyPiGmkmrAgej+D036yH5sxy9TiQw2tkxOQ2zfBZQSZ7b9xx//1pCJzPRpVuvaenNrRLA7Uf/ZfVBmiXXkbLQCdYERfCCjjgfPBQN4nj+xx5XYRNd/tdRqRD7i/boST3xKujLj7IdqIUlKrIWD63QV91Log37IpVoGZLzcTeQTemg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFUmZ3i5Xf2hLFsv6Fd1U7k/hw5bZh/kAdVFsrTH0RM=;
 b=kleLT/U6tjha80q6nc9K1UZSqvIMVRNtJLdF1JqaQO0vJKwR10lKOeANnk/Q20bo2g9g6qkdzXWsadIEXZULTGhMgjhQdQ94EivMrUNWC73A9q1wsdoIoS9D8O2vOOFwkGIVDLIuanxDz6TD9smFs2oGUo0iizjE5ggRd/sLH8efPaWesB8OMaxg9cWC1+rswML7xMDnarklX5SjoFi+GR1PwnOI8a8nEa0Lw8CuBGPhFX/nIu6OKYzWfwTUKTAT7k/c7VkETIrnMtRWxGx5nPtWKvswul5734/OdA/QHRxQe74cFT3VoIiuwnAZ0D6+1RTXokDsysKD8KRLlT4Jag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 29 May
 2025 07:18:12 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:18:11 +0000
Message-ID: <6f3e6161-3d5e-4f1a-a602-9d853f72c216@intel.com>
Date: Thu, 29 May 2025 10:18:04 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-2-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-2-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: 49be8e2e-cd3d-4e99-a6a3-08dd9e80f84e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkFheUdoMERKNWpiQjg1VzU5RHgvcWZBMG5yeHJ0VXFOK0lsbDRDMDdPZXZ4?=
 =?utf-8?B?eG5sWEE0bVpzZnpmNUJMMzBqajlhOHpuWXdFOTdsdEowL3l0ems4Tjg4UGhV?=
 =?utf-8?B?dmdNREVmMmE5OWZMcCtqemVYYTB6a1FvaEUrL294WFpOR3JqYXZNTXEyTDFT?=
 =?utf-8?B?SGR0T0Zmckl0TU41ZXVvVGFCam5FT0tmdEczWHVCZHRxMDE3RkNaM05sOTJI?=
 =?utf-8?B?Sm5sTzNYckJvaitacVRLTmNRdnMrNTV0Y0syS1lWWS8wajRYUFl3OEhMOTNT?=
 =?utf-8?B?ZG4reSt1VGM4dFMxenNZYUZ3L0JsdVBmeis1SDBIY1RYQVBsQldVend4Nzg5?=
 =?utf-8?B?bjBJc0ZqZVRzK1hVejQ0Rkx6NXpaZUoyaXBjUmx1cjB6Y256YitZMk1Kb2NK?=
 =?utf-8?B?bFpzL2pQYnNueVNqUjNvRlIvL3luUnpDZUNpa21SMTJjUzhYaVFLbURsb3ox?=
 =?utf-8?B?OUMvM2s5blRGbFdiOEVzWjhJY21BTStyR0YxVTgvYVRCTlVDL2JqWUxVQ24r?=
 =?utf-8?B?TmU1S2ZHcm9PVGF3dzFsaUcwRi9hWmdJcHQrUkZCd2tieGl4cHY3Um8vUFRl?=
 =?utf-8?B?dkMyY2oxRWl6UElaUlVQQlRMdENidGl0RjBCWGxKUDBST05UTGIrUXBDam51?=
 =?utf-8?B?MUJKNzhrYjFCcVpBb1JkeFdxcCtYOExmVnpLa3ZXdFlyL28xZEJBYWdoMm90?=
 =?utf-8?B?UDZyNkoyYy91dU40MlVtQjRDWFBBSWJzU09jZ3JVd0ZMS3ZGWlV1SkdSeGFI?=
 =?utf-8?B?cnliaUJJcVJ3dDFmdjU3algvTjJlc3A4VnN1YXBPMWk2QmlwT3ZTdDNEbm1O?=
 =?utf-8?B?eWd2Y1pRYURyVXVYZ3MyNG5CaTNrSHh1Q3REeUtTRURweXA0dTFtY2k2V3pw?=
 =?utf-8?B?TGZLT3E1Y0NzRjNnVXVaaUxOTStUYkgxejFSQWM3RWpOUDNUVjkrOWlvb1VW?=
 =?utf-8?B?UzVRRlY3VFBwdDRHRm5yWWxYcjJPNGxWWVdUT1VzSXJUL2ZRTWhHY2hadFhQ?=
 =?utf-8?B?ZjJMeWZ1dFZWU204eDBYZEpvNyt5bDBENXpaZHdwM25Jb1YvU1paYUErMUhM?=
 =?utf-8?B?TllTWit0dmYyTHlxaVY4M0U5K1lFRXc2MjFPdU1Nd01jbU1XL21UeXc2WVd6?=
 =?utf-8?B?NmxUTU5mS25aL3JDZEVOYWZMeHNodW1RTnF3NTJiNVVESjFYZm1xV256RXdC?=
 =?utf-8?B?emdUTFJmVDlIZ3VJUi9nakxNRWdBWlgrMDBmaXRWQmhld3NjMCtYY3RRNUJY?=
 =?utf-8?B?aXArLzZGbDJZZXllc3p2RmFwTGNVUjNmYlpoV2UyYVJCT1c1WWcrN0ZjWjY1?=
 =?utf-8?B?WW5kWXc3SHU3S0liU0ZSL2ZMTFpLdzZUcnErN0JtL01aUy9YcERad0RCRjBr?=
 =?utf-8?B?U2xGUTRzeE5wVDF4WDR5VCtzcE10ZkpZZGNLQi9CeC91WmlVU21iUHlkQmww?=
 =?utf-8?B?UEhDbG1pTlVaL0ppZTEycFUvN2dTemQ4bXZ4UEErMjZaeTFySko4dVlmK2Y2?=
 =?utf-8?B?cHh3aFlONlJjdHhCMnM3aFBvMGp3R2V3SCt2R2NweW1PeldMcTcrOFJVUUUv?=
 =?utf-8?B?NGdybUs0TDJ2UGJBeFJzMFVoM2wwK04wZmdNREFYbnJCS3hNOFhvN1cxbkRL?=
 =?utf-8?B?bmYvSHVWajZxeHY1dVBURHoxWG1mb0ZaMUduZTA4TmxScTRNTGpJM1VhOEdR?=
 =?utf-8?B?b1ZCcEtGVkttdUF3WEtBaFUzYmhnaVN6THh1UStGd2k1RzFlbEZMZDkwb2Jy?=
 =?utf-8?B?bTcrc3JoQzNFYnVWMVlBb095Q0RVQWRwOUZPRXZuL1hGTlcvbCtRdXYzQ2hV?=
 =?utf-8?B?aWg3ZHBBUy81Z3hXM2l4ZG1Zb0VSWkpBK09sTVZaN3pib3FlR3ZmcWcvSkFL?=
 =?utf-8?B?d2MzcDU4V2VMWkc4REhBR0dlU2xHVTVFNVpRbEc2d0U1V0RGdEFIK0Z0R2tN?=
 =?utf-8?B?TFhNWHBuU1dEdE1taU96Z3NCL09NSDZpakUvdDFMdS9TazRHQkc5bEJIczMy?=
 =?utf-8?B?dmVpOVc1d29BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3p3S2xKaFE0N1g3WTJ3SHQrN3hFQ21YZkc3ZmRZZERMYnN2REZ1QjRwTEFV?=
 =?utf-8?B?UUhBNTdvcWpOamFrcFdid2d6RTZCd09Pb3k1UzZQVjRZVnZVMFAxYWFaWDhU?=
 =?utf-8?B?ZHNtZG1XZ09SU3dGWjFISG9VZk9uREZSUTNUaURRdmc5N09OWlJTelN2bzc2?=
 =?utf-8?B?ZkJHRURQbzYwOXdmMWY2UWgwOFhQVFMwVmUrakwyNXVkSHNsOGoyVjludmov?=
 =?utf-8?B?ZkFJM0xZZEQxZC9QNFFWLzJTV2pSRzdHeEVHbW1mQUhPR2VCOE95MWo3L2VT?=
 =?utf-8?B?eFcvYmNHQVVNMFYwdjhIdUdMWGRoWmtZdUQrQnVnVFF4c3J5Q2FINXF5VWYr?=
 =?utf-8?B?NlRQQkhVbkNqSnhjaGtpUUVWeFZPYlljZGdQS0lpdE1LMFRuK0RxL29EQlpJ?=
 =?utf-8?B?eWVMUGwyMTRkZ3RSY0dTR0dVOUZkWjB2b1I1KzJQTzkxNHBuaTV6QTNNRmZO?=
 =?utf-8?B?Z3BrZVQ0QjhXbkxMczhIcU9wOFN4bU45RHBaa1hUa29uK3VFVTFIUmJiS2E4?=
 =?utf-8?B?WHd3dnNWb0l3UDlWNkk0NFVmb28wVzNQYllLTTI3cEtRcGNiSzZOd3NmMzhr?=
 =?utf-8?B?WU04bG5BRUFlRXV1bUV2cmhLdGN5aVAvbnVGY3RqLytvMktucHlmcXllbGZ4?=
 =?utf-8?B?aC91aWNUWDBIZSs4Yi9jRENJMHJFQ3FYNk1BNmdpOVluKzN4bkpKSkwwUWt0?=
 =?utf-8?B?ckoydXRjaTlheW9YaGp6REIwNnBmeW43aUM3c1kxdUlkdDN1WXk4RzhtSFdv?=
 =?utf-8?B?N0RLK0NIckg5UE53allFaDN5VVdwa253cTlMaENSUUZmNkJpd1BMUkdzZTRR?=
 =?utf-8?B?Q1AzSGZLV0NCdCtNeXRVVUhhOTFTL0JId2dyVG5mMFJROGJPUG5kNER4QWRv?=
 =?utf-8?B?Ri9ITHdFbjJYbFd1RTZxdVZZMkhuREZGbkh1dUl3alh3QlB3STZBNDhaMmww?=
 =?utf-8?B?MW82T1dhcVZPeEhKeENlcTRLdVJWWmVpR2RWKzYwa3ZXamFSMEo0ME5UOTY3?=
 =?utf-8?B?T2ZwQm5mY2hwelFaQ1VQUGVZY0ppS1lVcGFTaU1sNEk2RmtaNWx5eis4b0Fy?=
 =?utf-8?B?eTBWTXhuYW9jS2RPUnJ6WVBhdWR0NmRlNkxKNWVzZURscmlmZk96dEFiUlhG?=
 =?utf-8?B?QityRmFsZlhLazN5cURmV0Fsem55STZNcmlISmkrQ2ZOSktmdC9abVl4Y0Fl?=
 =?utf-8?B?cktlRWx2dmFQclJ1R3lOMy9iR2pVa2JHV1JHVjJBUm5MTHdkYXRwTDFhUUhp?=
 =?utf-8?B?azBzeHlIOEt0bmlSZC9UaTRBMXJjd2IyZllBbXBjcDN3eE8wRmhGVDlLK2Rq?=
 =?utf-8?B?ZUQ0clVDbU96dWVJd0xDcWJyU3N1TkJJb01GdU9hbFp6ZXN2R25oMXFvT0J5?=
 =?utf-8?B?dlQ4TUUvdjE3Ukk1TGJGby9UcUxzS3p4QzRmblpRUkRLZjYya1dwQ1BVR0Yx?=
 =?utf-8?B?U29NaytucThmZXhIa0FiREtmYjd0UTJrRTJyelAyMDMwY0preEhXb3A4ZFBu?=
 =?utf-8?B?cUV5YkdMLzczUHZTT2FlZTNMZEJyQTh6K3I5TDFYcitwWWdFbUxXWUpvSEhu?=
 =?utf-8?B?YjY1T2hQR2w0VXkvdmFyRVlsdDZtWHBPRHozRDg0dkdCUU4xR0x4R3BMbnND?=
 =?utf-8?B?VkR0MzRzYTg0anRENERTZU9IbHJ3YWpWQ056c0Q1MnBiRjdwbmZVTmVVcXpq?=
 =?utf-8?B?aVdqYllPbk9mc0VaNHBOekE0QmF0VmQxU05rc0UzdDFHUVNJc1JOdHFrWUZW?=
 =?utf-8?B?dTVhUU9KbkF6WnRkaTc2bFJKWWpIcjEyaFNiN1NpMy81bkkySkVPSEJTUThs?=
 =?utf-8?B?R25USEhQVTBkMDlLNFpTbmpSeTY5bHAvZmg3ckZtdk9keGl1Ty85UU5Bbkdl?=
 =?utf-8?B?RmhDdi9mQ1FQMzdwaXFEdHVycGYwVlBoa2d2VUdPSThpQU4wcHJ3cit5QnIz?=
 =?utf-8?B?cW42QlZaaFdtNXo2MXd0MkVwclhIMzVrYkFzUDEvSm9TMjFqRDJaOUJBczhL?=
 =?utf-8?B?aURpTUlVUEZzRlB0TFFNWlVZNUNoTnZVbjgwV1FPWmZtbWNDdkRKU2tUSmww?=
 =?utf-8?B?RDM4RGY5UWtZc1pZNWhpQUhBV2cwcGhUZ0hKdVhhY3hJZWR3a2ZJTityWUdD?=
 =?utf-8?B?M2JlOUpXejRBRm0xQng4NFcvM0lZMmNxY0pQbzVDbmVaMzB0VjVlVUZHZTdm?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49be8e2e-cd3d-4e99-a6a3-08dd9e80f84e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:18:11.8614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 09/R7O1qQQ/JkEP0b+WrU8cEJ62mpzJQfqbDPbGywtCiO4rHcNnD1GhGiVjr0OazjKPuRPHqzNbxV5TX4znK1RsuTQQirt+O/CA26bvy5bQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503110; x=1780039110;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f6wHGrA2kPJOIDQZRjzwVv2hnPg5TlOe435BeXuMMrY=;
 b=f7icPjPxWdlvksqE1WIfyqirFCNFrvvLlTJytJ5sVxxh2+fbUZBP4Lvm
 SXTRZLfTKGrk2RWB8H9v/JTjSsLwiAIJJCsB9mzbXzm2lZCsq7v+se/oe
 jG/PcHdViraPOHpEH1pD1oirLee0LgWHN35zqKlVQaBAIQkPHDjdv+O/D
 1I4RLUws3tRL4CL/kbMCLMI88WtNLEylUpFHsm5UOATa/ZntOPq3MsQrY
 Sxh9Ndzpb0obiZZC6T371X//b960S6qKpO+0d0Jg1pD928gr5PVxO9zX5
 TwUfAwY3mQAVvmLz9SL/g1Edy/F+A0CPkV1EYKCIE9Fukp2udQrr7uEQn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f7icPjPx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/7] igc: move TXDCTL and
 RXDCTL related macros
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Move and consolidate TXDCTL and RXDCTL macros in preparation for
> upcoming TXDCTL changes. This improves organization and readability.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 11 ++++++++++-
>   drivers/net/ethernet/intel/igc/igc_base.h |  8 --------
>   2 files changed, 10 insertions(+), 9 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
