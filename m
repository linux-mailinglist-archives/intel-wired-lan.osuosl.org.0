Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6461BA81789
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CD5C81EBF;
	Tue,  8 Apr 2025 21:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlWXXZKgyJhG; Tue,  8 Apr 2025 21:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FE2881B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147421;
	bh=Koob524s3cwkX9rJq3RDxF/A1SngfcNrgOWWIKOnSMs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mxg4y6irnjo00C2WPXJQgGaYr2BccxNSv2V1JUQTY4vEJFaZKEytOSLNM5Gct5RUF
	 xsgBeNu4rjuU51e3RGmJv6GCPeZya4j/SXY653md34MzD7I/7uoZD4sfH9Xlw6vDAB
	 MS3zWiJcTFtMIMB/R9arO0Hs/pt2IT08uoHDAqkBsC0JB5Io3vQn9VRxd/B8PCIuAJ
	 6omRQotKE/adaiusKcar3UYh4tLwMu9qNX2WowAG5FX6H7ktbKYvPt6zYCD6i1km7R
	 l2Yy7d9gO/8zqL9hb606cRhsp7KZZxn6zxGnAkJnfzY5dnxVVWHcI0VI+ywD/JYBLR
	 KOmGvmGaFKRQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FE2881B01;
	Tue,  8 Apr 2025 21:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9899ADA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A4CB41202
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASXfwsg0toqO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:23:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F34D040272
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F34D040272
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F34D040272
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: yZp/UVD/SBiObk2P7MHK3g==
X-CSE-MsgGUID: 1DXd/tqLSlmEn/ALAZ3T1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33207251"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33207251"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:23:39 -0700
X-CSE-ConnectionGUID: xn1MBJrITZGRb/SES+2HMQ==
X-CSE-MsgGUID: Tr45FuC6TQqAaaJdHyyw2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="132515721"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:23:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:23:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:23:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:23:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wTbq22m2U78o+/4Lm1CejQHeN/ZCJq/cLLdsiw5b8M7Tw6vXpOOVbAUa2/oZUAnt67uMu2woSlusbBQJXZoUsSWEDjpmcwfgi1uIGZKUcwIdPT17UKczk6axrNbxkolK/keoA/iEHN003GdoKwDxpGC8oIXoHObNT86jtwL3/T47+rAeG5EDfDL32egj1/2t6C4wUHROyQncCuUyHsMuaHZcpnm+EraOi4IQzIi5+nDxiqGTUv76DyOrs5/ifcoRQ7C7DfpK3nptqLtNoQA8zgKpUpMX9kNVPQCGmWsqcNItTIsPg9t8CmbnaWP051dE4RnYRMJCQ5j7bWnv4/hpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Koob524s3cwkX9rJq3RDxF/A1SngfcNrgOWWIKOnSMs=;
 b=yiSHqQCq+s1ktzNT+UUq6RltpQiwQ5WlIt6JMU4uiR8EGaNpz7HkZIIESbCL6eXjdx+idgAwF5wKFKLA8ACpVasV469eVaSqKJmLBPRTBG3onUAzy5H4fN9CT3KFNG6e3PSf5quLaZwj8nWDMlwnUwK+b2SozhLD4bwHGt4SvaaMnCYZVFY2F4b0DxC0Ri/l7zN60Syg/yTfEYS3Died6H/1qAwEscmh8C/lhwWWv5vs++4zDat+JYNFCD8zWSUDOvoPqZV9YAmU0ZML7X5ImMqj2+99KMkfaAWIUtP91iioWSUYPr9PGl9h5mzcG5c8suZaxN36c2PsiXIrXFUUpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6198.namprd11.prod.outlook.com (2603:10b6:8:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Tue, 8 Apr
 2025 21:23:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:23:21 +0000
Message-ID: <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
Date: Tue, 8 Apr 2025 14:23:20 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, Samuel Salin
 <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-21-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-21-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:303:8e::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6198:EE_
X-MS-Office365-Filtering-Correlation-Id: 35f9785f-4172-45bc-b4bf-08dd76e396aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFlKNVlQbDAxYzBFV2lSZ3R3c2NvK3JtQkpMeFJyRTFqQmorWG1iczlFZjlB?=
 =?utf-8?B?V2ErdlVpZjFBOEdnUXdzR0YyYktJcmJNTzZuNE10K3I0VmxLVVltK2dNWFNx?=
 =?utf-8?B?VEVFbWgzNXlHcTNnNVloM3kvNEZmUGtrejd0NFlxUWpoTHZVcUxGcHlYM2V0?=
 =?utf-8?B?QmdrUmxBYVhoVS9hZjk3a2pvUFkrQ0x2UkZKd09oVXRjNFIwZ1Z3NHBtVS9P?=
 =?utf-8?B?S3Q1ZkxEVnFMam5ONGJTQUpsazJteGNvbERDTlBQZUQzNFZkNmNCdVZrUnNi?=
 =?utf-8?B?QlArNGlETjRVQTV0NjBoS0RDWENYNlVoL25hRFpLK1pXMHdJYk8yZHliK2R6?=
 =?utf-8?B?TWVsekR0QTV5cTY2Q3FLY0U1UEJSYU9BVHhqZDk5K1hCazZ6YW5JQWMyczZM?=
 =?utf-8?B?LzhOMHRJdVdTQkp3S2J6ZGlnRlYwd2pDV250NHpXODJDdUNBOG5udHVJUlNk?=
 =?utf-8?B?OWh5dS83U0ZNYUo5WnBaeUM2RklxcnJaWEl0dHg2cjY5U2NqMVVQNTc2K1ZJ?=
 =?utf-8?B?OGtKZ1o0bCtEMDdGaGFsTCtVSE5RaHVQM2tEWVdUbjhzMGNqVzlSWFRLMXdn?=
 =?utf-8?B?Z0FVSlJXWURGeFVDYW1QWVplQ0RPMitrMGpISDE2VDBvOHY2ejB5bXAxSFBZ?=
 =?utf-8?B?RHJFc3l0OWVZd3o0T1BieEF0QkZFN09ZdE1VODc5aEtrbWc5UnlBUXJzWm5o?=
 =?utf-8?B?V1R4dXlVMnUxcWFWU2ZTVmZPNThrV1cyRGlxYkYrYmNsSU1rem45cWRRTXlz?=
 =?utf-8?B?ZWdYV2V1bUsvQ3k5aThuSGUrQmdmK2tOUUtCRHgvaEtYOTJyaDJZMHg0RmtS?=
 =?utf-8?B?dFYvdFlFSW1WZjZsc2Y4dlpocStQa2xDYURacU5HbW0xS1Y2SjZUenBQYTJE?=
 =?utf-8?B?WGdXRkNYVVp5anYwYVQ0NmV5d2xwTDY0WmgvNzhUOGMrWVZpMzJEMk9MRzgz?=
 =?utf-8?B?d0MwaENYVVhhMUR6a01PYU9RQmVBcldLTnVnMkFMU2FTNmFjTzR3dERCNGZx?=
 =?utf-8?B?ZEdGLzJpeHNvVXdsRmhQT3FKd09aTWRnOGx6N0FvcVAyajRYaHRYQjNJUDhq?=
 =?utf-8?B?RlpKbkpPVkdSVk9WeUliRWFzQ0RtNWY1dTh6TnlUTldFL0hMQjhKWndSZVA3?=
 =?utf-8?B?S2U0VnMyWDZ4d2xXTXdtWHpZZHI4UlJLQVBQOHB3RGM3TjBJSWdCclVteGZk?=
 =?utf-8?B?WWwrYXhvbmpFOFdiWDFRa1QvQTZLZjdEb3JxUUMrNDdYa3FtZzV0ekNRdEJ0?=
 =?utf-8?B?c000Z2VXZldwdVV3NlEwNnBHOGszTWgxcU5NVEEzajRKM1NYUytSUU16amRm?=
 =?utf-8?B?WW9PTWJjZnl0cFMvNVdYdk1kdGtwa2lnV2o2TGJ2cWhJcm9nTSsrS1pKeTdL?=
 =?utf-8?B?M0FGbStpUTdITWpweW1NTTl3c2Q2bHI5bldFSVpSQVZ1bUhPNklLZzU0L3Z6?=
 =?utf-8?B?QWxHZFNNUTF0dmJ0SHFBeisvMUNkSG00YzRZVVcvTzhUT1QwWlZPZFMwd0Jw?=
 =?utf-8?B?Vnd3VCtVT1drOUVxVEIwVSt4WktYMk1WUzR2Ull4R1JWREtNMmFSM1hrUEpz?=
 =?utf-8?B?ajlTenZWNlZuM2dtMjJEK3krSUZRMW01WDRJL2d5cGVpNG5BRnU5d0VhdHFw?=
 =?utf-8?B?a0dFV2E4cUNrK09WbmNGOGlZNEtNeVFCWlRNdlBWRHpid2dZbVNlZGlFUEVI?=
 =?utf-8?B?aDkvVXdZMWdBb3VOenRwcVM1c1Z1R1k4NmIyeUg5NHNoYlMzajhTMXAwMytG?=
 =?utf-8?B?UVVyMjhqQzY1YXFtYU1oZTdMck9oRWZXQ3BRV0Z5UTh2cGxXaVNma1Q5NXJy?=
 =?utf-8?B?VkRNWG1NUkZTQ0ZnWUM4Yk1tN2pCWWNaSGtob0hNMGQ2ajMvSkFOSFZ3aHBn?=
 =?utf-8?Q?jRfkiMEeQMROE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFQrNkVidno0bklhczVqYU5tcmJnWkRlSDB4YnlSaFVpbG02dFh6UVhic216?=
 =?utf-8?B?a3JrTnk4RTFWYnRsM0NmSThYMmFIUElQcG15eTR5M1dwZWMySFVjV2tHZlpK?=
 =?utf-8?B?TnBJNTduTDE5dTZlOTBQZ2VHTS90bzAyaENZVUQ4eXl1WjcrWURrTU1JaXJk?=
 =?utf-8?B?c3FydU9DNnNGTng0VDFUMTc0dzd3MkVyd1lXMm5BYzQ0SlYrUy9KVG5TT3JR?=
 =?utf-8?B?a1N4dFJ3bDhuY2N6bVdRNkRuM1VaVUw5K3FMVGxhVVdMV0luTHlreFJvUWdD?=
 =?utf-8?B?V2R3cExKY2Zlc2RvZmlueTAzbEVGVGVkdXo0WmloUHZHOW9nRlhaTmxCTWJX?=
 =?utf-8?B?SndpYnhxVm1Ham1mZlUyWVJiUjBIejhBR2IzMXdMSDJybUE5NjVqQ0RObGZE?=
 =?utf-8?B?OFZNR0JnaDQrc3poQ2NFc0J3YWJITlVKV3JjeXhkUWdDV1JrVGtONzE2WU5O?=
 =?utf-8?B?cTMrZFp1SHBsYmQ2UlJIVG5LanBQaloxdG9leldaMGlQYnVQL1R1cGF2cjRw?=
 =?utf-8?B?M3dIYlV6T0pOVzFTdFBBTkwydnV2RWJLWS9TYlp4OC9HZkVTVHJtSDF6Q0Nq?=
 =?utf-8?B?MGlqa2Y1ZGVGTHVXTDRLTE9BeXlCMFk2V0VsbWVqUGRPTENGaXBkcUFkMUZv?=
 =?utf-8?B?ZGNTd25rcGFMZDZyUGFZSFBwTytsbDNMcFNSeHNPMldlL05qRHNyQVFSRFo0?=
 =?utf-8?B?WWlNMWU0VmpFdUloemNvT3FVN2VGWExjYmRmK3lqaVk5eThTbE1IMExtMGln?=
 =?utf-8?B?ckFIKzhvakRxVVRadVF5RitUVmxJdTFYOERockQzMTZUSzI5Zi83bEhTVmFM?=
 =?utf-8?B?Y293cysyODVTV3pKYjZvNC8xWCsvYmt6cC9KQlVJWlJKVFcxM2VmY0F5YVUz?=
 =?utf-8?B?N2NiRUNXUGQ3eURiUXZMTjVmVDl0MWRHRVlrNFdzRjZQWWRHMng2TmZFNDFM?=
 =?utf-8?B?Qi8wQkV5VmthV2NSU3dLK3pzQi90U2ZuREM0Tm9saGIybzBoMFVncE12VzVF?=
 =?utf-8?B?Zm1FNW1PeWdudVJJNTBIdnVNWDNQTUs3V0FPRlJJWEl0VzVCcms2cHdXb3Bm?=
 =?utf-8?B?S1B6MnFCZnNtTGs5Q01FUWpxZ1hjTU5MdTdXeURXc2c1azB5VXRDUDJXZmEv?=
 =?utf-8?B?dVNhQkFLN3ZBd21JY1lDczdtK0N5elNzQ1lzWmtHMENxKzByZ1V1bHVBUDdY?=
 =?utf-8?B?ekpNT0szS01GdGU4VzRVMVVqbU43KzJQbzR3Qk1SZUsrWWE5Slk0U2dOQWdK?=
 =?utf-8?B?WFR6UW5USmkvNW0vczZETUJ0a25sK1kyaHRqRG5QSGd3ZTViOFp2ODQzTXg0?=
 =?utf-8?B?aHlXNWk3NGpnY1oxUEpKWGpldnZUa25KMmNseUt1K3VHcDhyTE9qY2VvVHVJ?=
 =?utf-8?B?MmhmSCt0cVhLditDSG5JVlJXS1lwUWFvdk5RSWI1ZGEyYTM3dmpxSGZiZkVF?=
 =?utf-8?B?WUlta0VGRERvT0VFdEY2VnRINlpKREdqTXV6TzhrWHV5MHpHSjgxQndtQmZO?=
 =?utf-8?B?M3cyQVpnTDBtVGNzVnd2RDJlYkprL2dreWE5RjdsRE12QVllMTROQW1jM3FG?=
 =?utf-8?B?dlFxRXpuQlRpQ2V3QktJTHk4VStocHJyek0yY0V5TGJFUnovQThndGV6cXZ1?=
 =?utf-8?B?bzBvdFZIRmR0R3ZRRTlVOWpRRExXRmVXeE56YURxUnIvMWhDMk5Td29MbStp?=
 =?utf-8?B?RE9SRkRvYjkxQUwwR3RVeE5hWnRqTW5YSnRsUCtBZEpRcktjQXlwZGZnVm91?=
 =?utf-8?B?U2dJcDIwSy9OWVBaSXhSOTNBcWtNcHdtckFsaHgwMUlObDVndkNhTnRrUmFJ?=
 =?utf-8?B?NElVWmZydUZGSHd6V0JKcjE4R0RFclRpWlByVEtLMW9UV1plbjNXK1NoKzI1?=
 =?utf-8?B?NjBRMGw0Uk5IVFVEL2h0VXZ4QVlIVC9MQ2lNTHNkTlBDKytmWkM3YUtGdEJ1?=
 =?utf-8?B?eUo3Yk8rZThqd0FoUWt5Rm91K0RKbSs0Y3RlWjNuTDQybzk2SlloVUxyMEZ2?=
 =?utf-8?B?eERBNTEwQW5tZXI3aFFwODVRaTc4ZDN1eGRqNzVnY0c4Z21hcEpjTFNhejlv?=
 =?utf-8?B?MFQvVWdiZnlGL3hnKzlRL2QrN0NpQ2VoRjdVZWlqVWFoN2VVNkhJSG96d2hj?=
 =?utf-8?B?UmdtcmpDSzgvamMycGFmbnRmQWFCTkN0SWJtbTEwK0E5TGtDaVY4VVBiNXc4?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f9785f-4172-45bc-b4bf-08dd76e396aa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:23:21.5448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 76OTHOhAik5jioC5A+6HW7msQTT14Ti41PTWIRJ3M3KduoSJ0OT8h6gnzrKbCHlFJXDzZvRUwGEVNHny2AkQWaPnAVn/sbHbd5tfZJ8thcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6198
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147419; x=1775683419;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6zCv/JyDrEhLEhXyY6iOZb/5f10I1uNwislWypgMz+M=;
 b=nDPEuJW431HDIR/G358pVJ4h/XjMG204DvJG+fpvEWOcpLNZprlQsfPL
 jkphvz5VSMG+Cw5+CMdtvRyxo52KkDzb5izTz7RVUw/GBk2n2+osHI2iw
 rYJt9WLlj6FZVuUIQBOv+NwmOP1FVAL3So5AdPX+BWp1y6PYuNqkg/OPv
 XPmTyq6FXhNDMONfGrnbeHbyy8JJABC1UJAlL0d3VlmmnAJ3rn8Kmr8nJ
 8nhfn6THS2AxMFCyARxBpDtxBuXk2lapldrm1CP2maV1XhpRjfGeZPX3K
 MN9Af0Db9N1BmJ/SfRassLRXf4PRZfifhnI/pX9JRxcIpA5a5n9Ez8cNO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nDPEuJW4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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



On 4/8/2025 3:31 AM, Milena Olech wrote:
> +static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
> +{
> +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp, *tmp;
> +	struct list_head *head;
> +
> +	/* Remove list with free latches */
> +	spin_lock(&vport->tx_tstamp_caps->lock_free);
> +
> +	head = &vport->tx_tstamp_caps->latches_free;
> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
> +		list_del(&ptp_tx_tstamp->list_member);
> +		kfree(ptp_tx_tstamp);
> +	}
> +
> +	spin_unlock(&vport->tx_tstamp_caps->lock_free);
> +
> +	/* Remove list with latches in use */
> +	spin_lock(&vport->tx_tstamp_caps->lock_in_use);
> +
> +	head = &vport->tx_tstamp_caps->latches_in_use;
> +	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
> +		list_del(&ptp_tx_tstamp->list_member);
> +		kfree(ptp_tx_tstamp);
> +	}
> +
> +	spin_unlock(&vport->tx_tstamp_caps->lock_in_use);
> +
> +	kfree(vport->tx_tstamp_caps);
> +	vport->tx_tstamp_caps = NULL;
> +}
Could you provide a summary and overview of the locking scheme used
here? I see you have multiple spin locks for both the free bits and the
in-use bits, and its a bit hard to grasp the reasoning behind this. We
had a lot of issues getting locking for Tx timestamps correct in ice,
though most of that had to do with quirks in the hardware.

Thanks,
Jake
