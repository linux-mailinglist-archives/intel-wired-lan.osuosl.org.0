Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 322E09A15E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 00:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E6DD811E0;
	Wed, 16 Oct 2024 22:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HQOPh_7m1eTc; Wed, 16 Oct 2024 22:49:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41C7880BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729118998;
	bh=zQ1Y5EJy3UqabZiFsHhp3Ro+/diEnXCiHJmImPRKHf8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NWyWWVXCOeorw0fK05kFt3M+A70Zh6LEdgicRosOhr2/gYG+Uz1NlRJpaLSbsVpTx
	 2AWZfAK8flmVZ1HbGYaAohPyPZIQNqSyi1PrnAjfRaBQ1FMIH83cGkEHFgss8TGI9/
	 iozuTlcCu5jVIa1WVf/wqk3fawN+LxdaMvyHIjgmgCsDguyp1N8ZJ3JJ/dAaroG5WY
	 fmG5hBAOjjTxE6TRnTCOJIde2RS6ltuYBoaL0EifEOauKUuuiI9gA/04Db6TRZcueD
	 4nrfBF99QZwIif0jZFDBH3v5x0HbqJ3vwPw6tvkoMxZWyXFq6+HKufg6Vi1v0jKerP
	 qz0tLpMoi7U6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41C7880BDE;
	Wed, 16 Oct 2024 22:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D70912316
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 22:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A296D4015E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 22:49:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5HDyuI0UZaZF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 22:49:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4DABF400D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DABF400D3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DABF400D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 22:49:53 +0000 (UTC)
X-CSE-ConnectionGUID: 8HxkwWyUQJa7hEuuGoU0uw==
X-CSE-MsgGUID: ygXCHV2fSGa1/vol7FbChg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32278398"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32278398"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 15:49:53 -0700
X-CSE-ConnectionGUID: Tp+iyZcVQ3CuBQc145wgHg==
X-CSE-MsgGUID: dqXOfnmnTSKRD7TdSHpDdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="115805722"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 15:49:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 15:49:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 15:49:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 15:49:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 15:49:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HKisUt7C6VAnhaR91WkruUFHmHlG3S/vY9c/EvfvunhIZ2nOlNT4kTpWQ1KvgefdynSG7MK5dDqFRRq37yN/epdO1noLRaW20dQSjouMjQp4TK95ayq0G+jag059wPoONNotB6AM0MAq75zr5m2E7edZsiMTtts5N7TRVl4UIfxiVXv6OOHxV4RqsY3HcEof/LHDQg503kdQjvP5dUshx98olLeF1sUTm5kUaQ7DFC+VZzN7h/0iQVEipCaWSmh0FuApuvJanTt/oav2U03FHeLesnxAI4snOUSZFVQmjwdHYNKbrKCETGHdjol2//sV+jCoO6qGvIVneiDKc41FYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zQ1Y5EJy3UqabZiFsHhp3Ro+/diEnXCiHJmImPRKHf8=;
 b=Wfs/2o1vawsKjqQdbPussZyuoNDfPcl6chWP44x3a+g0RS0IyasNT0CRZVC17zLbI6CDjZpmVW5d8vJjjTc/RQSnHx/50Qf1OdFh7ieZcVI49v/cJo5Kj3/cX0bEa52OrnT845iI165rqBSZZS8MXAHZ76/EKldjUrMIvpeYlINSDdSC/PrKYp9SP6S10zc7H3AiySU9Gn2cBSJpAwwubZMw3Vrlxvp/hJuv+o+WK/L6iwYyfTjjzomq7EIIbsqhRu1nzWVAECN4hmE7StOibp5oUeEp4bbcIyh4sValS5uIqv0PwLO3Mn0UWkWywclNujo5tJ4NbrSK547Nka30Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CYYPR11MB8305.namprd11.prod.outlook.com (2603:10b6:930:c1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Wed, 16 Oct
 2024 22:49:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 22:49:48 +0000
Message-ID: <98b5bef5-d5a8-45d5-8fe8-f9c34eb5ab84@intel.com>
Date: Wed, 16 Oct 2024 15:49:47 -0700
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, <netdev@vger.kernel.org>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0016.namprd21.prod.outlook.com
 (2603:10b6:302:1::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CYYPR11MB8305:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cf6f364-919a-48bc-b9c4-08dcee34d6b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enB0OGtIVkh1L2FRUXU4d3RFM0lReUI4dTFyYk5QMGkwR1BnelFOeUt2SHRl?=
 =?utf-8?B?b0dWRThYVEdqYzZvZEY2aTV1RWlKbjQ5bzNSRC90YXdzNk1ZU2M4dTR4UDhE?=
 =?utf-8?B?WkFqcjBnQVd3Sm9HTVNwbVdtQVdYRXVwQmdRTDQ2WElQSzQrU2ppN2FrMEFh?=
 =?utf-8?B?aXpucTMwYSs0Nk9FaEpQRlRjYTh2UWduRXJWK1lTdXlJTWdPeWx0aEx2Ung4?=
 =?utf-8?B?VGtFM2ZQQ3RQV1V5V3dodzZ6WS9DZVZrQWN6Z0ZtQUxBNms0eHJFV3l1T0FB?=
 =?utf-8?B?SDhlRk1NL2lEdEtUM2NlSWdjWHNoL2ovaVg5cUh6TURtOXpXTlk2bDFOK3Bq?=
 =?utf-8?B?aHB4emI4OUxtZFZ6dXJPSWdLMUU0VU1FTEpaZmo3RWlONGJzYmVCa1J3TEVO?=
 =?utf-8?B?VGRMSzFpNHR2Q0gzdFp4NU5Jd2l1cDV2UmJXbjl5SStzS2hLOENaditHb3d0?=
 =?utf-8?B?eTNUZ2FiQnUzSmFEOXRWc0pwZDB5T212b0JpbnNkNTd3Y3VnVGpDYTI4UGVS?=
 =?utf-8?B?S3g1ZjlRc25tOEw4TUpVVk5DQmxadHBySlNKZW5ZcExwam44NFFsNU1oSmp3?=
 =?utf-8?B?V2hKS3NMb0JlcTk3VFJ5TzVZYk9vWk1KelYrWC9EV1FXVVJBMjNlTlRuM1ZP?=
 =?utf-8?B?MFBGeEZqQlFhL1YvL3pJSDQwOGh0Y09aSWZyWW5tMG1lcXpVeENZRU4zVDRI?=
 =?utf-8?B?bHVtWVJUWlFYbjVBbUZVRk1vcjh6TmNuMERRRVVHSjlQekNVRk9FNkJsQzB6?=
 =?utf-8?B?NHY5Vjg5d2VrV3F2b3NwMnVWMG5YVmhHUjRBM1g4SXhVZ1hsdk1aMkpKa1J0?=
 =?utf-8?B?QjZ4MHB1aUlHbFl6ZDVBQ3N1dG5EQWl3RWlWUnlwVkxwWnRpcHJJR2QwbmpJ?=
 =?utf-8?B?U2IrMW4xc2kxRUdOOTNnRlIwTW1TcngzU0E4RGIwNWxZMmhmL1prZWkveDVT?=
 =?utf-8?B?WXlKVDNLci9IcERQdXRDZU9WQWxjaGJTWEFQSTNCOWlYdnR2WnU4R3NLWGVX?=
 =?utf-8?B?T2FJSmdDa0M5bEF2WlY5YVFob1dtcEM4VFpyckQ3Y2hKWFhwbG5RNWFKY0My?=
 =?utf-8?B?NnZYTDdiTksxQ1NIR2RVWXowTE9iMnhpMUpEeHpYQ2pLNGJsT0x0VTRKdzlM?=
 =?utf-8?B?Q3p0ZUZKNGJoSXpySG5VaDBiMlpnNVp1YmsrWjBJMnBkZ0hVYi9IYnVCK29x?=
 =?utf-8?B?MmVpZi9kNTJmMEVJQzQ2Njl5YnUxd21HdzY0cnFvOE1FeWE2QXh3Q0dhajdr?=
 =?utf-8?B?U3E0OE1ERUNIUHQ3WTlRbFN6blNTTjRqaG1RdnArdnpUNmo2b0Rkcm8yaGUr?=
 =?utf-8?B?UHpKVWpzRDkwdlNlQ3VqZTNNN3g4UFRrdm0wVFFRcWx6VnZOL3l0UTNMVlE5?=
 =?utf-8?B?MjEwMkphY01ST2wwYVYwNW8xVlg5WkZJZXZzTzRNZ3pTbytvbnpVamo5eTNr?=
 =?utf-8?B?YzNtMkt4OWM0QlRjV1JsU21nRm5ocVQ5bXpiVmdWT1pITmR0Zng3bnFObGtS?=
 =?utf-8?B?NlBnK0RPaFJjSFk2WUZvSnJhSW4wREFwM2RzS1RhNEhST1JkYkdyaDJFZktR?=
 =?utf-8?B?eDIyeGJURlpWUUJmWXhoc0hBMGwyTnhvam8xdmMvUG9HKzJTZ0tiOGd5dnlj?=
 =?utf-8?B?V3JaZW1sRkh5NUt3Z2ZCeUdTa1ZZRkdWd2tWbVBpZFRJZWxQSlY2K0RLUVBQ?=
 =?utf-8?B?Qzdidk1CMFYyVWZSQ2p0YnA3Y2dpNjJGMG0wK2FYYTgrY3BVdndBdzZ1QUox?=
 =?utf-8?Q?zce+4IKLhBvs4hcfiD+xQ5OrOKGF9hmE/t8PmPR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0VKbVZmdFI5Z0JWRFFCRHVXZEtsSGhuaDYzR1BBZmdDaGs5M0w0Zm0xOUVs?=
 =?utf-8?B?dVo3VTZNMld2MW54YUF2NHNScDR2dkRrOXBCdkdMTWdwQ1NaQWlTQ1ErYWpL?=
 =?utf-8?B?dmkxM0xQSnRYVzUycFozclBsY1VSakUxdEpaajlQd2V6bmNJMGJqcVZSemxV?=
 =?utf-8?B?L0xVTDZrd0xRMFRadVpTWUJDZ3h4K1N1NlV2YUhkVlJSSjBDVXh0QUJDWGNm?=
 =?utf-8?B?THYzLy9FTlFrcVZXT1c2cjEzSndocjBRb2R1Z2wrUnZNZWl3K1llK1U2SVE0?=
 =?utf-8?B?SzB1ejd0ajhnYVJFam4zQ09QOWExQW9lMzdBRU5zUVRPZTZwK0dlQlRFcThT?=
 =?utf-8?B?YWhqaTZoZEVMTGFEeGtIMDFtMElkSGhqb2hINndhcHViSWM1U2xiYzlQTkkv?=
 =?utf-8?B?N01nYlB2eWZrUS9QbHNXcHg0Y0FjeXJMYlhReERhaEZDa3RBbFl6eWN4b0xF?=
 =?utf-8?B?ZkQ3Qjg4VlE4ei9BWlJ5Z3pxR3F0Qi9ySDNVWU1vVXpIUS9yVnNUNTlTemxZ?=
 =?utf-8?B?K3NHN1BPVXpicWZLNzRWcCsxTC9iOXZjYWFZVEdYWjJ5RlZraTVoeFQ4TGQx?=
 =?utf-8?B?VFExY3dCamZiUmhvV0J6c1UveW9Nam5QUHE1cnBkK2d6cGJucDdvdktMQjl0?=
 =?utf-8?B?RnJaS2NEUVk2RUhaODRuanBCbXdLSUNrdlh4dkI3cU1XODdmalQ1RFo4VHE4?=
 =?utf-8?B?WUtKUlVsTTc5eHJNZ2RtazJzbGp1L3oyZlBaV2tQdFdsKzdaL0JYWWh2dmJM?=
 =?utf-8?B?TEtqeXFhWXpteWZjQlVrbTZsanRhWHpMUUFTYkhEdXFMRk5Cd1JhakJBblBH?=
 =?utf-8?B?U2Yrem1BeUJLMkE1SXc1bVNHeXJjR2svNjNWcVlld3JkQjVKdE5QVnNPZnBO?=
 =?utf-8?B?bmdRS0doWnpKTjlHdC9UU1hsVHFEWnFFNUJLc1FCNmNNbnY0RjE0d2ZSc0J4?=
 =?utf-8?B?UDVYaVlreTlINkpIVHlmRUJ3MkNQYldqY1ZnT0xHUnRGUWJwUzJOTE96RFQ0?=
 =?utf-8?B?cURNZHVVamZ3OFF4NUp3VC9wdkV3TGFrUFZsY21WZ2Z4RFUwQS9oY2ptT3FQ?=
 =?utf-8?B?aTVkUHJKMGwxVGxrVkdONDhlVE1ON3FYQUNHWlNydk5xZTgyOVpBMlZTUnEr?=
 =?utf-8?B?TW9SREFkMUk3RHNoSzhZRFM1VEIrdjN0WXJzN29IbUVNZ1FOR3g1NUxRRVR2?=
 =?utf-8?B?MWFiMEx6TUFBMnFZZlMwN1Y3eUVpRE8rQUw1UDZCWVdPWXFrR0Z6d1ppdlYv?=
 =?utf-8?B?NHZWb204UGo1UGg3eGRlV2V6QzM2bEtxSkVzeWZuWlJEUTJvV21JUlFwRXJa?=
 =?utf-8?B?TnlxeW1naUlCS0pBcVkxK3h4Q3RRWnhYL2RlbzlTYXBPa1ZzRDE1bnh0d2o3?=
 =?utf-8?B?U0xWeGZrUlpMZVNTSEFoUVZmVzhDNW0zeFVMK3dDZlluSldQeXBMMGVjQktF?=
 =?utf-8?B?czJpK1pCL3RySGZrSWU3Znh1cnorNGV5STBIVkxOT2RUSHBwTWlLVEdWL1cz?=
 =?utf-8?B?V2M0aGVlRTNhL2pwaEQvQ3FNWVJWY2xNUEJOaGM0bjFrNTU3QnVRbnYwVTZO?=
 =?utf-8?B?bkdydmFWS3RQZXRCU01LSVJIUzZCVnpWSlJidEw4NFNQY200cVdqMWlldVgx?=
 =?utf-8?B?dURJQi9PbGR2MzNzUFVhSVhlQmxMRUFiTGtZRy9JSmNQVm13SUU5SUJMM1dT?=
 =?utf-8?B?V2lhemNrSzY2aFJiWEk4NDZwZ0I3UmxXREpsQmttWTJML0RCWWY5MDQ1b2p4?=
 =?utf-8?B?d3o3NVFHSVpwZEQ4RnozU1BueHVuekNQb2hSSU9sZFFRSGxmK2k2Rm05WjJi?=
 =?utf-8?B?ZFJWRkwyeDV3cFhyb01MUU0yQ0tCTCtjUzBodUgwSE80dGdkeDVSYmYrRFgz?=
 =?utf-8?B?MmZ2MXNUWXp2TFZ6elpuOGl6SVFxSHRkTldqWjhxYzV4OFNBeGhZa1BvVTAx?=
 =?utf-8?B?aDlUdEV0YXZEK0haeVlXZHpmTHFkQ3E0NHFzMUQvcS9PMnRYcWVSWlBTNExn?=
 =?utf-8?B?djc5L0c5OTZUaWpQTDBKWEZLeGMzQVg4TFVxTGJNeUdNb0J3cXkybkY0RW12?=
 =?utf-8?B?aDg3a1NzYjJQNC91aDJ2QzdWeGlaejNOcE1jYWdpdmwvWm9GTlFaUURaY0VE?=
 =?utf-8?B?V1VmVlJOYVNES0JmVE1KSkN0ZmEyaHFJckN4c2FydkJrNU9FQXY1d2lTRmxV?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf6f364-919a-48bc-b9c4-08dcee34d6b2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 22:49:48.8489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8EMvigrKUQSXjg8Qn/AuG3E23LuGGfrplTQU83H789GpDgwQkM1CAMlrx1x5GydwwInXP84ilT6Q7HNkE6TfYn7aSzyBR0Fbnx82+2Poko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8305
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729118995; x=1760654995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tALnzFiqveSl2Tc8UFmKYFYMUg40q+sYvZoFy1iLukU=;
 b=PUT2vCwn+U4AeSA3CKLzRcfVj7X1KOGH7V0YyEDRSN95peieT2fS5l9X
 /zj5H5ukKBodjJHZhXCot9fqylgxKa+9qAnMrWVTbUwP2aIJX8JgFhhS/
 PUB5oe04WBdB7jiwieAmQyFiawJmDoYubQxSgaekQQ25/BqYTamSrqXKN
 5+ee7h+e4TmegaT1EVMXSlgqbkKVOPLDconPkr+rhKacfYF6JszGM9HoS
 HmqVnOa+8mIrvmpddTxaYXC8u+gM1gMz13wvRCt65er7hgtu8Sq6Q37CA
 TSJje7MEnC04Xc3gP0gMBdcxdzfn0rb2O0+SMG2uGLIQLQiHEiRGKQ6bt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PUT2vCwn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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



On 10/15/2024 6:56 AM, Paolo Abeni wrote:
> The kernel test robot reported a build failure on m68k in the intel
> driver due to the recent shapers-related changes.
> 
> The mentioned arch has funny alignment properties, let's be explicit
> about the binary layout expectation introducing a padding field.
> 
> Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta size configuration")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO-lkp@intel.com/
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>  include/linux/avf/virtchnl.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 223e433c39fe..13a11f3c09b8 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -1499,6 +1499,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
>  
>  struct virtchnl_quanta_cfg {
>  	u16 quanta_size;
> +	u16 pad;
>  	struct virtchnl_queue_chunk queue_select;

There's a hidden 2 byte padding because queue_select requires 4-byte
alignment. We assume this, as the VIRTCHNL_CHECK_STRUCT_LEN for this
structure is 12 bytes.

On mk68k, we must not be adding this padding, which results in a 10 byte
structure, failing the size check for VIRTCHNL_CHECK_STRUCT_LEN,
resulting in the compilation error?

Adding the explicit size aligns with the actual expected layout and size
for this structure, fixing mk68k without affecting the other architectures.

Ok.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  };
>  

