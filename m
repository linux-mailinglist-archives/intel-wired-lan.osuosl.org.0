Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2CBB12FBF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 15:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15205611B9;
	Sun, 27 Jul 2025 13:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cub7My-JHzXV; Sun, 27 Jul 2025 13:46:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 057FE611C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753624007;
	bh=4qNbAwfZypejOkeQNkYzXLOTJUkHSmiIomPDImmqGbk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xMt72G9leG3vtqPMFumBWBIGvPYnNgj+BSn14HojhL2XSSCL/7eiJqZY7RYGYqmP0
	 LJtv0zgH4BFoiNx0g4lmT6J2c5iDc7qKHBb61elwyAPOVF8yqOXRgzKnmWjNSGc18K
	 OAMUZBYn8l6rVNmhJ2zGyiZn5/n+VpeO24yBaNi+zP2eCtZ/D9VqrmsOhsFhCE2unv
	 eX9leB9k6UedXj6Gs13soZJ7uR+sY2ZYA3sK2ZxzXRIdzBkyO3jHpOhjLl9uX9mb+9
	 9Am2yZLyTzfRsJSIgQ6Tj2benNQLLPfcPu7o30Qv9vVzmlvyLi5WsCKyB/U76I4X6r
	 XE8fq5RIsnDyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 057FE611C3;
	Sun, 27 Jul 2025 13:46:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 378E6231
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2976040AA7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id teDjg-qByY9f for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 13:46:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CCF440077
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CCF440077
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CCF440077
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 13:46:43 +0000 (UTC)
X-CSE-ConnectionGUID: HXHzDcgHQ/WnyEwloT4hRg==
X-CSE-MsgGUID: SJlZ6evVQDikYLNw9iW9jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="58509176"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="58509176"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 06:46:40 -0700
X-CSE-ConnectionGUID: Cj9Lid7tRUmld/jODKL9IQ==
X-CSE-MsgGUID: riURAE0ESTqtA5nsp4hwwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161395507"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 06:46:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 06:46:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 27 Jul 2025 06:46:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 06:46:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jI42v3E8ZLP3b4jUhIdkRyaiwi4JBoIAPEKQAkV8uz5PTjFQzqS7dSQZJw9S6HFTzAlep93QkG63QKsZkkBAnJMPSS4NB2LkBli3AGXL7UBZDN9QJetTq3cISQ2pq3R/1BCB6dEiDz4cWP0Fmm35CiUeZZ1mXAOay32+Cy38T3hX4UPfZvvdz2vyrUHCyXt+Pcjijki8Q+j7F5tFMHt2yySdzbVYcct4lO85KjtPlJBnjVHmSprzktLYoGG8uDUGW2wle4oIr6YTfLiSN8N9b/7jkkosVoqd4/d1FFF3LFtY9qfAW+z8aVhVsUd6PnHTWw/LgQdyZa8buTACCPDPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4qNbAwfZypejOkeQNkYzXLOTJUkHSmiIomPDImmqGbk=;
 b=ieTzXNR0XmpAB4ey+fAQCUXBjxD0C/RZljjJa/TbD46RpbUEkgdLvGVgLbwVOEOwT8j2+NvbOz4IwmHm7Lgp2uAOGzgftfGYYRcDneRwb3AqYmPSNxOPSxSkGgX3K1WRx5py0iPQCa07eggNZbN9SDrNRAgjWMpqTnZ3rpgCCXJ6hWBcTVsJ3VA+4jsflIVNjbQ3xQdPkU8KikOHW6WChDZoAagR73jTOUCMlxP7PKFEjy/KfAcSLrbaeCNTmvGQENul3cuiiCaPyrbI3g0dD1ab8XGNjgZVfP6un954MwZGHSRXsErqHTpHGVNgvLsv7aoP7IpplLGes/2ZoGGJ8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3SPRMB0026.namprd11.prod.outlook.com (2603:10b6:208:575::6)
 by SA1PR11MB8476.namprd11.prod.outlook.com (2603:10b6:806:3af::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Sun, 27 Jul
 2025 13:45:55 +0000
Received: from IA3SPRMB0026.namprd11.prod.outlook.com
 ([fe80::7d8f:a435:614:a319]) by IA3SPRMB0026.namprd11.prod.outlook.com
 ([fe80::7d8f:a435:614:a319%3]) with mapi id 15.20.8901.036; Sun, 27 Jul 2025
 13:45:55 +0000
Message-ID: <0c09a02b-71df-409f-96a0-6372d936ff82@intel.com>
Date: Sun, 27 Jul 2025 16:45:50 +0300
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>, <intel-wired-lan@osuosl.org>
References: <20250722200448.14963-1-iam@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250722200448.14963-1-iam@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To IA3SPRMB0026.namprd11.prod.outlook.com
 (2603:10b6:208:575::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3SPRMB0026:EE_|SA1PR11MB8476:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f8e85c8-9e43-43e7-ae91-08ddcd13e8bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2hjNnRsZ2M0czEyTVhUYkQzM1d5V2JkYjVHYkg0c2tpWExyU2M0SlFaOUkx?=
 =?utf-8?B?UmlqRmM3WXZRV1ZUdXArRTZRbVcvODQreXY2dWV5cE5qRjROUjhTMHZDNXpj?=
 =?utf-8?B?aXkyY0dYWHBUSm1PS3JwQmh3Z1ZyQnFDdTVOejNFSm5CYzZuMVFIUWxUUDRq?=
 =?utf-8?B?UXNaMXR4VlFiMHRMTHkvdnVsak5XUFoxY3lka3M4czJvMkNFWnpXZTZTRitZ?=
 =?utf-8?B?ak9KOWp1ZVV0TGRqcHNpZnZ6VFpaM2xJM1NoMXZmT3dKMVowUUVXc0NiM25R?=
 =?utf-8?B?dTZpQXA5UnVjb1A0TUlUajRPVW9EREEvUVpkYzg0d0RRKy85NUxnUzJJbnY5?=
 =?utf-8?B?OU9rQjBta3hvMVNwU3dkWVphUlhWaC84SlFMbWdIcUg5TSt5RHNtVEVsRkN4?=
 =?utf-8?B?bnVJdjhYOHYvMEhHN1hSSTNBSVJIdkZCcXN3YjUvUHR0ZG12S1p5RC83SzV2?=
 =?utf-8?B?RUlac0FJY2ZlbEdWbENGNTZqTGsvamp4SjdmK25VNk9WU1lzWXBwZy9NV1lW?=
 =?utf-8?B?amxKMXl2cGRpcWMyRUh5c2VlNzhJT0k3U3EyMStFdm9BRjlaUi80UXR1NXN4?=
 =?utf-8?B?U3pEMENWVUJqakNwR0xicmRmMWRJR3cxdDk3M1J2WHZiZHRjSHZPaCtLOFZF?=
 =?utf-8?B?SysvelVrZzVqYjhGTDhUb0xHcDNNSjBjcHk0bUtwTm5zUUZaM3RwZnRpVU8v?=
 =?utf-8?B?UGVjdGZkTWdXQU5hV3B0OHNuelVSVFNwZEZpa3VsN0tJNU8xTnVDOEtUWmow?=
 =?utf-8?B?NjM5L0FaQitmVXVTaEVQQ00vc2NzdUxuRXMvNkU0UFJHOEQ0YnlReVJLRmor?=
 =?utf-8?B?WjFQdmJpNCtlbVErUFhDL2JiQkdtMTcrVVZHTzFvZVdMZjdHVllXQzIwOTd4?=
 =?utf-8?B?TFR3NVB5Y0FSaEduOW5OTk9EY0tSS0FVSzlhREZGVTFBdFlEbnQwQVc0dzV5?=
 =?utf-8?B?MVVKWEozc1NvS0c2elRPTTdJRnR6OTJESlk3TUxjMWNrU0VLbkxUVkZGZS93?=
 =?utf-8?B?Z01hYVNTM2ZGQy9QQm04T1NIRlpFS1BOM3VKOEFlTFVjUlB2S0c3bWZXMjF2?=
 =?utf-8?B?SVdMekcyT2djV1JwZTNhYlFjckNDRWZJZENNQll4LzlVZW81YU9uWXpHV1JR?=
 =?utf-8?B?L1kxbnAxZkJHbGxPRDRqRHNscSs4Vk1BSERiMzNBSkt6S2pUZGIyMzhXRWxP?=
 =?utf-8?B?NEVBZ0pvbTFHYlNSKzNtZG1BT1RHZWZqbytQNnB2R1hIZ3BtL2NyaHRZQUtD?=
 =?utf-8?B?Y1FaT3ZRY0xmMUxnandpem1kS0hYamZKQ25qc2FDQnl4Y2I3QXBNZ1R5RDdI?=
 =?utf-8?B?VDNCWGtwakFUajJybU1lK1d2dU5DRldJeHRESWNtZ3F6WUVxY2dPUFV1dDhv?=
 =?utf-8?B?aFlnalBGVWlFOTczaDBEamhjSlJPdm9xRC9MWnUrcUpmYkxLT1FkOWs3aEdh?=
 =?utf-8?B?TW96akhEZmpoenoydVBIeWl0YkhURVB1aE15U1lJeW9xTDVsTzVJcHNIUEVk?=
 =?utf-8?B?N3N5aUR0VTlNOHBSY1RiUFdPL2dtMVlQdnlLRGZvU3lLeXFzb2ZUaE9BNFVY?=
 =?utf-8?B?SnhGdHpjSGU2ZXpFellIMEhXejZqSnJXaytGL0RqaTlYTFNqeTZycU9yRk9P?=
 =?utf-8?B?djBLdFFmYkhDT29qc3oza2FxcGR5T2t4OUFOVXNjcDgrdU43a3l2K0xQQkFl?=
 =?utf-8?B?eEc0NlJERnlwYVYxOFZEVnRqcGo3M3FmOG9udlg5V3R6b3F3ZTdyRFRvU3NI?=
 =?utf-8?B?aG1iZXJERVppR1Q0T1N1U0JKckEzbzZmUHQ3bWhLMFo5VXlaWWxwdmRPOFVD?=
 =?utf-8?B?Y3Rnd0grZEc1MHhEQVU4cFEvS1hYQTJYM2l2Q1FIZW5mWFpjZWQ3VVNhSWhn?=
 =?utf-8?B?bWN2Y01uRXIvYktuUFlhWGVGb1dvS3I2U3JGSG9IVlREaVRSS2FGcTJmVnFM?=
 =?utf-8?Q?BRazxin05Rc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3SPRMB0026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkxXVEJkZmxYOFYyMlpoTFlRZ0JYd3lxay96UEFmV2NHQVNQanR2cmtuTldt?=
 =?utf-8?B?STNhWVBWNXpKWmw4d1ZqOFJrL1ZOek9zRVFOUll3S1hlb2c0WGxJM2Z1SU5Y?=
 =?utf-8?B?QVduNll6bW9WaEh5eHZiTWVvd0V3V09RaGlDbzZJcmY2eWF0SGtIcFIvREsx?=
 =?utf-8?B?QWpRV0E2ZVZ3TnIzRGJvTWRIZEpiLzI0RVE0eVNCQUVXbUdZN3FidzZXcUxU?=
 =?utf-8?B?eVArYU8wdDc2R3h5UHZzMEpTMnBnMjNQQW1XTnRtQVFIaXRXL0N4UU1wR0Rt?=
 =?utf-8?B?U3VXL2cxUGJ6ZDdOc2ZjQ3FwMkZUa0s2dkgwOWJRcUIyQXJsQzFLcWVxMTl4?=
 =?utf-8?B?eUFVN3hGOHNLb1RwT2VEQjI3VFQwVWlCcVVGdTBtaWF2N0ptS2J6QjJSa1N5?=
 =?utf-8?B?WDZXelVyMzBVK2gwRmJ4QnRtWCtmK29CQVNwUXlHK1A4OTJZUXp0WnIvY1JQ?=
 =?utf-8?B?R0wvbXprWkVEM0JseGVoL0FRc2FXZkZJdG9hTXA3OFJ1TVhSdFg5Y2ZVbWdt?=
 =?utf-8?B?d05UOHZuY1dPTlBWMU1JdWhQTWo2Wms0eStLVFhocDB5OGZpUldXRUZDVjN1?=
 =?utf-8?B?NFdrVzFlYk8rdU4ySnJHalhxTFhnT0tjT2FBNmxmanJVUnRUWmt2NVVFN0NX?=
 =?utf-8?B?NVFKQmdJZUZxc3RRRDh1SHhCQXpDWEdPcHExVk1QZVJZcGZjQTRBSXBPdlI5?=
 =?utf-8?B?V0hJb1BidzJkMHU4K1JQWkxrMlpKOUZOek9lYUYwajcwc1BtZTd2TDlxS3Rw?=
 =?utf-8?B?QVp5eSt3YTRWYkVsWE5od3B1K0Y4YVhvL0tEWDhuMUpXWnZrejNMUlFubFVq?=
 =?utf-8?B?L3FXRjFVdkV1WkRxS1hlRlNiNGVBUktzdlNFQWdHK0RpZVRLY2pzYVcyc25q?=
 =?utf-8?B?eGZPSkxZKytPcnpFVUxiS21yaTk4MVFpNllnWGJrOW9TVTB5Qmo5M21oSldS?=
 =?utf-8?B?THJzZDMrMzBFbDl4Uk50ZWY2T0tueDJIS211NXpmd280QU1wZzBoTmFtS1Vl?=
 =?utf-8?B?U3VPeFpCWWN4RmFTcFdrQUR2M2FzWnRtRFBqb2YrcjdvbmdoTkozYjY0eXRS?=
 =?utf-8?B?eFJyMnhmOHdCeGRSN2pPUldQZGVHMG0yeEcrYVFST0xSTTlERDdka1Z2SjF2?=
 =?utf-8?B?QUtMNnpkeFJTMU53K3BXY3FLdExtMmZya2JIWm1odmxnd0NWZVVBRE1vdUh1?=
 =?utf-8?B?SkFnUllWaExrQVYxYTl1UzFkK2pjQ29SdzBpS2VEUVFBcVhUMDk4TklDdkxE?=
 =?utf-8?B?K21sdGliWFhNZmV3K0J1K1BRMlFYQlFOUEZuOHZKY0U5UWt5dndhQytMZEJE?=
 =?utf-8?B?Q3phTTd4d0U3WDBna2V5YWdJUVl6MUNTYzc0U1c0ZTFwb04wWTZQb0VvVDZ1?=
 =?utf-8?B?Ui8wcWdLT2xLeHZQMmFrTDBQLzdEekMyZEx4UG05RWZSNmt4Q1luM3VKUEl5?=
 =?utf-8?B?TU1Ba3d0d0tsZFp0VWxtcHhZNHVjMC9PR2tTeGVmUldDM05qMjNvQ3U3RG51?=
 =?utf-8?B?S0NGNTZIZFJzL1hUeWdmQitJZC9JbE1ZWVlYQnBMUlRBOVJFOHlYNDA1a3FY?=
 =?utf-8?B?dllsSmNpTzJTTHg3Sk0wQmo0bTl5U2RTcUpwTEZQSVhiUDZlS2RHWlh5ajlv?=
 =?utf-8?B?amF5aFpqSWVkWTZJUkFRcmJLZHcxbWdyUjd5YnlqL3dFVkpqRndRcWNQbVlk?=
 =?utf-8?B?OXBDVFpYVTBpNnJYY2YrUWMxbitZOW56dEMyYW5TU0tieHFUNTVNOTB6azI3?=
 =?utf-8?B?aDl2VVczY0RnSGUyMThHaWZ5a2xPUHVHajZWOHJJY1RVUVdpbDJPNTdUeGdt?=
 =?utf-8?B?cTkzeEQ5UkxjYVEwblkzcDl0Mk41V1lPWXJyMjl5Z3Q4V2t6RXNHeER1L1B2?=
 =?utf-8?B?ZHl5ajVvNExKaDZWTnNVbmxISzN3YUhGdHhSN082SmJob2p1c2RtZWlJOGJL?=
 =?utf-8?B?cjBXS2VTcUE3Z0Z0Z3VCbVJnOUl5RUdRa1hWTlpKVEFyeTVtVzNoMDhzbHZp?=
 =?utf-8?B?Wlg1a2xOTy82ZVloaExwZDdpMGNWODlRWlVGTlJ1T3d5UjB5aS9OMUVsS2dx?=
 =?utf-8?B?ZUhQaTFTWTIvenZJQ0szbEMwNnRQU3Y2WXlGRThFcFFiN0JnRWVPTHg5WEJT?=
 =?utf-8?B?TjJBTTVBVGl4ZSs1dHdWZ093SzNwa1o3d0NCNUxpd0dPTkoyeGRGczkrQmlz?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f8e85c8-9e43-43e7-ae91-08ddcd13e8bb
X-MS-Exchange-CrossTenant-AuthSource: IA3SPRMB0026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2025 13:45:55.1619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aGEBA6T+7Ny8jfzjvJ0EeuIefdKdY96UvCk3RQrVfM12LqDfB4/SvWAi3g/v/OxfXZTxH1IquqGa1hK6myOttigkhwVdiajjHk535vU1DO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8476
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753624004; x=1785160004;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+B3JxsaCWbYtUvYXVNkoGC2dhNewt3ryZ+jhDclEhlA=;
 b=f+VXUuyeyr03K7F0otcw5YdQ78FcQT4wtTrjbcatUEKx0Rst7fxGTwmR
 TEvRve34k9vkM62DTXK7OARYBQJ6MRjELKB1cy+GjXPA2G5N6soKU3tWA
 vrXv6i8tGdu4THfY+0OcHOLwqu8BQ7tE7T7kmWHyBRfQfJpIrnST8oQak
 WMHn9pZH6UDqKEIuNEuwNkQwqBa/Sgkg9BEUq/WVRArwyEwSgpMYJA51m
 I+uL93k4lzsklai98aYuaLMuY39l88QqKolNLwkY3g4h+K1twZXSGyfpK
 cScVGfFwQ2QjO4WaCQHedBmerLJ2xD4XcpEGobFNpdFy4ZsJGiDM++MZj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+VXUuye
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
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

On 7/22/2025 11:04 PM, ValdikSS wrote:
> Device ID comparison in igc_is_device_id_i226 is performed before
> the ID is set, resulting in always failing check.
> 
> Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
> Signed-off-by: ValdikSS <iam@valdikss.org.ru>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 031c332f6..2df36373f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7116,6 +7116,7 @@ static int igc_probe(struct pci_dev *pdev,
>   	adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
>   
>   	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
> +	hw->device_id = pdev->device;
>   	if (igc_is_device_id_i226(hw))
>   		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>   
> @@ -7143,7 +7144,6 @@ static int igc_probe(struct pci_dev *pdev,
>   
>   	/* PCI config space info */
>   	hw->vendor_id = pdev->vendor;
> -	hw->device_id = pdev->device;
>   	hw->revision_id = pdev->revision;
>   	hw->subsystem_vendor_id = pdev->subsystem_vendor;
>   	hw->subsystem_device_id = pdev->subsystem_device;

Hi Vladik,

Thank you for the fix.

I believe it would be better to move all the device ID related 
assignments into a single block at the beginning, rather than assigning 
only hw->device_id first and the rest later. This would improve the 
readability and flow of the code.
