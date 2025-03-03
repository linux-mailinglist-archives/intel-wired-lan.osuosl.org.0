Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C8EA4CAAA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 19:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 952D960A71;
	Mon,  3 Mar 2025 18:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zPDo7FXjeIF1; Mon,  3 Mar 2025 18:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7029E60A6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741025014;
	bh=oRXgGieJsiriwc/Ww2aMvZh6dgiHuYFlYAYnvGBWJmY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6tt7eUewDu72EdhYnmhhwVXscIHiTTp1HmWy0z/onz8J+4DQKhA7z3+XSsy1lpcP9
	 S/D9zw4r1Df9S/rWqi2BBOnOpO0XH4RyJz3qI5vUo+xBEbSXohoE3U6Uq0c+g9f5Ev
	 lW+CrITTTTO/9fS+nbVFGZBfaMGDsCrMPhTob6moGJUUgT4pfV0M8CybuYzmnhT1eG
	 KHOPUtev8RzMzUZ/VQP3lIlWFF/AUhtJ9AcSYSfO1nF4+08Q4RIYdyQfS3U3FyJOsU
	 drtBjKq7nBmjgOmt4fSp/rbDID3xWYIiav4kQ7HNU4dyrozU6rtPc29DS6mt644ZMC
	 F9uSzyx/pZ2Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7029E60A6E;
	Mon,  3 Mar 2025 18:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DAF8E182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 18:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D31CC4086E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 18:03:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3trzUbmSz4V3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 18:03:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B7CD40012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B7CD40012
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B7CD40012
 for <intel-wired-lan@osuosl.org>; Mon,  3 Mar 2025 18:03:30 +0000 (UTC)
X-CSE-ConnectionGUID: 9rNsFXrCQJKpUbrTWfsHKQ==
X-CSE-MsgGUID: /ynbnRSNTZCOU+OC4F66qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="53317706"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="53317706"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 10:03:29 -0800
X-CSE-ConnectionGUID: vps3hyLuQpOmNmUrPJ4igA==
X-CSE-MsgGUID: ytxW/S7sQ4iFE+8GtLptDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119044796"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 10:03:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 10:03:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Mar 2025 10:03:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 10:03:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X1ZJG+HoV0N9YaA4qTSE2/YeVgzaVR4S/jwj7paIEFHMFhuqSHoVx/T7YqgOruKxw1Cb1vwGDxZnb1GiBOyCX9cpd3PX4cgnc9O6s6svbvtkUxlT5Zmsu9lX5jbi884vwovv2lGOccgwFRWLO2NhA++S9NDzbfV+jElD8+PTfGr6OD50GBPIDKh+nyp25AD8fqBLf2pcG7RwkJyGLY3EP4ZztByUGRacLFU0+g4OllF7dsYJQBBQtiJkUe3m0Y41flV9dIGxpJee8DnmknGLBcIxM+vc51hMQngIdOPy8x0WoIIU79HNCT30R6ivwKFVZY8O3OHSu232IpWIlEnOyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oRXgGieJsiriwc/Ww2aMvZh6dgiHuYFlYAYnvGBWJmY=;
 b=FRc8InxGMLnjLylzkZVLJaVWktFm/4URiBXmpzxgPWxSSOPdRPjhffi8U7o7nEMG7Uj2IITULx0kJv4IdlD5+QMx4DQ3eSjcbW/FHc25cQ1G8Wl/2LoNreqez33Ntg1xLPka2HmS7zhmdut2D7yKDRlpqoNbr9kSe4Ym1UxYj/wkruTXseWrpuPDjEaNFXzKZFMyOAP4VHZTWLeMf5PbiHWDHlVeKjTrnQiQDeHgNsuPYsDpIA6RejPxPBGL7ueRVmfHXz5OLkSkRocwuf3bJlY4pklMLJIzW3Cw4mlLj1/ujnN6JLM8rR922472QsS43I1sqV7Gu0oEHtSkQgL+4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 18:03:19 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.8489.028; Mon, 3 Mar 2025
 18:03:18 +0000
Message-ID: <29d07f60-6b39-4cff-bc69-7b6ff3f3cf43@intel.com>
Date: Mon, 3 Mar 2025 11:03:14 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
 <20250224232228.990783-3-ahmed.zaki@intel.com>
 <c531f3a202e746e39faf27211b80aa69@amazon.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <c531f3a202e746e39faf27211b80aa69@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0018.namprd21.prod.outlook.com
 (2603:10b6:302:1::31) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MW4PR11MB6618:EE_
X-MS-Office365-Filtering-Correlation-Id: 407b7038-431b-42c2-e3c8-08dd5a7dadaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WC9ndWNTMkQ4RkNUQ2M1bFhPYUpSdHVtZlBlUS9tSG8zdFFPMHk1TlJZaW5s?=
 =?utf-8?B?VUY4ajcyeU5mbFhTZWhuS1JQSEhPYkhnSlBPZDlFZU8yTG81T2g5azlUTXJF?=
 =?utf-8?B?cW5QcTRzcXdLZ21nUit4UkFvcUZhOFFyTm5TNi9jL09zZWtNd21ScE1BekRN?=
 =?utf-8?B?VSszVnBBYUtLYjRKN1RzdzYzcDd5aDlKeEtmUUdDYWZLL3hPeWFwRFBHVEZV?=
 =?utf-8?B?NUVud1VMYXdNMTZnL1RSekFkWVdweUNnN2tuUThBNkprMm1XelFyYUljTk9v?=
 =?utf-8?B?RUVva1czVlVzZ3NvcTFBY3Fac0ppUGk3Z3ovNW04WXFGYUVDcjJGVDRIaW9y?=
 =?utf-8?B?OGtKRjJqWWVmRTFncVhMWndzanJLY0VTeVlYTXd3bnZHOHowcG5Jb2RNL0dr?=
 =?utf-8?B?d2FOQ2VlQUZvRG0xOHZFaXFRYmM4aUc2SXA3RjlUMUFvOTRiL0xFbnczTG5P?=
 =?utf-8?B?Z2gvVHZ2RDhaRHRCbFM0MlN0Z2JZZ0dwQktxUnNkRFN4aVZuMDNFZkNneXpo?=
 =?utf-8?B?Vnc3STdpT05XcklWZUdNWXZjQXlxU0wyWWU1ZnFtNHVkUGVRa2ZBK2Z1ZTh2?=
 =?utf-8?B?UnArazBsd3czSWNZKzkrN1lBc2EwYURpQU8yYTRtbWlsVWdnblNocXUvRzVN?=
 =?utf-8?B?TUFUeXZzU0o0TDFFMmZIYm9aM0N0V0J3SldpS0ZDZjF5RkxsMEdKUFBjYmgv?=
 =?utf-8?B?eGVOZEJ0L1BTTVJMMFBWdFZ0eW05Q0t0T0VXZVE0TmlVQlhnQXdNN3B5aTht?=
 =?utf-8?B?MG0rR29RaTY4aWRVMjh0NFdBdDZHZWo0aHB0MS8raTJDZk5zOGhkZjVBcFVK?=
 =?utf-8?B?UHlpNG9UMkk0M05wTGkzd0pmWWw3ekZpaHRYeWxtUm5iVkxza2M3djI5MGtX?=
 =?utf-8?B?YWZZWVlHLytjOG5NUVhWeUR1OXE0MGFDRUJYNVVCeFVuVmRZQXJPUHVGSlV0?=
 =?utf-8?B?R2JYcFhndEpERisvYUU5OXlKdm8rWkNYenQ5MFZwaWFTK0MxbG0yRXBsZVBG?=
 =?utf-8?B?YmZPa3VQb0VZZUtCM1JDbWs5Zjg5RHJ5eXRwN3p4aU9EQmZjdFc1YzlYVllJ?=
 =?utf-8?B?eEJuVEdCRk1PUHBDNFpiL3lYVXN6cG9RVmh0RW1PTUhrckt4ZlZKQlQwVE9v?=
 =?utf-8?B?NG5OOUpYdnErRkhXQmNtU0NqL3plL0FTbmZyWGpTZnFweFFmb0JUeVRsMUFK?=
 =?utf-8?B?YjlTTUJKM205OXJzUVJvMVNpUnFFcTMyY2xRYzUyY3NCekdZZmVGYmxqS2Zo?=
 =?utf-8?B?bmlrb1JpZ21pRlJReVpGdUhqSjN0cE5vYnJpcDZBTTlKZ0pHRkFkcWY3TFFh?=
 =?utf-8?B?N29QU0dhMEtvYVA2cWV4RXRoRmJPZVVScC9tMVFkZnBzVGgzclZpaCtBTHNw?=
 =?utf-8?B?REt1cDhZdHM2V2NCNHNTektOYVp1YXk5azE4VXJqUG9IMVlQVkk0UDdud1dx?=
 =?utf-8?B?L1hrS01uSE8zaUROeEZVS2gzaDRvNXdmQUVFVi9iQ25LaDdaR0d3b29iZXBD?=
 =?utf-8?B?NmJVeHBiZFkybHJ0UHhvKzdMeHBHYnVseGFCOXV6dWlnMnBwWTFhWC93K1hP?=
 =?utf-8?B?Ti84U2xWcHU0ODJuVFh5UmY3Wlh1NldSdFpqZ2UzZzJldnNtMlE1NkxNZWdy?=
 =?utf-8?B?MFZLNGtwMmtmZmszNTdvK1BRZU9DaEcwc2ErSXJUVXJCUC8ySUYvRjhtL1JV?=
 =?utf-8?B?d1ZwU3RsSXVIanN6WEVkVGxWQlFQa1BsY0JLMGV6ZmxnVUd3bXlOZ29RZFhp?=
 =?utf-8?B?YlIza0U0enF5dEQ4NmhBNi9QRWQzMTkyTVd2TmlhaEpBNkNKc1lCZFVLcitV?=
 =?utf-8?B?THlkdlUyK0lNOVh5QXIzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlR6QmoyNU14djg0VDRVTzRPNlpBVEkwaEYvei8vajhkT0pBYStuTnZwOXgw?=
 =?utf-8?B?T0VtWkNva0FqVVdsSlFabDZzSjRLK2twNHJFbE1BZmZ6c0w2WU9qTndJZitx?=
 =?utf-8?B?Z2JMN1JMRzhWQzk1ZmU2dlZnWWkyNk5tTXliSFpTZ3o4QjMrSEhWYXRBQkgv?=
 =?utf-8?B?eVRIbGlKV1grR1lJc1pSWXliZDhHam5tLzIvZUQwL3lZQTNDeUs1Q3hpSkk4?=
 =?utf-8?B?UnRIdVNWR21WVlJla05NMHVFL09QQkk3K05vbXp0Zm53eXhCVkJhTFhqbEVN?=
 =?utf-8?B?bTlYd3dBZjJLaFI3b3NNZlcrZC9xL1Y0STJCYVhBaXZNLzREOHhOUTBsQ0My?=
 =?utf-8?B?V0dyTkpuWnB5SE53M2hQb2ZXdFNnYXdDbE83T20rSjlBaDQ0YS9YbDQ0MUZG?=
 =?utf-8?B?NDViemphSXBmYitTSEZEa0E0ZkFwTlh4Uk1zT1hlTldkdnlQcWtRWkV5Mzhq?=
 =?utf-8?B?amFGTVlYSGxiL3VCMUZwMDhMbnlpcDVZaEdpcThZQXdMNDZaTTdjemE5eG5o?=
 =?utf-8?B?Yk9qRGRUMDViOEIyN3pkYWJEQ0RjOU9rK1N4WVdySHVXbHFWOGlUOXBSYWR1?=
 =?utf-8?B?eVBGZTAyVGxEZWJuUGFCaDhUcUlONlI2ZnE0VkFEZjNDbUI3bjNuRmNVblNE?=
 =?utf-8?B?S3ZqU0VIZlJ1aU1kY3lvY1JnTDZGS0ExMi9rSFRBZnZveUtEcWczcnV6ejQr?=
 =?utf-8?B?N1JSYzQ2UjIwd3c0Ky93eGhpWThQYXQvSEcvYTI1T21qTnM2dkdGcVJIM09N?=
 =?utf-8?B?VUhYREJjdXBRMldIMnlIK3B0Ry95dWI4dWVDKzEvZHN4cCszNkhla3FPdnZW?=
 =?utf-8?B?UllwcWo0WXFIcUpPd2ZpS2lKOElONnRMMGhNNElvbVJrY0xoM3BmVmxZVnpR?=
 =?utf-8?B?TUF6aGNocUViUmxGVXA2RkpEQVRUNUI1dEhJemxybEl1TDZhWUNaTXRJMEtl?=
 =?utf-8?B?dHFZbVlaUHViVUhrMFFCcVpMeithOERSUnJWeThvMWh3OGRjcmRFV1FmL0hZ?=
 =?utf-8?B?MVdSVW8zMnl5TWZKdTNRcHR3QUR5UWlMT1BwYUZnUEwxRGIzRjVqT2hzbXY2?=
 =?utf-8?B?Z1pwU00xTTlIQzN3UXVuN2NpaTNwdzNmUzZ4OUlwWWhlNW5YNm1kdm01ekIv?=
 =?utf-8?B?Z05CZlpjOEFJWHhTWEk4L3Rrb3dIdWJOekF6RDU3OTRIK3E4YVU5NlJiRi90?=
 =?utf-8?B?Vk1ncGhqQkNIMCtRcElLYTRBcmpLMVVlblBEMlJQMGRaNURNaW9xUzJUVnc0?=
 =?utf-8?B?MU53N1dhUWV3L3V6eC9BZXJmemhjT0ZwNm03TVY0Uml2Q3l0ZXF6RmJFR0RF?=
 =?utf-8?B?ZTNOUEpwWGpONFJ3Y0tVNlRsUkwydUdMMU9BOXg0TEprNWI1cG5OcWNSNGRG?=
 =?utf-8?B?TWY4QW04SnpDZTd5UlQxNkRPdE9mbWlpcGJmaUxieVNFcDZXb0t0SjhZT2dC?=
 =?utf-8?B?dFhoQ3Y0TkMyOTdvUkhkcnNZTXlyaFh1b2dBVFIvdkNiMHp3a1JxbU9MNTgz?=
 =?utf-8?B?R3VWYXdiN2ppUmhrWU5nbE4xQnh6MEN4NjlId0dPR0ttUW1UdHVpQVRJeHZw?=
 =?utf-8?B?RlorMFR2SWluQlNnOW0wU2FVL2tzYXZYYVk2Z1BVYzMyZlJheHBjVnUxMXZM?=
 =?utf-8?B?QkZSRGxtSlM3RS9ZcngyUzAzYkZPQS9YWFcwN1hMNVVTd2RQWFpEOFVILzlZ?=
 =?utf-8?B?Um5ZcjF0cTVDZ3NicllpemZ0YVBXRHJJOVprK2t1RklEMVovYndTWERvaDlu?=
 =?utf-8?B?VGszRUwvNTZ2R2NxazluRUFwbVd4MlJPazFucWtlaElUZkIyWHRMaGVPTmpH?=
 =?utf-8?B?d2drS3RvTTNqc0UvblIwTzgvT1Jlem93QVEvWVo2eWNTbk1qcDBRSmo3Rkpy?=
 =?utf-8?B?eDNTY05BMGdkTU82dWRqTXF4SkRYS3FFRzAra3VlUFRaVGZaWTIwVkdQTEFy?=
 =?utf-8?B?b2w1djVRWlVYMDFFSUtlV3BxMFBwdU9VWnNWS1FFK2xQWVpiUjVoVkN5aXVl?=
 =?utf-8?B?Vis0bHZzRXhIcTVHaHVFV2tzcUJOUS9JTG00bzlPaFJ6MGlDUDZlU2F2WmdT?=
 =?utf-8?B?bE5GaXBMTnZMR1dwSVAyZlF2VFRTenpPSlVlcEVIdEw2RC9EWXhyUDBWaVNQ?=
 =?utf-8?Q?UrUTAMZDlHSgZXOk7uRjR9cf9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 407b7038-431b-42c2-e3c8-08dd5a7dadaa
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 18:03:18.9395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTZkJ8uwBlhkNgsOyinEy/obJDvi2kP7o478/wdBhf76QY3/f9+aUpLRA1CnrwLjHIp/sHssNhIBt7CVv3w5VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741025011; x=1772561011;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Wy3EZf2tuBb90CjRJ4Q/M8NmF0fDMIUqEP60lh9T3H0=;
 b=km+qXN+Po15oQqdt6oyD3pM55ko52HYvIewJLaXy+qUl3+Mk1nus4oAO
 cd591Rb+7xiT8F7pdLNlrrvKQuFXoJMHK5CrtWtU2ov7ldrNClllNq2mn
 DM5xJc0ANLt9QJDuDXmbTuzpAiV/uaKUivJXei6MOjOM0DQ+ZQgCKCMnm
 rtAQ7E7CO3YwOVyqGGScbVsLloZtnhxuE4RLen/EbGnhvr1oad3BgWP6M
 p57yCo6Whxgq/H4OccSp0d5UC7pTmJmbwKhyG0dL8JUdZX9DT+xzO8mqV
 pX9ncwqeyuWTFHNkMG71vEd9U11Y3ah1pUeF49miHr6rC5AV8l4r6W1y+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=km+qXN+P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/6] net: ena: use napi's
 aRFS rmap notifers
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



On 2025-03-03 10:11 a.m., Arinzon, David wrote:
>> Use the core's rmap notifiers and delete our own.
>>
>> Acked-by: David Arinzon <darinzon@amazon.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/amazon/ena/ena_netdev.c | 43 +-------------------
>>   1 file changed, 1 insertion(+), 42 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> index c1295dfad0d0..6aab85a7c60a 100644
>> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
>> @@ -5,9 +5,6 @@
>>
>>   #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -#include <linux/cpu_rmap.h>
>> -#endif /* CONFIG_RFS_ACCEL */
>>   #include <linux/ethtool.h>
>>   #include <linux/kernel.h>
>>   #include <linux/module.h>
>> @@ -162,30 +159,6 @@ int ena_xmit_common(struct ena_adapter
>> *adapter,
>>          return 0;
>>   }
>>
>> -static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter) -{ -#ifdef
>> CONFIG_RFS_ACCEL
>> -       u32 i;
>> -       int rc;
>> -
>> -       adapter->netdev->rx_cpu_rmap = alloc_irq_cpu_rmap(adapter-
>>> num_io_queues);
>> -       if (!adapter->netdev->rx_cpu_rmap)
>> -               return -ENOMEM;
>> -       for (i = 0; i < adapter->num_io_queues; i++) {
>> -               int irq_idx = ENA_IO_IRQ_IDX(i);
>> -
>> -               rc = irq_cpu_rmap_add(adapter->netdev->rx_cpu_rmap,
>> -                                     pci_irq_vector(adapter->pdev, irq_idx));
>> -               if (rc) {
>> -                       free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>> -                       adapter->netdev->rx_cpu_rmap = NULL;
>> -                       return rc;
>> -               }
>> -       }
>> -#endif /* CONFIG_RFS_ACCEL */
>> -       return 0;
>> -}
>> -
>>   static void ena_init_io_rings_common(struct ena_adapter *adapter,
>>                                       struct ena_ring *ring, u16 qid)  { @@ -1596,7 +1569,7 @@
>> static int ena_enable_msix(struct ena_adapter *adapter)
>>                  adapter->num_io_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
>>          }
>>
>> -       if (ena_init_rx_cpu_rmap(adapter))
>> +       if (netif_enable_cpu_rmap(adapter->netdev,
>> + adapter->num_io_queues))
>>                  netif_warn(adapter, probe, adapter->netdev,
>>                             "Failed to map IRQs to CPUs\n");
>>
>> @@ -1742,13 +1715,6 @@ static void ena_free_io_irq(struct ena_adapter
>> *adapter)
>>          struct ena_irq *irq;
>>          int i;
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -       if (adapter->msix_vecs >= 1) {
>> -               free_irq_cpu_rmap(adapter->netdev->rx_cpu_rmap);
>> -               adapter->netdev->rx_cpu_rmap = NULL;
>> -       }
>> -#endif /* CONFIG_RFS_ACCEL */
>> -
>>          for (i = ENA_IO_IRQ_FIRST_IDX; i <
>> ENA_MAX_MSIX_VEC(io_queue_count); i++) {
>>                  irq = &adapter->irq_tbl[i];
>>                  irq_set_affinity_hint(irq->vector, NULL); @@ -4131,13 +4097,6 @@
>> static void __ena_shutoff(struct pci_dev *pdev, bool shutdown)
>>          ena_dev = adapter->ena_dev;
>>          netdev = adapter->netdev;
>>
>> -#ifdef CONFIG_RFS_ACCEL
>> -       if ((adapter->msix_vecs >= 1) && (netdev->rx_cpu_rmap)) {
>> -               free_irq_cpu_rmap(netdev->rx_cpu_rmap);
>> -               netdev->rx_cpu_rmap = NULL;
>> -       }
>> -
>> -#endif /* CONFIG_RFS_ACCEL */
>>          /* Make sure timer and reset routine won't be called after
>>           * freeing device resources.
>>           */
>> --
>> 2.43.0
> 
> Hi Ahmed,
> 
> After the merging of this patch, I see the below stack trace when the IRQs are freed.
> It can be reproduced by unloading and loading the driver using `modprobe -r ena; modprobe ena` (happens during unload)
> 
> Based on the patchset and the changes to other drivers, I think there's a missing call to the function
> that releases the affinity notifier (The warn is in https://web.git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/kernel/irq/manage.c#n2031)
> 
> I saw in the intel code in the patchset that ` netif_napi_set_irq(<napi>, -1);` is added?
> 
> After adding the code snippet I don't see this anymore, but I want to understand whether it's the right call by design.

Yes, in ena_down() the IRQs are freed before napis are deleted (where 
IRQ notifiers are released). The code below is fine (and is better IMO) 
but you can also delete napis then free IRQs.

> 
> @@ -1716,8 +1716,11 @@ static void ena_free_io_irq(struct ena_adapter *adapter)
>          int i;
> 
>          for (i = ENA_IO_IRQ_FIRST_IDX; i < ENA_MAX_MSIX_VEC(io_queue_count); i++) {
> +               struct ena_napi *ena_napi;
> +
>                  irq = &adapter->irq_tbl[i];
>                  irq_set_affinity_hint(irq->vector, NULL);
> +               ena_napi = (struct ena_napi *)irq->data;
> +               netif_napi_set_irq(&ena_napi->napi, -1);
>                  free_irq(irq->vector, irq->data);
>          }
>   }
> 
> [  484.544586]  ? __warn+0x84/0x130
> [  484.544843]  ? free_irq+0x5c/0x70
> [  484.545105]  ? report_bug+0x18a/0x1a0
> [  484.545390]  ? handle_bug+0x53/0x90
> [  484.545664]  ? exc_invalid_op+0x14/0x70
> [  484.545959]  ? asm_exc_invalid_op+0x16/0x20
> [  484.546279]  ? free_irq+0x5c/0x70
> [  484.546545]  ? free_irq+0x10/0x70
> [  484.546807]  ena_free_io_irq+0x5f/0x70 [ena]
> [  484.547138]  ena_down+0x250/0x3e0 [ena]
> [  484.547435]  ena_destroy_device+0x118/0x150 [ena]
> [  484.547796]  __ena_shutoff+0x5a/0xe0 [ena]
> [  484.548110]  pci_device_remove+0x3b/0xb0
> [  484.548412]  device_release_driver_internal+0x193/0x200
> [  484.548804]  driver_detach+0x44/0x90
> [  484.549084]  bus_remove_driver+0x69/0xf0
> [  484.549386]  pci_unregister_driver+0x2a/0xb0
> [  484.549717]  ena_cleanup+0xc/0x130 [ena]
> [  484.550021]  __do_sys_delete_module.constprop.0+0x176/0x310
> [  484.550438]  ? syscall_trace_enter+0xfb/0x1c0
> [  484.550782]  do_syscall_64+0x5b/0x170
> [  484.551067]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
> Thanks,
> David

