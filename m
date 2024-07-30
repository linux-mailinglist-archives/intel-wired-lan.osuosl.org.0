Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81580940DBE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:33:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C6CA6077A;
	Tue, 30 Jul 2024 09:33:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9mI3R53I1OXk; Tue, 30 Jul 2024 09:33:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6157760781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722332035;
	bh=YeKZJI/ERg8ArzkKClNoVzxAcIcSlxvsTfIBMcqR2mY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H1KpTJvJ7GhU3DjdbtMZvo8RR4uJwZNdmBR38ysoXuEMOvTWpDqFFkZ45Rb8svSPi
	 YOOnGiMaHDgiyNUOBP6Xzlab6q5btHCvqugO5fKWmixynLvon1gEjk6FrDqECDqAyd
	 nAh82+mUg/8eoR5qaub7UO7mkL5RZubE45jImsTlcjr6XsaTCh3vvAqOAanJztHXE1
	 IeHGEM+kqUtcMBdK4esbjbHN7c9eOHo6iLFdf//l/HA4uZC/jQ2KQI9N7xF8nJdY2e
	 MaynKGAKSpuhKonjvroegUJBqRH4m/K1qmVb3ayehyY914u65heM1mLN6ikeDF7vaW
	 nCJnDTynLy/nQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6157760781;
	Tue, 30 Jul 2024 09:33:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 711B51BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:33:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66B6340609
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:33:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B-oK1EDdvaEG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:33:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 642F3405FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 642F3405FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 642F3405FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:33:52 +0000 (UTC)
X-CSE-ConnectionGUID: QK1v5y8sQ+u0DLmWwyKUaw==
X-CSE-MsgGUID: cZQSVORoS+mFs5MhzBoBow==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="24000705"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="24000705"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:33:51 -0700
X-CSE-ConnectionGUID: ygSwjAfYSS2dmZtxRb+5pA==
X-CSE-MsgGUID: zGhqOwvJSiCXT387CJALaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59357661"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 02:33:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 02:33:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 02:33:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 02:33:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 02:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s9P1RLh5LkZW2kzRr5UrTPvpc1SGueiCKL2MNS46MVjDRA4pmK794L3AHUxlymymygJl1Obq2T+x5vavN39QqiC0ajfpkJPeFr0oY5YLdgS5oFdWt/pC5GgA/AGk1EVQemgX/+HbC8EBhQY8g6vFE+0amI4kLGegyEs9GPBMTBLyww67zp93Emqw0yzt3gQ/HXFXU3pi601H1XYb4kSxTLdD3B9ZsTOnsE/kgF+HMeRUhy+CQKVinpFn2SiJCjEImQZBQSRevG49CjRVPmPHhgut7uoQLMVB1zwngMRUiNKCPd5wwKbJmyeeJMxxsjjF9ANcpBzugQRj78ZvK5RvBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeKZJI/ERg8ArzkKClNoVzxAcIcSlxvsTfIBMcqR2mY=;
 b=zQkaEq+MCH3Ppw1g4hjz1kbb15AItG+9V66uvkJocVLPhytGl9R+prdd/H4YkIwPneMknTdrK5N+6UIcl58mD6NA1zniH4D9fRUrgO/9wgMgEIAzqa/4i0YS8HwDrU8/ZoO5WyHgWgOemn5dQUk5tWL4K429Xm69yAlQEqCEqG+Q8MkJN7874P8KB+cqasPzvR1kLc22yGjzGrcBhBPeZhLiF7C8rXFRvQoreKOz7yzWLM5kYgUw028vsgtY5sbX/0BHnvyFEtCKVI0p9JzGSVIwvAMCEBmhtnZtCrJKOWcWCaxRAN7DQkz37dwTibAzwG+X4/E2Pj8YPObfylVjTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by IA1PR11MB6417.namprd11.prod.outlook.com (2603:10b6:208:3ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 09:33:43 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 09:33:43 +0000
Message-ID: <f1ea076c-e576-417c-9ecc-abb4aa7ebff7@intel.com>
Date: Tue, 30 Jul 2024 11:33:34 +0200
User-Agent: Mozilla Thunderbird
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
 <20240712093251.18683-4-mateusz.polchlopek@intel.com>
 <20240714072333.2fff045c@kernel.org>
 <f1eb7226-0af7-4475-a57d-e3293dbc1071@intel.com>
Content-Language: pl
Organization: Intel
In-Reply-To: <f1eb7226-0af7-4475-a57d-e3293dbc1071@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0177.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::11) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|IA1PR11MB6417:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f6c546-b563-4e73-2c10-08dcb07ab3bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2pnak9aTUxYNUVDc29WVlRVY1l6RjhDTU50a2VGMHdtQ0RQekpDcENIWFBa?=
 =?utf-8?B?bkJLVmZUVTYzM29tU1FZdExrbzhWeEx5UFRVNXNiUlpDdE5IRmNKRWlNb2Ez?=
 =?utf-8?B?a0hxNll5MEVSR0tNMktLZExZRXpaMlhEOWFlZWhjQldCNVVjaDRzakJreEVK?=
 =?utf-8?B?YUZKcVhIMkhvRW5vM1pDR3hNR1E2QWdqOWNzb2gwcnhvWFpuTllxejM3andS?=
 =?utf-8?B?RDVjS1V3aUw4Zy9IeW5CZ010amFDZGh4ekVpV28xdmUyVm12cTcyOWwvdDJp?=
 =?utf-8?B?WnUrQUJkZkRjcTJJOUtYM2QvaFdjNEZ1ZE5SaE9IV0tYRWxJaGNKcGRSMHph?=
 =?utf-8?B?THRaZUsxOFZ4Q2pJMkdBZDFqcTNVVTJ1bGh4V0hkWmpRaVVTb0orWTFtRFQ1?=
 =?utf-8?B?Q0ZzTXZuNzZyQUlZTlYvY3dycmZ1ZGd4Mi9Va2hQUkRjYlR1U1J2dmNjZWo0?=
 =?utf-8?B?SEpBZFFOemI3Qm9hdUZzQVNUaHBrSXl1eHNYcC92b0tQQ2lxdzBzNXpCRWRY?=
 =?utf-8?B?RnNnZmtLUVVJcmN4TlJXeC95RWllSVJCNWNhQ2hwMTNGdzNIUS9TeUIram1G?=
 =?utf-8?B?d0gvYnBhMzR6TzcvcHdHVnJFUkd0VXRvelkvSHBleGZsbDR5M1JMN2w0ZG0w?=
 =?utf-8?B?RTJva2I2c21rRkdUQUpnV2kwWWFYRGpGR1NqaWh6cEprdHZucFBGUWZkSUk5?=
 =?utf-8?B?UXhkaFF2SkNtM0xJMHFMUHYvTzFhWVVXVVFRQjFrekl2U1JXeDRGR0RqY2pj?=
 =?utf-8?B?VE9pQTFLWFo1d0UydDdleGE5bTFlRWYxZEwwRWVEZkkvdHhsVEZSNFlsczFh?=
 =?utf-8?B?WHZGc0lmVmt1YnFtVlA1VWhWakRPN3lpaU5OdUlGMzhBUXV5dXh5eGpvYkRz?=
 =?utf-8?B?STRVTUJ2MTR5RHJ5b3RzMkdUZWdRTUxHRHBKR0NmWEg3djFIMkN0cFIxa2FL?=
 =?utf-8?B?TGlYbGR4WWZsY1ZnTVJYaUJVNU9RWFYrdE00VjZVcnM4Vyt2T3RQUEEyR1Ez?=
 =?utf-8?B?S2VxVFhuWG1uY1Irc09kQUlFOHFoMDlBWEhia09QYzVxQzlZOThCdTZGMTFH?=
 =?utf-8?B?UHlTbWdoS0cxOE1DNUI4ZXJTUlJ6MFJIU3h5M2NBZzVnQWcvc0g0dWFiNXgr?=
 =?utf-8?B?RmR0YzFTK05rcjhxOHhUaENFRCs0VXg4b0MrUXhYQW5BWVlXYUJicG9zWWFw?=
 =?utf-8?B?N2duV3FSRGtJaDhIT3NOdWFoZkFSbmsvcmVFTGY3MnYxZ20xbEI4RVFueUc2?=
 =?utf-8?B?Y0MzSDZ2ek12bTY2bVlneitVS3pmdEt1Rk95L1p4T3RMVE1jZVZuck90NjNR?=
 =?utf-8?B?SXV2bUsxNmg0MDFwdk9TN29iNXhVc1h3R0NVV3ZqeGRxZERZR0lObGQ5WVNl?=
 =?utf-8?B?NnNWaGd3Z2c5VjV4QWJCQnJ6dS96bEdBQXpvaFNJQ2RmWDZESytaSnNPQktv?=
 =?utf-8?B?eHdqS09JaGZZdGxlTG0xclNOcjRkM1Z6dnV2SEtaaHlDMElOMkE1YmZLcmQy?=
 =?utf-8?B?Y1QzQXlEUTh6L3gzMUxza0FJbXhmeEZpWThmWUxVdGN1T3p2bno4QUNYbVVT?=
 =?utf-8?B?cFZmaU1aWldQanhPMlowdTdYa2lPbVN6UTJ6bkluNHRaTzNveE04RS82WEV0?=
 =?utf-8?B?VmhnV1dqMVlCdkZMdlN3TFc3ZXg4MERhWEtUYnRSN1VNZmFBTkYxbVA1WGtX?=
 =?utf-8?B?UU1GQmhiVGsyS09xaHRZOXdnYW9QOEV1dDZXQ0tSQnlObWM0dllJcXNVY3Fi?=
 =?utf-8?B?N2RGUGlwdENNYlREMVRDTHBwV2ZaYU5xNWd1NVpMc2NPcGJqR0ZDbHRZbGYr?=
 =?utf-8?B?Rk5qbWVUL2pyb0ZhdHU3Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVEvd3JnblhXU01Ga0Z5RTFZdjFSb3BOOHU4cG9mNlE3TllnZ0JFMGl0V2tL?=
 =?utf-8?B?R1M4YThWaEY4TzVkNXRvUzdBL1pYSjQ1MzBZMk9iVU1jK3ljcDRKRElEUlRW?=
 =?utf-8?B?bzFZWlJVSFJXWmdwVWJZMVl4K1dsdS83Q0JRWWxPY3BQQ0Q5VnVQVmFvZCs3?=
 =?utf-8?B?Z0tsWGNuNFIzK3ZGRHM5VWVTWU8rcFRuc1lRR00wZDBDWE9sZlcrY3FiLzNx?=
 =?utf-8?B?dnUwazNHQUlkWi90WjJWMjdneGZkdDRYeUZCc0JWYk54V3lPbkFxN0RXYmcv?=
 =?utf-8?B?MGlmR1cyT2IxZVo3dXJLRGxuQVFUQkdzUXI5UmwvWFpyOEZJY0ZITEN1cWxa?=
 =?utf-8?B?eUFNMWd0VG16Zlg1UGdyVG1Ra2gvNGFrS0pQSGRkdUZwZ0NHUmg3dmdncExr?=
 =?utf-8?B?NkN4NWVQRmNNdTE0ODlsSWp3cHBiT0FRYmRjYVpQcVptRHV3d0h2WE9ZaGd2?=
 =?utf-8?B?VkorcnpPZE9oS3p5UXk4RlJMc2ZCeEJPbHhtY1VMWnRNVXRCNkRINzErQVFC?=
 =?utf-8?B?ZjVRcGZ0N0hpZy9tdkppOEVFalNxUm81dWRRblo1TDhrN0NRc1JmcmlYRnVq?=
 =?utf-8?B?cE1aRFhXWnJyUG5LNGVqRzRXN3FJalpqcVFjdTZaMm5tbnZ3anJjTXlURnN4?=
 =?utf-8?B?aExCZHRTVlNvM01sRDIwVmYveFBjQ2t1RFo0SC9qcWFiQjFGRWI1R1ptZEpk?=
 =?utf-8?B?Q0x4L2xRRkdaY1NLaWFwcnZWQ1N1RWFBMEtVUCtHSWZRemdhV1paNDlQUjUx?=
 =?utf-8?B?MmRaN2hTMjBmZkxIa2xhd0xET2JHZzh1UGpGYXI2eE5NM0RYeWhVcU5hTnQ0?=
 =?utf-8?B?NXlLczJkY0hrKzBMMnV1bS80Tk1EbnZvSUp0di9xUis1RFF5eWVxQmZjY2lN?=
 =?utf-8?B?aGc0c3MwdVFXL214Zjl5Nm8yaHcrN1JsTkNTSmlVN0ZGejQ3aGhRemkrS2VT?=
 =?utf-8?B?a0xJaHVMK0JETDVBOUJsNElXODFzY0cvWFdFTDZOQmw0SWFJMTRlSFhtRG1q?=
 =?utf-8?B?NlAzUldDOXFlaGlDbTY4clFtNlFlNmREczczOWw3d2VuZEdrdUZSYVM5YTJp?=
 =?utf-8?B?N3VvVk1YaDd1dmNhbzUwNnpCQmI5cGNzVkxiekx2NzBOSjZmampoYVhTTjlv?=
 =?utf-8?B?bUFtZmhaNnNXSkJMSUZDbWF3bW9BckNBallCTnhsY0FnMlFpT05lbi94cTds?=
 =?utf-8?B?c1NXSkZjUGxQdXJYV2E4bUpvZTJXS1d1SDNRYjU1TmthOXhZQkdMNzR2ZHh4?=
 =?utf-8?B?NU1KRlhwMy9SL3pjY3BDUi9URi9ZdkljVnRyNGtPUDlxSkZUQ2VORzYzZk1I?=
 =?utf-8?B?UXVPZHJaUHNmVkUwZWNobnJ0YWFHQVgySW5PMmdFR1N5ZU8zZm1OQUc5QVht?=
 =?utf-8?B?WEI1VXc4RmM1L0xJMU5iVndSakJ2Z2w4eE45N1l6Smk5d0ZTeVgwaVNKYWdB?=
 =?utf-8?B?U3AwSkQvOXpybytxVkF0THFBVHoyS2Rsb1hoeTR3NTFpQXFML1pwY0hKVXJU?=
 =?utf-8?B?MmhZeWhnb3V4dmJ0SDN5d1VENWhacmJYc1FRbXVPUEZlajd0UDVWN3htZ1JP?=
 =?utf-8?B?N1ZWeTM4ZnVkTFM4WU1TRDJiN3poVG44UzIzVERwV3lLUmNXMktDYjhrWTNV?=
 =?utf-8?B?QTdRVG1LcGhNeERibGxxV0xHcU5xY1NnVlRKa0Q3NUN1ZmtLaEx4TlhwZjFR?=
 =?utf-8?B?anFtZ0QrNDRZdDVWVzdiK0U0Q2t6S3oyZkdyTWRiUE1yZDZ0YjlINzBaQitC?=
 =?utf-8?B?d2Zkc2lPZ0ZFYVBDVTJZM3NGNnBjNE9jdmdrbjEzcnUxQXpxSE42MVBxK01w?=
 =?utf-8?B?OTIvckRtQWIzUXV1Q0ZlVkozTENZclNUcnN2SUUybytJNEVhekREbVgvWW84?=
 =?utf-8?B?eVJKbWpVRXZrei9vUGlSK0duNkZWTFZyV01MWEhQMjdBdnR1UXhsSVJYbGl4?=
 =?utf-8?B?UVpNNU5vQnZmQ2JyWG9CaklrZ3E5TTNnM3d2REFoa3F1cmlRZ1VvRzUzS1pk?=
 =?utf-8?B?UkRvSU1YVHg3OEtubllxeXBQSmZUdXRud21zbUd2V2RIdEQyVjdRV1YxUVhK?=
 =?utf-8?B?RmVDYTRBTVlicXkwY2tFSmN6L1RqUXlLeG1BZjBQQWY4OU43K1E2WjZrZjJV?=
 =?utf-8?B?WjI5YUMrd2pXZUJEWEp0SWE4VWJvUjNZazkrN1FLVmNjVDdtRU45SzdCQ01h?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f6c546-b563-4e73-2c10-08dcb07ab3bd
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 09:33:42.9894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kIPiNXRznMhnssXFUUFLYTyDfnfRN4H91PEtyssORSQGywAK5Y9ttFq6uQc/nnPflJGGTwm2Mt7rCv9UqQgd3AAL3rIyDSEGnGe3zzJQa/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6417
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722332032; x=1753868032;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+eO2uO7JYWpLUmnyjkv2DATEMt7h7zpMFhXZdm44Zyc=;
 b=P01FVI3spC6DaFKe9RwFo1O2dYHeI4B/yzfIb+PXoAyeKvrNLqWX8RBT
 d5TepUKSjGwp0Fav6Ou+dYGXkzFjlIAuolZT1jwzWKlKCtBsWdFXUmQzJ
 5Sru9oAUlcuVjgNsHJNfmtE5jo2cPzcUufnTUFZMwoOkDbeV3SoTvKesL
 DbM0pLxf3KYwnFky9bB0Hvj6Ho6cgd5tMOvndQgaRcbT3/JZldAKt+aqw
 1YxnvOVlU+7381/fS13UKKgUNbrJviXl1d3dusS/LE+Pv3xWTgvHrKQXO
 oX/EOEqzzebcXMWKrJAPSGytlr8hXkkooRMoUN+ky13mpNv7I+CfHX6vS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P01FVI3s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ice: add Tx hang
 devlink health reporter
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, joe@perches.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/22/2024 11:23 AM, Mateusz Polchlopek wrote:
> 
> 
> On 7/14/2024 4:23 PM, Jakub Kicinski wrote:
>> On Fri, 12 Jul 2024 05:32:48 -0400 Mateusz Polchlopek wrote:
>>> +    err = devlink_health_report(reporter, msg, priv_ctx);
>>> +    if (err) {
>>> +        struct ice_pf *pf = devlink_health_reporter_priv(reporter);
>>> +
>>> +        dev_err(ice_pf_to_dev(pf),
>>> +            "failed to report %s via devlink health, err %d\n",
>>> +            msg, err);
>>
>> My knee-jerk reaction is - why not put it in devlink_health_report()?
>> Also, I'd rate limit the message.
> 
> Hmmm... That's good point. I will talk to the author about that but
> seems to be good point Jakub.
> 

I took a look into the code and it seems that we do not do auto
recovering, so also ignoring return value which always will be 0.

I will remove this error checking in v3 version.
