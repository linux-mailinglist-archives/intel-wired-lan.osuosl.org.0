Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PKEHF9I2WlToAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 20:58:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B3C3DBB82
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 20:58:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BA7E411E8;
	Fri, 10 Apr 2026 18:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBgf0_gY7Uec; Fri, 10 Apr 2026 18:58:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6A27411E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775847516;
	bh=sFt/c4xYcwsM0JEvETk9mLKqTQneAnNW65stQCp+FwY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B68Ke1yXahrYGmepucAO8kYnnqmwR0aRYXvwNRJqzKHVBt7kh8Brxc5RXg/eG7pe9
	 Kgek5LIWQufGZaJX12Dn7ATwrzvcW9h7ToQauXKGztpKgFobos1sdGn9/6pxeHxaK1
	 Rq/kSPS74g2kIcVg5AMlz3V98wyvqf7tgjkbWS1UfYH6+TdbDhFpbPYe00M2PBr6v6
	 juMXxA/8Jv3WYAlqRyAkAUZwg8gg7NKAIz+q0HhxAegFgK66sWSaOBY8c1N7Mq33MV
	 vcHjR5dVtdAZTIU4mc4A5y19TW+qmq2XZSOZyz3yMvjMfKwLH+y4fu1z2YZd7pgVNv
	 GtJEswoggPj6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6A27411E3;
	Fri, 10 Apr 2026 18:58:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 07EA1194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE22040907
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZVg6CwIn3E6y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 18:58:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E12640144
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E12640144
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E12640144
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:34 +0000 (UTC)
X-CSE-ConnectionGUID: LFow0px9R5anKJOH+Ruscg==
X-CSE-MsgGUID: t56W5jiGSgGtFvI7tnT0bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="88260476"
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="88260476"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 11:58:30 -0700
X-CSE-ConnectionGUID: wl6ZGW9IQfCHK4RCbx0JBg==
X-CSE-MsgGUID: ZJ+u1uoURqarks8YCP9jUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="234152493"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 11:58:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 11:58:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 11:58:29 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 11:58:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I1/VmWAcCVglloYn+ojDCgNvjGa2AQrRAyDDlAkZ8Z9TqL+P1/caUkmGuKNTOnDywrcp+F8oSjc9nLFmL3UlHeKLQwC4W0UvvlZpHgnX7rkmb0D95nBSs/vdOrWdlIfLptr4fiLWWQKgIfIfG/MTs6pveYPf4u2g8Biy79GxM7HUkL0U4m3kI4Dhxy8MyaBWQEye1NoflUfq6T/U6mIVu9SbfZfdU0+cjE9ZbU1VgmQVGupomJG8QKVSbf7dhRI03/88AFg5tXPMRHpgFXa1UwitDMHIIdP09nN9wgtVMrhu7prcmP7kPYhyw9D12NXvjbjqMl3lo2im/qhcP+rG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFt/c4xYcwsM0JEvETk9mLKqTQneAnNW65stQCp+FwY=;
 b=Co1qHjGASjg1JTJMfFAgIuoczya2Fh4zy/7SFEs3J2/fCnt6guuiXmNk++1jEZlNkQaoZq4Xxh5+GVBRrJHSXbEwrs2sggAj2lco4OjgsqhnHFbXrO9XulhxdeTXmWMPe0EPNP1Ll2m2gKqPTW4/qMilYO3XmPBZzPOYLc08FYydxTDWBSDwFp5Gec4IkndMg5gdV8HlW0ILnhGf+ibuaUM6ahZ50PQb4p8Fovr1ZnIjFmi01HpcUyJrD5k/3qoHeAPXq0w/4uy17v6o2/2GpAUVwHUSl4XqgDa6r+1D6TkFCLGKiAGu5n/PE4V88E/7SoaVGsXIyW5d/xfL3nA/4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Fri, 10 Apr
 2026 18:58:27 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 18:58:27 +0000
Message-ID: <713893a9-fe42-4b74-9eb9-a4c9ac607d7c@intel.com>
Date: Fri, 10 Apr 2026 11:58:25 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
 <20260403054029.3789616-11-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260403054029.3789616-11-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0207.namprd03.prod.outlook.com
 (2603:10b6:303:b8::32) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d19519c-e83d-43f6-0490-08de973325ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: chvRrI7lhqPhLvdN5ap+nyQxK3rB/XVUELYO8SmGuuSXurFVN9+cUWIIBIhE6N3yhCdQCu//6pWX3WcLONS+lrPQiCrLDQivsMUfUdiXGQ949sqqUivLj73a8zn3az+WFUQ2yMeST/RHnH2XL2j64NKok1aHOuLuWFheWm+jYmigkxiw9T4zs47AUeYl7OR/vRAel6VDzsWdNvcslmEfRHG01/nOrkccWW0OD6O5jAKjqFI2orzWWcuY561AMhqbZmxtLlU7E0Ov3FRYoR/bn1Mi7L60YWBgQUDfU9/07/8Lrd5MjbePMRy7i99YXnR6VrGIv8oYTZGOixOm79d6uD5hwPO4SZtiQw2aX8ZgstCOyck391c5dfTcmT85lwDto5gb0+G2GfzJo95nFG7pCJAyjbX8m4CRh8HAC2RLe/KZuBLCTpnP/NzEHTOBV4HRBUUDLh7soDz2YORnsNCbceDeh3pCbOidQ33CyspuVliZUYV2t9wS56eeC0B5HmPfj8fg7as4sn7PAv8JFlfIJMkOO5O00Wj6gz7sVDaVaXNHrDrGRDNh38wvmSh93j1F86WvnokPOFw0VwZGx0ZSwJq9YkXxIXgpZP/q4NHPv/XvKJ0gAZAIBqolwMuc61a068zett3w152YMfryHvPe2m9Ee8HSdd10kA3pox3VCoCCzoAtwiUwPOfqLbYR27xrQQRvLOI5PxweUJDKtEkdzREGhHKcu3+93xCBx1T63Aw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXJCNnRnV1dVc0M2NFVaZVdVa24rcjRkS1IvazdtcWhaN0dvcWx4OVZWUDJk?=
 =?utf-8?B?SVg2UTFCOGIyL29sM3JDVngxMmorZkFXaTVZLzhiZW1RUTVnZ3NmZG1Gb1JS?=
 =?utf-8?B?UWN5dUtWdkJGYklVQTFVR1JxZVI2MkFaSEsrNThqSkd5Z3JVOWI4SjNCL2Nw?=
 =?utf-8?B?OFlXdmprdmJLeWZ1Mys5VHl0djE2QTcySHA0cCtwR0FlemM4b3lsR2t1NFRx?=
 =?utf-8?B?ZHpIRTZBQ2REWG5kZWZweGVZc2lDUk5lMVJlKytyem4zTnNraDBpajhqeWxh?=
 =?utf-8?B?c09CSnhzU1JFMXkwREk0NnRFU2kxWjloQXMzbVlyL2lkZzlpdkk4dXNXT0c5?=
 =?utf-8?B?Qi82bzFQdVVNUWhHZkVQMzI2YVJPMzRodjFzeDdCcm5CeXo5ZXdyUXBCMUZq?=
 =?utf-8?B?RzhBQ2hDSG5SS28zcHBJZzNvSUlFOXdFaUxqU0NZTkNBUCtkeUpobGhYSzZK?=
 =?utf-8?B?Z0loM1FqNm1sbmJoNWFOcXpTaUFDK2JWeUl3TnVFU2d6UVdndFZIaFRCRFhQ?=
 =?utf-8?B?dC92eDlLYkJ0dHRDcWRhWExUNVdvck9YcnlQYXFQQ28vL1gvVk5rRk5GMWpU?=
 =?utf-8?B?NWFjY0U3ZnA0SWZUQkVPRWE5aXNUT1NvN1ZncjZMdThLS1IxdlhXaFdpejJM?=
 =?utf-8?B?QUJhNytXakk4TjZ5RXUwTThGbWVJSENCTVU1WCtxZmhudUpMRXFEVUVaV3VI?=
 =?utf-8?B?VWxiMk9UU0E5V1duZnNESG8zbWdvNEVFKzIxb3NOZ2VIYjRKYlNiczVzdzMv?=
 =?utf-8?B?RlRxUWdqZHBnRjZQMGlYL1BkTVlhV3JjdmV1dEkxVnBkemlDMWtkNWxkV09a?=
 =?utf-8?B?RHN0bkMyVEdOaVd2Nlh6SUVLMnd0NE9zeER6TFdKNzZpSzB2M0pjV0krdC9D?=
 =?utf-8?B?NnVna09wOWV4alBDaGJPeWlqQ3B4VFc4RUJkT1podTMvU3FlVEIyK3dua3E4?=
 =?utf-8?B?cjdieGlwUjdrVVg4KzlyOVE0UkZ6UW9VK09ZR2Z3ZnRLQTZJVFNSM0JyMHRE?=
 =?utf-8?B?ayttRktRZGduVDh6WVpQOHM0TkFBcDJTeVBXdUVHRHBkYy9ZUENZUTRZaVVj?=
 =?utf-8?B?N1F2S0ZOb1NMckJjNDdNb244MTNzK2kyWC9BRkRzODZxalIxMURmZ0FhWSt6?=
 =?utf-8?B?eG9zUjM1MUVLSjU4ZzYwMHVObXFZQ2k4bkFmNEVQM2lmUStJSnNhTkJ4L3dZ?=
 =?utf-8?B?dEVzbWZVQktNODdWYkVUR0plTG9xZ1VXS29heWlhUzlTYkllQ01ybU1LLzFw?=
 =?utf-8?B?YTd1QUNJQXZaY2pjQ3NCRDhBL3Zxa3A5SzNkcVh5cURrMEFPRE5VL1gycFIz?=
 =?utf-8?B?VW9aYWlTVUJUbGEyS3d2WnVkbFN3MWdqRGd5VENuOGRHQkwzdXpGSHZkbFl3?=
 =?utf-8?B?K1lMNHB4RHpxTE1admVzT0hPbXhrcWtNWWpaMmVKWGFteU52WG05aUs4a2FQ?=
 =?utf-8?B?RzhlQVZrM0ZWbm5WekdTYXZrSGJSWTNXaFZhWE5HbStzY09LdXdjUDBhV3o5?=
 =?utf-8?B?RTJxYlRLc0F3dXNyb05BeXpFTjgwVnQxSjFMeWZaMTBqUVE3MzlDUUNPMWpk?=
 =?utf-8?B?NTZRejZtT1U3TGgveTYwRVdBSzdiWkdBdmFhaU5TKzdLaVAwRCtkYjZOa09Y?=
 =?utf-8?B?ZCtoeW1vWHZhVkZ4S05wbXlQckliUzU2blhQZVBhcUMwZlRDNDJHaS9xaloz?=
 =?utf-8?B?Zmo4ODlHY241bjBwVWhOMk5KdTM5Zk9KYnl3UlhQNVRVZ0FidThvNDlEUXhO?=
 =?utf-8?B?VW5RLy9TdG52d1hWampna0xEeW5VQ1dSWFpYUlpYUXVHTUtkb05iVW5FZmNH?=
 =?utf-8?B?SkNUZzNHa1Y2bzFmL2twd1lZTGtJYXlzTnROYmV0c21aVDVNWlQvdVRlZFZr?=
 =?utf-8?B?SjFKdytKT3JqTWQyYUVDQWhWZTFiK3prRHlQLzlKSUpIcEQxbFQ5VmJUNW5C?=
 =?utf-8?B?enNIallrbVl0d3YxM2lHWkdvMjhxNlJuVGY4blY1QSt1V1hEdGlEQlBWZlB3?=
 =?utf-8?B?aE9zK0VtVlh6Z0E1TXJOOXB4SjlqYi9wT0Y5YWRWbzJxa1pDc1BzNklabE9s?=
 =?utf-8?B?bkViempCNFI2ampTYVNCTEs1QVBQNXJudGFHemVjd3FOL0c4Y0lIY1pRZDl5?=
 =?utf-8?B?eGVGamtXVzNRQWh6YUZyUm9YdUo0VEpZNGZjckw3TkNJNDdCMS9DcExrYlRL?=
 =?utf-8?B?N0lnSXJmWHB2NkdjSml5czBHTGx2a0ZXdCtNSkRIc1FMalIxSHFPWGtOQXVy?=
 =?utf-8?B?SjIyWDZuamlieE9VY2Exa2ZwdWVzTHF4dnVFcW9HM2NPblo0amZGUCtmQThF?=
 =?utf-8?B?bWNDZ3pWRmFkWFM5bHplSFBRS0lQU0p3QUFtVXhoTEpzVENUL25ORGdrRFow?=
 =?utf-8?Q?A0XzxA7viwWC1U2k=3D?=
X-Exchange-RoutingPolicyChecked: vNuKKFTDp49z20D4Nc//+NiNO5S8CKwMP9msygQLamoEHLx9mKV689WGivvD6G0L2DGtQcV/M0ZfcHbDy6tbt9LOZ7HCpthix+/5UdQRhZW54C9tHGjA+9KaK4sqwhUPKjpUzNTf4GOQfSolEbmNuRbDEwGbL9vOlLwZvQYlBZl+8oOThzvP0mLB1GXa95PSTo5qjzi47WeeMZPDIH1TnQEsyyIkNtAbHMOV6KPQgo6WXfPy1yS5b77Iv3exnVe0QaOf0kIKrTp9lDicMiPfwKuhAEJDWUrAhgwU1IwLvl8KOyB84KuVCwGtvH3s1LtJyN+4TCa0QhEpkW3q6dNgqg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d19519c-e83d-43f6-0490-08de973325ee
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 18:58:27.0111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lt9WEF6wGUBbjb8gHRYUF7ArHWOb4c4yfGTkvwshs/40PtMw4Abc6A4q0STslKBTzpx8T6f4k1NWf8tSEyCrSJSpRYoX6mWX+CqeO5sRMyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775847514; x=1807383514;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5A8w+cwR4uWwAGMul6RzKzxTpCJBmYclentq2vt0N+w=;
 b=A7NL76dovCwNumQM/oHCAL5LIBmGl0Qco9iKjuyR7yO4w/AgeZRv6ZpS
 kPqbGJZ4HGDyrQu5PRVhe8hO3YTT+g3JBe0PMR2jLQ9eNiDjHIR3TISpt
 Wp4T+zoNBMb7MRQNFa34Tv8T3MNY45ak9G0r+dcIeSUAaw40A/b08xiGN
 o7DY5kTUK3gnkUSzWO89tQBspEm8DoOvsFWW5TYkybRGWY6JUPB223kLB
 mKBYg+O11HMBsLxtRUkNYxkF3HmdXPlrZ6o5V72OyymolbdZH6MK0PxUw
 Qeh7ssfuR8P+4qGKDg8VL8LSAkIXr5eh0sI9iGM27FfA0GaHWQX8nZclv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A7NL76do
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 10/10] ice: allow setting
 min_tx_rate to 0 to resolve VF bandwidth oversubscription
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: C7B3C3DBB82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 10:40 PM, Aleksandr Loktionov wrote:
> ice_set_vf_bw() refuses to accept any min_tx_rate value when the
> total guaranteed bandwidth is already oversubscribed, even when the
> requested value is 0. This makes it impossible to recover from an
> oversubscribed state via "ip link set <pf> vf <id> min_tx_rate 0".
> 
> Allow a zero min_tx_rate to bypass the oversubscription check so
> users can always clear the guaranteed rate. Additionally print an
> informational message when the oversubscription guard fires to help
> diagnose why a non-zero request was rejected.
> 
> Fixes: 4ecc8633056b ("ice: Add support for VF rate limiting")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_sriov.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e09..6e3bec7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1507,6 +1507,12 @@ ice_min_tx_rate_oversubscribed(struct ice_vf *vf, int min_tx_rate)
>   	all_vfs_min_tx_rate -= vf->min_tx_rate;
>   
>   	if (all_vfs_min_tx_rate + min_tx_rate > link_speed_mbps) {
> +		if (ice_calc_all_vfs_min_tx_rate(vf->pf) > link_speed_mbps) {

ice_calc_all_vfs_min_tx_rate() is already called above (out of this 
patch context), can we save that to an interim var and save this second 
call?

> +			dev_info(ice_pf_to_dev(vf->pf),
> +				 "The sum of min_tx_rate for all VFs is greater than the link speed\n");
> +			dev_info(ice_pf_to_dev(vf->pf),
> +				 "Set min_tx_rate to 0 on VFs to resolve oversubscription\n");

Why not 1 string/call?

Thanks,
Tony

> +		}
>   		dev_err(ice_pf_to_dev(vf->pf), "min_tx_rate of %d Mbps on VF %u would cause oversubscription of %d Mbps based on the current link speed %d Mbps\n",
>   			min_tx_rate, vf->vf_id,
>   			all_vfs_min_tx_rate + min_tx_rate - link_speed_mbps,
> @@ -1556,7 +1562,7 @@ ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
>   		goto out_put_vf;
>   	}
>   
> -	if (ice_min_tx_rate_oversubscribed(vf, min_tx_rate)) {
> +	if (min_tx_rate && ice_min_tx_rate_oversubscribed(vf, min_tx_rate)) {
>   		ret = -EINVAL;
>   		goto out_put_vf;
>   	}

