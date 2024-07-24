Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D241793B4C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B71940DE2;
	Wed, 24 Jul 2024 16:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7bpWfG6PlYZ; Wed, 24 Jul 2024 16:19:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8DA140DEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721837979;
	bh=2FoXxvJGAl9pzTSKRoHjF9fhVcMQQ31gMhx8unSOy2k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OOkISHVDUoezcKk/2nah65pl8clRHb4iy+50ZBZKmDeJiVRT8SOYp08x3eQWxh2BN
	 I0UvulvCm4VlmkFb6+2O5sCrGVbg6jKpvsktvXwEi1a6n7lAfp13nJUwVOB7LILtK7
	 lo2D2w9zMjMya3veiNoKg1kn1BHuJ1EUjzEjEKhGTsQm9stptwkPzTusFo36w6ARl6
	 O1YgJ8d0jkj4JRWsPVcfq41aCWM6ptUX/L/GBJpG0Gjm+W/eXLIOOstw6B2sBCmKLE
	 rEgI40Vtrjcj25bDsQq6phPv6XHPXGd5xrshtEoJrj1qf4qhVTEDoQbTRrKgFsZzFh
	 CuApqDoaBi5wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8DA140DEA;
	Wed, 24 Jul 2024 16:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E50E1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69C6740135
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9WrHtf-ieMh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2E0A94011F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E0A94011F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E0A94011F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:19:35 +0000 (UTC)
X-CSE-ConnectionGUID: 2PgDeHIGTjClAakiw95qsQ==
X-CSE-MsgGUID: LoIAqTKXSnKg+MI1Z0yj2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19491462"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19491462"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:19:36 -0700
X-CSE-ConnectionGUID: pf10O/eySgulqNugdGt7cA==
X-CSE-MsgGUID: 9Zv6o7ijR2WjAv0vb0CLSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52555182"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 09:19:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:19:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 09:19:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 09:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q+Sq7eOXpMq28wzjvcfmQGUVwTBea4fig7CslSNabnRt3TGuTzGE8RC6JFtss3CYcVpF9G/gb2GWhxo0LQZw9K2VM3Ry7IFQmodMlF9Vb+rptaThru8tVwaQp+VnbykRy4m5PNk9J7FNoO/aMiMLViGArcHy5/bhM1MyxZqVF0mXNgMhqvfa3e3K3h6ikwbpYMeYq25SMGaserWfajmcS/0hmOdLUgCfAA3CSNTQPe9YwcOwfxnoz+gNMIRyJMC9Vbo2rmY1RjJyg1NY0vgJImY2bVdLcr4cc4+eyVBSFFM9/1hwsm872bCW5LvYix+tbHxsAXKPoflUG7nHqPKxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2FoXxvJGAl9pzTSKRoHjF9fhVcMQQ31gMhx8unSOy2k=;
 b=nXcboCY9bL5NjMMRz1ZmECbg/HTW1dnFzISxRoeLnJPP0MIHUdq+4bbCkjcLsmdIrRgBiMwRhri0z1pO3I33qugSDMQBaHYyPgIyuKBBWYtF3k03gQUZ0IdOFKtWYYHVLKobnJAwc4e/8UNb941/biNU0HqavaRDZ0nUBA38WHb8VGWMbjctB+nqAAzZbenmxfa0sRANxARcT7biq08XhVPVkPDeE92lANnJg2Vvow4UEoL3cJlrcy+Wms/hq5kmEi7cmfl7G/Ck+vhI20KDJJT71gg/yz1kk3rwnLNPUTLjXW49ICly9efzqmxPSYKw0+c93U4jW89lpscH/A5xrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.19; Wed, 24 Jul
 2024 16:19:31 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Wed, 24 Jul 2024
 16:19:30 +0000
Message-ID: <3697e6a7-ae12-4634-8cc1-9dc4faf8c6fd@intel.com>
Date: Wed, 24 Jul 2024 10:19:20 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-4-ahmed.zaki@intel.com>
 <20240722145339.GG715661@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20240722145339.GG715661@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0001.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::14) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MN2PR11MB4536:EE_
X-MS-Office365-Filtering-Correlation-Id: 38393b7c-e863-436a-3c33-08dcabfc65c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3hTeVY0T0c0alJaY0dOYlA5TVN6UWdDWWE4emVybitFSmoxcHN0ZlYrdkpR?=
 =?utf-8?B?VW9ydHhmRTlCalhVOGk0RXFnQkdMcHlzT3JMNDhia1BkK2didFBmekZQSGYz?=
 =?utf-8?B?bFBOVEplaWlrV1VacXZYWWM1RHB1a3dsQ2djTGMyYzlXbGFVaGhWMnJBZHE0?=
 =?utf-8?B?Y1AwSytmTnIvdmFuUnlxVlkwTlp3QytNc3VFSHVKa2c4TVlIc1VTNmxiZ3pk?=
 =?utf-8?B?T3ovby9rV0w5akxYdjhZOENqR3dDdG5yaFI5TktxVzVWcVlFNDdYQUd2TmpS?=
 =?utf-8?B?Nk9aQWN3ZXhFTnJ5V2VKajZhVWMwNE45WGZJK1NTbk5kb211TjZNbTU4dktW?=
 =?utf-8?B?ZFZlejZVZHpUMEE3cnp5TDBnejl2bjlYdzFFR0tRays1TzZybEJ1OUoyL29k?=
 =?utf-8?B?OGR1TytyREw4aW9FMEIvRUNneG5pMW9adUU1NW1ZN3o3ZDZRVHlUeURxaGpP?=
 =?utf-8?B?TWk2aE02SUVFcVVlRVpSQ1EvZzRPcnVXSzQ3di9QRjJRTFZ4MVA4MGE5d0tk?=
 =?utf-8?B?Z2dkMGFrS1JMSlR0dWVKZG5ScHA5bEFlSUlIeDU4SkJYMGxWcGJRdEFCb3RD?=
 =?utf-8?B?ZmhLR0ZRRG9Sem1CNnVMRTZKK3hlVnF5TnM0OU53enJDRk4xTW95bW5yTTRF?=
 =?utf-8?B?ajZPMllMd0RMSzhOVWhTS09qQ3U1Rm40NkhoZVIxQ0tTTVdUSGtKWG8xNGVs?=
 =?utf-8?B?QVVjWW5DeEZuQzhQQ0FwNjhuSlpuZmJpVTdPSkZvcHBuSTJQZ21BNVlSSTFm?=
 =?utf-8?B?UG5iM0JmbWdONHJjdG1TMEhISStWbVFOb0lub05abmpnZnYrYjlTMWRyWUUw?=
 =?utf-8?B?UWtEUUdGRXlZV28vK0JtUDZ3dFB5T1IxVjNsVjVZSit2UmFpZkhGbkExRTZz?=
 =?utf-8?B?MjYrZVgwMjRjR1FIWENreWJrWU9RK1JNN0lwa3pJQWd3TU1JY1FVTmhnZk5V?=
 =?utf-8?B?bi9sRkZnUk5tUHBUQzdITndtQTFrNjZSNXNBaXRObUs2TzVqK3ZrM2RnV3pQ?=
 =?utf-8?B?b1NUejJBQW51ZDJHMDN4Q2dSSmllRE14U1l3UFJNMHlGWFlvRE56RVJpUFdP?=
 =?utf-8?B?K1htcU9Eb3hFMGJ5bThEdks0YTVWQzIwclpKYXpTd3NNRHV5U2hyTFcwTERJ?=
 =?utf-8?B?aDNsZUdqYlhtYmpqRU50NjNPdWpoUzZUak1RMy9QNTIzUk8wVjFjd2dsSE1U?=
 =?utf-8?B?SHAzK3dwNXhnMzF1emljdi9YbDd3Y29IZ0ZmZENPK1BsM2VJSEtLYlBvc0lD?=
 =?utf-8?B?L1BvdzA3VHBJVjdBMnJiTlFGTG5MdGRnc3QrT2ZsdVFid0tFVnFFZmNWMTA1?=
 =?utf-8?B?NDZDc3YrV1lHMm5kMG85NmZKSG1yaEVHUkZSY1JqTWdpcXIwYUJiK3ZqR1FG?=
 =?utf-8?B?YzlpT2hyT1JvYVZQVDRxOTBjeHM0aFI3VDhpUU5KblF1VEc2bWlBTGl3dG56?=
 =?utf-8?B?bXBDVThGeDk2dmFPVG5ONHBibjRHa2NKT1JVb3FzVGx5RE52ZTVEWDR4QXJ1?=
 =?utf-8?B?eXBmdmI0Qzk2ZmVIRUhMaHdyNzdGYUkzeWgrZ2RHbHY1bWlnRm5taDg2Z1Yv?=
 =?utf-8?B?U0dZSlpObnE0V2VGbGF3WFdpSHVPYmJlUXEwdWpucG5kVTgycDZrdnRUaHFQ?=
 =?utf-8?B?WVFkZUtJNHEyVi9veG1GSmFSWmFlRWRnQmZpV0RJWFYzM0lwWlRxSVA3R2ZY?=
 =?utf-8?B?ZXErbmd3VFp6eStXTFNXb2s1UjhUSFBvZ3FGTm01Y2dHMmdtdzFUekkzTHJL?=
 =?utf-8?B?c0NuQTE3Q0hLMWZhNmhVTTROclk0NHdnRWUxaGxySUlua3JVYlI2OUtDY1ZL?=
 =?utf-8?B?YkJEYnlzTmRSVnZQYkxSdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTdxSm55L1VrTUljeVhnK2ZQeUFPN1o5OG50WkkrY3R3djh1QStsVS9QNm4r?=
 =?utf-8?B?VEV6K05uTnRNSUJ2bHpzWTZPcXJRN2VuZFFVUHZ1YVNiSytWUW5EWUdCZGl6?=
 =?utf-8?B?dTU1VkVIUTBsVGtZV2R4a0tsSkpNbEpLOVlMUXB5YjNIaWN2SlBCaHdseEk1?=
 =?utf-8?B?TGp0SEZxMmJvYVNzdGVUZ0o2L1hOdTdoZnhTZk5hSVlyQVBrYk1aM2E2L1Ro?=
 =?utf-8?B?UGlvdC9zNFpDVkFITjZsMGErS0dLdmlLNFhPZEo3WnZ2R2cvWkxiWEQ2QTVW?=
 =?utf-8?B?dHd5UjlvUytMY0J0REJEYi8vZGdNUE8vYjF5Rm5lZTlibHNRQnRaSGtSM1lH?=
 =?utf-8?B?eFExT1Q5L3M4d3ZHR252K0YrUHlEZGlFV1ZpdGwzdGU0WllwZVl5YS8wK1FG?=
 =?utf-8?B?VDFqUkFGdENiUkt4eTNQTVg4cUowajNUNGI2enl5NysvRlR2ZVhhaTk3YUs3?=
 =?utf-8?B?VnhuSXJ6WXRPNTNobmQyVDc3UndvcmtPM0xPaWVNdHNXT3Y1WjE5cmh6WmRo?=
 =?utf-8?B?UkZOdy9uRkQvdjlQR0E4azB5aGM3cXhwZzJmRVk0b1o4cjZkSmh6SjF5M2xL?=
 =?utf-8?B?NnRFYVJGU1IvbkFhWjcrUVBycjlDNjVydEwxaldKMU9UOWQ3VjlsNzQreVht?=
 =?utf-8?B?WkR1K3BrY0VTbG8xWlZiejh6alpSbGM3SVVTdisxMlhyeWNUTCt5aGJGcVp1?=
 =?utf-8?B?bWxoeldteXJub055T3BqUjZvYlFKcnZ0QXE4dGFwV3JKSy9hLzRjbStaZW0y?=
 =?utf-8?B?b0dJM1Y5MWc3MkhXNmdJWUFiQTRsYjVjTkJPSDNXem94RmYwRnF3dE9UL25j?=
 =?utf-8?B?dFFtUnp3amlqSXFHY0YrcGdJQkZrUm1OeHJRV1ZIWVNOQm9SbUcrZkt4aHJB?=
 =?utf-8?B?V0hXM3dWbHZodWRncGFDOGl3alM0SEZlV2QzRTk3NzNrVStOTzRvRWR0M0R6?=
 =?utf-8?B?M0FwUEJCaWxUR2lSM3hWcnREQ1IvOFlseTAza3lDdDJCWW1QeHNGWmtiaEVG?=
 =?utf-8?B?VGdIYk9VSmRzQXIwVmdSRWRnR1I3b2lvU3RTdldLcENOTG9sYjU5azR3VWF1?=
 =?utf-8?B?VmR0aVU3WHdMTE5oWldFeFhVUjVUTnpIZ3ZEOTI3bHp2S1F2bkM2aDV1Ykhp?=
 =?utf-8?B?OTYrSlE0b3pnc2xxcEJMd2h4Qmp1aUdvSE9CNXF5aHBZUGVkQkhpRUZjY1NS?=
 =?utf-8?B?Sy92eEpXWWl1emhGUkhBQysxRU1NSjZ3TTZvcnhwcmY2K1hnZ0hqMyszLzVW?=
 =?utf-8?B?QWtFZWRkMXZFbE1MUVhobGphWkFXdlYxUEkxWUw3L3V4cWpsRGs1Ky9NTUVi?=
 =?utf-8?B?c2dDN1ZOVmFiclRlQU81aWRseXdURlplWWV6K2ZlKy83UkZKZGVmYmRWWndB?=
 =?utf-8?B?VEtHNmFMenN2MU1IaEk2RGVWS1ZYUEtkaVpvU1ovMGFPd2h6NVlMZ3NhanRq?=
 =?utf-8?B?WXpuZXdVMHBvWDJvQnBCUy9xMDVVaW84Ly8rekM0UzY1MWE2MCt1Y0tJc1NJ?=
 =?utf-8?B?NUZCcnFIMUg5My9nbFh4S21NM2hSWGtaRllNcVVBMmdkYTNTVjlNYjBzZXhK?=
 =?utf-8?B?QUhyQ0xOY25sc1pvYU1VS3dXYjBoVTgyVmpsMVdyQXBkanA5bkhHa3p1WHpG?=
 =?utf-8?B?TWI4M1EyVTY0aHg4YnJIaUNGUURUd3ZIUFhFd0hPRnFEVDRsQktNZ1FaZXlF?=
 =?utf-8?B?MUMvZFlya2FFMTFZMkdDc0dkb0pPNm9uNGVXcEQ5bW1tVXg4OERjZ25IK3p1?=
 =?utf-8?B?SHpJSDhBeUNYRHFlazljQllyQmpFeFVjdnAvRU03R2xzWHJ1NlJBU2xwNGQ4?=
 =?utf-8?B?RUs2L1lmaE5rU3ZvQ0gxMVR2T1poQlZ5NVFCUDNCOGJjdlYyeldCZHlzMWFm?=
 =?utf-8?B?TktmZkZocjlPckZsNmFnSWNIZGY0aVIrcnhINlUxZ3hKRHF1Qmg5VzJOdGNw?=
 =?utf-8?B?VGpDT0tUQmdYL0xjUGJaSVlJOENGMFZ1dWt3UXZIZ3VJVC8rcFJvV0JJTlls?=
 =?utf-8?B?SUtQN1lRUzdtQytFdDRBOVJWUExJRnZXNHJ1Qk1KUlRTMDVrK3U3MGNadnNr?=
 =?utf-8?B?NTAxbkxFZWRVd0NKUHA3ZmNTd0hQeEN2SU5lS2FMNjNHcktxSTVOY1hWNmww?=
 =?utf-8?Q?bd6M+/pfMf1Mbo92dapNPnkqY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38393b7c-e863-436a-3c33-08dcabfc65c1
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 16:19:30.9001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: asm7SvjRajrVdPWheOoIOPiXi/Q/7Ha5mvPrP86OVp8P69egDoPMNv2KxtbnePHOonWR2K83zonV+jKoyGgf7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721837977; x=1753373977;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UAmSm4nMAviMSwFfW08UHV94Zk3+8WzWimSo7QnNyVw=;
 b=jPgfpK/1Fo/ID30ixGZmA8wDGqFxWchr4zKmRaIvnXipWjtKUENg9yGV
 LzK6ua9Xp2WCdlONP3CDujjadbROCdF9tXki5umDoe7cW6kyFtOr/vnUu
 KNFzPDNsaFGZzBlwgFOQxPB+1ItlvF/kXHibPFHkhVYhg/1nYlGHlwPcm
 UmXA1Uxn8wxp4YZblzJlih+bksEJDMeYpOL7V+t8b0/7B5Djs5R+WnhrU
 2GeBZTOWr3ddrUyqXte3Su1lhN4/gpsoN9pVngmx7bCws/1zAEZ3IuScd
 UOnYfRF8+bdcJ9VG0RanrTm9hK/hS6WgbR2ogPAm3zuWqJmx4F4w65PNp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jPgfpK/1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 03/13] ice: add debugging
 functions for the parser sections
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, Marcin
 Szycik <marcin.szycik@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-22 8:53 a.m., Simon Horman wrote:
> On Wed, Jul 10, 2024 at 02:40:05PM -0600, Ahmed Zaki wrote:
>> From: Junfeng Guo <junfeng.guo@intel.com>
>>
>> Add debug for all parser sections.
>>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> Hi Jungfeng, Ahmed, all.
> 
> I am wondering if a mechanism other than writing to the system log
> was considered for this debugging information, e.g. debugfs.
> 

I am not aware of any other mechanisms that were considered.

The series loads the parser registers on demand from other parts of the 
driver, then destroys all these states and values once the packet/hdr 
parsing is done, so I am not sure if debugfs (or any other fs-based 
method) would be useful here.
