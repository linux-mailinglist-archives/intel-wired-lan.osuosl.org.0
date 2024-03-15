Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE8F87C932
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 08:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCEB14042A;
	Fri, 15 Mar 2024 07:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YRwpcULDqUWt; Fri, 15 Mar 2024 07:30:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9154C40124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710487805;
	bh=3fX14MwcA589yFY2b0MFTOvLErbJJCLeW5ojm4NPyrA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pHWeXOyWbkEH7a11NsP4kjfl+dIk5fVYa8HEbMKWSIJBzP7pz7dHidjUlq0L3VbiO
	 tWfE1ECSVAccRo9AEu3MVS5RSSXF7O12FVgb9eR0CQFURICm7eoUylJTfG/ma7t6Qb
	 pacX5BI0GV1EDaseT5zLk+lhvDK+54QWB6JxX0qCGYZAiiU3RF47UbE86qCBVIftmx
	 yBcc84SGfnxEVdUaQwcJsGtOTB+s1UUVOtZDSyhFb2RCd5GA6FHZhqc8YwBo+SsYpX
	 4g4ko/XZRyubkHmPbXO/7fwSe0aL9Qf0L94cp25Ql/GEMhsA0ZjQroOlx1PoLv5NdH
	 yPuTG3VBpUB8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9154C40124;
	Fri, 15 Mar 2024 07:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD76E1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2A59400EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5P2yp8IW1gsI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 07:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CA92400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CA92400E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CA92400E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 07:30:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5284176"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="5284176"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 00:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="35717406"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Mar 2024 00:29:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Mar 2024 00:29:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Mar 2024 00:29:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Mar 2024 00:29:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QoXNX5k1uxcn3Ja9k+D865O7xIWCXZ0l4BpvDgICtgNG6ybZ+y5Ft04Nkz+k/SVw17d3n0ZssPWH6H50WjxuIIruOApQayFDWmwCXvrT1lpvxh4b0xXuv96yDBpueyT+3wLIlZoBzgYYv6x5XuvmjvngVZouGD8ciS3IeLnlYOXatBa4H7CAvxINrRMQNIXBeEpSH2xP04+p9fSSAUHR1FhN1K8p/vgQ8uG9PHFhY9WkmM7GlxQSj2+1tuI5PS2djl/SPyXGQC7GnHov3cIfxleQnz0v9i69jKE0E348kkk78kHiz9TcnYhkeG1USYhT43TG8mxC61KxqSX1ngvwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fX14MwcA589yFY2b0MFTOvLErbJJCLeW5ojm4NPyrA=;
 b=QjARvtcQ8njklDIRxKuWUSSl8oaOVZubnR+WSMJP7i4L5xIx1KDpEdu2UZycG97vGbpzY4ShIyeydOfclhfibYHuvf7Bamsi0KZmlQ/NzE4U5a6+4l9L359tB7A0y8HUTi45KBLLH7nqjPADxXpjaDNp+Rxe9rzc7mzaWwMbOMsegI4+4T3ZWTVwXB5fayR3teYqFNxSFHWAEhDmW4e19voTDacMNHEFImuEuiwT66edcOGYTsJ25Vm553h9+Wxc8pK8W0lZ6rwhnaVJES5X/nXc9QdUZjq5yrdHyLL8ERQj9IKIZis9Lgl2Fm8ywFalOx6ZiPdeMhHgRHM/J6+DSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Fri, 15 Mar
 2024 07:29:46 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Fri, 15 Mar 2024
 07:29:45 +0000
Message-ID: <2830bf3a-7068-4723-87d2-fab5d0fa2fad@intel.com>
Date: Fri, 15 Mar 2024 08:29:41 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240307222510.53654-1-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240307222510.53654-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV2PR11MB5973:EE_
X-MS-Office365-Filtering-Correlation-Id: b0d2bc96-b34a-4211-a18e-08dc44c1b02d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AzvRF+nDVsnFuR1bHyQqdBmFVJfKJ/X8X1+mDdcluofx1Y39E+31BPXTWTTYHFhKWgcr8KGx0l8Yr9JEZ3di2XsRQ1IOFatg3tkh1I/UkHNpyyEseKArYUFapIo3JuWWiZcRCV7oFcpbmXTCKKPTC6xmRj7wA+PdFBVj90PAH6/G0EQyrfWPb0bZe0AQ2u2NnhJ91tK8920641dibYeyS/So+ZF2lZYbMubIbYCZplKOo+/7Pt/xpgjGtZMH6shblf/VvLrP4IVDSYwl1RPWlYcKgsTAGqrg9UtXCHruKrMAKTv7OvB+ZtYcAKDpvz36oXiUQMlHpbbOHmepHZTEbOP8e/yivmCB4zNiT88tg79bAF0Pgd00WtwFeltMaZ62Ifa+lcEnlCiwTx6nPxbsKt/R0f8jN6a+XjEVGT6RkrCLclPxTHyZCvI3Z3Jo8k0+U4sJqmtyRuFIbEWSw70O0qiXvt/jDF38YAaXIinKxFuUSe1tvnvbvYS+x/Ty7K9aSDqmmeuHgTXk9qUmO+wErvncC1QhK6+VJhT1NysNyKDx/pkuAPxP5BJwap1Y6i0lmCGjBOmnia+NgWmEdARtTFk66YRXmre5FnCRlBpXx1g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THBwN1dYVVhMNng5UXd2aFkxY0xEdEZ0eTF3Njg5a1pHdHdQOU1YbEpwaWZP?=
 =?utf-8?B?UGRnZWlRY0Z1dGhUY1p3am82VTFJMUVjMlZHa0ZITjZad0NIZzVjdjJCR1Zr?=
 =?utf-8?B?M0pqaHBYeFNYa0pyRzBIby85UHRDN3lJVkpJL05mUG1nMndyajduM1U1WGJu?=
 =?utf-8?B?QUFrNkhwc0cwMkpTRnUreEY4QkhNdnFuaW5oOFYxUFZmWExUT1BOMy9IZzNp?=
 =?utf-8?B?REZoSlkyN1Y5aFJxWFgvdnlnQ0dwQmpxQVhqTmRkMG0zRzd3eE1lQXNBTmJF?=
 =?utf-8?B?dXUrWTM2SVlheEl3V0JPSDVYWDVWUUpONWNCMlNVMnlBUWV0OU05bGdaMzJk?=
 =?utf-8?B?WTlXNUgzNmtLMjJaN0ZWa1ZDcDNFR0pyc3Nzd0JLYXdITmt2Tit0NS8wcjFt?=
 =?utf-8?B?K0h6elZvMXN2YkNFRE54SzMwYWx0SHNhNURqM1N5TEdrTXU4ak1xa0MyWFVC?=
 =?utf-8?B?ZktTYTJFVlE0YTBraHRwNEc3c0FkZEs1bEs3anhPay90T0NicFd2ZCtKVkZE?=
 =?utf-8?B?a09ZZU02NjdxU1Y5MWJtZ2FxNzF2eGxuMEdFMjZJbEpCZDQ2eHJRSGdFdU52?=
 =?utf-8?B?MGR5RHdXdTE2STlxY1lMK2gyT01pTU9TbjBHNDRqSDBWMzh2eStUMHhBb1Y5?=
 =?utf-8?B?YnVmVEhsakhONnhicW0wellWNVpnanNqaFJGRFp4ZjAxU0M0SVY3aDZEdi8y?=
 =?utf-8?B?OUVkZkwzVlpITHk0OTdhV1JoY2lkTlhaT3FlS1Q2TlVIcGlKZUNka2tPL3c5?=
 =?utf-8?B?eDkybjlEREl0WjB5cWxTTVlLczB3T0FRbnZ3TmdqUXQrNW5FOWZWSWpBZnlX?=
 =?utf-8?B?ZHRGa3lBbVBMaVExRHlUSE9IajJJOTV0cEs1VE0xRDd2bGp3V0VNaDZXak13?=
 =?utf-8?B?TXp4dThjblZ6b3FQTFNMUXpJODA4b01OTmsrWHFXN0JmaDY0YXZrVXd6a3Nq?=
 =?utf-8?B?RmtzQnpacW5xejlwMVJpcTkrd1B1NjN0T0M5cUJrcEIvSWMvbmNoVUZDaVVq?=
 =?utf-8?B?dUdGbnYrNUV4bDVZdHMrWFkwUDhNb3Q5WVpyNXN0ZW16SnFJazJRUTR5Mnk0?=
 =?utf-8?B?d1p2dGRxSWlicjc1K0xOb3BCN3ZGa3N2dGdrSnMxL3hFV0dwV0FhMnpuckND?=
 =?utf-8?B?K0JUd0syelRZRVlGTUx2VDlndmg4UjZCRVRCVTlJK0RiWlpLN3BVa1ZmUzdO?=
 =?utf-8?B?N3FXSHN1OHEzbTJsVGM2dDJkcVJlRlZQN0IvdkhSTTFDV0o0Y3BudWIydlVx?=
 =?utf-8?B?UXc0Rm1naC9QQW1vSXpXUnRXdmxPaDNBRW1KR01TUWRmbzlNRlNSOWFlYXJL?=
 =?utf-8?B?Y0V2RURCN2ZOUGUvSUJ3cVJta3Y2WmpNUU9kRnpIc2lNWW5OU1dlVGFGTmJ2?=
 =?utf-8?B?M2ZWOTVocFJhZDlJcHYxbDhOVFNYcWxuazdNRXFRS29GOFl5ZUxTakcwUXg5?=
 =?utf-8?B?eVJQUHlWTVdRa3VGNC91YWZ1a2tuOTc5dzVEU0o3S3lncEkwUUdNQkREN2Nv?=
 =?utf-8?B?RnAxQ2lYenlSZUo5SU1zeThRTzlFWkMrMVhQd1JXUWtVVGh2ZWIwTmR5ZzBL?=
 =?utf-8?B?bXd0cXREYUJlWlEwMlNaek5xMlcyRWtEZmRoMzFVb3dYcGtnUHIrZUVMWDZw?=
 =?utf-8?B?dks3QW4rR1JLY3lKTy9XVWRBTzJiV2RhVm9sR0h0UmhKTVNLV3JDUzYvVWRI?=
 =?utf-8?B?eW1ISnB1T2dWZnppQ0lCcU93RmJZVUpUYVdsS3hwMTJZd0JGQzZQUDZPNS9I?=
 =?utf-8?B?dll4OVNBSUluRWFmV3k2MHNhNGYyQ2F4T2dUMzdoRGRBYk0wZFhzMU5zRzBU?=
 =?utf-8?B?ZXlnVW9GSFNhV0ZLUVh2MzhaKzhpYkxPUXZvaTErUFFzcFZPQlRlRWQ1NlF1?=
 =?utf-8?B?Vlovd2ZveEtydFQ1RkRPdFRScS9MRkl3SzRKa0pHK3J5ZkdSdGlubTJ1aCtH?=
 =?utf-8?B?N1l2K2N4QmRjd1JuSVl1MzM2WmlndXI1R0NKTEt4eUdTRVZzQXZlKzlvRFV1?=
 =?utf-8?B?OGtCdEVNTHJZNFRBOWxDMWw5bmhHT0wzVlV1TnBYa21xTTUxa01jbzdidVZr?=
 =?utf-8?B?bnhTLzc5YkR0QWZqY25kQW1pVHlTVEZubnlPcGs3U21hTFI0N3VEUFpmTVBz?=
 =?utf-8?B?SXpuZS82akZwZUs2NklUZXFXSm5kcU91TC95UXAvek43L2Q3ampKYnRsdU9S?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d2bc96-b34a-4211-a18e-08dc44c1b02d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 07:29:45.7014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ILdLKwGEyMK1A6iTCxEusokoH1J8ZY9w6tGE8lG9pG505TRtb6kPfj5g/vozzAPsECRXbqqcClWHbDNKaXhKE51wndqLhJRowdVO5gxJwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710487803; x=1742023803;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Btagvq4EB59yIbIWR3aJ4fewb9W8I4eF+ERz/xf9ldY=;
 b=XJfR/9Zb7kA3fo67UFe7bGCbM1lLVtsC81oyFJaaYsWin7TCioCxTGT9
 Ne11kUs5y74VkkqxschSvwu2mL3EMr59ASLUSEB8MWhvP+QiUs4UIfHOo
 jpiz3KRFuwSctSKw0mzboIO1LCqqIQS9zdUs7JGueKniQyjwFxQ4eexCo
 AyiELwaefcoxGoYPzWOjfvyu397ug9EmjjIi8rQKCEpJlwa85qYpVrlAp
 ujQv8m38rD+9RRV3OIz5vZi12XAEXQqge2eieEyjp9LT4edV7drVBjBsx
 DZ8ZN3x78yj3/VFIJRUM/hHlwZyU+6FdgtEjcY8CBfRVT+DDFV5SDri3+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XJfR/9Zb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: lighter locking
 for PTP time reading
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/7/24 23:25, Michal Schmidt wrote:
> This series removes the use of the heavy-weight PTP hardware semaphore
> in the gettimex64 path. Instead, serialization of access to the time
> register is done using a host-side spinlock. The timer hardware is
> shared between PFs on the PCI adapter, so the spinlock must be shared
> between ice_pf instances too.
> 
> Replacing the PTP hardware semaphore entirely with a mutex is also
> possible and you can see it done in my git branch[1], but I am not
> posting those patches yet to keep the scope of this series limited.
> 
> [1] https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock-9
> 
> v3:
>   - Longer variable name ("a" -> "adapter").
>   - Propagate xarray error in ice_adapter_get with ERR_PTR.
>   - Added kernel-doc comments for ice_adapter_{get,put}.
> 
> v2:
>   - Patch 1: Rely on xarray's own lock. (Suggested by Jiri Pirko)
>   - Patch 2: Do not use *_irqsave with ptp_gltsyn_time_lock, as it's used
>     only in process contexts.
> 
> Michal Schmidt (3):
>    ice: add ice_adapter for shared data across PFs on the same NIC
>    ice: avoid the PTP hardware semaphore in gettimex64 path
>    ice: fold ice_ptp_read_time into ice_ptp_gettimex64
> 
>   drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>   drivers/net/ethernet/intel/ice/ice.h         |   2 +
>   drivers/net/ethernet/intel/ice/ice_adapter.c | 109 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_adapter.h |  28 +++++
>   drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>   drivers/net/ethernet/intel/ice/ice_ptp.c     |  33 +-----
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |   3 +
>   7 files changed, 156 insertions(+), 30 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
