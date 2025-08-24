Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CAAB33064
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Aug 2025 16:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60A3B60B7C;
	Sun, 24 Aug 2025 14:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k20bQWKMHdgd; Sun, 24 Aug 2025 14:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EF3261737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756045543;
	bh=khp63oL6r2BuskLNuEeLPGQyzKd/00GuqNEy3o5um2Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VoU2YCSC6j/nHCx2lsvIk32A7YpaQ0BP/Zxl09qR4xNlL+Oshf3kRNLiBnr7v76SH
	 TLn3dw53WBTPpzIv5iScax+zZ+TkOHN5zsggNnu+B+fYI++EfwwsptY8dH2TA4AOI1
	 hk0poVCKyRuLmhACjElifEYzeANfU/BYVt8xTmgWPG0HMhgZ7QvIRJeZDjV4fBzURu
	 zyQAHIimqFlF2+E4OH8fyGJc69hkC6kDAKugn1EKCs3VwEqjzl0IVvJ1kMziaRpWRu
	 OfGb2xc0dUdbo4DtLWHyFvSW0FNQecqMFy2bc/IsGQii5M/IrUk2vtV7UmM88sNN6J
	 XzO1VWaiXkCmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EF3261737;
	Sun, 24 Aug 2025 14:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 03CF61D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 14:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9C7D41B77
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Aug 2025 14:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytXtqQLJwpLH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Aug 2025 14:25:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB27041B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB27041B1A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB27041B1A
 for <intel-wired-lan@osuosl.org>; Sun, 24 Aug 2025 14:25:39 +0000 (UTC)
X-CSE-ConnectionGUID: rYayKdXMRu+72wiMJuuVqQ==
X-CSE-MsgGUID: g8xh7kVWSfuh+8CQ8qDyKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="83684505"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="83684505"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 07:25:39 -0700
X-CSE-ConnectionGUID: 4DpOng0NRlyCI5AwSd6eJw==
X-CSE-MsgGUID: 3BEeRJfPRPWKfIhtrv4O2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="174373801"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 07:25:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 07:25:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 07:25:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.41)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 07:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BKInzQa31i2uDgZi7ekCTXGNOFukMASP9z2X5gfryC5IPtBO8eiKTTuQ7LaditSf85xHpd74qQn3je8NH2HtYipc3QVkChqrnvRV9gFppiYCqfHfugu7tWotvmEBNF4AUdPOhRiegfSIFjtzB7poJig8XlrLQxa1SsFQRZAyZKnyfb8VDW3Ta/HnJWRFJAwe1IJDA47n5iA4SIFoWgX+69iuBkc1RfLuE7l4M0AJWwkAzGpjT9JRtz18ZPFBdsT5CNImZ2qTAhSV1H9WBjVVlwgeIXu69xojGwilKRPrjYyW7zTULzix+3AD6kg5XMPexnDOhFydTzvpwHYKokmNyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=khp63oL6r2BuskLNuEeLPGQyzKd/00GuqNEy3o5um2Y=;
 b=FvwT3jS9kjeamV2TSFwasoOphIezOKfJ32RIcbVeiVkVZcbOk+AuZbswkSJqq2VEKPA6Dma6xTzhaFl6SaepBlJxvFDkCq7EqUWVbu6Omh8q//ni3mGSi0MWYPOOo4yvXgCFjBVQ5PKPrmP5o8qMiqDrP5HTO4/kZA+3ih7K9Lszqbpv4IQCXfocK1c3q9LrVX7efRCECFCGNrnsMo9YRTNWcnyqzKl3znVNPGPr8PBcYOE9Rv47ddATYO4T/iY70AwUvHj0mNPhKgn/yOKB3UDW1KuSXklcltnBLDABSISyS0aA+un+V3RqmyzS3vWHvZ5rNAUvRrUu6SxJElO1Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by CH0PR11MB5298.namprd11.prod.outlook.com
 (2603:10b6:610:bd::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Sun, 24 Aug
 2025 14:25:36 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Sun, 24 Aug 2025
 14:25:36 +0000
Message-ID: <63ec04ac-9350-454d-a7fc-c5441728791f@intel.com>
Date: Sun, 24 Aug 2025 17:25:31 +0300
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>
CC: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>,
 <marmarek@invisiblethingslab.com>
References: <20250821171229.11679-1-vitaly.lifshits@intel.com>
 <20250822000109.0e2bf226@onyx.my.domain>
 <20250822001329.7e2d1710@onyx.my.domain>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250822001329.7e2d1710@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|CH0PR11MB5298:EE_
X-MS-Office365-Filtering-Correlation-Id: 36030a45-1cc6-4456-6e09-08dde31a177a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVBtRWhkem9JV0hZYXgxRHB1Q3Z6V3NuQnJhdXFJaENoQlpMU3gxNFZFY3BD?=
 =?utf-8?B?RDVJbjdpL2NoeDd6N2VtbGp2Y2RXZ0NtV01BcFgwbk42c1JtclhCcWZKNUdy?=
 =?utf-8?B?dHJaWjhpblNPd09scHU2cGRSdEt6RmdXdVh3cHlQNjhkRVk0RjRQMThvSFBu?=
 =?utf-8?B?ODZCYmkyZzdPQTQvVi9tQ2ZSOE51SCtEUU9BVXBzdXZJQVlWdEpqY0ZHMUFP?=
 =?utf-8?B?ZFRtVkpMdjI4Zk0rQmFjQTV5NGlNY2dkMFlESmVLK2hjdlB5S1gwdWtremMv?=
 =?utf-8?B?eHhaRkUyQ1pCMmJSL0xlb0hFVGhKNlU0QmxVVXpMSjArNGVpclkxTTZPMGNX?=
 =?utf-8?B?c2tPUy9XditQOE9BMmhtdlIzaWoyeURpeE80dXFpcVlNQmJ6TndKeGpKaTFu?=
 =?utf-8?B?S2E0Mk1IZlJrdy9hQXZUVUZ4dDZtSzNjWXl1MlhRLzc2QXA4N2tkZ1QvTmhV?=
 =?utf-8?B?WDFEMnF6RzhxZVlHUVhHNndUVW5uYXRlY05Xa2pVeWM1SWQxdFByQ2NCV1cw?=
 =?utf-8?B?MWM0eXBpMHJiOU9zMnpJaXQxamZBc3RqbFcydU9tUGkzeWQ2M2JrRURIa3B3?=
 =?utf-8?B?S1pDdnpGeDZrTm4zNlFCTWY5ZDExWFJVNWdqL3pPbytLVUdQM1l4RXk4MHZX?=
 =?utf-8?B?dlhiTFM1Q0ZjODk0emJIbGZNVHdvL1ptZXE3MFV0bC9USkxxaWMxV1B2cXJh?=
 =?utf-8?B?NE1ja0ZzSjNaQVFRdFFVdjZVMm4zM05yV3hnUEJsejVuTVlqVy9iMGdtMHJs?=
 =?utf-8?B?SDNDSjk5ZWlOZTN4Wlo1ZktHOWRPKzZjZllBd0M0TGwrRThwcStLTmxWeHg0?=
 =?utf-8?B?Tkc5ckdDV3ZYMHpDSzQ5cnczZGlNMmRSQTZHY2VGQk43cTdqc0c4ZDVVK2Nv?=
 =?utf-8?B?UUxxV0owYXNaL0FCNUpQdzE0Z1B6WGdEZThWMmZqWGJ4WnNBRk1JdVZxUnh2?=
 =?utf-8?B?bGdWWWlhdU4yTVA0T0lVMExaTlIrL1FBbHNlU2Yvd3RlQmR0eHFsZE5WOXRF?=
 =?utf-8?B?NVU5ekFidHBnU2tFV1dxcy80OVFxb25nOGZKNmFQVUtrTEZib0RkY2k3SmNs?=
 =?utf-8?B?Z0hqVlBPMXBuQm5wRlBGSlUzSk9nWmR1ZElpRlJSZFRQVnZ4clJXeForS1Iw?=
 =?utf-8?B?T1N4SGxRbXJMcU5vVmZGOE1ZenNobHpqTEhaRGNWTHZHY3UyWFhFWHBQUzlr?=
 =?utf-8?B?TXdFbUs4bDJTMnBaeEt5cEhjNUpQcDl4TDJxWWFqTFpwWHZjWXprOWc3Q2pZ?=
 =?utf-8?B?NkhFdnUxRnpQeDhUMjl6N0NHbzhYVzc0U3V4M2hkb0lKallJTWFPb29LR0NN?=
 =?utf-8?B?WnMxaDlTM245dzBia0hSVkJoNlFqcVNudGFkclg3eFJlakV0YmYwTVkxZUtM?=
 =?utf-8?B?cXZDdHd2WkF4eW45SmttMjZGamNmK0k4eDJBTXdSa2JacWZ5SzVEK1VVTld6?=
 =?utf-8?B?SENFSG4vOXdtZ3ZtcHNPR2EwNnhmSWo3QWJxbGV5clpmSlc1elR5QmplSlJH?=
 =?utf-8?B?Slp1VnpEOEJLNVFPYlBuZHNtaFA4d1QyQytLa3dSRjhlaHBzLzdHZmRUVjRz?=
 =?utf-8?B?VG5SM2lXc2VoMkdwYThSZ045ZlRhZWV1N3psWEpzbmNOckZCLzdoV3JWcVlX?=
 =?utf-8?B?SmJ6VVpNL293Q3RIMmtjL2RpaXZ6dHBPYjB5TXNtMml5QmVYU0Q1M0JnOHpR?=
 =?utf-8?B?NGdQcmg0M01qRHdTK1laRHNPc0lGTW5jQUhzL011bHBNY3V4Z3JQSnc1SHNm?=
 =?utf-8?B?bzRIWldTZnFBQk9GQkdxSUpJWTlpeWpzZlNveWttYWxjZ2RVQmNxcUJwbWRs?=
 =?utf-8?B?eFk1eklBVHkxdHd5S3NITWh6NG10c1ByaEJXZTFtYURRVmpsR3N4SlZva1hX?=
 =?utf-8?Q?69Us19rOg2C2n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RENtQythZDB6VUhVQVhhMENqeVJONWh4TnVLVjdCWTZMWmMwWVpVN2YrK2wv?=
 =?utf-8?B?bm9UZnlacmNmVm9Ea3RLZG1wbFdvYU9KOXR6TWpXc1docFZkOUJkeDJHQTFa?=
 =?utf-8?B?TDF6aFF0Z2FRWXNLTzJtV0VVY1BWZklWMTc2VmNwMk1OOEFURnYrNUxRTTFD?=
 =?utf-8?B?a0RyS0txUldEWjU2MHJvSldRc1BpRnRwWGp0WUhLMUlPZUtCTXVYZVlrMnVp?=
 =?utf-8?B?TURSWWoyK3RUb2txT0R0c3ZUdVY2YlduK21vdHc2Z1BaSXUvUkxRUmVNcENT?=
 =?utf-8?B?VGN4RGQrNVZEcWt4VTVieWFmSGYzNVJRUGNldWRoVTNrSUpjUzBxRytoSnBO?=
 =?utf-8?B?ZkRwM0NxMjROdVA0VC9XUXRCdW94Q3pXbW5od2dyclE3Sy9TaXBlaGpOdWt1?=
 =?utf-8?B?bTR2ZDIzYlRONzByMlhJelBhcjFRejhxcjVwU1JDT0pXOEZIRXNPVUJsNVR6?=
 =?utf-8?B?QXBPSFNXRjZ5dFNRSGl4UmVhaUEvWGRJVklRWUF2blFCYUVUQXRHczg0dW9k?=
 =?utf-8?B?ZGE0RHFERll6bjQybnIwLzVGb2MwMmJkQzl4U0JyRUpMSlcxOVhRZ3dXUjR1?=
 =?utf-8?B?eGVmaWpXSFhOcTJTSDV0NVdwVzh1SitCM1MxeG5PQUVTY2ZsV2s5Zmdlc21B?=
 =?utf-8?B?ZUozTWtCWVNLN1FCMEQrWTAzRWFPaU1sVEh3djlpbU9GWnZmQTBGUHgvSjVn?=
 =?utf-8?B?eExBOXBybkxBbkthZkdZWHA0MnJUK0o0TTNiWWVtQ0JCNys0UWI1ZG1KWmJ0?=
 =?utf-8?B?a2xuZmVhQVpCV3dqZVdCQXRzcHE2V3lDY2RVNlY1WjAyTjZ1QmpHY3NHMUpV?=
 =?utf-8?B?dnJmbVUwRFE0ckhrQktwR2VQcVAxb3RiWUprbU9tMnpsVG4ycHo3UkpyNGNX?=
 =?utf-8?B?MFN4S1oyU3owejJBU0lLQVE2d09BT1NNVE5nQWcwVVpTd3RnZklMLzJBakFC?=
 =?utf-8?B?a0tlOG5Oa3FPRTBOVThnUFNsUmp4bkF3RlRjcExHMmJ4cWxDVmgwQTFSdy9N?=
 =?utf-8?B?TVgxVmxoWW15bUVsY2JVaFJnL0ZIU1JSR3JwaGJOdlFveWQ5L21EYlhqc0tS?=
 =?utf-8?B?OFNjTFBUc1pKVnBTZXJrcldDNjQwS3RxcnJXai9XMVQ2VVBlR0hxL3hnZHh5?=
 =?utf-8?B?V3BJWGJjNi94S0NGU1ltRzNQTGtlNHRidHoxZ1FldGF4bTVrU285VmN3Y2hy?=
 =?utf-8?B?eGxZM2lPNEdwb000ZEc1TXFuVFZIRVRxaEFDZDB1ZVVTaFE1UzdkS0pQU0Nr?=
 =?utf-8?B?Um1CSzNpNmdxRmhqdE8ydEp5MFZBYzRBSUlQRldIcER3YTV3QTFjZ2FxREZL?=
 =?utf-8?B?MklydkdRZjNseHE5cjRheSsybjFhVXluSEdMckR0TjdjTnZQbkhkZmZrS1pD?=
 =?utf-8?B?dDh5UForNVR4RE9IYm42ZnlTZGplbnB1ellpTEkydk0yU0x4THAwNjRiUFNZ?=
 =?utf-8?B?QllGKzJFRjBHRHR4Z0lPSDhGQUJlbVRSNG8rSzEzUlgwaHd5bDRTSkcrV0Qv?=
 =?utf-8?B?SCtoYkliSmRvbU1NQVJ6NXdxbm9zK2YxSkxPZzIvRWU0VHIyVEpHU0t2TGdm?=
 =?utf-8?B?K1VPd1lSZFVvd29GZXZicnBSZlRGbkliaUV5ZjRrY1FvaFM0ekZzTm5LUFVJ?=
 =?utf-8?B?Tkl1clF4WUxyamdOWEltN1JnTmZBczhObFI4MFErVlVaOVJGTi9uczAyM3hx?=
 =?utf-8?B?UU80V2p1NHdIZE5BNTEyR0trMHYwcTN0cnpCN3lOS1Z1VGFtNWFxdk1WTyt3?=
 =?utf-8?B?emNnWVVKU2hKNDVzbkhSd1lvYnJFUUp1bWlvbktmaDl2Q1U0UzBtczBtc2tQ?=
 =?utf-8?B?N1NTSGtCWSsyN1ljdFRMdEMxUDVBekpTbFJ2L3RLWmlGNWp2dUgvdEJKcG8r?=
 =?utf-8?B?TDNxWjl1a3JpbmhqakFUN3I3NU5kNzBGV2FLeVhqa0RDSGJaVDRua3BuOXJs?=
 =?utf-8?B?eUw2aUdLbnEwM2sxZWRUNFdTdTVsd2lHLzdydjVFbWlraGFOSmJRSXpmZS9G?=
 =?utf-8?B?R3hnYWFadkRjMlVKbGRMdHQxc3JWKzZPWVBsRFV5czE1SmN3endMQllxRnVH?=
 =?utf-8?B?UnRxQVJjVCtxNzZYWE1pRExkcnlPdmlEbjZTRDBPQ1FGdTBGMEMzYzVob0gx?=
 =?utf-8?B?MVl1S21sdXVKeGxTa3F2QnJOeWpMYVBDcTRCNFIrVGxNTFI5VUVFbTRkbHZk?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36030a45-1cc6-4456-6e09-08dde31a177a
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2025 14:25:36.1777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yKeytaxgW7wPWQS1cn0CqTMoxCxpNPVQYFBc+cKx6FbyrUQxwM8fvFvK8hkv5JvpzLtE2NP2/ijITAzCI7TxbMbWF18GyPgETxSC3AfzF7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756045540; x=1787581540;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hjCPA/1UygHHkb+99iFERga7f/Ja9N8v/6p31j66Q1I=;
 b=c4x1uR4ODv6IbCSt6nz8MeKEWH7VsUyIXmErmKUo4fXDSj2KG951fSVy
 Nez68O27Fk8zS/d5YWe9f9jcKmXJVeX3qG60XStCRSWobcGzYLO4hyOsw
 kwXXP/SAM3FJ4DaZ6nzupfGQJhjEUhArk7nWV0L+Ve5LDCM4qAkG19+bW
 riy/bNYIa2y9pztuUy2L0qh2FpiVEuu7f9wBARfhRa6C7r0DvhKXU1guj
 oDdgMRdv5jwcLrjELpNsQrcqTpZ2fJRFm1wNuyCFGP9eGgcAnATWRyUR8
 Ajfjbaw/Urrr7N2NG4mH+a/o/QjvH6oVpN+t5dxOHAC2wBTb0AQ0yzgXO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c4x1uR4O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Introduce private flag
 to disable K1
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



On 8/22/2025 12:13 AM, Timo Teras wrote:
> Sorry for accidental sending this before finished. Comments amended.
> 
> On Fri, 22 Aug 2025 00:01:09 +0300
> Timo Teras <timo.teras@iki.fi> wrote:
> 
>> Few more observations inline.
>>
>> On Thu, 21 Aug 2025 20:12:29 +0300
>> Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
>>
>>> The K1 state reduces power consumption on ICH family network
>>> controllers during idle periods, similarly to L1 state on PCI
>>> Express NICs. Therefore, it is recommended and enabled by default.
>>> However, on some systems it has been observed to have adverse side
>>> effects, such as packet loss. It has been established through debug
>>> that the problem may be due to firmware misconfiguration of specific
>>> systems, interoperability with certain link partners, or marginal
>>> electrical conditions of specific units.
>>>
>>> These problems typically cannot be fixed in the field, and generic
>>> workarounds to resolve the side effects on all systems, while
>>> keeping K1 enabled, were found infeasible.
>>> Therefore, add the option for users to globally disable K1 idle
>>> state on the adapter.
>>>
>>> Additionally, disable K1 by default for MTL and later platforms, due
>>> to issues reported with the current configuration.
>>>
>>> Link:
>>> https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
>>> Link:
>>> https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
>>> Link:
>>> https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
>>> Link: https://github.com/QubesOS/qubes-issues/issues/9896 Link:
>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
>>>
>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> ---
>>> v2: Add a missing semaphore acquiring and disable K1 on MTL by
>>> default ---
>>>   drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>>>   drivers/net/ethernet/intel/e1000e/ethtool.c | 29 ++++++++++++++--
>>>   drivers/net/ethernet/intel/e1000e/hw.h      |  1 +
>>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 38
>>> +++++++++++---------- drivers/net/ethernet/intel/e1000e/ich8lan.h |
>>> 2 ++ drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++
>>>   6 files changed, 60 insertions(+), 21 deletions(-)
>>>
>>> [snip]
>>> a/drivers/net/ethernet/intel/e1000e/netdev.c +++
>>> b/drivers/net/ethernet/intel/e1000e/netdev.c @@ -5267,6 +5267,13 @@
>>> static void e1000_watchdog_task(struct work_struct *work)
>>> &adapter->link_duplex); e1000_print_link_info(adapter);
>>>   
>>> +			if (adapter->flags2 & FLAG2_DISABLE_K1) {
>>> +				hw->phy.ops.acquire(hw);
>>> +
>>> adapter->hw.dev_spec.ich8lan.disable_k1 = true;
>>> +
>>> e1000_reconfigure_k1_params(&adapter->hw);
>>> +				hw->phy.ops.release(hw);
>>> +			}
>>> +
>>
>> This also seems to now calling on every whatdog run the k1-params
>> again and again if FLAG2_DISABLE_K1 is set. Is this intended? I
>> suspect this should also change id disable_k1 != flags2 &
>> FLAG2_DISABLE_K1.
> 
> Also disable_k1 is never set to false.
> 
> Does this mean that if disable-k1 was enabled, but later disabled.
> Things don't work as the rest of the code paths check disable_k1 which
> does not get updated.
> 
>   
>>>   			/* check if SmartSpeed worked */
>>>   			e1000e_check_downshift(hw);
>>>   			if (phy->speed_downgraded)
>>> @@ -7675,6 +7682,9 @@ static int e1000_probe(struct pci_dev *pdev,
>>> const struct pci_device_id *ent) /* init PTP hardware clock */
>>>   	e1000e_ptp_init(adapter);
>>>   
>>> +	if (hw->mac.type >= e1000_pch_mtp)
>>> +		adapter->flags2 |= FLAG2_DISABLE_K1;
>>> +
>>
>> Is this sufficient?
> 
> This was intended here because the flags2 does not propagate to
> ich8lan.disable_k1 until the watch dog executes with the link up.
> 
> Thus most of the checks for disable_k1 do nothing until the link goes
> up. Is this the intended behaviour?
> 
>>>   	/* reset the hardware with the new settings */
>>>   	e1000e_reset(adapter);
>>>     
>>
> 


Hi Timo,

Thank you again for reviewing this patch.
You raised great points, so I revisited the code and made a few changes 
that I'll send in v3, these will address your concerns.
