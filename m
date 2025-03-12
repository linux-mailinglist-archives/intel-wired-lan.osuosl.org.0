Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3755CA5E6C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 22:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B80AF60B77;
	Wed, 12 Mar 2025 21:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QNKNb9ZHQnT3; Wed, 12 Mar 2025 21:48:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7B1E60BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741816132;
	bh=oODNLNrgyvz2nJQOde3ktp1cGA0KtI6Tvi+25hOABO4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ki2ZQS2b1QcUraAMwbrKInJ+UHVctWWs1jk3EuYpoYT8ptK9jlbXHOzJeGDxqgCEI
	 cMQ3g5ilYflvIXEjtvnod3CtHx8Bf9xVu+q2DNSAd2qPRcfs/VR8wxThF4DMmiK/y4
	 5QZcivQHLWqyM1oFzkVCZpYRG7lTiBsewoDulA8RHtssbSPOLPZbIkDRisAXWqSGrR
	 BXSRi+CsAISLlonLT2e/qfMd/Dz6SKBdxhJkZ68ZFAK32hhDtwqpf3ZYq6WX514Bpt
	 Xn9PD5mHGfAhuEOlNNjKEU6IhcNSNB6SQcWFYC4jytIL++fFGi3vqkC4gZ+1lnCeUv
	 ZcMwkksGPOlbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7B1E60BF8;
	Wed, 12 Mar 2025 21:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94102128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61EB140281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:48:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p2-Xbz1df6xV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 21:48:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 420094012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 420094012F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 420094012F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 21:48:47 +0000 (UTC)
X-CSE-ConnectionGUID: 97sQGcmaTqeybUZTWNoF+w==
X-CSE-MsgGUID: ptzOfMSUTaG0GqGeO7ecCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="30504367"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="30504367"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 14:48:45 -0700
X-CSE-ConnectionGUID: u8N63ngeTA6qluxGVx1dNg==
X-CSE-MsgGUID: bxoZv72hQGGb807lM627tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="121684228"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 14:48:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Mar 2025 14:48:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Mar 2025 14:48:44 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 14:48:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SEEpgb+5mPMh6ShiPtX5cUCodT9/d6MKQGi1EivHoCjUEgT7T07FaawnLStJpZ0lO8kKvsrm8Hdcwp4c+DsaKfXJxqFIvvvHrOM2Nf8WyelJmGHwhfPQr9Fvb8uFQbngJQbxDWXO2cjM2kk5qRrnc9Y8LrsT+UdDlDE25r2kTZdIGv+3Fz10I9h4HfHzVgGfLTrHYcOGdFH4Ktmi4VzaTHaYUF9ci/+i8RCBA9LZQhmNEGjlPJYyCuKr9z0ETCKOaxEssv0o6aMn/KFLAUUfU3i5F0+F1LYHfCw7dqKZFc6IOkOs4Up8vDA4GR473Z1MBIiAkU8qsAg19BDMQqLPZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oODNLNrgyvz2nJQOde3ktp1cGA0KtI6Tvi+25hOABO4=;
 b=WokfXO8IqLyVaXoJOns/1R1+COV+D3XYQV6rFRLMK/vSKghu1681/g4L7Kj9IWXGdhv+uX/6Vri1F/n6uOMIpoGxsrRWHTGdhlSJ/yZF6ETKMu+T8vBAvMBWbH4wf8Xz8AWHPCTI03hPVkrFlEMLB/DlhhVWRdXLa0kdtdGYVogE5YSaS3rKx0mS1KR8pgmibyRDA/hg3dUKzzEZc8g9fVETIi3Ppi6y/UCd2ftH56AFZQEE5E5TQvEmguc5r6qdK8v5UYhjOWpjODNr4svM1V9oLq+DwCblqLCs7/OCAvWiUk4af9HhM9jSmtP8+rbsgLEeHnTwoPdFo3TibJ7wrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6808.namprd11.prod.outlook.com (2603:10b6:806:24f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 21:48:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 21:48:42 +0000
Message-ID: <f305bf25-a11c-4fa6-abbf-3a0c48399b01@intel.com>
Date: Wed, 12 Mar 2025 14:48:41 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-10-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250227131314.2317200-10-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:303:b4::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ea22ec8-a6fa-454b-8bc0-08dd61afa7fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFJYMVcrUmpoOG5hM0dMR2FpSlRBUHpPMzdrS3dzQmtSOUlpOGtXUmJHZ2Jn?=
 =?utf-8?B?LzA3b0lwMXBFUFMxZlZYblRPNlRKWTJHbm9WYnNUK0JlTWV0QnlUaGIvVG5J?=
 =?utf-8?B?NDdDK1ppYVRYWGM1NC9CdGNlYlFiZlZlMjB4UkUzV2pBd0hBSUFDTFVZVmd6?=
 =?utf-8?B?N2dYMFhuRlljZEZBK1BxazhmenNZZUx1UTY5MDFmTGVsZnlRZlRZaUNmUjN1?=
 =?utf-8?B?ZkNtL1hxeEoyUGV0MWgwUC91SUpQeDlVcEVoTjg5eXZVKzdhUGM0MkUzc2xL?=
 =?utf-8?B?eTNpeWhEZlNvNFdjVzh0YVUyc1B2dDVGSDFqMmxZZ0NJdmFRTDRudFFnNTl3?=
 =?utf-8?B?UUtEcG5wVEJlUmFnRjVtWkhLckxGM0VCZ0tCdUk0YmRGZnQ2djhzOG1aYmhX?=
 =?utf-8?B?R0dZZXZaK05DRWxPYWpzY0dydGVzNjlkcm8zVzRsR1d2Q01PeW9NcWVBQVRv?=
 =?utf-8?B?RFRPT3pxeXVtL012eUx0VlVVVG9KcjFYelNVbWFQbWhnY1NUeXJMNjFONyta?=
 =?utf-8?B?Rlp0WUZlQkJ5cCtyYThxQ0ZlNWxzTExOOHZvYU93dXBNc1lNdDliRDVFRjFo?=
 =?utf-8?B?YWhpclFtdlpLOEk2RnV2S0dBQXZxRkE4dUVBZTZ1R2YwMkxpRE90WC9HdlJN?=
 =?utf-8?B?NWRZd3lTVytVUGU3dkRQZE9CTS81QmN1Q0V3YU5kU3hYa1hsall1dTBrUElM?=
 =?utf-8?B?SDhBZEJvaEovcFhqYzV1ZEpyTDZUZmVTcU9CTWdzV1c3U3YvR0Y1UTczS2Zw?=
 =?utf-8?B?ZG9kLzY1V0pLNUdlRVBIR1pLd216cTBTdGF1aWZxODRnaTNqdStObHg2OHll?=
 =?utf-8?B?dkVsV3JXS1NZWnBBYmQyMWJHa0pzbEJTV0Y0Q1oxWWhQQjZSa0xmSnJMRFVT?=
 =?utf-8?B?dzc3cGFpU0kwYUFuK3VxS01ERG5NUDlEM2xyeTQ3MHhCZGtnTzBXQmRDR1B0?=
 =?utf-8?B?RmhVMkRoa3ltNG5KeFFKMVZpTjJkNEY2OVV4UDJjQjRFeHZadnJ4NUwvdVRO?=
 =?utf-8?B?dW9ydG9GNlArSjlYM3JWRERWZ1BCbTJXdGlmNjNGUUdUdHU2ZjFCRWw1aW1V?=
 =?utf-8?B?TFhWL2NHdVhWcURNM20vYWdWREVIZWN3Z3BnOTZJT3BGKys5b1ZLb2hQdnc2?=
 =?utf-8?B?Wkh0VitGSlNYSnRMN3FZYlFxY1J0RFZTYldnOThFN3lONENCMGJ3cEJXUExa?=
 =?utf-8?B?ODFqZmpEa0xxRTNWaHN5YmYvektCL05NRTh0TG11dnRZWDB2V0tSZUx6MjV5?=
 =?utf-8?B?bEd1NWlUNkE2czRNaTFjQlZIKzZIdmRkSk1rSkZud2RoM2d6RC9qUGR2eVFQ?=
 =?utf-8?B?M2t0U2wxUjRDWmIwZjdrdDg3b2NaWDRmWHZhUDJFQkEvTTUyVm8xTWVpNEhl?=
 =?utf-8?B?dk51cU5HdlhPeTRpMko1VkswVWNML01scDYybXRKSkk5ZUdlUllnUU42UFpM?=
 =?utf-8?B?a2wrZUdzSmk3b3hQZGpsQWxIY0oyMkJMdmlpTnlBbld6cE5HQy9jMlJuWXpJ?=
 =?utf-8?B?TnN3c3JielZnWFhkZHljcmdEUjV2Mnk3QStWMHgzVjNXZ1B3YjE1aCtEcTR4?=
 =?utf-8?B?czZYaHo2NlYxOVFsL0J5N3NjN2xqL1pCditpa1V5bTRqa2pvM2dwR20vYmla?=
 =?utf-8?B?R0dzcFJpZ2xPU0hhb1l3aTk5NTlzVFE0STd3KzFFVWIyVWFZNUEzbHFVb2VJ?=
 =?utf-8?B?cE5uUGdMUHc1RVBMQWtzY2lEUUpSb0todDFMSEM1Y1c4TWlsSmwzYTdNeGJ6?=
 =?utf-8?B?bnNIeE5YUXRpWUhSYlMzYXFhRFM2REpTR1JJc29ScXNiOXE4QWhzeFpoNTRL?=
 =?utf-8?B?aVhOS1FUSWcwQ1pXZlFWcm1TTWh4VGZjeGpNeExUWDdyWEJtVVRSMjNPWlZ1?=
 =?utf-8?Q?BqgvpHMsy8mOr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkFueHg1UG1ZOGxlcmxEQmVTdmV5MFV5TDkxS3NPUVJCTm1MOUF4amVGQVQr?=
 =?utf-8?B?cC9SeERVZkNyOGNudHNWaENSZE12eEpKRURqdUl6VDRrb3ZmeVdsaDdqblNm?=
 =?utf-8?B?U01BQnJZcnR1YWQwT1JlNXdJdS9DUlNxMFA1enhEeENZRi9aQ2t0Ris5d0dC?=
 =?utf-8?B?cVN1MFFlZnhpZ1Z3WldSUk1rTUUwaDdhNWpJQ05uRkd5ZzNKajJ0U0RtUWJ0?=
 =?utf-8?B?aTE0L0hIek5WWXRGbW9ZdG9qZFJ1THBiUGFsazdWNENaSHIvNUpoS3pHUnJJ?=
 =?utf-8?B?aFpFMzZudlhUZ01INStZOXJNdkRIdHYyMmllbDdiUlBjRkJOR2xnVXdXcDRV?=
 =?utf-8?B?NU1nR1J6MHV6TS9paG1FT3VFNXN6bVFmRlduL054bFh0T2lLa1l0UWVKRUFC?=
 =?utf-8?B?bGc2UjM3Yk9rVHNyZUVKNnA3b2F5TjBDcmFIRGdDck40Q2haY0N3VVdKdGcy?=
 =?utf-8?B?RWNTVmF3WTdnUHlTRHcrRkgySFd5bDJZcitaOFowS3B1WGlxcFRZR3o0ckZS?=
 =?utf-8?B?UmxxajNMYnlwL0ZXTnRZSUdKV1E5K2p5Wk1OK3FmY0VveXZvTTdlVjJwbFhx?=
 =?utf-8?B?Z01qckZPMUxUQzdCTHBnNzh6cW5YTUVuekMxamhHS0hJMFNQMFBDc0FlWEVr?=
 =?utf-8?B?UU9STWdFUk5YbHFteHpNYlRYZGlVbEdjZlM5L09xY3ZCSVBybEFDeFV0YnJK?=
 =?utf-8?B?R3ZRcGtVQitBZWtFQUEzZEZYWjFhVTVrTTZkNGRZOXRmdU9rN04vY0hMK0lp?=
 =?utf-8?B?VnNRYnYvRC9KRE1URzdzOGloNFdEcTliNkpod1U3SHphbGdDQThyQWRYS3ZO?=
 =?utf-8?B?VkVTaUV3TkdyMWRaMnZLNU03cmJ2Nm5kblp3VmhzUDlzdEFBbFozcmlkanlP?=
 =?utf-8?B?dHVMR2JRb2I5azYxRG9ucmpnQWl1aEZ4c2ZwN3doM3RiR0dNU3dFNWN3TFNK?=
 =?utf-8?B?Ry9ZNm5CVThZaTFIRVpNYkl3Yy9mN2JxVENZVkUwRXlsWkkwOVNiMERXaUJo?=
 =?utf-8?B?T3Q0TFRjakxNRzlrdU1mTHFUVFlSeHJRdjVJaG5SakpyK09FbHl0QkN4bnVW?=
 =?utf-8?B?ZmVWVU16cnRpNElVOW9GbWJkYjZuclBHbTdKRTdmcEtUWHNOUE5tOFNPQWVu?=
 =?utf-8?B?M1AzRFZTTjVHVWpJQXFldFl0S3czc2lGY2s5SXJnSkhReE9TQ3RJQm85SFEx?=
 =?utf-8?B?eHhDWHN5d293VENvNHB0WnNodUFXajRmSTBHMEJaSVdmT3MxSXcwVVF6d2Nz?=
 =?utf-8?B?N1NEZW9CN3BJNk1UQVd1K3VSSFRGQ21sRkhvSDNZWkMyNGhZalViK1Vnc1dy?=
 =?utf-8?B?NGNpaGIwSE1QenYrRUR5N1JqMHBOanNBLzVvYWp1cnB1VEl2dnBvZTJ4NndP?=
 =?utf-8?B?U3hWTEh3TDlqRHJvMytGMW0xdUJkbU5SdkVKdm9sTWRUM3BRZ01MVTlwc1M3?=
 =?utf-8?B?NkgxSjBwdWgzbmVaTXlublJpanlnYm90Y0dkYWlYaUw4a2kxSXpQS1VrdnBL?=
 =?utf-8?B?NzdQUllCS0pRb2RnQ3FXb1hubHhhenZQNkJtOGx0UGE1dlZtSDhnSUxDNita?=
 =?utf-8?B?UmVjVTJ6c0tSYkZLd09USmpzWm9wcGZiaHZLSU1mMGcybjRIRmNFV3dFa0Rj?=
 =?utf-8?B?QWxQN1JpdG1YRXJGUlFCTW1TaGRIR0lvK3h3RDM1eXp5MkpXWnNXMjdVdmFI?=
 =?utf-8?B?RnBPeXZEenFOeUZ1emNCUDAwU2ZPT3BjcjM4YTBRd1FRWitjR3VSb3pTNEdE?=
 =?utf-8?B?NkY5N2pwb2VsOGF4WWZJUzlIdloyV05kK3Q0QjRZYlZjTVRmWHVzZmcrK1M3?=
 =?utf-8?B?NUdSMFhpcjVyak5CNHBPNVFvM0s5ZHlsVm5CVTRKTGxDODduZ1VuRmlZbEhD?=
 =?utf-8?B?R2lLMk1pYVJkNHNsenQ4UTZZV2RpSVc4WlJSL3U4V29mR3c5K08xT1Q2aXhZ?=
 =?utf-8?B?T21EZEpxajRBQkJSRjdrUER2bzl4ZGNIcjloYjVWcjQyTGZiWFRTUWNzVEt3?=
 =?utf-8?B?cU5zSzhBNHVHM2wyYzRQNW5DMGEvU3ZFUkJvTWZ2aUQ0bVRVeG1uSDQ5cDM0?=
 =?utf-8?B?aE1ySjgzcWVWL0NmVEZIR2cvYW03LzBpcmZBYWs1ZytpZ2lNRW9UOVdsWmFz?=
 =?utf-8?B?QzU1aVozRllEWTRSdVR0ZTUxaXY3UjR0WUJTeSsrTlZHZDZlUkJkeFVVVU1Y?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ea22ec8-a6fa-454b-8bc0-08dd61afa7fd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 21:48:42.3013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WC+7skj4Jp0NShnIOPT2KTdvpLPzVbnrldhyR+iKzTxbWFR9z07vUqlcc+aFEICXK2Gq2iy3obbQxxrkEkKFc3K6tNY3r9cL+lqQD54r1Xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741816128; x=1773352128;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fh/9sVSUtsPbO5zS8nF8rWZ+QJgCoIR7X1hcyxll8e0=;
 b=fywS8Z1UeDNn8mhYSueM7/myMXs5jsXrMiGLoHtwJB2h8d6mvLlqP1N5
 c6PV5lbVqbHEVdzg0RdQI3s6BYz/KI465SFExxM+V+n81y5luN2TxfKrD
 qDsCa0PUWX7Q6sxhDLG/FlfyBMnmQC3krnGFW5ks6dHbFrnVsRWBGF75Y
 5M1HmkORgStyEnkxxI29QBU40Q5Hm/1u3MXPXWHTA7zRpvLvpvGA0EgZQ
 CQDMFFeI4HySfNu6ff4xuNG1Kfvi3kCTI6LUn5y2uORdnQttgGzKNhXxz
 +7ba6UtBoxyS53db1LsqMXZ/SaApEFax78Q6ImjiG0Ch1Pe/S9ISpDKnz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fywS8Z1U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 09/10] idpf: add support
 for Rx timestamping
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



On 2/27/2025 5:13 AM, Milena Olech wrote:
> +/**
> + * idpf_ptp_set_rx_tstamp - Enable or disable Rx timestamping
> + * @vport: Virtual port structure
> + * @rx_filter: bool value for whether timestamps are enabled or disabled
> + */
> +static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
> +{
> +	bool enable = true, splitq;
> +
> +	vport->tstamp_config.rx_filter = rx_filter;
> +	splitq = idpf_is_queue_model_split(vport->rxq_model);
> +
> +	if (rx_filter == HWTSTAMP_FILTER_NONE)
> +		enable = false;
> +
> +	for (u16 i = 0; i < vport->num_rxq_grp; i++) {
> +		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
> +		struct idpf_rx_queue *rx_queue;
> +		u16 j, num_rxq;
> +
> +		if (splitq)
> +			num_rxq = grp->splitq.num_rxq_sets;
> +		else
> +			num_rxq = grp->singleq.num_rxq;
> +
> +		for (j = 0; j < num_rxq; j++) {
> +			if (splitq)
> +				rx_queue = &grp->splitq.rxq_sets[j]->rxq;
> +			else
> +				rx_queue = grp->singleq.rxqs[j];
> +
> +			if (enable)
> +				idpf_queue_set(PTP, rx_queue);
> +			else
> +				idpf_queue_clear(PTP, rx_queue);
> +		}
> +	}
> +}
> +
>  /**
>   * idpf_ptp_set_timestamp_mode - Setup driver for requested timestamp mode
>   * @vport: Virtual port structure
> @@ -627,6 +710,7 @@ int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
>  	}
>  
>  	vport->tstamp_config.tx_type = config->tx_type;
> +	idpf_ptp_set_rx_tstamp(vport, config->rx_filter);
>  

With the adaptation to the netdev .ndo_hwtstamp_set, this no longer
updates the user config value to report the upscale of HWTSTAMP_FILTER_ALL.

The expected behavior is that a specific filter request is modified on
return to the actual filter enabled.

I think idpf_hwtstamp_set needs to modify the passed in config to report
the upscaled filter.

Thanks,
Jake

>  	return 0;
>  }
