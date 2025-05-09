Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D66AB1E91
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 22:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BD5A61119;
	Fri,  9 May 2025 20:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6AU5u1b61tND; Fri,  9 May 2025 20:53:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A0446102C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746823982;
	bh=qsHuu9vaFncYG0U1srEvclGS2FlUBexFKCxEXJqws8I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ub92XwxjJ2fyPgWGiP24tZMge571OM4WER47HVFSZXp8DDFJbuI6kv5OEwN/3ZvaC
	 VcN2VTmsYCJ7BNjrFvjThhcLcOrL0rGeQrNPtW193PJgbCQrTTk4+RIUztIP+GDPxX
	 tm8n1phdtn2jsc29FXZgeLMACiKhnPZA755h7CdcR/zQOJHu5Rpf+aIFst2QdDm0Xp
	 Hl0Q+2oZ0irDlatB0XrFNHJtbwXdIflpyEhk2CI346P15jsgYxSNxBtkPMA1suJrm4
	 uGOAz/8EzA1PEDVuiEcJEa9GEhMljmaVk9rgJGVXijElUQs9Di2OXOkQENqDE365hS
	 PwgfvrV1vWGpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A0446102C;
	Fri,  9 May 2025 20:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 285CA15A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 20:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DC3D81F68
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 20:53:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfoU1XaZtp_K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 20:52:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8409481F2C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8409481F2C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8409481F2C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 20:52:58 +0000 (UTC)
X-CSE-ConnectionGUID: RZIFIctHSTaxY0w/6DQg6Q==
X-CSE-MsgGUID: StF4kNY7RKitkJ6G1fos5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48584478"
X-IronPort-AV: E=Sophos;i="6.15,276,1739865600"; d="scan'208";a="48584478"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 13:52:58 -0700
X-CSE-ConnectionGUID: glvHBgKETAux8/+7Q03TcQ==
X-CSE-MsgGUID: gr1uoWmzSeCut/z5xlntgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,276,1739865600"; d="scan'208";a="136647729"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 13:52:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 13:52:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 13:52:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 13:52:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pyesVrVq0dVZG/y0OSRJbXFFATKPvq62zvDFKU8ZLNdmrB9p4vqOqxq4TEsL1yokO3ou4qameIfO9oiYaCE8G4mVB35oVaKe5fZf9VXO8saNFYpdXFHBuz/9d3K0im+G+kRTsZJUs0HRcn1QFf6cEHw3BuM6dw3CxSTVrtJrqu8euyjZOorCE+FLv/p9pLAMeOx5ZXMWLxG4lgQkQe0jJ0+u9jLPxUGpp6klnuGpeMvNPuLjd7wnElj4mG5pOWIrg/2oOENIFjFXlg6VQYRt4GjhA5GP7o5bj1LTwap+NsebFh3LJWM3s0lVBT2L/PsgmMaaOuJNx7d8yzjx3FhNCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qsHuu9vaFncYG0U1srEvclGS2FlUBexFKCxEXJqws8I=;
 b=HrS8ftvI5wz/Uy4ksNpWuwKUejwDJzHK0qohS1kYGQ7JwLF23T6QoNQstjDOdSVpZeYeedBCtJThQqchH2sVB/ABd4dczhvFFnnWs/zkd2xUGAIx5AGn/rNfQKe0ajdAImduHi29eimgixC99H2pSnzbkM250uIhFwDfT1e013WNe7gJJf8jrZ1Rwxme+lGv8olcagxfhPbrrsGk0FvdSKz8ZHb4WI0HtmTzygFD0+MMyiiJbTqybdROMLJezZBFIPeUlz8TOq/+r73EJqU21QYN5v1ocAvGTcmd/Pe6cork+aLqLR5yOAjjtavPbVYIVNY26bo4LVr2G8bYP2AZJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH3PPFEC5C0F28D.namprd11.prod.outlook.com (2603:10b6:518:1::d5c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.25; Fri, 9 May
 2025 20:52:55 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8722.021; Fri, 9 May 2025
 20:52:55 +0000
Message-ID: <f6033421-e1b6-40ca-8d40-0c09fa65642f@intel.com>
Date: Fri, 9 May 2025 13:52:52 -0700
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, Milena Olech
 <milena.olech@intel.com>
References: <20250506093506.3136225-1-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250506093506.3136225-1-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0359.namprd03.prod.outlook.com
 (2603:10b6:303:dc::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH3PPFEC5C0F28D:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f663f8-ab67-44eb-0366-08dd8f3b78d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eWpIekZjWVA4UnJVbTdlMllDSWlVVjRsQTRNSTU2ZE1LTjRwbjI2aitlL3ha?=
 =?utf-8?B?ZklZelU4WGxlbmNPb1YxVmllRmI1NXFFdXJPQktVYURXWnUyZjRISEtwRDRD?=
 =?utf-8?B?TVg0OWVuS2k1cTVINkFMZm9USHlqbEREUG5hMnE3K1EyWFJvTmtHTlN6R3JL?=
 =?utf-8?B?bjlPZk00dFhnTGFpcHpRd2FRVndqdGkxMmhQL0NTclFUbCtlU1pPaVpJWFJQ?=
 =?utf-8?B?WmhvSkVSRWlLVW5JSDRqRG41UlZhVEc3Nysza1JydWdFTkxUWEhzOFRwWWJh?=
 =?utf-8?B?NXRUS2N3dmI2YkFvREdwMVkzb0dLZVUvcHV2dWd1M0NFdmR5ZHJZVGRtOUF4?=
 =?utf-8?B?emxwaCtWcTVXNXFtNHFyNzV6TUZjdFo1STRXWDBHMlRIWnhPT2lJU0JZaTRo?=
 =?utf-8?B?R0JSMjFkVSt6aUp5cGwzWDMvMm1KL2t6ZzB6VzRkbjRBY3ppcldadEx5R3Y5?=
 =?utf-8?B?UGF4T3NsQ2VxbGsxbXY4cjhQOGE5ZG1mSldGMVE2VGtpUTZibXBzZ082bXRH?=
 =?utf-8?B?c21EeEdwazYwb2FiSThjMTdMZmVkci9ydE5lQmZFWkU2SnY2Qk4zTW0rTzF1?=
 =?utf-8?B?V0F2eUplRzhPbHRmUUxPUE03d09yYXpKWWRDaGJHcWVocU1NbkE2eEMxWGNv?=
 =?utf-8?B?QVdOcllYM1JKWVNFUzN2Z2lPditFZWlWU0poNGZ2VXpabHJ4TG5yYWJDM202?=
 =?utf-8?B?VVFoNWJvL3IvajdDTUhCL3hLMWY2eHdIbEx3VHRScDhZZUdaMGdjYUd5eFlm?=
 =?utf-8?B?eExMbGtlQ2xOWmpTOXA2WWk0UXl2bndJcmxVM1lRUHBsbWNzWjZGbjM0SCtO?=
 =?utf-8?B?enN4QS9Nb1JoWUkyL3RnU0VPMWZVbXY5UUw5bkt6MGl0MXViNDVxMk1EVHMz?=
 =?utf-8?B?TDltY0F4TU1MdlBmWDJUckdBMHd1bExXd2ZJZVJvRFJmTFFvU3gydnkrSnRW?=
 =?utf-8?B?eVRrZzBiSi9uRFZnTmJHM1pZbS9TSlFXa3BkNnFZT1ZlTk45V0VLT0p0UVY4?=
 =?utf-8?B?VnQydDdiU1JaQ0ozVng3VU8wdTRsalpZS3NqTmhuVlZRSVhDTmJiVnBrNTFq?=
 =?utf-8?B?L1pKeFVhaHFCbEw2alhqV01aZVo0RUFDZXl6b0s3Rmo4dTQ5Ly9pWVFMaG5Y?=
 =?utf-8?B?ZWVqMjBxQjYwMTZ5VWZjNWk2TjhTclRDaHBkdU4xdFBKTG5pL3U0Z1loa3F6?=
 =?utf-8?B?S01vVFlzWW55QldONWFtNjRzWVBidXdYdUJpcU4vVDhXcEVUaWVuTFd1WTBl?=
 =?utf-8?B?S280RDZ2RlRpcGNsZER3djJWd2cwQjkzZy9WTCtEVHBXRjNoTG9vcExTelJm?=
 =?utf-8?B?SkJ4dUtaMHJTVkxZUGNXckNUbDgyUE5VMlZpSk1IOTUram81VythYktHRU9Q?=
 =?utf-8?B?dXZHMkVJTDd5d3lIR3NyM056YnZYY0d3VHRMYUpQS3RnS0hWbGFKMmFzbnBo?=
 =?utf-8?B?OVJFVXFkOFhlR3BudCsyS20wK1g5a3dUdnRENi9NSXZOYm5ocHRVcDhQU0RF?=
 =?utf-8?B?UkhrK2F2RE5VY3Z6QUFUOUNCRUZjTHhaWURUSE5LZWJBZlJaTlo4aTNJYndk?=
 =?utf-8?B?b0FhSlM3QlFTTEQ0YWtRcVo3UjM5MFJDR1BJUW1ab3NqOXdYUkZXSVhDL1B2?=
 =?utf-8?B?WlRMZEg1a2YrODBZYnR3Q1F3QUt1RnI0OVRUOWhWUnVEbFFDdlNPenpJS0NZ?=
 =?utf-8?B?RlQzM3dZNTJoZVQybGI0R1lNdy9GMDF4RkJmUEdhekNRRU91V2JEZVVKM0pl?=
 =?utf-8?B?OUNzZVBsbVdHK2ovdzVVdG92R2dQNFJIVE9PcjFjajdxVmFDVDlKbkNrS2JE?=
 =?utf-8?B?aWFUeTFSQW5xTW1laGhObnU0aDNoQTNacjRBdTJqOHhTK3pDQ2pPL3N5dGxa?=
 =?utf-8?B?Q0RJVktaRFA1Q3A4a0hZRWR4dkRKaU1uUStnTU9jaEFCVnc2Q2l6U0owL0xJ?=
 =?utf-8?Q?X0l6NKar27pR8AyH3xYTjMIrn56MqDmB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R20yclNHcDdhLzVEMVBhS3NVamRHMU1jK1NzeElUOHlRQU1ZbWpwRGJ3Z3pC?=
 =?utf-8?B?UjJ6VlZxVDBTL21QRUkyNTF2Sk1JeU5WSzJQNmNqcTRZU1lrWlN2Vy9nQ1FT?=
 =?utf-8?B?VXpDWUVDQ1o3UEg0d21hZU95a3RXTS8xWUl2dnZLaExVUGk4dDZrVi9KTmlT?=
 =?utf-8?B?eWxST2t5M29lTldoc2ZRWDh4Q3pURHdKUjZiMlVGakF4UHA4OXFQZkMxZ0gw?=
 =?utf-8?B?cUc4THlmYzVLaW44NXVzbU5JK1VNRXRSZnZhTmQ0WktMdnhtRUYwUGFjdUpa?=
 =?utf-8?B?YWo2OVpXRXRydUpKbnRJOE9ZWTM5RUd0dnI2b1pZZXp0a1MvUkFpaldTQkxS?=
 =?utf-8?B?V2JhdGR4T2NZdU4zem1kbisyM0cyL2lPL0RHZkYvZG95YS9GNjl5ZDNhbDdF?=
 =?utf-8?B?enU3Y0lZcE5xTTVwb0ZWSGZkWGRXV2tRNUFjeWkvOHBrbXh3ZjErYjJWNit3?=
 =?utf-8?B?RU95N2MwMzBzZ2lEclZubVNHMnhLSzhFL1lKR2dESnJuOUdRVXJ1RVllSnNE?=
 =?utf-8?B?VFRJQndrdW9xUWRRTWlVWVJMczhJMGg3b1R5dkozV0xOcTArNEsxcEpGdC8v?=
 =?utf-8?B?cisvaGNzamFDcDJwOXBwSGhyV2cxTUpjTlA2Rnh3ekZWeWZxMWJoOG1iM2Rx?=
 =?utf-8?B?NUtLSFRKKytyUFd6N0F3VFhlUU1Vd2EyemV2M0VNR3h5TE42Ym1COVJHM3Iy?=
 =?utf-8?B?My9GQ0ZjVzR1Q2lkTm5Sa2FOMWM0ZU9ndkdUaHIvbHF6MjhtYmJlUDZwc2FC?=
 =?utf-8?B?SDV1OC9EcGxML3pDN2hzRHo1aTU4ditjZHZTNlEzZlVVRVg1bDFlRzQ3SFcr?=
 =?utf-8?B?MFZPaktyYTFqeThXaXNrL1F2c3EybDdqRHZUaGZMZndIbmc4eHhuZEpGTlFu?=
 =?utf-8?B?aTBiQXNReEYrMUJHSWVyaEdHeDlSNTNrQjVPZFFUclZHY3NoWU9paXltSkdB?=
 =?utf-8?B?MWh2YjN4R0lzSE1xM3l6b3A5aHhMQ3paQWcxZlVDUGNycDEvamhDZmlodW9V?=
 =?utf-8?B?VG5tdTU2UUxqYy9WcUVEVmp0Mi9DZU9abXY3ckZPVHRLdXJVMVlaaVdmRnNQ?=
 =?utf-8?B?dG5MY25yNk0rVGFRYVJybWxBN2tzQ2NVR0R0Wksyek9PcjNqdlg1NlhaMW4x?=
 =?utf-8?B?bjkrb1J2UUhmQ0pNZEh2aXhXQ0RXa0ZzOXBUZWo4Y3Y0d1BDY1lBcFhhNWJh?=
 =?utf-8?B?U0llbGlDMDdkdEdwcEpobThlNHkxYktha2NjdjNtbXZWSzh5cnFCWUJZVWVa?=
 =?utf-8?B?bFl6UzV6TEhIVXpjNms0UUpVYzJqZi9wZFpBR0d0SlB0Nk9OQTNsZGNDQnUy?=
 =?utf-8?B?RUlvMU1SOTYyeVFjOXJEREZsQmE5UHVoL3g4K2J0d1pIUUN5cUxDbUtaanpT?=
 =?utf-8?B?bTZ1OHI1NnJaVy9hRmJDVzA2U09jYjJoRVNqdEdTRVIrOU42WjhLamo4VlJu?=
 =?utf-8?B?MEtXWWxUVU95UDQrNXAzTlhuMXV1N0h0SG1tYW1Zb0MvVnEvVEMxOWlnaHoy?=
 =?utf-8?B?WGQzRTMrUVdHR0IyRjU1VDNjYlUxbm80VXZYbGZZOG5DVzcyaFp4M3FpRVR6?=
 =?utf-8?B?TGVkdzFabmN4S2loWk9HZUpmbWFWamhrdE9JK28veG9WMjZ3OVhueE9UcTZU?=
 =?utf-8?B?SWZ0cXhlUkxGckw4cXIweUFudFBMNjVSUUZxbWxicHRsT0E5WmRSS1ZTc05Z?=
 =?utf-8?B?ZiswcmFHRXFUOU0wYU0zWHdOUjk1T0toZ3NMbkRZUzgrU2JIbkdrRk5IWG0v?=
 =?utf-8?B?NG4wSUtwbEZKcHgxK0pQWkt5cTZTei9JVEpKZCthQWtjcHFCbEl3ekNmWUJl?=
 =?utf-8?B?SDhlZEJBNFhGclFQUGRqYlRyeWE1akVhaitQNEU0WlRVVGtwcDM0ZTRac0Ru?=
 =?utf-8?B?cWJMaEhZQ1ExSmRRbWs5aUlZdjZXejlRREVhRm95N1Q0MFAyYWZjSzY2bTQx?=
 =?utf-8?B?U21UNjljRjAyRnhoc3lMZzN2QUthTHN2Z3c4Y0lMNkU5Y3VVZlUyWmthSUEy?=
 =?utf-8?B?UWI4ekRYY2xCTHE3bzc4UWYzcWdybENpV2NCa0tsbUZyZmxsaDNvWGdvbUov?=
 =?utf-8?B?dDRleWgweWFHSkZKc1J5dkNkZ09jaEY5c3ZwaHZ4SkFsakZVcmRFYlJLV2JE?=
 =?utf-8?B?c1AvdW9kWG9telFEL3Y0NXQ1S0JNWHJPNzloRG5DV2kyUndISGFoWjdFTFNZ?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f663f8-ab67-44eb-0366-08dd8f3b78d3
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 20:52:55.1026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L5/0JMOb61SytA0wUzbvs3tZEXxZujF6hMl8GYhjwIDTZyw9pzOBEYpnMrDZp2TR45duNCPQojgFozbAKYXWF1SWfraB6F67lEOvscZPdfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFEC5C0F28D
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746823979; x=1778359979;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3P757eeaMGxutYLCvP3SVVduL1gnH3CByaIAUp33jAE=;
 b=JjQFb47Drd6SPqvJD5T7o2jJJnpoNpoMkS8wUPC4tDqvhVXfy6RA4siL
 YcNOtAAT+ofD/q9ji7sJxb1nmBxLxuEGcYe1H/A19f0+bMiMl9+JvtC/g
 /NuYtzU7wNMA4iGlS+mr8KsXyfMh5/fNmV6IeQ8Cyx0S+S+qL6AtWR7hk
 oLYcdx7KdlLxDPdk74MC4gYsvbmtZdlaZPMKNcUFN56r29JftU+yK/XL5
 QJQLhlkauDzrT9GCBFXGZLX5WtJidO/0IJnox6VXLHjBsE8Q+mFJDgBvm
 yrMqeHW6l3kR1IQ5y8q3/e1umQM1TY5mO0T2Jiou+OiHjOinMlhhrOTpo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JjQFb47D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add recovery clock and
 clock 1588 control for E825c
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



On 5/6/2025 2:35 AM, Przemyslaw Korba wrote:
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL.
> 
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c   | 856 ++++++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_dpll.h   |  24 +-
>   drivers/net/ethernet/intel/ice/ice_main.c   |   3 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  40 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
>   drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
>   drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>   7 files changed, 865 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index e36c5a853593..626436b87843 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -9,6 +9,7 @@
>   #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
>   #define ICE_DPLL_PIN_IDX_INVALID		0xff
>   #define ICE_DPLL_RCLK_NUM_PER_PF		1
> +#define ICE_DPLL_PIN_1588_NUM			1
>   #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
>   #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
>   #define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
> @@ -59,6 +60,7 @@ static const char * const pin_type_name[] = {
>   
>   static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
>   static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
> +static const char * const ice_dpll_pin_1588 = "pin_1588";

This looks like it's going to have the same issue as this:
https://lore.kernel.org/netdev/20250206223101.6469-2-przemyslaw.kitszel@intel.com/

>   
>   static const struct dpll_pin_frequency ice_esync_range[] = {
>   	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
> @@ -513,6 +515,107 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
>   	return ret;
>   }
>   
> +/**

...

> +static int ice_dpll_rclk_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
> +				u8 port_num)
> +{
> +	int ret = 0;
> +
> +	for (u8 parent = 0; parent < pf->dplls.rclk.num_parents; parent++) {
> +		ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &parent, &port_num,
> +						 &pin->flags[parent], NULL);
> +		if (ret)
> +			return ret;
> +		SET_PIN_STATE(pin, parent,
> +			      ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
> +			      pin->flags[parent]);
> +	}
> +
> +	return ret;

This could be return 0; initialization would no longer be needed after that.

...

> @@ -525,8 +628,7 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
>    * * 0 - OK
>    * * negative - error
>    */
> -static int
> -ice_dpll_sw_pins_update(struct ice_pf *pf)
> +static int ice_dpll_sw_pins_update(struct ice_pf *pf)

unrelated change.

>   {
>   	struct ice_dplls *d = &pf->dplls;
>   	struct ice_dpll_pin *p;
> @@ -655,22 +757,14 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
>   		}
>   		break;
>   	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
> -		for (parent = 0; parent < pf->dplls.rclk.num_parents;
> -		     parent++) {
> -			u8 p = parent;
> -
> -			ret = ice_aq_get_phy_rec_clk_out(&pf->hw, &p,
> -							 &port_num,
> -							 &pin->flags[parent],
> -							 NULL);
> +		if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
> +			ret = ice_dpll_rclk_update_e825c(pf, pin);
> +			if (ret)
> +				goto err;
> +		} else {
> +			ret = ice_dpll_rclk_update(pf, pin, port_num);
>   			if (ret)
>   				goto err;
> -			if (ICE_AQC_GET_PHY_REC_CLK_OUT_OUT_EN &
> -			    pin->flags[parent])
> -				pin->state[parent] = DPLL_PIN_STATE_CONNECTED;
> -			else
> -				pin->state[parent] =
> -					DPLL_PIN_STATE_DISCONNECTED;
>   		}
>   		break;
>   	case ICE_DPLL_PIN_TYPE_SOFTWARE:
> @@ -902,7 +996,7 @@ ice_dpll_input_state_set(const struct dpll_pin *pin, void *pin_priv,
>   }
>   
>   /**
> - * ice_dpll_pin_state_get - set pin's state on dpll
> + * ice_dpll_pin_state_get - update pin's state

Also unrelated but probably worth another patch to correct this.

>    * @pin: pointer to a pin
>    * @pin_priv: private data pointer passed on pin registration
>    * @dpll: registered dpll pointer

...

> +static int ice_dpll_synce_update_e825c(struct ice_hw *hw, bool ena,
> +				       u32 port_num, enum ice_synce_clk output)
> +{
> +	int err;
> +
> +	/* configure the mux to deliver proper signal to DPLL from the MUX */
> +	err = ice_dpll_cfg_bypass_mux_e825c(hw, ena, port_num, output,
> +					    false);
> +	if (err)
> +		return err;
> +
> +	err = ice_dpll_cfg_synce_ethdiv_e825c(hw, output);
> +	if (err)
> +		return err;
> +
> +	dev_dbg(ice_hw_to_dev(hw), "CLK_SYNCE%u recovered clock: pin %s\n",
> +		output, !!ena ? "Enabled" : "Disabled");

str_enabled_disabled() could be used here. Also ena is a bool so '!!' 
shouldn't be needed.

> +
> +	return 0;
> +}
> +
>   /**
>    * ice_dpll_output_esync_set - callback for setting embedded sync
>    * @pin: pointer to a pin
> @@ -2064,12 +2391,15 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
>   			       enum dpll_pin_state state,
>   			       struct netlink_ext_ack *extack)
>   {
> -	struct ice_dpll_pin *p = pin_priv, *parent = parent_pin_priv;
>   	bool enable = state == DPLL_PIN_STATE_CONNECTED;
> +	struct ice_dpll_pin *parent = parent_pin_priv;
> +	struct ice_dpll_pin *p = pin_priv;

Is there a particular reason for this change?

>   	struct ice_pf *pf = p->pf;
>   	int ret = -EINVAL;
>   	u32 hw_idx;
>   
> +	struct ice_hw *hw = &pf->hw;

Declarations should all be together. It looks like this won't RCT so the 
initialization should be moved out.
https://docs.kernel.org/process/maintainer-netdev.html#local-variable-ordering-reverse-xmas-tree-rcs

> +
>   	if (ice_dpll_is_reset(pf, extack))
>   		return -EBUSY;
>   

...

> +static int ice_dpll_pin_1588_state_on_pin_set(const struct dpll_pin *pin,
> +					      void *pin_priv,
> +					      const struct dpll_pin *parent_pin,
> +					      void *parent_pin_priv,
> +					      enum dpll_pin_state state,
> +					      struct netlink_ext_ack *extack)
> +{
> +	const struct ice_dpll_pin *parent = parent_pin_priv;
> +	bool ena = state == DPLL_PIN_STATE_CONNECTED;
> +	struct ice_dpll_pin *p = pin_priv;
> +	struct ice_pf *pf = p->pf;
> +	u32 hw_idx;
> +	int ret;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	hw_idx = parent->idx - pf->dplls.base_rclk_idx;
> +	if (hw_idx >= pf->dplls.num_inputs)
> +		goto unlock;
> +
> +	if ((ena && p->state[hw_idx] == DPLL_PIN_STATE_CONNECTED) ||
> +	    (!ena && p->state[hw_idx] == DPLL_PIN_STATE_DISCONNECTED)) {
> +		NL_SET_ERR_MSG(extack,
> +			       "Pin state on parent is already set");
> +		goto unlock;

Looks like ret is undefined if we take this path.

> +	}
> +	ret = ice_dpll_cfg_bypass_mux_e825c(&pf->hw, ena, pf->hw.pf_id,
> +					    hw_idx, true);
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_dpll_rclk_state_on_pin_get - get a state of rclk pin
>    * @pin: pointer to a pin
> @@ -2122,7 +2509,8 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
>   			       enum dpll_pin_state *state,
>   			       struct netlink_ext_ack *extack)
>   {
> -	struct ice_dpll_pin *p = pin_priv, *parent = parent_pin_priv;
> +	struct ice_dpll_pin *parent = parent_pin_priv;
> +	struct ice_dpll_pin *p = pin_priv;

unrelated change.

>   	struct ice_pf *pf = p->pf;
>   	int ret = -EINVAL;
>   	u32 hw_idx;
> @@ -2148,12 +2536,76 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
>   	return ret;
>   }
>   
> +/**
> + * ice_dpll_pin_1588_state_on_pin_get - get a state of a 1588 clock pin
> + * @pin: pointer to a pin
> + * @pin_priv: private data pointer passed on pin registration
> + * @parent_pin: pin parent pointer
> + * @parent_pin_priv: pin parent priv data pointer passed on pin registration
> + * @state: on success holds pin state on parent pin
> + * @extack: error reporting
> + *
> + * dpll subsystem callback, get a state of a 1588 clock pin.
> + *
> + * Context: Acquires pf->dplls.lock
> + * Return:
> + * * 0 - success
> + * * negative - failure
> + */
> +static int
> +ice_dpll_pin_1588_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
> +				   const struct dpll_pin *parent_pin,
> +				   void *parent_pin_priv,
> +				   enum dpll_pin_state *state,
> +				   struct netlink_ext_ack *extack)
> +{
> +	const struct ice_dpll_pin *parent = parent_pin_priv;
> +	struct ice_dpll_pin *p = pin_priv;
> +	struct ice_pf *pf = p->pf;
> +	u32 hw_idx;
> +	int ret;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	hw_idx = parent->idx - pf->dplls.base_1588_idx;
> +	if (hw_idx >= pf->dplls.num_inputs)
> +		goto unlock;

Looks like ret would be undefined with the goto.

> +
> +	ret = ice_dpll_update_pin_1588_e825c(&pf->hw, p,
> +					     (enum ice_synce_clk)hw_idx);
> +	if (ret)
> +		goto unlock;
> +	*state = p->state[hw_idx];
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	return ret;
> +}
> +

...

> @@ -2593,10 +3051,25 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
>    */
>   static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
>   {
> +	struct ice_dpll_pin *pin_1588 = &pf->dplls.pin_1588;
>   	struct ice_dpll_pin *rclk = &pf->dplls.rclk;
>   	struct ice_vsi *vsi = ice_get_main_vsi(pf);
>   	struct dpll_pin *parent;
> -	int i;
> +	u8 i;
> +
> +	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825 &&
> +	    ice_pf_src_tmr_owned(pf)) {
> +		for (i = 0; i < pin_1588->num_parents; i++) {
> +			struct dpll_pin *parent =
> +				pf->dplls.inputs[pin_1588->parent_idx[i]].pin;

missing a newline here. Also, if you need perform a check on a 
declaration, please break out the assignment to be with the check.

> +			if (!parent)
> +				continue;
> +			dpll_pin_on_pin_unregister(parent, pin_1588->pin,
> +						   &ice_dpll_pin_1588_ops,
> +						   pin_1588);
> +		}
> +		dpll_pin_put(pin_1588->pin);
> +	}
>   
>   	for (i = 0; i < rclk->num_parents; i++) {
>   		parent = pf->dplls.inputs[rclk->parent_idx[i]].pin;

...

> +static int ice_dpll_init_info_direct_pins_e825c(struct ice_pf *pf,
> +						enum ice_dpll_pin_type pin_type)
> +{
> +	struct ice_hw *hw = &pf->hw;
> +	struct ice_dpll_pin *pins;
> +	int num_pins, i, ret = 0;
> +	unsigned long caps = 0;
> +	bool input;
> +
> +	switch (pin_type) {
> +	case ICE_DPLL_PIN_TYPE_INPUT:
> +		pins = pf->dplls.inputs;
> +		num_pins = pf->dplls.num_inputs;
> +		input = true;
> +		break;
> +	case ICE_DPLL_PIN_TYPE_OUTPUT:
> +		pins = pf->dplls.outputs;
> +		num_pins = pf->dplls.num_outputs;
> +		input = false;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	for (i = 0; i < num_pins; i++) {
> +		pins[i].idx = i;
> +		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
> +		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
> +		pins[i].prop.capabilities = caps;
> +		pins[i].pf = pf;
> +	}
> +	return ret;
Looks like ret isn't needed at all. It's only initialized to 0 and 
returned here; return 0 directly here.

...

> @@ -110,6 +110,7 @@ struct ice_dplls {
>   	struct ice_dpll pps;
>   	struct ice_dpll_pin *inputs;
>   	struct ice_dpll_pin *outputs;
> +	struct ice_dpll_pin pin_1588;
>   	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
>   	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
>   	struct ice_dpll_pin rclk;
> @@ -117,6 +118,7 @@ struct ice_dplls {
>   	u8 num_outputs;
>   	u8 sma_data;
>   	u8 base_rclk_idx;
> +	u8 base_1588_idx;

I believe kdoc needs to be updated for these.

>   	int cgu_state_acq_err_num;
>   	u64 clock_id;
>   	s32 input_phase_adj_max;
> @@ -133,3 +135,23 @@ static inline void ice_dpll_deinit(struct ice_pf *pf) { }
>   #endif
>   
>   #endif
> +
> +#define ICE_CGU_R10				0x28
> +#define ICE_CGU_R10_SYNCE_CLKO_SEL		GENMASK(8, 5)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_M1		GENMASK(13, 9)
> +#define ICE_CGU_R10_SYNCE_CLKODIV_LOAD		BIT(14)
> +#define ICE_CGU_R10_SYNCE_DCK_RST		BIT(15)
> +#define ICE_CGU_R10_SYNCE_ETHCLKO_SEL		GENMASK(18, 16)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_M1		GENMASK(23, 19)
> +#define ICE_CGU_R10_SYNCE_ETHDIV_LOAD		BIT(24)
> +#define ICE_CGU_R10_SYNCE_DCK2_RST		BIT(25)
> +#define ICE_CGU_R10_SYNCE_S_REF_CLK		GENMASK(31, 27)
> +
> +#define ICE_CGU_R11				0x2C
> +#define ICE_CGU_R11_SYNCE_S_BYP_CLK		GENMASK(6, 1)
> +
> +#define ICE_CGU_BYPASS_MUX_OFFSET_E825C		3
> +
> +#define SET_PIN_STATE(_pin, _id, _condition) \
> +	_pin->state[_id] = (_condition) ? DPLL_PIN_STATE_CONNECTED : \
> +			    DPLL_PIN_STATE_DISCONNECTED
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 3b2233a84f2e..07d4d135795b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4814,7 +4814,8 @@ static void ice_init_features(struct ice_pf *pf)
>   		ice_gnss_init(pf);
>   
>   	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
> -	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
> +	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK) ||
> +	    pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
>   		ice_dpll_init(pf);

I think it would make more sense to set the proper feature flag based on 
this MAC (ice_init_feature_support()) rather than directly checking the 
MAC type here.

...
> base-commit: daa2036c311e81ee32f8cccc8257e3dfd4985f79
This doesn't apply and the base commit is relatively old. Please be sure 
to rebase before sending.

Thanks,
Tony

