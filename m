Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8P+QBgPY3GmcWQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 13:48:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 194593EB7E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 13:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60289841CB;
	Mon, 13 Apr 2026 11:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqzKm_LGnQY4; Mon, 13 Apr 2026 11:48:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D909A84230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776080894;
	bh=8El40Nqkm/TaaXwOZ4Vb4YFjDlgZV7O3wigyGq+NSy4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U/+72zlUx5gPO4ksW4JS57bRepLjvyPR0jKPm+Ihkmt+MlsV6TSeaitFTGWtcpzck
	 XPL6gEZ7lRc8ihGuvlJ/7b+4g6Yx5I0G5sQrLaSjlKE47AcXHI97N2LnVTvUyVF6IG
	 dg7Naw7A6DFdNo+slIboumdvCZhSa7z8DfGsDSIkt+g0397EDwrpbqg2dbTWJ8G6P7
	 kHx2G1Uh5TRzhxyrEKS7bp9Ryxu3XZSFMxeuUJTe6pfGbtM5HNQ1N0CAh1jnCaRIA8
	 7ifdP5HJEAtd2Ba3ClWSDRNlIL+k7RZw3q1rRRYmdi4yHxEeDHKhuXBguSJnOLD6Eu
	 /XPrvT75tA/qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D909A84230;
	Mon, 13 Apr 2026 11:48:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BCD5194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D8E040FC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id stcsJLHcwMSq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 11:48:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 974A340FB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 974A340FB5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 974A340FB5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 11:48:12 +0000 (UTC)
X-CSE-ConnectionGUID: mor1iy3xR5eSYaLErmte0Q==
X-CSE-MsgGUID: sWutWYmoQk69gMLey9PcTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80600795"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="80600795"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:48:12 -0700
X-CSE-ConnectionGUID: gB9L1mGcS2qqYhQRVwAzFQ==
X-CSE-MsgGUID: uMTmL5HHTv2drPrQlPUL9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="226595631"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:48:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 04:48:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 04:48:11 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 04:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mE/p590Q1kxw2Tdjrh06BREWvmlyH785b7V5swo/RGpmiZUzitQ5fbmEMVMgNyEDP3xMIqB4/MGvqHf0QZx7FK+y46yI2OuRS8c3pRt3A0s/oKsVw1gKQqg2ibvNypzftbYf1vjnX7cCnuUjw+0L3DY8YHg7fVciWBxKq1r7dsCvmFQRcrKvAYBTgK5kH7OWak7TSJdBLYp0kC84xLROdxFptiqONU/QMSnA72Jq5+avFKlTHwPCTZfvNnCVGEAhxjVNzmFmO1dMmOs7dZLwnr8GAzynGn89UVGqHhAm6O6E/ID3F49P3ZVZ42pjJ08OkmLvBef031P7fT3BieAQwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8El40Nqkm/TaaXwOZ4Vb4YFjDlgZV7O3wigyGq+NSy4=;
 b=Gk7ALx8+bCdT/MiPOPpARVF1XpFhyqpccfaWIL618edM7T1Pjn6jKC8nwOjnW9D8KtfvGric+26wOe20DqmeYqqglrTFAOlcWWZd3xZ9jGK0VRkGDogTE7QHZRv2ACUalFQRr/ToQ+3ilQ03aJ2glMrDiqKd06vWI/qPJl+Vi4ZQmDu5gdKiydpRUyE26+ePZUVLzhhEqqXulyrEUG7Vhnu4wytFZ5+PetV9V5ABoMKdjSRaADButILWYun62Lt6LFNiuMo5rFbnzkeOssx5QW9lZBn0LoGhckzIC09pfoghfonGYlc13oBHM9Q+eokbKkPX+8Lo6zvP+cBEMj4oSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB6623.namprd11.prod.outlook.com (2603:10b6:a03:479::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 11:48:07 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 11:48:06 +0000
Message-ID: <2a90e151-2e7e-409d-9123-1e261c1a24f9@intel.com>
Date: Mon, 13 Apr 2026 13:53:27 +0200
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <anthony.l.nguyen@intel.com>
References: <20260413073035.4082204-1-aleksandr.loktionov@intel.com>
 <20260413073035.4082204-3-aleksandr.loktionov@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260413073035.4082204-3-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0006.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB6623:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c0cc9ab-0495-459a-ecc3-08de995286fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: FzFowUZxHcLQIYOiIwjY3hJNdl5VNSO1GfAiKSk5lbhSUmZnt1o1Ryy6lPROdUEq4wvlhuhtkwu/N8b3XMMEP028mVlWZvuiNhcPVCR3BGRoa0PlE8vJyEMTXOh43XeCSKjbpZFeFipbIzUflkzwAxE0TNEjvMpZf3qEWJ0e+lB5leld6i8NQVGRaeIv9EvObJLunB22TAr7d4BEuQj+ODj4pIrz3JHVdLXeWS8MAgp4Q3K+R+30x8ex3XDFciT0NiVgAzZcyXP/1z5yJps4wchzIWEFvDZ+AAl6MMIPzWTUZdddn2ow0Fn4FNJM8+NCVnqISG00vZ/p1Xjn8ZuyWk7cwLLPp6bFGTw9Ho0mxERQqC0wsd/wwCnB7fFtjFYJF4jj2k5611biokAgz0SaFbj9Nwygv8P2HIOCQ6T/pjz/CKwOfVwdu82H2JfwxDjyni5KgomQXaxBx9FjByNKuxJqPy3Bub8LRT6V9dBBNTqxgNEnu61dtP1/z0VY8Ns0cLTf6xU8xrgfLp2IoRp9kMiq3mgnGjVhAICKo0RB5kOUw3D1SemxRJ17N+gEIDsmalj2U/G1MxDPjjDP2Xs/KlttPlWu29b0AAJP+OACEevEw7kvbx2DvZPeeDauPfkzLABLcTDUFEwdOW48UoRVXC9vx1/bDs7W/v50jE818vhBcbUyILEJCKm0EAQWz9gwvWvkJZXBLbxXqZj+mrZICmHtPkp+gqUBqP2tmrGhfJc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnlxcHVyZmZJRjJ2WG13c3dOa2JPRW1RdzBzTUVIZUVZcVFyNERVYTU4NWdv?=
 =?utf-8?B?RC8zZE5qRUlUMmplT0xScm9WV2VWeVM4M0RwZUpuaHRCYis2RFBOdGpmWCtn?=
 =?utf-8?B?MENCWCtEemhvL2xHWUZoMlpoQlpMWDVoUUphNWpMcEJlemRBazZoS0RkbVhv?=
 =?utf-8?B?bElicXROK1hlYytYaUtpNUZnM1pFaUZaY1ZDd01sdjhuOUYxamVaU1BvMU5Q?=
 =?utf-8?B?R2ZJcHFvZkVhYXN4aFZsNzBWMkNuMUozdW5MWFA4ZDhZOFVudTl3eVBIbFhk?=
 =?utf-8?B?T2U4WmUvNE12YkJnWE9kcDhCVU9sb0lJS1g0TXdEUEk2MllTa3JJcE44R1pJ?=
 =?utf-8?B?MjB6enoybjFGdFBLUFV3MXgzQVA2SDBqRFRDMm52Q0VIQmkvSTFwUFJBS2t5?=
 =?utf-8?B?SVY5NW5GZEgvQmJRazZKSWgvdENaTGNYMWlQVU1nQm9qQnUvZytib1FOLzRH?=
 =?utf-8?B?QWYwUnZSN05JTVhGMlBIdGFkZlFKbFB3aXoxMnhlNDVXdWt0TjF4eFRYcXY4?=
 =?utf-8?B?ZFpZTFpuUHZUVUgrVi9qMnFaQWdxT01NRlh1MnMvSm0yZ3VOWEVrMDNWODVi?=
 =?utf-8?B?bkpNZzRxbGpUUW1pd0orWk10R2VFWll4eFlwTmhMbjVvZGhBa1VMY0ZHeW1r?=
 =?utf-8?B?RGU4R21CNnlWS0lBd0pGS3J0VUcvVWt2V3ZQODdGakZtWG5mWkdkQS9reFIr?=
 =?utf-8?B?Y0FmVXZSWFNMc2FPMFFQc0pUOVJzcm91aHUvbjFkOVJiWmZvRmZTaHlJKzJl?=
 =?utf-8?B?MGtiMXExbzFiQm5BcldIL1NJSmRoWCtxZk0zd3hoWjMrNUNMTE14MXFXcU02?=
 =?utf-8?B?R1dDVW5RbFZwSDFlOE5WTE51T3JSSVN0RC9lYU4yRmVrVVV5bW5JekNZRVlJ?=
 =?utf-8?B?RkNwYi9YdFdaY1dFYXE5RUlFTkJMUTl2TGlYOG1NL3U1UVBlY3JXMnkreSt2?=
 =?utf-8?B?ZldIOG5aRVl2V2VUYUJsa1JjOS9tUTU3Qno5Tkttc1lzeXlrcFNtSGNhR0dQ?=
 =?utf-8?B?TzFEcHNLMXo2c3UwbDB3dDBTTW5BcWdaamg1UU9mNktMYlA2bDdEc1Bnd2Jz?=
 =?utf-8?B?T1BPTVRFcWYybldKN28wd3A2RUZwV1ZTQ0VmNS9LbldLbzNDaHRUNXY4T0VJ?=
 =?utf-8?B?UDZ4ckxqMnI4cnlVQmFCSWtQOERmRDh2blpHUk9OYXFySEZJU1ZneUZEMTFv?=
 =?utf-8?B?eFB5ZWtINWVHL2RoenkwREtIM2N2Rk9XUzh2UHU1SWRIcHVJOFRkWFh4NWJ0?=
 =?utf-8?B?QWVkSUw1OWdwbElWb2hjL3c2RUhpSFY2Q1RCaXBqL21RT0I3RDdYQSt1OWhZ?=
 =?utf-8?B?Qmp0Z2lqK2tXaWNXR1gvZlk0TWFkM3B0WWZrei80U0E1WGxDWmxkSzNLQ3pq?=
 =?utf-8?B?TGcvRUNtZGpNNGVCR2RLL01OaTNqeEFqeEtkNFNWUlQ4ZkxudmVZRzk1a3lE?=
 =?utf-8?B?MDIwRzhZclA0U1lxWnNhQzFWaC96L2dadXQ1dDQ0OUtsUUtvRWJtRjZHdDZD?=
 =?utf-8?B?MFFtQTZ2bXRBM0NERWdyYnNmQ2FTR2poVjFqTm9MK1BteW9QNE9zUVBnMGhS?=
 =?utf-8?B?cDIvejlPcGZIWjJOd040OFZjeDhCdStMcEpWS3NiT1YrYjRJOTNKSzBJWE9H?=
 =?utf-8?B?SkFEK2NzeFhtR080QjBpb1Z4SUQzdDY3azhlRUlMeitFWUIzUW44OTkrOFo2?=
 =?utf-8?B?Q1AxdmN6WVdkM3E1TllJcm1YVm9iMmdkc1NVU0djU3laOG1NYi8vSWg4eHVp?=
 =?utf-8?B?aEo1enZvTUdjbWxXUzl1NkgzQ2p0YU1ScVpKejFDTm5HMXRQZ1FsT2ZiMjRQ?=
 =?utf-8?B?dHA5STBUUitRNjlSTUNTblR3eEhidytqOVBPbnFzOURobVZrbGVkY2ZvZHNI?=
 =?utf-8?B?OWszMElDb2R3Nk5pMUowY2FpQlVmd3A2cUQvd08xS1JKT25yY1dDbUpLQUdw?=
 =?utf-8?B?Y3pWK0Uya1YzbzVSZnhRVEdhMXBBTjVJcGh3SDF0SWlQbkJFOFlvMlRPTjl4?=
 =?utf-8?B?N2NSVmZjTXg1dDNtcHhOWkRWdDFqZ2c5THZueDkvbHFGWHZYNUZpd1RjV1VL?=
 =?utf-8?B?MDF0TzgrN21DMGd1dHhxUzBNempndDV6RUtMQ1dEQ0RYMG85VXFFMmJmL2Fm?=
 =?utf-8?B?MTRIZWVTcGd1MUtrSTdMRGJLR3lLb2hBSXZGODRCWUU0eitYeitsS0VpdVJR?=
 =?utf-8?B?RVEvQUVNVkhseXVFWE1Ka3BxblhiZ3JHbFRKdUtjTHU1WmVMN2pQWERDT3Ns?=
 =?utf-8?B?TzNoN1Zxbjk0bkhsSkwrUEJzdmVhaE5tVEVQZUtNMzNwc1ZBYzV1M0RXTnZO?=
 =?utf-8?B?eFovWEpwbDdXODNEYmZ0SEZlRnFSZzhGQjVvRldoc1F3TVkwUEh6ZnF0Znpj?=
 =?utf-8?Q?9pGvxkVKdxrEM1D4=3D?=
X-Exchange-RoutingPolicyChecked: vLn56yd/hZZHzaJyxZlB+KjGlfHrylNdEblICLyB+radLEqhwNC+iYTg+mbZhOXLwbeKJgEq5WDMLFGu6nVGlcjrqofHmDt7XvI1PUJiO+vA21PkHKM+QcF2NWiUkoJ/ldp/MpoTamKl3BUchZEwcD84xODq5j31VbHZyL8+xtKThdGPXh2O6be9R4C4g4ZyYgWl3aqNsCutVPwBRoQFGdsR9ueI1DB1gsqDpAXNvVRPe+F6w1iPqPEv13hy2B/a3GeQ8kaPiRQSqTjV9dKGC8mnp3bOmFCn3N5COaloOAlO2iRQddQ2tA/YN8N0H/juJJXZp2Ogt6R4f3FparZDBw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c0cc9ab-0495-459a-ecc3-08de995286fc
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 11:48:06.7125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JsDSmP38azPKukS4vdi8QQh4wyHXUeYZqRVcHELoN7PPMnTqxNYSC0h0CVfWmqTk2IMrV/fqWZHt76jDA9fivoSqa1RXteRzICv/Yq7AhC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6623
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776080893; x=1807616893;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ri6IRf8DqRa5VF8J8ucVw/hcV1bZqmM/NMOQSIP1vWI=;
 b=cKdbkizYUd1e3CuAEJl5evbzFXlnqyz3jMfJqXoM+ou6ii7LyqfyoKOm
 VyU1uHGCd46cevlqDSAYnnz30q0PAvkuhitj9p13tRXjNuyeBJwDTycUS
 1a2vj/pAW+RJ9OvSUpLApXkYcgCDMxsXw07NA70/eSIVDcTguslmhNybP
 cHxccUGQixxFS+9sQu/CEnazUhqe0TVvAbgyUWsaEwV+MatftlBeXPdSK
 ncCdvE9mUIw9WJg34Y95c3wQ+mQkjgSPR9SLzvnyUcYOxq2REJhAJbAOf
 azV27LlfrAr1ptM5o4o+H2YNsCZpi9kPyLRd4ykjZ/pwSS7Z759kZLFU1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cKdbkizY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/5] iavf: fix error path in
 iavf_request_misc_irq
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 194593EB7E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/26 09:30, Aleksandr Loktionov wrote:
> From: Piotr Gardocki <piotrx.gardocki@intel.com>
> 
> When request_irq() fails the interrupt vector was not registered for
> the driver. Calling free_irq() on a vector that was never successfully
> requested triggers a kernel warning. Drop the erroneous free_irq()
> call from the error path.
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index dad001a..ab5f5adc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -587,7 +587,6 @@ static int iavf_request_misc_irq(struct iavf_adapter *adapter)
>   		dev_err(&adapter->pdev->dev,
>   			"request_irq for %s failed: %d\n",
>   			adapter->misc_vector_name, err);
> -		free_irq(adapter->msix_entries[0].vector, netdev);
>   	}
>   	return err;
>   }

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

next time please CC netdev on IWL submissions
