Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9163E90AE77
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 15:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 311F581379;
	Mon, 17 Jun 2024 13:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1RqhT-jA7YbM; Mon, 17 Jun 2024 13:00:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECC41813AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718629205;
	bh=z9URK+qgZJ5LnMG68nmdykEiaPKmG3Ux7qF03JDZt90=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E293q3ne5oAQMr0tSura3CWBiALgCqKW7choBb2gjI7LQVWwW2UfKkL+WeZ3H5HKa
	 SyiYa6wQTwPb7MOAw4ngPkcLOeytJx2doe3xPb+UU8AxPHQFqG+PLC0Y5gd4rG9bNH
	 NLfVXa8MvP3JfzYgq4UYOcYP+mThUwZENKzr9lr7WlSLUbPT5eA6jEjb/vz/nGsnqz
	 FXuCVgH+aCr3DOIsIBDGlNUvW02sRa+NadNRzhRl3+2mI1JCb+FO4z22TQM8fUhaxK
	 4V1p5Fa7ov+kTDY44Cr8eQSI1U3Pi51AgqxMznq12sA8GKjrY/bwMM0SmPKJHSpwgM
	 d2FBBP8f9tMow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECC41813AE;
	Mon, 17 Jun 2024 13:00:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6011BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 406C16074D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bH6G1WT97grq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 13:00:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1AA51606C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AA51606C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AA51606C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:00 +0000 (UTC)
X-CSE-ConnectionGUID: xFLhZzEITJyOgY53x2JsEw==
X-CSE-MsgGUID: xpvTNzW+REmf5g1mBgZnyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="26867463"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="26867463"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 06:00:00 -0700
X-CSE-ConnectionGUID: SqBX7vHwRcyA6z7BG1FRxA==
X-CSE-MsgGUID: tU+o7hR3SnuQpMwI1PEtmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41066768"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 06:00:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 05:59:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 05:59:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 05:59:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 05:59:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NIqALPeTRx7tEc+dq5fJfh02qhoPidWS0Uw9PMsRek608WCEmJpcpP8Jk4USbBw7br3sjLqcnZeAQWqnGJdG2veUI20IHapBiW3uSGMaAfYEtEkXR+rzzPVQQbRk3eb6A1oVeJ3XkrwP1cp7bfszz7eL47LbUawx7LtFYH9tRnf7nkRzbtgBq9Jg/Hieve+o1harn8zkbJsUw341NYmX/M8B1DXHG1dg6ycWHDwVfoUYywGgFFUKhwcArZXC1fr3mh6StPFWVRlRzbmcmZ+Jv9nO54SX+KD0AIPxqj0TelriPXEwxgNu1glbUKROl8nTU4skK7QCkIDZOrMEtWdhnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z9URK+qgZJ5LnMG68nmdykEiaPKmG3Ux7qF03JDZt90=;
 b=jFV/SaNMZE7csfbvRJF4GLwnI5LbmzjuA55MIZwnwOHHAbdoJe+hSvS7SOMFz4+cXYAas+oZ4pbKJyWFAOv2eCn8ZbeFo55yt8uq9t8MjEml0w7a4QxewYPxT5ZJ9YxZfvCKNBF4d7q8So03oWQgczBzKeTJsJGMWiwWd41hHZ6+spf1manvfaIm0s6CfmnBYQTX/E+5UCAX6rkigvTA8s+c/QCQ77F4f7zYrUCtV6RCfOKCae8msrl654KjzJIh783+NMhFC69Syu8VZPRM2w+UmqtrztEZq0s4q46M55nx9vihQEyUQFEjrYgd6b8ihJjOz3QNpAiBYtuPNKdUIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 12:59:54 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 12:59:53 +0000
Message-ID: <d8d430e4-a722-427b-994f-3e6c09466aa1@intel.com>
Date: Mon, 17 Jun 2024 14:59:47 +0200
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240614131842.277398-1-ahmed.zaki@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240614131842.277398-1-ahmed.zaki@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0011.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::20) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|PH7PR11MB7606:EE_
X-MS-Office365-Filtering-Correlation-Id: ea3fc63b-a99f-4480-b35f-08dc8ecd6143
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K3A2aExsd0hieFo5YmFjZWtxeURKMTFLMDQ3SzlOeW50SnJWR0JlbjB2Mmxk?=
 =?utf-8?B?TkZDOFMrU2tGQkRjVFpoa0VpNnRXaEJqT0NFRHBpUU56OXlhNkxadXlYUnla?=
 =?utf-8?B?UHJYWGxBNEQra2l1bHlhd2dFK25XdWp0a2x1REpFVXJUYUU4eTFlMitlQ3hi?=
 =?utf-8?B?NTJPWE5neUJWOVJWU3NtQzVscFNiZWdXZUxNNHZDVWQ2MTdEclM2MGpZLzJC?=
 =?utf-8?B?WFRmaFFrY3M5WUJzNXpCRU1oZXN3QW9UNDNyUCtBSWV6d2hWRzhmeFRka0V5?=
 =?utf-8?B?RVNGaDFzVGhId1F2YWdhMWhjOGJkZGhnQW1UUzVYbWcxVHlrenUzSzhhL1BF?=
 =?utf-8?B?OEE3dkxCL3RxbHVlTVlSZjBFREhsa2Zzc3psOWh1aUF0WExUQ2ZtcklCRDdv?=
 =?utf-8?B?NERQWEF3cWlhYkQ0Wk9NZGJPcy9Cb1kxNkV6UStKOUg4aUN6clJtSnpRbTNQ?=
 =?utf-8?B?SUNaWWVxazBVK1lUSFpvaTFJUG0vZExrKzZVbHJiNlVsQ3BZMHljdEp4YnMv?=
 =?utf-8?B?bStQQmhDT0Jhc2RVMUpMUklPemd1L2J1R2VqazJ3QTY2ai90ZDJjNEMwM3l2?=
 =?utf-8?B?MVprblZpdjFoWERRRDAzTno3T1RmRVdzZmpXSVNPb3lZcGhCUGhhY3BkL2FF?=
 =?utf-8?B?REg5VGh5UlpiQ3VtVnJKMWlmNDdwcHhFZ2htVFNLckc2M1hoc1FsU0xXR2ZD?=
 =?utf-8?B?MG9qbi9CUGNFcVhvUDI3YVJpSjNscm83MTBWQlRVVG04M21raWZ6eGloMjRy?=
 =?utf-8?B?ZWt1UTM0azN2ZGRiOXdManRpY25Za1ZDOFNZR0lHZlB6VVpZOVA4cUYxVE92?=
 =?utf-8?B?MG5hbDFlR3BFalgrRTdxcEZJWkE3a2QrZHhLSkpDaDM2YVI0a3ZuQnlSeEMr?=
 =?utf-8?B?T2VMd1dvTkVhakxabzVsREhTK2xDVG9mTlFOWmZnZ1pidzduRmU5TTEwdFJP?=
 =?utf-8?B?SjBQRkxIOEx4SGFnZmtuMWZITXhDZ3p4TDBJK29HT1FjdmgwWVNEMW80T0FE?=
 =?utf-8?B?QlVNRmxrb1V0dGtiU1I3OFFyY3FHRnMyMHQwR0xFMkp0VWZickJrQjZQY2tX?=
 =?utf-8?B?Sm5rc2xMUFpmMU5SRE5oaXkxeEovNThIa0kzQngvY0RWTFU0OW5hT3FIQ0Vq?=
 =?utf-8?B?bE8rM1dTejQvY2krYjBVb2xJei9DT1JUMGsvL3dwTjY0Wjh5MTVRZ2RXcGY2?=
 =?utf-8?B?Smtia0xhcDVHQzBnQlRlZ2RHUmsvVTY5RjBnZXozY016SzhkU3RiTU53V0RW?=
 =?utf-8?B?Q0d2RGtQUGdIWU5SYmNtVHJXZzZ5NURiY212QmtQbjQ5WjdZWlQxeCtqanVH?=
 =?utf-8?B?U2dkMDg2N3Nsdm5HOWxjVUJSL3Q3RWQ2dEpMdFd3bkVXQ1h6NjRaOXdueWpQ?=
 =?utf-8?B?Rmk4Z0RXVEJIeU5xcktvK2dZTnIyckNaNjFzellXUmdjNnp2cXFLbnlwbUZO?=
 =?utf-8?B?dG5VZ25zcWlGKy9yeE5FTHdQZk5zYnZMcGs3VkNDNlJPYUJZWlp5ajUrV2Uz?=
 =?utf-8?B?U25pSGZabEpiaEdUVExMbU1uNFFQZWcvZ3ZTZXBPWE9CQ2N2aG14eGdGamVw?=
 =?utf-8?B?MUcvRXE5Nnp3WUpqUzU5MFpWK1lJREc0N0JZTytDQm1WeTJIWmFOZU1mT3lj?=
 =?utf-8?B?Tnl6TGorcXF4eTVuZHBJM2R6aCsvMGRFN0tVOVlNNlJJbFJaUXF4N1NxZzNt?=
 =?utf-8?B?TWRMVElCVUorVm81UGM2NE9UM0FzNk1WNUs5M3c4KzdIbDViMGg0Q3FYNnVl?=
 =?utf-8?Q?FAMSVntPhuLbuT3Nn4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEZkd05VeDYxekkrQlh2SzN2UUx0cU9IMXcwbk9RUXlwQ1R3V0tvQUtkR1Vr?=
 =?utf-8?B?MWlwS1ZQNmNaYU9NazllckRmM2tIV2RoYy9TU0c1VXE4QmY5WGRkNDFKQVM0?=
 =?utf-8?B?K1FLeU91alV2STRDRlA0VDV2Mm9MUEcydnVoTEc2enoxbTBhMXdNR2tUb2Zv?=
 =?utf-8?B?ejBYczc5UXQxR0VkM3k2dGcrNlhueWxLM0RMODNUSnNKVkFGdEx4WjhCdG5z?=
 =?utf-8?B?aEU1VHpHNVM3d1QvZStVTlhMUnNWVnBMUGRhU212M3VQYUw5TklwYUFQb0xC?=
 =?utf-8?B?aEpFUXFYOGhJTm1VSzBhZjR6K1M5TlRMaUg1R2VaYzVYRG1UcVNGVXVOdXJU?=
 =?utf-8?B?MXFJNDQ4MWZZeXdPekpFcFRuZmZLa2x6TFBLMnZDK3ZGTkhrNmFocXVCV081?=
 =?utf-8?B?dWM2dGcwUVB0WG1GSkdQL1NjZ3lsbndpeTAramkwQ01TbjljaHNpT2Qyd3FY?=
 =?utf-8?B?bFBwTzRFOVNvRTc2NDJYMGs2akZVemRMWkg1WDY1VStPb3FDdDN4aVVWR3oy?=
 =?utf-8?B?eW9LNVVTUGtqY3BoeXpyMU52Y0Q3clhhdVhNVXdkaWlKSkd6VWJGUWljYWJB?=
 =?utf-8?B?aXAxU3J5L2VZZ1NETzlEdDJJQS90Vk1FcXJMV2d1b1FTaGJ3Z0FaV1ZZb3o2?=
 =?utf-8?B?dkV0cGVwdlB5T01BWEk3YlRZS0hGRktGQ0NwckNWdHZFNEEwazQvRHVKanRX?=
 =?utf-8?B?Q0prK3hxMU42cE1yU3hiblhiK0owOVl5dVVRa3FIS0FKY0VjUkR4R2hJQlIx?=
 =?utf-8?B?MUZwS0tUbDFBKzZMN1oxa2UrNThlWjlHdjJYWGt1WWU0UWpxbHpsRWtHUTlH?=
 =?utf-8?B?dFJhY1J0dURYMVd0ZE9Kd1A4bzdDQjlDUDQrZVZnTmkwTFRBZTVLeE5GaWJR?=
 =?utf-8?B?OXZHZlYyZXJPQ0ZnZ2x6T3pUbjJmMEdONTM4dW4xaGxWdUl2L04yNkpjUkwr?=
 =?utf-8?B?VVNUNDhIa1kvelVtdHNTTmVtVHV0LzlMMXpScFZUcDhkUnBKTDdENUF0dXB0?=
 =?utf-8?B?dC9IcEZOQ2pKVDdvV01OYUhmSVJBZzNYcUkzV1dLbFg1L25IeDFycFdiRURv?=
 =?utf-8?B?U3ErQnFXM2pBcENOdHNQZlhJSStxZEVBVTVZZUQ2bXd1U0NRT2NVdVlXeVlS?=
 =?utf-8?B?a0dmMVVzck9Wc1RDcFFXU0dVUjY5MzBYYi82N28ybzZvRTdHcGtNcEp0ZGV1?=
 =?utf-8?B?ZWRXdUlBUGVHV1JHVjFSQ1M4NWNDMURZK3RZZUZRQVg0dWFqTkJEd0k4Tm1L?=
 =?utf-8?B?WG9ZY09QZHRHbnY3bmlMNjJmVmI0NXlIbmJSR2hlOEkwa082a3QxclUrdVV5?=
 =?utf-8?B?MW1DdzdqUzE5MUViRmlkM05XVnREazhFbUVRb2ZaM1VvNmRLVlJzcGVjME1D?=
 =?utf-8?B?Tm9XN2pEa2t4UFlnSFdGTmc0Y1JsVlZPb2JJdjBoZmRnWHdab3pKckhCZmhJ?=
 =?utf-8?B?czhHaXYzaTdNOGNGTEJWcjd0RU1LSmswQUJONUsyYWFFcWRCS3Y5bkJrSHZz?=
 =?utf-8?B?TEdOeEJuQmVMQkI2bk5WQlcxaHZvRi91Tmp0RDcvdHVyTlZjMTZDMDFNbWxL?=
 =?utf-8?B?Vkd4Q2YzaHc2bHBWUHFQVlM0eDQ5MUR3NkJSa1MrZDRUbmNiVjh2QktLQ2R1?=
 =?utf-8?B?QVB2aEdGTzdmektvVGR4OXVhS0lLbmE4OTE1cjFISUJLbGxNaGpYM2U4R24w?=
 =?utf-8?B?OW5EQWpEQlRJRmVnaXNVQzJqOEFnWjB4TXhnN2YvcFkrZ0wwR1VZV0NQNm5v?=
 =?utf-8?B?YlZCWnNNYmJWNnJvdi9TQnZYaHg0OFdlbHRpV01qRWd1SGJWcXhkdzlpejFF?=
 =?utf-8?B?dUordit1QnhEaXZQSXJiU25LWWhPWDJicWpiNk1FUEtrbDVteXNncTJkWWVP?=
 =?utf-8?B?RDZ4K1J1b2FabnJiajAycUJQWVdUd3cwbVlxWUpmOTl0eXl3VEYvb1VuTUNq?=
 =?utf-8?B?TS8rS1NmWlBacE1kQzRYamlXWDNSRDBYT1IrcG9kMWp4ZmJKa2ZwWlcreStP?=
 =?utf-8?B?VUhjUGVkbmhsSE5tZzV4bWx3dmNaWWQwRDlYNFVOL2JIbXdhM3hTemRNTkdm?=
 =?utf-8?B?LzU0MTc2eW00S2VoVDFPVGdFd25SVXM5RU1iVEE5bHNqRUgzWXMyeXNwd0hs?=
 =?utf-8?B?dGdVMzdtNjI4Tkl5WGpKWHZDdUx1SHVjbXI1K3lVc3d1QUwyUEMzSS81SXA4?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3fc63b-a99f-4480-b35f-08dc8ecd6143
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 12:59:53.3521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iPhFb4M7/KKjGaZww63lOhyN7u+7W5jLnQ752ACU7OcVveetFW1UssynQRvlOuRievvmcsqiBHPhTXb3uOyUiJq/Rn7aj23SP0tDYCCzUQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718629201; x=1750165201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ePp5q0X+PdSM8Vx6+5uQKfMmLtQHKffi2Qe5bbcbq4g=;
 b=OJTolu6/gHDzxh27pCJE5PIjjpdVOyANZjks5S/FI0TnbPrZ8o4KERCY
 ATv5F7MA37O82oiidb5WyLcsVrt93wlDDxmEh0/JuZge2ugQgrCJseECI
 FeeqeMsh42wN1EqcNqNndYD1q1U48jtA/o582PeWYABoKutGfzGO+LQvc
 +AGOlj+vBwsQUeBSD2eBSF64Wsj9t/8NEzJG+7hfPQaadnUaIjTmtsGMK
 fEsiv5QImrcdgoTInBKXmTlRBXrbLV1CrH5aId1ErWZQcpNt3Y0qeNstj
 e31jiYyjdh3PgdoTnxZYBodxjt0oDlNgywELJHnXQi0uBQ2+AKk1+vFi9
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OJTolu6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add a per-VF limit on
 number of FDIR filters
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, stable@vger.kernel.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14.06.2024 15:18, Ahmed Zaki wrote:
> While the iavf driver adds a s/w limit (128) on the number of FDIR
> filters that the VF can request, a malicious VF driver can request more
> than that and exhaust the resources for other VFs.
> 
> Add a similar limit in ice.
> 
> CC: stable@vger.kernel.org
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Suggested-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h        |  3 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_fdir.c   | 16 ++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_fdir.h   |  1 +
>  4 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> index e3cab8e98f52..5412eff8ef23 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
> @@ -534,7 +534,7 @@ ice_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
>   *
>   * Returns the number of available flow director filters to this VSI
>   */
> -static int ice_fdir_num_avail_fltr(struct ice_hw *hw, struct ice_vsi *vsi)
> +int ice_fdir_num_avail_fltr(struct ice_hw *hw, struct ice_vsi *vsi)
>  {
>  	u16 vsi_num = ice_get_hw_vsi_num(hw, vsi->idx);
>  	u16 num_guar;
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
> index 021ecbac7848..ab5b118daa2d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
> @@ -207,6 +207,8 @@ struct ice_fdir_base_pkt {
>  	const u8 *tun_pkt;
>  };
>  
> +struct ice_vsi;
> +
>  int ice_alloc_fd_res_cntr(struct ice_hw *hw, u16 *cntr_id);
>  int ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
>  int ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
> @@ -218,6 +220,7 @@ int
>  ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>  			  u8 *pkt, bool frag, bool tun);
>  int ice_get_fdir_cnt_all(struct ice_hw *hw);
> +int ice_fdir_num_avail_fltr(struct ice_hw *hw, struct ice_vsi *vsi);
>  bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input);
>  bool ice_fdir_has_frag(enum ice_fltr_ptype flow);
>  struct ice_fdir_fltr *
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index b8df8d0b2d85..60bf71da53bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -550,6 +550,8 @@ static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
>  		fdir->fdir_fltr_cnt[flow][0] = 0;
>  		fdir->fdir_fltr_cnt[flow][1] = 0;
>  	}
> +
> +	fdir->fdir_fltr_cnt_total = 0;
>  }
>  
>  /**
> @@ -1694,6 +1696,7 @@ ice_vc_add_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
>  	resp->status = status;
>  	resp->flow_id = conf->flow_id;
>  	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]++;
> +	vf->fdir.fdir_fltr_cnt_total++;
>  
>  	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
>  				    (u8 *)resp, len);
> @@ -1758,6 +1761,7 @@ ice_vc_del_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
>  	resp->status = status;
>  	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
>  	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]--;
> +	vf->fdir.fdir_fltr_cnt_total--;
>  
>  	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
>  				    (u8 *)resp, len);
> @@ -2074,6 +2078,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>  	struct virtchnl_fdir_add *stat = NULL;
>  	struct virtchnl_fdir_fltr_conf *conf;
>  	enum virtchnl_status_code v_ret;
> +	struct ice_vsi *vf_vsi;
>  	struct device *dev;
>  	struct ice_pf *pf;
>  	int is_tun = 0;
> @@ -2082,6 +2087,17 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>  
>  	pf = vf->pf;
>  	dev = ice_pf_to_dev(pf);
> +	vf_vsi = ice_get_vf_vsi(vf);
> +
> +#define ICE_VF_MAX_FDIR_FILTERS	128
> +	if (!ice_fdir_num_avail_fltr(&pf->hw, vf_vsi) ||
> +	    vf->fdir.fdir_fltr_cnt_total >= ICE_VF_MAX_FDIR_FILTERS) {
> +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +		dev_err(dev, "Max number of FDIR filters for VF %d is reached\n",
> +			vf->vf_id);
> +		goto err_exit;
> +	}
> +
>  	ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
>  	if (ret) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> index c5bcc8d7481c..ac6dcab454b4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h
> @@ -29,6 +29,7 @@ struct ice_vf_fdir_ctx {
>  struct ice_vf_fdir {
>  	u16 fdir_fltr_cnt[ICE_FLTR_PTYPE_MAX][ICE_FD_HW_SEG_MAX];
>  	int prof_entry_cnt[ICE_FLTR_PTYPE_MAX][ICE_FD_HW_SEG_MAX];
> +	u16 fdir_fltr_cnt_total;
>  	struct ice_fd_hw_prof **fdir_prof;
>  
>  	struct idr fdir_rule_idr;
