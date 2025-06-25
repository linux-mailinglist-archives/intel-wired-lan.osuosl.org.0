Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C78AE90DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 00:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 868F9840DB;
	Wed, 25 Jun 2025 22:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DzyiEQ7ZLVjt; Wed, 25 Jun 2025 22:13:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D8DB840D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750889623;
	bh=r1xNw0gXkUgRBhWJcj5dLK5UIPuuN3Xsy+mbdf+vpAA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZoKerRJ0RbGCeB2r774ypTUuqUwuuq2viDV5B2iQAyEsoKTvlmSN7fafanzWc4cql
	 6juKN8+XSe5xv2hFcUADnGRRbjoS7QBWv/MBpc9TuTLFLSiPJihMJIpwh2cNNHxs9e
	 tD4XpqqwbsOBLv6uz4ddBrCXRLTNLJo7DPrTEGZYfmAPYpNO5RAUnYjwNOax8IKgE/
	 CmDmINdkxFNSZzML4JOXvLlCrPfmaPcefolQBmfnktxuhbaRj3olp17/Riv/W7m2GQ
	 BjEeaOR0mtTF5MnT3HrEgw3HWVaBUKotuoQAQp8zZvZ79gwaGI3SdessmeCRd64p7H
	 i2kmVz1AwLGZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D8DB840D5;
	Wed, 25 Jun 2025 22:13:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 153BEE27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEE88840CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:13:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sVjVDdHRdl5i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 22:13:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 110ED840BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 110ED840BD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 110ED840BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:13:40 +0000 (UTC)
X-CSE-ConnectionGUID: +9NfyHGgQDWsPByc9rgpHQ==
X-CSE-MsgGUID: PlHd2bcnSJe+hJnmKr6aHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53046411"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="53046411"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 15:13:40 -0700
X-CSE-ConnectionGUID: M2T5+IxYRlKnQLAITNH7og==
X-CSE-MsgGUID: 4E1IjDLJSUGbyOpWTFTedA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="151859910"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 15:13:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 15:13:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 15:13:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.62)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 15:13:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dMN2naloZm4CsrnMgcmbaJqlESkcPXKzxwliRkZSZ9a9w8Y1N7cGIpVgSAAb6+tQAphG1/B/1vSClMAB3YGMZ4KAuwHDL/qtF2+K5yLTBG9FnMx6fBFGWbUz6/Ax+x2aCflWBoLxZxQ7DwMS3U6JIotN8CgeR9wyLCFNvNTuGets8dIoGFLvP94aYYBuiSAm8JCtMPEUF82sfDpVsBLJs0x4qpvZdni9F2PCgDOGuOaGw5g/7vYWM/eDAG6peyCNhEXjvCXXAW2P+nnm91yojzGH051wixoEoFkfRYifrgcD07/RP7DQ1nBxlBglcIaqznJOnpYeejppf4Gdq/Ma4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1xNw0gXkUgRBhWJcj5dLK5UIPuuN3Xsy+mbdf+vpAA=;
 b=Wytk6unvB9Mu4Hr+ab+SusAgwDNkjL13UhaduyyGPkTTaDa+doGf0bLRLpTUO7cYiBksgdF6XKBjHn1vCSLBqiozfo/9Yq4mOQdWcvXznQ3tzUz6jZpY+Y2wzhmm5MMiwA8KjdZwAurneMKPJO3FGk1RHvzBaiNEXZFF4iaVnBb7W8eKHGYje8PMeUU2KMNkcFz3rAcTOnYU3yPXFz6nyrwZ7kHLpFmPMuRxYt8fvMj57u/17mcAyxu+aWd8oTwwOvXFxP9F+ZohPyoEXrcnHuPWlwf4lj8Q1rdhFTujYugtutTHEmPbPLjDQV1sghiKYFQoIIlDEvaNaFGZRctuiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH7PR11MB6428.namprd11.prod.outlook.com (2603:10b6:510:1f4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.26; Wed, 25 Jun
 2025 22:13:09 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8857.026; Wed, 25 Jun 2025
 22:13:09 +0000
Message-ID: <2a39f34b-bbf8-4c47-98f4-4669be2fcbd5@intel.com>
Date: Wed, 25 Jun 2025 15:13:07 -0700
User-Agent: Mozilla Thunderbird
To: Brett Creeley <bcreeley@amd.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <Aleksandr.Loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <david.m.ertman@intel.com>,
 <anthony.l.nguyen@intel.com>, <michal.swiatkowski@linux.intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20250624142641.7010-1-emil.s.tantilov@intel.com>
 <20250624142641.7010-2-emil.s.tantilov@intel.com>
 <1d1ec8d8-84a4-4fc3-a89e-09cf6b42747d@amd.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <1d1ec8d8-84a4-4fc3-a89e-09cf6b42747d@amd.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::22) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH7PR11MB6428:EE_
X-MS-Office365-Filtering-Correlation-Id: f9fb3e00-5340-49b4-bc63-08ddb43577df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkI1ZndJblArOFB1cWZJSmo2Y2haOXkwM1EycjBRQVZXWG9XSloxRzFOTUFN?=
 =?utf-8?B?Mnp3ZjYwbEEvdlFrVFpzMjlINWpOcUFDbWEya3QrQ1YxUGRDNUZQTkNjQnRm?=
 =?utf-8?B?UXN5WGluYzNEbmludVIrZ0ZsdkFEcTF3aTc3SFdzSTBBYzBvb0l6aXg0eXNR?=
 =?utf-8?B?Z2lKWmxmTXRaTjRkM1FBMzJHQVdIUFhvcjdnb0IzTzRPak9kNlhrZEJYd2Q0?=
 =?utf-8?B?NHp3OCtEVXdlRlRZc3lBWjNUS1ZMQXBaNzR0a2dwcHZjUHFCazlGRW1IZjJY?=
 =?utf-8?B?VVZ2Z0dFYnVPSGs3UG0yTi9DQVJPc293cU1TWmYvRkp5andieHpZbWdHYTdX?=
 =?utf-8?B?YzNodU9WOUdtKzE4VmFDeTd1VG9EVHNPRVIzd0V6RHVJOWFNNFg0MXl2V0Iv?=
 =?utf-8?B?RVFPbUNzNmYyS25pamFrZTJnU0ltVnVPVXd0ZUJ5ZTN4ZGZ6anRuL3RuS2ZY?=
 =?utf-8?B?Zk16Z2Q5K0xjZEpHbklvNFVIN29PVGpJNnJvbm85TzZCVTRmci9HVmdaSFVZ?=
 =?utf-8?B?bVlIN3AyZlVmZ3g5QzVtSWhFcE5rcW10V1VZUmdPbWZ1a2tXR2hqUHhMM1pV?=
 =?utf-8?B?MmtoeHBmZ0ZUenU4TG9FbHY1VG1tZzhOODRWMVYwZzM1MVlKcU00OVdSbHZi?=
 =?utf-8?B?M25pUVRhUGJyejZDT3d1am9mQjEvOTI5WDlOaDNwckhqS3NNaU1DYWZ0Szlo?=
 =?utf-8?B?T25ENEh5cVJEVXZ0endiRER4MjdURWVVS1V1TlllZXJya3dzdXVmTVdUSnM0?=
 =?utf-8?B?ODByWWJTdFVtSUpWeCttaEZ0QjdPdVpDbjM5MVN3ejdlN0xOMXNNWVoyK254?=
 =?utf-8?B?NVVFSU83NE9TRGVheWlGaDZxYzdtT0VWVFpraEhjY1p0M1NYQW04TXRJZ2pa?=
 =?utf-8?B?NmhaTHhUMldGSkNEV013OEU2SHZQOTN6V0ZYa2Q2SEpRa2hkMXh5RVIva0Mz?=
 =?utf-8?B?ZVh4YVZLSXk2TWtxNDVKdTduRit2T1dqeHJtelkrSllZWjI2VkpDd3JKRElL?=
 =?utf-8?B?L2tGUUhCNitvVjJPS3ZwVjBrK2srRGNLcEVoT3gwNk92SlQ2alRKczR5UWJ4?=
 =?utf-8?B?cWZvZ1c1eE9vQmJ3ZzhTUWFES0g2MXFSSkxoUXhrVlh3OVFHZm9YN0VhdnBp?=
 =?utf-8?B?SVVFRkp0ZmNBM3BTSUt4VnNkSFREWVZDWEY4ZDh1OVB3NXY3Qm9GL0RRbXZP?=
 =?utf-8?B?YjA1V1htNkoza0VrSGp4K2ExcGxydVFFeFVjZVcwdmJOVUtVbFl4R0J3c2Vv?=
 =?utf-8?B?dzVpTndSRTFqbE9Oemt3cjFzY05UdklCTDRMT2oxVXRHNnVUUTVPRzROSXNN?=
 =?utf-8?B?cUtKclJpcmdlU1gvTWlsS1R2WVRNTmpjNllJY3R0eEpmU3RYWERkaFREdFQv?=
 =?utf-8?B?Sjk1cVh2Y2dJVEtyUGh2VHYrMXJoMmZ0c3RvbEtMckFNK0tOUDdYaXlaYUEw?=
 =?utf-8?B?NmgwWFp3OVpoek1CcSticWp0aFRWM3FOS2JESjAwQ3ZvQUlJTXNjVUZWN1JK?=
 =?utf-8?B?ZUQwcWZEOHA5WHFGUlQzTi9QMlZTQjJGdDJBN1BQQ0Y4MlByZHljZVZrS3ZT?=
 =?utf-8?B?VmNmeXdxQ1FtVkZmYkZSeTgwT0lYUDJnRXNyekF2MDRSZWRPck9raS8vaUV6?=
 =?utf-8?B?SE9EOGhHWGtGcXJTTHVMOCs5YWpicFdKSnk2a0dzWDN2akFjZ3lHQ0dDZm9m?=
 =?utf-8?B?aURtK2ppbWZNMXNFdUdZUEE3T3lmM25UVWtySXpoNHRnYkw1QkhVRGx4S2E3?=
 =?utf-8?B?MHFNclVibnNCSGNNVGVDMU9TVzhLc0kxdk00WFdBRnRVeVlVdnN5bUp3eEdr?=
 =?utf-8?B?b1pCRTZ2QjF5OGdDVWxwWHBndHE5UGZIcGtMTHIxQW9NaXA0clR1MjNaVzdu?=
 =?utf-8?B?Nmc5NUpVWXpIeit6YWFYQ0ZYcFBYNnpZTXQrMEhvQUo4a0MzMllFSXJicTRE?=
 =?utf-8?Q?MqjMadaVHT4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0Z4dHF1RCtYN1VjUGdhamIvUzRpUFY1ci92dFA1aFhSdFhhY2hTYVQxcU9Y?=
 =?utf-8?B?OFlXdExBMlowODk2ZlhDalFUTUVmanRTMndZNU1HT2RwOW5uMjRYYUdtRHNP?=
 =?utf-8?B?dURJMng0TUdoRHhDU0piL1JFVW9NTXZEdXdzUlpuSmZIdFVVSjI1OU1LcCtN?=
 =?utf-8?B?UWdOeVBUQ3dGejRMWUhXZXZNU1VrdVZ0cHlWOVhKTjcyUzBXSmJhcjk3dTZ2?=
 =?utf-8?B?QW5IKzUrdFYwNndiRGFSOHIvR2UwTjFaUHFFZzlQTTBlZm1qK1FndHFiUGQ3?=
 =?utf-8?B?aWVIamtCKzg2Yzl0bTVHdEl3cVZWemtCcXg5QnVvRjIwTGdxTk56NXhUU24r?=
 =?utf-8?B?dzlLZElEeDNVc0NqdWxXbXlVM3RSSHFhTVJ0M09yYTNDSFErZEwrcnlTZWRW?=
 =?utf-8?B?T2ZzdnBuMWdFNzJvcTV3OU52dTEvWEcyVFpYSFU3aHpmOUFURU9OUm9BYnIz?=
 =?utf-8?B?WUo5NS9rb2RmTjNoUWNHaTlsN0hSTmliTVpxdlB5RGVPR3U1YXE5QUN6MVRJ?=
 =?utf-8?B?Q0RDa1JUaVhSVStCQnFHelBzMFAzdzZiZk42bndVbzRMclA1VGdRRlJhYzRh?=
 =?utf-8?B?dmJHZlpESVdrNG1RMjN1WFpURWo1aFp3N0RSU2t5YWFBbDd4Qk8xdmpkdzlR?=
 =?utf-8?B?OHJsMXp1YlM5ZEphcG1HT0NNbnl1aCtsbWcrV1RvM2JkTUtoZko1SFVwcllW?=
 =?utf-8?B?TkkwbXhtUzQ3VkVBOHNpQVl4TUNMbjdaaFo1Zi9wTitYdWxWZDQvaUVqbUMw?=
 =?utf-8?B?dkFJdGhmTnpSVHpwVzBzbHVjZzJIZG9OOVFyNC9iZUJxMlBPZnl1MDB2eGpy?=
 =?utf-8?B?L0lDZW8yRks0K3F5czJSamFwcjdYUEcwSG9IR0ZBUTlRRXVNNCs1TkpMMTAw?=
 =?utf-8?B?c1pRRVlEWlFoMzJBOWJWbHhLZUFiWG9TbDlYeWtGYTFFNEpFcG1GSjZucFZV?=
 =?utf-8?B?ZzVWbVhUaFZPdXlJWk9tQ2JQNjVOWFNxNkMyTzAxOEZNc3Z1R09MMlhIRHdE?=
 =?utf-8?B?b0wyTHhiTndPenhDVnpVSVRNNitHekNBMng3WjlwRUpwUlBvYXVkaW90Q2NK?=
 =?utf-8?B?czduT0EvbzBzZEZydFJZYjB2c2V6Z1ZBeXY0WDc5TXltZDAwZUtDRlhQZHNw?=
 =?utf-8?B?M0NmdVpZRGNDS3k0Q3ZoOVd2dmFTcWZPSUg0eGYvYVRFTndQRFdpMk1XOXpx?=
 =?utf-8?B?ZkZLSEQxOWZCNmIycUZSaTlqMU96NHVvaXJkdElYT0tiZzh3NWZuU0IzaWd5?=
 =?utf-8?B?Z1dPNHUxMHpiTzNyMG9PRit2RldId09tUUlqbWtRcVZ4dmRXM2JzcFhvRlVn?=
 =?utf-8?B?OFgwRVp0YWVvOEtCUFppN1hoOWZsdnFRZzBrbWVrTGdsWTJjcy80UVNOOWVP?=
 =?utf-8?B?R280WWxZV1hnUXRUYVVYUGFpTDlGL2JncjFPYmZ1V2hXV3ZyelA4dVBRUmF6?=
 =?utf-8?B?RGtTcW9md3NaREl3QjZhS2tMdFM1a3hDeTRyVjVDVnkwQWl0OU1jbHZmVTE0?=
 =?utf-8?B?aXk2MXJwU0ZhUENjMGRQamY3dGNoOTRiU2ROWTZ2MUtTS3BUaUdzMURwSlky?=
 =?utf-8?B?aDRKMFdET2RTNWprdlNjSDhEUXZqMGJtMzRETkJ4Y0ZsdEF1ZTY5ZCtFaTVi?=
 =?utf-8?B?dE5OOFFIVGhFdG5BbytIS2dtd3Y4b0JlQ3ZFYXczMWdGbk1BMWFVaFFoMFRx?=
 =?utf-8?B?cHZnMHVjUXRraUxJTldCZ0VMU3BoejYxeG5PdkJZZWxUUUt2OHB6WFYwSjhM?=
 =?utf-8?B?YzFsMk5qeTNqUEw1TWZwSStHQ09IUDBDZEJEMzl1UzlOaDF4V1JrRXlYRzRO?=
 =?utf-8?B?Q0Vsb1YrVG9rRVdOaWFReHp1cXAyOFhhVHRndU43RXBXUFp5MExzV21vK09P?=
 =?utf-8?B?ZFBwaTI4WmtwaE9IQ3c4ZFM1L3ZoWDVwTFRGNzN0UGo2WTBGKzBZOTVTL21y?=
 =?utf-8?B?Vk9XUW1DYWVGbmdldDAvUTdmNkNjdXJXOVF0a1NjQk51Y3AzVHpCUzFuVkNa?=
 =?utf-8?B?TGhyMWdJemlkV21uRzM0YW13bTFPVDg4UXVwN2JuaFI3MEFMeDZ2VzVxVjhp?=
 =?utf-8?B?R0xTOFBkUlNLWThWOUcxVUFNZDVmWnR6K1VZcEhEU1VwSENpUlFSQmg4bmFG?=
 =?utf-8?B?YzQvSVhlaWVYVjM4eEFNLzFacmVIV1IyTzNReDBHcFZMZ2VSK0pTOWtXSmpG?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9fb3e00-5340-49b4-bc63-08ddb43577df
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 22:13:09.6215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5oOHzLF4BRaaFQ4j33WgK0XKMwzcpkyDvT8rBA0hsyg0mlryjwKLm9kxH3HAgZgXpfSnWjX/EgrbqKbEU5p0SCblXp9LIdAg3KskL9L5G9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6428
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750889621; x=1782425621;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vjFHo4IF8VH2TnFMCvmmaxEyakLLii06C0AXJei3yfo=;
 b=mRor0wG16CyHsjqNfMQQ8Yu7CZTDaZty9TOc71geTtgMqFHMqy70dLJL
 dcQ9F3+nV2ZdgKKl0IbRsnnlZN5WVSr6TUf6IImMVtkqevt3Wvfl57peO
 2qzNS2hUuCIt8Z5SjWbcHsD+cfkWGEMrx6KOKPUvY8SbnuA0XCeyfLBeD
 7q6VEsVa3FiAYSHVaLLUInJDOgNn9/5FSTBmK9+ecripX3uNuNu09Nzqr
 wa8k8TlwrTxNquCSbGjg6Yx5sFGJtHSTv+DlWMP00sqOVTmVSBw0YUyFc
 gaW1ZxxeqsVOOLMRKqACtnAcXHpShIXthIpR+KYiF19I12Ga5/mypxew1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mRor0wG1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL pointer
 dereference in ice_unplug_aux_dev() on reset
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



On 6/24/2025 10:13 AM, Brett Creeley wrote:
> 
> 
> On 6/24/2025 7:26 AM, Emil Tantilov wrote:
>> Caution: This message originated from an External Source. Use proper 
>> caution when opening attachments, clicking links, or responding.
>>
>>
>> Issuing a reset when the driver is loaded without RDMA support, will
>> results in a crash as it attempts to remove RDMA's non-existent auxbus
>> device:
>> echo 1 > /sys/class/net/<if>/device/reset
>>
>> BUG: kernel NULL pointer dereference, address: 0000000000000008
>> ...
>> RIP: 0010:ice_unplug_aux_dev+0x29/0x70 [ice]
>> ...
>> Call Trace:
>> <TASK>
>> ice_prepare_for_reset+0x77/0x260 [ice]
>> pci_dev_save_and_disable+0x2c/0x70
>> pci_reset_function+0x88/0x130
>> reset_store+0x5a/0xa0
>> kernfs_fop_write_iter+0x15e/0x210
>> vfs_write+0x273/0x520
>> ksys_write+0x6b/0xe0
>> do_syscall_64+0x79/0x3b0
>> entry_SYSCALL_64_after_hwframe+0x76/0x7e
>>
>> ice_unplug_aux_dev() checks pf->cdev_info->adev for NULL pointer, but
>> pf->cdev_info will also be NULL, leading to the deref in the trace above.
> 
> What about in ice_deinit_rdma(), can the cdev_info also be NULL there? 
> If so kfree(pf->cdev_info->iddc_priv) will result in a similar trace on 
> driver unload.

This bug is seen on a NIC with no RDMA support, so the RDMA init/deinit
flow will not happen. It is protected by the !ice_is_rdma_ena(pf)
check.

> 
>>
>> Introduce a flag to be set when the creation of the auxbus device is
>> successful, to avoid multiple NULL pointer checks in 
>> ice_unplug_aux_dev().
> 
> IMHO adding a state flag to prevent NULL pointer checks in the control 
> path isn't enough justification unless there's something I'm missing here.
> 

Avoid defensive programming. The use of the flag makes this path
deterministic (only attempt to remove the auxbus device if we know for a
fact that it was created). The NULL pointer checks provide protection 
for this crash, but only by association. Say there was another bug in 
that path that cleared them prematurely, with the NULL pointer checks in 
place you will avoid crashing, but fail to remove the auxbus device, or 
if such a patch was introduced, you'd want to crash, which gives 
validation a chance to catch it.

>>
>> Fixes: c24a65b6a27c7 ("iidc/ice/irdma: Update IDC to support multiple 
>> consumers")
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h     |  1 +
>>   drivers/net/ethernet/intel/ice/ice_idc.c | 10 ++++++----
>>   2 files changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ 
>> ethernet/intel/ice/ice.h
>> index ddd0ad68185b..0ef11b7ab477 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -509,6 +509,7 @@ enum ice_pf_flags {
>>          ICE_FLAG_LINK_LENIENT_MODE_ENA,
>>          ICE_FLAG_PLUG_AUX_DEV,
>>          ICE_FLAG_UNPLUG_AUX_DEV,
>> +       ICE_FLAG_AUX_DEV_CREATED,
>>          ICE_FLAG_MTU_CHANGED,
>>          ICE_FLAG_GNSS,                  /* GNSS successfully 
>> initialized */
>>          ICE_FLAG_DPLL,                  /* SyncE/PTP dplls 
>> initialized */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ 
>> ethernet/intel/ice/ice_idc.c
>> index 6ab53e430f91..420d45c2558b 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
>> @@ -336,6 +336,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
>>          mutex_lock(&pf->adev_mutex);
>>          cdev->adev = adev;
>>          mutex_unlock(&pf->adev_mutex);
>> +       set_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags);
> 
> What if this bit is set already, should ice_plug_aux_dev() be executed?

The purpose of this bit is to mark the successful creation of the auxbus 
device, I am not aware of any action that needs to be taken should 
ice_plug_aux_dev() be called with the bit set and there was no check 
like this previously.

> 
>>
>>          return 0;
>>   }
>> @@ -347,15 +348,16 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
>>   {
>>          struct auxiliary_device *adev;
>>
>> +       if (!test_and_clear_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags))
>> +               return;
>> +
> 
> To re-iterate my comment above, I think the driver should just check if 
> pf->cdev_info is valid before de-referencing it. Also, the local adev 
> variable will have to be set to NULL to handle this case.

Understood. I am not opposed to changing the patch to add another NULL 
check if that is the consensus. Another option is to add the same check 
for !ice_is_rdma_ena(pf) like in the other functions. This should work 
at present, because the driver fails to load if RDMA init errors out.

Thanks,
Emil

> 
> Brett
> 
>>          mutex_lock(&pf->adev_mutex);
>>          adev = pf->cdev_info->adev;
>>          pf->cdev_info->adev = NULL;
> 
> 
>>          mutex_unlock(&pf->adev_mutex);
>>
>> -       if (adev) {
>> -               auxiliary_device_delete(adev);
>> -               auxiliary_device_uninit(adev);
>> -       }
>> +       auxiliary_device_delete(adev);
>> +       auxiliary_device_uninit(adev);
>>   }
>>
>>   /**
>> -- 
>> 2.37.3
>>
>>
> 
