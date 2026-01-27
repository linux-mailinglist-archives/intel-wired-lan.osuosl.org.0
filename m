Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BF9J0I9eWkmwAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 23:33:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F234F9B190
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 23:33:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5EAE8174D;
	Tue, 27 Jan 2026 22:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F84t2Xu8H7wa; Tue, 27 Jan 2026 22:33:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0326682278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769553216;
	bh=WCVIm/ywEK6pYJ04yTA6+9SbRJLQUCq60naIWfLFoqA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BmbVNyD61GFiJdQemyq3CERbYPulmN58/aG8LtpEjTKB0vFQJb6gDUPDvMawCBwfK
	 G7j7tfken2Kh9MPdM/ygTn/nf0/9FpssqQ/qIW7UU+Y7K6zRKpg2op4HtRXrS49txk
	 dMz5FjOE48jCGg3lEC/1yzDw7TshUpWD7hrRT3AA4zctcDfKfL4M1QeABsiFEPgsKH
	 4fgLs4cMMo43XGxzV+eCCVE9vih92OGcpBtFnuVIZm5Myvk0MiaInaFhMiuEvm0ozn
	 hkEHzTv4wkUjjrfRkzMGmOXHxLlw8ZaYREuFULzlvb9NZusBdcvE7UhZ7wLx78WGGJ
	 +Gv8xw3fw8aJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0326682278;
	Tue, 27 Jan 2026 22:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B50A1AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0F4E40927
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tDK_Pb2HpXHp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 22:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB5AD408F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB5AD408F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB5AD408F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 22:33:32 +0000 (UTC)
X-CSE-ConnectionGUID: pnQXF0gnQ+WfDN7lyhAu9Q==
X-CSE-MsgGUID: 2FLwtWs+SjOoX6sOogofLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70804040"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70804040"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 14:33:32 -0800
X-CSE-ConnectionGUID: Izdi12fOQIWtfqhFFLM87A==
X-CSE-MsgGUID: pz38wDCKQaeWPZXP2GUxMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="208331932"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 14:33:32 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 14:33:31 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 14:33:31 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 14:33:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XcBeSKHkmym+kFI9zIWqPM5JY0UK3wfnDCP4yqasKO3/OFj5y16JBWYZGi3pDp7NKOVtUN99ZfzGPM17d2gzlaQpEDNZnSDsgjfR+TxWV2bYNacYPrTqxSU74bT9fcxs4wADVCvbr4j4QH2hTAySi6Wn96ukSegOVFQt85NfabZUWNo6zy1sVe3KatazAw8LBO2bgotVWTZTpsFcFSF99ozdkJO301H9pBNEWPmtpcW2gk0fz4bsWmVjGpjqvp/cVMckIP3G+CxLEjtt4NHRhQaOTzJcYuTnz7PAKKdlHcTKouBiu/LWTIIKDuESF+VkJP20FXiYXxZEZc1kdQAsTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCVIm/ywEK6pYJ04yTA6+9SbRJLQUCq60naIWfLFoqA=;
 b=QQ2VSNGsqKq0j2SiTaGKMv8ZnYjaD1V6YG6EmpA51TLvUJ1lJnM2DeWQQvOy2RZ9Tqkf0wXpkdcITmoYglqKqCloAJUb5T6ahWINCA7oP6R8yP341EM8nRFjTPG8oBNT0bXwK3bGNdIXciXNvLrSSW8ntqpozl0NBBJ0ygrWBJVmAhnKz0yz21lf/mRndSPik/S1XJCzNdSM2TCRdNmkqxGmjsbrhZpnO4GtwtPUqrVn6jnvpsI+bKbscUnQy9J5Qh4AM4nY1SF7xeq+2n8LgpUmSinFqvhzwUm7tsfdH4IcFk7rvp0GFF94YvR9Md+7brFBQJyeuznkN3hqDRWxcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Tue, 27 Jan
 2026 22:33:28 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 22:33:28 +0000
Message-ID: <f521fae5-54d7-4a8a-a190-80e29b6275d8@intel.com>
Date: Tue, 27 Jan 2026 14:33:24 -0800
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <takkozu@amazon.com>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>, <piotr.kwapulinski@intel.com>, 
 <pmenzel@molgen.mpg.de>, <przemyslaw.kitszel@intel.com>
References: <20260120093441.70075-8-takkozu@amazon.com>
 <20260125131327.4469-1-kohei@enjuk.jp>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260125131327.4469-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0045.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::22) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: f80d91ca-5e5c-4bdb-2ee7-08de5df41744
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NldoNERnUURkRy82UDAxaGgwazQxZElaSHRFNWVPazcxcGREVmsxUEtFN0Nz?=
 =?utf-8?B?TlVqbkJDUnhNQXpoSlUzTU50c3pzK2hsWTVuZFZwZWRyeVJ2d3pjY25vWG1C?=
 =?utf-8?B?cDFuNkZxbTZJall3OGV3Z1dwSzJWclpqcDBLY0VJVm9IWGc0WmNVeTVNZmRN?=
 =?utf-8?B?OEpZRXJ0Yk5tUkViNVMzblQxcmdGVy9Ed2xIU1crQXZ0Y2NkcWRSTVNtUWJW?=
 =?utf-8?B?S0F0blEydDVjWXJwWWZNbjdiVWU5TTJCU3JoUXIrdi9wYlZjSnROeVNNWkxY?=
 =?utf-8?B?QUxnc29SVG5iQjdST3ZpZGNTMXhuWWsrc0VyMlhjb0NNOVc2ZGxKQm5lSnpq?=
 =?utf-8?B?M1pWczFUdUZsNG14WlhqSnovT3VMU3NLTEhGV3ZtL0hKeUtMNzJCeHNGRnZl?=
 =?utf-8?B?M2g2d0R2V2UydnhhWGxINm9ESnRFNEtVcklLUlJ4U3N6dzlRMHdWcDk5d2FT?=
 =?utf-8?B?a2VGbzljQU5IZWMrVm41TEN2NGtYVVVKTVJ4cExLK0sybWZFVGc2OE1KOVBh?=
 =?utf-8?B?T0UzTHNmMlNTcHRaaU51aE16bTFhSlBlNmhDUmhIZU9wWGdxc3k2UHZBVnEy?=
 =?utf-8?B?RlJRRGZnS1FpVmVRcENKNFhoampsRVozSDE5ZjBCcldVRm1tVmdyMW0vMVR4?=
 =?utf-8?B?Z1pRbGNBRldqcUxnL1FWTkRDS09YOXJ2TFRjdDRMZWFGeDB6UzkrSFJTV2p5?=
 =?utf-8?B?enN3Z2ZueXV6L1RSVlRPQlMxc3A1T3J6ZVBBS2JhNXJWTHpCRmdKZWdta094?=
 =?utf-8?B?MUtXc1lyYXEwb1MwNUEvTTVPWlpRRGpWbUd6RUllU0xJeUdacTl3b09CcStI?=
 =?utf-8?B?cEJ4ZTZ3clFsaXhoRmg5ZVZEclVXNm1yNFhLbC9TdnJnU3YycHpqUzNqYzBi?=
 =?utf-8?B?bGR6MXpzTW5qdDVTbjhsN0YzZy9PUmpvSVJ6M1Iva3g4eXZmdW5HZlJrQVJn?=
 =?utf-8?B?Uk0rY1QzRUR6UmVkTUp2ZTNKT2NsalpncEMrMmF1cVVlbU5pRXlJSC93LzU0?=
 =?utf-8?B?aGlwdy9kTDllY0dZUkswb2FXSmxkTmhCTm9PdC9WbThFT3BOcFVQMmJSV1Vu?=
 =?utf-8?B?c2NmbXRxeklOallDeTU2dzFCMWdobHQyNWRBMkxnZEJtTzVpSSt3M1FKWEJM?=
 =?utf-8?B?YnBHMUt4NERydk9xSDJVWXdwYU55MldEeEd5Rm5TWU9tNmYvWWpLZkd2blM1?=
 =?utf-8?B?eTNQR2RYUlQ2WWRPVmIzTG1zd21mU1drSkdjQ2VSL0lLSkdFS09mOFZ5UFU4?=
 =?utf-8?B?elViTzNZR09TeFpiWEJ2WnVuZjY2ZUZzQkEwOWVNdGpxWnFOcHk5cEVLOWhu?=
 =?utf-8?B?aFdpdTMyNktSY3ZzL2lOSTQzdHlFQ1ZhWHk4Y3lKVlBDOVF3bGRUVm9JYlpt?=
 =?utf-8?B?MG1yRmloQ3oyT09JY1lUY2FoYmJKaDFYSWJQaDd0dDZmcnhJNFVEdXZQakdR?=
 =?utf-8?B?Nnk1bGJ0VXdJQmRGa0d3UGljQmhFdXdNUU40bnlnTGxRSkx1WEx5em1FWTN3?=
 =?utf-8?B?eHpIakJvWG96UlhJR0VSNjRvT1VQRVMwSzdMM2JqYzJaZ0twdk1HWE9ENnBQ?=
 =?utf-8?B?K0EvZGV0RGZtV3N5Q1dkemR1clZWWVBPT3M2SWl3YlFYWUFQTk5JS1pMMHp4?=
 =?utf-8?B?K21IanlHclJmRGppbmtwaDR6MTc3T3JXaWVKajNmdC9vQzFUaUEzRzhBaytZ?=
 =?utf-8?B?aG1Wek1TeCtncGNKMEV6YzRialVaMVRsL2RQazZSdVYxUUhVeE9yOGFWMENT?=
 =?utf-8?B?bmkvOHBDWlpwZXdsS1RHZ3ZNUHNZZ0lBNVViNnB2U0xhdnhidWRTREkvT1ha?=
 =?utf-8?B?TjhTMVZFWGdyVkkvTitROUFWNkxCVEdoUWtLNW5xSzBraXBUVVZwRVAyTzd5?=
 =?utf-8?B?ZkdWaSt2MkJXL0VmTU9adXVSRDV3ejFYVUlzQUkxdThnNnBpcU5KT2pKMTBm?=
 =?utf-8?B?eTdtdU1vbC9xZ1pVVk1lTjF0WVFITTljL2Nsd1pPdjdjakI1dDlpaHdTWERB?=
 =?utf-8?B?MjBVSVp4TUVZRUF1N0pBVHRtMWZaSHhGU0VEb002MGJyU3hOWkJ0SVhVR3hy?=
 =?utf-8?B?MTFTZEtISE80VVNwOFlvdnllcml6ZXJGR01zRVg2ZCt0a2xrSEFaMmJmTjIv?=
 =?utf-8?Q?9cA0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG9tTFRMczNFRVJjayt6Rm94UFpGUGw4VU01TWxXN29JUk5FR3hNbUV3ZjBx?=
 =?utf-8?B?eFl1K3lrQzhMWnQrdlJkSVBMWTJmRm9UREpxUGZEamg3OFR3RmxTVDdJMjBT?=
 =?utf-8?B?TjNDdWZjazNWSkc0SEwvSUorVGFBaTdTeHdpdjJaU0wwSXA5WnJWMXlSZGRl?=
 =?utf-8?B?SUI0eFBDUUtNdENBOVg2bGRlZVFjK3RLVUh1cUhwNDFXTVBwZFlpUDE2ZjF4?=
 =?utf-8?B?VUV0cGpSb3VwS25OMFVLVHhuSXVBTmZ4S3loeW15MVlaOUtlYXhjTWZtYS9p?=
 =?utf-8?B?UmF0N2xINWxlUlJCVGlYMkViaG1rY1hwMEQxZzVtN3FyQnIrNFdlV1pKbmNu?=
 =?utf-8?B?eWNnc0QxRTNldXVFZFBCVzMzRFpoRTZoRlpQSTZTNGtQQ1NuS3o3aHJ0clpY?=
 =?utf-8?B?S1RySjB5WXh1T1NpYjljbUYrZllaK3ZqS0VXOTZCM25qYVQrREZUWEE3YS80?=
 =?utf-8?B?OFc5d1lFVnJtZitNTjBrdXBWM2d6WURhQk5yVTVNZzN3dHVaRFZic2gzQ3FJ?=
 =?utf-8?B?dFhsTDk5UXVpU0RoUVhsd2ZHcS8wdGlQaGgwS3dYRVV3UzBac2QvMkpXVCtC?=
 =?utf-8?B?UjhmSFVxR29OdmlUbk0vRTNXdXA0aE9HQXYwblc4OE9mOUtsdWtxMkdBM2dS?=
 =?utf-8?B?OXppY2hjanRzcUgzVmN3TmZ0VGZoNHJBVE1KVk0zNGdiSE0xYTZvVlpndm9t?=
 =?utf-8?B?YngzWGxVdU1zanNtV01EMUF1aHVtZEtZYXNLSEhucTl0QU0xR3ZyZEwxUmJu?=
 =?utf-8?B?VENkdU5rTjJiQ3V5V1A1cFRuZlkyOGRncEF3eGJ1ZEI2SzFTaHFHTDM2d01v?=
 =?utf-8?B?d0xZNm12Q2huOWxLbDBweVU0S3YxaVpyYVdMZFdpZTRhSlUyd2lUL2RuS1By?=
 =?utf-8?B?dVE3SFd1Z2xLVTRiQTdOd1lyc2V6NE1OcnZ4OWc1dDFpRlRFd1Vvd3NEUTIy?=
 =?utf-8?B?MmsvaGNnSWp1TXA5TFFkUDE3QzdBUDUxcXp4QTFtWlVOQkpMbGkyZkFKQmVS?=
 =?utf-8?B?ams2dGtDenk4Y0U4b2xwVXB3MFU1dGZzcGRLWFcvMmhPNWlmKzl0NG04OUxQ?=
 =?utf-8?B?UFYxWFFjRGFRTExwZW9PUTNza2puS2FnM0pTbmZVS1FjeGtRUEJ5Z3JTSTUy?=
 =?utf-8?B?RU94MnBuSFM3MnVySjIwRStWU3JKOG9WaVdPeDZOSUZuZXIreG9UYWV6cWVD?=
 =?utf-8?B?WHRiZXhYcDdOY1YwU3l1NW9FU2ZxZVFvUXpFTnNIZ0hRSmNtUFJSNFJUbWtr?=
 =?utf-8?B?MCtLZ2xsRCtpU3crbHBSTlNzMGFoSUNtNVNxNnZKd2xxWXIrcVVKWTFIRzJ5?=
 =?utf-8?B?UHNUYUhvSENOYmZGOUlGSi9kWDhFSzN1YkJPVkhwcitGclMvR3psS2dXcWR6?=
 =?utf-8?B?MDFFUFV0VnhubnZuRms0NEswWXZDdkdDSlgxRWV2NnNhc2kvWWFQQjhzQTNu?=
 =?utf-8?B?cEM5dCsva01wQStRUWkxWHdNYitZTnVFcUhsejE2TmlUNjlReDFzbGRjdXBw?=
 =?utf-8?B?Y0oxcW00amE0S0hvem1mcHlqTjdMSExPNU9LdDVtTThMZEQ1WWdhWmg3YW45?=
 =?utf-8?B?NHBHNWx5L2RCZ2RWRVlaYjFRTk53azhVc24rRE56aTI5ajB4SytMQ09hZVBx?=
 =?utf-8?B?TU5xQy9TMVk1dGxTTm13YXAwMW0wSjB0RmtXWVpMUlZwRFZHR3BBQ1RjV09z?=
 =?utf-8?B?ejhYbWdkZzI0Z29uVUZFVlFnTWp2VlhmMnJzQVdQRmZ5RjBWOTRoUmpsVHVl?=
 =?utf-8?B?RFVIalhuRWo0c0JlbnlGWVl4QlVVZE41ajBTbkFqM0VqYzBaQ2xDcmE3TGU5?=
 =?utf-8?B?ZTBydGVUZnpadlgyR1Uvako3L2VtR2xqYUx6azh1RzY2YXpRSGVHRk1PcFJo?=
 =?utf-8?B?dVltVUo4cGJGQVFrZzNmcXcxVGxaSXpwbk9BQ3ZUZ0syN2g0M2hQdW02aEJI?=
 =?utf-8?B?VmZVdWFZMkVsWjgxa21sWnYwRGhiQ1VwVGJ1OVQ1M3M1eTVTcC9uc1JyUGtB?=
 =?utf-8?B?L2hOeWdtSjdOT2lYUGxlWC9BQXYrdUZyWnBVUTQ1N1ZJUHp3dGZUYlVwUGV5?=
 =?utf-8?B?NFVCUXlYZE1HMnMrR2txZ1ArSTgraVBBZG9KYlJXV1JBRDNobWJjd3hQUzZ6?=
 =?utf-8?B?QWRmd2lxbnA3RFFKR3g2a2o5eUxFd2dPelpWOUZ6T3UzTVBqa3ZxVVhNME5t?=
 =?utf-8?B?K2ZaTktZTE9mM2ZiUFNSZWthYVFBQzdaa3NqalZITGc2SGF6SVAzbFA1aCtB?=
 =?utf-8?B?WTFnUHM0ODV2MWVsZy82WjZ1SW9MZ202elR6WUdGS0oxVkFsOXdIbk5PVHdl?=
 =?utf-8?B?UFlNRWtMeGwydDB0SzRsVmdWTDBZbklkMHVTSk1vK2wwVWthWE5peTdXdDRp?=
 =?utf-8?Q?c9gNgeaAOzGQPKVc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f80d91ca-5e5c-4bdb-2ee7-08de5df41744
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 22:33:27.8624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VNu44xKIDcBG+lyWx0gQTC6cVUzvDDcd0IYlc3Ev8xX1ZmA3RHJX7ZKbpM9OH8ZKgIOK7aQKEUOfX8px7B7gHISu45xqPOwiXv7X9V8pfPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769553213; x=1801089213;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ixwq13n18JEUEgGvfEku1wh1m4PKPiLyTtv2JQGEjc=;
 b=bIkWiCE6Ji4NjEOy04opQFh4OhlBvWYP1o89GqhIvH+UnVpL2ZB4UsF6
 WTstxwYIdfp/YxAuPy5VpW3N/ZKSmDwlRHKMLkuRjuypwGXquK8/4CJB+
 QrgzCkx1WQS9H+uwTEbX/5nHA2HyKg/Dk6wzLL4dgxFMxL8fBCFHntH+u
 tD+jqWIg13rMVE0JNx1WmclgsYP5zT5/bd/SEaJZmdC/d2+DVP97rmKNL
 FX6yjM7SXiMF9Wrbi+C6hdWkMD5PfLjfZPArTrllD5gH4gYt1INbQKbWF
 UKyFzglEvMhOvugMfULhrYTC1LxoOd6N+FDdgII3ofHUDzZzoPco3RVJC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bIkWiCE6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:takkozu@amazon.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:mid]
X-Rspamd-Queue-Id: F234F9B190
X-Rspamd-Action: no action



On 1/25/2026 5:12 AM, Kohei Enju wrote:
> On Tue, 20 Jan 2026 18:34:40 +0900, Takashi Kozu wrote:
> 
>> Change igc_set_rxfh() to accept and save a userspace-provided
>> RSS key. When a key is provided, store it in the adapter and write the
>> E1000 registers accordingly.
>>
>> This can be tested using `ethtool -X <dev> hkey <key>`.
>>
>> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb.h         |  1 +
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 49 +++++++++++---------
>>   drivers/net/ethernet/intel/igb/igb_main.c    |  3 +-
>>   3 files changed, 30 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
>> index 8c9b02058cec..2509ec30acf3 100644
>> --- a/drivers/net/ethernet/intel/igb/igb.h
>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>> @@ -657,6 +657,7 @@ struct igb_adapter {
>>   	u32 rss_indir_tbl_init;
>>   	u8 rss_indir_tbl[IGB_RETA_SIZE];
>>   	u8 rss_key[IGB_RSS_KEY_SIZE];
>> +	bool has_user_rss_key;
> 
> Hi Kozu-san.
> 
> While preparing for testing, I noticed that now 'has_user_rss_key' is
> not necessary.
> 
> Since netdev_rss_key_fill() is called in igb_sw_init() and igb_sw_init()
> is called only once for the adapter's lifetime, adapter->rss_key
> wouldn't be changed except for user-intended change.
> 
> I'd drop that flag and related code (see below)

Hi Kohei,

I believe this igb implementation was based on your igc implementation 
which also has the same. Would it be possible for you to update the igc 
to do this as well?

Thanks,
Tony

>>   
>>   	unsigned long link_check_timeout;
>>   	int copper_tries;
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index b387121f0ea7..1db9c2447c91 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -3357,35 +3357,40 @@ static int igb_set_rxfh(struct net_device *netdev,
>>   	u32 num_queues;
>>   
>>   	/* We do not allow change in unsupported parameters */
>> -	if (rxfh->key ||
>> -	    (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
>> -	     rxfh->hfunc != ETH_RSS_HASH_TOP))
>> +	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
>> +	    rxfh->hfunc != ETH_RSS_HASH_TOP)
>>   		return -EOPNOTSUPP;
>> -	if (!rxfh->indir)
>> -		return 0;
>>   
>> -	num_queues = adapter->rss_queues;
>> +	if (rxfh->indir) {
>> +		num_queues = adapter->rss_queues;
>>   
>> -	switch (hw->mac.type) {
>> -	case e1000_82576:
>> -		/* 82576 supports 2 RSS queues for SR-IOV */
>> -		if (adapter->vfs_allocated_count)
>> -			num_queues = 2;
>> -		break;
>> -	default:
>> -		break;
>> -	}
>> +		switch (hw->mac.type) {
>> +		case e1000_82576:
>> +			/* 82576 supports 2 RSS queues for SR-IOV */
>> +			if (adapter->vfs_allocated_count)
>> +				num_queues = 2;
>> +			break;
>> +		default:
>> +			break;
>> +		}
>>   
>> -	/* Verify user input. */
>> -	for (i = 0; i < IGB_RETA_SIZE; i++)
>> -		if (rxfh->indir[i] >= num_queues)
>> -			return -EINVAL;
>> +		/* Verify user input. */
>> +		for (i = 0; i < IGB_RETA_SIZE; i++)
>> +			if (rxfh->indir[i] >= num_queues)
>> +				return -EINVAL;
>>   
>>   
>> -	for (i = 0; i < IGB_RETA_SIZE; i++)
>> -		adapter->rss_indir_tbl[i] = rxfh->indir[i];
>> +		for (i = 0; i < IGB_RETA_SIZE; i++)
>> +			adapter->rss_indir_tbl[i] = rxfh->indir[i];
>> +
>> +		igb_write_rss_indir_tbl(adapter);
>> +	}
>>   
>> -	igb_write_rss_indir_tbl(adapter);
>> +	if (rxfh->key) {
>> +		adapter->has_user_rss_key = true;
> 
> here
> 
>> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter->rss_key));
>> +		igb_write_rss_key(adapter);
>> +	}
>>   
>>   	return 0;
>>   }
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index c703011b19ec..8dab133296ca 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -4051,7 +4051,8 @@ static int igb_sw_init(struct igb_adapter *adapter)
>>   	pci_read_config_word(pdev, PCI_COMMAND, &hw->bus.pci_cmd_word);
>>   
>>   	/* init RSS key */
>> -	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
>> +	if (!adapter->has_user_rss_key)
>> +		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter->rss_key));
> 
> and this diff.
> 
>>   
>>   	/* set default ring sizes */
>>   	adapter->tx_ring_count = IGB_DEFAULT_TXD;
>> -- 
>> 2.52.0
> 

