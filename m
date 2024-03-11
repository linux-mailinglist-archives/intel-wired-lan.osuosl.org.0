Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB63878027
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 13:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD75A401EF;
	Mon, 11 Mar 2024 12:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DwAF_Fzr0Bh; Mon, 11 Mar 2024 12:49:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF7E84023B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710161390;
	bh=ps0FZRPqpHvYY0QzCl1ayzfe2N0wdyc+Aiov5I6JIUY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tW7jyUmQudPoyMiKaCbyvjwCkHOaID8ukcv5T/Z9RbeBfwrNxxrD+NJkLkbpg0ATU
	 nfxRZGQqqzB+16M8WS88XHfRHjIF2qDYHk/M+iOCYyn9f1I/yH9AuMA5yGC1ueL64m
	 T4kmeZTHVktlCbAHjtbod8rfTqoTS0x8tTb2f88NgBqGeBdHIg4+y/qj0bRxZxnMAH
	 Us/fr0YnSmgTZADU7yD46nFdVkqQ4zLYrr4DXhKDAKVczs/56F43pksqNf3yX4Qt4j
	 ucHKCefBk05X+jL8v8jIu8HQWc80AyxLT1tkZ716CBq4KYwiNCuClEAA5gyt70NRk4
	 tbXDIrCbaO5Ow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7E84023B;
	Mon, 11 Mar 2024 12:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D94A1BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4735360876
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5WCRinFg1y9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 12:49:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB63A60750
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB63A60750
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB63A60750
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 12:49:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="4956245"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="4956245"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 05:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="11152945"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 05:49:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 05:49:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 05:49:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 05:49:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 05:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KpQZKrzavSdfMLo1k4gOaJ98FaJjyW6jAJwA053RHSr54Vmu3DqfK7bw8kWquGHA1GcykQSHMKTYKER3z/1bnZWSdz87dYHgn3ytOdrrbsVPYW3qH//q4IEKAH6i7EC9FNasVM6bH4UEVuZrxSyod388qZtl2LQ3e6PcV4NU38jnDIrW8fol7JuYYGB0VB0NJfdnejvtpuvCm+fRQ3BiP9eRVM/D6GfPmLthXbwR+/K4mPsflh3CxJiH9T0DKoutxPppXbB3DzJ61kuqHiVYB/4fFVm8vQMVpWh2KZG5MjgxSWzxLCzHI63yjY9y4lAiiULsu++4lD/HSZ/48lNnFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ps0FZRPqpHvYY0QzCl1ayzfe2N0wdyc+Aiov5I6JIUY=;
 b=DhuDUvVtULFiFD37zg+OqaFkp4V023W86DM8ffTnAkox8HIuYV5QuPNIcZsusGZ6BBm8X2wbplg7xji5qANSYTSsmxmftBj5kVFUYaUqaV9r/lgqQT/oYPVhPdFLEQQMvitTUn0ELtAXLv1zzCIp+mUc0s9nkPyJNNA5DHNAlfaU4TRdHGbkaq+xwAYhbXlCQy0WM/RKfc1uze56NZBKB3Los22iefbjHXQYAj1r9Ht857TAZpw8Phzjox+y+bwqSYfFzbGVHKdi0cVQoJ4iI7urPx0mep7KyZx3g0QfBztQ4c3zs1cRnyfRUguYjSDvmALP0rwkWD0dIsFZJI00ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA1PR11MB7063.namprd11.prod.outlook.com (2603:10b6:806:2b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Mon, 11 Mar
 2024 12:49:42 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::1de2:160a:9f9e:cb68%3]) with mapi id 15.20.7386.015; Mon, 11 Mar 2024
 12:49:41 +0000
Message-ID: <ef0ced4a-5134-4304-b15a-5940f14527eb@intel.com>
Date: Mon, 11 Mar 2024 13:49:37 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
 <20240305143942.23757-6-mateusz.polchlopek@intel.com>
 <ZegsMb-U8WbbT-mr@nanopsycho>
 <5853cc14-f630-4394-9d87-6ee5b1e10228@intel.com>
 <Ze6-NDACeH8j8mgW@nanopsycho>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <Ze6-NDACeH8j8mgW@nanopsycho>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0036.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::9) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA1PR11MB7063:EE_
X-MS-Office365-Filtering-Correlation-Id: cb9b1566-b6b9-4320-aa93-08dc41c9b852
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KNlHgaDmRwioacWwaZFGF44o0s2WaSckEBNaxWVopkFuYA88NIC23wr8TU69vMKFlW5JfncnpmL8yO/uB2Vk9x+IONJrkrH1vespdCj8gmt9Xc+UohOGryB3feo0V0Ki8/6H0aV4gcZNjD9/WhEFq2klh4PYyE0/IDyJiCzLFMWq5NX65+Xhw0Vf2TLWN92gYI4DWjDs7QtKve4PDorNxJ607ZZdxksnJazg/Pjrzi9G+y9aLLEA/EFFA3TfTNrSifL81saONmAsUfWGh2ZK9tx5iGqnJ2/rbj2pfNFRuF3JPA+bHGFKKQcPcqsfm+f2sV/Ci3H1YWvQ/qfXpbyjGHykLPY1bTg2aEvlG28D7zAWPipiXIeTWKKb0cESPVU0JiBJe8hft8MSMt+7ERA6CQoYtVEM0QrtM9Xryq5dhqzvdsKXyqDT9+NFDp5gk1KZcM/+YuLUvmnNCXNewpm5+sPixYRUlpqH3ZqAMQQjSwwRVpP4I8wUQY2xVeA+yZ+XK3SNZkofP9Pwvdxx07m2cwem2nlYsue5OtUshXnsOF4TANqPQsl7LVKUueTSJC37B0pi8b2r8sXADXzSi/T01MfsR884hR7uMhP3Mbk6Yam/ddC2IIrXy2YHbaoQt2WW4ZdbBXclBmvHrEJ+BsEdjWQ5VlL5VH/vQiDTtk33rqk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW11R0VUUTBjMW5jeU9jQjF3TkY3SVNvRitKSUU2SkJOWUdob3FXQVlzRHhH?=
 =?utf-8?B?OVM4V2NNb2VYZFVRY25hRW52ZzJVY2xxbHlIMDRZdkRxdjkrOTU1WktGWm1t?=
 =?utf-8?B?T25hOHhhOWhrS3J2K05jeTJsaUhBcDJqNEZOZmtaMHBhS1VpVmhuRVp3dTZP?=
 =?utf-8?B?R3h6cHJra1hEMDA2M1lzcWs5ZS9mdjdkNjJEUS9jYlBsMkVTMDdBa1ZzNm5i?=
 =?utf-8?B?MFkxNDM0UHJ2UldwM3VsY0pLZ1ZqQmdNQktsdzFDdjVjNkx0by8xeklFTjk4?=
 =?utf-8?B?aFgzTGxNVkNWRWZYUmlZQzd6anlFbm1veHN6TlF0Y0Z1RUJtMllIK2dOWHR2?=
 =?utf-8?B?cW9YUHdvMklWM2p6LzZZV0FEczNUcTZvWHl2eG5ZenF6dVYrSWNEZGVTZXFH?=
 =?utf-8?B?OFpsQTZVYjF3bGVGYlI3MmVmMmZycFc0ZEtibFV1T3VLVmZBNlozdjJ6b2F3?=
 =?utf-8?B?L1c0Y3kvdzIrVVNIZ0xSeGpJMUZFSytKckZtM3d3eXVWeVRzTGJWa1hNL1FZ?=
 =?utf-8?B?bExjRkZxZTA5SVdtcU9zSUFQS1c2eDhaZ3dIWFcyY1ZnYUprdGlKMFpEd3Zv?=
 =?utf-8?B?RVdjWWdqL3ZKREpaQWJPUUxPUWdYMllZam1QRlc5ek80NXlxdnRGZnBEcytB?=
 =?utf-8?B?TW9LNFZoWkI0WWJackd2SU1reEtUcG9KMzg4OWlqNTdzU0hScmdvSis2WmMx?=
 =?utf-8?B?VGJkTkh4MnhWck9IMkZzZkN0OGtrbDhEdkRCWGh5Wm9YS284UnIvb2RhbCtO?=
 =?utf-8?B?OW5qaDNnbVBPQnhmL0plQllObk1NOUZvMWdwZG40akpISGo3dkYxZlJMRVR5?=
 =?utf-8?B?UXJDNXFPTXJsZFl4cXk0dk5iaTRvTGY1SmRvcDNQNWJmeG5NdDVIblVENWVh?=
 =?utf-8?B?Q0dnNXYwUkNqaVVrd2VheEF3WFVzK2hiNUVpekxSNU05N001UGdGSTE5RndU?=
 =?utf-8?B?MHB6QnE5Y2pkV2xNeHI1Lzdzd3dmMnVVTEdudWd6ajRQbzA0Vitlc1VraUd1?=
 =?utf-8?B?WlIrNVZVMm1VRFRIbTJQTUFVN3U5U29ONXY4QnNzemNsY3ZQTUg2OVVjUlR1?=
 =?utf-8?B?WTBOTVMwMExVdHZZUm1wSXJCRTVaejRQeTlCbFlEWWxqTGVtUS96UmhyLzZT?=
 =?utf-8?B?K2MzTHd1LzdTY3J0WURwcU9BU3V6OVRRc01LZDl5WmxFaWlHUUlsK28zRHpE?=
 =?utf-8?B?bkdweXVzcmFpMVBtbHh2RldsZ3AzMkRmaDJ4N3JJa0gvUGJoVWgzVkNvM0lG?=
 =?utf-8?B?RDNZUFp4UlEyMEFIalRVU1BURlJXT2NNMit3UE1RTEtyYUwrZGJGQzN5aStF?=
 =?utf-8?B?SXJZWTJqN1lzREZZbUtQVFBBSjRMR2xxNXFUTjlaVCtTOU5JL1MwRnd5allI?=
 =?utf-8?B?WUhnZVhTbXBYelRUTFNvUVU2ZkRVTWlCVUtXWVZTTTlldEkyV0ptNFczbzhL?=
 =?utf-8?B?RWJkZ3FNTkxlSkhKTS9RNVlJNURnalh6bVlCSkFMbDNzRmtwTGNZSjd4dVJS?=
 =?utf-8?B?QUQyZ0xqRXlqbjZHQzNVUnpsbWFPTjN0clIyay9rWWZCUjk3R0loUFE3Z1h0?=
 =?utf-8?B?MytnTWd4OUdZdnBVNUpISlgvblVObDVFZTBCcnM2L3dscTc0NURSQ2ZwRDY3?=
 =?utf-8?B?UnFNL1M5UTl6OE01SlpUMEVJMm9UYW13bVVTRklEU0RBbFRDZWphY0I1V1p0?=
 =?utf-8?B?dFhPcXVLSUpoQ2JVUUdacWo5S1RjWlBvMlUybzNIdHZJeS9aUmRrc1NqS0NT?=
 =?utf-8?B?ekVXUWhPeDZLK0JtdkwvZmIzV2JEMUt3WTBGeExyaU8yL1ZhSWlqMm1ncTlr?=
 =?utf-8?B?Q0liT20xTXFmTmpZTDJLVkRTbms4dE42VTRqUWp4TWI3TmRUbWVKUlo2SUpz?=
 =?utf-8?B?TjNQU3lzbmxJYkdOcGJhdU1LaXhZUHdpdW0xK2VNc3ZZWUkxWVdScGx0L3h1?=
 =?utf-8?B?U1dCLzJNdC9EdmdMU1pxRy9td216K2tJakMxeUdERHFaZjNoV2ltNFlCNlpU?=
 =?utf-8?B?SHdnaVk5S1hBZjR1ejlmQjVVRzJSL1ZZUnZTZkJub3JLTHo4amx5MmROQnlk?=
 =?utf-8?B?Z2xpS0VTTDJodktzbHMreUVzRmV3b0NoZkJ0dEtGeDBvNVJPbnd5REt6N05C?=
 =?utf-8?B?VHhhQWJxZTQ4emo2U1ZraU9UTi9NNGVQMm1RVGlKVURoS2t4NlZmbjllNVJH?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9b1566-b6b9-4320-aa93-08dc41c9b852
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 12:49:41.8990 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GuVECYJvHVHX6NwrdTeZL24+cI1OMnPyne72/MoQgs8VInnAAn7pVjfiEhF/6UDJOXKH0EamG1tLlmBfbzbp1rkI3MTiR8C6PevhanFAAhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710161387; x=1741697387;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gkc8DExhYDkmnll8FmqL7XN5Qk3ZBrBZCDwpWdHSEKM=;
 b=SOvuwkAvB0nnc97X2rCJJLJRAfMtzfNUmcBSC+wBoJnWDaw8tEqJR2Gh
 s5FpAAhveqx8oGDF2ukunwoNz7klpIoCFy/cAggnBiARXz0U0ILnWYwLI
 n0Gt9I+05ceISBtGgaLWzI5B6BxhGiPQm+MMhTPsSqKnCsJh/7kIEhpWZ
 /970Ohova73try7DnvdRb+694DjP1djUyCJ4b0tNZvLnuytQOvY7E7i2B
 ZVFLvCC7HGtyFL0fAeW9dejLpZRQj0FascRtFA1doyHNzNedkmvwMQh3C
 7ggSpedVYczDAYnGXc9TCiwK4b7w4DNGRKAvf5Np7vYDUaEEuOWqi1svB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SOvuwkAv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 5/6] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/11/2024 9:17 AM, Jiri Pirko wrote:
> Fri, Mar 08, 2024 at 11:16:25AM CET, mateusz.polchlopek@intel.com wrote:
>>
>>
>> On 3/6/2024 9:41 AM, Jiri Pirko wrote:
>>> Tue, Mar 05, 2024 at 03:39:41PM CET, mateusz.polchlopek@intel.com wrote:
>>>> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>>>
>>>> It was observed that Tx performance was inconsistent across all queues
>>>> and/or VSIs and that it was directly connected to existing 9-layer
>>>> topology of the Tx scheduler.
>>>>
>>>> Introduce new private devlink param - tx_scheduling_layers. This parameter
>>>> gives user flexibility to choose the 5-layer transmit scheduler topology
>>>> which helps to smooth out the transmit performance.
>>>>
>>>> Allowed parameter values are 5 and 9.
>>>>
>>>> Example usage:
>>>>
>>>> Show:
>>>> devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>>>> pci/0000:4b:00.0:
>>>>    name tx_scheduling_layers type driver-specific
>>>>      values:
>>>>        cmode permanent value 9
>>>>
>>>> Set:
>>>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>>>> cmode permanent
>>>>
>>>> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
>>>> cmode permanent
>>>>
>>>> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>>> ---
>>>> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
>>>> drivers/net/ethernet/intel/ice/ice_devlink.c  | 175 +++++++++++++++++-
>>>> .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>>>> .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>>>> drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
>>>> drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>>>> 6 files changed, 195 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> index 0487c425ae24..e76c388b9905 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>>> @@ -1684,6 +1684,15 @@ struct ice_aqc_nvm {
>>>>
>>>> #define ICE_AQC_NVM_START_POINT			0
>>>>
>>>> +#define ICE_AQC_NVM_TX_TOPO_MOD_ID		0x14B
>>>> +
>>>> +struct ice_aqc_nvm_tx_topo_user_sel {
>>>> +	__le16 length;
>>>> +	u8 data;
>>>> +#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
>>>> +	u8 reserved;
>>>> +};
>>>> +
>>>> /* NVM Checksum Command (direct, 0x0706) */
>>>> struct ice_aqc_nvm_checksum {
>>>> 	u8 flags;
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> index c0a89a1b4e88..f94793db460c 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> @@ -770,6 +770,168 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
>>>> 	return ice_devlink_port_split(devlink, port, 1, extack);
>>>> }
>>>>
>>>> +/**
>>>> + * ice_get_tx_topo_user_sel - Read user's choice from flash
>>>> + * @pf: pointer to pf structure
>>>> + * @layers: value read from flash will be saved here
>>>> + *
>>>> + * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
>>>> + *
>>>> + * Returns zero when read was successful, negative values otherwise.
>>>> + */
>>>> +static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
>>>> +{
>>>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +	int err;
>>>> +
>>>> +	err = ice_acquire_nvm(hw, ICE_RES_READ);
>>>> +	if (err)
>>>> +		return err;
>>>> +
>>>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>>>> +			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>>>> +	if (err)
>>>> +		goto exit_release_res;
>>>> +
>>>> +	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
>>>> +		*layers = ICE_SCHED_5_LAYERS;
>>>> +	else
>>>> +		*layers = ICE_SCHED_9_LAYERS;
>>>> +
>>>> +exit_release_res:
>>>> +	ice_release_nvm(hw);
>>>> +
>>>> +	return err;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_update_tx_topo_user_sel - Save user's preference in flash
>>>> + * @pf: pointer to pf structure
>>>> + * @layers: value to be saved in flash
>>>> + *
>>>> + * Variable "layers" defines user's preference about number of layers in Tx
>>>> + * Scheduler Topology Tree. This choice should be stored in PFA TLV field
>>>> + * and be picked up by driver, next time during init.
>>>> + *
>>>> + * Returns zero when save was successful, negative values otherwise.
>>>> + */
>>>> +static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
>>>> +{
>>>> +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +	int err;
>>>> +
>>>> +	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
>>>> +	if (err)
>>>> +		return err;
>>>> +
>>>> +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>>>> +			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>>>> +	if (err)
>>>> +		goto exit_release_res;
>>>> +
>>>> +	if (layers == ICE_SCHED_5_LAYERS)
>>>> +		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
>>>> +	else
>>>> +		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
>>>> +
>>>> +	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
>>>> +				      sizeof(usr_sel.data), &usr_sel.data,
>>>> +				      true, NULL, NULL);
>>>> +	if (err)
>>>> +		err = -EIO;
>>>
>>> Just return err. ice_write_one_nvm_block() seems to return it always
>>> in case of an error.
>>>
>>> pw-bot: cr
>>>
>>>
>>>> +
>>>> +exit_release_res:
>>>> +	ice_release_nvm(hw);
>>>> +
>>>> +	return err;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
>>>> + * @devlink: pointer to the devlink instance
>>>> + * @id: the parameter ID to set
>>>> + * @ctx: context to store the parameter value
>>>> + *
>>>> + * Returns zero on success and negative value on failure.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
>>>> +					   struct devlink_param_gset_ctx *ctx)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	int err;
>>>> +
>>>> +	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
>>>> +	if (err)
>>>> +		return -EIO;
>>>
>>> Why you return -EIO and not just "err". ice_get_tx_topo_user_sel() seems
>>> to return proper -EXX values.
>>>
>>>
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
>>>> + * @devlink: pointer to the devlink instance
>>>> + * @id: the parameter ID to set
>>>> + * @ctx: context to get the parameter value
>>>> + * @extack: netlink extended ACK structure
>>>> + *
>>>> + * Returns zero on success and negative value on failure.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
>>>> +					   struct devlink_param_gset_ctx *ctx,
>>>> +					   struct netlink_ext_ack *extack)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	int err;
>>>> +
>>>> +	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
>>>> +	if (err)
>>>> +		return -EIO;
>>>
>>> Why you return -EIO and not just "err". ice_update_tx_topo_user_sel() seems
>>> to return proper -EXX values.
>>>
>>>
>>>> +
>>>> +	NL_SET_ERR_MSG_MOD(extack,
>>>> +			   "Tx scheduling layers have been changed on this device. You must do the PCI slot powercycle for the change to take effect.");
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/**
>>>> + * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
>>>> + *                                       parameter value
>>>> + * @devlink: unused pointer to devlink instance
>>>> + * @id: the parameter ID to validate
>>>> + * @val: value to validate
>>>> + * @extack: netlink extended ACK structure
>>>> + *
>>>> + * Supported values are:
>>>> + * - 5 - five layers Tx Scheduler Topology Tree
>>>> + * - 9 - nine layers Tx Scheduler Topology Tree
>>>> + *
>>>> + * Returns zero when passed parameter value is supported. Negative value on
>>>> + * error.
>>>> + */
>>>> +static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
>>>> +						union devlink_param_value val,
>>>> +						struct netlink_ext_ack *extack)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	struct ice_hw *hw = &pf->hw;
>>>> +
>>>> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
>>>> +		NL_SET_ERR_MSG_MOD(extack,
>>>> +				   "Requested feature is not supported by the FW on this device.");
>>>> +		return -EOPNOTSUPP;
>>>
>>> Why can't you only return this param in case hw->func_caps.common_cap.tx_sched_topo_comp_mode_en
>>> is true? Then you don't need this check.
>>>
>>>
>>
>> Hmm... This comment is not really clear for me, I do not see the opportunity
>> to change that now. I want to stay with both checks, to verify if capability
>> is set and if user passed the correct number of layers
> 
> My point is, during param register, you know if this param is supported
> or not. Why don't you check hw->func_caps.common_cap.tx_sched_topo_comp_mode_en
> and register this param only if it is true?
> 
> 

I see now. Okay, I will simplify that and I will send new version
tomorrow.
On the other hand I plan to send other series for devlink soon. That
will include an enhancement to check similar stuff in drivers in more
convenient way.

>>
>>>> +	}
>>>> +
>>>> +	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
>>>> +		NL_SET_ERR_MSG_MOD(extack,
>>>> +				   "Wrong number of tx scheduler layers provided.");
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> /**
>>>>    * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>>>>    * @pf: pf struct
>>>> @@ -1478,6 +1640,11 @@ static int ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>>>> 	return 0;
>>>> }
>>>>
>>>> +enum ice_param_id {
>>>> +	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>>>> +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>>>> +};
>>>> +
>>>> static const struct devlink_param ice_devlink_params[] = {
>>>> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>>>> 			      ice_devlink_enable_roce_get,
>>>> @@ -1487,7 +1654,13 @@ static const struct devlink_param ice_devlink_params[] = {
>>>> 			      ice_devlink_enable_iw_get,
>>>> 			      ice_devlink_enable_iw_set,
>>>> 			      ice_devlink_enable_iw_validate),
>>>> -
>>>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>>>> +			     "tx_scheduling_layers",
>>>> +			     DEVLINK_PARAM_TYPE_U8,
>>>> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>>>> +			     ice_devlink_tx_sched_layers_get,
>>>> +			     ice_devlink_tx_sched_layers_set,
>>>> +			     ice_devlink_tx_sched_layers_validate),
>>>> };
>>>>
>>>> static void ice_devlink_free(void *devlink_ptr)
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> index 319a2d6fe26c..f81db6c107c8 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>>>> @@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>>>>    *
>>>>    * Returns: zero on success, or a negative error code on failure.
>>>>    */
>>>> -static int
>>>> -ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> -			u16 block_size, u8 *block, bool last_cmd,
>>>> -			u8 *reset_level, struct netlink_ext_ack *extack)
>>>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> +			    u16 block_size, u8 *block, bool last_cmd,
>>>> +			    u8 *reset_level, struct netlink_ext_ack *extack)
>>>> {
>>>> 	u16 completion_module, completion_retval;
>>>> 	struct device *dev = ice_pf_to_dev(pf);
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> index 750574885716..04b200462757 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>>>> @@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
>>>> 			     struct netlink_ext_ack *extack);
>>>> int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
>>>> 			    struct netlink_ext_ack *extack);
>>>> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>>>> +			    u16 block_size, u8 *block, bool last_cmd,
>>>> +			    u8 *reset_level, struct netlink_ext_ack *extack);
>>>>
>>>> #endif
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> index d4e05d2cb30c..84eab92dc03c 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>>> @@ -18,10 +18,9 @@
>>>>    *
>>>>    * Read the NVM using the admin queue commands (0x0701)
>>>>    */
>>>> -static int
>>>> -ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>>>> -		void *data, bool last_command, bool read_shadow_ram,
>>>> -		struct ice_sq_cd *cd)
>>>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>>>> +		    u16 length, void *data, bool last_command,
>>>> +		    bool read_shadow_ram, struct ice_sq_cd *cd)
>>>> {
>>>> 	struct ice_aq_desc desc;
>>>> 	struct ice_aqc_nvm *cmd;
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> index 774c2317967d..63cdc6bdac58 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>>>> @@ -14,6 +14,9 @@ struct ice_orom_civd_info {
>>>>
>>>> int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>>>> void ice_release_nvm(struct ice_hw *hw);
>>>> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>>>> +		    u16 length, void *data, bool last_command,
>>>> +		    bool read_shadow_ram, struct ice_sq_cd *cd);
>>>> int
>>>> ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>>>> 		  bool read_shadow_ram);
>>>> -- 
>>>> 2.38.1
>>>>
