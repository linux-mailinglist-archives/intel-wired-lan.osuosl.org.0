Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B27C6C972D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 13:05:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D7A940CB0;
	Mon,  1 Dec 2025 12:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fPHpiFO-IvF; Mon,  1 Dec 2025 12:05:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E0C640C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764590753;
	bh=MiTNiZunY+X2veg2Lxprj/79/njs+dEpymXjcJv0tBg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DYaIQy0bmVYQfaqO1cNEqRa17eDfXtCuk7HnMqnM3X/YmgbvQKwXZHLrXhTrXdq2m
	 05j6RGTGZxuDBR408cSTI/FeSw9JswO4MIIHfEQRj457fOuD0rdbn9uCDcnCMJfxN8
	 G3ZjeqsShOlJqNi4ChUsEsN6Hx14gmpGq4eOgV4udJGUv8pxKx0UqcaQGtUdTI91DU
	 EXCobm3nla0b+bPUY0scMMxA6bD1pygfS7vr+QaKJm0+X9OWldF/9tRQnC6iAmpkl2
	 Pj2rFEFoFSo5oXCDqid/eafeLJctTt9F7zpXcCkShDV86hGr4k/eA0ZY20sNkAVtTV
	 iDavLmtRIU4cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E0C640C0E;
	Mon,  1 Dec 2025 12:05:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF3DF1BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D579360EA7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:05:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HCoeklibjiN2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 12:05:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CF3BE60619
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF3BE60619
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF3BE60619
 for <intel-wired-lan@osuosl.org>; Mon,  1 Dec 2025 12:05:50 +0000 (UTC)
X-CSE-ConnectionGUID: 9Z8iAxomSrWcQ2MpEr6NoQ==
X-CSE-MsgGUID: MUfdyZIpT8yi5fGGQW1kQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="77157710"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="77157710"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:05:50 -0800
X-CSE-ConnectionGUID: brXlcGikS1yrYejT2JVkhg==
X-CSE-MsgGUID: Osv1nsUCQ9+kbqE/8kcvGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="231357434"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:05:49 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 04:05:49 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 04:05:49 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 04:05:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g8jwxZGdmkjozDrLjD/8lK1/IKl/DXtuutJ1dJLYrTqzwETMS37ryECo6v6K9FE9ZpiBpqAz6fsbj2OlkSDmn5tmU5QHXuD6DiTKpscUSzT1AlwTb+7og/+Olcn+5lgRK2PbYAr3E+3JLnAtpe1e86YUmXjYMWy0W6I+rOYi5OR1ylUx0ooajdem1mh20Bq67s8aSstTkrZiO9wxwFMpPefftBv4sy3ZR86hGqVTDIGx2o1wJj98MXpP3k2K6CJXkuzNujR61LKjWMDlTheaoWO8ZbxmqSO6+7fvU98noDc6zJ4KE6SweC3jVL2t7QK43GbtpXV5ENL56aM4n+6mFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MiTNiZunY+X2veg2Lxprj/79/njs+dEpymXjcJv0tBg=;
 b=HjObpKIWgGUSYRk51G1YOMNAt9CK4MtFsntz1o4qiivB/OR12tSf4srl0qu6yKyoGBwq3zrYHrNNq9Yu27Zl5n9kDMbTz/DPjP/7iILXVsCwv8nJd0nZeIZClN+f1Jgf5Nhpu7LW8BnyzjIYYUuJd9bnVL6jqpuoLhC/NXgpDXsfBtJ8xmODvxq44qmhYtoUhQPi/m+yrWkBDHQ0xTAaZSYw0VLGspEHDNqpcptjssqNnMGwjzHwPNtNm/scsqcttZTlCrqe4up+tlJNyhaJu+c/m/ihNQeuhvaeRaz4KdjbA1MeABP5T1FF3whKxEhS3Vh1wWlIOOplnJcS0X8yyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 12:05:42 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 12:05:40 +0000
Message-ID: <dfa8b826-4f8b-4389-827f-82102239531d@intel.com>
Date: Mon, 1 Dec 2025 14:05:35 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
CC: <intel-wired-lan@osuosl.org>, <netdev@vger.kernel.org>,
 <andrew+netdev@lunn.ch>, <horms@kernel.org>, <kuba@kernel.org>,
 <edumazet@google.com>, <davem@davemloft.net>, <pabeni@redhat.com>
References: <20251127043047.728116-1-vitaly.lifshits@intel.com>
 <a60a2c81-658a-4bfc-a0dd-59941676bf00@lunn.ch>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <a60a2c81-658a-4bfc-a0dd-59941676bf00@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::10) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 785dbc67-2923-4102-5ae6-08de30d1f1e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzlWbjZDZFFXVU8xSHZtU3UvRVZhb2NXL1FKVnBJNE1PQjkvZGhraFlpR2Zr?=
 =?utf-8?B?Ry9NUTU3YUJ2eEFpUThNZ0w0TVJQUE15MGNvNEw1NmJUdGJQS24zaHNta3Ri?=
 =?utf-8?B?L1EySWp2RFlYK1o4YmJxQmFmVDNjQzd4WEVNaVMrWDdiN0RWNG5ITE11Q1NP?=
 =?utf-8?B?aWpQSkQvakVRSitSNlVQcnpQZkFPd2Q3Rkp5MURNRzZUdE1mMjQ1UWZhdlFE?=
 =?utf-8?B?amUvWllSNDdZR0sycFZsSkU5L2Y2ODdmYU9YQTJHVVpLeDQ0NXZWZDBBYUYr?=
 =?utf-8?B?Wk40NVh1UEVoWVFtRndBRUJSbk9OcllSd0ROQ3cweVRTbmJZbS9NTEJickdQ?=
 =?utf-8?B?SFp4bXNiSHpORmFCM25OcUtwc0pOSGxGUE1zNzk1d2RnR2E5RTJDRDd1a1F3?=
 =?utf-8?B?WjZJSk5MKzFVVGRUa1RLMVIrdngrTDdCaUlTYVFnSTNtRHNuV01tajFWR2JT?=
 =?utf-8?B?eG5nblpxdy9XRGh1WnVPYlRkS21EUXE0ODAyZ1F0K01vTmhCMWNvUzFjekFK?=
 =?utf-8?B?MU1MeWFiWXhJWUVDU0hqVkpzc2VsMHdZM1F5dnlwZmpUM1ppajFwMG1yRlR0?=
 =?utf-8?B?eXBlaUpjL0JJV3FtR0ZwQWxmbGZKL2dmWTRMSEFyeDIzaVBCRUFGOWdWRXJo?=
 =?utf-8?B?YXRCSXdyemkxU2ttVXlyMkMraFQ1dm0xR2RnQ0pwUjRrNkFVVTVNQWl3SVFG?=
 =?utf-8?B?U3pjMUFRazhLeGtvSkRGZzdjcXVLOHBPNm5scWJBQ2ppR2FPWVdUeW9CbzJW?=
 =?utf-8?B?SnNNeEpvTTUrcnU0ZTB6NldEVEkxOXBpMlo4ek5wV1hUOHBvekNidlJoR2J1?=
 =?utf-8?B?VFR4dHJHb2xYZWJyU1F4ODBSY1ExZTkyMjlxNWs0bFUyMGpXQnoyWXZNMll5?=
 =?utf-8?B?NUl6a3NLelhlSWNyMmVJOEd1RzA2NzlrSTUwekZ5TkUxbnUyUjV2WHZRM0kr?=
 =?utf-8?B?UHdER2xNTHBPRlpVVFNrRlZQMGRObXBMNE5lMjZFZk5uNzdCbUkvNk1QV2Rr?=
 =?utf-8?B?dlZndDdQVjdwY29hbFRJVmpKd0ZJdjNJTG0zeU5qQ1ROQ0JCdURYV1hGcDJs?=
 =?utf-8?B?ZDV4dHVON1E5WUh0Nys4TDZ1VWVmRWZtbmpDYksrOFBqSFU5ZE04OGhLakww?=
 =?utf-8?B?eHpsRThNL2pHVTFob3g4ay9vWitFbWNBd0lCOWp3cmRNeG1TOGNkczNVY0Nr?=
 =?utf-8?B?YUh3eG1NekIvRmcxNVYrR3RRY2ZnY3E5TU05b3c4Y0NDajlabm8yZkoxczJl?=
 =?utf-8?B?WjdoWkNaVlpQVDFHWkRxdjJkdVA1RnRuOC9JRVJRa1d1WFRyKzNLUHNDRzRn?=
 =?utf-8?B?cDd4VGNUUjViVytjeXpCREZxMytWMU1PVWFPMWpVYnJoaHlNc3gwTkVFVk14?=
 =?utf-8?B?c2w4SktZWklYVncxQ1VXTDJ4Q2Q1bnFDWldidC9WdnNDWG9vaFJqa0FoRHRr?=
 =?utf-8?B?Rk01ZlVBNU9nSFlvcHcwTUsvcFhRd0ZVSGVwbzNkN3BOZWUvQVJRTzg0RG9C?=
 =?utf-8?B?ZlhWb1JPRWZoRmpzRGRReXJ2aGlMZVRWeENGN3JTbERLTHA1amhBT21UM0JN?=
 =?utf-8?B?STRicXljRk9IVGpuMndyT3BFYXgxYjdVdUkzWFgvSC9JVWdWRWdLY3NMQmpv?=
 =?utf-8?B?Q1IwVFRDSWRCT2Y4NjdaT1VZYzZoYzdPTHJ4RjM3SUcwcXdrRDh5bitJdW0y?=
 =?utf-8?B?VWVSOTBCcWVaUDArVGlTZnVCa3RqdnNHQXdROCtmZnJxeHZEa0lQZTlqNzZz?=
 =?utf-8?B?SGlRcWxQaFRqM0lvUkFZL2N6WDFlYVZxZk1pd1M0NGFGTWFJSnFpWTN0aGFU?=
 =?utf-8?B?WS9GMzBlM2RaaFZkanpVSVJDb0pzTlhHU0x1L3lFaWYrd3V2bjRDRzJ3RTVI?=
 =?utf-8?B?Z3IxYmVyaEtwK0tYWmNhbVBucU8yRjhFVlQ4emhsamlOcE1rSDM2UzV5cXY4?=
 =?utf-8?Q?cUU10/Q/hJDDr6hsXWubRm++tTyqoIjg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXN6VDdkWXRObmtlb1NVa3QyVklTZDh0OVR0TjZqUGplVHdzNkNrUFltdm02?=
 =?utf-8?B?Y3NRdThrRWFjaVR3dEVEMSt0U0JuNGxWSHM3V3VSRFlxcFdMd3hBcldWSFlW?=
 =?utf-8?B?bGFwT0ttUWNxS1ZFNU1JY1N5YXU4ZHROcG9KVTRub3FHd3Vqa0h0b0NuQlNJ?=
 =?utf-8?B?VmpaNzhLWXVmQnV1K2dJSTdONTJ6Y01SRXlET25tMDVhU1VNbHNmNzJFeTJU?=
 =?utf-8?B?cjU3LzVwbGRkRFhzSmNJZjh0ZjJXVThVU1pKNVk4NzRBZXY3S05DRVl5TEdy?=
 =?utf-8?B?WEJYUDFUdzFrMThaMWttZ1U0OHFFZGIrTTlPaUFhVHBwakxVUS93Tyt1VDdT?=
 =?utf-8?B?dElMQ08rTHNCZ0hFQUlRRlRIWjFlVklLSEdUd3VDU1RmY0JoT0MrZjFMTEpw?=
 =?utf-8?B?NmVrOFpLNU1RdVRjdnJLb2JaeTZoVk9kTlM3Q3NHSXBZMzJJYWNSZmJFTmVH?=
 =?utf-8?B?Y01HdUx6RDhPay9sbis5b08rZEF6VU1seTZGcDJhWEIwYll2N25sbERuOVp2?=
 =?utf-8?B?TlNnYjFLT3B3VkRYdlZTUFRsMnNRTUl0WW9Zc1hOdDZMbzFlZE9FNHlIeTdJ?=
 =?utf-8?B?ZjljWTN0QytMQ3A5bjYwcFBYUXpvM2I4SDJ6T3F5YU5Kc0VFUVNDcWViZmhT?=
 =?utf-8?B?S3pkN0RHK3BzVWxMVVZQQnNzRFh2VzVvSUxFQTRyTWJsbXdQeU1YU3M4RXEz?=
 =?utf-8?B?Q1hwdVgzUmpLeVRtODNOS1FOd3dNT0tSbGRYOTFlbE55MmdndGdVQWlESFZP?=
 =?utf-8?B?SkZPenFOaHphWFNrenJpWkl4QW42T2E2Tm9HK2laQ2FuczFWemh1OUY4bmgv?=
 =?utf-8?B?OVNXc2srUnB6NStFWGZIM2haZ2JJTExnQS8veHFocHltWHo0Y1Vhd2xlZFRJ?=
 =?utf-8?B?UzQ1d0tXQ1g5QTdIVWdXd01OajZJWEtiTGdUQmd5YzVuWkdDY0VQVTNXNWJE?=
 =?utf-8?B?VXdDVmdHRHNvbG94TXRWVlVSaWMwbjd3UkJ6U0MvZ21MdXBodHBmQm9iN1U5?=
 =?utf-8?B?cWVwS09vUjdMMko4V1pjcGcrc3BONERqaXI1NzdLYzVZTWJMWXU2QWxCWlJ6?=
 =?utf-8?B?WWsxSnBRRDVYZHFPZG8wUWR5N1htb3poUHk1RFJDelNheC83bVI3eCtTeHBz?=
 =?utf-8?B?MDlmU08wbDF1M3Y2cFlLWlR2QWUzbWQzOHIxMTZua1NMcW03V0lFQ0JTN0xh?=
 =?utf-8?B?ZUlMZ1k3WTU0Vjg5UEVmOFZlMkdnNktCamtER0IveVk3d2xKOEpPR2hSMFR0?=
 =?utf-8?B?WkJsQ2N5S0paS1piWXFIZXpCZWhxVXFrRm8rYkJ1M1oxNHgzWktxVUxNQllY?=
 =?utf-8?B?UXJwRmh5ajhlclA1UmUzb1RZcUgxNVpoN3ZJWEFvK0c3R3hvekRKcHM5djBt?=
 =?utf-8?B?VVJub00wY2dxK3UrZGlabEhIdmFkaVlqMXEyaXFGaEZGRG1zbGFQRU9xWWVy?=
 =?utf-8?B?QnJ6dko2R0hiUVljazJ6ZVpnQXd5bFkxOXZRK1JVY2pabCtrWWVzZlk0N0NN?=
 =?utf-8?B?Z2VaY2hHZXdCVXk3bVVIbkhOVFJLM1FkRTVyVDRsZkoya29Jc3BWbmVmelI5?=
 =?utf-8?B?UTdWOTNncFZiTlViSEV4Mmx3TyswR0dlQVJZMmhvNGtXSWhZbU4xRXQyV1VR?=
 =?utf-8?B?ZnVyMEVGQTB5Zjk0bDRjckQ0Z1ExSlB3Z3ovTjluSGN2YjJJWXg2TGtiYkJi?=
 =?utf-8?B?MzhhMW51UTJzdXZCbmZDdmd0SlVLb1J2K0lGQTN5THVKbC91ejc1am9LbkRj?=
 =?utf-8?B?UVFlb1NodVY2SjVXRjBsaDhJV29vR0luUm1mTmNlY2ZieXJYMkV4ZHcwUUla?=
 =?utf-8?B?azVuUmNPMU5kU0Z5MG1rdURKUXpzdytKYy9OT2hLYWVsaGcwa2ZRK3VOTFpV?=
 =?utf-8?B?QnErQll6d1J5NG8wTFdCU2dMTW5UYzRCdEdncVc3Z2hNSFdUNGN6WTRCanJP?=
 =?utf-8?B?ekwzWWtRZ3JLMDFTc0duU2tOYW9Xbkd3bS9NZWVkNFA2eDB0UVhkMjB2N2Jq?=
 =?utf-8?B?NGsxQjg4Y3pGWW9PQ0t0YnJVeGM0alFRZzdudERWblpad1lSUktBNnlrdWl5?=
 =?utf-8?B?UDdLTUhVdGtKMW9tZU1mWVlyZUdBWmFocFZFRENBM3RyWVA3bHZwc0FxV2lh?=
 =?utf-8?B?WEVNNThHNThFQkozeXg5d1IveHdSWUtML1dvN3krZzlkVWFHK240V1RKcTZm?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 785dbc67-2923-4102-5ae6-08de30d1f1e1
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 12:05:40.0057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rOly8EkIda/ayKXd2ss/ZxVPXysjADxRFWEfQmLBAsNINtduDDBRoLM4pVIAgVcxpuykM+WN9SAi55/gRenF+6/1m0uwej7/rPuSiLzeLJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764590751; x=1796126751;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dhFCsNmVS6kj4Eazu7YrYhYQbqo22qSnAWbsO0KB44U=;
 b=XAFYA36NV11CVhIkX2bDnnywmAxOQuoXqbsAG1+v85DsdfJZ7fD7BN3o
 3yUUEuGdB6/sxa2mk5kttk3kXFsATO0Z3He8tKvzu7ON0xvlKNcjKBnEL
 1uGhZl1/yPA91rmIQLba4A7axcOpB7862Fq6nnxKSqGF3IIXn+g3f9qqd
 E5J/HffX3bMbeADLJLhHX7OwZOVrQIQMvio/3B59X9IZXNbqLCIIb39V3
 YXUGgSGhfth0ZL/P1tmtNOnlsBeNVnJpk6MU4KAx5Uv8a6IErJyVhjFAl
 0TZlr5WyP91JTwUjs5dNFu3KqqZw8GehaZCDJNRoMJUb3YGsLB4Za1M+I
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XAFYA36N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce
 private flag to override XTAL clock frequency
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



On 11/27/2025 9:16 PM, Andrew Lunn wrote:
> On Thu, Nov 27, 2025 at 06:30:47AM +0200, Vitaly Lifshits wrote:
>> On some TGP and ADP systems, the hardware XTAL clock is incorrectly
>> set to 24MHz instead of the expected 38.4MHz, causing PTP timer
>> inaccuracies. Since affected systems cannot be reliably detected,
>> introduce an ethtool private flag that allows user-space to override
>> the XTAL clock frequency.
> 
> Why cannot it be reliably detected? The timer is running at 62% the
> expected speed. Cannot you read it twice with a 1ms sleep in the
> middle and see the difference?
> 

Thanks for the suggestion. The approach might not be very elegant, but 
I'll check if it works. If it does, I agree it would be better than 
making the frequency configurable.

>>   #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
>>   #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
>>   #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
>> -#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
>> -#define FLAG2_DISABLE_K1		   BIT(16)
>> +
>> +#define PRIV_FLAG_ENABLE_S0IX_FLOWS	   BIT(0)
>> +#define PRIV_FLAG_DISABLE_K1		   BIT(1)
>> +#define PRIV_FLAG_38_4MHZ_XTAL_CLK	   BIT(2)
> 
> Please split this up. Rename of FLAG2_ENABLE_S0IX_FLOWS and
> FLAG2_DISABLE_K1 in one patch, 24MHz in another patch. That will make
> review easier.
> 
>         Andrew

If the detection method proves unreliable, I'll split this patch into 
two commits as you suggested: one for renaming the flags and another for 
adding the XTAL clock override.
