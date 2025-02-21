Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F72CA402ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 23:41:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50A1C81FD0;
	Fri, 21 Feb 2025 22:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gfqMJRZ7HJ0p; Fri, 21 Feb 2025 22:41:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87A5281FFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740177715;
	bh=NvminwZ45wDR2dLE502xnEPfjhSUcMJIwitGLjGlBv0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nQkaBvXUIXLJafqHbwCP7mNaVTWKyNu4EgOkeMIPjoOGRlYu9tghcBYKY++/Mtqff
	 ztUaY1bBL6kIWz0IWVmxt9okcHojnzTuMlMYwbWepwelqS8EOUem8GYHtdrM0sp71V
	 VXa5QyDiKPdFylJ0hc2yrBtyHufEGxyfWVI9lHMhn7Jt/OhfMh0N35pvR2BL1f6ejo
	 V39fZ3YdxjV4WXB0DpZfRITkdBxBquJzTZ8bPIDthxQfmhJlZiRe89SLdZcouvuctM
	 oQTnebsNYsT09cTTMRab4piPt8S411OUUhXeZqVYZXlVc+r2hgfUZBelbMoGD/6PdE
	 pZPtguX0YflBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A5281FFC;
	Fri, 21 Feb 2025 22:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D6446194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C569360730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_6YDsEuvMbD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 22:41:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7439E60722
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7439E60722
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7439E60722
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 22:41:52 +0000 (UTC)
X-CSE-ConnectionGUID: ykXSL5JzSI64cNKSBiwSQw==
X-CSE-MsgGUID: GDEJH5HMRj2BKBYHjVApcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="58424426"
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="58424426"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 14:41:51 -0800
X-CSE-ConnectionGUID: INZ8E7IQS6ew0nDQb9K00A==
X-CSE-MsgGUID: vx5/xRprThW8B0bvfN6aBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="115306597"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 14:41:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Feb 2025 14:41:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 14:41:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 14:41:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xMrwdLEpXwF27MsDef4tUrEn93hdvZ3tg1I6z/F6DH3+TJJ5MkT6FNTDsO/3cRZs9Qkwm71Z6gFgbn+y7i0Lv6wyuxWg1juUOPgFHyFKw/UMR/msL9iYlj2Yh3nFWmygIqKjOwDtBCfuA/xJf7qsiPuKm2DZ88HPDYKDA4q9wKM6qfZlsdUqDITwSRQ9J2AH2Aox1cHpJwpcGKz5KPoY7xagPJWShl8SsiS/bWjFdjLLHyj0YFcfghiOs52aM2MKbYWflnUcQ16ojI6kv+0rxkq4XMHUSJPwLQU4QoD08AJJLFILuU91ENeKh87VckbL+o5PT4vnyIGtogHgj72NFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NvminwZ45wDR2dLE502xnEPfjhSUcMJIwitGLjGlBv0=;
 b=maVVqfd83W2AZMoQ30zremn0y6hgvPYh9J5UE3dLbrswa1PRpxBObkgr0t0WdA4SCKN0Vn1DFN75Nsk8q3BJ4ntrCbALQjX9CKN17R1szJfUd/C1eArbNuzd+CGWxwQj/+VvYFKiP99ShsBg/i0joTQmxT7sJ8iEvNP9Oywb0Vo0E/4gQwJ/VKmxKOtyNFuforgVZHXa6KEPgDJr0iyc1ojcIdom0aw8JQ44OpfJ2c6AJF5ogLdjyAGUDyrVm/ZR44n0sDtQGuo0Gz3lGLNcFeCRnrUJLmlGU9BRiQOlJnT3655l6MiiX8NSepKVQJE6svbrP1bRFEjUdx00AoeCFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by IA1PR11MB6171.namprd11.prod.outlook.com (2603:10b6:208:3e9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Fri, 21 Feb
 2025 22:41:13 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%6]) with mapi id 15.20.8466.016; Fri, 21 Feb 2025
 22:41:13 +0000
Message-ID: <a5f27387-463f-4532-b4bc-0fc81b9a96de@intel.com>
Date: Fri, 21 Feb 2025 14:41:10 -0800
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Paul Greenwalt <paul.greenwalt@intel.com>
References: <20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com>
 <Z7WmcXf8J5j/ksNX@mev-dev.igk.intel.com>
 <55fcbc58-fccb-4db5-afa2-21b53a89fdc3@intel.com>
 <Z7grbgy/g4cJTqYb@mev-dev.igk.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Z7grbgy/g4cJTqYb@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0260.namprd04.prod.outlook.com
 (2603:10b6:303:88::25) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|IA1PR11MB6171:EE_
X-MS-Office365-Filtering-Correlation-Id: 2deda691-8aaa-4d69-cafb-08dd52c8d7fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGJzMktQRHJxS3dBcW9jSmY1Qkd1TllBNmw3WXhWV20vTUVmMzlyWmJEVVFS?=
 =?utf-8?B?UExMQ2FqbjM3S2c2NTUyS0xoR3plY0VEenBqZWl2WjRjNHZIWi9ReTVId1p5?=
 =?utf-8?B?bmY2TnFzOVZWWldnc3hFOU91ZnJCVnZ5T3NVRmd4TXRUdXExOE5KV1FFeUNE?=
 =?utf-8?B?NnEyMm8xYndzN1d5cXVwdUEzL2c1MzR2cW45bVpFMnRiM2xMR05vazV6b3BQ?=
 =?utf-8?B?N3NNczlVam8wY0gvdGpYV0xRcTExdEMxMzV4YnI0SnVkZWNkWkxQYnYrRVRD?=
 =?utf-8?B?YytVTGN2aFZFRkRRa1JFNDloWGpPaWM1NXdSNTN2K3EwbW43NE9JTnhjT0ZT?=
 =?utf-8?B?RXRPWlY5MUJqVHNtRFY5VnNoaTdFOVV2b2c5WnRHRlhRRWZjbll3a0VCNDVQ?=
 =?utf-8?B?Q2JtYzJqOU9ubW9CeVdmS041c0hxdGRuck9hZ08vaWgydUVEaWhnU3l0eUk2?=
 =?utf-8?B?TFhYL0UwSldWa3lKV2hXa3JTOUFaenJkT25paDM1Q1hYTGlyejVwTXM0WDFx?=
 =?utf-8?B?aTZIL1ZDQTBPbnlmbjM5RVA5UGpYbmtKODlVaGdCU0JiODN2VDhVRkQwUHlU?=
 =?utf-8?B?bmZYbGtreTEzQjJOU1JYa0ptY1Rya1NlTXdFNEJCVmxMemJLRy9aZmF4ZzVn?=
 =?utf-8?B?WjlhbTFVNElIazlHTERqejQzTDZwK0xoOEk5OFNoSWlpZFU1Qzc5b0Rna3Y4?=
 =?utf-8?B?cTBqSEFjMms4bDdjTkE5cHY3YlJieUpaMGxJN3prSE9FcDFrM0VBRzZhWUQ0?=
 =?utf-8?B?enNvRDhPSFVuU3JxZXVnNERmNjlPemZNZ2hFSk9TV2RtTmRmTlRUZG9DaGFl?=
 =?utf-8?B?eE5kRXhCRWhFNUg0c2JUODJPUjRzWkhNcFJ6VlRpSC9iQ2ZkdnRVUnRoZmlo?=
 =?utf-8?B?b1JoNU1nNklQWTZtenkyRUlZQWRrVTBYTm1FSHBlMjQxTEkzL250WEt0NVhn?=
 =?utf-8?B?L3NxWmNib0VnMUhLc0VDREFkTzNRZ2dUc242UUJoQnNTc0lPQXU1TmkzTE4z?=
 =?utf-8?B?UERUTGFhV0dISVlVRzhDWGZhT2VweDVQZHZzdDZ0TFV6L3d3cEh2T1FURTI5?=
 =?utf-8?B?eEZJZ2dlZGFPaDZ6dmdvTFMwdlRhbXNxTkJZWnlMMHk3SU5VT0t1UExZeDNX?=
 =?utf-8?B?dm5nQ3hTNnNiaWNJSEFCT0FGUWFjV1Q3b1RPTmREUE95akR4VkdqK3FmTCtx?=
 =?utf-8?B?OGxBaVN6aVJXeVVwbklBejZEbWtvc1NhMHFsc1F3SmRrZ1BlWVRjKzA4YjBs?=
 =?utf-8?B?MnlzRWRPOWpGNU9lNG1ZTFVnQkk5K1hPM3JZNlB2MGc1cVEyS1M2dmdUSTZ3?=
 =?utf-8?B?S20rQnRFd3NmUHB0a0NibCtreERjVGZPSGU5NGU5cUROejlrS0U5bmMxc3F2?=
 =?utf-8?B?N2t4MVVXM2o1Q3R6am9JMW41V3ZMeUx6SUwzeGNIcXVKd2ZwSkRaNzRJcExI?=
 =?utf-8?B?M05MaVlRdDQvR3htT1k4NFNDMU5icERDYXd6cUtrakJadkJqRzlCSVh4OVVC?=
 =?utf-8?B?OEUrNXZKQzQzQTNiRWhlMk9ZNS9wY3JhakEzWW1TOU9yeStJck1hMGRuLzc4?=
 =?utf-8?B?aHQvSExVUjY4SkRsU3ZMMmc4UlNVZVZFT2E4RjhpSmJXdlE5YzRtZlVMeVZ3?=
 =?utf-8?B?S2tTMmVCRXIrZDZ4U2tCSG5kamRlbDAxNm5tZ2VCR3BWOUluY1RmSkg0RmIz?=
 =?utf-8?B?M2NWN1FrVUo2b0gxdGhTekRmcVZpVnRNNmZ3eFBnUDhOQ1NrKzZjem43eDdX?=
 =?utf-8?B?YlBjcjdPb005dGdMY0k2VzFUOFVQODZOalQwK0QzYTNYMVNkUFR3YXp4S3Ew?=
 =?utf-8?B?NDNCYzd6dVVyY3A3MUtMamw2T0VoR1hlTUlDU2VhVWVlSzdCb3JjMU1hVWRH?=
 =?utf-8?Q?rHINHNMw4wWjP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Um84ZjY3dFZaMUtlNEtMTUxKZEN5TjIySkxpZWp4Z2Njb0xwSnc1RnJ0a1dw?=
 =?utf-8?B?MWh2b0dKUkx6Qi9pZG5JMktqL24zbjdJMTlLWXNGQ2JIT3NobFRobnNrWXkr?=
 =?utf-8?B?UFR6dU8yd1M4Qkl4NHJnQmxGT1ZUQ2VVQ0V2cUMvK1JZaXRFUW9adm9pSE56?=
 =?utf-8?B?RHB6NStDWkhxZldPNkpYZ0VNakFmbFNwSU42V05uUnNpUmNtWWhRSEtUSjVG?=
 =?utf-8?B?bXlMdmlMZWxUY0VTa0NJczhNY1d2ODZOVFZld2kyRUx3bjBHYzdvV3JvUllX?=
 =?utf-8?B?VWI4b3l4dkpsaVFKQjJ5OUlsQW1GYWROU1ZJZHR0RUU2YUwxV3p0b3FWcFNj?=
 =?utf-8?B?SUQ2bFZBMTNsMkk0WjFuWG00V2pWaEg0MGhvRGZiUUVRSDdWelRzYXE4SlJu?=
 =?utf-8?B?a1lJNXdzaWF6blZBdW5jT1BUK1g2ZHpxbjEveTJzd29ROC94YkdZWTI4eWFL?=
 =?utf-8?B?Y2lLVFJZVU9Fd3F3eHBrVzgrUU1ES3RjUWMrK2NZQzgxU1VyZVZ4blFoYkRV?=
 =?utf-8?B?cE5vVU9UNVozSEt0SDc4L3NvTFZabjlrYVAvamIyaXREcW9WczZPOFNKQWZq?=
 =?utf-8?B?TVNJSGk4eWRQUHNYMnB0UjFTZnk1bS9UZ29JTVcwc0VSdlVKVjJ0cDJJRWpz?=
 =?utf-8?B?a3ZSck9NeXBDU2psbjFVMGxIMm9CTlpPamZjekh2M3B2T1FXZGdlempUVmZJ?=
 =?utf-8?B?MnB2eTgyUWNuNnZtTFRET1VFNTJtK3N0SlI3Q3Fid2laeThNNmZWc0llWk5Y?=
 =?utf-8?B?UjRtL2tWd2QxZ3R2aVhPUytlNTkyNXdpQlZjNXJrbVZkYitiZG03TVFQUUVS?=
 =?utf-8?B?WmZJYllvYXVmaXYybHdjVEUraEJpT3RhWnZkL2p0K1RZVVVhMVROenkxbitH?=
 =?utf-8?B?RmxBMmFFTzU0blNDK25mUm1OS1NqVm1WaCtsYnMwbXJCM3B5R1NvUDRhZVBS?=
 =?utf-8?B?cENQNGdKMWFId2k1RldpUWZQQnY2ZmJTK2tacE01dkhrbW1wTVRwdDQvVlBo?=
 =?utf-8?B?WEo1cDBITUQvNG1OWDNjUXpqQTNldnpKUnZ6RytVRUtRYkRTVlZJZWNjMjZx?=
 =?utf-8?B?UDN1MFV0TTB2SVpzRktSdXlPT0ZUMThtMFFiRTZFQ3M1bnNCM1gzNWJPc1RQ?=
 =?utf-8?B?Ymx5c3ZLdnhYdWxXY1ExY0JsZ0RJMkV5RUx6NkhlbUN1Rzg2MzR5YWIyOVlK?=
 =?utf-8?B?YldWT2NRc2pYaG1tSS9XZkJkdi9vVEtFVzJHNDFlOVVoOVFtNHhxblNLU09G?=
 =?utf-8?B?aThCb2poKyt3TGtOQmIzNXlyM0g3T09iaVIyQmlGL3Y3VWVINXpOK3k5b20z?=
 =?utf-8?B?TS9qWUcyQ0JHeUc4SjNpeDltRlU3blNJcFVxM003enQ3RFA5ZDUvdGVVanBO?=
 =?utf-8?B?L3dHUEE2R0F0WjRmUUlPeFhucFphaEhxZ0NkT0FwcW1rWmV4aDJTZ0ZjM2tY?=
 =?utf-8?B?cVRDbnhDbWMyQ2trY21zcEFWR2hJR2oyaE9ZUC9KTHBnbExaRjl2N2RKOEFQ?=
 =?utf-8?B?Z0s1RGs0WnhZYkFjR0xPQ2hyRWVDZVlhMHA2QUoxOU14Z0RHNXZoVVBORjM3?=
 =?utf-8?B?eEl4L1c0QXpsNWgxMmw1czUxNStxOFVpOEhWdFZOK0Z2Z1V3UVV1anMzNzg0?=
 =?utf-8?B?d3R2djFBYWROMXNRNnlBL2Z4Y1pPVVJRREhPS2U5Mlh2VXc5ZHlzSFBDZjgz?=
 =?utf-8?B?M3dSN0VKdDFBWkxyNjZiRGpkeUV0cFZXak85Yk05OE4zd2xiNVU2SXNweTN3?=
 =?utf-8?B?NGRPQmxSU0FNbjREWFpQVE1EYklJSGljbnlnZW1YSm5lTURSWjFaY21mVGwr?=
 =?utf-8?B?NEJhaWJlVEw3ZDNKTkdsU3lBOUVxNWIxd0VFTVdiQmhwNnAyZ3d4SXJ4M255?=
 =?utf-8?B?eVVtUS94NWQrbjlUeHM5K2ZxNXIrVkFlb3BpM0hzWERlY2grSGYrV0JYYXJr?=
 =?utf-8?B?cU1HVm9pOXIzRmVSRmovY3V3ckJ5NE1zYkNYbGUyY09CdUtoVlo3OCtvT0hZ?=
 =?utf-8?B?d2pnRWpraE1mcE9memptUjhsWXZKaWJ1V2tMcUdTbElROUtBZEQ5R3VKdHhN?=
 =?utf-8?B?ZENNYWlObkVTTUlRdHROYTV4UzR2KzREUnVRY1J4NStvemdjOVVFa1ZrTU0x?=
 =?utf-8?B?UHVqT1JDMzh6ZmROK1FudUUxV1JiVk8wMnRZY3pYZ3d1NXBCK2hmVHpBMXdE?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2deda691-8aaa-4d69-cafb-08dd52c8d7fd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 22:41:12.8852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NM6KEPFizcg6TQh7g65vkX3RHKRIqA9bnkgsTbdi7rauiyOAbAHnJarwFHTJ/QFA2Aog52AkrQT40vJOCnQ9AP9S6NwUtO3sSEALia/dSa4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6171
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740177712; x=1771713712;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wDMswP7qq0+VTuwIorhvBm4EzhUunYdjzzfCEcnSWms=;
 b=VVPhZUjRdUi2yHAvnQWLGmvguHgwP00S6eu1HqII6DcVHTIf5+ziwaRY
 BCl46cd3qwmKHo2LPKQssHLSolN/jqGeL4dGVEe0jyK8yaEIj+W/4dol1
 jqqwZIyMCUPw8tvtk+4HgyxfkbkATQm63/DJbYkf68ZW4nQooyW13OEyf
 JeDH+421PSmHLAKsLPZ5OSEHfmWBYRfMQg2P9ONHY2MNIBpHf8Y74gaFA
 bDd9xREGxtg/1JYMgjlxtTuiqqqgy2z2Q4r6skyzUYKSlRoS/nQSNfug7
 7u7KKoypzUjwlG/jx8PQTsVLmUFCB1bJH7UTTFm6O97rc8SSwHq644I2s
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VVPhZUjR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get Tx Topology AQ
 command error on E830
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



On 2/20/2025 11:29 PM, Michal Swiatkowski wrote:
> On Thu, Feb 20, 2025 at 02:45:41PM -0800, Jacob Keller wrote:
>>
>>
>> On 2/19/2025 1:37 AM, Michal Swiatkowski wrote:
>>> On Tue, Feb 18, 2025 at 04:46:34PM -0800, Jacob Keller wrote:
>>>> From: Paul Greenwalt <paul.greenwalt@intel.com>
>>>>
>>>> With E830 Get Tx Topology AQ command (opcode 0x0418) returns an error when
>>>> setting the AQ command read flag, and since the get command is a direct
>>>> command there is no need to set the read flag.
>>>>
>>>> Fix this by only setting read flag on set command.
>>>
>>> Why it isn't true for other hw? I mean, why not:
>>> if (set)
>>> 	RD_FLAG
>>> else 
>>> 	NOT_RD_FLAG
>>> Other hw needs RD flag in case of get too?
>>>
>>
>> From what I understand, we didn't anticipate this flow changing. E810
>> and E822 hardware require FLAG_RD for both get and set, while E825-C and
>> E830 expect FLAG_RD only for set, but not for get.
>>
> 
> Thanks for explanation. Seems resonable from driver perspective and not
> so reasonable from firmware, but maybe this difference is somehow
> important.
> 
> Thanks,
> Michal
> 

Yea, its unfortunate that this changed at all, but we can't really go
back on released firmware versions.

The RD_FLAG is described in the datasheet as:

Flags.RD: Set by driver to indicate that FW needs to read indirect buffer.

It is intended to indicate the presence of the indirect buffer vs a
direct command. I believe what has likely happened is that this is
interpreted in a strict manner so missing the flag causes the commands
to fail. Its quite weird that older firmware required it for a direct
command, so someone probably changed this thinking thats strange..

I haven't been able to dig up more info about this or why it was changed.

Thanks,
Jake
