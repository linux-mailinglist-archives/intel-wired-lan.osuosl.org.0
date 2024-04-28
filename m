Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A01158B4999
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Apr 2024 06:38:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5977280B6A;
	Sun, 28 Apr 2024 04:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1s4GOhxS668Y; Sun, 28 Apr 2024 04:38:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F81808D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714279121;
	bh=n4oetTeGMuTZd46DvENy+bPmm+64vs7p4CoMmBx8rgM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YFuDyyZ9WqWZMsx1n0BRlS6jFATlXt7ywh5GfXvxldzvqScqf68AhteIcHZzPV7ip
	 /txZUvCERVJS8bhK9Q5peG+zgmFZepm5yL04GHgnkaH/7O4J3xzl1W1A9/CpXwQMoy
	 Lr2EfMm1+3+krn1M5SV3YdApzu4ONdcQUlGve55sUYORyj7ZHKKASZIRcWP/4MZ0gg
	 Kz4JtVZJFZfNVsUnNA4Lp/lLn49VvXEUQD4VH++/sQxLjTtc28H+FoQ+bUNjbMdU+b
	 38C9Qj6Pr3cg34Bup8vSxbrMJASwlvTcT6cWhVrVvxl55jIwCG8Jkp5j4XKi3ZVLVR
	 IfmZVMUlI4CQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F81808D8;
	Sun, 28 Apr 2024 04:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 938B21BF40A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 04:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EFC0605DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 04:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Apy-oHYDTT_S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Apr 2024 04:38:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C90C605C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C90C605C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C90C605C9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Apr 2024 04:38:37 +0000 (UTC)
X-CSE-ConnectionGUID: vPTD88A4Sy2UYEt+4mHZ7w==
X-CSE-MsgGUID: DE4jY2xWR3e+dqUDIYebrg==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="10131378"
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="10131378"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2024 21:38:36 -0700
X-CSE-ConnectionGUID: bZ2xNh5YRpmhmLzs87uDJA==
X-CSE-MsgGUID: SZSbJRiJQ1q3lKGOl85jyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,236,1708416000"; d="scan'208";a="56986354"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Apr 2024 21:38:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 27 Apr 2024 21:38:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 27 Apr 2024 21:38:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 27 Apr 2024 21:38:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dauqf1bjZ1M4PGIh2y9vRHQMwiiuMgUgORXOPouRQueRc11zjsw17Of/yesnrxp2vQ4s1J/T1aiA7E15Q/HwAR5tlPMpEJrMPhgZtgbvePz/Uqqo5+QNCQTxhWKvC40D3tBZiDme082y+nvmxZcuFC9u8+wf8AhhR3k0AThNxqIcpxls7mIIg7zo78r9zOfosWZoXyVNWiymdOJzUJNxTG1edhk/SGwAoe1iGxMtJN6enL4ltL/SWav+LFrUZt51y3pM79Cnz+Lx1weoAB5OAvcYyhhFyAVtM8it/Y6KUOqyo/9ddKHORqasa3AdYt1S4TOTFtJm0nB6JLQ0hRXxTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4oetTeGMuTZd46DvENy+bPmm+64vs7p4CoMmBx8rgM=;
 b=ATsKl8UgAnK07Y09MULTCRiw97V5XUFthp9dAb7fFFTPb3F2D2ALZhy3VPbZTU4yQpORhL1jQHS8L2I6iNkU78YjyxuG/wpZ6joxZvn8vzh4FbjG5XP9yWwxQyCXKdG0AXksM+CMpNWeiMwETDduGcuAgYzlSb1A3L5iJrzCd/MfAsA0aiJtxoCaS5i+DtD36XRJh2TqGzwux3yE8tXF4C6RbkFOxuQIiYEh5GMXIlPmGUPDQz+L+dYbf8U3Y7++NrvmdCPiSvjS1kWcyekenDav/wJuh9bK+QtLKt2vXiyO2Y/uGZEDHLSa8O1xRk3/xFuz7SJWy6BbL757ubzTKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by PH8PR11MB6610.namprd11.prod.outlook.com (2603:10b6:510:1cd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.32; Sun, 28 Apr
 2024 04:38:28 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50%4]) with mapi id 15.20.7519.031; Sun, 28 Apr 2024
 04:38:28 +0000
Message-ID: <4427a166-c77a-4e7a-a1a2-0b02f4fbf3d1@intel.com>
Date: Sun, 28 Apr 2024 07:38:20 +0300
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, "Jesse
 Brandeburg" <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20240423144100.76522-1-ilpo.jarvinen@linux.intel.com>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240423144100.76522-1-ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|PH8PR11MB6610:EE_
X-MS-Office365-Filtering-Correlation-Id: b123811e-eae1-4660-2e38-08dc673d0c4a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005|921011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVFJQTNSVmR5ZDUwbHlMNVdNZzl4d1RDWDJVYUZNNmR1d244bm81dDZUK3VH?=
 =?utf-8?B?cUlTa1ZWSHV6dkRlVE85TzNRMUNWUVhRQmlvTWUxTkFPcW5Sc2NaRlNPTU5V?=
 =?utf-8?B?aHhXWDNxNTlvTXROdlpGZXgvZmhhOTdVNGV3KzJWRVQ0dHNPNHdqVmFGNEJC?=
 =?utf-8?B?TnB6a1QvcVNmdHQzVXdybVZrRHVYUnMzZTlIalZqam5NYU00Nlh4Ym5KcWk0?=
 =?utf-8?B?aURZVE9mK1psOUlHY0lrd2IwcDNzTDFVajEwOEMwY3RTa2lRTWZkZTdTcnFt?=
 =?utf-8?B?b2lUbVZmaEw1YitOREVTWWV4UXc5TVl2QlR4MEN1QSs5NGtnYjZRNlNUZVh4?=
 =?utf-8?B?cFlBQTdrclVaKzhvWVBObXBjcGJkM0hpSkY2ZkN6THBOWjRvVzBEaTdGZExM?=
 =?utf-8?B?OVhkMm5rVEFaUld5aTVuYkZOdVZUeVlSNmNERGUyNlJXYWJEN0szQ1pmdG1x?=
 =?utf-8?B?NS9XbkhlMGF3Z054S3hENngyTG13SWlPSk1VN05MNWRrUE4yeGNpL2xjMkx6?=
 =?utf-8?B?ME1aa3VOQ1g2NGN4WG4vU1Z1bzE5QndsLzkzZnB2OWNYTDZBbXdBVFJyUTY3?=
 =?utf-8?B?UklrMDkwRmVpVmUyQ0taOVlUUDduWmlSNlY3clJ1OFZZblJLNFZEV2JDaTZQ?=
 =?utf-8?B?SHpVZUFnNnBjVVU3NWZnMURvSXNiTXQ3T2REcGlMNGU0WEliOG5hSkFoRmxK?=
 =?utf-8?B?R1M1QkFuRmZqOVVRZEY1NGdETE1XKzFaWEZ1ckdobENJS3RQcVNNa1ZTKzdI?=
 =?utf-8?B?NitpOFVuWjVkcmVodjFKaUxuUnQzbUdtYjdlQXFLWElCYjRxTlVra3Y3S05B?=
 =?utf-8?B?VmR3ZkJDWDNZNFZOalVMSFlMZE10dFFEVnR5bTN2VHFEL2RSbE16N3VYVktn?=
 =?utf-8?B?MTVqd1F1emxEdkpONFhFYm1yQkxSZUVwbXR2M2lUcEViUE5NN2M2MFgrQVJV?=
 =?utf-8?B?QzErWkFNU1NYRjRnSTJWWlhLbEpmaklQWW55Zitxem9RU2VmOU16b082Yktz?=
 =?utf-8?B?YWpEWUd4VDZyWno2NWFMQkJpMEg5Yy9DN2dVei92ZFgwQlpnUytxQjJVQ2Yw?=
 =?utf-8?B?cmZnYXcwMjdzRCs0S2hmU1VqN3M3K2tYbkdQMzUrMzhjNlRMZDFuYWs4MHdF?=
 =?utf-8?B?WWRkQjJTZDUxNk9lQ3RLaGFxWUlTVFJhSnZ0Tm9GWEErMmk2WmJCbEY2a0Fo?=
 =?utf-8?B?K2E5V3R0RUdDYWNhcjFUVGRNTEpIMFV0U0ZCTFVRMU1DYkFSYmVqaWNONWp1?=
 =?utf-8?B?anllZHd1dWtLdGFySndmdG5HTGc2c1JmV3RHR3htSFNYaDVZUTE5M1ZtTG1x?=
 =?utf-8?B?Z1l1NC9kWnIzTGlmZnZEUXMvdGw4MzNISmljazl4ekxISTN0VjZoTXVyVVRK?=
 =?utf-8?B?Zm9KZFo1Uy9MS0pDQkFZemVHdU5BakhBaThZaENadjNyNjk2QUhmdnZzWk9q?=
 =?utf-8?B?OWl0Nm14Q3ZhSCttNGloYmNBOE42aVQ3bzQ0L2NzaW1qOWhhTG95Q3lwUkh5?=
 =?utf-8?B?enBEaHdpNGIzZlZUTm02RzVyS24rVnFBUGwvU1VyS05QRXVzVzRyV2I2NXRN?=
 =?utf-8?B?YmJVQnpjak5XSnV3VHM1cEU0QXF0Z0llWXg3MGhoWFYzL0NYNnVtaTJSRkhC?=
 =?utf-8?B?L1VyMVA4Sm51em0xZ1hZZitVbjhleVRRVlUrWEVuRFlHUURsV0JldURWNmli?=
 =?utf-8?B?TkprSGc0dGtGZzcvRmNXNTM2bzI3d2VZRVkvcU8wejMwdldkc05mbkYxazNF?=
 =?utf-8?Q?sZIa/szpdGnnTSBvmzGqCwx67BbVstdceCG/GHp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(921011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEY5bDZCWTFFbXJxVjZsT3VVeHNmcTdxZkV3QmdIS0tUWU5ONEhVbnFhQ3Vu?=
 =?utf-8?B?NW94N1NjL29tcys0ajN2R1M3UzVXWGkyaHNTRDhwbHhZYXdoeFVVQjFRNVpr?=
 =?utf-8?B?QklHZnFIZlNYL1p6aDByN01DYkY2M045L0lKU0Z6UmFFV2d3ek5VazdUaGR6?=
 =?utf-8?B?SFlnZnNmbXBMZVZocjM2SWZEUWNGMmxKZVpUMXQreWRJRU91YUdOR1doVWFy?=
 =?utf-8?B?NndiaDBEbkFxRjFCT2JveVdMc1djOUZoUHR2Q2l5NUV6aitsK0p4cEhmT3FV?=
 =?utf-8?B?VnZCTFVNZGh1d3YvNFcyQmZicmR3RVZZUWoyNkxVWHF0dTh6YkRON0lMUE1q?=
 =?utf-8?B?NGhzakp5K254R3g4WmJpSmYrWVpzUElTNGZ0dDFqUy9RQW40TjNuNi9EUldR?=
 =?utf-8?B?SGswbXZLTVdqR2VaQzAxL1IxSDZmUk1vMzFLUlRQZVd2MWg4ZS9MVEtyVUZz?=
 =?utf-8?B?YnQwcG5TN1ZLUjJlUHd5LzJrM3BqR1lZWXFSK1lTYXFRa3V3TllKMVM1bWhS?=
 =?utf-8?B?S1N2OTJIanRzSVhCU1F4UkI1aFRZN0hUVHplNHpYRE9oa2wvVUlRM1hTUXZJ?=
 =?utf-8?B?eEpldDNQZ0s2VUJqV1lHT3dRYlFlNmtZdWRBTUNzdlVYNVZFbUYzRjVmZGV5?=
 =?utf-8?B?SjNxNC90SVMvNFFzYmpyNW00dStkSVd2K2FBakJYRy9WbzlKY1BUV3pvSXhQ?=
 =?utf-8?B?cER1QU5UUWRlVzQ5eVZjanBDQTFteHJjYzNpRjViYVNCSzhTS1N5b1VFdmF3?=
 =?utf-8?B?blJvLzVRc2NwSzd4a0lSUnhNNWt1RFFJMGFXQzRiUmJwSm5aWTBmc00rMkRo?=
 =?utf-8?B?TTN4RzlKellQNG5rUlFBOU5wQ21ETzJncmp4Wm13NGF6VUllUTBYNWlaVitN?=
 =?utf-8?B?YTBPeWZjZG5tRDkvR2k2RkI4cllxYk1jQXRQYk5NN252U1Zkanh0MFRkZEJz?=
 =?utf-8?B?MFlNNnlBSkwxZDFCVmI1NWZYTW5MODJpR0c2bzhQdnV2Tm1ieVhJOHIzalk2?=
 =?utf-8?B?L1Nzc093RUxwdUNaalFwUkNBYnlEdENPajVuT1hoNnBHY3Z0Q0FsNVFMcmdK?=
 =?utf-8?B?aHBoV1h3OUZqNDdOM2dCY2NUTjNCOFFrRFRwbkxxYjJUYjhhRVduYWRYV2lL?=
 =?utf-8?B?dUNnelk3a2FNVkdPdFR3RUFOdEhPRWVXSHllQTBONmlweUY1akZZN2dvR2Zm?=
 =?utf-8?B?TGRtQm83RUJjNEh6SkRPMTVocDl5Q3lCRXVobDRSWmthMkhPZ0llbk90dFdY?=
 =?utf-8?B?ak5uWENjWE40Zy9jcTF3YVNxQVNyWDdrT3czRTMwOHcraVNJb0NnV1EvVXZ4?=
 =?utf-8?B?a3NlRUQybGRZQ2dRQmZRVE5obDFLdEdsZjN1dVlWdHY4YnR0NTlDRlRnN3hy?=
 =?utf-8?B?QXVUd3BlNVBDZVEwOWZ1Nm1RSDJQZXJ3cEFHMm5iaVlyamRSQ0NLZjJNenRR?=
 =?utf-8?B?VE4rYzZ6MUlBakxhdlJpekY1cDlBLyt6d0JCblo3eTBCdng1YmVqaEl2UEFv?=
 =?utf-8?B?L3lOb0Y3T3NRUWYrQ1NOTUd0Vlh6cHNNazdTanllV2xyM01sTkJGc2w2aysv?=
 =?utf-8?B?cVJodG03eGtrOFlxWTV3K3liTEduR2cxT0xRSnYxRmJBWjNEM1dyYlhjWHVP?=
 =?utf-8?B?NEIvVE5sUHJ4WHJXOVhXTCtGOG1nTmRzYVFxWU9KdGppTWVmMnRzR2xXSmJ4?=
 =?utf-8?B?QU9UWFJ0STJWKzZ4cHNPcmRVSVFzcWFReUp2RkI1ekk4TEtBZ3ZSVCtoQVBK?=
 =?utf-8?B?cXFEeTJoaXdqcXErYnhQZ0JlVUZ6OURKMjRUeUJUZWlvK3ZYT2xTK2hQVER0?=
 =?utf-8?B?ZjFmcXNSSzBrbzBGdndLR3RKY3o2dnVpb0VjM1ZGeXJLcXlBaGJhYWJ6TWZG?=
 =?utf-8?B?cnY4RmM5ZXRjaXgzTkZwOE0wL1J5THJsZDBUMlowWGd6Ni9qT0FPYlc5UU9I?=
 =?utf-8?B?QWZqd3pRZW9TQlpVT20yV0dJSmNuVlBrR0hIdmFhV1NDcUNiaTJDNDRKaHlT?=
 =?utf-8?B?T1JuZUF6WndLRllhYmhwSExEcm1TcVdaQ1hNOU1pWGRSbWMvMjMxTVFIR0JP?=
 =?utf-8?B?b21YQTBwZmgwK0xBZmhjY0hRSWVFNUtlOG41Wk02VnpvQTU3WXVrd0RUZmFr?=
 =?utf-8?Q?MIEWJvUW3nmyVzCdMFZBeFo95?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b123811e-eae1-4660-2e38-08dc673d0c4a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2024 04:38:27.9928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Mn0LnetU3lUrSPxZ3n/Fq84KeXNIE4VK7YxdPCaEiac+ZGkBDVJOdDeZJXRZXVqtSBYtkjBNaoxDqCASZlQBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6610
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714279118; x=1745815118;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=S12QPiAMol5ChTHexziDJtdQ4TAzzc5AKNZ9FAop8+M=;
 b=b+5M2z5sxFAlMr6EKjNI6hM8LfPC37e+BjI40fELQ3vCr5Svgl9twvSU
 I9FmL2a+3l34Tuup1c1K04REIeuBtPXPrIYQJfrGUsddNHPGtF+tZBHKe
 mQ+LVHnsH0P3/ZqkG0gO5bzGz+Q5mRDX74hLo5BNHejaPl6sMKamNK0BT
 PzCcJqqlrLkJLBhWLCSPM64Zkq4RDaKVlH32yTgIomlJXP/mfk7cmgpKI
 r1wqFHefXpQP8OjrrOK3hn+Qiq25xvw7O/3EQnlVj+cVX1Zgbh+37ivfg
 v3UNCPmULWJtALejAGxRkddVg3KoH1oSPLxaO5MsaA8PgiLJtpsuQvZxV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b+5M2z5s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] net: e1000e & ixgbe: Remove
 PCI_HEADER_TYPE_MFD duplicates
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 23/04/2024 17:40, Ilpo Järvinen wrote:
> PCI_HEADER_TYPE_MULTIFUNC is define by e1000e and ixgbe and both are
> unused. There is already PCI_HEADER_TYPE_MFD in pci_regs.h anyway which
> should be used instead so remove the duplicated defines of it.
> 
> Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h   | 2 --
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 -
>   2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index 23a58cada43a..5e2cfa73f889 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -679,8 +679,6 @@
>   /* PCI/PCI-X/PCI-EX Config space */
>   #define PCI_HEADER_TYPE_REGISTER     0x0E
>   
> -#define PCI_HEADER_TYPE_MULTIFUNC    0x80
> -
>   #define PHY_REVISION_MASK      0xFFFFFFF0
>   #define MAX_PHY_REG_ADDRESS    0x1F  /* 5 bit address bus (0-0x1F) */
>   #define MAX_PHY_MULTI_PAGE_REG 0xF
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index ed440dd0c4f9..897fe357b65b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -2179,7 +2179,6 @@ enum {
>   #define IXGBE_PCI_LINK_SPEED_5000 0x2
>   #define IXGBE_PCI_LINK_SPEED_8000 0x3
>   #define IXGBE_PCI_HEADER_TYPE_REGISTER  0x0E
> -#define IXGBE_PCI_HEADER_TYPE_MULTIFUNC 0x80
>   #define IXGBE_PCI_DEVICE_CONTROL2_16ms  0x0005
>   
>   #define IXGBE_PCIDEVCTRL2_TIMEO_MASK	0xf

Acked-by: Sasha Neftin <sasha.neftin@intel.com>
