Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B837284AD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 18:14:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1152F614EB;
	Thu,  8 Jun 2023 16:14:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1152F614EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686240889;
	bh=MO3UX9kyW2+D9Yby4E9KA+7zq9HypICRHNatvtsquls=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hgRg0PIlSSRRdKI1nQqbpWcucS8u0YRK9tB5FjQl32Zcbu+5oOHWWWWBzSFKJPKZZ
	 VtmWEFjylhobWOwa5ndJrJMFwn/M42R1TfZHBO3r1BXhBhne0XKsLLZQ7Hlw6ujoER
	 v3oX0FK85NfJLpLVjEfGXevCaQuQA8mKY+y9wI98+4Qkj9YQ3kwUJxJlJKrucIpchU
	 dwJRCC3o98dzITn/vGc2kg0ZwStt0uySdCk9vflc6mAFMcFDANokP9Ec50fNNmMaSK
	 YrLmzfzoxtL0gh4vw9Xq081J79EtdZjcnYPNh2pmYo/yJ/IH2j7sSQAQwtMxCxAHfh
	 l014hDfELSQYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLgVX2pyoU7D; Thu,  8 Jun 2023 16:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBD916119E;
	Thu,  8 Jun 2023 16:14:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBD916119E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B77B1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DAF3611A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:14:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DAF3611A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6T5oCZAwStKw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 16:14:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FE216119E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FE216119E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 16:14:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356210458"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="356210458"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 09:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="713164594"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="713164594"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2023 09:11:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 09:11:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 09:11:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 09:11:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 09:11:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ow9YwYYn2VIWVDDa2gEJM/gEUBJqE3LRFDvz2wX+26Q0eci+yt3O+Pj94oAnWbUnyDWxvgafg0aEZJlbEjgYfCakJ9f9Y1Y5n/Mv9p5YNKi6NYcdkqnlwb3J0Un01cePDgsLDK83e+qb0PPBdtF+vuanF1YzglFfiavS/hxEUiNDlj//nFqMgZK7u5DSPoNS26Lus1pLT39Sw7hSsmAMU0L+UsCJ5Rg+1mozoLxisCGVgbahfHoPfsNKK6ZU8/2Kdwv10Fnn3AnB50e3gGHd+XTtz/Y1co3bcw9GXDmqg9AcVJvlhpqm5gvx+wbOqQRosFuxeekYVgFHDfMqSGIdlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D+Yzvb65UWzqbS2IZqD5uUwRoXmE8QW/uzbcKvfFDas=;
 b=Mshv5F0aDfSnQSYG9BGS97YoArcvb+g66qM3TNw3r0oq0OhIAleAnJSkCn8dZAPSBi8i/zldf8MHW0ewDJI0aC9f79eUNU4S3dUrT1LCmTvkcDS3My9vj7/AmAoOB2zhz28LY1s6Go4td90WKsSqLYloZHlIavKnu6lflKQJp6xUTaA7Vsgx3gfInoZnT9ToLysBB2mavuVz7354JTKwT6dusEvw31xVZc6Ugz4gO8ON9NwUmNX9TRCA1Nyv5E9qgza+1Y53e5vML9VWX5yV90VhAad2VKjhrLqNyCyOZoysHhNF4vhMCoUzS0fT3bewIIYUojDMLxpBG/otL4/oVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Thu, 8 Jun
 2023 16:11:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6455.039; Thu, 8 Jun 2023
 16:11:07 +0000
Message-ID: <e549daa8-45fc-5822-2e09-f73ee2c2e3be@intel.com>
Date: Thu, 8 Jun 2023 09:11:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230607222443.119-1-paul.m.stillwell.jr@intel.com>
 <20230607222443.119-5-paul.m.stillwell.jr@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230607222443.119-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY3PR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::26) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 74b60354-0a70-44bc-4eb7-08db683af744
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: taFFWDln+/im3CzHC7iBYqPng5H2k7ht6f+aoHrPqbOLfcTovmqM42CBzgOnT1VQNpfkrsjhDa6xq0jhvSO6YJNleBXKcXsdGjYJN8Z9QtuM19d1Ttv0J97NDkBQENm7lJrEg+6Q/Hj2uG92DoSz7r6q4be6ZwuZMsp6ODySuXG/oKADNg5Uaxst2GkG0RBpLY+/xnGuux4YigNPi4ZMR6fZOPpAFT68JQM9qBxppji+2beCif0XE2K4+EDcidx55fRgZH1maRYiYZmO/E9cgLi05oz5rap1AwjX2hYML1JFLZVrrrBm4zp5IQZeleEO9j3f8eNCLMzLjLODdWNbf+J4MfmXMehOwKIeiC/HRis7OuR4kgQLV8MWIXOeN2Crl6ND7SXRUpOh4FQmUDV0F8G6EMvtbhssN6NZr3FH1SkMVFWGy4XSP1ogtneI3HEdIrFeu5CT/gQBIg59Ja6L4jJky+hJx/vjKOVyvN83B2IuSTUAoGql3RNYIKrMybHm21PTLSuneY/Mo6eqADRWnZjllPSfq8HlQ/E7rZL2gSQ5H2rx3wmKkZCsuApgbxEY7O5n4hFKm1yRJ4c4pnkdKMvOFfbTCaGFZxRhDInm7oHI1W2RO+QKN8Nw44yQPGNggcNTKYrqkDAhIS9RkIbjvV7F3+ERqRTtmRpe9ek0uKG4sMM/tFVLNb3+S90RszZm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(366004)(396003)(136003)(346002)(451199021)(83380400001)(82960400001)(8936002)(8676002)(6486002)(66476007)(316002)(66946007)(66556008)(31696002)(41300700001)(38100700002)(86362001)(5660300002)(478600001)(6666004)(36756003)(2906002)(966005)(6512007)(6506007)(26005)(186003)(31686004)(53546011)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW16NEZTNlVDT05IMnNiZmREL1NSSmh6aHcwR2RiZ0hvcitkT2ZZZnVtMUhl?=
 =?utf-8?B?dng4enNucVZHekpzSzBvdDdBMWF6bDVCREw3bHl3YkpFYXoyZ0VCNm95MzZQ?=
 =?utf-8?B?ejBGeFl1a1JqczY4eFE2TjQyVzhEdE5PYlhueGtJQ3RhN0hPZThNZWlScm5Q?=
 =?utf-8?B?dG01Snl0WHB1a3liRXVVUXVCYmY1dFdpYUtHdndTdzNEK0dCRWtrZDJtNHY3?=
 =?utf-8?B?eU9OeG9PajJiNlQrMVNiVno5UVNCNFN6SGt3MDVjNUxub05FMlJFUGhPa1Fw?=
 =?utf-8?B?dlJYVmppY1gzTUV0a1BGanQwQkhSMUIzRERCMFJsNWdyTmlBQmdROG5OMW05?=
 =?utf-8?B?ZHltQUhmNTZSclNBQVlDMUVBT2xwbDBRbFRzdnFRUDlncjJOSFpvaDArc20x?=
 =?utf-8?B?VVEwR011a0lIRlVxeXRxd2ljVXJKR1RJNGlQcnR2TFlpSXhSa3QyVGY3K1Ev?=
 =?utf-8?B?VDN4YW1KSDR6ZmdLQUdwQ3hjNE51RlMvU0lwa0VaN1hPNFZaYW9Xa1M4ZEJn?=
 =?utf-8?B?NzRna0EzRnNGcVhVWm5mOFlkMUNWVXVMeUlQMzZtS2lZVDU2eStZQWNYNng3?=
 =?utf-8?B?ai9tZG5lWFlBYWQwWk5VaUhka2dVaDZXTzVPY3V3QXplY1gvLzVld2RnSnZm?=
 =?utf-8?B?bzNmanpVZzhlSlJvRmhka01wSkptRGlrQVhJVldTckRJME4vbE04L3lqcGh0?=
 =?utf-8?B?clYzRDhFWnNSZ09lbFlmR1Zwd3g0RVo4UkVZc01lSTRWd0tYQlhZWVp3Tkx4?=
 =?utf-8?B?dHFXRi8wbWpqVHJHN1Z6S1hwcTVzT0R2VmRyaStQTnBOd2hBQUpLN29hdzI3?=
 =?utf-8?B?WWZmaFNJSTZ3cjRXYVY0V1B3azAxcEFFQlo3TWZ3a2pqcFZzVXV2OG9MTk9j?=
 =?utf-8?B?VTRFRjBSZjRxbW9uZ3pkcjlHMDRHQ1oraUpJSEVGdW9WQ3o1M2JRcnpaNkF0?=
 =?utf-8?B?b3YwNk9oZUxINlp3alYyRU5NeE5ySjI0eFRvV2hxSkJ1TFVUd3RBRWNvMTJU?=
 =?utf-8?B?TnVFUEl5SDJQbCsxYUJzTVYwcHdPbFFaS0h1U3FiK3FPUWFxRnNQSTVQMFNH?=
 =?utf-8?B?bEIxY3NnMENxZVg0UUV4SEtNbHk3SEZ3dWx2Wk5HZ1RUekN4Q1hFaGEvUVZl?=
 =?utf-8?B?NWVaSXhKQnlEcyt1bW4wUG00R1lQcjRBcmMxdEI2SVc4TldtWVFjQ2libDRm?=
 =?utf-8?B?akNONXZwT0VwMVp3TnFRbUh5a3NDRDdyRzF0TDY5cC9tYTVoc1RsdDRyQkVt?=
 =?utf-8?B?dy9BdTFZUmVhMUp3N3AxUFFSVDRSR3A4YmZSdzVabFFiMkljLzhNVjFMVnNB?=
 =?utf-8?B?bW8zWU9vZDhtcTBESE1TMU9GYUpYTXRQb3AxazJ6R0tHLy9MSHJEbi84angz?=
 =?utf-8?B?bDM0enIwVENzVk4xbG4xOXpqWFZPNzl6TzRPNFhaNlBDc2w5Q0ZiNmV6djFZ?=
 =?utf-8?B?eUljVW9DSWxPcm1KQVdoOXVZZW9QWE1xYVc4UURmc1JSN2V4REVaZmxqMCt2?=
 =?utf-8?B?dVk1UDFRN0R2U0NyWmx1Y0lDc3AyQVRtM25zcE83Ym0wb3pxUHNtekZQYzlo?=
 =?utf-8?B?blJCaEpmek1Bd21vRng4U09INEx4RFRxQ1FqemV0Sm5nRXFYQnduVENsRlF4?=
 =?utf-8?B?TDcycVloU3pRTGdoTUYwQ1E5MWV4MjJtRW1SZXdaSjNKNHBxSjFKcGVkMkd4?=
 =?utf-8?B?dHN2eERuMFQzVE9ZbG91S3RSTnhrQi9yYzdLdWpON3V6VDVJQ2RDOHNvV2dl?=
 =?utf-8?B?emtmMGJSM1QxcTdhSDhtd0owODBZb3JRNTduR1dnTjQ1eW5YYklIQmVYZFBn?=
 =?utf-8?B?cTkyVUdlbEgvZG5EMG1pZitMdnVkU1Jrby9lREJ6eEVoZE50cmF6aHYySUty?=
 =?utf-8?B?VlRrbm5FR0xDaGxlWHhnUmpOcVN1TzBOSkdvakFzdmx4MVFzS2Y1YWhMb1pF?=
 =?utf-8?B?RkZlSVNtcnlWRkFub3l1UGZqOWpvWEpvQjNsM0xXeS9NWHpRenVITXJEbktr?=
 =?utf-8?B?RGtwR3RuZ00vTTF2Y2cwd3JwN0JFRmE0TW1YK3RtWGFmVC9wWHFaU1ltbVJN?=
 =?utf-8?B?SHJQekhLeDMzSGZvQ3k3dlhHTGE2a1NxMTNwa1Exdzl3VVdGZk1LNndoWDVm?=
 =?utf-8?B?WnZ5a1dpUmphdHZkYTVQZ3JhWFI5VmNTdDNiaHFkazJaUjFGdWdNNnZjZjJm?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b60354-0a70-44bc-4eb7-08db683af744
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 16:11:07.0559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uAXMdyvg8sk48/7003JkIQT78hwoiP6DxAD+b0g6fhUrTwYBlIhkJ9T01OLAcCAQaE39H8hHKJqi1/4j64c3ZXPYkYCOoZa/QDeUtshdwoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686240880; x=1717776880;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=v90Ei/hARa4qb8wbAZsPZzN3d86cm6DzoQGN0I6B5lY=;
 b=YmZlYhrlXf2vFtFA0J8xb4lr4oAjbo/bVVUqTXR7BR+D4n//r8wggvBT
 kkXmYXjJqFsHetl+nmrOZpZQKKz/GRnPjVwZfjHjCix//PLcwQc9l1AvB
 AXlL7p+EuNJ6pFVYl0pxaPUTZ3VvXnoityfY5xmIroBj0AqI6AxmL3Pp0
 MiSuBuodN6IKcgSezDy8f4XKCLfGBHcTc6ZIRO1vXlvo7Zv6KRzMci9YC
 aA8X+TOuUrq8bZnvv/P2rpL+KeIDkOcceVTfY1XsTqm0nVbaU4q9+vcmf
 n6pfW6trbePQloMfkbANkHxo6OJrhXEanGwxrEXpX4zWk29PSlhv4wTIr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YmZlYhrl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 4/4] ice: added
 documentation for FW logging
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/7/2023 3:24 PM, Paul M Stillwell Jr wrote:
> Added documentation for FW logging in

Use imperative; add not added (for title as well)

> Documentation/networking/device-drivers/ethernet/intel/ice.rst
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v11->v12: separated out documentation to it's own patch
> ---
>   .../device_drivers/ethernet/intel/ice.rst     | 126 +++++++++++++++++-
>   1 file changed, 123 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> index 69695e5511f4..e0658c9af278 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> @@ -817,10 +817,10 @@ NOTE:
>   
>   NAPI
>   ----
> -
>   This driver supports NAPI (Rx polling mode).
> +For more information on NAPI, see
> +https://wiki.linuxfoundation.org/networking/napi
>   
> -See :ref:`Documentation/networking/napi.rst <napi>` for more information.

This is reverting recent changes to Documentation. Please undo.

...

> @@ -1026,9 +1143,12 @@ Support
>   For general information, go to the Intel support website at:
>   https://www.intel.com/support/
>   
> +or the Intel Wired Networking project hosted by Sourceforge at:
> +https://sourceforge.net/projects/e1000
> +
>   If an issue is identified with the released source code on a supported kernel
>   with a supported adapter, email the specific information related to the issue
> -to intel-wired-lan@lists.osuosl.org.
> +to e1000-devel@lists.sf.net.

and this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
