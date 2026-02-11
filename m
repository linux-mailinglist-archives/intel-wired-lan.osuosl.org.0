Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBAtNlJJjGmJkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:18:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD535122A0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 10:18:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F284B60D74;
	Wed, 11 Feb 2026 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QyRdQ3K_K3AV; Wed, 11 Feb 2026 09:18:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B40B6088C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770801487;
	bh=JQrF5fjhoEa7/g90DOy4bA/FQWXumITad41wlHeVbuk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OjtRIUj5Kx5w15aYTtZJwUPpw8CcszW+vxnE7iXUU7mJdnAOnEaoOn08GCVsGarU3
	 +rLKkLJPKtVYIakVPjODLqxCizDDLlKQXUoYbEoQscC0JtMHA+kZL4kFM3NZGMbPe3
	 OweM9S60aCOmQOeBRs/zM/fPuZvz6eQ8wkV7cqaFT8ekCfSniXOvUXd9nKaNxfVEPy
	 isJsQU+p7yoE+sVlDX5CLjJyh1BEFl9WX/X7HeS6B09p3iLRdXQGPDVQs+eF2Zrz1A
	 q0Whz5P9QLLQ0QzNLktqKM+UPWFzx8nnH7rqw5YgBwnZACPkmMw10BrtwP8PybCQzQ
	 28cHzz5fD4THg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B40B6088C;
	Wed, 11 Feb 2026 09:18:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 135F023D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E299360D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:18:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xp5OqexAwMx7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 09:18:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=adrian.pielech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E15956088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E15956088C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E15956088C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 09:18:01 +0000 (UTC)
X-CSE-ConnectionGUID: nXgHX1SlThC9tjVQlGazpA==
X-CSE-MsgGUID: 2d7MH0M4SAmP4FONy7PCBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="83386669"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="83386669"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 01:18:02 -0800
X-CSE-ConnectionGUID: DjeO+frjTiSt/f/DqdelpQ==
X-CSE-MsgGUID: XyGLC6DmR5ae2Iq/e7sFeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211508121"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 01:18:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 01:18:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 01:18:00 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 01:18:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vM4Tk5rQCtFpK5PAJI/4Ta3W/RO8lqG+2Hy2nKhL0rNH4nTDmD31PUaFyYjcuMLst7QPSh9wU3Y+6mZEBQbZp+jnaLJJDH9Hqd/XN8E6m/XaNQYyphvulFViHfct0n18yFIvi12uEqIKdPhp+I/zxr/mdm/MHXGVKvPwbIPv0MKr7NL5hmUH6XY4eRx2Uy83FQwUXx+rvx1H+W86Z8/sAAeZEhBJqGagHK2BqNUiRlAEu9yAnY1SSOeHZAtWOHuXvc2UspfPK+C+tXlfTRvV+ooHojRXP/VmohlZhDfLDICs6TbWk0EPAPgZWtOfYPlrEsMFrT5zm3sQJZIssHySvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQrF5fjhoEa7/g90DOy4bA/FQWXumITad41wlHeVbuk=;
 b=bTpXiWXoY0Fv19Q9Hmmey3Lw6t2nSpp3Z+/q9bp/Er2RPvLuLLd9GSyvM9jErTJLwNfxoXKwrnrfK9tadNpO3J/6/hhs2kFKBqBqadoqRXu3ChrvFN+PJkYv1e4diLzwLU5hSYrLaQqV8SsbnDLAGozFtPXxv9jTzVRMOGL5VHEBU263nnVZ//boaSyEBqtri9y9DHRLTt281Hkn9xTugRfKRaz1PJNcWIs6eWCBTgtCriIvJonrso19ocm6OR8SfDH9YMdKH5QjbaEXlQ23ruprN+V8walhWbW9t3CjTzc8WGDyzM0azls/rVcuAmvD0FzRZ1j1Vzakw5SgyrkaFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 by PH0PR11MB5173.namprd11.prod.outlook.com (2603:10b6:510:39::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 09:17:57 +0000
Received: from CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556]) by CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556%4]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 09:17:57 +0000
Message-ID: <54e57b6a-8cd6-4e2f-8ced-0cbb41c99e4e@intel.com>
Date: Wed, 11 Feb 2026 10:17:52 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <horms@kernel.org>, <andrew+netdev@lunn.ch>, <krzysztof.galazka@intel.com>
References: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
 <20260203190811.1f9e7530@kernel.org>
 <a29bc22b-a1e3-4a9e-a63c-5d1c71a6f08b@intel.com>
 <20260204174033.5aa7dc6a@kernel.org>
Content-Language: pl
From: "Pielech, Adrian" <adrian.pielech@intel.com>
In-Reply-To: <20260204174033.5aa7dc6a@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE0P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::17) To CH3PR11MB7323.namprd11.prod.outlook.com
 (2603:10b6:610:152::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7323:EE_|PH0PR11MB5173:EE_
X-MS-Office365-Filtering-Correlation-Id: cbebee39-c1ab-4bc9-97d4-08de694e71f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SlArTFB0Q3p5V3lPZitWSEM0TnZzcVZJd0txZW5TUGh2RWcvT0VZSTRZWHgy?=
 =?utf-8?B?WXg5Q3BmTXhDWkpRVGxVbWZ4SWRNZFY1d0MzL1lXdWVVbDgwcnpvUnNzZXdF?=
 =?utf-8?B?NjliTEdpSThUc2pjRVNFK1lsUzZ5T3BybVlPemlvZCtIL0lWT0VtYkRUQ1gr?=
 =?utf-8?B?dERhTWNSTWZIUkpVTnNQUnd0d0d4bmIrWG9Pa1ZyRGgzRmpQWkNNdkZVR29Q?=
 =?utf-8?B?ZlFnTkVZOExlU2x3SXhSYTM0N05JNWhUOEFxTmFhdElsak8rcU0rQ1dwTWg3?=
 =?utf-8?B?eUtIeCtmVWt6aWFrSldPSjRCbjlZTFVrTE82eXdOQXBmUkhYOHJKVXpiUCtC?=
 =?utf-8?B?dGtpQkYzZVBlNnNTeU5lVS92UDVBWldXdE9ibm9HYkFYcUJ3L1Z3aUY3NEV1?=
 =?utf-8?B?VmhjMkkvRHNOby9yS0QxTW1QdC9SWnd4emtzdHJ6QUFsSFBHT3N3Z1ZHeVA3?=
 =?utf-8?B?T0MvSHBEM0FOU1lrb3duK0FwNGpsRldhaGhGL3dUSGZ2d2YyVEdFMHMrOGI4?=
 =?utf-8?B?SHlkNlBxejhhVldUYTZwRU1Ha3lFa0pvQjYzbGZ4K21zRHZLczd2MS83Z3Jx?=
 =?utf-8?B?dmM5NmpmZkI3aWFQdC9oMituekh5bTFsQVV3Um0xSGpPMjFMc1N0YXJuRHA0?=
 =?utf-8?B?MFo5TngzdlErYWJXMVNzaWNCRnp1NTVkVDNBNXdvWmxDdXFreW82QzhFa0c0?=
 =?utf-8?B?M0pqYklub0F4WHFsNmxGQlVxd0syTGEvSkF5T1paVVlWdGhIWjcrL0ZlMEtM?=
 =?utf-8?B?MElWSy9oTzh4RVlPdGxIeVVyalp5YVNoUTNZYUpDK0NwcTM3YmxtWkJUNXBP?=
 =?utf-8?B?Tkx5ajJJTzZSZWFyWmE1QTdvWGlMblpDOE1mTm16WWIzaEh2Y3JxRWNHYU12?=
 =?utf-8?B?R211TlQ0bDFraFU5NHUvUDVVUHErMGw5TmZxd3lYWTViam1qVWRkbzE3T2Uz?=
 =?utf-8?B?ME5UbGx5MmlYZ082VExJVjI5N2U5S2RHWUw0aGFocmd1Z0JTejlNUVdpeVhU?=
 =?utf-8?B?dUJUZS9lTjcycERnVm91T0tOTnZXSXpOTzZlKzVxTk85Y082Mm5pOGtuaEJO?=
 =?utf-8?B?RUYrWm4wOVBRTHpTcEZ3dGJacTNqWDQ5WU00SFpLaWxwWnFqV2h0bDI0THN6?=
 =?utf-8?B?ZjNld05PbG51RHRPdzgraDliSVpFNjAvSHlzSmxCdnI2S0ZUQzFOeHlGZWwr?=
 =?utf-8?B?TXJVQnUvRmJUanNORzAyd0wxNDh0cDcxVUNtUUpqdXY2NzNDeXlpWWVSMk8v?=
 =?utf-8?B?WlRJZ3huMlRyQlVpTjRPMDh1dlJldnBLek92NDRIeU1qbWI2T2l3VEU4OHZz?=
 =?utf-8?B?UE54c0R1K1FZUExITGNYNklCL1diNzBZVjVCaUxacE92S1IwNG81WWphSjQ0?=
 =?utf-8?B?TlhpcEYvblZETTdQL0sxSjJ6bHhuMzB2SUFXblpaL1BRZGVSbjlyUGZQa1B0?=
 =?utf-8?B?UzdzM3A1eEwzNlJQdC94Sm9ySGlhck1MLzNJWUI4S3dUaVNUV0p1YlU0MUxT?=
 =?utf-8?B?UEpDaXNxTUVUdDZ6NEVBSVl5YVkvWkNyZmZuejBTRnEra1cxcGp1OG1XZFh5?=
 =?utf-8?B?cjliM3lmTFhUR25lOXcvZlM5b2t0YnUzVjBnSnYwWk94REI0R2hYMU5BeE5t?=
 =?utf-8?B?MmpRclpiU1E4R0QzeFE2bHordTRjdXkwRzBYeWRFUExkNE9NazVOUENBQlM1?=
 =?utf-8?B?RzNhcmNETTU4d2ZjekhFYUNrMktYZWtEQksvWEJMOVo0NnFDZ3VpMDRoL25h?=
 =?utf-8?B?c1pFNWNNQWUvQ1ZkTHdDOEt6Z29seVk5dVp1WngyWFptZ2t1MzFldkI4Tlpa?=
 =?utf-8?B?YW5tSEh6SlJ4TG45TE1qV2VvaWMyMGVIRW15ZWVQNUFSMWZtcmU0dk14WElU?=
 =?utf-8?B?WUpqcVZESWNaNCthVU9SQVMzbjVHYTZzNVd6b0RKWW1nUUM4VmY4cjdVTEhI?=
 =?utf-8?B?dXh0QWl2SHVvN3dUdkg2M05KTlU3RVJFVVZKTkNBN3FIaVBOSlM1TjRXOFdN?=
 =?utf-8?B?L012dG13Y0RucHd0TFBEUnBJazVCM2h2cFdIUnpwcU03NnVYbjVPcGRTbjR0?=
 =?utf-8?Q?d4F0FT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7323.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0ZkdjB3R1VualBoeFV5UnhaSDdQYzNFZU83emZ1eCtUeTlZTGFzWE41RGtI?=
 =?utf-8?B?RG5TTW1keEdzTHByRUdGZEM4SGNyRjlWSzdQdnBHTjU0ZEd2eXN6ZHJhY2ZU?=
 =?utf-8?B?VFZzT1pUR2ZaRExINTRFcWpQNDAvRjFkbUgxSTJqWjZsdlNSdzRYRmtWUkFQ?=
 =?utf-8?B?cnhHelZpS1JXOHBld0pEb29lRmZVczRHY0d5OU5sazZlbkRYMVRmYysvanJT?=
 =?utf-8?B?ZWh1bkpPSC8zaVluSmJsQ0JkWDNSUEc5ZlZzYzNpYzRMdEVMVzVpWU85d2N1?=
 =?utf-8?B?NFJNWjlWcmJ4R2lwcStHREViRDhmcnRGdEQ0NFBMUDYrK1J6ZmZQVFIvSWtQ?=
 =?utf-8?B?UTNiQWxyMFFQOW5ONDN1UmtFb1lEc3JsUmQzSEtPWWF2Uk9Bc3Faa2ZyTjdz?=
 =?utf-8?B?Q09CdUFtMXhORzE3bzJMd0Izb1RxS1VKM0pmREdTU3YvU1VkNzBoZDlBWnhY?=
 =?utf-8?B?ZytCRUNLSno3d0lyVlhPVDlzZG1XR2V6dkhLYS9QdHZsZE9NKzJDdm95ZGMw?=
 =?utf-8?B?dU1CaTFzU2wyeGFOb091NjdkQmlGZkJ6R2lSYk4zSi9JNVJ2OXBaa0ZpYWgr?=
 =?utf-8?B?MGdYdWl2WHBpVTlZdUhCamJBcEpIUkdZM1lRdzE4Unhxem5qSG9vOWYrTUlq?=
 =?utf-8?B?T2E3VEoyZ0p2VkNMbFVoRkJMbGhreURzYitEd0NETUU2SExuRzN0TWw4MzFj?=
 =?utf-8?B?UU5aYkJ2ZE41RjhvaEFkeTZRWWgrTUh5K3NlWHBuQzhoaHJBZmtlMDQwM0Vx?=
 =?utf-8?B?VXdvVjl5ZzIzWU1uYlJ3WTVLWUVBYkV2MXZURWRldGJBV2hqQXVJU2h5ZGlu?=
 =?utf-8?B?YnZWdm52OW1MVDJKR0ozUG1nNzdDd0pLR1RQZzNjUGFoY2pINGVOOXBvYXVr?=
 =?utf-8?B?TFc3cHJKbXpXYWtkZmJVQkFIQVFSbHdYeVZRcFVqeWd3OGtOSEpabERxaGd0?=
 =?utf-8?B?cmxndmtReFdsN1ZNbW9LVzRkbzF0aWwwblF0R2VCR3pjbGNZTTVjdUM4U0FU?=
 =?utf-8?B?MXEwN0tTcWI5VnRzeUlWVmQ2dEFua09ESi9oRVR1YWp6bm1od083aDNiSk5q?=
 =?utf-8?B?YkJ3bzRoYm1kTjBRZDdVMEpqYSt0SEphZjZpZmxubzZMaVErcjMvVXYzbmVB?=
 =?utf-8?B?NHJYdG11d0wvbDZZMHAyWWxUNmZvTHlkY3R6MjQ2STMxQU1DMis2ZWJPZ1h2?=
 =?utf-8?B?MXdycnRyY2JNM0EzN1AzaytGK2UvWlUxcDJMN3E1cWNpanZLM2VmVEx1S3Ja?=
 =?utf-8?B?Mm9NU0cvSHpOZ3B1NnVYRzBQYjdpS1FlU3FhU0N4alZEY1ozSFJvaFB5Yml3?=
 =?utf-8?B?OTV1WUo5VkhBTGl0ZC8veWExWm5Pa3lmUGlmZVUvc0dHbTVwUnIvUmw3Qmgz?=
 =?utf-8?B?OE5oNzkrWlB0ZDBMVDV6dTR6ckNlVGFmK01VWUVvc244b3M2ZXBjcFRpQkUx?=
 =?utf-8?B?aUw1ODJyY2xIRmYyU1NHeFppTE01WnBRZ0pZTVRJSlh4MlYyNUpwYmQzMEZ5?=
 =?utf-8?B?a1huTVVHdWxnelBLa3VxUCs3SkF4dXRjbkJjaFIwYUxkL2g2MWFvMmMrRHNL?=
 =?utf-8?B?elBPNXdQb2tpWGp3ZnR5bjNORkJGb3hhZGVQUWVodW9nZmFDeW1EQU1ad01q?=
 =?utf-8?B?R3cxSzBiK1hITXNsUkZqMmpTSlFaMnFSNFFyMVRiaWRtdDlseVRUcWNsRTh0?=
 =?utf-8?B?MGtFenc3S1JQeHA1dWhNWHFsTmRXdzFUQXRpV0haT3MxWG5Ld2FRTHNaTWRD?=
 =?utf-8?B?VW4wM2hvQUhRWmsxNElYWUZWMjNMNm8rS3JIdVJzM0hnRmVlWUZqd2Z2eEhG?=
 =?utf-8?B?cmtWdERPaFd1Q2JyZFdOLy9NYmxtOWJnSThPcG5USzVLQVkzZyttTHdUeW5R?=
 =?utf-8?B?VlZxTDcrU0JVbllibDBxRzhFQUp1V0FYUHM2RW1qQy9lYjY0RmxQWWxaVFFy?=
 =?utf-8?B?OE5OMXUyR005aUhqSlMxUUNRUkNCVm9WQnZkclZCdVFaeVdNaDF6akNrRHBv?=
 =?utf-8?B?Rmc5aWs4V3pVcjJyRnV2UWhqZE5UQ09jZkVlcUFKeElEUjFwUFU4TEh5MENk?=
 =?utf-8?B?cTAvVGF1cXdDS0dybmwvQ0trWlBQQThSVVVRY1BPVWJ5eWVYWGYwT3Z6aTUy?=
 =?utf-8?B?WnNKQmczZEhTbGdJbmdaeGlaeGJJSXFkaXBaMjJ2UzRzaS8xSUIvaTl1TTYv?=
 =?utf-8?B?QzNhUEo0citjQkd4bTFiVUxkblZjZzVLUWJDY3ZubXo4bktYSEdxSU5GZWIv?=
 =?utf-8?B?RFMvZXhHMWFRYjd5b0hibzZRQ1RwVHZQSnB1ejhxa1YwSGpMMHAvL2I3MGo1?=
 =?utf-8?B?bHg1Tkw0TUxHOGRvUFg5OC9WekQ2OXRHbDFVekhQWURpcXlqTnhiZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbebee39-c1ab-4bc9-97d4-08de694e71f7
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7323.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 09:17:57.6751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0WJ5A2CoxUTF37V4bZQpygdNg2M+FQLy2f639eFBIb8IFRSPnkgksly9Z3vZFxSgnI8mDLJCYGT9+CIGXcYNjHExMn28SsnZCIwl1g3hdDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770801483; x=1802337483;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z5svllFMPg6qn0FEXF5uv2/jttA4fW2XiPCKOxJ7RRg=;
 b=LmBfvb1WrgK83Cdk+YSbfUzgHqouBaJkGws2ciL/eJFKTV+yKHh5BanI
 fy9kTRyrZSX7NaIUYXwDQ4KJwSsrtq+EyifMki+674o2IgTNGnMVsI9VU
 716/v7E0HGsSKvs4Tdhyp0o2Ih0DPL4CLX1hMKRCEOiY3mMTS6gugltr8
 FzZZkI+ObNb6Me5XIGn3yOyw9pROa99nlcPAWogWJOvj/i5PEuVfsWy8d
 HuoGI+AG/Gz5aqUP0+3M45f7zJPg5LCFed1UnqM+poYvONzTUsFTX2Ezr
 DKzQ1o4fWGs3m/gaTh3pD7JbzCHt97NYXGZtIFjJiyqcP8nI6gxyrN54d
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LmBfvb1W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci for i40e
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:krzysztof.galazka@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: AD535122A0E
X-Rspamd-Action: no action

On 2/5/2026 2:40 AM, Jakub Kicinski wrote:
> On Wed, 4 Feb 2026 13:15:03 +0100 Pielech, Adrian wrote:
>> On 2/4/2026 4:08 AM, Jakub Kicinski wrote:
>>> Looks like the GRO test result parsing is off, the test cases are
>>> reported as for example:
>>>
>>> 	gro-test-lro-ipv6-ip-tos # XFAIL Device does not support...
>>>
>>> Looks like this affects all your runners, I haven't noticed earlier.
>>
>> I have fixed that, XFAIL should be reported as fail even if further
>> message suggests that the test should report SKIP due to "device does
>> not support...".
>>
>> Historical results were parsed again to remove test cases:
>> "[...] # XFAIL [...]".
> 
> Looks good now, thanks!
> 
> One more note, the "driver metadata" is currently reported as:
> 
> {"devlink":{"driver":"i40e", ...
> 
> looks like you have some extra nests there. That's perfectly fine,
> but we need there to be a "driver" key in the outmost object.
> Right now our UIs show "undefined" for the drivers here:
> https://netdev.bots.linux.dev/devices.html

I have moved position of "driver" from device.devlink.driver to
device.driver. Regenerated current and past results. You can refresh
your dashboard as well to wipe duplicated entries.
