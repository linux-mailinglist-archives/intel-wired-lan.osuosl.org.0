Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD53A41C77
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 12:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 539D740734;
	Mon, 24 Feb 2025 11:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZ1zM29LKzW2; Mon, 24 Feb 2025 11:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D595E406F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740396120;
	bh=5uNTIIL/nFPFlca8aOUyGKsHopAx+peghjSbHrYyx7s=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J9sYnadLQKHmnjmkJCj8sbqnjAi6I0H2I4Bf2FQeKEyJ6lttuzrEVYp5k4eZg+9s0
	 rt4MySMHeYoRvjWNuebYk9UJa/dci4WS6fFI5IkNQUvQMUFf1ak2iZA3pOl1938Wxf
	 9Z1nGO1hoqlCHvXhiFaMNpM8qz6XQyRPadKvNUUkLYRFBn8WbMOLOs4t0aTsdyJH6Q
	 AnjEmNsc9jBtYlnuksHteTAjb0Kp5q/y4S8zoFR5B/P/rEHEIeeXtKt016rhSkyBz0
	 dkpbyahbeZtcqswX4V/xYrp8pj6QDiz8Yg8m3rXyPMZQPKtsme66bGsd1yANR21d32
	 aD3uO3/a7Nxvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D595E406F5;
	Mon, 24 Feb 2025 11:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 606D6B88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4FFC360B27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P-jT4rHxiO-n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 11:21:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 296BF605C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 296BF605C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 296BF605C0
 for <intel-wired-lan@osuosl.org>; Mon, 24 Feb 2025 11:21:57 +0000 (UTC)
X-CSE-ConnectionGUID: ILj/ekvpRZyrLEytd4gcDQ==
X-CSE-MsgGUID: MONwoLJ3Ti24xByjcRhFrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41022744"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41022744"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 03:21:57 -0800
X-CSE-ConnectionGUID: gCVQjquvQeCyYAZkPZOWPg==
X-CSE-MsgGUID: YneOckH0QGO2a5TUaFlxmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="146883417"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 03:21:56 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Feb 2025 03:21:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 03:21:34 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 03:21:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QU9Rt8fw7WZMkpPlvE5Y2SNqgaP8B/zBoFJxgx7tvtbWhjMZ0JS+qpjP2OJ6gGFTHIgXKoKU0rJfVQjSrig+Ch0XeaW0rDVIDdqDd3FZgGWkERj2SK0rXVWBu59dCTaTnhRabmlKzyBqpH+lRcLJ73NVoX+n1xMOeQIG5ExesF8G4ux58W+EFDTUt1rXdVp3k7lzU+PYEDYI7y7DHtPTw9GGLrp2m0UkA9XVNa0Af8DwuVu/oZzVB7eP6zqdFzkmVC02MTkckgY5IgMpQFEqmi4VhiAnLO1ecCEM/d6iORS4TJzeJLImH6jz8oARZeo7lwu4hHYSJMRuw6UO854H9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uNTIIL/nFPFlca8aOUyGKsHopAx+peghjSbHrYyx7s=;
 b=vY3R6aMRkzo08FLnddhY7I7C3U4WDSHAz5hbwrPRp7lp4JG189HAsOfzspPb75cA20epZF21u5JWvH2ClOok4bLMPuNLV2cInsT5HRQg7fv9kvu9iGirfDletmqQZRI45Z+Ycwsegq4uBZUYJRSPIOFcraernMoGP4ABZit2fonnH2sRu86WpZfJm8pMCQr7GEbEx9jHzLv9adgQRJHUyD0xRbrNV2DZ68ikbSgQiZZB5ekZXnXB5oBQ72St4DfCWKLEuIPeMIrCuMxGvjiaeBFW0pnOgcvytko1HSdmbJb/99PrFqfBK8rxDF9P9EJto96RaV7VOpfyOavUyK6GXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7507.namprd11.prod.outlook.com (2603:10b6:8:150::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 11:21:22 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 11:21:21 +0000
Message-ID: <e033eb46-ac78-4eb9-b27b-674a3ad48a2c@intel.com>
Date: Mon, 24 Feb 2025 12:21:17 +0100
User-Agent: Mozilla Thunderbird
To: Masakazu Asama <masakazu.asama@gmail.com>
References: <CAP8M2pGttT4JBjt+i4GJkxy7yERbqWJ5a8R14HzoonTLByc2Cw@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: <intel-wired-lan@osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@linux.dev>
In-Reply-To: <CAP8M2pGttT4JBjt+i4GJkxy7yERbqWJ5a8R14HzoonTLByc2Cw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0047.eurprd04.prod.outlook.com
 (2603:10a6:802:2::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7507:EE_
X-MS-Office365-Filtering-Correlation-Id: fe31eb51-54fa-455f-ce63-08dd54c55dd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXBvNDlycXV1Y2U0MzJ4Q3RSS21VcXJzbG9NNEhGVU9GTWpwVzhhOEg4cWxa?=
 =?utf-8?B?WkZQcVFjU29MRVdGSWNLeXBnazFrNjNlNTBjVkR3WVh3QW5ESm4rcE02bGdo?=
 =?utf-8?B?NEgzRUNYaDhydTN3dy94QXZZUmZlcndHdVZjYVpoTDU5dXpTaHVzYXJZNDIy?=
 =?utf-8?B?U2p6Z21LTDhVZ3F2NjNKNGszSmlja1psMGQ3dXlxWENZZmJtN0s1VDRsWVRJ?=
 =?utf-8?B?OEwvdllRb2xTLzljWmdnRWwyRDRWVk9pclh6RTErNmRJWkZ4clhiR1RxT1RQ?=
 =?utf-8?B?L0hOaDFKWFd3WHVrNnV2V0FIZ0hFT1NMVzJIeXUzT1gydEZOVERYY2F4c0FT?=
 =?utf-8?B?K1dzNnFaenZReHVqMCthN0EyVEtXQlc3UGEzVjhtY2U5TUJGbWg2ZDlDWFNW?=
 =?utf-8?B?Q3V5dlkzSXB1MUxMUlNrU3RpNDRZcFpUdkROQitOR3VLYXQrbXNYZVlBMDFk?=
 =?utf-8?B?TEc3K2graElSanA5WnJVV1JUVm9IRHo4K3FmYlhRWnAxVGdkQ0ppanJwMWZr?=
 =?utf-8?B?MFBtMVJ1U0VpV004b2tINFR0Z3Y2K2FOM3lSTE5PREIyakdiZ1Z0Ym15Vzh0?=
 =?utf-8?B?aEw4UW5MMWc1Y3A1TlZmTDcvTVpqZWxDRUFJdW45K3ZyYVQ5M3BrUy9PQUVJ?=
 =?utf-8?B?VzZyeDVRQmF0eFkxL3pKOGI0WWdINzUxR1MwTS8zL09aNnloQXJEemVqTGtP?=
 =?utf-8?B?dGdZNzBwOHhONEtsM3NGRm9qSTYvWm0vWWVlYjcrTzZhbXJ6TVdzb3FRbU95?=
 =?utf-8?B?VVFyb1NGYTV1Ukpwb0JzVk43WU45a3lKYXgzNVdnQTJSS1h1ZmdUNWNVTjhy?=
 =?utf-8?B?UUtKS1hBUm5FSmFTdVh2TGZCeENseEk5K05QK1o2bVhYUWJaSk1hL0R2aW5J?=
 =?utf-8?B?NXNKVTM2eWNzVzRDZDFXeldBNGxzZXJCZ2N3S2YzVWtiYXplczMxeTVGUFZX?=
 =?utf-8?B?cW83KzBXSmJjTFV6RGlJanZCWk1tZDRhUDdJT0piMTFYN1BrbXI5YUl6RWh3?=
 =?utf-8?B?aTA2SXVESElJaE5vclllS0dzWW91R0hqRHFZbEV4Ni9xSGgxYk1uSEVSTUZi?=
 =?utf-8?B?R05pZVJaSTJQdDdMenpwamQzd2t4b2dXQmJTQy9jaC9MdmdOTW55NHlyNktl?=
 =?utf-8?B?ZmN2WDVTOFlmVlBvUzhneGNudU9jZHhWa09pQlIybXpFTld4ZzVnNlNLeXFu?=
 =?utf-8?B?TXlMM2w4MkFLSVhQTUJuYlVGM0FhTG96R0hQcjZhS2dCc1lVM1VWSkkreXcw?=
 =?utf-8?B?V1FSUmFYeDZuQTlGL3ZBbHlMUE1rMHV5YkNTMVFyemxIdE5uOXdEaHFlSWNq?=
 =?utf-8?B?OUo3TlVucmIrU212alBxMDFzMzBSc2FXSUhhZytXbFRnVzRGNmIyNy9sbXhU?=
 =?utf-8?B?NVJocnJyVW5SdzUyd0RobHcrSHlrSEl2MmZSVnd6ODJmSHRPd01RU3dwVnJB?=
 =?utf-8?B?QmtISG41VFpsSjlHTnJOK0w4RnljWmxSNkptd0lncmYxVGVYdG1DWEttTVlr?=
 =?utf-8?B?VXp2b0JHdmJ4M01sWHVrY3Z1OXJkVXZVYlpjTGZnTHpkT29VcEtueFFCa0xF?=
 =?utf-8?B?a1pGQnR0eXFlc2d0VzNGT0V1S05QbFV2cUgxOG1DTVYzcGRtdFM0TFhFZ2cz?=
 =?utf-8?B?d2ZzSXhlTjR6RnFReTJ2UHBycFZDbUNWZGxEMW1mT3Y3SHNUZGJUUU9WWlY3?=
 =?utf-8?B?eEZSWURHbTNYVXlPTzdCY3RycFk3M1g3OFNUZUJqM3hpUTJWVWZJN0lMYlZa?=
 =?utf-8?B?UjFRcFpNRUVHVDVrQy8xc3pZbHhIM25rdGI0enhjTHFyMG1qV3o4Wkw1aWZp?=
 =?utf-8?B?U0lHcEU4aVZGNmlOSE93K3NvWWJidVZwZndUb0lneUt2VmNFaC9BSG13QlhT?=
 =?utf-8?Q?Thr8H3ILzT81h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elVLT0hBTkNHZ0V6alZCRDB2dklhRkpWbzhyTVNaaUdFeE8yRHNDaDRmdTVX?=
 =?utf-8?B?RDVDM05Sb2J0clg0eEw0bGUwb0cvMGY3Q3p6TEVsb05nRGRZVlZxVU5IL1ZM?=
 =?utf-8?B?K05hSmh2dDRwZ1R6eFpxaEtuVUQyckVjZk9CTG9RakUxRHY1bE1vYjlqMzN5?=
 =?utf-8?B?RmZkU2hnOEhLOU9UNlUrc05ueXR4R2g3YlZpa0w0MmdpSjZ4bWRaU3cxTkFO?=
 =?utf-8?B?MHlpQnIyUklIZFJvcWxCanJwb3dtWUVsVmhoc1dCa0JLTnN6a0tnbUxPUmdF?=
 =?utf-8?B?WCtHWGZocTl6T3pPZ0JLT0QwVFY1cWthSURMSmg1dytNTXNkc2FhWjRXTDRM?=
 =?utf-8?B?c3hDaWJDZDl3Ty85ZWFTM2ppSkg2MGl0bWh0azBQVng0bkZFZVAzZXd2S1BQ?=
 =?utf-8?B?K2ZyUFNiUFRwNEVXSjN4T3p6WldESGFhU2FtSHo1dkpkS0NiZE44RkR5Q3o5?=
 =?utf-8?B?amtmb1Q5R2dENGlWZFpTM0pOR0hiQ0tnbEdVd2JBbVIvYzgrZ3dvUnVmN0Ew?=
 =?utf-8?B?RnBoVWxXbUNlcWpmcnovOE43OXdnQ0Y0VTZXSm9NM1F6RVdoeTRUWFZmL1Zk?=
 =?utf-8?B?SEV1NERXSVhNTzI0dy9Vai8zVWlrSGlwNWRqTjZ5MnhaTGQ5U2pNQno5dlNt?=
 =?utf-8?B?eGQxUHZuZUhJekJucHo3bHFwZmtJbEtaaG5acmhnbUpaWlAzc2U3VFZQVXFw?=
 =?utf-8?B?T2lBTFlGMnNXdjZ2VmMzSDZxQVNzMEFLRVFRNE9rUHkyOVRZL25nYVIvTDgx?=
 =?utf-8?B?bzV2N2REZmQzS0hPcEx6b2xpdHhlZWkra25aWVFDWENRNHVENmVpTnowZnhq?=
 =?utf-8?B?WmFscGtrcVZtT2phM2dibTMydHBUdVNkNW8xTEJlYU5aRlUrUnF2NDJVWG5G?=
 =?utf-8?B?ZTBCRlZRYy9OdGF3cnA4WDF3cU5SN2ljdm9mWVhtam1COXVLUlVEMTRWN2Zn?=
 =?utf-8?B?cXV1dUxCVHUyQjlMYXRxamtNN2c0OVU5OWZFMjVkUEJlQlJsc3oyK2FrUUZZ?=
 =?utf-8?B?ODE2eWw3L2I5RWVqM3V4NFR4SzUzdHZyUlZLOFgveVhsZGV1WmVSRGpZckw2?=
 =?utf-8?B?emU5ZnkvbElueVFZUVZxSXQ1cU40RHphb2VMTlB5OGxsZFlDKzZWUjVyblAv?=
 =?utf-8?B?UDNBb0YxTXZsQjFUZjBsOWFKUVhENTlEYkxHMzZrTTBxQUJ6ajUvV3UzYkFL?=
 =?utf-8?B?REQwa0xtV2w4L1BpaDN6ZkpYSVpjcGRwVzlpMGpDQzZFY3JaNVJhSGhxK1VM?=
 =?utf-8?B?bUpKLzA3Wnl3ekRsSW51UTVqMy8yRW9nbVB5UTBuTEI0aE5JNW5NK1lYbFpZ?=
 =?utf-8?B?eFZEZTk3UnA0SnpwM3UxMTVsU2dINU1VMlZPd1FpTmQyMlY5VUUyVXNFdmZm?=
 =?utf-8?B?Z0swR0NQbkhMcmprajkxWEt3ZTBOL05Nd1RzSkR4Z1RWSDVPYVNwLzZ6VzI0?=
 =?utf-8?B?RW1QWW55NmltZU1yYnMwQU80SjdlWWFsWHdVUGxVQ3RFSWdlbkdPOXBXemIr?=
 =?utf-8?B?MGNWYmRvRlFoMnR1Sm9QR3NFTXExV0lBNVRNN3dySkh2MklSQnpMUTZ6RVVy?=
 =?utf-8?B?bmZrSjgxQjd5b3lUbjlYQnVqSThTS3RqQmJmRlBDbkxzWVpYZnpEQ3d1akZ5?=
 =?utf-8?B?VnVrNm1KcFdTVkVCT211dkp2QjBrSkFraXRjeXZKU2U4eVE5U1ZnWVp5ZGtw?=
 =?utf-8?B?T2VYS3BZN0xwZTlyK1g2eHZ4Y1U5N0w0WVl4MWF1MjBkaEYyeVNXWjduQ2JK?=
 =?utf-8?B?eDJ2aEoxK3FRaUNkUm1OY2tGNWd3Z0NVR0swT29FdGhJQjFXdldXUUlTeXNO?=
 =?utf-8?B?dmZ5WHJxVVNkK1JvYUxERFBMN3dSbXZGc2J2QTV5NHJkVVk3ZSt6MTBQam84?=
 =?utf-8?B?cUUrSCttaTU4eTVwVHA5MEVOQWpnRVBaVHlDYUNEakRCdW9KWFlDTTFqT3hy?=
 =?utf-8?B?NEhHWjRMZXlXcTRQV2cyS0ZZaDRRUWFTMnZ1RzIwcUU4R0pQUmFMZU9meG45?=
 =?utf-8?B?NTFwb1ZYSkRDY3FsOTB5RlRKWUcvdjVkbEFsdVhRaExrTGswa1ovOUdEb3dJ?=
 =?utf-8?B?OTJvaUFqd2xiZGgyRTJiRTNrTnVaZFJwKzIxQVlGUCtlTzVBMDBQeW9xczVO?=
 =?utf-8?B?UEEvWm8rYzNMd0RnMzdxb1JaMGVaMUJWOWx4eXdIN2NpTktFcSsxbVVUOElB?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe31eb51-54fa-455f-ce63-08dd54c55dd5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 11:21:21.8287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tGUWjrSxvSjup7R7SOyViQ4emdA+CKKZsLOQBNh5X9iNyUYgoOQqpsWMt7ROiysOoJi+5wA0k7/9akNCmPA8bwBSl0izUEqygngqNo3Uzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740396118; x=1771932118;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OlgZ4tHhbUNIbrU+ffmJQt9xiTbB3uc3sD1JmmGlprU=;
 b=IIYmq26U9bPS2/stJzodowrSs+sBmYBOzudOEv3rvyBthJXcDhjmqrPI
 HGUxMXyzS9ZftFIz9RfZmiIh2mhBbPKhaEbavddrL4Szh/L5YLaMlbRJr
 VxBieUh25kxGF4gmx/fVkLun2ae5HB0yIBVN8Ktp09mGGT2HCc8EerX4p
 X2zUV23gHyhytRP4itqhRrIwqHLndWC8kJ4KZC0ktgLc0T4htG1guaoG/
 J/QMmSI4s02Fgwb/mHasi3HVxaKyias2RfB1KZQAAr7rh5I+T6VFn/KFd
 Hy036eknNdcW8Ns5hdFffUwEWYTdQAa2zywBzOMfYxbLBnv+DoDJoNKiY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IIYmq26U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] The ice driver may rarely return incorrect
 statistics counter values
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

On 2/21/25 04:12, Masakazu Asama wrote:
> We have observed a very rare issue in Intel E810 environments where 
> SNMP-retrieved TX/RX counter values are sometimes nearly twice the 
> actual values.
> 
> Upon investigation, we identified a problem in the process that updates 
> the transmit and receive ring statistics in the ice driver. This issue 
> occurs when the counter update process is executed simultaneously on 
> different CPU cores.
> 
> I have attached a patch to fix this issue.
> 
> This patch is intended for Linux kernel 5.15 on Ubuntu 22.04, as my 
> environment is Ubuntu 22.04.
> 
> In my test environment, applying this patch prevents the issue from 
> occurring.
> 
> The function ice_update_vsi_ring_stats takes a pointer to a struct 
> ice_vsi as an argument. This structure is allocated on the heap and 
> shared across all CPU cores. The function resets the counter values to 
> zero and then accumulates the values from each ring of the NIC.
> 
> However, since struct ice_vsi is shared across all CPU cores, the 
> following race condition can occur when ice_update_vsi_ring_stats is 
> executed simultaneously on different CPUs:
> 
> 1.Multiple CPU cores reset the counter values in struct ice_vsi to zero 
> at the same time.
> 
> 2.Each CPU core independently increments the counter values.
> 
> As a result, the counter values may be updated to a higher-than-actual 
> value.

We had observed other problems caused by the very same shared data, it
already was fixed as part of kernel 5.16 via
commit 1a0f25a52e08 ("ice: safer stats processing").
Sadly it was not backported to 5.15.

 From your proposed patch I could tell that the fix is not present on
your Ubuntu kernel.

The first step is to check if the linked patch fixes the issue at hand,
could you please give it a try?

> 
> The attached patch modifies the implementation to store the counter 
> values on the stack, initialize them to zero, increment them with the 
> values from each ring, and finally update struct ice_vsi. By avoiding 
> the use of shared data for intermediate calculations, this fix prevents 
> the issue.
> 
> In my environment, multiple Intel E810 NICs are bonded together.
> 
> I use Zabbix to graph the RX/TX counters of the bonding interface. 
> However, due to the way bonding ignores decreases in the counters of 
> slave interfaces, this issue makes the statistics completely unreliable.
> 
> Graphs generated from the slave interfaces may appear normal because, 
> even if the counter temporarily increases, it is corrected in the next 
> observation.
> 
> When I reported this issue to the Ubuntu bug tracking system, I was told 
> to get it merged upstream first.
> 
> I would like this issue to be fixed, but what should I do to get it 
> accepted?
> 
> Any advice would be greatly appreciated.

You hit the correct mailing list for the upstream process.

Process is a bit different depending on weather we will need to just
backport Jesse's patch or parts of yours. For backports you will reach
to stable@vger.kernel.org

One more question prior to adding more patches: does the issue reproduce
with the current kernel (6.13, or even better if net-next:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git )

