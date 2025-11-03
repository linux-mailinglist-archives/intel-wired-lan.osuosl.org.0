Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00657C2AB97
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 10:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B46D416EE;
	Mon,  3 Nov 2025 09:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T4RHDyoqfZgf; Mon,  3 Nov 2025 09:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59440416F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762162046;
	bh=ABLZgYOI9sHnzQfS8N0spMPcaFvsLimtr/5jNQ6Zx7w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LDBdeZBa4c7tgLNxXP+Z6wUtivUmsTMFAO7Ph4BYeNvyJMRHUD3Trb/YkZUpFG6x5
	 FpSiUXt9uWKC4/8wgyRs2QehD84IJIKLtw1tvqntFk7OT37q/5pQ1zfvKwsxR3qa9S
	 CC0wX7BHqNitF/9lKSe8y8qOrcsCwGp75XleqF1rqoY8KT2awmU9cak75vOnE5M++O
	 pTUg8JB7QqVsTGd4lLGXzkW2T+WzCMs4UVr5eyXwQGrsrD4envl5awWHBDO5QMS2Mw
	 zpKFITX0rSXwAST2QJs+SrNRHXW55IPpdTZ1Cv7/DiR+lNDRlfyUt2Jo1HSyT2WDh0
	 7ZYG6y9HWrIxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59440416F8;
	Mon,  3 Nov 2025 09:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC1A7278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C658D416EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GyYnWuKvyEnF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 09:27:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3086416E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3086416E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3086416E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 09:27:23 +0000 (UTC)
X-CSE-ConnectionGUID: zvblWKejQcOFmvOyCVkLYA==
X-CSE-MsgGUID: K+Eh/g6xRWyNiTRkJ+ePtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="89695525"
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="89695525"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 01:27:23 -0800
X-CSE-ConnectionGUID: 5m2HVYbcTkaqRNbpbuGlnA==
X-CSE-MsgGUID: lcZuFjCvQ8u9xnPh4/k45w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="190916505"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 01:27:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 01:27:22 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 01:27:22 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 01:27:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z7aenWvAiYoErmqxQaZG35/fx2LNvM0H79uuOUb+pXgEi4DI/5krwU61vEpZuhUjaH6stCjtCa76ueWuQBg6ZcFkGP9+6WabiwCncmt/AyCV9hHqSjri6tH41VABAwJUkhqfAVJG1cANsvyaGB7fe8HAmTteG0Bgjrs0aZQxjtLC0VXLhOFcd+h9/+LJenjyJAVeqr098G6QtjiYiklvaDvEZDP+1pqTZtLk8ei3oItJzf7BPX9inuiJquBaiArNc+hyRoHcGmY2ALT22S7VIRqyoQpyDi21tigA0ww8QUA4Hns/XSeFtVciT9XpCLbYslnTVQ57QvPY12o0tSsH2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABLZgYOI9sHnzQfS8N0spMPcaFvsLimtr/5jNQ6Zx7w=;
 b=q3Kcf1jwfQGTbPQ2axWVzs8GhvcDk6owAnycO9477HfVeCVqpBNfUNNcuP/uM+Jn32H6+liFmFZwQ9F6YOkD99MOM2UtryL6lJGoD7NS++GdCRwuTYsULuq1G23vze8ovy31y88c/A7o/W1qrtwgGPZNLdp0C9/l5MNeiDT5MFNURMw2E0Ccjdq2kCu44bqLRYjHOAxZublH5YlrfJoyq2TzbBR9A2JNi+s+BIpFHOToquHtfnjenfaXSqjH3ZnR9JSUODjJisVXHADKCodVenSuyAH5DX3xObG+KSlrvfGCjBn0pgtw14FLIRkUXomJCcjte9zTRowmImW1q8JW4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH3PPF37A184CA6.namprd11.prod.outlook.com (2603:10b6:518:1::d15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 09:27:20 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 09:27:20 +0000
Message-ID: <05a823d2-231d-47de-89fa-9648e47cbfa5@intel.com>
Date: Mon, 3 Nov 2025 10:27:15 +0100
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
CC: <alok.a.tiwarilinux@gmail.com>, <aleksander.lobakin@intel.com>,
 <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>, <kuba@kernel.org>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <horms@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20251103090344.452909-2-alok.a.tiwari@oracle.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251103090344.452909-2-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0011.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH3PPF37A184CA6:EE_
X-MS-Office365-Filtering-Correlation-Id: a90ea9d8-69d4-4030-164b-08de1abb300a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDFndGlaYW0zRkxhcSttbzdnSnUxVzh0R0xtK0lDMERGWlEwUHBSangxbDNY?=
 =?utf-8?B?enlHSUJ1Ykg4WEg1eU5PbnF3OTRqT1ZzeFNwM1N6Y280eHBHSEdXS3R0SGZP?=
 =?utf-8?B?RlVGUE55VVU0VkRZK0FjK29SU2xXNUs2Q1RSK3oxRDQvaDduSGhIODlOY1RO?=
 =?utf-8?B?MGFUaHhCejRNWUYzaWtKMDhxZXEzVlRoUkRhc05UN3hISWZXbEczVXAranBl?=
 =?utf-8?B?YmVZSTNDYUNBTng2SGlDWmFQa0plakRnVmtsL3hjeHllTjExaDFFcklxbzBK?=
 =?utf-8?B?SnBwN3BTRGpYSXZhcTMyZEtmT2RIUGJ5NXJOTUIwS2R3QjZrTHNBSWlXbHFo?=
 =?utf-8?B?WXhLR1BndVgzUVdhUE5QdjEzdU5yV3RVNFRoNFdzNWdNU1R6YUNkYVFwS0cw?=
 =?utf-8?B?V2pGVmFkdVNrdjZCM0ZSQkRpMHdFZnVodkpiVTRIc0k3ZjBWR2pqYWRJdHhq?=
 =?utf-8?B?TjNHV0pJVmRZRGw4c1k1ZEQ5amxHdmNXc1BGU1FLWXd0K3prdG53WVVvOStV?=
 =?utf-8?B?eWZKcXZOSHp2SzVpdWM0SWJxNEc2cEFIUVhhM01tRC93aWJjUSttWm5GcDhQ?=
 =?utf-8?B?dlVGb0F2a0pSTm85TFp0RCtERlU4ZlEzSnZZUkhhZWZXZVA0cWxUZmR2VGNm?=
 =?utf-8?B?WGY3cVg5RXlQSVJDdjBPR1ZLU3dZZGVYYk92eEVWWElVQjZyTXREbis1eHh5?=
 =?utf-8?B?cGJQMGFJR3RlNnhHeDFvYlhTSlJscFFSaFlyRWNwK1pPQnpuU3U2N042dWVO?=
 =?utf-8?B?dm4zZkFiR3k0c2dYNG5sTlRyY0UrcDZOajBqenVRZzhscWFLZlJyT1U3Q2d5?=
 =?utf-8?B?VVpGK3VsQmV6SkRXM0ppWW1acm1zd3JNVklNcUM4cUtEbmRpdkNQaGtsRHla?=
 =?utf-8?B?cFBYSTVCSDlpdXJEa1pMcURURzlQL0s4TnVHaFNBU1dLblBCYjJDQXlxOTVH?=
 =?utf-8?B?UWFPVFltQ1QxRFJUT3lnVm9ZUEF4WHFOQ3ZLZis4NHBBbjNYQUpjdUkxRnlU?=
 =?utf-8?B?Um56MFNpbmUvNEl2VTJ3Qklpc3I4aVZ4Uno4VDRvbXF6L3dBSG44UGRIRE5y?=
 =?utf-8?B?MEZjMmlBVnhXcW5XY1hUbVNqazlGRTd2QktQYytYVmZITnhjRUVlYU9sRFNR?=
 =?utf-8?B?bmpuQ042QzI0Ymhyem9CdmFqZytETWlhOUxvQk53WVE5VUMrR1REWm80Lzlw?=
 =?utf-8?B?S0NNZUU3QWtqejBqZUNUREdlZDZ2OCtuWnFrcWh2Z0dXUTBWRmdJSytCZTlM?=
 =?utf-8?B?RUZUSlI3R3VEcXByNytwcHpHUDFmQzZwNHRuNnR5TFJxdC95VndDQmw0clhv?=
 =?utf-8?B?ZEhWTisrTFBjYzhSaVBQWjJxbGs2YVVhamQzcStsbUZuSGlTRjlLSndrbjNR?=
 =?utf-8?B?Zzc5K3dyeXgvVHE5dkliN1R2WUVac1lmcExpQURBYlVvbFhXUmg5RCt1VUFX?=
 =?utf-8?B?bmU1TFdQUjZBODExZGROc09GaDI5ZkIvSTVZRzJwMU1Zc3hsRDlHSWdZK3F0?=
 =?utf-8?B?TG5KTGZUd2h1N3JqNXJCOVdOcGVyWkNDKzRRbmQybXVuZFBDMTZxTW5JWXBW?=
 =?utf-8?B?aWwzbWhmZE5qM3RqS05TZVQrRXFmREwvNkRtbkRFbG1jWlBYYWw4bTJDWW1J?=
 =?utf-8?B?OUZPT1NGVFoyL3hVbVhNVnNXOE81MWpOU2ZrWkFnbjVEVDdOUi9nTG5URXFQ?=
 =?utf-8?B?dlRtMHJaMkxwVkx4U1dqSUloOWxZVjFTR3N4RE5mYzZydlk2bi92cU9SRE5S?=
 =?utf-8?B?TXg0SFFFaW4vYlRLd1lzNXdUYk54cTR1cVRiK1FOUHBWdDgvbmFWVDBaV21x?=
 =?utf-8?B?MkF4dFNjcEwvNzZMb1ZuMm9iOUt6TWdxTnRXOHZCRi9wVHYrUmorZnAwc2pk?=
 =?utf-8?B?N2JMamxSaFpmL3dKd2pLNHFRRkpFWFN2bkd2ZlVWYjZpRkFVK2dHZkJRaGlQ?=
 =?utf-8?Q?qs+VQN3fRZULO8bKKUefbh8vWkPUAtME?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjZsTnM2QWhFQUt0c2RBaGpFcWF4UmUreXJMaDYzUXFrMlhkUm1OWDVTY1Nt?=
 =?utf-8?B?SDlSZDZqcUVKQS9MNkVjYXhwaHN6eW11SkEyMHNkczVDdWtpR2FHT2ZXcWZq?=
 =?utf-8?B?TjM5Z09RMlZvSlpNTDFQcFByQlFtdk04QVBZaUxIeGVlQXZZUTBGUXNtMW56?=
 =?utf-8?B?VGRJbGh5MytWR0FyckhWemF2QzcrVjhEY0JWZDJyTnZjRHlXOXd5V1Ewdnk4?=
 =?utf-8?B?NVhPd21LcnpUbmNCL2V2YUNxV282Rm9nUkVmTjZwaFBRcUF0YlU5Qk9YR3dp?=
 =?utf-8?B?OFVCL05saU14cW5UQk9nSWk4SEc2ekExUEdwT1pXQjFkSzJwaDFUUWpnY015?=
 =?utf-8?B?b1BLa2w1U3pvWXZKczQzWUZ2d01qYmk1UHh2SGlicnQ5cGFIdC9wZndCR05n?=
 =?utf-8?B?ZWFmbjZkay9yNFQ0ekpTa0hzdHlRS3FYdG5aVVRBakZ5T1FjdzViUnZYeWhL?=
 =?utf-8?B?NGVZSm4vNGtCdzAvdzNGRXdCQzBOVXdVUUVHb2l6OSt3Y2JwZFFRbExRelk3?=
 =?utf-8?B?Y25pc1dWVzI0ZUpVMk54TWN6SCt5T0RESHlzWHRyNTFRTEtZeVRPclNNYWFy?=
 =?utf-8?B?YVRsTWZwZVNuR2JQbk0renZwQmpCRkxYbzNHUFg0M1JPY0RIbHJHRkFqSEpV?=
 =?utf-8?B?ZkFZbWNITU1JcFBXRVhzcVFUNjhqVldnYWF3eVpjTFZDVHl0VHN0bktjNEZU?=
 =?utf-8?B?b2dYNWdoaHRpTFNxUmcvWGNDWW53Rk5mb29VM040c01wZEFsRWNxNUdaOHhP?=
 =?utf-8?B?T2piSXNNNkEyQzFYNnVUcnRkYlcyaWNKZm5GT1V4aTRqN21Bbkk2ZjdLOUxw?=
 =?utf-8?B?RVZLODRPL0V5ZDJBY2hqY1RHc0ZXMXN3SDN5MmxqbzRMVjZNWlIrTmJrNVNS?=
 =?utf-8?B?K1BoZndkRWZJdlhqUGducCtGbUtzdTl0c3l0cXpRYVRZSzlJUzFTMlNFV1lI?=
 =?utf-8?B?N3Mzdi90TWVtaHJvMEVQWHNSVGdkT1A1WmZNZU5CVVZWa3hCUW83bSt2Z2hM?=
 =?utf-8?B?VWtGUURKWmlyamRpVUQ0TWxIK0lqWVZacGlzN1FXUnBuMW5rRitXOHV3ZXJO?=
 =?utf-8?B?SG1LWDV6dnBmUlNrN1pGS0ZFS2RpNmFVd25tVEgvb20vWTFKUnhhM09XaFdv?=
 =?utf-8?B?d0ZoMUZkRXIzVG9peTM3aDFVMEpiYnJPRkdaeU84RjFkWFlvRysrUkUvSXl2?=
 =?utf-8?B?SldtajNscXFhYUpFNyt2QzZVMTYzWVZkNU1RNGptSGNORG9PNW1jSGpTQkJN?=
 =?utf-8?B?RlBHRlJKWGszTDgvY09DdGdFYi9xSVptZUFYcG9wblZlTUhBYVZYTVJ2clhk?=
 =?utf-8?B?ZzJaNzlpV1FYQjRxOVFuMEp0RkdVTnpOYXgxQ25XaE0vTmZsaEJ6UHVzVjV6?=
 =?utf-8?B?eFB2eXFVTzZScjFaa0tDWXgvaUR0WG9FQlFESEtoVWtGRnlzOWx6QlZkSkti?=
 =?utf-8?B?eGQzeThEWmpVRndDNk1GL0U5OUxTRzhkejNuS2tGTzlwdjBWdlhnazNuNWhq?=
 =?utf-8?B?Q3FaYU5icUlrbWIvQXB3d2lWOGdBNm5YQ1JaTTA0bTk0dGdlakZBeWxTdEVK?=
 =?utf-8?B?WUFwbjZ6R3p0VGVJVkpDaFU0ZjA2ZnRYNDVwV3ZaNElUdEt5enBGNzFEOXgz?=
 =?utf-8?B?MTFKWWhYcHVmZEdMSGdqcHF3TGRFTjRMRi9ZUXJCSE9iOW9WcExrd1FxdE9Z?=
 =?utf-8?B?bnh1WU82cDEveC9wbDZtV2lTNTdpZit0OVFSMzF4YSsxUnlIeTRPNXNBQW5U?=
 =?utf-8?B?aFgrb1RGNGt4bzkraWpod1FCZnkyQlFSaGl4b29yRFBJeEtJMEswSjloeWU5?=
 =?utf-8?B?UUp5T080eTRKT2syZ1BiYWp0TUZZNXNUS0FVT1ZNaFdaMUlKQlNvMGgrMlNC?=
 =?utf-8?B?N3NPbDlWSDJoT25Ic25ueHUzaXQ4cUJYZGcvZjFmMEozYVUwU3pjOTdIVCtF?=
 =?utf-8?B?QVRFNy8wc3V5aHlPdmdTWTVnYmRnd2dseXJlZ2VWRDRJMkx2ZStuMkVJd3N0?=
 =?utf-8?B?VE5Gc05SYjl4eXorRi83cmxHV25SOUZFZlFoQ01vRnF2VFVyZUxtK0tLNlds?=
 =?utf-8?B?UWw4em1YeG9FUjZNTmk1NmVYdG0wU1hoNWRMSUhRNGQ3dE9NMkIxQUliUGJ4?=
 =?utf-8?B?WndlY0tMZU5oeVBMa1hJc1EzeCtGc0pqd1AwejVLTWxIRkUwdUVPTVdteCtO?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a90ea9d8-69d4-4030-164b-08de1abb300a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 09:27:20.2061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QMl4R5ncI7/+pQvSqHNbjM4v/5GDJv6geKzK6eoGtZDBpyFLCR+B9HFzLu0tu8lVTBBn8Iasz/5veJKQNVx6Eq6UiBIyKV2NQo1w/pb2Gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF37A184CA6
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762162044; x=1793698044;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X/rJGn1YvQHhdZ7cHRcCMFbZlCOI+/BERo1ndbw3e+c=;
 b=nB2ct2TJmTn7ImF8fz59l+ADaZXdccd5uNklHZuG2GksKulzBMXilKKm
 eryFvQupXrr6mcPy3/OHYnzpJeiuVYPcfNLCJE5brUME5kn+4pajX6C7X
 wb4pOVawGmAMLYSSWXa6X8kLMbAULIq4/9aota0EUBUbm/bGuX5Df3Obq
 L3AjqCyjxpSJSUKgBBeIR/KZ36EynkTcdA00B/G6tt4lRm573W/RKkyCC
 mKMnkHUFNl1+r2KIHIDXaT9UOJ7ontGPH32ZDD1DmxLLC7CEttDJO/hvJ
 w+DFd1Gqnhub764lK4Wvrpyqjom6HG0RqT3vp2qJ98Pxvwc1bnv3+eJLt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nB2ct2TJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: clarify VLAN
 add/delete log messages and lower log level
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

On 11/3/25 10:03, Alok Tiwari wrote:
> The current dev_warn messages for too many VLAN changes are confusing
> and one place incorrectly reference "add" instead of "delete" VLANs
> due to copy-paste errors.
> 
> - Use dev_info instead of dev_warn to lower the log level.
> - Rephrase the message to: "Too many VLAN [add|delete] changes requested,
>    splitting into multiple messages to PF".
> 
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

thank you!
just two minor nits, but the messages are good already, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> ---
> https://lore.kernel.org/all/47f8c95c-bac4-471f-8e58-9155c6e58cb5@intel.com/
> ---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 34a422a4a29c..3593c0b45cf7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>   
>   		len = virtchnl_struct_size(vvfl, vlan_id, count);
>   		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			dev_info(&adapter->pdev->dev, "Too many VLAN add changes requested,\n"
> +				"splitting into multiple messages to PF\n");

perhaps it is too much bikeshedding for such a change, sorry, but
I would rather remove the newline in the middle

nit: another thing that I would consider is to differentiate the 
messages (v1/v2 or A/B, or whatever) for different protocol versions

>   			while (len > IAVF_MAX_AQ_BUF_SIZE)
>   				len = virtchnl_struct_size(vvfl, vlan_id,
>   							   --count);
> @@ -838,7 +839,8 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>   
>   		len = virtchnl_struct_size(vvfl_v2, filters, count);
>   		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			dev_info(&adapter->pdev->dev, "Too many VLAN add changes requested,\n"
> +				"splitting into multiple messages to PF\n");
>   			while (len > IAVF_MAX_AQ_BUF_SIZE)
>   				len = virtchnl_struct_size(vvfl_v2, filters,
>   							   --count);
> @@ -941,7 +943,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>   
>   		len = virtchnl_struct_size(vvfl, vlan_id, count);
>   		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
> +			dev_info(&adapter->pdev->dev, "Too many VLAN delete changes requested,\n"
> +				"splitting into multiple messages to PF\n");
>   			while (len > IAVF_MAX_AQ_BUF_SIZE)
>   				len = virtchnl_struct_size(vvfl, vlan_id,
>   							   --count);
> @@ -987,7 +990,8 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>   
>   		len = virtchnl_struct_size(vvfl_v2, filters, count);
>   		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			dev_info(&adapter->pdev->dev, "Too many VLAN delete changes requested,\n"
> +				"splitting into multiple messages to PF\n");
>   			while (len > IAVF_MAX_AQ_BUF_SIZE)
>   				len = virtchnl_struct_size(vvfl_v2, filters,
>   							   --count);

