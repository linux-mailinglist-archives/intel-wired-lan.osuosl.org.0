Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F21D39051A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 13:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE77981303;
	Wed, 12 Jun 2024 11:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AqoTmFEyy1a0; Wed, 12 Jun 2024 11:52:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C062181307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718193172;
	bh=M2aXYAq1IOYIUZ0X6Pj7rIS9oeMNw/m039VIYKgZIhA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VM6elrEJP2BIaXlmZrExyfA8hERik/CpjCk1opFQIO2fg9XLeqEh+/5B/y9Z8lZgK
	 aqihsj2MKOunQ/p2VfNb/HsBI++15P4fLEVrp0fowWzfAbICN+2GUX+dAEHItYCEwR
	 KihIW+HgJgr9I6E/TGb5hd3tI2D1bw+Nasn0i9e65WQdTxY5wJws++DfwuAmmxja/R
	 QybKvX0LCJzPPZtWB1f2W/1/Fo731w2+GpChIwN5M7ygz6rTfK+PhwwztIgv+WcPqy
	 FIe7Jtjw/rlklYfNxqvHhMvHK8cvlIP2xBwALCils4imXWDhmVqcc9gQQRlMu0kh/2
	 6Omr95pl8CLpA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C062181307;
	Wed, 12 Jun 2024 11:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 872AD1BF373
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70B55812F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t8Zy9CqWf6Mu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 11:52:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81E9E812F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81E9E812F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81E9E812F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:52:49 +0000 (UTC)
X-CSE-ConnectionGUID: OnQq3qgFRfWSEl4qz3JiMQ==
X-CSE-MsgGUID: l0vEvo2MTECy0mqMwLQ57w==
X-IronPort-AV: E=McAfee;i="6700,10204,11100"; a="15079819"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="15079819"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 04:52:49 -0700
X-CSE-ConnectionGUID: Ui0BdNPDQ1KVixZLuo38QQ==
X-CSE-MsgGUID: gYnBAjeMReapqHZO7EzjCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39881497"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 04:52:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 04:52:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 04:52:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 04:52:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SFsGhkGgvQ5q5VU4ZHiXtVZBDjUuTESi9VCWHPscpZScxlvti3GCuNZj1/cvlKhMEef68JH3ms7asmWjGUhzy2jJBBqsN7uEjHbImMGzo8tRlWgQT9ErzgDDmg7Q0UUqVX0GJwnyWxT3sPn/S2MjKy/1y7PcW6qx+bdmbjqlH+rpfMl5G+lD45RbOYBe3+1/pzXM8g3V2FklOGyl6ugVFaF5Z7wh2GpS6bytOe08yICob9XLZyzXsxoVZEbB2hRT9q1VloAZVY8KjVbdoRxRM0XJrhQJR2Xul7eV5pb6qIA4qFAhf/Hl8cssJTRd5Je8eZiSNEHsJgvOBA5mGDt+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M2aXYAq1IOYIUZ0X6Pj7rIS9oeMNw/m039VIYKgZIhA=;
 b=my1FgztGljV649kfgQB6HTMegfuUIo6pZe5W15o3dD+xlxvhY7Yc22uuWNcfc9FprhIM8o2wE361YcanIlyYCyMwf0xbzj+zGldAn09uIClYG5d1vL+brjKwI7z9rnfmxs8DlRWITWItck9ebmZOOyGenLZBp1V99vmyFPBfxxfpZWnlJkggF2Sbl2bPJEjI8EXZhAspiZkbON+lVW76bBsXR6Dw0E5PhgclU2VnV+yzmNn+mnaIVAeyDiuyfbHqyDydNmCy0xieSKO6xMoO0c+QHhJKzHE2N1TbwHCE0mN7Jxpmo1uPpqB3tUeaH736ZbIkXbXfOqf8ONjgV1cU9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 11:52:45 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 11:52:45 +0000
Message-ID: <4ca22b77-c2c2-4b7d-a4a5-152aed22bfb8@intel.com>
Date: Wed, 12 Jun 2024 14:52:39 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240609065309.2049754-1-sasha.neftin@intel.com>
 <2a169e8b-b2c8-4576-8a5e-ae96c83abff9@molgen.mpg.de>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <2a169e8b-b2c8-4576-8a5e-ae96c83abff9@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DS0PR11MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ccc533a-1af8-4a5a-046b-08dc8ad62c82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bjZMMWtZR0JiMW9UcnZyZGFzL1p6VmQwU0U4cVM4Qi8yUldoMDBZeUJNL1VT?=
 =?utf-8?B?S2U3WGo3ekpJVGpLcDJwb1creVQ2eFErbVdvc2ttUWFwaGU1QnRSSEJoMVFT?=
 =?utf-8?B?Q0xnd2w1ZVlNWERaOU0xSjI4M3MvbExYaTgrYW5jWEJBMmRFOGxGK3BvU0xI?=
 =?utf-8?B?Tkd1YnpkWHBBQUFFZk5xOGU1OWd3NEtqTFFsS1ppaTNhOC92QUR6YU9uQVEz?=
 =?utf-8?B?Y3BtcXljbk9ZeHJsb3V0MnNwaTEvbytkdTQ0WkltajREUVZ1cDA1bGdwS3FL?=
 =?utf-8?B?bkJaa1NVbHdpaG5DMndBcWNyd0JYRURoaHNoOUhhRHpxcGVPcDhZWXpsZUIx?=
 =?utf-8?B?ZHRjZFYxZld0ZmVNeU9xaDZPRS9xSU42WE1ZRW1sNW1Tc1EzWENHWkM2T3lT?=
 =?utf-8?B?TXFKT2kzTVN2c2VxU0w2UitJaHBBWjBpNkhpdVRGbWFrQ09xMDlPQWFobklG?=
 =?utf-8?B?VTVNV3FuZGo5Rno3YnlnaXhuRm5ROWw4RWJIcS9VekJPUjduNHh1WHdBaDR5?=
 =?utf-8?B?ZEx4d3lkcjVpb3ROakd6emsvSGh1RU9BRlZFTXM2K2ZsMGxjekJ4a0dxay9Z?=
 =?utf-8?B?d2lLV25mTThKSzMvRXlsUU1JOHphM00wUFpqYWJENHlJamova0ZocVNwN0o2?=
 =?utf-8?B?bzNjNHpmSkpSWldkZ0JqYmU3SzdJYnNiUzdleFZwK3NwclNSZXRjUG5mTmQx?=
 =?utf-8?B?QU94WHdGOE5zQzFHdmhXaTdQcDk0MTRwK2ptMjEzODZvVWlUOHloaGJUS0xY?=
 =?utf-8?B?RHhSLytwRlk5c1NEdmU4TTdhQ1NleGthemdsK3ZoWCtjMWJYL09UM0s2Und6?=
 =?utf-8?B?RGMycU9hMjZQcHNOam5oV2FsRjNlVGtqclY2ODQvaGx6azRKRml3Nm8yODh3?=
 =?utf-8?B?M0RhWTdOUlR3Qlhhb2RRMk4rbEdHMElMcU0zc3pVWGtjZGI5SWovRnpDUkhE?=
 =?utf-8?B?QUE5MHhMdFpiczFhdzFLSXkyZ21uQ3RzVUMvK1U2UWJvWlNvZURSWm9Zb3FH?=
 =?utf-8?B?SmJFUVBzN1ZzVjgvelMrQXh4KzZVUkJlaDU3aGpHMVBSMENKRnJ3clY4eWgr?=
 =?utf-8?B?SXB0TmtVSWR5RC9iZ2FhQldVVUVUWUhiYzE3bWwvWXVud2ZiSVFsMG9DSUpP?=
 =?utf-8?B?dlZ3NFozM1hCdTcva2RCRXp6K0dLR3VTcHFwcGowSmt1QWt4UllDdERjOE1W?=
 =?utf-8?B?MkRWdUd2Y3J5Z3BQUEJyWGJKTkF2RW5WczVSMmg3ZW5lMVJiYnJEdDZGN2t2?=
 =?utf-8?B?M1Ztd3JCMHdSaythR3VLQWRoZ0pFSDRVV3JrZVZpTjY1UXhhb01TQ3M1ME5v?=
 =?utf-8?B?ejlNbURudzdmazVCZXFEeUVFTEJRa3BHTk5rclhnZnkrYmtZcTV5MEMyeUtE?=
 =?utf-8?B?bUFkWEtSK1ZOM3hIR2Z5NGxwM3A5T3BIWXIzcVJvUWhsRGJEaDdaWnBxY1hK?=
 =?utf-8?B?S3ZPYks0R0QwWVJCMUlmRVdxcU5sVG4ybFhET09lUlhPaUcwNGhiT2R3R1NC?=
 =?utf-8?B?SUJQeXIrTXo2U1ZidWFKQ0VFUUhPbmhmb0lqNGp6aFg4cW51WGRNbVFJelQ1?=
 =?utf-8?B?d3d3YUpYUXBMUHJjR1pLMzNjb3dkWlV5c25lNnFTdFdkMUVyYWdwNEtYQjBR?=
 =?utf-8?B?VkN6YUhXOTFJMThrRHlDVFBLRFRud3F1N2VsKzZDaURKMk00K2tza01EamY3?=
 =?utf-8?B?eFQrWndoVml5S0tWL0thWkp0b2tEMnh6RWppMnlRN1ZQa0huY1VHeHd2VG1H?=
 =?utf-8?Q?BU4AYuK2ADF3q5ya1c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zk5naHNKSEJMZVRqUk5mZXNqTGRieHVlbFc0NGwxcjI0QklORWtjWFJhc2Z0?=
 =?utf-8?B?VHpRb1NOa0t1T2U2L1cxcGIwWTZoWHdpd1ZyRzZudFR1ZkJkRWsrUkF6Zkdn?=
 =?utf-8?B?R2IrZHN6eFNKNmRXdGMza3cxWWVVQmVpZVVKWktJVXltNDR4RzRXMUJ1VFN4?=
 =?utf-8?B?OURadEtEaUtGVTJpY3JyNnlHSHRZRDlOVm9FVXFMd2Jhcml2b3hDOHdnWGZ2?=
 =?utf-8?B?by95WDRlRGVyamUwTTB3bmxMTUJtcDVwaGMyVUlYT3FDOGpXZXN5TEVacnlT?=
 =?utf-8?B?S2JVTlMxWk1qcUVJR0ZyT2hXSUZHT0MrK2IwVE9oUkR2RVNYQ2JxMXZGa0pZ?=
 =?utf-8?B?VEhmYm5qQ0daTlBSanZ5Rk5yTHYrZVJjd3JEUVNZc05rc0dTUU44b1ZUNUU0?=
 =?utf-8?B?Kyt0c0ZwY21zZVpCS3NyZFFaaVRTd1hUWFVsVVhUSUxueWZ1TEw2dVFpKzcx?=
 =?utf-8?B?L1h2RXJldkVHZzBTS2g5WFUzUHczb0JLdEpZZld2VS9WK3d6QlhDb2hYeFZq?=
 =?utf-8?B?Skp4T0M4ejA1SFFqd0hIVWg5KzNYRWlCKzdBZi82M0hhMVh5OTVZZ3ZtMENo?=
 =?utf-8?B?YjQ2b2FGamJsZVVBNEpjaGhxQlM4TDNHc0RkbEUvcE83YS8zem53ZnpLcldu?=
 =?utf-8?B?anV0Sm5XSHVleUhFQVQzOUIwbWZ2OS9teWxYQkFsazFEOFpmNlVSTlZEdUZo?=
 =?utf-8?B?R2ZtZHBJUEhBb1NFUE1aaDYrTXJHS2J0RDlIaXFCTk04MWxvNkljQlhjMFIv?=
 =?utf-8?B?V2dyQ2FkS21lSHdiNjdUemp5am5HRGNYTEFjYmdWOWRHNEtQV1NoTkhFcHpU?=
 =?utf-8?B?Q1hrVFZrS3BIcUs3SDQvSjVNbGgwbGw3YmRZY2tPUUNQeVQwaDdsNzE4UnRH?=
 =?utf-8?B?RmxTVHFHOUxLT0lzdkp5TlFiMEtVTzR1ZjI2YlUycnY2dWZKbkF1WThLRVE3?=
 =?utf-8?B?aS94VUdCWDdUUW9GK1hBWXVaQzYvblZVZVJmNlQzNzJnUitSV0pQT0xlQXB0?=
 =?utf-8?B?VjZXeS9XcTYyY0V2R1BYbTAvZVlxcmJFN0V2SE1jRTIvdnlFeFZyOEF2amZU?=
 =?utf-8?B?Qm95blRCRWVudEdPRklpTlQ2b0RpamlpZEFmdHoxS2tXT2x6TWg3akR5NTBX?=
 =?utf-8?B?bC9xMDh4ekVkaG5oS1lWd1pkOXpSWDRyaytRLzU5eW1NN0RGajRKc3hEWW5o?=
 =?utf-8?B?ZUxQZ3Y1bHF4TitRd1J1aGFIc092TlUwNGlZcTROL25aRlVDSHU3bmVPOUtS?=
 =?utf-8?B?ZVN2aGRXOWlsWjhaWThOcjlZdTE0K1QrNG8wRnMxSEJvRk12TU92NWhJamhJ?=
 =?utf-8?B?TENTaE5TenRzdW5tMHloS0dYbEYvOUtsWmg0d2EvVU5yNWh4YXlKa2FKeCtO?=
 =?utf-8?B?MGF6MmtpMXpvdGxYQmJRbGFPMXIvTE1EYVpqaXpQcDhrTUFBcTZla0RiVm5t?=
 =?utf-8?B?T2JmVUwyRnp2dEwxalJINTIrRlg0YkxxMmhVbmNxMnF1UGhaSk1YU2xUTXVM?=
 =?utf-8?B?dFVka3k0cUhlY1E3Y3FYV0x3a1l1WGE0MGMvWkJQcVRNdHNwM05XdUIwM3dv?=
 =?utf-8?B?OGZySGtXVHE5ZTB2dWM5RzIzWitITVBvUysxN2xMeU5BYVZDTVh2bWVZM1J2?=
 =?utf-8?B?aEErYVBzbE5NUCtYVHpMM3FsR2U3SU0vZlRCUVdMa2R1MVZHMzFSMFNBbkpa?=
 =?utf-8?B?OHRUMVRtMmpSOENaNXBFR0RLSmVFSWRIVTFvWlV3aHlKMW40Z05LOVlBVU1T?=
 =?utf-8?B?NlkzSVJVTUxNRnZSR3pEMEp6MGdvbUNjTEJxVVN1bEVwdEZYY0NHdHR2YWtz?=
 =?utf-8?B?WVVnNFlHMnN6bVdhUVgxNjFuUXRjRjlkOXRzRlprMTNOSXh0ZWdQZnE0WitW?=
 =?utf-8?B?MyswTkV3NGVJblZvYzUzV1V0ck9hek9mZE5ndmxMb2gyeVhJQnhRazRZZ2NP?=
 =?utf-8?B?V2NvVi95c0d5TVF5YitmRGlmcWJyT1dyeDFOZVhGSEtTRXdHeURPVzlVMjB4?=
 =?utf-8?B?UzllbFVEb1NFQ2pTSTZkclR4K3gzcExBYXl4V1JWNDlHMzlOTEpJYnhYbTA4?=
 =?utf-8?B?dUR0MTg1Q1RVMDJFcFVSQVEvclAyMTFldHp6ME0wOFFzYjNMdWk5Tk9KNmUw?=
 =?utf-8?B?dU14ellUeXNxYkZDQWM1dDJZMVVNK0xaRnRITmdMM1pUUTM5WXc5NzBGaHR6?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccc533a-1af8-4a5a-046b-08dc8ad62c82
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 11:52:45.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KFHYY5BrSsPpR3vmlkJnLe52u0dMbU5gvYA6aZp2Pg80ptH9thsKks9xfDoCsNfKnzepn2e4bg9crDzSWsuttg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718193170; x=1749729170;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q9hd/5FjkWsvtv64y//u68OMGOhihiFzQgm7CegY9gk=;
 b=XCRtUXRn3PoQAwHm4zcQFq8wJrGO4aRsM0j8btwjB7lmJnyGTc2SUUHY
 7wT6+86yehSkyOl+IbR+Eq58UOUWvCFlOFOMeiGVpv7a+g9EqjXNyPLnM
 Oiw0mHWlOzUwyXeuGm2XrV+wEmWmi8o/U/wzVEFsVGxPmHlzdXIOhsrnJ
 KebCAeRPWKVtN42gw8hUHeXnHl9QjVIEix3r3QTcYapIaIP0K0NWdexNC
 Ug3ul+KVK6NLmlz2HfSyxPVk2o+e1b7CGRYcNKSbumWkwzHuzj9S/VMgU
 vZfegKCz0bwGQmFeh21kA7JGUGkQ4ui3BuPBePIu7UR6IAjWFMBJE1RfI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XCRtUXRn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/1] igc: Remove the internal
 'eee_advert' field
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/06/2024 11:43, Paul Menzel wrote:
> Dear Sasha,
> 
> 
> Thank you for your patch.
> 
> Am 09.06.24 um 08:53 schrieb Sasha Neftin:
>> Since kernels 'ethtool_keee' structure is in use, the internal 
>> 'eee_advert'
>> a field becomes pointless and can be removed.
> 
> Redundant *a*?

Right, I will fix it.

> 
>> This patch comes to clean up this redundant code.
>>
>> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> 
> Is this due to another commit? If so, note it in a Fixes: tag?

This patch targeted iwl-next. Aren't? There is no "Fixes" tag needed. 
(cleaning up as kernel evolution)

> 
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h         | 1 -
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
>>   drivers/net/ethernet/intel/igc/igc_main.c    | 3 ---
>>   3 files changed, 10 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h 
>> b/drivers/net/ethernet/intel/igc/igc.h
>> index 8b14c029eda1..c38b4d0f00ce 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -202,7 +202,6 @@ struct igc_adapter {
>>       struct net_device *netdev;
>>       struct ethtool_keee eee;
>> -    u16 eee_advert;
>>       unsigned long state;
>>       unsigned int flags;
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c 
>> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index a80ac148b402..1e9241103aa9 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1636,10 +1636,6 @@ static int igc_ethtool_get_eee(struct 
>> net_device *netdev,
>>       linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
>>                edata->supported);
>> -    if (hw->dev_spec._base.eee_enable)
>> -        mii_eee_cap1_mod_linkmode_t(edata->advertised,
>> -                        adapter->eee_advert);
>> -
>>       eeer = rd32(IGC_EEER);
>>       /* EEE status on negotiated link */
>> @@ -1700,8 +1696,6 @@ static int igc_ethtool_set_eee(struct net_device 
>> *netdev,
>>           return -EINVAL;
>>       }
>> -    adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
>> -
>>       if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
>>           hw->dev_spec._base.eee_enable = edata->eee_enabled;
>>           adapter->flags |= IGC_FLAG_EEE;
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c 
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index c057d0afaf9a..772f425b1a24 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -4976,9 +4976,6 @@ void igc_up(struct igc_adapter *adapter)
>>       /* start the watchdog. */
>>       hw->mac.get_link_status = true;
>>       schedule_work(&adapter->watchdog_task);
>> -
>> -    adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T |
>> -                  MDIO_EEE_2_5GT;
>>   }
>>   /**
> 
> 
> Kind regards,
> 
> Paul

