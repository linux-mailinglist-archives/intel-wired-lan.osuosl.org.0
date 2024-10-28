Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0359B2C14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 10:55:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A91108117F;
	Mon, 28 Oct 2024 09:55:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1Zw2yUZBW4q; Mon, 28 Oct 2024 09:55:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68072811AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730109318;
	bh=7YTqEH4q1HM15eQ3stoblAuE4FbD9LPXJu34K/WaAP0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8LWqwFr6xDT9jx7gKheNP/Sg0mfupzbcpmxIXWeOBPvYp4jCihVpwiPBsFpEkrVAe
	 hnwOURCVR9Aeyqh0jSirjDMsUoBo5o7YmQauDCTZpMPoQsorfkXRSDrT1DA1BEga/6
	 e+sFU4M8YDKrQ3HCYNda1kr+w06bEoNQLNzhPM8k7+fSEK1ZsT8O+TCvYAxeG7bt5C
	 wXAkt7d/jLXfOkI94a6KKH47h2/yyrxRh5NjvRZagqSsh2EweZB03slKEhwBFa8o02
	 plApS7vBu7AZ5ahnw3F004xMiRIlIKcxa9kiAU9bXtyategcm/BqITfAVM6aWmnyHd
	 cdRKKX453yDsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68072811AF;
	Mon, 28 Oct 2024 09:55:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 99D45112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90F38408A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WH_7vxjpY5LF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 09:55:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3DCA4023A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3DCA4023A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3DCA4023A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 09:55:14 +0000 (UTC)
X-CSE-ConnectionGUID: 5+RQCbhQQDKB4oU9lEZTpA==
X-CSE-MsgGUID: cjwUph9BQe2EfNv32tDIjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="33494823"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="33494823"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 02:55:14 -0700
X-CSE-ConnectionGUID: rYAiW8nNRuutupTr7b3Djw==
X-CSE-MsgGUID: V9cOXkcoT9iJefNm2vhvnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81473387"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 02:55:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 02:54:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 02:54:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 02:54:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcUlftPswGVH5SYT7a94ys9ReET4KCsavii1miHqCw9FFdvwkHzdqo8sD2N2ZjG+wGKjsbFSpzyMiR5vMi31LHRaHPH1OcOrrmBEGfxq+/vYKcY8C8B/Cl+dZftx2xg8tTjnEjH9envt1RVaEjLJyk7RZnmXXQCoJbS9b/EMPxhgayDyU7/Xpif8WugC+M4v/qchGHs/MBmOBsjJ+rQQdULXegqtN6uyivCcgNjmAyd8kWdOeUhVEtJ8/6IPaG55zN60OvRhDR/OpFjTBnutScZvc061e2pWo4Y8dnwYwLMO0gEUp9HVlG/6/gjt4iE7LjuuEGVjtWt1ULacY8tD5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YTqEH4q1HM15eQ3stoblAuE4FbD9LPXJu34K/WaAP0=;
 b=h0fBoFjYNzW4yAUI4sPuReTrfGOu7EVUeuhLuT9JAuqQedrFdrTSpudAFt2dbU1N9v4ar6vK264QnngAQX3w1Kpr5RvRctCj8yatc8FIhPdJRcG1IPv7DQ/zlpPQHlqeNvmtvBCc2K6lKjjpm3B8Adua4PUGkby03c/Gdn2Nbs3A8uAWtYLUp3VTg1fqsHx8DVbIdpF/k4LAFCsqFx2L9XLYiAYR6KjB1qZFkpMhOlW6otgMahYJsO4OMLRhMkBEWVZX64MES8J1yhM+zALuvwtyYWlLYi1PBwbRPS0uwEQBPqZBNZWLIMamWXTpi3TedUMqJLtk0zokhH9AoXgwTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7679.namprd11.prod.outlook.com (2603:10b6:208:3f1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 09:54:39 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 09:54:39 +0000
Message-ID: <ca4f7990-16c4-42ef-b0ae-12e64a100f5e@intel.com>
Date: Mon, 28 Oct 2024 10:54:33 +0100
User-Agent: Mozilla Thunderbird
To: R Sundar <prosunofficial@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20241027141907.503946-1-prosunofficial@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241027141907.503946-1-prosunofficial@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::6) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7679:EE_
X-MS-Office365-Filtering-Correlation-Id: 02f4ace3-a2c2-4b9c-975d-08dcf73689d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2JzQ1dJdk1NZU9Ea0M3T1lqWjRqeFoxTldhWDdqMXBLTDVHbUViRVM0RzVh?=
 =?utf-8?B?Qy82MFlUa2JOV0sxRnlxMFg0QkNiY3huRnBzcGM3amszZ2F1Z3huTmtXOU9z?=
 =?utf-8?B?cnR2bTIrQXJCakNWd2xobUpnbWNWeG8vbmNueWhDWjRMeEQxdFgyLzhsN0RU?=
 =?utf-8?B?dzM4NVJWVnZhUklhWHNpVHdhQyt1ek5BVC9oRnlGcVhHTFduaEIxVkNBM3Av?=
 =?utf-8?B?ZE1QK21kWGM1c0hkUFRNc0dqL3dmaTZNand3Z0lGWHY5eWhVbitJTkxOM3hU?=
 =?utf-8?B?L1k5NnVMSnAwcC9VLzFSZWRJSURzQjZ3bjRhWFhsS3IycTBsVWZ2alN5N1BK?=
 =?utf-8?B?b29YenJIcEpRbzRpaWZQdDhneDNWLzUra0xOUFp5MWorQmEyUW9NOEpnaW1H?=
 =?utf-8?B?aWVCZlRqZTVRb3l3NUV4dlNYbFdCRUZvSXlJUGFrcHRLcUc0cmtkcjczUFQ3?=
 =?utf-8?B?WU56eGZDZzV6Mmw2ZjZmV2lmU3RtbG1paTFub01NalQ2Vk9ZMy91N1ZuZklo?=
 =?utf-8?B?aisvdm9rQVdLTmhpblplKzNUbjlOMFRpTjc4QUJGTFZmazNIUk5HMk0zM2Zp?=
 =?utf-8?B?ak1VZ0k1YStYTlJFNkx5bHBaUFNnVW81VTFqazFsTjQvbk9sTzlmaUtmRFl2?=
 =?utf-8?B?a1RNUmEzV0FZSi9jN0RRMGpEaTRvTlJxcE5xc0ROcVVWWnVzK2hrdHorMkRm?=
 =?utf-8?B?MUgrdlBxWC9wZkhhYjVEaU5KVks3WTRWRkg4NHN6aWV5VDJUZ01jbUZ2K1Jt?=
 =?utf-8?B?VDVCTkR0N1lUdDNqMHJRQ2pmOXJSOHloRUptVnhwSlFIdVhTcHpJRWpuZFl3?=
 =?utf-8?B?RTlmQUJ3MDcyVkJCRVBLS2Rtc3BwMklad01hNVB6clYxeFJVNzlWK1Y1Z1d5?=
 =?utf-8?B?VCtHWWNubldkck04MmRha0JJanloNnlNNjh2ejlwNy9TWXZ4dXZDU1ZkNHRx?=
 =?utf-8?B?NC84VEViMUNLcU9yZFJHcmtyUm4wU2I2Z2p6ZUk0cEpVZ2x0Q1k5Q1l0UldJ?=
 =?utf-8?B?ZHBSbUh4Vm40N2RvUjJwclJMTnEwbGFkMXJPNDk2aUdSR0plUjBQQ0MxRHhz?=
 =?utf-8?B?Z3VtYks5b0JoclJDYmRjanEvRUltdUVub28zODBqMTNVc2l3SkIyejAxdVk3?=
 =?utf-8?B?S0NybVdYNzZBYUJHRXBqL3ljK0lmeFdkWTM2LzZiRE05aXhxM1FlRExBckZF?=
 =?utf-8?B?bmVFQWNRSmZ0QXVsZ3JwSEJ6OXpMR0VYSVJwUUlUUmxLNEZwRnZkZXZxeWZ2?=
 =?utf-8?B?cncra0JUQjJpeUtnYzhBMlpDdWV5emsxY2wrZm54a0ZaNVU1RnhuSnhaeFV1?=
 =?utf-8?B?NHdMdEUwZVJscjhjbHRMbzA2WlNWV2ZjM0tRWGZOd1lXVFhNUDhsNWk2MzVO?=
 =?utf-8?B?Q29ndGpobDV0dDBDVllDMzNEZU5HTzU5Z0xsa0ErM1JrMlRKYWxENk9WTVlG?=
 =?utf-8?B?M29BMTRVTU1LaEFLYlg2ekM5Tm1xR0lScHZndkFGOGRGL2l0aFV5Vk1xN3Zk?=
 =?utf-8?B?dWFGT01XTlk1NEZKZ2xnWGdQU2hmYVROUVlrN2E0MTl1ZUlLR0tHdUpCZW9h?=
 =?utf-8?B?bXVGMFN4RTVyZ01nN1BzdldYR0dXc1pIRjRrSjU3dEdNQzB1MUNEM2ZUQm5k?=
 =?utf-8?B?czVYbFRncFZWdTBma3FHdXFLZVBCd2h0amlRM0czUnQrcGUvRDhYQjJyUVhX?=
 =?utf-8?B?Vk9JVGZvNnVVYUpCR3VoazU1Y2tkK0tqVW1ObHRqZXIrWHRaTFlhbUJWOVF5?=
 =?utf-8?Q?lYPinfsNC0sK2ezmepNc/PvNgiRp8S/zGp1z9Gx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmIwbXBLaWdSMHFRbXBEcjAydzl4a2RGUG95SHhvaUo4WitlQmFJZGdoNlBY?=
 =?utf-8?B?aUw2WGlNOFZrdmRWRkQ3RTBpYksvVlBJWlBQMzVkR0laNDRsRmJqUjEzQ1JD?=
 =?utf-8?B?aUZTNXZCNURBMCt0dkxsb0x4bDVBVVVGbWNIbi8vNm5HQm5TeUt4TnFWWjRy?=
 =?utf-8?B?OE1tUWQybjEzS0JZRG0zWWUyNHUxWnNYOGNab05RVUFBbU50dTloMW80UkVx?=
 =?utf-8?B?RnJXaytqb2UvZ2VKd2FsSlQzNGZKSlIrUWEvK3NJWDNDdWJVb2RENXhrd1Br?=
 =?utf-8?B?cGR4cFZrY1p4UmtKVElzenZkb1hSVmdZWURUd1hmNmg2THB3cFdRNjQ2dmgx?=
 =?utf-8?B?T1YxMHp5NFNKdlNhYWV4Mi9zeElUQ3hrOUIrNjdub3VFNFNLQldtNCt4cjlm?=
 =?utf-8?B?ZWgvVjdjNGhsa2VzWE9aM2E2WVYvM0NNd2JHcENZTmxkZ081Y3ZBZzJjUjJ4?=
 =?utf-8?B?UG1xakxoOVhXS2k1QmV6aHNuK2huRUtVYUV2a3ZtZFRGajE3UHV2R3BxN2E5?=
 =?utf-8?B?bXRKbkJ5d2xaazVJQmJ5dDV2cXNGTlZ4bHBVT0ZjUnZBaXB3bGFLR0VDUFVZ?=
 =?utf-8?B?SFE0Y09wWjZEcHBFRnBPdlFIanpzWmZ1dUJDL3Z1M09CNThZR3J4SXZkQmRP?=
 =?utf-8?B?enA5ck13SElidUpwQVlHT2svUGNVYVZwODBFMVF4VU9td1o2dWV0NDFXdldH?=
 =?utf-8?B?THZ3OWZzSFVnZW1XZ29sNklnL3YvcnlpbDRlVzJpdFlsMHJIc3V4TFBId2hL?=
 =?utf-8?B?SW5ONVJxeG1wZVRZVHVmb1kzN0VxcE1BOG1kY1VwaGZXdmJROWZZWi9rU203?=
 =?utf-8?B?cG9XQ3R6eDc1ZEdmUk1xS29ab093UjhicTVVb1EyOW5ESTA1VnViYUxrOURC?=
 =?utf-8?B?MHAwMDdhdzlPS05GMVVmZWhUaWM2dGpsNTBrazAvaTdNZkI4M0hKNS9BUTVV?=
 =?utf-8?B?ZVN4cWszZTVJUXJ2TDM5NkZlTUg1bUNFSnNKdmJld1VzVnBTS29IRUhaTnZQ?=
 =?utf-8?B?QjBZb2x1QjlGV2d0U1hwNFlRUnViRzQrZTU5R2p1aHV2SmVsblRmdzEvdUZY?=
 =?utf-8?B?UzhiOUZoUHlFSUFobXBncGdHR2lCN1laSmtDRVJianJRemE4Ykx5VTZFYytJ?=
 =?utf-8?B?VkFaZUQ4Y0pvYjJ1MDhPVXowa2VxZmNubHVVUlhQdHVnczhTSzZSRWdjR3lL?=
 =?utf-8?B?SzhDQzVHZmQ3RzZIZjQzSWZ1R1RLQ2ZGMEVmd2d5bmlOcHRVaVBHOE4xbFlG?=
 =?utf-8?B?Nk11S1ZFb3Jpa25zY2RhQ0s2VFpNM1VmRU53Z1pFU2xsQjlpUHFRSEcvazhC?=
 =?utf-8?B?Z1p5aGVNYTFoT2REUUFWNnlJcmV3V2xlT3F4d3RsVUpJa0hRVThiSm5rQmZq?=
 =?utf-8?B?WjEvTFFxZFRQMDFXSVlaTEpXMlgwclFpTkt3d2RkWXpQeWNCMk1kT2RNVzFR?=
 =?utf-8?B?ZzlIalRVTERwdmNwdTdsT1BZakgycWVxNExzcWFNOGRkZmFKcW5Cc2pzeC81?=
 =?utf-8?B?L093ZnhPaVRWVVZVd2hZYkozb3cvSlB0blRiaVpxOHQzNHFnUnhiM0lzcWZh?=
 =?utf-8?B?ME90YjZTd3E5NnpvT0xycHVjTTdneS9kM3VHbjFKdDlURCsvN2gxYXFzZGJZ?=
 =?utf-8?B?Q254ZEIvQWxqY1oxSnJuM3grQjI1eko2Tyt4dDZTazBzQ0Q0NFYwWlB4WHIr?=
 =?utf-8?B?N3d0NHloOHNjSjhaNjVncWhpRXZabjVPQnp6MDE1WEcyRXByS0hlY3B1T3Vt?=
 =?utf-8?B?ODhqR2p5UTZSd3ZFdXRMWkZITGJ0RGZZNk9qYy9YeitweFAxRnlFZXJOSWgw?=
 =?utf-8?B?a1lDdmtWY3N0Z1pidWthUDN3NG9LaWUrTkVTSkxOZmdmbUFuTUN5c08xK3VJ?=
 =?utf-8?B?ZCtiaDU1RWhMMHRHdm84dlJKSTVJRjk5aEk1MGZGR1FwL2FweitINUJ6UXFO?=
 =?utf-8?B?c1JGbjg3Skg5NVoyeE9EWWtmK3NqSmRodjNwQTIxWjkxTVRPT3ZrcU44aXc4?=
 =?utf-8?B?dmVEeWpJRkh2YUw4eDE1UXJ5eWhSdmlDNzhnV3haM05acWZhU1M2dUxObllz?=
 =?utf-8?B?b0d0UldsN1Rzdklhb291UGtWV0ZyZWtXODZ0aGRBRm1yRjhZQkRQQkpYUTB1?=
 =?utf-8?B?ckdocjFKOHlBd3VRVmt2MUJ4S0hSaW80eUNvcURaY2hROWpEME9CMURiNytj?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f4ace3-a2c2-4b9c-975d-08dcf73689d6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 09:54:39.3947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kcb1jSbjphm+/6arLf9WslKfPtDD3rqJFlzq4OTtCH6AZd0Vou/kMgS9nMHyvezNcC2/uIXvwtLRIs0yjXgD+Ot/+krQuzJKRTCYXZHA3K0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7679
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730109316; x=1761645316;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n+SUzXT6CGBt+RfB3QjAupDPBxaOOH77FHP1+rHGRSU=;
 b=PX2JYqy+/v2owm5xbMfQNfxgGZffWqQ9T3p5B2H6lZnGo/ve1LwMo62W
 od0ZjJQEPjdy0KR8dANqfbaV8SzQzMEGeV7xxxT7o0GhU9l6KBj3w0QEP
 cCZ9SzBmubHYIdTQgGFNW5tJkCyXs7UjtNJyg+keD/EqCpliKPp+UFzBp
 oC0dP3Hq7d4g6q9BEypD51G6+O3oEUukYm1aH1JN+h7U+6P3CUkCsZOli
 GeqNztKSX2Ir65S2llyGCuDDDBBATFbm8poPtjtL7is4xnwscFAaEyr0A
 Iu/M953b4tBQqHam8EXuhdu+qIfVb7vK6bA4F/N7Xpg5moEXwgnOFBK8z
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PX2JYqy+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-next] ice: use string choice
 helpers
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
Cc: Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 arkadiusz.kubalewski@intel.com, Julia Lawall <julia.lawall@inria.fr>,
 Andrew Lunn <andrew+netdev@lunn.ch>, karol.kolacinski@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/27/24 15:19, R Sundar wrote:
> Use string choice helpers for better readability.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Closes: https://lore.kernel.org/r/202410121553.SRNFzc2M-lkp@intel.com/
> Signed-off-by: R Sundar <prosunofficial@gmail.com>
> ---

thanks, this indeed covers all "enabled/disabled" cases, so:
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

for future submissions for Intel Ethernet drivers please use the
iwl-next (or iwl-net) target trees.

There are also other cases that we could cover ON/OFF etc

> 
> Reported in linux repository.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> 
> cocci warnings: (new ones prefixed by >>)
>>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:396:4-22: opportunity for str_enabled_disabled(dw24 . ts_pll_enable)
>     drivers/net/ethernet/intel/ice/ice_ptp_hw.c:474:4-22: opportunity for str_enabled_disabled(dw24 . ts_pll_enable)
> 
> vim +396 drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> 
> 
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index da88c6ccfaeb..d8d3395e49c3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -393,7 +393,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
>   
>   	/* Log the current clock configuration */
>   	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
> -		  dw24.ts_pll_enable ? "enabled" : "disabled",
> +		  str_enabled_disabled(dw24.ts_pll_enable),
>   		  ice_clk_src_str(dw24.time_ref_sel),
>   		  ice_clk_freq_str(dw9.time_ref_freq_sel),
>   		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");

perhaps locked/unlocked could be added into string_choices.h

> @@ -471,7 +471,7 @@ static int ice_cfg_cgu_pll_e82x(struct ice_hw *hw,
>   
>   	/* Log the current clock configuration */
>   	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
> -		  dw24.ts_pll_enable ? "enabled" : "disabled",
> +		  str_enabled_disabled(dw24.ts_pll_enable),
>   		  ice_clk_src_str(dw24.time_ref_sel),
>   		  ice_clk_freq_str(dw9.time_ref_freq_sel),
>   		  bwm_lf.plllock_true_lock_cri ? "locked" : "unlocked");
> @@ -548,7 +548,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>   
>   	/* Log the current clock configuration */
>   	ice_debug(hw, ICE_DBG_PTP, "Current CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
> -		  dw24.ts_pll_enable ? "enabled" : "disabled",
> +		  str_enabled_disabled(dw24.ts_pll_enable),
>   		  ice_clk_src_str(dw23.time_ref_sel),
>   		  ice_clk_freq_str(dw9.time_ref_freq_sel),
>   		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");
> @@ -653,7 +653,7 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>   
>   	/* Log the current clock configuration */
>   	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
> -		  dw24.ts_pll_enable ? "enabled" : "disabled",
> +		  str_enabled_disabled(dw24.ts_pll_enable),
>   		  ice_clk_src_str(dw23.time_ref_sel),
>   		  ice_clk_freq_str(dw9.time_ref_freq_sel),
>   		  ro_lock.plllock_true_lock_cri ? "locked" : "unlocked");

