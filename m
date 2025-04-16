Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B44A90A3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 19:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D42E408F0;
	Wed, 16 Apr 2025 17:38:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdWhrBphNci5; Wed, 16 Apr 2025 17:38:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0F0F4099B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744825127;
	bh=LGsoak9e2/Ao6T5q8VWuB0DrplTsmzSxuQ9Ru28m1eI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eDKS6e93oB88nO1cf80eJ+Bw9N/GxoHAzjoIWVjH9T/R9cdpNJl2PnV7DFS7U3IjJ
	 ihhkTcMq6L2oFJeUwQsNMfBgLAZ40o6U+ePHNgn+0efPPmA65Np19YAywZBxqRNlWs
	 +JcNF2CWhJGeLSsvnaoY6ucRtI/qeAc9tww0NJwkYjRwzstt4qPl9tjhKofMMXDf9l
	 e7PuZE7P6+mLI3aLIX+mWxctHP3lcUtmiouPRG14aMMr9lkOva/vo7QMNA90KrrOXJ
	 P0Q19hZPHIJy5l2cs7dqhTGbxpy2yOiJZNcHEFhGlvcFAnjGYlqwLrpE99HVxQ6AFM
	 QOCR+vevC18qQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0F0F4099B;
	Wed, 16 Apr 2025 17:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 602606B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4663640A99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYGqO59bfyMt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 17:38:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6271740F09
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6271740F09
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6271740F09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 17:38:45 +0000 (UTC)
X-CSE-ConnectionGUID: ek/qQ2opTe2var4ktcYA4w==
X-CSE-MsgGUID: 8JX/s4dETCyB+XBItzsCZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46310977"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="46310977"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:38:44 -0700
X-CSE-ConnectionGUID: luGX/ycKTV2R/VIMbaSc5g==
X-CSE-MsgGUID: +vzOMmteQWe285qwQZzJzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135363217"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 10:38:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 10:38:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 10:38:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 10:38:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cr7cY+4s/Gs50LUxI+BdFn6scl4ctCKp1/DcbQg1RzuMyBNoE/yUOS4xYaKrRsvZA4qOsAWurO/aV1TkN2nkLNFA2tAm4Y5teIsgFl6NEa0UrjBavL9/+BPKTKtMSdKL+dfWSJ+xobamZVPC0wTmmMLEecTJlt2milRIgmxje9TLChXGBDiNHFwiljc09akGDoIwX6NBgirbBThMGwTWq6ft7gFlPFKDThgTl306evYYiMNUHMbCt44uGpK7nPu9QoXfDUSe/4ZOG1meh37X9c7Ybwpixy4ipK/E3C48lFaVHpdBDNVgV7Ux+hStmox9kANUuiA6mplbpOA5is9Q0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGsoak9e2/Ao6T5q8VWuB0DrplTsmzSxuQ9Ru28m1eI=;
 b=oJg76Dblrs3hE6xaekaDw0/xQftBLEX2odguVhPhM5nGBeusjHOcwVk/3yL+t5esv2jExyO/F9VG6cuhMG7432q7zs/vkAbSuNwqlK9L6DLrBitr5VJ6CtvCMtoCeBZyn7a8cGGBmAgZVU+fTXn5H6s8ERJJs1VJ3uqr2jAWEwkTxuPfYSEEMemhY7DTz2L3E8mGWp7ovBGa2XibM2VjLqzdPVqB7AFeeTwhNx/4+wfy7LReZVWXH70dpEoyrZCdMm0RaayywUH9fUSMRlkKSlltlzRhjFrImwLJ4Jta9YvqdOBnXNomp4PjvxCReuyKfx3sdEBQnTiXn9eO6DRwmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL3PR11MB6313.namprd11.prod.outlook.com (2603:10b6:208:3b0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.21; Wed, 16 Apr
 2025 17:38:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Wed, 16 Apr 2025
 17:38:40 +0000
Message-ID: <f9b72ac4-7640-4bae-8878-839b7b2daac8@intel.com>
Date: Wed, 16 Apr 2025 10:38:33 -0700
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, Christopher S M Hall
 <christopher.s.hall@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <Z_-P-Hc1yxcw0lTB@stanley.mountain>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Z_-P-Hc1yxcw0lTB@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0185.namprd04.prod.outlook.com
 (2603:10b6:303:86::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL3PR11MB6313:EE_
X-MS-Office365-Filtering-Correlation-Id: 65cf914b-0fab-400a-f331-08dd7d0d86ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1hNWUlUTEVnWjA2OWk2bXVuMVNVYTgxUlJncnNVc3pPb2NqWU1sUGhwWEhv?=
 =?utf-8?B?VG9relVqN1M4TGRrVS9aR0NPVWdoc083dGdieHRTMUFLK3U3bGMzWE9Fc0NZ?=
 =?utf-8?B?S3lXMjhLTkR2dWcvZFRSVDNoYU5wQVlpUVhvUUZoazBLcUlLNGdRQ3JNZXpQ?=
 =?utf-8?B?cFFhYmVDMWJ0R090VTJER0dwSlE2K3ZwMHFUUUVqZ1VzaWZrOW1Fam9HOWVo?=
 =?utf-8?B?eXRPWWF0TTVZNDVaOFJMMzAxSTJQSDllci81R1hHZkc2bGxOWVFqcXRwakxy?=
 =?utf-8?B?RDFZdlN5TkViT3V6eWFyQUw5YkRMTVB2Um5oZnFOa2l3aFpFMkphMWpiWDFU?=
 =?utf-8?B?NXk4SmJnbitRVm9jR1VmRlNjSWNTeWxoOTltc2RwRFhMSjBzWXJ0V3p4QzBU?=
 =?utf-8?B?UWMwYmhqL3d6WTFrZ1B4TGJvVlRWNDdkTzhIU0d2RzJPTXN6TWNyOSsxTS9l?=
 =?utf-8?B?RThoUCttSkE0VnFoL3I3V3pvais3NkRpazd1QjBTcGYyN3lUcVFadkkxSll3?=
 =?utf-8?B?QXVOZ0REeWI2OWp5K3RpdmhUMHVkWGlJT2JRa3Jkak1rZDVibmFTNURmT1h6?=
 =?utf-8?B?Qk90b0RwV3E1cEhkOEM1dmF6dVJKY1VjV1JEemYwMWlBbWVKRzdFZ3E4WWVC?=
 =?utf-8?B?RndZa3NHWXB3c3UxUkp5VGpIeTBoZmVhT010Qm9FUHRyaUJGOUk0ZVFsOVVk?=
 =?utf-8?B?dUl2cHF0MmdTU2wvYVJDK2E2dnJhWWNLTEs4YkM3N2lNRzJIaGJhSzJnYmFS?=
 =?utf-8?B?d2x2ZzFwbHQ1eHhRdDR6SzRnTUVhMWxHUmE3ZUJld3FxS3JuS29Ub2FadU5w?=
 =?utf-8?B?OEJldnlYS1ZQcVduaUwxMXA3VDAxeVlhR3JWNU9yZEJkRitIMlF5QS9kdHBK?=
 =?utf-8?B?eE9aUXg5clhoKzV1M09jVEh2UlJtM1IybFNMTysvcTlBaTU2WGRTeER5OXNV?=
 =?utf-8?B?MjBvOUIralpFdm1kOURGT2hWeTFhZkVmNUthVFBuaktDaWw1amlZK1YveVIz?=
 =?utf-8?B?ZXZrQW5nT2xXalJlQUFDZWx3dVoweDhONkd6M3N0S2syOGoxVWR6bTcvYmRh?=
 =?utf-8?B?eitRL1VBSzl5OUQrbDNhTmVpZUc3aDF2R1UvREs5RlFld3o0QVV0WGxCOXVn?=
 =?utf-8?B?bDNZb1EzU2dCWHJoRlV0Q0RWeFpjYmF2TkVKdEM0Tnk1TTJTOHE4ZWY4YjNP?=
 =?utf-8?B?U285aGZ0Z0MycWY3b1VQTFRIUkNkYng3YVhHSjVnUEdZNkZlb1c2SitYZ3A4?=
 =?utf-8?B?UHYrNVlWZG11TmUzNGNkZjRWei91UTJRY2t4MWEzcDA5OTIrSVZ4YWpBV3V6?=
 =?utf-8?B?bVdGc1BWUllSaWRnV0hjTTRUWndqeTlWWnJnbGtsWEFMM2ZZcHpjVGRKNVo5?=
 =?utf-8?B?RHhzRERXZ1lhekREQllMOE01YUEvY2hueEZ5SGh6NnBSWm85VFd5K3pDQXlV?=
 =?utf-8?B?bEtKZ1dVVks4Qkhyem1Nam83ZU1Ndk5JZTFKNEI3eFBJdEl3d0NjOEFVK0ZR?=
 =?utf-8?B?SzZqMi8wbXR0SE5VRCtkV3NJZ3hsZVF4RDVrdDVWUUIyMCs2WWFwZEIxL1dQ?=
 =?utf-8?B?TXUwNVdPSU1GdHFkL3I3MGFuSVhoSU95SFZqQUpOTGxrcVkzNldRLy9sQTZl?=
 =?utf-8?B?U3hSZVo1M1B5V2g1bE5xS0JkUUZwaDRkWWpONjlxMHBRb01yNTlSWStpZGFP?=
 =?utf-8?B?WGRNMFpQWnI3TjhBMzBvZHU1cStZMFphZHM5eWtRSlF2Nks0Tjg3WVZhSFJa?=
 =?utf-8?B?Y3hCakU4VmNnQStQY3FsWlJEeUtwdmRVb1JrQ0FYbmd6d00rUVZ4WkVlN2R4?=
 =?utf-8?B?SFgwa2EyZFM2dEZMajhlOEFEakpJU0E0NjhBdUdEc1NaeVpiOXkreklCb3Nx?=
 =?utf-8?B?VWJvN2VyT2MrN3RvL3ljenZQaUlCL0lOb0JWTlZUbTZQNUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2VBWmo0WlF3a2FWdTNsT2ZwejFIa1cvYWpWUW5pMjBJY25Bci9lK2NreTk0?=
 =?utf-8?B?SEk2c0FET0hpMTVZbGdPdll3R0xGSDNZSlNiZ0RlZ3dGRi9QQy9zdVpIWTlx?=
 =?utf-8?B?R0pvOUZIS2ZqNm16M3IzSmNSYzFOOHg1UGZFdHV5NVBYSHFYSWJUa3NkREpx?=
 =?utf-8?B?T0w4SUk4VzVUdG9iNVpsOGJZa2Y2WVhxUU4wUkhQVGxmZUkzT1lmVTlHT2Jq?=
 =?utf-8?B?cDdNSWVUZUJPUFF4SGo4cklFQ2k2eG4wb2NaTThETGVZSWdEUjNhZW5laUdn?=
 =?utf-8?B?bDJPWXkrWHc0cUlsQk9wSnBNNXpibU9YTlNFZEdEa0JwK3lnYStya0YzWVQ4?=
 =?utf-8?B?b3BDNDJQWncwTlZjNk5qdTY1U3BpZGFUU0FhRGU1ZTUzRDNDbEdLeEloeitI?=
 =?utf-8?B?Tms3SnZuNUM4SThmSlYwQk9xNDFSS1FYY0dFeTVRMlIrcUpNelZzNzFDY1ZY?=
 =?utf-8?B?cHQ5VmZFNmxJT0NHN0RnQzdENGJTWGZROHF4eFF6b2pLRUFDajdGcnQ0blZW?=
 =?utf-8?B?RnErUVBQQjdmMDlSNlQ4Z3lRLzZCY3hCTFNUTk0zME9VZDd5amxIK21UdG1v?=
 =?utf-8?B?WkhYSFlHSVJvR0hockl0T1VKNHdLUmNEa2s2S0dRTTVKcTFianFZemhRa3Uw?=
 =?utf-8?B?b2xQbmNqMnZqU1BhOTBncHVMT3NZYzFjNkV1SVlXRlU4R283cDYrQ0w2WWJF?=
 =?utf-8?B?ZEdYSmUxRmFzVHhhRVc0b3RacHVUbHZabDhrbjJaby9SV2NLTEp3aGVEZ2h1?=
 =?utf-8?B?dkZKeFAyYzYxL2h0RTcxSFNUYnN3VFNEMGZCVnNsVHpZLzg5SzFORTJ4aXpy?=
 =?utf-8?B?UzJhdm91eGZPNXlmcURUbXN4MWt4eUQxVlZ5Snd4V2poanN3b3k0K2UzNjRE?=
 =?utf-8?B?ZG96U3lCdWFKN2hCUkRRQjBFTVIwYmViYXNBQ3JBaTFIcjl2anZGd0hGdElW?=
 =?utf-8?B?cjRjWkp1N0xVdUVobVplNmh1UEh4eGpEczhVVER6Q1gzcS9DekF6N21WSmNx?=
 =?utf-8?B?NmFHd1c0b3dHSnoxaXM5WU5lLzM3L1FkcU5BWDRFVGVSalpWdDV1N3JUWHpw?=
 =?utf-8?B?aEpvMk5IZ080aHoySnFWT1ovVjlmbVJhaFozR1BqNWc5T0x2K0FGTGVVZGFt?=
 =?utf-8?B?VW52dGdpWnU2UklBdjRJK253d2RHWGNka0FuZHBzUnBEUmRDZFpJbVJqNk9u?=
 =?utf-8?B?b1JPQ3JSK2V3US9HdEV5Z0VGVVBRd3lVNU9SU3orM1U0SHg5TUQwakx4WlN1?=
 =?utf-8?B?cFZ1R0xRa2VWQ2lXa0duSmxRNGcvL1Y3dC9VaHZnSGpTTFc2bGR2OGlIYUQx?=
 =?utf-8?B?ZFJqd1o3VmdKbXVLaGpWbXh6SUVBdkt0V1daVVN5WVJsZGtIOVdvV3FoNlFl?=
 =?utf-8?B?RjdlcDgzcXM4Qi9vbzJRdFI0eFhGaEtIRnh6VTIyRWRlWG5xMU51aDRkR3B0?=
 =?utf-8?B?bXNpRXZaeTIyWitDT2RDZ0RESWZ0RG9WOExuUU5oU2xud2Q2ZWNSRVYxbXJT?=
 =?utf-8?B?a3pFYWFlRVZnUkZ3TlRYNzR6OEszRTEzdEkvajhXVlQ0OXpCbHdGeEhoOGZC?=
 =?utf-8?B?SnFmbk9uVjc2VFRuL1JJR1BZZDZCNFpkUUpwbU9lQ01lTG9vb3gvNG9KVDA2?=
 =?utf-8?B?WkhsSGpQU2lxWUhxWGw4bkFLaXMzTkZmMUM0bHpZaXB2NzZieEdzejBEUGp5?=
 =?utf-8?B?SzY4QyticjNxWWRTMndQM254dWFoTWdJdFVONytBSEhaNzgvV2orTGFkTjly?=
 =?utf-8?B?VVQybmMwRUJLeEFJZWt2NUdSdkxFY1lTSGltcnZHdDVKQjJtOEZnbkR2UmhL?=
 =?utf-8?B?aVdRaDdOcGh3elJldWdYUjR5V3laajhzby9EUkdMb0RIcU1pQmlrTXRlU3JP?=
 =?utf-8?B?SXZneXNyaTRJNzBacEh0WHlNYzJsM2ljUDEzWGZiQjBjdUhXaXVsRkFxSEtE?=
 =?utf-8?B?T1JsZzV3bmlxZWZWWW91LzVXTnJLNyszbEtyelpvTzJSN01vTGxqb0U1THl2?=
 =?utf-8?B?RElicGpQM08vWFQ5dGsyVHlIV0pwUGtIaW53bkJxV2FEZlFodmh0SGw0S2dW?=
 =?utf-8?B?c1c5dlVMRmphZTZ1VDIwT3dCbWY5QmdUdjBObFRMMmxiK0wvZFcvMWN2WDJD?=
 =?utf-8?B?Yk9zOGhzWm5IMXhOcWRKUzF4bmVvbzkvTFZFeFpHT09WYStnZ0tWbUc4ZmFX?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65cf914b-0fab-400a-f331-08dd7d0d86ab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 17:38:40.7244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psjvil2rpWSoEZ/IlrpV7kKmz2PSbvlzzjvzIkCwnJQizfmKrpQB5bo21/+gwoNpIcK7DanQZ3IiBtLTh/hJPRYREa6K8dUkJhZTb+ujdxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6313
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744825125; x=1776361125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ho5hfH0DFbN7IQQV0+yKd9jCISPaqruCtUdxxq+zAlM=;
 b=nsb+87lPPV2Sr6gMPa4Y6WrSbIEAM/afbZzTAExuPPU1fW/4bhfTE935
 epltkwj+Nt4Nz9BkNgWFO7Xg9NUmINcKE5YFiV1beiF6dwm6mU96xqISa
 4v4V067rxbWGSq50SPPVmUPvwF+QY01QtO01R3uaIJ4UZe9Vz3wz5egTF
 AdSwmJ/pZIch7yFG+bdIjRQMYWryxFBmQ0lYkMDfhjotMNXYNE42UeOas
 vbYnO7a7v9IOuVODlM/3cbECwg5uSSM9KiE8OWlCgxyeHMz8lyU+BHeRQ
 JK9hYDp3/u7jQokMajPOde2UH0NakhsHSuxmWhtIjh7JiS5j6uIn4pM5w
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nsb+87lP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] igc: add lock preventing
 multiple simultaneous PTM transactions
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



On 4/16/2025 4:09 AM, Dan Carpenter wrote:
> Hello Christopher S M Hall,
> 
> Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous
> PTM transactions") from Apr 1, 2025 (linux-next), leads to the
> following Smatch static checker warning:
> 
> 	drivers/net/ethernet/intel/igc/igc_ptp.c:1311 igc_ptp_reset()
> 	warn: sleeping in atomic context
> 
> drivers/net/ethernet/intel/igc/igc_ptp.c
>     1280 void igc_ptp_reset(struct igc_adapter *adapter)
>     1281 {
>     1282         struct igc_hw *hw = &adapter->hw;
>     1283         u32 cycle_ctrl, ctrl, stat;
>     1284         unsigned long flags;
>     1285         u32 timadj;
>     1286 
>     1287         if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>     1288                 return;
>     1289 
>     1290         /* reset the tstamp_config */
>     1291         igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
>     1292 
>     1293         spin_lock_irqsave(&adapter->tmreg_lock, flags);
>                  ^^^^^^^^^^^^^^^^^
> Holding a spin_lock
> 
>     1294 
>     1295         switch (adapter->hw.mac.type) {
>     1296         case igc_i225:
>     1297                 timadj = rd32(IGC_TIMADJ);
>     1298                 timadj |= IGC_TIMADJ_ADJUST_METH;
>     1299                 wr32(IGC_TIMADJ, timadj);
>     1300 
>     1301                 wr32(IGC_TSAUXC, 0x0);
>     1302                 wr32(IGC_TSSDP, 0x0);
>     1303                 wr32(IGC_TSIM,
>     1304                      IGC_TSICR_INTERRUPTS |
>     1305                      (adapter->pps_sys_wrap_on ? IGC_TSICR_SYS_WRAP : 0));
>     1306                 wr32(IGC_IMS, IGC_IMS_TS);
>     1307 
>     1308                 if (!igc_is_crosststamp_supported(adapter))
>     1309                         break;
>     1310 
> --> 1311                 mutex_lock(&adapter->ptm_lock);
>                          ^^^^^^^^^^
> So we can't take a mutex.
> 
>     1312                 wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
>     1313                 wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
>     1314 
>     1315                 cycle_ctrl = IGC_PTM_CYCLE_CTRL_CYC_TIME(IGC_PTM_CYC_TIME_DEFAULT);
>     1316 
>     1317                 wr32(IGC_PTM_CYCLE_CTRL, cycle_ctrl);
>     1318 
>     1319                 ctrl = IGC_PTM_CTRL_EN |
>     1320                         IGC_PTM_CTRL_START_NOW |
>     1321                         IGC_PTM_CTRL_SHRT_CYC(IGC_PTM_SHORT_CYC_DEFAULT) |
>     1322                         IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT);
>     1323 
>     1324                 wr32(IGC_PTM_CTRL, ctrl);
>     1325 
>     1326                 /* Force the first cycle to run. */
>     1327                 igc_ptm_trigger(hw);
>     1328 
>     1329                 if (readx_poll_timeout_atomic(rd32, IGC_PTM_STAT, stat,
>     1330                                               stat, IGC_PTM_STAT_SLEEP,
>     1331                                               IGC_PTM_STAT_TIMEOUT))
>     1332                         netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
>     1333 
>     1334                 igc_ptm_reset(hw);
>     1335                 mutex_unlock(&adapter->ptm_lock);
>     1336                 break;


I'm not sure why this was a mutex to begin with. We already use
readx_poll_timeout_atomic which doesn't sleep, so I think this ptm_lock
could just be converted to a spin_lock to fix this.
