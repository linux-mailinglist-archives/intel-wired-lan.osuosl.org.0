Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8869A3EF8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 14:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6E0760AE7;
	Fri, 18 Oct 2024 12:57:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dho_JdQtW3kz; Fri, 18 Oct 2024 12:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B6ED60AE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729256271;
	bh=Ai/jXLbtwmnEbHxuMtyVkvOKxLoSmF2T5BBsbmuwl2w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PzjJyqiYQlhsdtE2iR+gX8l4TRulBmV9xIUnLqSQY7NvzrHNRJYHzP/1xepsB6kC1
	 fqkEAJLp4P0/Y+FKZHSbrB1s+Sua2GElgiUsmIEmhBb4JmsRYu17LEBoB4t84AZEm9
	 uovWnaDqSOHoxsOinKFrrE36UJLIXbNSU8QKCnvv0IrNS0Dc1Efi/3Rq09AdgOabQJ
	 Vus1/CCzJvywCYp6J9iWwFX/Rwv/9UO7Dq6ggPzSj9b/J+7AZlvx7hiZaeMkHnsO5W
	 sVVe3WVuOwPU3YwYVlpA4sRsOcaVVOmB2RDGUw5JR0GFAEub5RiBSdZ7UNgYLlhvrb
	 7ksb7fbD9Y/rA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B6ED60AE1;
	Fri, 18 Oct 2024 12:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 162AD27DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10798816A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qwArubG5zdM7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 12:57:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9041F815AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9041F815AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9041F815AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:57:47 +0000 (UTC)
X-CSE-ConnectionGUID: njGpgRaMR6GvlZGfDKrpaA==
X-CSE-MsgGUID: r6lraF8pS0mVopB05QUG2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28944882"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28944882"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 05:57:46 -0700
X-CSE-ConnectionGUID: 3EkVc+8MT0GXcquUjKerkQ==
X-CSE-MsgGUID: N5Q3jqx3Qt6JxY/hkVQwMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="109686089"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 05:57:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:57:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:57:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 05:57:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 05:57:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8NXD+b528BAoVzSJzBUzJ0Fd9z7gRuh5hLbyvgLc+1dy6yGDDChfUHeHJ7VQpSBtXQopdnV3vvzLUy0STw1ehhVNLf3SnNarKo2AAxmFhDI2tOpHMthH6eK8x2dv5WFqCrm65x/MMN/CYKSaN9nUgEy0ZoG502fVYHi3pOUw7VhryuRkESTAty0KzwPQ9vN0fcMR8Jcz4gxtEmu0LH/nEZQ4NVZfpup17Og0n7nrkvhmutB+UMwKVyp6U0Wk58Ol+7YkgRTOpTz1tyAOgeaHMPIw/W6EghoefKmAAA5frtFZEsGTF5jQ98Vc0+gRUaIu9R6l1qFiONU/64RzlQiCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ai/jXLbtwmnEbHxuMtyVkvOKxLoSmF2T5BBsbmuwl2w=;
 b=IMvuyy1fCoiydGXym4mfLgP35CzBvennWrVzBQemfa/eiOKkbN1aovM5K5j6xXbgiMTUGrnwNAGRtShnHYq/XWhxWi89jXbdtmj9B2Er/uYLk+4C2VAH9YVLkLCPjbBSrcly+BocHZ4DyrhSOfnB17IWwDALsKe2mu7spWP4zv7lfcihiL7nFeLi7PHEP/A9Ay24dVVyEQTkLkndP+G7XkHifcfu9TDxvZmKUild7WOtGFi8dRU0auL6aWYxsAUFwq22aRbwWwvakf7OMGiGwPUPaLOCGzyruhHPAjWpdibLdnHCwY+pV3yALqTAVvWBjEAexbrGDJS6pjtJ+tfujA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.19; Fri, 18 Oct
 2024 12:57:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 12:57:41 +0000
Message-ID: <a1f5838c-8452-48f6-a6b1-e8940270d010@intel.com>
Date: Fri, 18 Oct 2024 14:57:36 +0200
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>, Wenjun Wu
 <wenjun1.wu@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
 <98b5bef5-d5a8-45d5-8fe8-f9c34eb5ab84@intel.com>
 <fee3fe99-14bf-486e-b12e-5088d17a095a@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <fee3fe99-14bf-486e-b12e-5088d17a095a@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0124.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::21) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: a7bdcf85-3c57-44b5-d5e6-08dcef74739f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGJKMUFNOGFMVUNxeEpRdjU5MytmOC91M204MVlld3dKRnZZOWwxM3NnN09D?=
 =?utf-8?B?Z2J0a1FPRHJKVEEvTHk4NEhBd1RDa2RjL2JoWDVSRXBRK01PWVdtOEF1eGIy?=
 =?utf-8?B?a3pIRkJwa2o3N3UzNUpZY3JlR2dEd01icC9UU0NWeElGNFl2Y0w5SllWTVdx?=
 =?utf-8?B?Y0ZSS3ptQnEvRHNsakdOTUhyMzhsemluMy93NXcwMWtxYTl5NGFDRVBaWnh4?=
 =?utf-8?B?Z2phZTArRkhKRlpMZUswUk52ZG5hQzAycFdSMWd1eTdWL3dOSi9LMlRzVUNt?=
 =?utf-8?B?bU1PMWFkbm1Sd3QzbE1QWGRnZEhvTXBFU1plOFA4L1llNW90SlJmc3FQbnha?=
 =?utf-8?B?UmFBcXhkVVlWdjdVMnBUaEFveGNuSEpCYWxEZDBGdTBKcHpjbWRtNWJoWWox?=
 =?utf-8?B?TFJaYS9QdmRzbXlnYUw3THArRmxobFRpRGIwbEFnK1ViZTdrd2kyZDBjajNX?=
 =?utf-8?B?M0xoVVh3TnhvZzlFQkNmaTRaR1U0bENiY2orNGw0eWJsYzBldzlZWGtvcTdS?=
 =?utf-8?B?TWRzV2pHTDE5TVU5cXF1MEJCeVB2MDhic1J3VjZsOERuKzVsbWwwb0p6RC9M?=
 =?utf-8?B?cEpQN2JNZUp2bFp2TjZtbnZKM2Y1ZFlpbW1pY3JxK0Z0MjFmUHB5N2dURjRX?=
 =?utf-8?B?c2FuQ1BvT2Q1Rnh6dVFRbXJYbmZQb0xKQ1FWcXhueTFvNS9ONUdGYWg3RFg5?=
 =?utf-8?B?VXZyMXowU0RPdGt6WXFDVzJtU2FiL0JjL29BQTVYN1JKTUxjRjV1bitNa2ph?=
 =?utf-8?B?T3p4SlpGOFRIYXBhWm5wSm9UVzFzR0JGSFQ1TTRadFh6Y09WaW0zT0d3M0VP?=
 =?utf-8?B?alE3ZWRLTzRaMktlZ0EvdWpNVmV3S2hTQUcrMGxpYnZKbEw4WkxkNVBMNDBx?=
 =?utf-8?B?WmNBVDRJRUI3Q3V3aHY3YkdLSmNoZjNZeDNJblZKREwvY1Z6TXpyVnVkcENo?=
 =?utf-8?B?K3oxeEhzQjRmcmd4U1NtbGpaWUZUY0FlOUtrRjVGbnJPcDQ0Ny9PYmhkSVBm?=
 =?utf-8?B?NzIraDB5UVZkT0FncUwvQm9xWmY1bjhMeTQ3NkRBNXhQMjRDbGdGcjM1YVhi?=
 =?utf-8?B?VkZBaC9oNGU1UVJaR2xHdGM5YThKRXhBQlFtTzNidWRPRkJJY2NMNEJ5Ylkx?=
 =?utf-8?B?RkhVSUJEQ1lEOEo1b0ZiTXpGZmRLTTRvNGtFTWJYN0VPdmk2VlFVOTByNVZJ?=
 =?utf-8?B?emJEN2QvZ0lwcmZuNlZxSjlBY3RvVVc0VWtDblNBWStWblhmTnFOOExLaUd4?=
 =?utf-8?B?T2NBNUY5d3NkTnhUbjM5T1FXVVJwTi9sbzZxeVZwR2ZCQkNuMkNaN2FrNFVk?=
 =?utf-8?B?UmpHU3JhWW13MHpCOVpWODdTcjBJL0FyM3duaURRSUF5bUsxVEVERzlXcG1F?=
 =?utf-8?B?ZW85WFVDc3AzVXg5a3h2L0NDcEdqUkJnN0U1SEtkUGVSUm9qaGVReGljTGdM?=
 =?utf-8?B?Q3Z2RExFQkwwZE1sT3hiSmpNY1IzV25WR1FadjBPYXhFOTF1dEVkZWl6L09R?=
 =?utf-8?B?VmYwQldwRHpDeWJNcnR3UHdHRFA1MGhaeWNGT0JPMFVUZlpsbFpxTk0vcFNv?=
 =?utf-8?B?WldUZEVMZ3ZoV0xTbStXaUJtb3FUc2QyL2dCRFdsUldUUEtUR3A4cUtYVU5U?=
 =?utf-8?B?UjB6eUVNTnJoMC9wc09hZlR5VzR6N3hjOXNrdHhiVkMxZ3B3SWtlM2ZVbXlp?=
 =?utf-8?B?czZjcHlIRmdid2t0OEF0bjhXZHR2djZhSUJ6NXI0M0JFSmYxTjFuV0xLK3Ex?=
 =?utf-8?Q?meOrX7yRSqJbThmmbIIH3oH/F5QMoCxFHFs3TrK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDRxQWtnR2pBWGdOUW5weVlqR0VWdDJoNEtzd3VTWlhlME9ITEZodjM3ZXFU?=
 =?utf-8?B?K0U1UkE4Y3RNbFVkOTFxbEZTeWNJaHFwZzloaVBoZndUbFBhMHQzNE5zb29T?=
 =?utf-8?B?TjIrRmZWQm9NK2VySkNPNXJ0ZmRkQU9iRDNMOVB3bTVLYk9Pck05WkZiK1dr?=
 =?utf-8?B?NmJZaG5VQ2FtaVVnUG14ZS95ZlBVNWllL1RDVEVvSytqcVJYMTRCQ1JDVmh2?=
 =?utf-8?B?RXMyVVpyaTRaU2dsSURUUEU4MmNUbXJuZHc4OW5zOTZoclpOZ2U4Q1EvSWoy?=
 =?utf-8?B?L3BtcUNreVlWTGFoVHhnUldZL3U4S2hoWTc3K3FVNXlCUXRONFVZQ1hYdTll?=
 =?utf-8?B?V1c0QW1JN05sMDhkMDRITFJsUG5RSGxKMkNLQkZ4d1R6RWdwcGg2NkV0YVVq?=
 =?utf-8?B?MFhQVFFXK0U5aG9QZTVXWWJuMXFTazgwRDI3TjRQeUpnaUhtNVg3K3JUVWRM?=
 =?utf-8?B?VlVVOHc0S3M5TjZQWC8zZnBJaUZVZFowaGI1VEVrZWxhTW53RS85MUZicGZQ?=
 =?utf-8?B?V1RXaDBtcGplOGZ3OGczTmljTElMQjdvcVRoOVl3ZUVLWlZKUlpVZU11VVVF?=
 =?utf-8?B?bXZnWSs0ZngvVkU5Qmo1L0txUWgyalMwSW4xSzJKeEVMZktTaUFQaVJDQ0xP?=
 =?utf-8?B?cER2SUR4aWZsZlFMMVdFOEl3bFp1SzlEdjdjMFdyQ1dTWjNMVDBvRU95ZVQy?=
 =?utf-8?B?aVA2ZTBCMCtkeC9vVlhsNVFNYlRudHlnYkMvNlFUNmVOZE1mRTlqU0ZkVU05?=
 =?utf-8?B?SUFyTmxlRTluSnVjQWdKbkNVT3ZjS1daWjJ4SnNNTkJnYzhrTmROWmZjRHVn?=
 =?utf-8?B?bHIwNG04SWxMZURzc0RJbVNyVC9TVnFhV3ExNEpyR3E5YWZVbS9teWh5MDRR?=
 =?utf-8?B?UXdqdFpHTCswMjZHQ01EajlsR3lEalQwREJDd1pvcmVpZ1g2dzk5YXBkak5a?=
 =?utf-8?B?MEVCMCs0bGYrbE5ZRGRmbGhMOHFQaWpaMFBwQ2U4cVlZc2NaMlRwZkZIT093?=
 =?utf-8?B?blZFUlIrbldTVGVzQm50TFlXN0FVaW13SU4wNXNheEY3blVBNXlTYnNBNmdY?=
 =?utf-8?B?MTNWRnpWL1NCcmZFTEE3ZHJjbVA0TWlqOGo3dnc3eVBEVGhMQ1NrNVV5Ungv?=
 =?utf-8?B?VlFoVFVnT0thblNRYVNORTVTZHlvaXF1aVJERVNPUnhHNXprRXRueldXY2t6?=
 =?utf-8?B?ZVVRaHNJZ2Y1SVRMWURkQzBEV0FHNCtLUUVESVN1Ykt3UUhZTjRIMDJPeDJH?=
 =?utf-8?B?YVlzWVRuV0xpeTQ3eFV1a1JzNlUwcmFQVmZOV2pRYWs1NVArUUk4b2hrbWVV?=
 =?utf-8?B?MC9YUlpVQm9yRStBT241eThLcHVJOG1YVm0vaVprbUtOZlh1WnUwZytDNEVW?=
 =?utf-8?B?VG02ZHRhZjFSR1p4NUF1cXpuYmg2dWMzb3NTSmpYNGRuR3pwdFJsL2tJZXZW?=
 =?utf-8?B?dThEZDFYeDRJRHdXWWRMZ054amFnV0g5NG1IRy9IZ1UyM01oRXRlelFxeTVW?=
 =?utf-8?B?dXRrek4vTHJXZTl2VUwxbUdVNmd6VDZKeXoxYzBobDBQY0Y5Y3dTYk90Vk5v?=
 =?utf-8?B?MHJMelVjcitvZVpiYXVwRXVvWC9KdTZYeDhLTTNNRUhHOWZQbExaOGNrWENa?=
 =?utf-8?B?Z1k2N3hhQ2lMMHlSUlQ2ZzlZdjQ1VFFWaDVjaVlwRlNLaTlSNTEyb3BieThH?=
 =?utf-8?B?N3dNdGFSeWVJNUFNS2xjalhJR0cwSyt0aExQTUJ3WXFMT1ZjR2N1LzN2T0VO?=
 =?utf-8?B?RXRNcHZhbXBmZ296WEZqcDdEcDNjaFh6Ym1kbG56Qkdscy9TOXJwR3J0Z2Uz?=
 =?utf-8?B?OFh3QWg2SUpZTHBRYk5YbUZFRm11NmZpNGlxQWJMQkR3ckh3YUkwRE9rQWtk?=
 =?utf-8?B?N3QzUXlxVTJENHVBNkhqMWVqajIwWVFjQzdxcVZIQUdVODBrWk1KNGdmUUtC?=
 =?utf-8?B?aEYrMjlYWHRjQzR4ekFWNkN6SnMvSVpYeXkyQWNYS2Z2cHV3SVV0MDZhNzh2?=
 =?utf-8?B?YXZnS1RoWC9nTXlVbC83cmwrS3dyMlhVNUc3WGVKQ1hwRHNpUXFoVWkxYTl6?=
 =?utf-8?B?c3dPQVJTZTg4aXM0LzJiamVXcDZsMzdmZTNtY3JRZEpPZCtNVDQwdWpZemJr?=
 =?utf-8?B?S3JQb2N4ejdGdzlGaGp3aDZ5OFZNdDB4YnRpOGhjRGdpWWE3di9OeGJLcjFO?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7bdcf85-3c57-44b5-d5e6-08dcef74739f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 12:57:41.6206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIFkn2+eqD01DYkqQ8VAzhx25nnCG1VQv+XV0Amnrucq+2c3cuNuTT2Q1deQaQUEVXUkJ9O0FGzXA3vgLOSd8hiIumkrVeoqz1f0vSfHkXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729256268; x=1760792268;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8JfltRDNekD2g3ybmmOliwsUqmYjQdGD9Td7EWLD/N8=;
 b=fK9sB1kylKXfEFPmgHXHbbA7ki6vVj+zL60B80YJdXPkiN2XVHP1Sr3s
 Wp/zGGk/gUAUmOXLxuJQlNNfvRra0d7DOEVs2PZcOwIf9uJBnAvOYn4l1
 dnmWxEBgI6BbvKmhq250a/T9Ok4UGlsC/VCYNZx/mxyimhrphvUdQJdBx
 yJZqsLEtxfuDZjnqC9chw4SUwZlisNONe14pnBCl69vahtDx4goD+FaW8
 ZV60eaS5vgbg30l9f+nr7TdLhoC+vUAbCepJqpq/ZXMtYABMehBsAtpnA
 MnFZHUAmFXNaq2vFhuGQPRy6ZWdNzkZEbzwmzRC1A+AxEn2nM4H41HV9h
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fK9sB1ky
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

On 10/17/24 08:39, Paolo Abeni wrote:
> On 10/17/24 00:49, Jacob Keller wrote:
>> On 10/15/2024 6:56 AM, Paolo Abeni wrote:
>>> The kernel test robot reported a build failure on m68k in the intel
>>> driver due to the recent shapers-related changes.
>>>
>>> The mentioned arch has funny alignment properties, let's be explicit
>>> about the binary layout expectation introducing a padding field.
>>>
>>> Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta 
>>> size configuration")
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO- 
>>> lkp@intel.com/
>>> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>>> ---
>>>   include/linux/avf/virtchnl.h | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
>>> index 223e433c39fe..13a11f3c09b8 100644
>>> --- a/include/linux/avf/virtchnl.h
>>> +++ b/include/linux/avf/virtchnl.h
>>> @@ -1499,6 +1499,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(8, 
>>> virtchnl_queue_chunk);
>>>   struct virtchnl_quanta_cfg {
>>>       u16 quanta_size;
>>> +    u16 pad;
>>>       struct virtchnl_queue_chunk queue_select;
>>
>> There's a hidden 2 byte padding because queue_select requires 4-byte
>> alignment. We assume this, as the VIRTCHNL_CHECK_STRUCT_LEN for this
>> structure is 12 bytes.
>>
>> On mk68k, we must not be adding this padding, which results in a 10 byte
>> structure, failing the size check for VIRTCHNL_CHECK_STRUCT_LEN,
>> resulting in the compilation error?
> 
> Exactly!
> 
>> Adding the explicit size aligns with the actual expected layout and size
>> for this structure, fixing mk68k without affecting the other 
>> architectures.
>>
>> Ok.
>>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Thanks,
> 
> Please LMK if you prefer/agree to have this one applied directly on net- 
> next, to reduce build issues spawning around ASAP.
> 
> Paolo
> 

Would be convenient, no objections!
