Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF889C5AED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 15:52:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CF5E40139;
	Tue, 12 Nov 2024 14:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XdsGqJs4lhS4; Tue, 12 Nov 2024 14:52:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00A874019F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731423170;
	bh=yDK134qPtu3DzI6dCPsV3lo37radNKUg50X3Bb211Xg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8W4D5Wshf0Ckbh1l6G7UIZKF4k+ldnYd1Y8rsy/n34fBGRAXT/2vLA6p8EUM0B95D
	 V31kKqrzMBXZq1SzQc76lnGJCW43S2YP7iwjh1WLYUmBq4/LnfN13iMlVmZqgGVfw2
	 GqLtQWZX9N8TsokkwjZeO9aESgqV2NeBOp4KiqV69zuyxiv20cBIWntTBcURsePTFc
	 5tUrqYLSbFNkhe8arysHObjGqRz0NEdurW3EBlvQUl5Qv+Gh5+2qK5wbRXHaIx7Ciq
	 mvkjrawUJUwbK4W7KRr88+u0haBtaxbJCa/oe6lX/lPCxTQdDv4QtGMayoVfB/sO27
	 BUuMENryf6GfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00A874019F;
	Tue, 12 Nov 2024 14:52:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12FFFDB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 14:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 016EB80E19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 14:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9zlw6VvlaUNY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 14:52:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E008380B1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E008380B1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E008380B1A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 14:52:46 +0000 (UTC)
X-CSE-ConnectionGUID: /N1+XfpQSCyDZ2iXQdg9mw==
X-CSE-MsgGUID: 0LfRYHBAS0mpGcRa9sgrQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48715930"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48715930"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 06:52:45 -0800
X-CSE-ConnectionGUID: SAhl1nhISdG4qUpMG5cJpA==
X-CSE-MsgGUID: oz92B18xSGyK4QPmMOTfeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="92464681"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 06:52:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 06:52:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 06:52:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 06:52:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ElW1j1JQA6zqX018gViLGK5F4c6o+Ygt+nXx4GQYN3ryrrEDaZKlQOtLvjXjPf+6CMbc3O4pShaemTr0f7m7b2Ypb3CSuISHe+gH9HAf/VKzhPhoZtMjZjg+ckGH0Hr+OGmbBiRHggxhkAeTO66smBw22DCToGGXeClrJypKGXcsiM4udGrQqS7ImXgK+CimxMJvBqa2LaGrX21brQUahggQEO75pQa9nT4DpEoukRjEEgZuM+NeGeM6it+GV/UfeD2E/3NSr32uN5S3+sRGbZ8+Vy1zZb4bO7sfIkvWngHNEU7HFvKha95NzKkrqh+cNB60R3h3ZHIxF5aV8XyqfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDK134qPtu3DzI6dCPsV3lo37radNKUg50X3Bb211Xg=;
 b=Al03VICbrAnsuP/iAxB2u1I0wzvCwZJuHnLkJChOGRpk1u9zHUZRYrkTzTKJweVLVohWbUA0sqwOijUjFBjvHlEZOj4ASxRQ97eX5UzyBVNDsV3TRJ/bqTvgNzzvT9TROG4879Y52wsA7ra3IvDcAXIESV7GNhTRdvMqoexYYx8taStQ6KLmCMqTwUvZDIuWp1s+lMI1IpOMVuafLe2yrGMEXpA4b4sgMwijidGbCVYfi0nSDnzA75LfcenYXxQD+dvI98PDECwPJ9mz5h9N4WlXXIgA2NI65Ht8Smdyzj4w1bysbnV+I88q1XA9W/TMe66JTcifliZtCCF2HN6N1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by PH7PR11MB7028.namprd11.prod.outlook.com (2603:10b6:510:20b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Tue, 12 Nov
 2024 14:52:41 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 14:52:41 +0000
Message-ID: <2e6cea97-0ebf-4767-b014-680a0502e1f9@intel.com>
Date: Tue, 12 Nov 2024 15:52:34 +0100
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Jacob Keller
 <jacob.e.keller@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Wander
 Lairson Costa" <wander@redhat.com>
CC: <tglx@linutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Simon Horman
 <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open
 list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
 <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
 <20241111125345.T10WlDUG@linutronix.de>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20241111125345.T10WlDUG@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0483.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7e::25) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|PH7PR11MB7028:EE_
X-MS-Office365-Filtering-Correlation-Id: 18f72b50-e26a-4719-f077-08dd0329a863
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzVtYkROc1FWdVZYVTNDa0NVRXhub205ZjVUVUo4K0gyU01INlFsV2RkV3U0?=
 =?utf-8?B?QjE3b2dqUjByVnBmWk5UQTBkTHJXWmR4a3Fqci9BSDB4TUY1c0tyS0tGV1U0?=
 =?utf-8?B?OGcvNkRMMU50RW45VGR6MWFqemdSVWN4bmNUNlZWd25KVHVBd0sxVHV1RUZP?=
 =?utf-8?B?LzNLVWk4aGQzUUFsdUJtTzVGR3JiR0Fkb1NlZm5ZVGNPU29Cdk44dmUyY1dt?=
 =?utf-8?B?d0FmMnBBRGR1Yk1zVEc5MFVZeGNsWHRBR3VxSEhKalRSSXU0TklsNFFQUzNB?=
 =?utf-8?B?U2J1TkNBaERPNmx2RUJvYStsMDVydnN6ajBVa0dhZVVvSFhUdk9jcWxFaGkx?=
 =?utf-8?B?YnQ4TS9FRyt3TDkvajJLeldJUVAvclRWeEk2Vm1IbzdRM3BkdkpLbXBRTWx2?=
 =?utf-8?B?M0JOUk1TdUNyQVkvNDlkaXRjbGlwejRocmoyTEVKWGxJcFI1akhuY2NqOGV6?=
 =?utf-8?B?N3k2REJBVHlTcTZTUEJqeGJQdDh2cUhJMnd1UkZiSndIM2JUMzZ6ZS9lMndT?=
 =?utf-8?B?Q3R4U3p0TGRJNFhRV0ZaMndRZEJpY0h6N2x0c01iVDEzQi83bXpxdW9MdkdW?=
 =?utf-8?B?R3ZOVHh2aGI0RXZwMk1aSEpCbVJKaVBScmhPSFQxcHcwYkluWnV1bzAxdE4v?=
 =?utf-8?B?cS9WTlRqbHBSN2VBMzhmb1FUUkFWcGVpc25HVzVFK1VENWZZRDZvdlNuZUcx?=
 =?utf-8?B?UHhRRUxGVXJ2d2Z4NmZoY25VNlIwZXdkdENXZ2tTK200VUJuVVJHRTFxNWRP?=
 =?utf-8?B?VXRZbTJZODM0UVJBUlczUStnUTJpdm9yWElONVEreEF0RXBFeExIMEphR1JE?=
 =?utf-8?B?TkNRMmJHdXgzUzUreVFZRGZWbnpTN1FtTkhnTnUwV1pUNE1uMTF4Nk1paDh2?=
 =?utf-8?B?QTYvVmpTd29xbk9tR1NHY252bkJqZytqZGZNLzNXRzVzc0hpYlJib0w1bTFX?=
 =?utf-8?B?QzFXazVKMGVMc1JsTjB1TUl6WmdWRTlqUVpEVDIvRXgwNzhkVzQ1UGsweEpK?=
 =?utf-8?B?NkV1QzljNERZcFVGZWpzZVZqZXpuaEhKejd2NlpaN05xcmlNWmhuYmVKL1Ni?=
 =?utf-8?B?SE43NkZUQXo0WG9yZzFwMVJMMStkQmtlRzFXK3pmZVZqcE9XK1BFWHUzb2px?=
 =?utf-8?B?amM4UjRhbXJsTDJrcllhL0x4d1V6L1RxTURNMUQyOWlmS3Iyb1lnS1VTMlVx?=
 =?utf-8?B?THpDbno4OTd1NXJxWXMyclc1ZmVPOGppejRGMFZIWEpRYTdsa1ZLUW9Mdy9t?=
 =?utf-8?B?dUZaZ1NPZVRZd1ozTE85d0pYSkU0K0ZyQmpJVkVjSkVXMTF0TmYxNTFldmxi?=
 =?utf-8?B?UmpUYTlJOVowemxrQnBXU0lIVDZpTWtPaW1IUW1YczQyM3BMdkNlWEZlYlI2?=
 =?utf-8?B?NTVsMlZQTWRUbGMvRThGaXk1MkZBMTc4MEpabm1URnpJZUhXOEVrOXZzQVNr?=
 =?utf-8?B?R3JuS2hUWWM4Vk9zSWFFcWFnUXZGalFEM2h0Y1dDUm5IcHA4WEpFazBPejhk?=
 =?utf-8?B?THczaWFKY0E5MGpIMDc4b1dpVVRCTVN2WkMxSTNZYVRlSFFDYzhHQkZ6blBC?=
 =?utf-8?B?Y1Y0emU3YnBWZjAzV01XQ1pHTHFmRk9pQmJRclhlaHdIbldJSk9jUDVCOUFP?=
 =?utf-8?B?Sy9yS1BGR3NiTWZRLy9Wc3FLUnAyYkcvKzJRODZRemJ1dnRjcWtwUVpmSEQ5?=
 =?utf-8?B?eFlOMVhTMmRKZEFQWlB6VzJWbmJjMFFCUTdqU0hzQVVxQmRwenc3ZjVya05R?=
 =?utf-8?Q?F+RsIjOJO2cv/DBx7CXhkEFPSoYK8Xj9MyHzYiq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0RaaTBKdFM0dlJtbXdtVFJrMlR1K0NyV1dLS0VLZjVDb0RJME9hT1IyMzMz?=
 =?utf-8?B?d2JvUUhNWWhmN0N1WTVsSWJEb2dwTnZvZWd0T3FtZFRibzI4bUdKQmRsd3I5?=
 =?utf-8?B?T05WWTgzVmtvZFp4SEZnTUFVbjdzMkQrL2RmOUVpNUxBQU81bFRKZytGSEFN?=
 =?utf-8?B?TDIzb2Q1ZjJPR2lKNWVXb0hwNUhmVU1qWmZ6VjNPTzdydTNtMFNaKzlmL1Ew?=
 =?utf-8?B?OGFlTmJRYUtuZm5jNlBiR21zRkwxeGI5bXJ5ZWlaTzVIQ2I2dG5LOXZSQ1BQ?=
 =?utf-8?B?dmJaRXdTMDNteTFIVUNWUUFOL3I0ak5OTTErSWRvNXpQOXFBNk4weTVxTjJZ?=
 =?utf-8?B?K1ZQVDE0WmJqY2NQZDZBK0wvbytmRW9tZytZa1ozMFNGU3V1R2ZTcThGU3Vs?=
 =?utf-8?B?alJnNnlDSVJMNzAwNDBzbkg3SHNhWnFhNXlMQy9xWWdDRzVqOFBwVGRFNE9M?=
 =?utf-8?B?ckEraDhxL2dEcXpNZGIwcDJWYWJkczNDb3VOMXlMVUNJbVNld3FiL0tRTG9G?=
 =?utf-8?B?NVcxVEttSEl0c3JFYkIvVm9hc0p1SFdaRWNScncwblpNamxVUFQrNzBDUGN4?=
 =?utf-8?B?KzVKMkZYZEMrR082dzY2LzIwWnRnNmRvY3BjNzBSMXhHa3VRc3UwZ0d0YTcr?=
 =?utf-8?B?dlV2REdsRnRGKzQzR013aGgxL1dtTlhnM1V4VDBFRjlhMDFiakwwSDhPckp1?=
 =?utf-8?B?Vk1JQ3FoZEVmcnBPWjZSVVVuaFZjYzU5T1RhU2lmaE9lOHNzeWJPUS9pMFV1?=
 =?utf-8?B?dlRLZ2FRejFFWC94cTZrUlliYWFOaDNxZUVNYTJSUEwrYnVpM2pmWGRvWHV4?=
 =?utf-8?B?UnZMWUdubGpLKzA2b2pEeU10cGQ5bjQwUUhocGY1cEtPK3J0UEZKUnF4dHZx?=
 =?utf-8?B?N0VEeUk0eWRRSjM3cFZXV1UzUG9zbXkxT1prQStZZG5HWDdSTGt2ZWg0dG5l?=
 =?utf-8?B?Tm5wRFZOMG0xZW1oSXdIQitDbHZUYVMwQnRkYk0rSWNEQjBFSDNvNzc0b1Js?=
 =?utf-8?B?KzlEUDhVVy9hbGM5UTVCVVRvdDlTbkNIcVNvUEphaXRIZVJTM1VxQUZNTHhi?=
 =?utf-8?B?UzRuUE5LbUoxZHBVVGRVOHVsdUxTM0kzVS83dXo5eU91VjhYREVhSzlBQmFi?=
 =?utf-8?B?VXFWVFVwSzdESWNBKzQyM2RtUGd2TTdqRkcxMGpMWHZCaXFyQThXUmVjMDJw?=
 =?utf-8?B?aDltRGo1UE9ldzFwOHBIcmd1NERaQTBJOEhWeDBiT2p4MnFxQ0tPeVdaWWJa?=
 =?utf-8?B?Vk1vbmRMaXZ3b1BZZ1E1eUxsRWlXUmExZ2VjajcydzFtWkhvU0JLd2hIMlow?=
 =?utf-8?B?OHJpWm5mUEEyU0V2Q3FyUDVrV1A1VzI2L1pEVE1uUy9GdDhVbmErcWZoQnA4?=
 =?utf-8?B?UEFqVVZtaGs3TjVsWm9qK1ZvOFoyN1lhcTJsZ0ZVSjNGL0sySHJPUnZiQTls?=
 =?utf-8?B?c0UxcUxmRHBVanRUc2Y5S0RlYW5kakM0amZDQXFMRURaQ2NaNGEwZ1Nib0NW?=
 =?utf-8?B?YnB5WFpPajY3TmdqK2Y3akx0RTUwQmZiVEFuSm9FVHlqeWRoTUREYjZjcWVJ?=
 =?utf-8?B?WEk0UGQ4WlA1R255Zk5vdUl0Ym5BbDZpdTRFR2dQa1R1QXNVdVcyWGVwZlk3?=
 =?utf-8?B?czl3WGVpR3lCMUpQNE9BT1Z5V1d1VDlHSE1xbEtWK0RPMTZGVC90S2VGeGtE?=
 =?utf-8?B?Sy9VNzJrNDVqZVVvLzRxT056RXA5ZlRCWVovaEVlc3hBRWhGalBza1dHL3Nh?=
 =?utf-8?B?ckVyZngzN3kvTUUzT3ZQbkxmMndxMGNyMnVoNXRyUXIrR0taQnpWWEQ5dXRN?=
 =?utf-8?B?QUZGOWpNOWMxS3pBTUtUeHJ4VHprWXM1M2V0Y0N2aWRvcjdjZU9MOVdYT0Zs?=
 =?utf-8?B?OTdPQm03WngzLzZyVXF2anhmbVE1MHlGdkxpOEpIV21ha0RyTGRFNWRWTnBT?=
 =?utf-8?B?bGRpS0pWdy9HREVqbmswS3h6K0RpVFNtUTEzVTRRZWFHVzRTa1Y1cHQ4Mmhn?=
 =?utf-8?B?NzV0dFptejltUDNVL1FieFFMejQ3U2oxbWdaaUpXb05hWURZdFdTbGtFTlRP?=
 =?utf-8?B?UEhJdGwrT3AwRXVqSFNMMnRnUWordWROa0g4VVdSVEthTGNrN24ydjZ3aVBk?=
 =?utf-8?B?ejVzY3QxbEp1SjdlSGhwUjVCTlprSTExYnV0bWh2MnMyTGVHK0ZYZlMwSWsx?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f72b50-e26a-4719-f077-08dd0329a863
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 14:52:41.2669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HgyU4yJAVT+IvZ2j10TEHchzf/tcMtTMwWwzYPU4XSQCIsNUURg7s3of40jAmojhbCujb9T0Nq9yxFBDXzMhCGBbmar8tHSdrs0njUh0zfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7028
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731423167; x=1762959167;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gkpQUECVHw9uQPoarRX6K/ms+nJQhEcKoiFNTDlnSTg=;
 b=allMu8itSiaVPejJaPi+Ru+L8X0UnH9aLJkFFKMb8bcDoFP896Dz/i4Q
 EYVa8cUbGZ9WxWiuv+wXZWaKnR9Ii6/07Zg62I+eVf+k35226ZZtvm+4q
 TBwIdPmN28vH4yWVY8TTkSgqFu4qWOkNADdTOqdipSQ/IvTWfKdRTs4ws
 3+eybxa8lq8fSi5F+vrj1PIEjqqA/ypqCpSkCO6+i4HN5od94bvYBOzcG
 18ZZ6HMG38KC/HIifhq1HBWc2t+wH1TurUVfOGlsX7+t2lCGNjdR/RGAk
 huBQ0hOf/TxP23blpMNl4Yb35ucu8djkzMSk5a6RMUHxaQnh5FpoONAfd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=allMu8it
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On 11/11/24 13:53, Sebastian Andrzej Siewior wrote:
> On 2024-11-08 15:00:48 [-0800], Jacob Keller wrote:
>>
>>
>> On 11/8/2024 4:28 AM, Sebastian Andrzej Siewior wrote:
>>> On 2024-11-08 13:20:28 [+0100], Przemek Kitszel wrote:
>>>> I don't like to slow things down, but it would be great to have a Link:
>>>> to the report, and the (minified) splat attached.
>>>
>>> I don't have a splat, I just reviewed the original patch. Please do
>>> delay this.
> 
> this clearly lacks a `not'

sorry for the slowdown then,
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
>>> Sebastian
>>
>> It will definitely splat on RT kernels at some point, if there is a
>> spinlock.
> 
> exactly my point.
still would be great to add some basic RT tests in our VAL,
but it's unrelated to this patch


