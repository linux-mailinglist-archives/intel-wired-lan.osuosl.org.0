Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3c6GH8NBSmq+AAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Jul 2026 13:36:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE7F709D49
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Jul 2026 13:36:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PghgGB9z;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A21581022;
	Sun,  5 Jul 2026 11:30:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMulCPy671Em; Sun,  5 Jul 2026 11:30:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E07B781046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783251057;
	bh=G5B/oLzTiWzTTAXkO/nleeIj9zvUoFIxyFJtNVCAsbQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PghgGB9zJNoRWj54rCFQ7FBSXmz7BRH8zBMsB5GRL2Hfec/AeRSXkr5dY2+hDWIPP
	 nOMUdX2et4Zcb4jhjwxLyMp5aD7QsTZU+LhWrAWmrxrzFVNkk/4NAykuGhE/jdm7N+
	 jYvZM01fmQW13LM5tSFGDxQ4R7fwdWlN0oovVV87WLEVuZjn7VnHdh+9grWKDppwGJ
	 B5u5ZbQnmugmaf2+3pm062CQgZOG6vdDeOKPlent6rrC9TmWmFCwDmIyqWSseJm3d7
	 W2h1CR9gr68lCKWh6v5J6rlwtpgG9G08MElSUsTzPKx77VM2FE3KADc1dtmtpyGbI+
	 lyv8tFSknBOJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E07B781046;
	Sun,  5 Jul 2026 11:30:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DCB42A8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jul 2026 11:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83CC0406E4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jul 2026 11:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJZuze2tcEr6 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jul 2026 11:30:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A240C406E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A240C406E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A240C406E1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jul 2026 11:30:54 +0000 (UTC)
X-CSE-ConnectionGUID: IaEk0wnxROWHHQV/xLR4cg==
X-CSE-MsgGUID: rAb74i7RTTyz9/UFxLfnzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11837"; a="94556940"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="94556940"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2026 04:30:53 -0700
X-CSE-ConnectionGUID: gEzfZhabQrGGGmlIU0hHQw==
X-CSE-MsgGUID: t6IbK7dGTyqmIfKGlSTHMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="276690741"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2026 04:30:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 5 Jul 2026 04:30:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 5 Jul 2026 04:30:52 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 5 Jul 2026 04:30:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r7OJkiD1Km5Zn++W7zyespi26A14/PHgELWpI8/VJme7uYs4QPFcFQ+b0HlN4gW0wN0RUwT0LrecNbgVB6bSWFYyRRx5Vun5jR5NNmkd7K1x6iU5Td90GLlbZlIdq+qRIM97YRaPo/ce8pAXiO/PVv76Ix+8Gbnp/8p9qXLEJLagIAv3ez2clEFG3Kncui49xZiXjt9NQpxns60hJm8+hc7rvaKVT6c3/KInReO5sHnvVtg558EEsZcF4xjPajctfVcoJFqoQXLsbu64Ew2+/mvBLbfSDgJ950eVi9dsbgURDbHS7JCCWRlNPXEORbq4QOPlLr8UFtdPArQfZ6B5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G5B/oLzTiWzTTAXkO/nleeIj9zvUoFIxyFJtNVCAsbQ=;
 b=q55oBvStf9WzkYAGzI/F2XXXGyWTg4WHu0/lfXWWm/fPaP1aXnUnno++TkoEEhle3eLqTjrkg6n6fCJhhM2O1K2B88Meqc3IrBxuJbZLcTHtLPnbcOfk1YJ8WNzwZ0V6ZWPTGYSxGlf/RhabcKtWqtk8ZlhkC2DZp6MVfY6WpPemVr0orh7QbaujaWHp3mow6ItoStuxnFJm2wGrFBSW0lBygvz8gAYc4r6IFgyA44g61LSBBdfpYf1dGN/ABwgjbV/l0eKMaqDFtMCHiYGJpXc8sqCDV8HYjKtijAKWyo9J0tD4hFSsm0poJ222/lwuDJz8DUm8X9dgiMf+zug2yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9514.namprd11.prod.outlook.com (2603:10b6:408:2e0::10)
 by MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Sun, 5 Jul 2026
 11:30:48 +0000
Received: from LV4PR11MB9514.namprd11.prod.outlook.com
 ([fe80::79a5:106b:2126:a7fa]) by LV4PR11MB9514.namprd11.prod.outlook.com
 ([fe80::79a5:106b:2126:a7fa%5]) with mapi id 15.21.0159.018; Sun, 5 Jul 2026
 11:30:48 +0000
Message-ID: <7d2a7067-0b92-4452-b7de-a2c54e1fd231@intel.com>
Date: Sun, 5 Jul 2026 14:30:43 +0300
User-Agent: Mozilla Thunderbird
To: Jiayuan Chen <jiayuan.chen@linux.dev>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jeff Garzik
 <jgarzik@redhat.com>, Bruce Allan <bruce.w.allan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260626083917.49745-1-jiayuan.chen@linux.dev>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260626083917.49745-1-jiayuan.chen@linux.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0019.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::14) To LV4PR11MB9514.namprd11.prod.outlook.com
 (2603:10b6:408:2e0::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV4PR11MB9514:EE_|MW4PR11MB5911:EE_
X-MS-Office365-Filtering-Correlation-Id: 7925135f-dd7c-4d49-a168-08deda88dc63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|7416014|376014|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: FUocDoGavFpAIv/x2qrP/HM8H8GVqAU1pp8/EvBjfiFpmPjy9+eeoQXAcwxnAgpKjn3d8FqiNAMzydIXQ92+NPdCPf+cp3rod3luQT8xM/ET5RNHQckpXtedkW3dbr0PHwj6Ci4LWDxEZtKLPZkw/kELH9flk+NQ749/40jLOcdTga1WMn0SubwdeCsv1l42gNj561FQPeSmeDpgJ/oWAleFoyIRnXRRN1ajdd5OKcraygeZ0uNHRlFbMdQNKZkKqK0KLu2ivMBWuwW+M4FCUdOyHsTNp7e/pLP4zdBQzzGZGS3W4q6qqJoShJjL8Ezevn8gyiC0raTsgDtFPIL9COgdDP6XXLg3+8DJdt8Eb9b87LxWpt4BQFbkJ2kqAUyholmB+EC75GikL7d4WJXMj9cFTTP1FY8zKKdfSWoku24DVYRW3luRWLzzZqO6cdGhjR/jdpoT3ztizT1CcXvnP6FLA+Q/bZsB9fHzaeo+3IhoCUtovMz2Rcshs2Mk7oOj5NvwLdGuWW/kkMpQnkcSln1c9TApvB6eUYNNmQRq5gSq+zKJWgYeAM5hUwDkbPM76yGBerg+HJd59drHKUvf0pMzwvB+TkLI3DpiSTxd3GWOMNkeEcJmGPV2jgCootNHAyK2g7rwxUkK2VQMMTl/WZrgLT0JkvvxaFGC5JnTsKs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(7416014)(376014)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Umtocys1SHVZTHpVd3B3bHNZejYzNjN2UFIvQjNibHBSUVoydjVyNFdhYjVh?=
 =?utf-8?B?T0pCM3pSbGIxdk1UY2lUd0xJY0RLanhGUGp6Q3VKdU11WnptYmZDSGV2dDFE?=
 =?utf-8?B?R3V6WFlzdWtURkFEQnF0QjdOdDU4bmhENS9NajB5Zkc5NkRhYjVGTWQ3T2xZ?=
 =?utf-8?B?b2h1YzFuRFpPSzFCM0VYK3YzL2Z4LzJOWm4yUUJVL0R0bmVYVlk4Wnd4bW10?=
 =?utf-8?B?Y0xEZnIxeThSTGhqdzRSaXpuYXhtcWxSZDVOTjRQR0VHWktnY0hCVE5NNWZt?=
 =?utf-8?B?aVpYUUFnczRRMDZPd1krZktFNXJkR05rbEd1QXpjZnpWOTNCVUkyelF5RW5G?=
 =?utf-8?B?UFZSdXMzRFd5VnorWVRGZGMzRWV6OGlWanArMHl5bkNqSE01dVBnRUlycUdn?=
 =?utf-8?B?OGZ1d0w5VDJ2MkFndzhQaFU4cVZ0TkFjTHM5b1RiL3lPdXdOMVpjb3FXWXNk?=
 =?utf-8?B?VnY1V1lQZHQ1aTV6WEZ6UW9KN0hyQnltZ3RzUHJyVnNFWVRHYmYxWnVRUHov?=
 =?utf-8?B?NTU3ZlRhdUVoL2s5Wmh4bUNVeXdxQTRtRkFTdzVWQlNUeVMrQ3ZEcS8rY29v?=
 =?utf-8?B?L0NTM2QvRHBVNDRaaGZyNnNKS2Y3RmUwUUNQamxzS21SQ1lWUkpyektyMEkz?=
 =?utf-8?B?TGpiYTd6V2EwMGJ0YVphY1RvWGN0djIxSjVyNTBadkpPSVQ0bjFtSEpkdVp4?=
 =?utf-8?B?cVlyV0VoMDd0YmI3NDlqZm1YMWNUVVdwZVRNZUJTc3NxRDd0RDdyMWNTWFBy?=
 =?utf-8?B?ak1UbTQyNXVvSXlOZHovRkhXNXUwaDRFUFQ3UHJIMGJDYmd4eG1WWE54M0Jt?=
 =?utf-8?B?WmpnNUpzVHlHTENYN2UyVTZHV2REZ1lxL1VsdmRNNWJCZkpPU3h4ZXZwZlRp?=
 =?utf-8?B?OXpKdC90WkhTSktvZTRybEtMaUNPQkkrc05zemdBS0EwV0JXajFNOHZMM3Rs?=
 =?utf-8?B?VmJwRnZYa0pVd2tIVkpRTDFvOC81Y1loMHlkRm12VEUyMWJkTUlSRzRyOGlm?=
 =?utf-8?B?UGE4NHRMaDMwYmE1NklTT0d1WnlNb3c1QStGdjhoODFlM21RNTllcVdXNWNh?=
 =?utf-8?B?VkNkM045VFZSc1lDcnZ0TUpHNGV2aS9PdnFCNWkvRDU1QmVwdCtVVGkybjdj?=
 =?utf-8?B?T2JQSG00U2paNUllZTdzVmxvVmJ4aDgydmhzWjRIajlMa0hKSGZZRXBqY1Ni?=
 =?utf-8?B?UTh1YXdQY2MzNWt2amRTWWZ6OTdkS2ppbG9WZ3hzS1pMcDRlVG1hN3E5c1px?=
 =?utf-8?B?N1Q3cG9JNjRTRDdwRWpDM1ZmWXlaRTVCbGNYUHpzdThPWVBIeEE1UzBPREJp?=
 =?utf-8?B?ekNyV3BIaWQ5TDdFNUlCL2hodDNNQVBVdk5VNWIvbG1iWjVpeXpYMGFHdE44?=
 =?utf-8?B?eDdMTkxNOG1HUHZkTkNZVFdGL1hKblpMZFRrWkFRRDNodjBaa1FDcEVqTk5a?=
 =?utf-8?B?dTVMVFgralg2akx1NitMaWw3YTBLREJjY1N1Z2dieUxPaUdtUE4zOEJpemhH?=
 =?utf-8?B?Z2QvbUNFSWxBdWxVR0lXRnk2YzNscjk3dW10cXRwZ0RtcEFvSWRxVk9YQm5B?=
 =?utf-8?B?Q2ZQS3ZDVHA0RVJTM2xyYjJQUitqakkwdHdTMS9JV3hMQkw5TURLRURDUng5?=
 =?utf-8?B?T05Rak9YLyt2N3dUMG81Mm9yR1FmcGt2Sko5RWVOQTYyOEJBa3Y4ZWEyV2NK?=
 =?utf-8?B?VlJpMHJSNmNUelk0WDhzN1dlVkFLM25rNWNPbnBnZ3J5cmwxeE9DcldQbHd5?=
 =?utf-8?B?cHU4Y09uaWVTZ2lYYVBlRUgvT00wT3M1cEFkellPVXFWRnRBUG54RUk2aW80?=
 =?utf-8?B?SktkU3pqOUNpMGcxSFZUNHJZU0FmODZSSGQzV2N0cUtCUjR5K3cwaFJJM3py?=
 =?utf-8?B?WDIvREFNenROVGxMZWo5VHJMSDdDaGJuNWFsNnFZU2hCUkJZTktWZnN0WVVz?=
 =?utf-8?B?clo0Sjg0R0EwU1FBQUZXTFBrMVZ4aGwwU0g1dG9NWkNZL3hMaGR0SmNRdDdP?=
 =?utf-8?B?V2NlYmt1Y0QrNUZkSG1CMmx6Y0JITm9DV0E0V2JHSEpBNUxBRW1LRnQ2NUNX?=
 =?utf-8?B?VlVNUmpCcVEwYm5Gd0xYM2dUSU03UnJ0ZEFSV1BZZlBmWGEwYUlZSTNPREUw?=
 =?utf-8?B?NjNMTitiekJVRzBNdmY2N2hGZ1FVaTJJdlFnMU1VMTYyZnhMRUx0YTZqR0tt?=
 =?utf-8?B?cDlZa3l4NTRZb3NQUFdqZVVaWm9mUmNEVmh0OTI3UWpmL1pPaUtEeFZ0OTdh?=
 =?utf-8?B?b3NsMjFhTUJ2ZEhkUUJvc25ZVlNoODJRUXJrTHJsQnh0Z05xSWZCTmpJM3VY?=
 =?utf-8?B?Qlg2Sm5ScDVIM2NQNWZmZ3lxcEpqQXg0RU00Uzc5VjVhMTRvZDdNN2loSVdr?=
 =?utf-8?Q?5qNeam3GuVA8DH0Q=3D?=
X-Exchange-RoutingPolicyChecked: Yv2qBBTTsTuFudx4Vk38sLTY4p7sRDsojWkfmvsqDmjn0ldxSPD3PysgcROhku0hVaNg5/aVx9Ya4V49Utu4qp1wR4nO/Of1wC4d0y+lZdwaQhIKMLgauR24/cYSx9GQCMIfkY+OuSh0TUUJg0tfBS9pbfcRizUf1LuFyWrFm49r1TgVog8Miij6Vq0j3jjsOOYXDzkqBvtUErKV5ltMOvVRbkbJ8O5++E8+BuJmirP0iyO0taJPlVSnaPKKCvQsPQvRuvD/r2P2FMmXFjKPlyT21uClIlP668mMFtd03Ayns59TZTpFex9taDoaf0nNaDYd+Zw4tv1ad9cRZt6K7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7925135f-dd7c-4d49-a168-08deda88dc63
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9514.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2026 11:30:48.2955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kaHJ4l27FNNzZdEkREwIYTiFiaIpDhyFrAQGnZA+1J61d7j+GOppvKxTnpezynV0ss+p4jcxf0pbB1CWw00Wug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5911
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783251055; x=1814787055;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9rxIVJ8nnQEQDZbNnASyY4UFllfgjoqXrM+XYTOb5eA=;
 b=a4OaUd3fDl63qzUqHJ2S6ZTGTWvF8kxONEOF11/hstrn1g4aC73NOl6E
 j4jXPy8YUuFRjYzpaNxFENamkiH0o41XAvBN5Lu5sgzzVBmy3jL0WZ2yw
 VvfV1zeIbJ1+uEBvXqS2q/5KNOFtRM23QwYCmx9N2rQx2n8HheqLGXm/R
 gFVHKs6g8m4GmVuH+atbgg83yeHmOcOVp1ZOmzIpn+k6sqzUOCY3b4uJr
 l/WdcHoDmR7mSlJxvYWt6TMXB9WK4PQIqLNlOtPl4YySOG/3Stpb0Le/G
 5REOS+dF1eCI3zQZZIU8s6xl+FNt0kzQcB9ACPouCsjnQizdBnafmU+Lx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a4OaUd3f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] e1000e: fix IRQ leak when
 request_irq() fails in e1000_request_msix()
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [9.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:from_smtp,osuosl.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,body];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jiayuan.chen@linux.dev,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jgarzik@redhat.com,m:bruce.w.allan@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2605:bc80:3010::/48];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,linux.dev:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFE7F709D49
X-Spam: Yes

On 26/06/2026 11:39, Jiayuan Chen wrote:
> An internal syzbot instance reported the warning below.
> 
> comedi (comedi_parport) lets userspace request_irq() an arbitrary IRQ
> number and can thus grab one of e1000e's MSI-X vectors. When
> e1000_request_msix() then fails partway through, it returned without
> freeing the vectors it had already requested; pci_disable_msix() later
> tears those descriptors down while their irqaction is still attached,
> leaking the /proc/irq entry.
> 
> Free the already requested IRQs on the error path.
> 
> genirq: Flags mismatch irq 28. 00200000 (eth1-tx-0) vs. 00200000 (comedi_parport)
> 
> remove_proc_entry: removing non-empty directory 'irq/27', leaking at least 'eth1-rx-0'
> WARNING: fs/proc/generic.c:742 at remove_proc_entry+0x436/0x560, CPU#3: ip/445
> Modules linked in:
> CPU: 3 UID: 0 PID: 445 Comm: ip Not tainted 7.1.0+ #284 PREEMPT
> RIP: 0010:remove_proc_entry (fs/proc/generic.c:742 (discriminator 4))
> PKRU: 55555554
> Call Trace:
> <TASK>
> unregister_irq_proc (kernel/irq/proc.c:406)
> free_desc (kernel/irq/irqdesc.c:482)
> irq_free_descs (kernel/irq/irqdesc.c:874 kernel/irq/irqdesc.c:865)
> irq_domain_free_irqs (kernel/irq/irqdomain.c:1917)
> msi_domain_free_locked.part.0 (kernel/irq/msi.c:1619 kernel/irq/msi.c:1645)
> msi_domain_free_irqs_all_locked (kernel/irq/msi.c:1632)
> pci_msi_teardown_msi_irqs (drivers/pci/msi/irqdomain.c:28)
> pci_free_msi_irqs (drivers/pci/msi/msi.c:925)
> pci_disable_msix (drivers/pci/msi/api.c:200 drivers/pci/msi/api.c:193)
> e1000_request_irq (drivers/net/ethernet/intel/e1000e/netdev.c:2028)
> e1000e_open (drivers/net/ethernet/intel/e1000e/netdev.c:4681)
> __dev_open (net/core/dev.c:1702)
> netif_change_flags (net/core/dev.c:9806)
> do_setlink.isra.0 (net/core/rtnetlink.c:3207 (discriminator 1))
> rtnetlink_rcv_msg (net/core/rtnetlink.c:7068)
> netlink_rcv_skb (net/netlink/af_netlink.c:2556)
> 
> Fixes: 4662e82b2cb4 ("e1000e: add support for new 82574L part")
> Signed-off-by: Jiayuan Chen <jiayuan.chen@linux.dev>
> Assisted-by: Claude:claude-opus-4-8
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 13 +++++++++----
>   1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 808e5cddd6a9..19b9823c5679 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -2099,7 +2099,7 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
>   static int e1000_request_msix(struct e1000_adapter *adapter)
>   {
>   	struct net_device *netdev = adapter->netdev;
> -	int err = 0, vector = 0;
> +	int err = 0, vector = 0, i;
>   
>   	if (strlen(netdev->name) < (IFNAMSIZ - 5))
>   		snprintf(adapter->rx_ring->name,
> @@ -2111,7 +2111,7 @@ static int e1000_request_msix(struct e1000_adapter *adapter)
>   			  e1000_intr_msix_rx, 0, adapter->rx_ring->name,
>   			  netdev);
>   	if (err)
> -		return err;
> +		goto err_free;
>   	adapter->rx_ring->itr_register = adapter->hw.hw_addr +
>   	    E1000_EITR_82574(vector);
>   	adapter->rx_ring->itr_val = adapter->itr;
> @@ -2127,7 +2127,7 @@ static int e1000_request_msix(struct e1000_adapter *adapter)
>   			  e1000_intr_msix_tx, 0, adapter->tx_ring->name,
>   			  netdev);
>   	if (err)
> -		return err;
> +		goto err_free;
>   	adapter->tx_ring->itr_register = adapter->hw.hw_addr +
>   	    E1000_EITR_82574(vector);
>   	adapter->tx_ring->itr_val = adapter->itr;
> @@ -2136,11 +2136,16 @@ static int e1000_request_msix(struct e1000_adapter *adapter)
>   	err = request_irq(adapter->msix_entries[vector].vector,
>   			  e1000_msix_other, 0, netdev->name, netdev);
>   	if (err)
> -		return err;
> +		goto err_free;
>   
>   	e1000_configure_msix(adapter);
>   
>   	return 0;
> +
> +err_free:
> +	for (i = vector - 1; i >= 0; i--)
> +		free_irq(adapter->msix_entries[i].vector, netdev);
> +	return err;
>   }
>   
>   /**
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
