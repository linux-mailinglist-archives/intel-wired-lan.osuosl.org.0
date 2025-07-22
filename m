Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2F2B0E4C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 22:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F83B41238;
	Tue, 22 Jul 2025 20:18:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xxMU4BhcaU4; Tue, 22 Jul 2025 20:18:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEE8D4139C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753215484;
	bh=7OJKF01DQMfkTbf/SdHcd4EeBLOi9MwOCsxhmYzNpuI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ztmzr1k2udWW7rTYrNp3Eoat4V62bvTs4lsJbHrezUgaUVSpFrs2s8CflnOXzMnFt
	 wbHAQx6bAx0FqN6N/InKSXrRwH/eFwCsgMeet5V3NFohFPL2EAOHG6uYP1csWrvPoF
	 TJ77tEX/XLXq+IcX1sE3HI9ykAdt0nWy16nxxfR7MnCxElJrILEkK5Jm2m4ClSIIes
	 6H9yAC1eJsL26j8+EnOWBT3KniXmak7MBM2zElvcRMz5Cqvkd5z6BBNO/3fkKo3pqy
	 8b7n3Ndw7GvHnU67ufWcOf+LIK/xn/LT74Tv6garRULlkU7SED/lrYUs89NLO2s/UP
	 Q8aGRKbqOJWDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEE8D4139C;
	Tue, 22 Jul 2025 20:18:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 07AABE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 20:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1DA841238
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 20:18:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nbjnTHAf0mGd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 20:18:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8BD740DD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8BD740DD8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8BD740DD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 20:18:01 +0000 (UTC)
X-CSE-ConnectionGUID: OvipOIarTimeNem4gu0XwA==
X-CSE-MsgGUID: TgDmc6/vTMOb3liL+LTJsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55577333"
X-IronPort-AV: E=Sophos;i="6.16,332,1744095600"; d="scan'208";a="55577333"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 13:18:01 -0700
X-CSE-ConnectionGUID: 69fI9QAySGmVLhVXAGtbKg==
X-CSE-MsgGUID: E8WMb4O4Q2WGTQzzJwEmeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,332,1744095600"; d="scan'208";a="163777190"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 13:18:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 13:18:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 13:18:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 13:17:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SxPluGhMm+5yXLkmuvKfKS/ImsS1WHhSbK19CpLybHCMmkj40pod2C79lhQ63si1E0/B2oO7WEU4y2PnSDs4ZOy4pFv4u+Q1EeOoF8ckwQqWXU40jij73dWQnfy5VVGxpk2vbs/Ha9qK4cpMinfy/247Xx1jCFNc97CAkZO21UFNSxzwajuRk+EVBsMVDxR/gT8Kvogg8yghlW5LBEUei7RNIq5IFLN74yFszq+tLuSCSx7/XI9q31L3lZsh8UumOAc7moS4sAaj84xaCbe8XoZs/vaabbgiMU/A5715mxbEAmOKKCXgDlQAiBHhtZvNdSTFIb3y2cWGwUQo1eKBHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7OJKF01DQMfkTbf/SdHcd4EeBLOi9MwOCsxhmYzNpuI=;
 b=PqQ82S7nJVDCgorBDPalsYW65eqF72GkXPCYttrxGmJmBmQpxTGSRACPZChoZ5Q2JRo7QPQitCaziiq3WRfsUOvd4omD9PCZHGfF/9iZXp6mgQmScEoKVko2n/W/koxKxa9W6YzKZDLyih1CpZ0lDctbiyGJux82MPWVZhx0v+xpWcgDdS9q1h3OLNyG/TU7BF0ZZ70Xma57kged648ALk9EE5Y+wyQUl7Im4eYmD/p3mXKwSra7FZGi66V4C6L9v4ZbqkL7d1STucrGni2n2905+8YRTx66yuwQ6L1l9BHq0zEmAGtslwzHdjv7uertUjC4LPKoqA82ZddQWDynbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.29; Tue, 22 Jul
 2025 20:17:43 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 20:17:42 +0000
Message-ID: <e76d2af6-40d6-4169-8ec9-aeeee31b3aaf@intel.com>
Date: Tue, 22 Jul 2025 13:17:38 -0700
User-Agent: Mozilla Thunderbird
To: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250722115017.206969-1-a.jahangirzad@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250722115017.206969-1-a.jahangirzad@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0332.namprd04.prod.outlook.com
 (2603:10b6:303:8a::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: aef998c6-8397-442e-b13b-08ddc95cd007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDhicmNaSDdhM3o5blVvWVM0RFFNWjdHNW5rYk5DNFdaVmRhSFJhdUNaS0No?=
 =?utf-8?B?akZiRWdxSk1FRng0bkxYbFEvM2pCd000TVhYajhWMFRML0duUFg4UlZYRGJC?=
 =?utf-8?B?U3QvWkFQd2pQZk9FY3pZenN6THB5QnJBbTlwVFQ1ZFdFdXFSWW14SGlTajJD?=
 =?utf-8?B?TktXcHlPWXVyK0YwWVRsY2Q4cmU2ejAvS1FvSFY2MG9QWEhMeE9uTHNleDVz?=
 =?utf-8?B?VWVvYmExdDNreGpGbUhBOEhNM3lkTk01NFZidzlqQ3lESUVSejhrR3JqaWFw?=
 =?utf-8?B?NVRlcW9FdGVzZGR4UUE3K0gxZFRScTBGeWZTaTNJVUpSMjhnQWJRaHQyKzV2?=
 =?utf-8?B?SHlBZDdjT0ZCMllhRnkrWnF5c0xwYW9DcVFzaGkxVkVwQ2xOQ01ha0NOZUx6?=
 =?utf-8?B?TzRGdFBLcDlPZ3pTYVg1MDV5Zk9CV29kSWgyc3NJR3lUejRoK01ZcEFCN2RL?=
 =?utf-8?B?R09qZkx4M01xRVpkWW9UNVJZU0FNNFJBU09xV09TNmxLUHo2VFZ0T1hZTDZx?=
 =?utf-8?B?SjJJMWF0dW5lby8wd3d2TS91UUFDVitLelFHQkJmQW94OHY5L2gwbmN3Mkk5?=
 =?utf-8?B?bWJjbjRvOTA5WENmeFM2eFYvdXdtVEFJWHVSTjI2RFFYNW1mRnVwZk80U0p2?=
 =?utf-8?B?YnFCSGJ3Q3ZrUXV0MFlaSmFFa1hnRDlSVlZtZFVmSVduMEFQK3F2Z085ZWs1?=
 =?utf-8?B?dUJldm84U29DOVJXdjlRZ1MyVTBkWS83VFl3d3RNbDJFb0lwMVovUW9BMWZE?=
 =?utf-8?B?S2NyaXdhUEJ6a0JrZ2Q3T2hOd2VvalVtNnB5L2pkU3M3TjRXRUh0R2hGR0Ft?=
 =?utf-8?B?d0NVNHRPd1RRY010MTlDS3dlNGY4SjlMMEYzTjZVbGt4QjVDb1ZTaHlYZHZZ?=
 =?utf-8?B?YWhMU05BZi9uQVF6TVVXWnZ6TGRkVS9nTnp2TkVwaFRGUktPRldsV2FDNEQv?=
 =?utf-8?B?R1BxendESnloMkI4dmt6RE1DL1VSeVVpZnZvZnRPRkFNZFZDQ3BlcVk3eFNX?=
 =?utf-8?B?VzVBdC9kbUN2ZDFmZlRnaDFMVVN6bnpMa3libGVyMUdlSE44TFQweno1REtN?=
 =?utf-8?B?VTdMbm9YVjlJeHpsdnl0aExPcEtQVFRLcnFESU9NWWh0NlRwOEVtTk9td3pI?=
 =?utf-8?B?OUlXdXo4VkJVTnVXL1dvQThqN3VSTitsQXBDSGdhZmtITHl2UlRORXBNdGZH?=
 =?utf-8?B?ai9CVzRpRlZZSHBoaXdPYXpDVldkUnEvL05vMXBCazR6M2RmYmE3ekZCWXpy?=
 =?utf-8?B?OUtYOXp0T3JNZGVYUjZPTlZKRVd2aDRhdlJDWGNpL2tJd3VILy9WbksrQ083?=
 =?utf-8?B?YmRic1BKRS9hRXRUUGxUMk04K0hFdU40ZUhjYUVOQXVNeTBudVQ2bGNJZi9S?=
 =?utf-8?B?Ny9zdFZ2ZUpxS1NFUjdjMC9Wb2lDV1VIZUorclJMRzFxK2gyMjFEMkJNSCtr?=
 =?utf-8?B?K0txdFhmeTlHOEdzdFFXMzU2LzBhY1lwU3QyY2YxYzl2Y0s2Nk5TbnE0Y3My?=
 =?utf-8?B?Y3VSZzdUTkdUSzk3UU85T2JUejhha1RqZ2N3eWFtemVDUm9ObDkxbUY0KzlL?=
 =?utf-8?B?MDgyVk9BaDdnY0ZCb2FXZTlKRDJSNzI2aVFGOXM5UU9sczBOenFvc0FUaEVN?=
 =?utf-8?B?RHBmdVRrMHJxVTlrb1lJNW9uZ1A4blFzK2lNQ25Dcm5oTWVuSWM4KzhsKzhN?=
 =?utf-8?B?cWd4RVlhSWhjY1h0NzlaTHZzeCs5WWdDNS9xT3MwTnk3NGVibmxDSUx3QzND?=
 =?utf-8?B?RVRZOGxGVDh3NENHNE5SOUl1MXVKS2toZm1iMDhxNXM1QVBZL29ENjFSTDZu?=
 =?utf-8?B?WXlwSEJQZFdRbjkya0xsYktxUVFkM2FQWGV1U2Y3L1JZZ0gyMFZMOE95VXZR?=
 =?utf-8?B?NWROR3M2MHR5OGtxMHVoQjMwdUlyNUlrdDFTV2h2N3BqYVJxZ09XQXQ0SU1u?=
 =?utf-8?Q?DV6eBc5aaFE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0liZGFNY2hTL0EyejNKV05xL2FsSnRBeGZrby9NOStLUDZaZjRBSm15NzlU?=
 =?utf-8?B?anJSY1hJdE1mVUN5VUZzS1FnUTQ5K0lPL0IvdTc5eHFjNHdacHhmY01CME5J?=
 =?utf-8?B?VXo0dzR0UjA2c0xQOTNyckxIL1BwOWRpZkp0YmhNSW5BYmtNWU5OVHBMQmJu?=
 =?utf-8?B?V0hTQ2h2cTJ1L1RqR0tZV2h6LzlqaitqUmNCRE95V2VtUEhmUERyN0tGTjN5?=
 =?utf-8?B?SUUzbGoyaTRnc1haSnhvSmdET24yZDFlYkhMUTE2VGhHRmJ6MlF3QU4yWnJJ?=
 =?utf-8?B?cTkrODhSZVZncjJVcUhoWFAwRVU2ZVRrRWFyOUs4bTIvS1NhM3ZOWXVNTEZW?=
 =?utf-8?B?V2xUWkhIek9nbEpEUnRuOFdnM0ZqY1R5WFFJcFJYVGJqTndMUDUweVdHYUdX?=
 =?utf-8?B?QTlYS1hWeTNuNm5VZ1ZwQmJVUVJkd0VLbFllRkRMaTd2VHpNWWFkMDhiaGNn?=
 =?utf-8?B?UkVTTmRBOVNhcmRhZHVJQ2JadnZlampDczNQNDFxanBEU3p4aVBBaGhIdzJo?=
 =?utf-8?B?S3JoeDZ4QzJWSnF2ODBKaGFZL09OMk5mNGw3eTdQOVk2a0l5MStaTXBHZTBl?=
 =?utf-8?B?QWJSNm1xSTZocEJvNE1KRVdxSndhOUp5QU0vQnBMaHpZT3hXN0NSWWdweUdh?=
 =?utf-8?B?bmRISFluYUV6UHh3dlpZM0hQRzJHVXpVZ0I5ODBXejZkbnkzTWN3QWE2VXVq?=
 =?utf-8?B?OS8xMEtHenIzbitVL0RGUGI2eFhMYWszV2poYS9kcVNuNVVRcjFtZzZXMlpV?=
 =?utf-8?B?ZjVUWlZFQzFXTSttN3R1eHRGRnZoS3VzZ0sweHNYbXd5RnFjb0FuYm1menFi?=
 =?utf-8?B?b25oZm5SZUhtTkU1a3BwSmhPalZmejZDYVlTbWdYVkZPbGZBdWlCR1Jubnhi?=
 =?utf-8?B?bms2Zm96a3dLVFhhUVpIQklIazFOVW5wZ2MvOGJNRDRGeFVwSEtTVmxFSVBY?=
 =?utf-8?B?M25JS2xLUWNnRDlaek9pcm5KNk8vVE1aaUtZUkFqYlRHRlVLYmh1bTBkNTI3?=
 =?utf-8?B?THpWcTIwRXNnZ2VKTXZraElzWXpWUnl6UGRjeXYzR3EyaTR3N2NTV1BsUGh0?=
 =?utf-8?B?VkhndldTd3U2OFE2aVlUYk55YlZxdlJreUd6QU93VEJtZ2g4d05sbFRNc21X?=
 =?utf-8?B?VXk5MEtVeUhrSWJLWm12c1dCTHZvSW92ZDdYcjBuTDlURWlzWm95UnZmMFhn?=
 =?utf-8?B?Wk5rVDZLdkJzZ0lWWEVKVWJ6ajBTVk52OENKTTVKeGZ4YzVCeHJMcWlyWU9h?=
 =?utf-8?B?bVhxUW90bUxKMUFPNUQxV3RaTm5JMXNaSWdyRlUxSlRpb1pXa05kYTE2M3Vn?=
 =?utf-8?B?RnRaOENrVDFOMnRBWjlzekd0S0VFZzNmRmd3S1dyWjlDMVFJSytkaUEreWRT?=
 =?utf-8?B?MmxlUnAvaDJqVWhiQkNnb3l6eEd2N0djcjVNYkJxRTBKQjBWRklRdm5oVHRB?=
 =?utf-8?B?bXh3clhLZ2J3L1RGbkpVWkZHWTNRempPU3IrQU1vWkxQYmFyMTR5aFpUZU5h?=
 =?utf-8?B?K1lobzFIc2VvV2ZYUVo4SWwzNnVCYlJta3QvN0p6TEtWS1J1MUt4VWZTalpT?=
 =?utf-8?B?NC9nQzM3V3hzbDF4a3dGTVVnQlplRUtVVGhUYTYxdUR6Z0NpYUIyK3J2UzNj?=
 =?utf-8?B?RXhqRXp2S1RCM0l3M1BVendaRmdIWjM0MmNScXNQNnJrYTBmM3hzcEQvQVB1?=
 =?utf-8?B?SGNWdHlZS3phQ1BSUUhyb2RMRW0xcU1LekJHRWNvaTYvM1JGd3dMemF0V2or?=
 =?utf-8?B?alFXWENHSzhyUHVzbWxmVVhCaTM1VU52WjVRa0tHdysxK3FGMnFnRzM4RG41?=
 =?utf-8?B?dEVxTVZYeUs4VmdHd1llazB1SmJyOVgzcjVSRC80SGVHWEVuYlgxc0NtMHA3?=
 =?utf-8?B?VGxXWU5RaTBoUjVrN1pHWHBNK3J2L0tCNkx0aFZsSjZOVWFmZDcyYXNpU2No?=
 =?utf-8?B?OGZsS2gwK1dEbzk2S1dON3B1cGZnZXlvUm5vNjVPelByYUxrYVRHMUlDWkhR?=
 =?utf-8?B?THh4NTFBNWdHcVpCTEdRQkZMcXpjdGFORmt5MUI4MW51b3J6bktwd1BrOERL?=
 =?utf-8?B?MWlXWDkwRE5wYkNlVzlJU0JGaEIxWS9OK0JhVkdhQTZidGdxZ1F3Z2xDZnBR?=
 =?utf-8?B?VDZJWHViU3FxcXhrQm5BSlBVSlQ1NVp1UGxyTTROZFFHbVNDakxNY09kVmZX?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aef998c6-8397-442e-b13b-08ddc95cd007
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 20:17:42.3382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OMNC8Wv39d0DiDysZzlD0ZINBtxNvr+D4993H/i6/j8f669D5pYPHc82/U7uSxtCp+xW7gOaL6FBcTzL7XG8vAsWBGWcnYGyJ1t42P+BdEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753215482; x=1784751482;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/bKDigkFRsZhfn2vSXypQ+AdcH1UOYAuAIXn09KAhgI=;
 b=ZcwIoJTRAcJSkb1+TQ0RHtSVg0hYllOmGuJNxdEAtQN63pJOnXWwWk/w
 D0JfEtsfEatONYPYb6Bb2H1yB5HSJF6qD5RqIihd6teXB9IetLTUn7b7E
 6a2HjN0bN51q0VHE/ohVypkZuwEO2XnVsZmlNNOIvM1E/A8x+yG0BtlcM
 lAtXPnsrMEqZ24/rXyU3BtfRk9T8YH1HejYG3KsaRBA4Sep44bS8JMcxd
 BiiFVOI9ozHcX/LE44/36EDXhegSXvpeAzf/LV17Oy8oJpn5+iEKMNJHK
 fPyzX8X1QiuLxxEgLWwBI/6V+VM+X0d9oILG+etXgtXBSoXVKuPVi2X9v
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZcwIoJTR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: replace snprintf() with
 scnprintf()
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



On 7/22/2025 4:50 AM, Amir Mohammad Jahangirzad wrote:
> In i40e_dbg_command_read(), a 256-byte buffer is allocated and filled
> using snprintf(), then copied to userspace via copy_to_user().
> 
> The issue is that snprintf() returns the number of characters that
> *Would* have been written, not the number that actually fit in the buffer.
> If the combined length of the netdev name and i40e_dbg_command_buf is
> long (e.g. 288 + 3 bytes), snprintf() still returns 291 - even though only
> 256 bytes were written.

Hi Amir,

Thank you for the patch. In practice, this won't overflow [1]. However, 
this code can be improved. If you follow the thread, there's 
conversation of the changes that will be made.

Thanks,
Tony

[1] https://lore.kernel.org/netdev/20250714181032.GS721198@horms.kernel.org/

> This value is passed to copy_to_user(), which may read past the end of
> the buffer and leak kernel memory to userspace.
> 
> Replacing snprintf() with scnprintf() fixes this. It returns the actual
> number of bytes written, ensuring we only copy valid data.
> 
> Signed-off-by: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 6cd9da662ae1..19a78052800f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -70,7 +70,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
>   		return -ENOSPC;
>   
>   	main_vsi = i40e_pf_get_main_vsi(pf);
> -	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
> +	len = scnprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
>   		       i40e_dbg_command_buf);
>   
>   	bytes_not_copied = copy_to_user(buffer, buf, len);

