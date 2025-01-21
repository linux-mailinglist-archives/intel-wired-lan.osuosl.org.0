Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 762DFA18087
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2025 15:54:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25E44812BC;
	Tue, 21 Jan 2025 14:54:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cBKTAobgxTCU; Tue, 21 Jan 2025 14:54:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6723E812C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737471275;
	bh=9czXIPyJmdLbv2vtpJ3Vyk7Z2c4jP9ZPQ6/osMBX3Yk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MpSCkGSucA0SwrmQhkqy51nlvMZfFbAIEtwHIHeA3b4e27m+aamLYGgVy8wBJ3KqL
	 dURNUi/7qqZVdcJI0OYl3vGwN+y5KWVmA5lMg9bqd3h3n6og2UkatkBr/K8t+UEoqn
	 +UbaAH8uA+BCOeYKI+lFMswspX9EWpmQjbVYoq42tTA0+hnHAmPNnwghnZ9cEOdIfo
	 vVn4eRxLnz5oPF0350BOESgSQMsZIRefYS1Ru2Lo+jejt2MN3UQ47kD6PpNRvr7blI
	 EXyk852WboZgU3CfRT1dSTmHRLzodkSwccjL/w7Pjfqo0MgjWRnm1Eh+J85LI/MNxU
	 ps4bTToxXtlIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6723E812C2;
	Tue, 21 Jan 2025 14:54:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 02A98959
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:54:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4850417E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FR5cs4ZTFI6h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2025 14:54:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DF6C5415E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF6C5415E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF6C5415E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 14:54:31 +0000 (UTC)
X-CSE-ConnectionGUID: QMDFlKQ0StuyjMLLSfMFZA==
X-CSE-MsgGUID: hC51r8e5Rce2u0v+vBHAMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38039832"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="38039832"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:54:31 -0800
X-CSE-ConnectionGUID: KN+uYg/gR4KXnVIRNxgJHw==
X-CSE-MsgGUID: FMNSILKYQWKclhKZdn52gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137696515"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 06:54:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 06:54:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 06:54:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 06:54:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZBxGSqUaJck08AEERs1kmLrTI0Mz0YyC/QSxV9MxDm6bym9/A3HzX7ctegxA196tayU+Sq100GeQLLf4wG+fw+urzOqmFQDuCCEKLqkwsGUmNh7TmMiU6hdOC0W3v8ehKS7B8JXn5UXhIXR8GXVSmK/x7VTR717iS07LIqLtHtESNZporeHdTtRWGREQ/woLz/OSNfmsFQ0vFAjToIkvqF67rI1cmGCY68exBVUqV5/eRloDhkZ7UF8Pp0T5DLrznwLzxwxsu7NJow1p29i98vo7LuvODNPHV8isImIiA9WLKfa+wiT0ZUROAyExmxr6U63KXpYzFgizvM1BvziRvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9czXIPyJmdLbv2vtpJ3Vyk7Z2c4jP9ZPQ6/osMBX3Yk=;
 b=THDQXz6o8PFa4y/OA/GZVeG9ShcmC0fBOMpiL2DOTCmQM39m6KN+HFOa+cwI36sxKpvTSF9DRrM2JPKqL6VUCYo/pPl14I9GwuPJODcMMXYU4j0Sfo1CNXJqbNrJKWo7irkOIW4l3lqrAmfA2EqZOQchTbzdkqGH7XhFoYDhlBlysUWpySkQnqmZLHBWWSdsQ2CchJi1CEe/M97UwjRJxqkcLQU0m+YyOP+39iQX2L6pAZLQ12XEwGO3mZuep2KTam+whbAS/OeDGBperqu7PLpsATLgjfkGHNCGOKhnLowCHYTjRMzkBK6T3SCCA+s9vooWlsztUG/pxxr8/nUZoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 14:54:24 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 14:54:24 +0000
Message-ID: <2b9ea13d-9b39-451e-8759-148b6716e464@intel.com>
Date: Tue, 21 Jan 2025 07:54:13 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
 <20250120170358.3f4181a6@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250120170358.3f4181a6@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0017.namprd06.prod.outlook.com
 (2603:10b6:303:2a::22) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: 43edc52e-8336-4d36-555b-08dd3a2b7ee2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmZnM0VjdEUvTThWZlhZUkFHZE13K3FFc3NsMU1QS0ZyVW9VTXBSZ0w3U1hV?=
 =?utf-8?B?Z1lPcW5hZlRoc2ovNkZIUlY1WDVyKzBkRk02cWxUOEgvOHVlU004RHNpMmRx?=
 =?utf-8?B?QktzS240S1ZTUENjd0YySkVQUTM0VVM5bGVONG8wRmNDY1EyTjJ2WUhwekRY?=
 =?utf-8?B?NTluZHhDWjB6OTQxZTdxM2ZJb1o3Ym1YRE9ZNmtBZk5MQVAzYTFySVdhTjNU?=
 =?utf-8?B?K1ViOE1tSmNRa25ZSFR6eXlsU28rSUd1WjJ1V0V0ejNWaExyL0xKcm43d1VS?=
 =?utf-8?B?UnliQmlJcVJvZkVOclVlVW9IdCtRUWhLY0FQZ2ptYzVQSnlkYk14dHNMemhq?=
 =?utf-8?B?SHRGdkZlSndEVDdxSmVjT1MvSFhITmxOZUJBbnl3S3B5b2NEYVNpQzZNdTFR?=
 =?utf-8?B?MzNTVlFVMGlmQ0IzNHpRdms1R25Ed1FCVWl0bFVMdG8zVlZsU3kwa0dFVXlL?=
 =?utf-8?B?TWNBRUJORExaT1NZV2RHN3N2SU1saGQ3MUh0eVkxdjBNNHdhTFlZanBhQnBW?=
 =?utf-8?B?YVNDTmt3SzA3UDlmU0hmcE1DcEVuK1NWaXBYMmlqWDh3V25YZFd6UHF1ZGg5?=
 =?utf-8?B?ckUxSVZsZ3UvUyt3eWM3d2hGelBPVTNIcVNqb004eE5HVlJXRU9MOVNjZFZQ?=
 =?utf-8?B?OFVHcWJxN3Q1QXU3TGFQTEh0eTRjeHRlNkNvb05JaGhPakYyeG54bk5RRXJE?=
 =?utf-8?B?UjM3dlpOVmo0U2pkdnVqWXRvZ0VTODJxdXhRZHVqZVJVU2VNdi9LUE1NdFVj?=
 =?utf-8?B?VlZPNXdmdGs2TGZjamoxMlhNMUc1b1E3NjBLYUhoQzY3R3J0QnNqZ0RrUFlm?=
 =?utf-8?B?MUkxOVhMaUhkNmFCYy9wVFQ0UDh5U29kbUFUdjA3RndabFJDV0c0d29MY1hp?=
 =?utf-8?B?VEtleXVsVVMzaHp1NXo3QVllWDUxUnoxYkxRQlJIWU9QVC9EeXZlZzlVRGpz?=
 =?utf-8?B?N3BweFEyUFV4YzJQY2tWS29CSzBSRk16bUI4ZGFCTkErQ3N5eW5DUTRrMzNI?=
 =?utf-8?B?ajFjaHlVOTBERGZzMkRaZW5PUlRLcEdoV1N5ZHEvUHJ3L09Rb09MdUMrR0VE?=
 =?utf-8?B?Y25TRHFjTlRBcFo1b3dJN0VmZit6ZVNCU2J6S3lXcTZ1V1M3TmhGbVA4RytJ?=
 =?utf-8?B?N0tsbENBS2ZvTm9HT0JLRlU3bWU0bWszYTROVGZvOTViZzBHU3lhbGVDc2kr?=
 =?utf-8?B?WjkwbjVnU21yMzNmL1k1YU9tc0VEdGRWeUw2RFIzYjJlSjhLak9QcTdvR1BT?=
 =?utf-8?B?Q1NmVjRiWENMbHJaZm5yZGRNNjVDdG5jNzJUb1VpYjgzcUVQMEhmeTQ2eDJT?=
 =?utf-8?B?dFBlM1Z3SlR5Nzh3NkFaS1BVVzRRUTZ2U2pjL0NjT3BPU0NndzVFNGFNQVJm?=
 =?utf-8?B?ZSs5Y2o5aWo4MVhvYWxDTmNFUjZRRFo5RlNaY3VKVWM2TVVFRStnaTE1Y2Vr?=
 =?utf-8?B?NTdLZFMwL1dQYmh5ODlJQXg5b2tGd2ZhcHJsSmM4MlJNWUpRWkNQRnJHMFRu?=
 =?utf-8?B?eEl0Wk5oajFONlNReUExZXFzcFdwL01vUVR5MENmelUySVRZMC9KaWdpZERN?=
 =?utf-8?B?SXBtdXB5bUxIa3hKaUE0RXF3YmJqNkNRbTZmeU1hdFZkcXA1MHpWMGx4Q2dJ?=
 =?utf-8?B?MUxTS2ZWbEpTL3VCZUxrRUpCMFVUVDYvcWI4M0MrTmFKbUF4ZmMyaXJ1N1dW?=
 =?utf-8?B?RnBzOEgvb0RqNkVXV3psdUZrQi95VVV2THhudzc4dW5OWTNCMVdIVnVLekxk?=
 =?utf-8?B?QnFqZlBWRVFma2pCdWJpcWlubEV2M2U5QkdHS2JUMTFCYnBwbFZFeE15TXlF?=
 =?utf-8?B?M08yUVNaUmd3Y0VtWllOUVFkb01lOTg4dlM5TlZCbVMweG5PM0NVS1graWZM?=
 =?utf-8?Q?UaQO+8LZMneBp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVBxOGo4K0JLS21tTHlDL2VCNUk1cjdOMWZtWml2UllWUUpOdjhDYzJyQkxk?=
 =?utf-8?B?aU51QzhKejlydmpSUGxHc1c1Vk4wekxHUTVUQkp3a3N5R2pRMnJnb2hUZWdI?=
 =?utf-8?B?RjJLRHV6NGNiQkFSREhtV000OGpJZTZ1YlhJdHQwRVY5MlpqVVpIZFI4TUwz?=
 =?utf-8?B?bkJ0dDE5U0k0aWRJTTQzRVhvV3pock5HbXkwdDVTMHFUdUVkMVFPeXFib1pF?=
 =?utf-8?B?TTBKNXZmZkxZR0VlSFYxMG1CMTdGdDkyQjRzTTg0VGFrcERsTmZZS2hSMnFx?=
 =?utf-8?B?TmYrNjBwVjJPb1h5dW9TemthNll1VEJBTmQxUTZvRVNEQ1N4ZENyYzAraCt6?=
 =?utf-8?B?N3BqRlNjMUw4Qmc0Sm53VjFvRzRZVTVLeVB6WkZKWFpWMjZXWm9YeFpVckxL?=
 =?utf-8?B?L2IwRlJCaHRReFJreXRzYVh4TnB0WXloSDZqc1dEeXRmaVRmSmtMcW9ZK1VV?=
 =?utf-8?B?THN5R3ZJWVJKb3VWdmZBVEVYcWdmZWNlZ0JyNFRURzd4d2VlQjhZNFZwaS9O?=
 =?utf-8?B?aURKZnE0QUdVSW9Zbk94eEY1WHVjNGVTcmttSXQ4dmdOTU83RXJXNGhUY3Zu?=
 =?utf-8?B?QjQrMFlaN29jbnlob1RhV2xqbUp2TG1sZU9xeXdscDAvTmlkRW1SdFBpVWhh?=
 =?utf-8?B?aW9iQzRBL082VXVQOFR3QVpSZXQrZUdhQlQ5b2xQa1FCTnJVVVd1LzNta05U?=
 =?utf-8?B?WDNUdENIUEFlbVgwdXEwS0M1V0d4R0tkQVJVNW9LcFR0S2VjZTUvTDFwSk9V?=
 =?utf-8?B?d0hYZXZuQ0tHVUV1QWNyVnpla0hwKzE0c0FCSHNNOEhDZUhDb1prcEQwdUNR?=
 =?utf-8?B?T2FZM2p0LytxV3FoUi9CTG9uU1NJaVZzRHg2UGM5aVlYc2R1R3NsbEw3YnRP?=
 =?utf-8?B?dHp6WUJSKytYU2hGUTV6WGcrdktzdVJHcGRGTWpNa2ZmMjFtNkVpK1RFSGZH?=
 =?utf-8?B?bmxicnRNRlRMcnlsb3pSY2tyR1RmeEZIU0xFdHhsRHc2Y3JDektFQzhmcGhZ?=
 =?utf-8?B?RCtSTGVOQVRnVVpWZG1vUmhMNytCL3RidkMzZExtV1Nvc1M4OVprYXBqS3dL?=
 =?utf-8?B?THNuWjJqNkZhcWIrWmErZW1UUk9hM2lnWmdYMEtTeVZWUEIyZUhZSy9pclF5?=
 =?utf-8?B?RXVONnhxZ0VkeUdzeWpMWWJWK2YrUXN2OXZ2K2x0bVBkNVA1aEk0MmNSSXQv?=
 =?utf-8?B?b0w2SXF5VXRSSjJlRUFWSGtUVVlMbkZxWFJDVG5nL0RVbi9MTmI3VVozcGxs?=
 =?utf-8?B?dFJsRFNGNmJkR3ErcXJjSFZ5YVBYZlRKV1djbElvZVFrK2tsMUEyams2OVhs?=
 =?utf-8?B?bVBLZFZQRk9yaEs5dFZDcVcyaFN3bDFLR2txdkRoeWE0TW0zRkx2RUtCUm1E?=
 =?utf-8?B?cDVocVdOR2dHbUdMeTdwLzdqaGlDaWRaUkRWZ1RGUlVXckZuMFNHODJ2Uk1i?=
 =?utf-8?B?R0V3Q1hUbktsZVZIcjlnd1FETGFvS3hCRlJvcWEwOGRuTEpMaCsvRXp2SlBE?=
 =?utf-8?B?OXpiV05VWkFpT1JZSExYcFpaMTBBUnN1eUpQT0h2RitXelVJNjl4ZS9FOHkv?=
 =?utf-8?B?eFZDSlVidWgyWjdPdnN3aTI2ZDVWdG5JandFWFJZRGcvTFhHdWN4RlFmNVlp?=
 =?utf-8?B?Ni9MNVE2aXR1M1oyeWx4L3Y4RzNqTXdudGV5d3cySW9RZzVTWkpERUlBa3Bi?=
 =?utf-8?B?VFI4S3dicXdUSnVmT2ZoNVQ4U0ZCUy9INEt6QlhleHcwVVZVdlkxRWVNQWJI?=
 =?utf-8?B?TVhGVGxyU3BTU0FLMHVXaVdUb2w2QmRkTVd4M2Y2TjhYYnRWUkR4TVBjc0Ur?=
 =?utf-8?B?dGdjWlpSL2JwbEt4cm1PeFhReWZJUjAyVlA0Z3Z2NU91aUNSUTg4eWhhUFBZ?=
 =?utf-8?B?ZlpZQTljUWI2cjlaRDYzRzFUS1g5SkF3bGFTR21GZHJTNlN1anZkMkZsNkVY?=
 =?utf-8?B?SU1WbGNSQlJ2YnNEYXlIV2Z2UnBjcWxpc28zZCtJUWJzVllzM000OVBVaE9n?=
 =?utf-8?B?UkQxV3R0enhzRHorNTNidEhjb1NMRlROcGdZOVNDckRKYk91TXVvRzhOSUxI?=
 =?utf-8?B?NmZ3aHVVOVRQaHZobjIwSDNjMXROZlRaTStWT1dHY04zQi9IS0tSclBxRUZZ?=
 =?utf-8?Q?DDnPOMyQihOVGrCLugfrG2mpn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43edc52e-8336-4d36-555b-08dd3a2b7ee2
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 14:54:24.4914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I0GzdzeSyYr6tc1Y5tICQpgmv+8ZUXON/em6MUzWnGBjTl0J6eYCMG/vCqRJ/rkwYIFFPQJKAPvzHNrO5gj2BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737471272; x=1769007272;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+1d11qLr7QePFYdsVogpMHHxs4HVUp/m6JNg9D4qPt8=;
 b=IGvYYA4WuWe0bU3tt53Kpj/Y6Fzm93Z9hOQHd5hPovpL6kIRKpr0cOiV
 rnHgICrUVbhOMwyGnbTI06X+5eBilgpfq0ttXXqLwodGQSK89gwG5SCFb
 ST0lES7K3hdyViLph+ev1oht9ssyzqCQD/7ziCh/JSQ5RsWWaCPQs6sNv
 Aj9MNSd6E1pHsyUlv99aD5l4yhTn6DwRMJhpRb1TBIGtNBf1NFF6LKhZ4
 WV8hiRVoe0fzjUFB99ulP4SCb9dy6Zxe7R9CzLLbL0w0LKIOJBz4qXDul
 0EJrXi3DpTdD1QSqGHWScBBs06Ad1x5bRFS32PybNqMLox+lxOF6xcR1j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IGvYYA4W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/5] net: napi: add CPU
 affinity to napi->config
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



On 2025-01-20 6:03 p.m., Jakub Kicinski wrote:
> On Fri, 17 Jan 2025 17:33:30 -0700 Ahmed Zaki wrote:
>> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
>> after reset. However, since there can be only one IRQ affinity notifier
>> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
>> management in the core (which also registers separate IRQ affinity
>> notifiers).
>>
>> Move the IRQ affinity management to the napi struct. This way we can have
>> a unified IRQ notifier to re-apply the user-set affinity and also manage
>> the ARFS rmaps. Patches 1 and 2 move the ARFS rmap management to CORE.
>> Patch 3 adds the IRQ affinity mask to napi_config and re-applies the mask
>> after reset. Patches 4-6 use the new API for bnxt, ice and idpf drivers.
> 
> Sorry for not-super-in-depth reviews, the patches didn't apply for me :(
> But feels like we are pretty close.

No worries, I will rebase and send when net-next re-opens.

Thanks for the review.
