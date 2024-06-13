Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A82907E1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 23:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55196414D5;
	Thu, 13 Jun 2024 21:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eEgzslmYQPKt; Thu, 13 Jun 2024 21:27:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65825414EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718314048;
	bh=H9O6wtADbX7JuofHNugNebb2xy6MZemZI6v3mPx8sK0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8h09WDdPmdIt76C7FSPOQmCHUU5+HxwY6prADgXCUGEzg+kKuJJ0DmIzj5g097kbA
	 aVKx0CyS+t1HDQnrcUN+kH+7ecOnu5SSs+QSvqvspEarPicSHcC54hMP5HTRmYCGvW
	 YPXn4OPcUbC5Of+JOL3levVIgVrj2GXEWgZ7lOdv51WE+O9HAxHD02cigkWnJZnmR8
	 gOCq9BMWm7b4KvNLbW8e0v1BiBRBWCq0nMYTBmojYQ3FU4aOitFgpf4WOTr17h7AD6
	 JXnM79W0eTtRxBYa7Sl505FHE58Vnt9WmX+YKNg1n3Y7YFDPGuhP2zM7OLk2iosg+R
	 /UOHTBlIFDmxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65825414EB;
	Thu, 13 Jun 2024 21:27:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 524331BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 21:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4965A843F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 21:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rbi4nZRXHnDG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 21:27:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 58A2C843EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58A2C843EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58A2C843EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 21:27:24 +0000 (UTC)
X-CSE-ConnectionGUID: A47qw4szSMCHK292LVdWcA==
X-CSE-MsgGUID: EgjBBY7HRseMAgdFnhlmSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="26292776"
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="26292776"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 14:27:25 -0700
X-CSE-ConnectionGUID: cF0b1yOoSDytjlBLmUBwwQ==
X-CSE-MsgGUID: Kd6VTOboQ9y7YfbwGEsBsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,236,1712646000"; d="scan'208";a="40950384"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 14:27:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 14:27:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 14:27:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 14:27:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 14:27:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+UFtNk1aHgGcR6oDAAnqXavvKqj2ZKjm1NEcNZqFNkj8evVPHxsSBd8UwcckN5r4tAeSueXdlEtMzpQ3/fkNTobn9iQl98O68iglHZDFWoDh6T3SdY5YSl8sZxJNZl+bQBSWJwjSiDpPL3tqKiYfrCvCQWNYtRq7DSAGxGjY1LJtvg/8VXO9O2tTZeIQlvnXMKJlNpODf66pQkUpD+eZentLs64XQIiH3pQxy5dnCp/G3D717pg/1lmE2HaUcmEv2RPG9mso+5+OlEYLrLMOCcsLbsOJ9AQ+Av+OZ+Jgp5LmNTdGHzIL8AueE7XKrINaDmKro7/NDL/zzEp0Ee7Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H9O6wtADbX7JuofHNugNebb2xy6MZemZI6v3mPx8sK0=;
 b=LMUjtSZt6wxCAup09j3jqjYt/lVxwsjeZJp+DxC6UmKUmGO7mq5O35p1tWRJJJVpX+SpXV52d5jwbsGGQan8fDb7WBpmECrSNkeRT9aRZOZcOl3XLZLGEyVQxp3sfdK+s5LUnZATo1puxp7NeJ7VWn3K3KRAWKkt/l+zuKpTs7bRmzUn8VFb/RsHEiWNTbsknQ4obqJTrYh3gSXfCR9LwDe6dMkUiBXWLkRLyxEKixmqwUaQc41UCQVNq8yoBDxgc+HXt+hjx5fTl+9s4EL6xogoUEuVH8LIUjz5nybLYKgnKYTYHHwu1nd/fhuk8O1yvJTMAEzHqMm3xBP0oemJJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB7208.namprd11.prod.outlook.com (2603:10b6:8:110::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Thu, 13 Jun
 2024 21:27:18 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.7677.021; Thu, 13 Jun 2024
 21:27:18 +0000
Message-ID: <03515112-e2b5-4bdb-aebb-16797a59b3fa@intel.com>
Date: Thu, 13 Jun 2024 14:27:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::46) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB7208:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f108e35-7aee-43b0-5bc4-08dc8bef9a06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|376009|1800799019|366011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUdPYkhZNUVPTWpXZjJvTDVtVi8zU2x5enU3aGlWT1J1SW1TR1MySEJBeXlS?=
 =?utf-8?B?MzR2ZHB6eDZjamJxZGUyUStCYzdTSUpTeEdaaFpycjBzZlJIL3pJN2l2OG5a?=
 =?utf-8?B?NlBBQmJxQjQ2MEpFQTMvQ3FhdUxNRk01VWxmUzMzWEZlQTNuUFNSRHl1K21u?=
 =?utf-8?B?VHVtSWI0WFQ4Y2M4VW5PSGtzSDhPSGdTMlRQdnhxUGZtQ2NZd2NpYTdpTDNh?=
 =?utf-8?B?SVQ3aWs5WVRLRGozWXR5R0RPTEtlRUxoNEZQNVFHckxNUEs4aUFvUWdkMnFw?=
 =?utf-8?B?eGtUaElBSTJ3U1FXUDN1N3hmc0RCR21WMVVSdnJEOHRRQmdSQUlnbHBZb3p3?=
 =?utf-8?B?N2c1V2FnTm9QUjNGeXd3TWl6bHZjUk56NEMzaHJSUE5USTBGWElsNVlYWWJ6?=
 =?utf-8?B?L1h6V3lEaUZBSEtjQUpJb2JrU3Rob0pXaTNLMGluM1RMK0JGYXg4N20wRjEx?=
 =?utf-8?B?ZExQY0pvSkRKZmw0WEI3V3M3R0h2bVc3SitBKzBrblhOZTl1UjBabHowdFFC?=
 =?utf-8?B?V2ZLRTNBT3czeGJYNUovanRPemIrSllvV2dtRHhpVDhaY3FmOFdabm94SEZa?=
 =?utf-8?B?cllqaDQ5U0grSUdEeGc4cEZlTWpVelRleUg4bnE5eGtKRWdxZStGODJORnBo?=
 =?utf-8?B?YjRpWm0xby92eThkaEFFRmJKNjNNM0RLSUxoQ2tSUGo5b1dQRVl3VFA1dnE2?=
 =?utf-8?B?ODF2UHNMTGxFYU5PeDJjTzZzS0JPdi8zTzlHb1FKaTVLTWdVRVI0NjczZTlw?=
 =?utf-8?B?blhCbTNHVW5vZHFZOGwyR2F6ei9renhBL2trVmtrR0p6c3ZjTSttVTBacHlB?=
 =?utf-8?B?ZHkyM3J4ME4ya2VqeU5vZFlPWXZMb2hmWElsRGZxeFU4YTBtWnN0TUpWYk9Q?=
 =?utf-8?B?czl1eU13b0ZPcGErQlhZWXQzak8rdW5QcU9PYTNSR0QveERRVng0NGFWbThI?=
 =?utf-8?B?RzVCTGRLTU9zVlZUeU0waDFCV09jZ3hMV1VzOStpZzc4cTlxVE9IcS91WXZP?=
 =?utf-8?B?Z05UdnZFWndtam1MbnJzc1l3OGRmOHVSSVlITDNTaGppeFJULzhPVE84YmpR?=
 =?utf-8?B?UHgwQ3YvOVRCenJQdklXQUxMM2xpRFZDbnFUTkt3ODRFWDBSMFVsR0NpYzhN?=
 =?utf-8?B?d1NRRWt1dFdqbGp1Vm5sa3lkQUV4UDFWYmpSVk56bXZkcndib3ZwWXRaT2Vy?=
 =?utf-8?B?K1kwTXBiWm9wOGlMR2tEWEgvTWRoK3JRSFJudTROQWI4eVZOUHpzbDVjRWE5?=
 =?utf-8?B?alFNaG53MmNQTzdNREhwVkdya09zTVlyUkgwcDVWTU41SS9UVnJiakJLM2tE?=
 =?utf-8?B?cDVnRWR4ZGRhT3hXa3B2dG9ZNzRwVWlEQk5oTklDSUZrUDY4ZVE4cnFyNnM4?=
 =?utf-8?B?SkNIb25EakF0Y2Z5bEhDMm1kei9yRSsvQWRSWDNtUWFwZm9aYjBQSUQ4aTN4?=
 =?utf-8?B?MFlpTVdad20yOVEvQTV4QTFNVmNKRytZVlBpZWUzT09jdzJtUGlSL2ZFZFJr?=
 =?utf-8?B?N2pNSDdiQkpHRXlaMWFrdWlnZ2NxNW8yN2RXamdiV0FrQ3FxMGVpQ0dwVUI5?=
 =?utf-8?B?Vk05TFpNK2ppVE5uVm5xY3IzZGNvSldMZEYzc1NPVTl2RXRobW5TVHZBU05k?=
 =?utf-8?B?cTBEN1hTdHQyQXg5ZkRDS2cyNzUvNTN6aWVvKy9kcXZZRWI3Q0NDVkI0NDRY?=
 =?utf-8?B?RE4wSkV3YkZobTg3Q0g5NTFyd3hRK21nbUVGKy9UV3RxVFpZRXBYUk5JRnVB?=
 =?utf-8?Q?/uXARhhI0Aiot2XM0FBS2YQKBFo94zS05mEn1EY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(1800799019)(366011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWpwc2lFQjBNL2grSFg2b1RxSm5oZXhNbUlHSkpKazVtTjE5bklGWnFMVXRF?=
 =?utf-8?B?dHZrTmhrYzdqRzdCSFJteVA5S1dJQW5RazJLNVUyQkhzQlVUY3V4NHVtVHF2?=
 =?utf-8?B?aXJlTko2SStEUFAxaVhtdE5QSTlveDBzd1FFWTdYa0hpVEFPUnhHT2hPei9J?=
 =?utf-8?B?YVdtUEQ1aGt3Z0lZd1BwN0ZIaVdtczBxTlZCMEFDSm1qcXdEVWxIaGdjQ0Vv?=
 =?utf-8?B?YklLL1BjZldDMHcrWllUeFQ5cEJjeGZaR2xlc2NhRVNyang5UWxQNHkvMHZ6?=
 =?utf-8?B?anE0Z0tGd1ozN3FucjB3alBCM1plS2NxdGc1clloRVpMdVBiYVJGL2JLZndk?=
 =?utf-8?B?bGlpNWw2bVhDSGgxZFhwTWQ3YVpFUk0rYnlnRVBuQlgxNlM5VlhudHhRQ2kv?=
 =?utf-8?B?THN2cDc5aW5adjV1ZW55TzFPRm82b1pGRHNnaVdBQVRDbTQrbmlSZERFZzVx?=
 =?utf-8?B?VHRuN2dtT3hxelM4ekVTbFpqa1hBdDhtbkU3NEZua2V5bUgvd1RIMlVMNjRp?=
 =?utf-8?B?dVZ3bGx3d2Z3UnR1ZU1aM1VrUnFwaGYxVjZxM3pLNEFPUk52TDlreDNHODJ4?=
 =?utf-8?B?ZVhvTEwybTF1UTkrVjVqSFMvOUFOeFRXVGM4dE9penM1RDJ4MytXVjNhdTBo?=
 =?utf-8?B?aUIzNk5lNmRYYklRWThDQmhwc3lNQ0VIbnFKYklYWlpUdWRzbXNYTGJObDJY?=
 =?utf-8?B?dm0yQjFmdmM4Z1VFTFZmZnkwdi9RTlZHZ0dKZFZQUUNTQjRwOUNYZmNKemx0?=
 =?utf-8?B?UzlVWk1qSkI3QzVTakVjTUk3Z1lQelVSbFBWNkErbkVPVTZtME5tQ1UzYU5n?=
 =?utf-8?B?VkRaT1ZNb2s1UWVTZHhxRkFtWmgyMXhGZTZjajBiN2dXWGlHTXppWkhjQVpT?=
 =?utf-8?B?TENPVGQ4WUJZTVkyVU01L2JVcjNjeUxlbkh2eW5SNlVBU1RVVitmQlc4Q1hU?=
 =?utf-8?B?YlkrbnJyZUs0M08wSmpFcjlFM1FqUEx0NHc4enJlNWcyWWZkaUtqMHhFWUxF?=
 =?utf-8?B?Njg2K0sxWE9EZzJRUWh5VXp5WXg3TytQVkNsejErMWdPcUpYVzNKTmZrNWpO?=
 =?utf-8?B?OGFESWN6NytzQnl4UDV2U3J3UzZ6aU9LTGhuaVBIa0dpQkxwM0Jvd3V3d0pZ?=
 =?utf-8?B?NUVONFkra3dkemNscFA4ZjY2bFJHelRIUXRNVTdCN3k5dSsxOEFPeTB6Uk1B?=
 =?utf-8?B?THVnRTZVdWpPV2tLb2Mxc1p0Sk1KanJKSjRGS0FraWRYYWtRdGVMQ3ZRUlVh?=
 =?utf-8?B?Zk9pTHdYcmZ2bGpnSmV5Mkt4Y2NlV29xdms2cWFyRXpMWWc2MUpZbjJSN3Zi?=
 =?utf-8?B?a0JGMFc2VWJmdzFxV2JUOUxyQ1BTakVrYTZKb0Y0Q1g3TStrcE1ndnRiYzlU?=
 =?utf-8?B?c016KzBSbVJra1lTQlJUZjFjdSs5OTV3WHpocmN4ZFpnYXIwQUozTkZWK2FV?=
 =?utf-8?B?dmtzTEdkSEw1ajdBYllGSWF0TFFMT25WSWJxV294QmxaNi9rcGw0V1NpTVNJ?=
 =?utf-8?B?ak13TjdZT2t6ZFV3a3ZDVnc2bHVrc1hsR0Y4TWlNandXNDhLV0VSMWM4K21s?=
 =?utf-8?B?ak8wNDB1VStFRjJOdGppYjJGZGN4TERScm1rUVBzczVwUjFHSGI4Y1ZsQzJ1?=
 =?utf-8?B?bGJ0VXNueWdxcE5oTUJCQ3JVNlY5WHNwU1hLdUNUcExxaTYzR0JOMDRMd1Ey?=
 =?utf-8?B?NHdKMzVDa3hwL0xYc0VuUjJSb05iaFZFNS9SV3VNR1IwaEUwRlg0Wmd5TDBv?=
 =?utf-8?B?RjFyMDgzcG1KVms3cGNORmVDNlo3NXV5T1RoaUZlNXVOWnc4ZmJkUjVKaGl4?=
 =?utf-8?B?dC8zODlROXNZS2lzbVJ6eXJSd3JTU09DM0Z0UEtjOVpBRDFPVW1EUWF4YXdZ?=
 =?utf-8?B?bFZHQ2pScVZLdHJiY3lFNDdLL1FnMk14K2taRFdPd3Z3Yk9uY0JBU0pURjlJ?=
 =?utf-8?B?UlFuaEx3bEZTTWVFVnUwcTZ6Y1NBbWZyK0FMQVJIRkpWdE5seUhoWXlDOEdE?=
 =?utf-8?B?MExOU2dLQ05IQUp0cHp1QjYxMDk5ek9ReDhTYlZ3Umo5dU1BUzRGVWJURUUz?=
 =?utf-8?B?R2NBTDJOaVl0d0tyR0R6eHBRYlk1VnJHUmVzZTV0Qk0ycGxRS1dxc2FJcEJs?=
 =?utf-8?B?UmpBU05zNEcvR3V4bkd4RWNwTGJadGRoQXBVNmJ3cmtKY0VkRG1vSnEwQms2?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f108e35-7aee-43b0-5bc4-08dc8bef9a06
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 21:27:17.9388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I/lSt5ay30nDLwetkQ486gRNyjOCB6T/He5DN3V7YYS1k2WuL2Jxz152ryVJwa26fqydzV9ZXOLr/6d8tbTbiDdrdsSSCBwDQVqRP2hEiHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7208
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718314045; x=1749850045;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0vkxf2pPJ0a6D6y8yjM8yN/hmMuZvR7W0YnGKUGTx/E=;
 b=lJDII+RmzOhTCVcIs1GvOACPpgVztYGfWRmNxU1mVtF7K3Jxuk2a8dmp
 NO1An/8L1naVb96cERLHef9wqkPYc3w3vFSt1M+jvFAnYnQgXYX27XU+8
 oEyOm5+h2Kj2jgkCdV/AVPq1FVKqHDlPTsmELpq3MTHx+UvLnI1Rx0YlR
 gvkEIXxXvKHO1vu0PhULRF3z/ThtQiD/87Kpfc5ThwtvRgNStjW9XlSdm
 LOURrHWs8qayU0QkTXGfpOSe4Wm3nwQqT3WGl8SuFJs7KJto3f31iB6WJ
 y+eZJAmaHVG/LfCC7qKzC2ot1/cj8RDvXnJ5IwqyxfoO6bec+mJHD4Tqo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lJDII+Rm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/12/2024 4:04 AM, Aleksandr Loktionov wrote:

As Przemek has pointed out...

"hot issue" doesn't necessarily carry the same meaning; better to just 
drop that out of the title.

> The bug affects users only at the time when they try to update NVM, and
> only F/W versions that generate errors while nvmupdate. For example X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
> 
> After 230f3d53a547 patch, which should only replace F/W specific error codes

Could you cite the commit in the preferred style of SHA +title?

I'd suggest

'After commit 230f3d53a547 ("i40e: remove i40e_status"),'

Thanks,
Tony

> with Linux kernel generic, all EIO errors started to be converted into EAGAIN
> which leads nvmupdate to retry until it timeouts and sometimes fails after
> more than 20 minutes in the middle of NVM update, so NVM becomes corrupted.
> 
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
> 
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
