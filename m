Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A23D5A575F0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Mar 2025 00:22:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9F4B8446C;
	Fri,  7 Mar 2025 23:22:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iHVBjzvi5tvG; Fri,  7 Mar 2025 23:22:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08C768444D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741389757;
	bh=Bu0TonzFKvBEWhJpI1RpqhJfvUTe88K3G4UNmmnTMjs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=65vWGF+pH+G4zO2pBMGSaC3e29NwuPD5MvIqBYQfIh5mjljIDLhV2tOMTPePXJ5Er
	 wQI8xx1h8B6fEwu2trT9pg9vcporwuHYoG5GOYt4FKggH3UFlwt05saPmhJnnl5hD+
	 ciGuC1geu2E4AK6YW0XWKXAR9ZZvE3tBnE1s2SdtrA+e0uJ7tV/DDYksd4Xg4oRrSG
	 Hhl7Pqi6yqRMxuHpFQQH+lyzL0NRrauTK6tmREwSN43NDQBbHEc75UUTCFfmUuYHsZ
	 Z3p0glfLwtcpmbD5lMciWNSjNV/GKIJefn3NRUhydjg920cd2V3tMKaKQzlyAU45CF
	 /o2M3ytLYNJaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08C768444D;
	Fri,  7 Mar 2025 23:22:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 66259E26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 23:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 493B040179
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 23:22:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YdoIA21VlNwJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 23:22:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFC734022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFC734022B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFC734022B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 23:22:33 +0000 (UTC)
X-CSE-ConnectionGUID: oc8BdEQ4R6CPeRsdVhLDCA==
X-CSE-MsgGUID: f3oHPVNZS8yV9NuzptrKwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11366"; a="42366180"
X-IronPort-AV: E=Sophos;i="6.14,230,1736841600"; d="scan'208";a="42366180"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 15:22:32 -0800
X-CSE-ConnectionGUID: Y3GSf76fRj6FSIOHXBMF1w==
X-CSE-MsgGUID: tqwDWPOASRW6HbM6hfzPTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,230,1736841600"; d="scan'208";a="119634138"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 15:22:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 15:22:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 15:22:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 15:22:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QRR4ckKk1++FrZGodg2CQZHb2rbD+h0hVweqRYa3G/lzaIenOTJvNDIRSzFyFnGv1x5iOOowffQPUqTck/YqdasbWMRsPFnDmxyQkAPp9i/qanSjAxGNT1q3kLl5c/oLin82EVvJrA/3+2mQFTndxHCsFfiOJshhFZezMrQg5CIbGnouyNiakuHmrk8443ybu/WUbv6ixf3Wcq+ezzGv9t6zq6dLQW5VHUvwZeDWt32a+oNG4GGEuKr+NrhCKdERAAjN7AI3D8pZv8q+ryci1fmf5QQl5NiAPSOaYsIH36njvxsVRQbk/WVokvrpLzWWKcgtlD0Q+RJFa5T6Voo9Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bu0TonzFKvBEWhJpI1RpqhJfvUTe88K3G4UNmmnTMjs=;
 b=DFR1Kq7ougM28J9vFW6irjq5WrTlUwCrAQDf/VlfvRtqLE3RIlCtyNiXX7CuVdrFrml8OgpJqDwl1KfCfy04QUSMi3mg1UdzN33Bh10XFi0je2GxUIN0BXO32gmguyR+Bc/lZqzkF11sDcPFidp3D+jbUxbdrm7XV0lPS4C15LZ8uJaxOIWiuz7TA2s7GGQgO85kfZugEumhDMvMhDhLEQ2U46UvO0tClrU2iV7zMZOHow14qN8QB4oI2teObcTotv6hb5ePkXdJEN7dORB1n4899owB1OWOxBoOctOk4efp4EBR27sDa1u2mPTrXtmh3cRyqTdKKAebmfo1WsRK6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Fri, 7 Mar
 2025 23:21:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8511.019; Fri, 7 Mar 2025
 23:21:56 +0000
Message-ID: <4809c248-fde6-4c3c-93ca-743238ed6706@intel.com>
Date: Fri, 7 Mar 2025 15:21:55 -0800
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
 <28792ae2-bee7-48c9-af5d-2e1ba199558a@intel.com>
 <vt6wnwcje727xv4agzhkpe5ympcvhtgg7qbaq4hlvw42roji2r@3kwjm4togc7m>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <vt6wnwcje727xv4agzhkpe5ympcvhtgg7qbaq4hlvw42roji2r@3kwjm4togc7m>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:303:8f::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: dc6377c2-8d49-4612-6d06-08dd5dceda3a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nk8xejNIaGN1UjFUTzJQbXVadFdmbUUrOU1MdlBLYWJPN3VaelNjanZKUVVw?=
 =?utf-8?B?d09LYys0bHdsQUxaWmRBRkRDTWhaNzVXYmNJRDNmQWduMTIrV0E5eHU2WTFN?=
 =?utf-8?B?NzNwaUpieDA3RFdqLzR6Y2JzaThUb2d4R3hhd2YvRnpSemROM3FoWDhUakwr?=
 =?utf-8?B?SUtmYnltRTh3ZjlmMkx6Ty8rUHlJVThQOHdwM2RCYWNwMDF5Z3E0M0JlT3dK?=
 =?utf-8?B?Q3lkVG14bWNpUk8ydWtFOHFmelpXZkc2Szk2T0VWVm0rRmxwdnA1T2dhRlhQ?=
 =?utf-8?B?cUFLRnA1NTBnU2FLa0dBK0R3amhJamh4UW1sQldacHhlTEYxSmZqN3IyVnNm?=
 =?utf-8?B?ZkZNQnR1YzJLOTlBR3RDOHFKc1BCd3lzY0Q2ZTBvcUg4czFPNHE1WUNZUksr?=
 =?utf-8?B?MkRrOFlqL1dFd2dIV2ZzOTNnSDE2bzM2ZHVQSXJ0d1poVjhFSWRBQ21tL2g3?=
 =?utf-8?B?VzVWQzVZcklHYW81c0xyZnlsY1pZWkNQRWpXTTlmTjdDK000ME1QOTY4THRs?=
 =?utf-8?B?TTVUTDZwTmtJNUh3eFRXSTh4SWphcmh5SkVnd201OEJxVE05eWZLOE5UMDdw?=
 =?utf-8?B?Zlo5K3hheU1YWmQwQ0V2YmxMR1VuK3BxbmE3eE05TEVIWFBvaVd5aExNblZB?=
 =?utf-8?B?OFdmVFJjZmlSc1k4M3pHNkhrWEJUYjkxL1M4dk1Ga0J2MlAyZ1huTkhZNGNq?=
 =?utf-8?B?cnZiOWsxYVFJUyt5citvaFFaZGFjM3RmNXVROWZYRXRTMllsRGZIOU5BQjFS?=
 =?utf-8?B?WFVNTVZiZHM1SGRHR0grd1RML25BZnREVWZCZ3hqcmRnZEp6alMzaEN2SUpz?=
 =?utf-8?B?V2M4aXVaZm0zV2NleURha0sybVA0N1E4TzhLRkpZeGhPVHZjN2gyWGVTNFJ2?=
 =?utf-8?B?VkdwR1Y1ZmtFYUlJb1VZQ0Vyc3dQOEpTZHZ1Q3J2cEx6OGN5bUFLTDRWekFS?=
 =?utf-8?B?TE5SMjdKemZIN05XanpOekNzMVc2R0xaODhGbFJjMXZESi9PR2pEYVJvRXJV?=
 =?utf-8?B?WFh5SnlMSDVOM2twOTY4aG8rSXU4cERDWGx1Z1NWZGVGNDBnVytYZE1jMkV5?=
 =?utf-8?B?VGo1RWlmaDJuWTJTT2RiSTBVQ1VjeC9aVmtMeEp3MzZ2bkhJSHphaE9wOWhU?=
 =?utf-8?B?MVczbDVnZ21sM29wZittMGtwMUs3bm4rYmVXb0pZNWZTWTUwNEdJNE81a0ph?=
 =?utf-8?B?bzg4U1h3cjNVY0hJZHEzUmU2T0tPMnF1RFNLRXpRTlZhOVArTUlWa3RZNkRF?=
 =?utf-8?B?VGw0bU5WZ2ZDVnpMRHl2T0lnZ055U1Y4cXplZW9CU1Ewek5haWVxalpoRWNa?=
 =?utf-8?B?NTVDRzBtKzFaa3E0N2plOHNJYWF4WXRsR1RPU0Q0SXZHeW9JZS9JOE1rR2h1?=
 =?utf-8?B?ZVRjNmNyUHRCOEZpU1VGV3NBMXlJWUQ2cm9wakU5NlpXOVpUUHVkSHJJeUFp?=
 =?utf-8?B?NkdWMGhMeFJjUEZOcWtyanB1bk1mLzhjdnhPQzBSZXgyVjkxS3NhVFMzbUEv?=
 =?utf-8?B?T0FjbWU0U1FlaDBPVmFMQVF0Qi9lZjhBT3BaK2tyUkN0Z2ZYUXZ6c3RXQTB2?=
 =?utf-8?B?R3VYTEFjdlIzMFRrTjJsZmZVM0hUajk5dUdCbm45bzgxdjJZdU1aV3B3cFdH?=
 =?utf-8?B?ZFB4emlua0RpUU1MeG9Wa3RVcG1STmhPNmoyZXozZ1NKVXBCSkJsN0xxaTBD?=
 =?utf-8?B?SS9EaVd0bXByWmQwc1NqaFpoZHVTSmdqRTZIVHl1Kzk1NE5EODFjN2dOWFRD?=
 =?utf-8?B?K0g2dkljUllIRVBqb21kYnovd0Z1OXJPTEdPQzVuSmU4aUtJYy9RRUZ4Qml1?=
 =?utf-8?B?dHBjRTk1Sm9TellmQTg4ZmVOYUNZd1ZJbXdXMWw3U3FMM21NOTllb1djTTdG?=
 =?utf-8?Q?9NsK7FdnmlXJp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWlZS1NNMVBkRTZYdGtOY2xDRkZpcklzeFlWdG5hVmRPdWhkN1VhTlcxdHpU?=
 =?utf-8?B?TmhSZVFERmY3eTdScGJSMnkzR0pDc2tiODlZRTBxK2VzTnlheERZaGJZOWhv?=
 =?utf-8?B?cndFYTkxdWhmWGxxVHFNT00rZUJ0Z29jVWxVeWlaNkFzcmlFNHJpZElpVnlt?=
 =?utf-8?B?dVJId0hHQUwvYXlERjlXeXZGWExHbFZMK3BzYkk2MmJYQy9VdWNNWHdYTDNK?=
 =?utf-8?B?RWhyeEhnZHZzT3JJS2dFamxPNk5sUnQ2Q2ZFQnZMQ2VWUzUycTU2bm96NlRz?=
 =?utf-8?B?Qk0remtZbjFiOGEwaXJCNEdFVUh4b1gvNHk2TmpodVJ0QlVhTDhzMVA3UVYy?=
 =?utf-8?B?cUZmMXlRRG9FbTZKWXh5SWIyQ3VtUWdYWVpFZkVhcUhncXdCM05CMzZLdXM3?=
 =?utf-8?B?OWJnNEVsS0JmM1k2M0hwaG9ncUhWdGQzZDUyVTdoRjh3WmV4WHh0ZTlKZnF2?=
 =?utf-8?B?dUtFQTdibUhJYUpTNzJ2ZVNRWjRsNkZWYUNwWGx0WU9pK0ppRmRBZDBnSW5y?=
 =?utf-8?B?cXIzY3FwZUFIekQ2QXJRMkhYUTBqdWgwa3AyY0hRTGhhbnN3WXQrSE9ZR0c1?=
 =?utf-8?B?SzRzOUIxa3dpemJJbjhEV3lQTTc2R3RvNTB2R2I2TlQzaXU0SEw0QkxQbHlM?=
 =?utf-8?B?VXA3WGF6NStMZ1NPZEF0aXZWdG9lY0tFdUwxSDVraWw1YTNZQzhQVlBieDFC?=
 =?utf-8?B?eENjc0ptbVBtd093K2w1amhNc0c2cHUzN3BJb3BWMVlyK0hyTVIxc2VqVjAw?=
 =?utf-8?B?dnAzMUJPK295OUZtODFSK3V6ODEvNzhCaE9jZ0ZidmIwZkJTZzNCbkZ3UjdV?=
 =?utf-8?B?Mis1ZFAxdE5Gb2tHdytaY3RzQjlwZXZzTXJkRkF5Y1AzQ2V2LzJRWmpYaUp4?=
 =?utf-8?B?RXJ5dE04b1pMU1orbUpleG4xRzdrRGd4UUdQTWg3RjdnVUYrTzJHQW8xb2JP?=
 =?utf-8?B?ODR0Qml4T1FkWWswYlhFVU1WUnRVdUthRWlkSU40Tm9OKytzVXV6N1IxZHRt?=
 =?utf-8?B?TXZGanVESXRmWnNBWFNpelY1cU5NZEVqL01HNDUzRlZ1TGVpeDI2ZElEQVRI?=
 =?utf-8?B?YTRqazdFVmlxYmZHUm4rTmN4b0Y4RXlxSkVLWWkwMVhGZkRxOGx5eFBULzR2?=
 =?utf-8?B?QlgyZ2VXMWNJYkdXWFlLWGpYcHJpcUJ2VktNY09Ca3hkczhtbnBOYW5yQitG?=
 =?utf-8?B?Q1BwdnBlNUt2eVUxVlEyUEpIN0N2dStwRWI0aElEYzl1WCthQnZoZFpYaGZa?=
 =?utf-8?B?T3pFakc3bjJ3dEVpNTZXUXlQYlMyZ3BjcS9vZ1ZJTk1rZW5mOHk3T3RtOWtQ?=
 =?utf-8?B?U0lkdUE1R25CU2Q3bzlycTVQUUVDVU9Vd2FXME8zWXRPRTJYc3ZtemlNRlZK?=
 =?utf-8?B?eG5zRnkvZjdadXEyQjNCL1l1ZldnMEZzNVN0UHdkcDJpZE1FS3hDNGxSNHNp?=
 =?utf-8?B?K3ZwZ2lFdk42RHRnNVB6d2hiNExUVVVZZUlXRkFSbGM0QnI0WWN5SWpVUXZI?=
 =?utf-8?B?amxoTzlHa013OXZ0S25yRUh4cHFhVkNyR280TjRnMytIMFRuU2wxS3BJU3hz?=
 =?utf-8?B?YjVWZ2Nlem9QNXJDS2ppTG40T05rTFovQmhFeS93K0l2MG9uUnVpMVBUNVRJ?=
 =?utf-8?B?WWJtWTJ4SHE1cHU5U3VYS3d0YjdZcUdnUnkxUlFLWmJ1RE5MeDBUTzZobjJp?=
 =?utf-8?B?a0YxWXV0L09mbXhGa2VVZjF6dVFiR1ZUVG1Mb2NMeHpXNnZLaG0xeG5CM3dx?=
 =?utf-8?B?UnJvWG0zNHp3TmxMUnVtcUNRSWFHZWlJakJCMGVrSnZXaHEyV1kyeHBSREh0?=
 =?utf-8?B?K3czRlBMYkJHU3NzbFdtYW5BL2dCNStRckdiOUt6MHczcVhGVXBtangwaGVu?=
 =?utf-8?B?bEgyTnI2c0k2aFRzbVAxU3JaaVRBK3lqUWFuYjhiYjRVQXZRUy9XMisvRnoz?=
 =?utf-8?B?NUJPeE1nM3RWcTdJR1VWbk5uMFEyUCt0VHI5Wk83ZGF6RUNGa1JPcC9Xbkl1?=
 =?utf-8?B?ckVNQjBqdjIwUFpnV3NtZjRleWJUYWpFcE52eFNDeW5HT0lNRzRZZG9lZWh2?=
 =?utf-8?B?d21ZZkdmcTZXU1hlanQzeU5sdjZ5bytJVlNMWGdvMGwrN2Z1Njg4UzRPajVB?=
 =?utf-8?B?cmdIK1U1MEpwaWhaUzl3ZWwxTUx0SXpoc0VRbzJsbnhvTWJFNDhHZUxSMTFG?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6377c2-8d49-4612-6d06-08dd5dceda3a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 23:21:56.3990 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kZjtKCjmOtuXjoHR/IFCuDU1rZRPMobn9VXSFHJ/x1hcnGzQBLbXnnhhbAkogLg5mrB5U4PBuHaJjDZ9saaodF1X3Gs1eDaH90VZ4BFRr54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741389754; x=1772925754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9wP4AMTLQVAezS8yYXqLIEY8x/4Qe/2xmd5KCVBiw5c=;
 b=Xe3xi2qkF6q1NtN6mNhSG8gaSPEVDMIiNSGugwL7QidU8K+NwYwJQiiC
 K6LIes++80AKjquugqCnx++GUuIRGzXoowWOOE31Ux+CSem9p1V8A5BAw
 90Y7MqTZSaqU+pH4La0H+eCSHwScqngJMcT0zMmRsYvXn1Zz9IH7Ykz+O
 FmCQXhT8PLT0jbpfPnVqV81uOTlYc3TXZf5qgJZ75pAkJs/6O2KTCNCMH
 WMRcvpYd0EsBiBcIkyCtZ6fHKeHZmuIsX9Obi/UldwCkChMBqPCjKGrl3
 GyLDj2vAtSkufxUhU2Q8WUN0xykED5/msvXCf10pBlN7A29MnPnc5yr1X
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xe3xi2qk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/7/2025 4:40 AM, Jiri Pirko wrote:
> Fri, Mar 07, 2025 at 12:53:05AM +0100, jacob.e.keller@intel.com wrote:
>>
>>
>> On 3/6/2025 1:11 PM, Przemek Kitszel wrote:
>>> Use Device Serial Number instead of PCI bus/device/function for
>>> index of struct ice_adapter.
>>> Functions on the same physical device should point to the very same
>>> ice_adapter instance.
>>>
>>> This is not only simplification, but also fixes things up when PF
>>> is passed to VM (and thus has a random BDF).
>>>
>>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>>> Suggested-by: Jiri Pirko <jiri@resnulli.us>
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>
>> The only caution I have here is that we might run into issues with
>> pre-production or poorly flashed boards which don't have DSN properly
>> flashed. This shouldn't be an impact outside of early testing or
>> mistakes by devs. I think there is a default ID which is almost all 0s
>> we could check and log a warning to help prevent confusion in such a case?
>>
>> A couple systems I've seen have serial numbers like:
>>
>>  serial_number 00-00-00-00-00-00-00-00
>>  serial_number 00-00-00-00-00-00-00-00
>>
>> or
>>
>>  serial_number 00-01-00-ff-ff-00-00-00
>>  serial_number 00-01-00-ff-ff-00-00-00
>>
>>
>> In practice I'm not sure how big a deal breaker this is. Properly
>> initialized boards should have unique IDs, and if you update via
>> devlink, or any of our standard update tools, it will maintain the ID
>> across flash. However, during early development, boards were often
>> flashed manually which could lead to such non-unique IDs.
> 
> Do we need a workaround for pre-production buggy hw now? Sounds a bit
> weird tbh.
> 

I agree that use of the serial number is preferred over BDF for the
reasons described in this thread.

But I also know that sometimes the DSN is not available, or is not set
properly during pre-production and early testing. This could cause
issues for early development. These issues can likely be worked around
and should not impact what we do for properly functioning boards.

I just want to make it clear on the record, since it is likely that we
would see this if using an old or badly flashed board, or if we use this
same scheme on a future hardware (or even just a spin of the ice
hardware). In those cases, developers might have breaking functionality
like multiple adapters being tied to the same adapter structure.

I *don't* want those to be reported as issues with this code, as they
are really issues with the flash data. Perhaps we could have some sort
of warning message to go "this doesn't look right" when the DSN
capability doesn't exist or when the DSN is 0.

In the end, the places where this is likely to fail are also the places
where hopefully the developers are smart enough to know what is going on.
