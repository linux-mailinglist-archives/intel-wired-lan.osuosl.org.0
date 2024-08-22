Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEC395BC20
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 18:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F3B6404F4;
	Thu, 22 Aug 2024 16:41:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52jVbdtm2aB2; Thu, 22 Aug 2024 16:41:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A37744052B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724344875;
	bh=iBcjBRvtaEQJ2OcBDgjbnxafRzgRjGEC9sB7kfNNxic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DfT2xgdJ2i6Kyxc1obT/p6Z9/C8zqfTlj9TcVOyphIjEq1LAs0vUe/sbATP5FuclF
	 Mujrh3fxuoGNiXlBNLatQkdoZphdBtJOGwrL3Ck2L2NHBs4AUGE2wvYOk80NxFKMsB
	 zqdhGzuko049GdJ1dNcuTeupAN9UwFP39gcbr3iQfeowsZBwBg25SHs98yFu5DmtU+
	 GI4SvoisCLUeP8ZnyQmQpSNScJzJBe+ox+PUbk6+HMUYsAts0fnFlKj9+OiRURuJz7
	 Ckb7IZct5SD2OJY8R6DxVbYuDrm3DOAMe00IU2ezekEyBD+NZ2mcNTfrASSNosFTKf
	 +erOeDG9mzevQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A37744052B;
	Thu, 22 Aug 2024 16:41:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D03C61BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9B4660B4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dym8AtGQj6f7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 16:41:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38BCB60676
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38BCB60676
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38BCB60676
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:41:09 +0000 (UTC)
X-CSE-ConnectionGUID: twxwzPkMRmO4R1tW7J36zQ==
X-CSE-MsgGUID: Gg9jHhbTRz2/114AbZzAiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34156462"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="34156462"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:41:08 -0700
X-CSE-ConnectionGUID: 5Gd9FLnKRyubDOaTL2sk2w==
X-CSE-MsgGUID: d7VanNZGRGiQGOllFuaQYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="62048922"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 09:41:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:41:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:41:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 09:41:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:41:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wAamBhlpYmj00cu0r+oaDjKOtOSanz4RuPnXRRL+vkbNYLOAg/Vh7CbcjsUnEj13kJjj5WmSowZTceOPt853PMJJx6vu7ySwMyBIqrRV71OaUH6tBDKZhCGY59/Tw02rkt668Htyack0b+wSxxifuU4CIG1tM4eMMK7oYQ65n889o7AojqTFD1y7SvDHyOnOV/p9bPzMByR/sSuqEd4tKLf18N8bclTq6iPQiyz7mPwZcoztS0qBMXHv0b+btc9f1KbzroUv+galQa7p2N2siLYYfkZfxq5ugPf3QVGr6uobYUhLhYQ4zbgnlB3WQ/FSMlQKU8XHEUuULCLgR3t8/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBcjBRvtaEQJ2OcBDgjbnxafRzgRjGEC9sB7kfNNxic=;
 b=zFfDxcQiTvN8DJNXJAvT4RCCx/YtKTxO15tjmBF3PiPiWveJJZ4mRJqS8v4EY6wJ07CQHv8rj/tQd/pgg7gVD9/FJBKJcOslj+X+0NkkHKyk9+WY345OuoFubIyjw6CZgW+11prPCyNDScOYO2txpgRLs7CN7EttaUOsE/vkmoFMpzV8riwNn7o9BrWwlCQx+qed5iRKQd0Q+Q8dVk3BFe88Z2566+z0CSz0bHyXy0B2AGnpe/UBadZ+fwrIrFtKiYSQn9EIhSmlHJBvcmTx46+VbkxjQoY45st2mkfc1cH4GKuRWkd9Sa8iktGTgyPZz/wrVyU5l46a3BvEBSkfbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 16:41:01 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 16:41:01 +0000
Message-ID: <77dc8844-3f0e-4cf2-b161-1f789d3aa8d0@intel.com>
Date: Thu, 22 Aug 2024 18:40:56 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-12-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-12-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0109.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: 82af05f0-c46b-42cb-4650-08dcc2c934d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXQxd0FTc3VwN0ZnYWM1ZlFuNUp1dnNvK0plbHlQNE9IVW1lTlMydDZ5dGYz?=
 =?utf-8?B?enFZU2o3UTgxVFNUb3g2ektxZWJIRGJTRHdmWnJzOUJ2ZndqdmpOemlmR2tv?=
 =?utf-8?B?VU9ZbWRNUzhsTnoxb3lrUjlQbnBveVJNTXh3VjdIemdTdjlQYllvVmo2NGlM?=
 =?utf-8?B?Q1dxVWVpUElJbzhXc2FqMFY4d2Z1dytKdi8vMUxwVW9tWnVkWm5CU2VVbk54?=
 =?utf-8?B?VXdhYnlFd2J5eE5zb25HRjFDT210RlR6eW1TSlFZNFJTM056VkhOZ0x6eHFw?=
 =?utf-8?B?cDM5WEF5d0V2cEwwYUNyejVkMVhtRUFDamkwVitHOWRzdHhkT0xRakdIMERi?=
 =?utf-8?B?TDQxcXNHSkFrZVZEeE0rWlN3anFoYWVabXJWQTJwRU1sZ0pHalBzVUhCNGJw?=
 =?utf-8?B?aU5wdFYzRXZtT3dVS1Z2M2VzUkFpcEgvdW9JbGNOR013eDlTdms3bFJNZ0VY?=
 =?utf-8?B?SVhTRm9qakx3clMrbDdJY2RrKzdkMVA5NzFweDNoNEdlSk5uT0t0L2l1MVFE?=
 =?utf-8?B?NElDcVVSZk85bGhGdUZ4aFdzdjM4K2pRL3ZVSUowbjBqMlpjc3pUM29LamFl?=
 =?utf-8?B?bTRGK05EUmdnejRFRFF4STZNQzRDRExpakJNMWJrQkJzTllodDZDdmlXM0s2?=
 =?utf-8?B?dzdQZm9hcHJzZlhjQ0MwK0M5MFVJcjhTSnArWWxGcStVS3F2ODFscjA3TVBk?=
 =?utf-8?B?dnpjOGx3Q0srTjFYOWJ6bmR5Q3RVdVJMaWszRjJCcUsvZ0Z4aVh3ckZnTkhl?=
 =?utf-8?B?UGc2d2NwSFdMNmxYNG95U05wUU96eFZsUFpBMzFwTjl6SDZ0R2FWc1ZpYTlP?=
 =?utf-8?B?cmR2dC9sNlRHa0F5dDJzUjk3SnV4d05GOXlYRERWaXJDSkdFTGg1UE1jWGpZ?=
 =?utf-8?B?dkwzcDR0eklwTE1oT29tbEI2ajcrM3NmVnFsM0hQSytlYTZ1SGRxT25DR1Jt?=
 =?utf-8?B?VjIrV2drYlM0NWZDYkZ0RW1qS2pVUnhUTi82UkQranYrT282b3VLRDg0MVI0?=
 =?utf-8?B?d1dZWVFyRTdZcnVXL1hBRHZ4NFo4Z1ZhZWRFcTJVcER6alRKeVhaNHhjSnFH?=
 =?utf-8?B?ZjFxRkhrVjdSbG9OeTJrT3hkUU9yeVhla1pOUWgxRHlyVU53UUNZMU4yd1lq?=
 =?utf-8?B?YkpRNmRjRGJkNHFwanN2V09mUFlkbTU5d3V1eEZyVzlwc2YxWFB6WjlWOEg2?=
 =?utf-8?B?OGZvSUJyWmhxYjZQeGZNaDZkSFhGRzdHVElDVDFSekxUMS9xbmFaR2ZIZW9X?=
 =?utf-8?B?d01Ic0VPTWVjb28xNzkvT1ZsMC9IRXh0QkV1bXBsdW5LMVNleWppOFlBeitl?=
 =?utf-8?B?OVNnVXFTajdYT2RNbEV4WjlJOGJSc244VWlkVkVZeHNiQlVOVUg5Yk9mSktC?=
 =?utf-8?B?Ti9iNDVuQTVZOU9Kbkwwak4zRy9MZ2N0S0ZQL2lpcnJSMXM3WXp5TXFrVDVP?=
 =?utf-8?B?eTFQcGNpSDZIVDkxdFlkTHpoUkxIanBYQzc5eXRhZWRWZlpWQnh6U1VXOWpB?=
 =?utf-8?B?UW5GaWRoWGZPUGE0S0RkNks5OXk3Tmw0UWE5Z2dFdEVDWnMwSGN3TWl1NGlv?=
 =?utf-8?B?c0VOV3ZjRThWVkdGbWlSZm9WY255dS94dzNkdkpoMTJ4U2tGNitUeXIrZUJ2?=
 =?utf-8?B?cktxcWdHS0lVZzhtdVpBOWE4WkxLZjFxWkFGQjFhRFE4Rm1NM3R6OVFySm9v?=
 =?utf-8?B?amJhMFhPSGFtZXFNRHF6eE9YL2FadG9vUkhhd3NvVFVwUGgrYTJ4Y2sycExx?=
 =?utf-8?B?K05lRTFtS0pUMlE4UWliYzZGQzEyTzgzZjNIT3IzUWt1UjNlbmpNbVBONkRl?=
 =?utf-8?B?QjllK3VRSE54a2N0VkJXdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWlwR0M1UTNBYlFCVFAwWFdjbi9IMkc5OWlLY3dhNmpjK1FLeW1tK2JQbzVm?=
 =?utf-8?B?MERHT1dQd2pVamIyZXd2dWlnM21sUENUUkYwU25DQ0pVOWhiYlhDclRZYVZN?=
 =?utf-8?B?Z1JkYnU0eGJBcE5Fd3hxKzVqZG5aU09pNUFJM0VpS1BWTXFxY1ZnS1VrQkdR?=
 =?utf-8?B?YlNDdVRwRUQyOTE2YzQ4aGNvcy9GNVE1SDh0Z2laSy8zWFUzVjZINi9VUWdN?=
 =?utf-8?B?czMzYi9lL0JPU2pRNU9DUXhmcVJ3d25RNE1LdGMwVjMva3pRY2t2ZE4vYWZK?=
 =?utf-8?B?Y0Q5WVlLQnZSeGlKVXVzUHN0UTRZcXlnVFZsNHh3RFRsMFAvWThRMkt1WCtp?=
 =?utf-8?B?Nkh1TVpyNko2Z0U2Qi9NM0ROa3RXdXlTa0Fac0NKc3g4aUx0M1VCNmhGR3Zm?=
 =?utf-8?B?T3FpN3kzT1JzKzFiY2tuM21wZ05kdkJJVjRHbkVmVWp0cnB4YU9ZTTRjamFj?=
 =?utf-8?B?Qkh3T0hEdWJlWGJta0xZL0JrbU14Mk1jMVlFRWdrNUM1VGhzOU9hek15S0Yx?=
 =?utf-8?B?M0Z2Qm9aYit3Q0R3SzFFd1g3MFJlUUhNM0ZxZnd3cC9DbUEvTDdCWFJGbzNz?=
 =?utf-8?B?cWFKS2tGMVNIVjdYVVhVY1VzMjhpTm8rdndRNUp2bmNMZCsvY3pHSjFmbVB0?=
 =?utf-8?B?ejU5NGtaU0FKbjlxYUQ3aGFWV00vcmFXcjhPRlhoYnZNVjNEN3ZaNnZJMkpn?=
 =?utf-8?B?cldiTzJSc0llUHdJTTd3S1NPR0hYT2Z5TE9oeDlkNWV1SjdIS2podGZhbU43?=
 =?utf-8?B?dFAvTGxWWFpmMTRQVlo3SGxkVFNwMkRRQ0lTcEx3blNveVpYb2FpYkM1RUZ5?=
 =?utf-8?B?bnp4UXkwSmwvRHFZZGZQaFZOZEJtRmFCZEdOWFBlcWtLVEpTcVBuekdVNSs2?=
 =?utf-8?B?YXV1dGgvWTdSTkZrM0VFMm53ZncyQTdUQ0ZCMThNMkY0dHpQcnE4aXY3dFRP?=
 =?utf-8?B?UUFiT0pvNjl0dDd0d1IrY0ZvM3NRZzk0WkhELzNTQllaUFpLUVZrUXRTU3ps?=
 =?utf-8?B?d25EaitvN001aXNsZmRHSVhuWWhYWmhkNWgzc0hJdXR2dFNaY2sxYjIwY1VY?=
 =?utf-8?B?MjE3dnZRRXArYWVIREhzR0MxSzdzVGR1MTZiaTd6bUZ0Mks1aStzVHFDRTAw?=
 =?utf-8?B?Qm16bTdudlR5bmhPWmpxZWJwdENqcStLRzR0RHRPS0dXd01wLzkxM2l3R1N5?=
 =?utf-8?B?MzJYdkM4bS8yMGh3VUQ2V2ZpOU00UVlGUWo1SEhoYXZjQnNYU1d5a3ZoUnR6?=
 =?utf-8?B?OCtwSjFLOXJnY1FOR01DSFJqeHJUd3Jic3E4Mm1wQTZROUtIRk1FdE5teDBF?=
 =?utf-8?B?Z3ZUQTBTYmtqQy9wV2dmeXhWelZRcXJZcVZpczVZVytMOHdXNlorbUpEY3E4?=
 =?utf-8?B?ZUx3SGRYa0ZHZnFLb0czUUh2OEFzUmNKUUtqZDFZV2c1RUZsNFR0Q3BRaWZE?=
 =?utf-8?B?aTJ5WlA0cmZ0YjE1RVkrc2xwNkJhTHIrZDM4SmczcVl2M3ZDSmVQMXJvWEV4?=
 =?utf-8?B?MDE4ckNqQ3dFMnRwTWl1Z2tJc0s5Vk81K2dnNEt0aUdJU2pkU2dZbjlKTGtw?=
 =?utf-8?B?dVZIbmEyTWVLR05NbkFJUjRlUVhmOWpXeG1kSUsxSGtDZit3dmQyN2E0ZjNj?=
 =?utf-8?B?U2w3VG5YYTBhcnpXbm5IdXdBbnBRQmtxUWRLZm9qUGEwVGxsNit3cGxmK0FU?=
 =?utf-8?B?cjBFTEVQbHN0UTRSUHJybFZiNElERi9sK0FhT204ZlEzajJJR1VHWWZqQkFu?=
 =?utf-8?B?dVpyck5KbEZ1Y0JVSUYrdkloT05ieFJRTHFWdE1vdUdFZ3BVUSt5RHJ5enFS?=
 =?utf-8?B?cFF1SlpqUk5mKytlVGV6M3N2QlE0SlVySCtZMFQvWHlrV3REZkw0WnMzTktD?=
 =?utf-8?B?eVg3U3M5YzU0TTRqdGxBbCtwRm05QlFjbHhnYlVBQkZFZTREQVJwS2V2dHov?=
 =?utf-8?B?Wm5UcVBHR3oxU0hYZnozSGMzV3J2WVVBZUpsZWxxbHc5WXJEeEkvNm83UjdR?=
 =?utf-8?B?WFBBZDQyK1I4YjZwTUhkUzFqL1g0eURFRDhBWjVjZlo3MXAxWjhuMVU1Yjli?=
 =?utf-8?B?NjlWQjRnSDVTNWZoM3Jadk1xN2VibDhBSXovNnFLYW52NkRkYXdrc215enR6?=
 =?utf-8?B?eisvcTYrOUNnUjVJRUcxZ2FkNmI2TTdwK1pVRlFpZGVWemY3QldQNTF6NE1U?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82af05f0-c46b-42cb-4650-08dcc2c934d8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 16:41:01.1730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeaddARKNa3AXW8VyR6/SwIb71D9FnGTy64PZmvRP15XEZj2P3TMNe290qR2cE7dfwfAl6xruD+xcs51+r71VxKfXWCKC7g6UL1koolx27c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724344872; x=1755880872;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xPqOU+q+oh3cB4kSG/xgrypgRIezwEohLmAVHLqbOs4=;
 b=m4CgEfxdTCwhtzwrSd4L8ymUGEoxkV0zx4y+WniSLIjINEsLECkEx9Ni
 O4m3KAbYgmKLlOoGeFJtp6a9VzIUHRsh6Q0WtO2LfENLkKWPqH86QxjBm
 b85ofRYuXMW0Ed22gagJluqtFeu/dw65DSUKz1ZH4z6JKHCB9d9nu0TbK
 gKBncnrm8PrrYqejXY38hAEUm+NtAC7vUdVHxM+iSdf6wYCOO1cFrC+4X
 Kj+LwumhpIgBZdCkDJNNcRLrIhIOaO9dqaEEYUQAPR7JgkRh6HM7yb+F/
 Msmw15WlSAurqHMMgJCLg3ZRksGHiKG3K5H4Yb5rzkRfxv2lSleJ37Kvi
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m4CgEfxd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 11/14] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:36 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.

[...]

> +static struct libeth_rx_csum
> +iavf_legacy_rx_csum(const struct iavf_vsi *vsi,
> +		    const struct iavf_rx_desc *rx_desc,
> +		    const struct libeth_rx_pt decoded)
> +{
> +	struct libeth_rx_csum csum_bits;
> +	u64 qw1 = le64_to_cpu(rx_desc->qw1);

Oops, RCT broke here.

> +
> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> +		return csum_bits;
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RXD_LEGACY_IPE_M, qw1);
> +	csum_bits.eipe = FIELD_GET(IAVF_RXD_LEGACY_EIPE_M, qw1);
> +	csum_bits.l4e = FIELD_GET(IAVF_RXD_LEGACY_L4E_M, qw1);
> +	csum_bits.pprs = FIELD_GET(IAVF_RXD_LEGACY_PPRS_M, qw1);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RXD_LEGACY_L3L4P_M, qw1);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RXD_LEGACY_IPV6EXADD_M, qw1);
> +
> +	return csum_bits;
> +}

[...]

> +static struct libeth_rqe_info
> +iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
> +			      const struct iavf_rx_desc *rx_desc, u32 *ptype)
> +{
> +	struct libeth_rqe_info fields = {};
> +	u64 qw0 = le64_to_cpu(rx_desc->qw0);
> +	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> +	u64 qw2 = le64_to_cpu(rx_desc->qw2);
> +	bool l2tag1p;
> +	bool l2tag2p;
> +
> +	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
> +	fields.len = FIELD_GET(IAVF_RXD_LEGACY_LENGTH_M, qw1);

And here you can do

	if (!fields.eop)
		return;

because the rest of the fields are not read for non-EOP descriptors.

> +	fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
> +	*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
> +
> +	l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
> +	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M, qw0);
> +
> +	l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
> +	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M, qw2);

So vlan_tag can be set by both these ifs. They should be mutually
exclusive I think, via an `else`? Which of them has a higher priority?
can rx_ring->flags contain both these bits? I think no? Then it should be

	if (flags & L2TAG1) {
		l2tag1p = FIELD_GET(L2TAG1P_M);
		if (l2tag1p)
			vlan_tag = FIELD_GET(...
	} else if (flags & L2TAG2_2) {
		l2tag2p = FIELD_GET(L2TAG2P_M);
		if (l2tag2p)
			vlan_tag = FIELD_GET(...
	}

> +
> +	return fields;

I think you unconditionally initialize all the fields except vlan_tag,
why `= { }` then?
Just don't initialize it with empty struct and set .vlan_tag to 0 right
before `l2tag1p = ...`.

> +}
> +
> +/**
> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @ptype: pointer that will store packet type
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + *
> + * Return: fields extracted from the Rx descriptor.
> + */
> +static struct libeth_rqe_info
> +iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
> +			    const struct iavf_rx_desc *rx_desc, u32 *ptype)
> +{
> +	struct libeth_rqe_info fields = {};
> +	u64 qw0 = le64_to_cpu(rx_desc->qw0);
> +	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> +	u64 qw2 = le64_to_cpu(rx_desc->qw2);
> +	bool l2tag1p, l2tag2p;
> +
> +	fields.len = FIELD_GET(IAVF_RXD_FLEX_PKT_LEN_M, qw0);
> +	fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
> +	fields.eop = FIELD_GET(IAVF_RXD_FLEX_EOP_M, qw1);
> +	*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
> +
> +	l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
> +	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M, qw1);
> +
> +	l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
> +	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M, qw2);
> +
> +	return fields;

Same for the whole function as above.

> +}
> +
> +static struct libeth_rqe_info
> +iavf_extract_rx_fields(const struct iavf_ring *rx_ring,
> +		       const struct iavf_rx_desc *rx_desc, u32 *ptype)
> +{
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
> +		return iavf_extract_legacy_rx_fields(rx_ring, rx_desc, ptype);
> +	else
> +		return iavf_extract_flex_rx_fields(rx_ring, rx_desc, ptype);
> +}
> +
>  /**
>   * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
>   * @rx_ring: rx descriptor ring to transact packets on
> @@ -1141,13 +1315,10 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	bool failure = false;
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
> +		struct libeth_rqe_info fields = {};

Also redundant init since you assign it later unconditionally.

>  		struct libeth_fqe *rx_buffer;
>  		struct iavf_rx_desc *rx_desc;
> -		u16 ext_status = 0;
> -		unsigned int size;
> -		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> -		u64 qword;
> +		u32 ptype;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
>  		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index c1a4506fbaba..7c94e4c7f544 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -191,45 +191,140 @@ struct iavf_rx_desc {
>  #define IAVF_RXD_LEGACY_RSS_M			GENMASK_ULL(63, 32)
>  /* Stripped L2 Tag from the receive packet. */
>  #define IAVF_RXD_LEGACY_L2TAG1_M		GENMASK_ULL(33, 16)
> +/* Packet type. */
> +#define IAVF_RXD_FLEX_PTYPE_M			GENMASK_ULL(25, 16)
> +/* Packet length. */
> +#define IAVF_RXD_FLEX_PKT_LEN_M			GENMASK_ULL(45, 32)
>  
>  	aligned_le64 qw1;
> +/* Status field stores information about end of packet, descriptor done etc. */
> +#define IAVF_RXD_LEGACY_STATUS_M		GENMASK(18, 0)
> +/* Descriptor done indication flag. */
> +#define IAVF_RXD_LEGACY_DD_M			BIT(0)
> +/* End of packet. Set to 1 if this descriptor is the last one of the packet. */
> +#define IAVF_RXD_LEGACY_EOP_M			BIT(1)
> +/* L2 TAG 1 presence indication. */
> +#define IAVF_RXD_LEGACY_L2TAG1P_M		BIT(2)
> +/* Detectable L3 and L4 integrity check is processed by the HW. */
> +#define IAVF_RXD_LEGACY_L3L4P_M			BIT(3)
> +/* The Ethernet CRC is posted with data to the host buffer. */
> +#define IAVF_RXD_LEGACY_CRCP_M			BIT(4)
> +/* Note: Bit 8 is reserved in X710 and XL710. */
> +#define IAVF_RXD_LEGACY_EXT_UDP_0_M		BIT(8)
> +/* Flow director filter match indication. */
> +#define IAVF_RXD_LEGACY_FLM_M			BIT(11)
> +/* Loop back indication means that the packet is originated from this system. */
> +#define IAVF_RXD_LEGACY_LPBK_M			BIT(14)
> +/* Set when an IPv6 packet contains a Destination Options Header or a Routing
> + * Header
> + */
> +#define IAVF_RXD_LEGACY_IPV6EXADD_M		BIT(15)
> +/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> + * UDP header.
> + */
> +#define IAVF_RXD_LEGACY_INT_UDP_0_M		BIT(18)
> +/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error. */
> +#define IAVF_RXD_LEGACY_RXE_M			BIT(19)
> +/* Set by the Rx data processing unit if it could not complete properly
> + * the packet processing.
> + */
> +#define IAVF_RXD_LEGACY_RECIPE_M		BIT(20)
> +/* Header Buffer overflow. */
> +#define IAVF_RXD_LEGACY_HBO_M			BIT(21)
> +/* Checksum reports:
> + * - IPE: IP checksum error
> + * - L4E: L4 integrity error
> + * - EIPE: External IP header (tunneled packets)
> + */
> +#define IAVF_RXD_LEGACY_IPE_M			BIT(22)
> +#define IAVF_RXD_LEGACY_L4E_M			BIT(23)
> +#define IAVF_RXD_LEGACY_EIPE_M			BIT(24)
> +/* Oversize packet error. */
> +#define IAVF_RXD_LEGACY_OVERSIZE_M		BIT(25)
> +/* Set for packets that skip checksum calculation in pre-parser. */
> +#define IAVF_RXD_LEGACY_PPRS_M			BIT(26)
> +/* Destination Address type (unicast/multicast/broadcast/mirrored packet). */
> +#define IAVF_RXD_LEGACY_UMBCAST_M		GENMASK_ULL(10, 9)
> +/* Indicates the content in the Filter Status field . */
> +#define IAVF_RXD_LEGACY_FLTSTAT_M		GENMASK_ULL(13, 12)
> +/* Reserved. */
> +#define IAVF_RXD_LEGACY_RESERVED_M		GENMASK_ULL(17, 16)
> +/* Encoded errors of IP packets */
> +#define IAVF_RXD_LEGACY_L3L4E_M			GENMASK_ULL(24, 22)
> +/* Packet type. */
> +#define IAVF_RXD_LEGACY_PTYPE_M			GENMASK_ULL(37, 30)
> +/* Packet length. */
> +#define IAVF_RXD_LEGACY_LENGTH_M		GENMASK_ULL(51, 38)
> +/* Descriptor done indication flag. */
> +#define IAVF_RXD_FLEX_DD_M			BIT(0)
> +/* End of packet. Set to 1 if this descriptor is the last one of the packet. */
> +#define IAVF_RXD_FLEX_EOP_M			BIT(1)
> +/* Header Buffer overflow. */
> +#define IAVF_RXD_FLEX_HBO_M			BIT(2)
> +/* Detectable L3 and L4 integrity check is processed by the HW. */
> +#define IAVF_RXD_FLEX_L3L4P_M			BIT(3)
> +/* Checksum reports:
> + * - IPE: IP checksum error
> + * - L4E: L4 integrity error
> + * - EIPE: External IP header (tunneled packets)
> + * - EUDPE: External UDP checksum error (tunneled packets)
> + */
> +#define IAVF_RXD_FLEX_XSUM_IPE_M		BIT(4)
> +#define IAVF_RXD_FLEX_XSUM_L4E_M		BIT(5)
> +#define IAVF_RXD_FLEX_XSUM_EIPE_M		BIT(6)
> +#define IAVF_RXD_FLEX_XSUM_EUDPE_M		BIT(7)
> +/* Loop back indication means that the packet is originated from this system. */
> +#define IAVF_RXD_FLEX_LPBK_M			BIT(8)
> +/* Set when an IPv6 packet contains a Destination Options Header or a Routing
> + * Header
> + */
> +#define IAVF_RXD_FLEX_IPV6EXADD_M		BIT(9)
> +/* Receive MAC Errors: CRC; Alignment; Oversize; Undersizes; Length error. */
> +#define IAVF_RXD_FLEX_RXE_M			BIT(10)
> +/* The Ethernet CRC is posted with data to the host buffer. */
> +#define IAVF_RXD_FLEX_CRCP_M			BIT(11)
> +/* Indicates that the RSS/HASH result is valid. */
> +#define IAVF_RXD_FLEX_RSS_VALID_M		BIT(12)
> +/* L2 TAG 1 presence indication. */
> +#define IAVF_RXD_FLEX_L2TAG1P_M			BIT(13)
> +/* Indicates that extracted data from the packet is valid in specific Metadata
> + * Container
> + */
> +#define IAVF_RXD_FLEX_XTRMD0_VALID_M		BIT(14)
> +#define IAVF_RXD_FLEX_XTRMD1_VALID_M		BIT(15)
> +/* Stripped L2 Tag from the receive packet. */
> +#define IAVF_RXD_FLEX_L2TAG1_M			GENMASK_ULL(31, 16)
> +/* The hash signature (RSS). */
> +#define IAVF_RXD_FLEX_RSS_HASH_M		GENMASK_ULL(63, 32)
> +
>  	aligned_le64 qw2;
>  /* Extracted second word of the L2 Tag 2. */
>  #define IAVF_RXD_LEGACY_L2TAG2_2_M		GENMASK_ULL(63, 48)
>  /* Extended status bits. */
>  #define IAVF_RXD_LEGACY_EXT_STATUS_M		GENMASK_ULL(11, 0)
> +/* L2 Tag 2 Presence. */
> +#define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
> +/* Stripped L2 Tag from the receive packet. */
> +#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
> +/* Stripped L2 Tag from the receive packet. */
> +#define IAVF_RXD_LEGACY_L2TAG2_1_M		GENMASK_ULL(47, 32)
> +/* Stripped L2 Tag from the receive packet. */
> +#define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
> +/* The packet is a UDP tunneled packet. */
> +#define IAVF_RXD_FLEX_NAT_M			BIT(4)
> +/* L2 Tag 2 Presence. */
> +#define IAVF_RXD_FLEX_L2TAG2P_M			BIT(11)
> +/* Indicates that extracted data from the packet is valid in specific Metadata
> + * Container

Multi-line comments should end with a period ('.'), oneline shouldn't.

> + */
> +#define IAVF_RXD_FLEX_XTRMD2_VALID_M		BIT(12)
> +#define IAVF_RXD_FLEX_XTRMD3_VALID_M		BIT(13)
> +#define IAVF_RXD_FLEX_XTRMD4_VALID_M		BIT(14)
> +#define IAVF_RXD_FLEX_XTRMD5_VALID_M		BIT(15)

I don't think you use every definition from that structure. Please leave
only the used ones.

>  
>  	aligned_le64 qw3;
>  } __aligned(4 * sizeof(__le64));
>  
> -enum iavf_rx_desc_status_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_STATUS_DD_SHIFT		= 0,
> -	IAVF_RX_DESC_STATUS_EOF_SHIFT		= 1,
> -	IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT	= 2,
> -	IAVF_RX_DESC_STATUS_L3L4P_SHIFT		= 3,
> -	IAVF_RX_DESC_STATUS_CRCP_SHIFT		= 4,
> -	IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT	= 5, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_TSYNVALID_SHIFT	= 7,
> -	/* Note: Bit 8 is reserved in X710 and XL710 */
> -	IAVF_RX_DESC_STATUS_EXT_UDP_0_SHIFT	= 8,
> -	IAVF_RX_DESC_STATUS_UMBCAST_SHIFT	= 9, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_FLM_SHIFT		= 11,
> -	IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT	= 12, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_LPBK_SHIFT		= 14,
> -	IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT	= 15,
> -	IAVF_RX_DESC_STATUS_RESERVED_SHIFT	= 16, /* 2 BITS */
> -	/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> -	 * UDP header
> -	 */
> -	IAVF_RX_DESC_STATUS_INT_UDP_0_SHIFT	= 18,
> -	IAVF_RX_DESC_STATUS_LAST /* this entry must be last!!! */
> -};
> -
> -#define IAVF_RXD_QW1_STATUS_SHIFT	0
> -#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
> -					 << IAVF_RXD_QW1_STATUS_SHIFT)
> -
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
>  					    IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT)
> @@ -245,22 +340,6 @@ enum iavf_rx_desc_fltstat_values {
>  	IAVF_RX_DESC_FLTSTAT_RSS_HASH	= 3,
>  };
>  
> -#define IAVF_RXD_QW1_ERROR_SHIFT	19
> -#define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
> -
> -enum iavf_rx_desc_error_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_ERROR_RXE_SHIFT		= 0,
> -	IAVF_RX_DESC_ERROR_RECIPE_SHIFT		= 1,
> -	IAVF_RX_DESC_ERROR_HBO_SHIFT		= 2,
> -	IAVF_RX_DESC_ERROR_L3L4E_SHIFT		= 3, /* 3 BITS */
> -	IAVF_RX_DESC_ERROR_IPE_SHIFT		= 3,
> -	IAVF_RX_DESC_ERROR_L4E_SHIFT		= 4,
> -	IAVF_RX_DESC_ERROR_EIPE_SHIFT		= 5,
> -	IAVF_RX_DESC_ERROR_OVERSIZE_SHIFT	= 6,
> -	IAVF_RX_DESC_ERROR_PPRS_SHIFT		= 7
> -};
> -
>  enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
>  	IAVF_RX_DESC_ERROR_L3L4E_PROT		= 1,
> @@ -269,13 +348,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  	IAVF_RX_DESC_ERROR_L3L4E_DMAC_WARN	= 4
>  };
>  
> -#define IAVF_RXD_QW1_PTYPE_SHIFT	30
> -#define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
> -
> -#define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
> -#define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
> -					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
> -
>  #define IAVF_RXD_QW1_LENGTH_HBUF_SHIFT	52
>  #define IAVF_RXD_QW1_LENGTH_HBUF_MASK	(0x7FFULL << \
>  					 IAVF_RXD_QW1_LENGTH_HBUF_SHIFT)

Thanks,
Olek
