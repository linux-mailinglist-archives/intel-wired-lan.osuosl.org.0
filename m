Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E588ACB76CA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 00:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FD6880C2F;
	Thu, 11 Dec 2025 23:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ot8WemVGDjJ8; Thu, 11 Dec 2025 23:59:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A411480B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765497574;
	bh=gN/IzfgVljL3gUKsu7MBviS0Vh4wy5ii6bxO2/n3eok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HbmvdUDk8kCWoertu50EBZ5UtVDqielbu3Wjdq3yvcWE8+8aGPpiJ5YjzZOxOE+4W
	 GB1KTPAVtnhTFNVPXo5xS3ilPe2zTUrBecZMe53eFow64MkVFd6hZPWuV890tde/M8
	 bU9FK3HchIOxVqbdV6CB/Xvhh8ujiZIM1m3Fx3ma+sSPwY5mdgm0RMXEbv/j7DaBI2
	 yGS0NIQmbecuq9e0V9hsqEWeT/979dWjXoNZigm6cLFgUMVnqQrmPHLFUWJB9g6HOl
	 bZa/WFz11XOic79JwXGK5UnqFsHHo+dT82z2o6PbjZczKFdchyyvHTnI+2aFaa46Xu
	 ZJ19qri6fB7og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A411480B9D;
	Thu, 11 Dec 2025 23:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F477E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 23:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E0C240308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 23:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tc3xTFN5KvDh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 23:59:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 325F5402EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 325F5402EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 325F5402EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 23:59:30 +0000 (UTC)
X-CSE-ConnectionGUID: VBdYR/HXSpKDfl45sBhE7A==
X-CSE-MsgGUID: yT8sSCViQ3ueKYePNUgXAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78600511"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="78600511"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 15:59:30 -0800
X-CSE-ConnectionGUID: LUToqSIpQjeJveZZhEvVew==
X-CSE-MsgGUID: j62HadBNQWmX7OrBIkmG/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196220009"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 15:59:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 15:59:18 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 15:59:18 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 15:59:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EF+HAVaxbgJ2FgHfO2vjQw7KznhfPfcR3HT+rJ3G1ZvPe7Q8Jd82y/Ug8HEnTOtrTJZHU60+mvsqIkWW3MA2DgijymAKzlGeOmgK44aTOjC2arkCAlcrhd7ezSQyUMubjLirOsyIWLtOG5HQOJAm2z9obTXLVjmLOprHTwi0RnSRucTyS0tA3E/3EAmaKf0tDSDeijpRbRXwDxl/ZJzpcBfUThzNCtwf2z8tmS+UESAlHo2B61jmsqYo41NzUZpCAyx1G6qpSntn6lm0YwVtxr3rGciMl29tWzj3duF43FQIREBhWhi83UJ+MeycasDQeR8p3/JwcqZgEUqlXoMbRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gN/IzfgVljL3gUKsu7MBviS0Vh4wy5ii6bxO2/n3eok=;
 b=QEnDDciZR7J/b+gjqveWewq6OHUZ7A8kPirqD/kdTQiIBtKj1LvhhxIlVllTqL95y/NO+3tXNFARdKQaRrKZOIf8Luu/bGJHqom5lJrD0YgIblSt2n0LyX/pySU/oxSExrfwClZfzgYcL8kPDJnw0S62jYvAqTg0zjEFWaptDEca2ZnR+si9frBEeVN3RraTkFXNL0nim+Gj9oASBZfN1ki+qaIepixZYezPmoW7SJeA2iRl5o4Q+Q6WVeJ+GM23B18XULLBKRGVKyG0ENmAXiuPkKufEqzAlCurE+RjijzqVJrZXBop5W0lshqH0CTSWSSJ6QUPAmiBaP6Bvzac8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BL3PR11MB6505.namprd11.prod.outlook.com (2603:10b6:208:38c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Thu, 11 Dec
 2025 23:59:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 23:59:11 +0000
Message-ID: <7bcc0f14-0005-4d72-9bc3-a32304499630@intel.com>
Date: Thu, 11 Dec 2025 15:59:07 -0800
User-Agent: Mozilla Thunderbird
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Aaron Ma <aaron.ma@canonical.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251205082459.1586143-1-aaron.ma@canonical.com>
 <20251205082459.1586143-2-aaron.ma@canonical.com>
Content-Language: en-US
In-Reply-To: <20251205082459.1586143-2-aaron.ma@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0006.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BL3PR11MB6505:EE_
X-MS-Office365-Filtering-Correlation-Id: d1f01f69-41fa-44ef-88a9-08de3911476f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3NUTmt1U3ZtTVloMzNuYVdhOWdobTlaRjlOQ1N4ZGlJQW5vZGw0eDJ3THkv?=
 =?utf-8?B?UnVUdXhuRU93WWtrUHBPcExOTVJrdDFkUm0xK0prU0szTlNsWktsWGNpa1A3?=
 =?utf-8?B?c0svbnUvZVNuQU1LT0s4cjB2Tm5YMkJYWTRBb1ZBMTFEVEZYenFJcDN0WXNv?=
 =?utf-8?B?K1pQNWJtV1VkTGJReFg3cWM0aVNiUXFQczE2QWV4L3BPaTJmdXp3aEU5MWwz?=
 =?utf-8?B?N3NYNDBzeUJuai9XQmQwWXRnQW5pNFExTmtqdS93OTM3ZkdHSU1tcmxvU0hQ?=
 =?utf-8?B?dHJLNStLa1NPU29iRGRzcFRibzNxbE9RWlZselZQWjVTMHNoUTZxMW81eDBY?=
 =?utf-8?B?ZUpkaUU2b1psdWJCcExWelRCR1lXYkF2S1FKNlhCMjRMS21pQ09HSmdleklw?=
 =?utf-8?B?d3MyTTlMekhobGZ0VTBpMEx0cmVMSU41YjFONFdzbS9SU0p1VzNQZ1h0RDhX?=
 =?utf-8?B?MW83d1BHSW41YWsvWnE0dCtVS2RkRGdQQ0Y5amNhSnRSeWpwaDBRWWpPK0VN?=
 =?utf-8?B?Vzh5ZVdWSWx5Tml3SVU0Y014MVV5ZnJEcXY0SkxESUFTa2ZHU0hmWmgzVm1D?=
 =?utf-8?B?aW1GU1NpOFZlTE5ZOFVFTHdGcXc2MFlpelFVM0FJR0EvSHJtL0ZmYzI4RXB2?=
 =?utf-8?B?c0NLV3h0T004YVlUcDQwMkw1dG15TlJ0ZUxHZzYxeWpzZXNFcHNzdFZVMUNH?=
 =?utf-8?B?bndXY1VxTVo5dlM1dFd0dDNrb0lwcXIrNUxWV0NBdk9BZW5XallpVXQ1UlM0?=
 =?utf-8?B?d25tWUEwdGpqUVNGSFVZcmNGbVoxbC9FcE4wLzVvZmJiSG4xbGVNaHJnem0y?=
 =?utf-8?B?SGR5MGF0aWlEeUN6VGlDVEhnOWtFR240QWh6OEF3TkNYVFowSTh2VERDZ2ts?=
 =?utf-8?B?aHhldUM2ZWJjSHMwSGlJYmhoSU9kVzBNMHFscUxxMDljSFBWZ3Y5WkFNNzFZ?=
 =?utf-8?B?QXMvbEhxSDI4aTlpT3VNMkpLdDkwZkN1cWk2NHljZ05lSUpUdWRjc2UwZXRi?=
 =?utf-8?B?d3JCcFNPNmRrMHBmYkV0czAxbnQzcmljb2U3N1RaN3QvU29jWUhZSTRsbm1w?=
 =?utf-8?B?MktNczhwQ2VxdSsxMzRLenpIUEkvbGJQRmRCSjdGNHBNUjhVMmJMT3FGREtt?=
 =?utf-8?B?d3pqRm9GazBhYVgySDhIcHFQVVNFekYwK3cyS0Vrc3FBU2w1eWFnbVlFbmNp?=
 =?utf-8?B?MnViUnRzQ1VCTmNZY2l5OURvdkUxK2tqeGtyVkxIdDQybFBwcU5kRVBqeGp1?=
 =?utf-8?B?N2Jzb0M2cVBXbnE4SkNBaDkycTZuQjR5a2lqMmpPNWxLeHZVcXA0UkJGWU1M?=
 =?utf-8?B?UU52blZIRFI3czNTOW9WeHNKMHFYL0RiMjRCVG1vZWVFSlMvcTdhYnRUcXlx?=
 =?utf-8?B?VTByU1JLMm5EQUV2ZDBxYlgyelJ4cDJqUXE1N2NqblpkMzYwWnFRMEh5aUl0?=
 =?utf-8?B?SXJqQ09CTWpoTnFDa1V6eTV4cTZpRkpCL3QxZ1dsSmVvaS9SZTl6bGxuNTls?=
 =?utf-8?B?NXJWbzJ2UFpjdlB1MUN0NUZOSGdBazVaVjBHTXNoSHo5YTJHaHRJSVdKSUYz?=
 =?utf-8?B?QVRQRGJqd2FPYjhUeFRneEJBVlNDelpEMUcvY1czRVB5RTZzendTWmJqUm5o?=
 =?utf-8?B?Z1lwS2YyYllKNTBrN3A1MVZ1NUFhOFlLdTJqRzhuby9OVUN6dU1yblJncVh6?=
 =?utf-8?B?Tm15cFdhMHVVOXlPM1pNdHI1d2t3cXovT21xNkdBYW50WjdLL3NpaXVqd0lr?=
 =?utf-8?B?c0QxdkVENkdNQjEwS0VEMlpVd3gwOEYzaytwNThFZUFTbWFVYVJCUWtySGF6?=
 =?utf-8?B?bWRvN043SWs5T2dSNGFlbU1FMzlIa0dPeEhFZk92cWYxbzZ2cmlZb0t6TDR1?=
 =?utf-8?B?V1laVnp2SVpSN2UyWTRPVk5CVGpGSzB0V1U1aWgxSnVqZEVwUjIxalZMUlVw?=
 =?utf-8?B?ckxKN21zVzg4Ykw2UkpCcnRIa0dwc1ZmYzJZd1ZlMFo2SFVQNUwyZ01BSmhM?=
 =?utf-8?Q?6i/OBf1YMdMkVPRAE4GmsqaqxjKgjE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(921020); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVRKRDFqS21Ed0R6ZmxPYnVUUWZzcDR2bHBLRkRPclkzNE12TkFNQkl1eVpn?=
 =?utf-8?B?enhFZ3hxQllETVN2YXViVGkxKy9iT1BId05qNkVvYjlYZFd2WW0xRzVJK2gr?=
 =?utf-8?B?SHM5OC9xelMxbXFoUDZVU2NpdFI2YklwcW5PQ3ZQVVZJWjcyRW9ST0k4RTVQ?=
 =?utf-8?B?NEt3c0EwU010NmRpM0lJUU5TNFpEamc1OEpzYnk3VzZteit0cGdLdWFQTXJS?=
 =?utf-8?B?eVNNcENkUTVqeXZRc1E4TFM4S0xONUxuUkV2WkMvR1RzcTBnNjZVL252WDl1?=
 =?utf-8?B?VGhRRndJbmRvTjg0UFh4SU8wcm02OXM3dGZJcUJQTTcyZmJrVS9HelQ2bjBz?=
 =?utf-8?B?TzByR3BOc2JXeGNVZk12aGtWcGpnVkhVNDIwYUlMTDhzMTFreG81MmtSRzFJ?=
 =?utf-8?B?ajBBeUl0R3g2aHhLYmxFeUp1V1VYbkJRa0pZQUtWejRhZUJKVDhPSXJMcWlV?=
 =?utf-8?B?NzA2NmRhY1Zwem1LSm5xMFpkU2ljdGh2V2xjWVJhdjUxclNVYXJDYnZrSGZL?=
 =?utf-8?B?OXpWdi8xcjlMK0I5aWU4R05POUNJaVhSMUx5Qm9RTEZPRmduRHYzVGtrQXM5?=
 =?utf-8?B?aFZIOTZtOVgvdVhIdGVSOEFHUFlvL1FLSXppMlROQmM5Rm03S3VIRDFrSS9P?=
 =?utf-8?B?T2lsK0R5bCtUUWNjTzhyTTBlN0xRYU1aL2lRd3pFRjNiOVlGaW1oM1lidndK?=
 =?utf-8?B?Z1RHMS9UbkE4emRxdHhTaXB2Z3RFYU5kQVhDdGRrYWFuNzdSY2FNTGxBd3Zn?=
 =?utf-8?B?dWwwMzBjREZrdFZ2RTJDZVA4c0pST0hid0hYeUN2TFJjVzBTaXdhUUZuWk9R?=
 =?utf-8?B?ckp5RTlCN3Zzc2wrVFNLVEJHRS8ydmNiVmZLNERhUGJHNXJnZ1ZlZmVqczV3?=
 =?utf-8?B?S2IwYVdzZ2JrWGlKNk9WYkhoNnJkK0p2SS82b21wYXhaUlJiRHlNQ3ZpUXNr?=
 =?utf-8?B?ZU5SU1YxN1Z2Z1dYdmVXWXhrM1czSTI0Y21aRzlWd1FmUkw1RkNTUzFOUlhF?=
 =?utf-8?B?T09VV09pckNxSEc3KzRMSWtaNE9HTGMzcVU3Qi96aG83TE93aW1kTy9vaTNJ?=
 =?utf-8?B?RFZ5eFYzNXI0Qi9QY1U4dTdZZThjNElkdE1LWThnV0VacFJpOE9QUXUva0xW?=
 =?utf-8?B?WEt0cDUzSHV5aE1IRk50eXA3Z0k0R1ZzL1RQWkVWK0lSaWhqSEw5Njg2dDAv?=
 =?utf-8?B?T1UvQktHQWJCdktpMDdyVVhMdHRwejVrWmlXelVqRy9NbEJaZksvOFZCSU8z?=
 =?utf-8?B?QTNnalp6ajlPQmJhaHJlTmpLb3F4VkZTemJoZVdtUGx0WGNxemtudnI0a2dV?=
 =?utf-8?B?QVNNK2w4aUpoVW11QTNsanEwK0UzZHFRTXBnRG9sVWswYkluWXJIK0ZOUUc4?=
 =?utf-8?B?TUJTNnZocGhXbExPOE1sVzdrTzg5VXl0RkZGaElscnJQdU9aQTNSZ1R4NzF3?=
 =?utf-8?B?N3NDNE5FczlpbVg5SCtzRFJxd1hpYmZla1JGTmIrNTd0bFhBdmVXcWZUamFM?=
 =?utf-8?B?UVYvazk3bFJrWUJZZVhtUjlIWXk5bEUxckJreEZnMFJSSWdhcWpUZHFlQmRV?=
 =?utf-8?B?TVZiNFE1SXo2MjIwaWhhcUhIdlVRNENnbGxBRDEyZXZ0S2JaVVorQTEzRDNK?=
 =?utf-8?B?b3lFZ0ZGeGV4aWRzSG9RVitKWjF4ekZhdHlRc1VqSE50b2pkWktSRUhjT1J5?=
 =?utf-8?B?d1pOYnpPSUdYVGVzL2VkYllhQzA3R0FsMzJ3ZDg2Rk1oYWJ1MVU5eDR4R0Ji?=
 =?utf-8?B?d0NQSC9icVNEU3lJVVkzVkxsWkpzUzEzdVlSbU85djB3VU84NmJBZE1UZHR4?=
 =?utf-8?B?Ry8xMDFidk9MTElXaWUrbnFvQmVHM3RDak96NW1XVzJidnNrazVWeDB3OC9Z?=
 =?utf-8?B?ZlBmZ2Y0OTQvOWZmTWszYkt2RnVJTk1DYTNXSUdrSnQ1RTRmNDI4cW1rdy9M?=
 =?utf-8?B?VytacE1SL2ZnQjJaN1hRNGdqTlJmK0E1cGtDcENINVVRclVtOENmL1lIdmtE?=
 =?utf-8?B?SjF5dlpjd1MwNnRaWURtMHhyRUs1YTd3c1p1c2tDL01KTFU5alRFQW9DRTVK?=
 =?utf-8?B?dFM4VHdtUzI1MUhzeVFxQVloa216emRIVk5URHByWjVVa2FGSGVRcWRlMmcw?=
 =?utf-8?B?OFo4VTFoQlRRaVlLVDVscFFUN2FGUGFEV0k0K1JUT3lIbDJ2NXFvS2RyazRB?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1f01f69-41fa-44ef-88a9-08de3911476f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 23:59:11.2580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BgaFC2WyAkn9KFNbupKOl74W65OXOggJDKrpb2lUQLCqDpWZUo2IQyQVf3x61VGVQn3x31xNBVjTXbAgAPxILc+bNO25dHev+0mCFmJbV7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6505
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765497571; x=1797033571;
 h=message-id:date:from:subject:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oQzM5u8Q+lMNTB3U1bBWpVo0Y0SJ7cMlPGPgMrjhGTg=;
 b=KAUROSPQJRlTlBw3i4n8qF2TnT8mQw6VldUWKbCdZenIJ8L12gzvfrKS
 pUMK1X8E3UonltF+LdG5sU5XFQLlmEqhILSyfTnVtmMg8Pi6dN+XiflDI
 i5HKBTFINQ58DwqlLi4FMHRzH9BOp01CwMwg0FCqsQhUjOtSTHoeTvzgD
 b4tL3diTZ7dBwEGevTUMfKWD5mRT2TjEb2aLCMZAxIz1vJxil+QCX0Igv
 nBFVxbzB8ARrmsJ/4VBU8vvC5wLEtCNh+iVlZq/TJxrZvNgaJmG+43utT
 VhZj7VMHGmU7bQgtj1OreRHNXdlTxCdetUHC3p+4mTMbJ34d665+8Se0+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KAUROSPQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] ice: Initialize RDMA after
 rebuild
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



On 12/5/2025 12:24 AM, Aaron Ma wrote:
> After wakeup from suspend, IRDMA is initialized with error:
> 
> kernel: ice 0000:60:00.0: IRDMA hardware initialization FAILED init_state=4 status=-110
> kernel: ice 0000:60:00.1: IRDMA hardware initialization FAILED init_state=4 status=-110
> kernel: irdma.gen_2 ice.roce.1: probe with driver irdma.gen_2 failed with error -110
> kernel: irdma.gen_2 ice.roce.2: probe with driver irdma.gen_2 failed with error -110
> 
> IRDMA times out because the initialization before the schedule reset.
> The ice_init_rdma() function already calls ice_plug_aux_dev() internally,
> ensuring proper initialization order.
> 
> Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> V1 -> V2: no changes.
> 
>   drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 2533876f1a2fd..c6dd04d24ac09 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5677,11 +5677,6 @@ static int ice_resume(struct device *dev)
>   	if (ret)
>   		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>   
> -	ret = ice_init_rdma(pf);
> -	if (ret)
> -		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n",
> -			ret);
> -
>   	clear_bit(ICE_DOWN, pf->state);
>   	/* Now perform PF reset and rebuild */
>   	reset_type = ICE_RESET_PFR;
> @@ -7805,7 +7800,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   
>   	ice_health_clear(pf);
>   
> -	ice_plug_aux_dev(pf);
> +	/* Initialize RDMA after control queues are ready */
> +	err = ice_init_rdma(pf);

ice_init_rdma() allocates a new pf->cdev_info on each call. While it 
works for this particular flow, ice_rebuild() is called for all reset 
paths so this can cause a memory leak with cdev_info since RDMA is not 
de-inited for resets.

Additionally, ice_init_rdma() seems to be well placed in ice_resume() to 
mirror the deinit in ice_suspend(). As you mentioned the problem is 
caused by plug occurring before a reset. I think the call to 
ice_plug_aux_dev() should be removed from ice_init_rdma() to stop this 
from happening. With that change the plug won't occur before a reset 
and, following reset, plug will be called as part of rebuild when 
everything is up and ready. As ice_init_rdma() is also called in one 
other location (probe), ice_plug_aux_dev() should be added after the 
RDMA init to preserve current flow.

Corresponding changes should be made to the cleanup function as well to 
match these changes. i.e. mirror the removal of ice_plug_aux_dev() from 
ice_init_rdma() with removing ice_unplug_aux_dev() from 
ice_deinit_rdma() and precede the calls of ice_deinit_rdma() with 
ice_unplug_aux_dev().

Thanks,
Tony


> +	if (err)
> +		dev_err(dev, "Reinitialize RDMA after rebuild failed: %d\n",
> +			err);
> +
>   	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
>   		ice_lag_rebuild(pf);
>   

