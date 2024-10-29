Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 304CB9B441C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 09:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9F984054B;
	Tue, 29 Oct 2024 08:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hasg6iv-jG_e; Tue, 29 Oct 2024 08:24:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47D8C4054C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730190299;
	bh=79OdSyluOOWc/9W2NOPq+x1KZlZ499/oVEhgWJbNuRo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NPQRdH1i2bEYs86AHjwMUBxzkta8TBl0S41/YPiy+fggffqs7aTVahpwCMQbAoaf3
	 TgvzDJ34/jnxrjPWS28CeKHQ/wJcGxd+ziXzDQKeKrTme++OcOoUOL8aE1E7eVnsxc
	 hpclNpAciufySx6FdYPZdRb5jJaHvYWRV0vMPmIVssrLMOKPKio3KNrrmlJqXAA85P
	 OFf3jGWfHdpUfl6Faw3FrNylHt9mUPydXr/KpX2bCmp7ZkeJ2skkmG519lq/zXp0zU
	 lFhbdHjzUNxVwewZMJgUys1K1Hwwk+acS2fSJty/BrtpT/8EhPNlNvBw2JKvLtD6Ek
	 iYQLIESp4y3jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47D8C4054C;
	Tue, 29 Oct 2024 08:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F1EB5E4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EFA54054B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x1cZaTKT9SgD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 08:24:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4A734053C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A734053C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4A734053C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 08:24:54 +0000 (UTC)
X-CSE-ConnectionGUID: 2djQ9PsmQfKgx+5JlAoyag==
X-CSE-MsgGUID: uX4mrTzISz2zC32U9yL2Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40914469"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40914469"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:24:54 -0700
X-CSE-ConnectionGUID: J5IQDqfPTFahJJtkH2S/UQ==
X-CSE-MsgGUID: gAsnGWnAR4eZkBMV7MUcvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82308396"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 01:24:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 01:24:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 01:24:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 01:24:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dbN1xNnGmay/0PZrbXwwewNcb+Tf/MdBLzcDinOh1YyXAYYfysVR+Mt4HA612jmPiqn9jbIL+1CyPjdc8Di9Ot8sZfFynO1z0jtGkK+7xRDRc080av26OXiJf3RxDtF6h6Wjk5s/0+15WRG6JpY8CCecI0IBl0WXfFEgWj4+wCkJUboM4cq48aTbQ9Qyg7I+xfQLIJKcEWCzE+AccNUBWggFvI13m7kKWAbpptzMI8vCY3x/AW+wki6omKUzh9CiYxiPoyjif5lDBXhiCYBgDb7CfMPJFWWovF1L7lahmZgB2i27b0LNLYLw5/i2EgVjIyimfB6AkB+JyzBotr3FGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79OdSyluOOWc/9W2NOPq+x1KZlZ499/oVEhgWJbNuRo=;
 b=QR6d9X2vFj32AkvxbX5KWxO5o0A6vpMhcPL4syzHkKD4jb47kIbnynrjgt/6Uvr6vX83FncrVDF95dWdiDExvhr5tGtCkuYFCtQTbSOXuVnI1DyIKDiHlNye54l4+eGu9dc2B10JzYyI5ucQLrqbYH+E6rqoSNn4xqZH4B0w5FikS+W8ZvG/B3VSrO18U1RJsUWC9ffrZ3A7ymzdWsB4qOcIGfRzwQgJHfInoM4H344yS07LFsqtvVW91WPv0BZz/9kYq/v2uuxxj1khvM1Ql/VUIRHgfWrsdkrlRH2bkr6Vuyhbx+nnWcQJsDQrXO3D10Chj3Pyc9zs7hdct/Kz/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 08:24:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 08:24:43 +0000
Message-ID: <9b7ccd9e-fca3-4a72-806f-3e99ab5ae4bd@intel.com>
Date: Tue, 29 Oct 2024 09:24:39 +0100
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <richardcochran@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
 <20241028204755.1514189-2-arkadiusz.kubalewski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241028204755.1514189-2-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB5085:EE_
X-MS-Office365-Filtering-Correlation-Id: fe759fe3-6c63-499d-ba71-08dcf7f3241c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alhBNGptbm5yNnh0NHY3TlNYVk10dlpVTHI4RlRrWnRPeFl3L2dzT2hNcXhM?=
 =?utf-8?B?SkxyQm5LQUZWaTgzcE1HbWc4cmVYV1lMSUR1dC8yL05DaDVtM1BUSFNWQnEx?=
 =?utf-8?B?L1E4Zktxc3pwOUtiVWEwNEJjN2hEay9MUE5PcmRCU3dIZE5WK2VXK1VDN0pa?=
 =?utf-8?B?TVB0YnhhSTJOUkt4Mkc0dWU5a0dYcFVkakRQL2QrRWNXYjlhRmFwTHZKclFt?=
 =?utf-8?B?WjB1ZVB6ZEhBRVU3TnZ6elo2aW1EZGlENFFWYitpZXNpdzlSbVdWc1VGcWQ4?=
 =?utf-8?B?eElRUk4rTkZZU3ZiSnRwVU4wMUZNem41ZTl4UnIzYjZZOGlKa2xHRGJrMzY2?=
 =?utf-8?B?WDJ3a0VkQTF1SXl3SndIeW1uQml1Q0VKZ2NyTk5jTXNnbk0xbElvRDVEaFky?=
 =?utf-8?B?T0czL3ZiNGM2UmpvWGpFK1FOY3BuRnFWWFZRM0ZsZXJiSjRRU3FXUXoybFhB?=
 =?utf-8?B?dEpDOGNLcHN5d2hHeFRSWWppWkNEVXUyMFVrYm9uMzJCQWEzalVWZnhQZ1pQ?=
 =?utf-8?B?ZWRHaTBzdEloRFRZVkhhZmZ6cVlvTUNFNmlNRTNkK2traWFSbXM1Qk9SZGtS?=
 =?utf-8?B?cEpWQW1Dcll0OE1qWE5TL3lvZmlJVkdNdXNaMFZGLzRhVmVVNTBiMXBGVG42?=
 =?utf-8?B?T1JIT3F6dVQzUzFEUzhyRFZMRm1iVHZ5Vk5WeGJSMTlNellKaUhpSHlSWUxw?=
 =?utf-8?B?ZlplQWpqNHNGN3lnTXhkYTg5dG5nbE5neUlCa1pOVUpWNFJVYkpsSzJmd2R6?=
 =?utf-8?B?UWpSNGs5V0V4OTlCcGVZS2RQakdzU2l2dHM0QmVOS1NVOTE1VU1KL2dyVlFJ?=
 =?utf-8?B?c04zU0QxMUdzcHhja1dnL0RXbHc3SE5HM0hQaC81cHdJdXNOWk5TS01vS21V?=
 =?utf-8?B?VDM1WFFnRjJWR1FEdXNTNXE4V2hCL3Z2S3BQSW44M3k5THdvK1h3OVY1cnh4?=
 =?utf-8?B?SUNKV0VqNGJvOUZsSm0wSGFnMC9jV2JCb2VNTC9RZlVUQkRqc2FWb2YrUU9D?=
 =?utf-8?B?UHFsWXNDV3VJYTZmS2J6VG9rN3cwREpOQUdRVDB6cTRCSHU4bHlQVEgwSkRk?=
 =?utf-8?B?eDBzOXdUbXh0MlpQVVp6VGlqamtTSmJiNU5PVGh4Zy9sUDZUR0xUQkdLYVdE?=
 =?utf-8?B?M3I0SUxUODdnSkZyaFYwZjZBekZySVN5M2hBQnNNMlpuZjRzdVhtYUt1ZVlq?=
 =?utf-8?B?blB6NCtkT1J6WmdvdGJsZk1ZV2IvYWFEVE5rZzJleGhBWWhNellLSkI2ekJC?=
 =?utf-8?B?WlJIejUwZXhLcVFteUsxZVRsQ0t3Umg3NW9DTXpWb2hEMlV2bVNGeWlodVJG?=
 =?utf-8?B?emFocDFGNVZtSmJOUHRlaUtFZHRIUk1WOGliSWg4REQydWpnMEVwb3V4emtT?=
 =?utf-8?B?RTZ0VlhQQ0gycit3MUJMMkpvSkZya1BGeVhMdE9Nbys1dFhVN3pRVXhoTlNi?=
 =?utf-8?B?bU5zZk1zblRrWmF2MGQrYU1QUkpGYXA5MUdSUXI4eEJGWGdDNmhFOC90RGdq?=
 =?utf-8?B?K0ZzL0REMTBYNnZiU1ZxZjYwZUdyeVdRZFNqTjhlRmVoSko2WFEyVjBTd28y?=
 =?utf-8?B?SzJ6RjM3dyt5dGl4aENRNDg2Ym1oYU94TmdFNW1nSk9DMDMzYis2bFNMV1NV?=
 =?utf-8?B?TDdCMUt0MUJaYXUremZWcEYrUFU1MXAyU2xGbmJFOURYUW5oYlRXK3RpVWE4?=
 =?utf-8?Q?NQusPwdlu4ZNMeAJVUlV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmZ4VFNMQ1lVaGhEMXFzQndDeldrSzMySFBEc2VZeDNteE43WlJRcHZhN1hU?=
 =?utf-8?B?MkFEcmZzeUQ1ajh0dFFzNnFwTERQY1R6d3pOalc2cUxjZ1ZLSFFzeit4MEhi?=
 =?utf-8?B?QWNYSS8zZ00xUnZZcnF6L3UxZ0RURk92L1o5UDE0Q2FWWDF3MStYc2tCUFEw?=
 =?utf-8?B?M2JPSWJFanpnRTZPb216eWhRdEF3U2xoMkR6WWUvNHd2SDg4UWxjZEpPWVVX?=
 =?utf-8?B?TXhJT0xIU1BQdVJxR1grZlcwTVJqekNsTGhOSVh1bVpoa2dGNVpzd0tqMGxM?=
 =?utf-8?B?RnFtQWk5WWR5Q1Q5b1FSUGxLUUx3QXlBenNtNm5VTldLQXR6YU1kZU5kZlNE?=
 =?utf-8?B?UlBsVGdsK3pZZ1JMakNtc3pXZWhBRWZ5dEZsQ05XVXBZQ0s2RTRwTGd4bE5q?=
 =?utf-8?B?S2FvQmU5VkljeDBVSVJmM1hwWEYxSFNRSHBOZ3BsQnI4eTltUFJoSHRCK2VN?=
 =?utf-8?B?UFkveUtRVkY4dGM5cjBXUUFmK2dwemhLZElVb3VqTWc2eUt4ZWEwaWg2Q21V?=
 =?utf-8?B?VmdlVjVXWlJOUGVxbEtyU1FjYms1Yk92YTdsaHZydCt0ZjUxWFk0ejN0VXZJ?=
 =?utf-8?B?SGJoU1JPTHBhSE05MW5ERzIwWTFONHI5ZlBIU0t2L1dXbnE5SkpoSExzMW9s?=
 =?utf-8?B?d2pJUGttM3dUUUFoaU1maDVxNVRIeDRaQXJxZVQ4QUwvRHFqZUtNL0lNMHls?=
 =?utf-8?B?OVNZay9DbDVpVkk0VWlTdWNwbkhkR0FmR3lyWE9JeDRwTTRRNCtIR0xpUkx4?=
 =?utf-8?B?amtVYmhXNjlrVEYwQUZET3lZTVJhR1NkYlNFZGQ1d0lraU9rSG5iOGV5SXdZ?=
 =?utf-8?B?NTdkWC85NGUrZEZ4NHVjV1RmRjhSVkt0ZWxwUFB5OGJCbEdIUDUyVHhWWVB2?=
 =?utf-8?B?dWFzeVprYjg2cWo2ZTBoL3JVNzhrRVV5aEt6dmhUdVlrcTlYaW1FUHpRZWN2?=
 =?utf-8?B?MGM2bTBYd2NPQzRFb2RpaStlUlFQM2FybHRFdUlyS0Noa2RoN3VETkIydlBp?=
 =?utf-8?B?UHlyOStESzI3K251T2VsTmo0Y00rYjZyaU9PUlZ2cVhoeUU3VHBDaXVJa3hh?=
 =?utf-8?B?Q3A5SDVieGdHNE9BeUt4aXdJcmMyRzV4bXNMeXdJb3pKQ2UxcThYMGFzK0lx?=
 =?utf-8?B?U1pIVy9ObjY2M1VFaEwyMVBxd1AwNHhtT0RvNHRRTStVNmpjZWkzb3FpM2dn?=
 =?utf-8?B?T3psRC9DOWlvb2dqSWRsVjNqN0JEbnlkSlVHcHlXWWRiT1dkeUlVK0ptSlZr?=
 =?utf-8?B?M0NKTTVNOUs4Ymo5cmN6N0FBbnJBR2JZUm1YUVAxS2taKzFyTm5xRDdHNDFt?=
 =?utf-8?B?VHQxUjg4RCtNWGR2Q1RpU0JXWEwwQ1YxVE5vY3dKOForVTdqbGMzdWc0SzZq?=
 =?utf-8?B?SVkzcDFGM2gxQWlkZkhhQVpzd2dHTE1jK2ZXUmFjYU1ENXV4eURTaDJtY1Iv?=
 =?utf-8?B?bmpNeTRGMk1tbHFrYks0NW1ld0pVNGR2WnlUcWJEc1JNM213YjF4U1VlWmU5?=
 =?utf-8?B?aHNoRlcvRWprKzBHQlFnOS9KNjk0WFlrYjZsY29ETUFXeFhWTStFd2FoRFAv?=
 =?utf-8?B?RWwwbVNCcHQ3K1JhV3N0RWhxNlVxejV3bVBRMVJrMnc5amt4R0lhZm5ZVHlF?=
 =?utf-8?B?b1phcERGMVhIcFlURnEwUm1wVUNST1g1cExpL3c3bUlmaTgyamxQOUtrSVF4?=
 =?utf-8?B?cFN4V1NZZXZMYVp2OXBFRXFPNUJ4MlFhMXFrOW5tdmUrV09HTUtXY05QZlpk?=
 =?utf-8?B?dHMvbHZmKzBhY0UrMWlTTmFZNUp2ZUE3dHpjcnVYcndCUWlsU2RyZUZqOEEr?=
 =?utf-8?B?Um83SlNwWUY0QmxjQlhKck1wQmVodG8rZ29oOTV0ZGQ1bHFORTNpVG1EK2FK?=
 =?utf-8?B?MU9KcllITjlPMEtFZVdaNHNYQVVmNlFZSmRacEsrL1J3b2FDYzRIc091cW01?=
 =?utf-8?B?NVNaYnJENjE2aTN5UFFzM2huRmlOSWJ3eTNpUVdiZFN0L3dFdVM5Z0c5SjFp?=
 =?utf-8?B?L0lHeGR4aFFXNW9jSGk0blRJeE9zeGJld1Q5S0JKSzRWRDBwNlBOVVFxLzlJ?=
 =?utf-8?B?MDR0aEphNlg3RzNCclZaV2M5aTM3WEUzdU90Q0ZMYmZaOXcxUXRqOE1NVlhs?=
 =?utf-8?B?US9CT1JVcnluY296RVRkL0hDNWFuSFpCUTdWbG1UcTRkTUttaW1YMW9jbUtr?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe759fe3-6c63-499d-ba71-08dcf7f3241c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 08:24:43.5615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GL3PEdwIl0SxKFtJiaY8m0/kWCrkJX7qyPEJFmSDJRHnwNJymay96P25JuwKTPIWC0onFdYvn9JBzVMZYBvSPy42wtLIIGgGBnv1FH0v9Gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730190295; x=1761726295;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vokjQBwTtjBE3MTVChtpyqOP3ZrDk8WstpULlogOCmI=;
 b=f1zWuYy596fhze9jfNOjpCeUt2pPIhLa9L6n9/pLrEZvyvEuLA2lQ/CQ
 PCtK4sqr2tR2eC14Rxe/U2Y1SCPA1zs2D345x6SO0wJiSeAAS6Dua1L5l
 XNNzULdnrRHipt6qji/OXi9BAWbGAJ0cfRUtZjHM5hJ59/nmDNp9+1apA
 2bU8l1kscoxXRzNvFjAGV3sRouy5NFNFOLm4qHqCFu7Dgjsc6DxXL1FkQ
 neUmV8UIG+tTowfpX84MAYcrAyMe662bVvZmOCq22X5VqRFhCv0H9z/ht
 i+9hCpe5vlqOWZ+I2z9hWS9UYu8gSV2LDSCte8/TDhkwOvrzvWZUN4mkR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f1zWuYy5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ptp: add control over
 HW timestamp latch point
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

On 10/28/24 21:47, Arkadiusz Kubalewski wrote:
> Currently HW support of PTP/timesync solutions in network PHY chips can be
> implemented with two different approaches, the timestamp maybe latched
> either at the beginning or after the Start of Frame Delimiter (SFD) [1].
> 
> Allow ptp device drivers to provide user with control over the HW
> timestamp latch point with ptp sysfs ABI. Provide a new file under sysfs
> ptp device (/sys/class/ptp/ptp<N>/ts_point). The file is available for the
> user, if the device driver implements at least one of newly provided
> callbacks. If the file is not provided the user shall find a PHY timestamp
> latch point within the HW vendor specification.
> 
> The file is designed for root user/group access only, as the read for
> regular user could impact performance of the ptp device.
> 
> Usage, examples:
> 
> ** Obtain current state:
> $ cat /sys/class/ptp/ptp<N>/ts_point
> Command returns enum/integer:
> * 0 - timestamp latched by PHY at the beginning of SFD,
> * 1 - timestamp latched by PHY after the SFD,
> * None - callback returns error to the user.
> 
> ** Configure timestamp latch point at the beginning of SFD:
> $ echo 0 > /sys/class/ptp/ptp<N>/ts_point
> 
> ** Configure timestamp latch point after the SFD:
> $ echo 1 > /sys/class/ptp/ptp<N>/ts_point
> 
> [1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

[...]

> diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
> index c892d22ce0a7..ea1bcca7f7f6 100644
> --- a/include/linux/ptp_clock_kernel.h
> +++ b/include/linux/ptp_clock_kernel.h
> @@ -55,6 +55,24 @@ struct ptp_system_timestamp {
>   	clockid_t clockid;
>   };
>   
> +/**
> + * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
> + *
> + * @PTP_TS_POINT_SFD: timestamp latched at the beginning of sending Start
> + *		      of Frame Delimiter (SFD)
> + * @PTP_TS_POINT_POST_SFD: timestamp latched after the end of sending Start
> + *			   of Frame Delimiter (SFD)
> + */
> +enum ptp_ts_point {
> +	PTP_TS_POINT_SFD,
> +	PTP_TS_POINT_POST_SFD,
> +
> +	/* private: */
> +	__PTP_TS_POINT_MAX
> +};
> +
> +#define PTP_TS_POINT_MAX (__PTP_TS_POINT_MAX - 1)

I would move PTP_TS_POINT_MAX into the enum


