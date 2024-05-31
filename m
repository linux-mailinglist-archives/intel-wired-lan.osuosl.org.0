Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7348D660A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 17:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11FD141725;
	Fri, 31 May 2024 15:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtIsx_3J4_fO; Fri, 31 May 2024 15:48:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2AAE4169B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717170481;
	bh=YACerXHwVKSG+0WEMidAkDoArJZnN4soVhYP7UmfweA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ex+leWsWLB9sPs9Dil6LqwYSJ2vXFQQ+bGY8SQ3kaq+94JX4N241EACewNEmW+CG
	 qFL1HAyJEQCmXeJRWF3pVK9zqfrWrDoWbLnf8BLe+25eXo8H0/+CmLHsV+N9XIykFP
	 vG0wu7+V61GZjWWuO2vs0NOuInUNCT4M5+FcfaYxUX+e1mhT/pZy4rMhgQNVBsjQFC
	 wC8YmwjvLjj0J0FStJ9NM8i1FOGi4TtZaCyONJ4xC5wrfWhJeoU3KJqNBQb3VC0uWG
	 Bj0oCxPi2Qr3XbxsNwhBWZM3inqwwBYuPecg23vm+HTeBSi53JSVi2JRtebStPxwaF
	 p1GY2q9HT+wiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2AAE4169B;
	Fri, 31 May 2024 15:48:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1637D1D54BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 15:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 015AC845CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 15:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6LVOHoEVSPMJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 15:47:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D9E42845CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9E42845CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9E42845CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 15:47:58 +0000 (UTC)
X-CSE-ConnectionGUID: MpuzDCk5QkSxJEEDB1DKMw==
X-CSE-MsgGUID: acnUyPkYSKOTVyHfuoGLHQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="24350269"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24350269"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 08:47:58 -0700
X-CSE-ConnectionGUID: aUpKS9G0SMeU/4faIdwqZQ==
X-CSE-MsgGUID: ZXlovYSvSVmb4DV+E/dQAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="73683513"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 08:47:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 08:47:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 08:47:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 08:47:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YsShinNwfsIlzYINZ5u8SvDyOXZi/7zyh9zvO52DWt7NgL7RFCUGNb1HBd0yxN9OcsORS726vHxLycmlfT/bD67OAiUaWTF1hhaGPabJ3bGDcgOQ26pjfNhAH+QMMooyA5lw+eado93gFWpnSzbxv0qj5idkyvkyQWqKrqXngem8YjGSRkoEh0XOTx8bnj0BFykrPxtp0WXSNbAN6ILAznLK2A+iqjbcYBgQ+jjxbXJkzigjP4Rh684K0zRhF5KTnc+vDsJ+nzJ5ch5rLbKGrSNp870XBALpBSrz5g2nkAT+YXynuFLRq25kWZ8Bcmy4lxlHUW0F8J9EnZdQNasaTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YACerXHwVKSG+0WEMidAkDoArJZnN4soVhYP7UmfweA=;
 b=nAHTbn6ngGOhO9oC+i8OcWnh42aNElc2CgbFTHTPNn6q64mPD269X10gm2ubwVij/srS8Tx2/ZD+l1E45AgMhvcUYbArrgvflFRGRuBmbDuKi3/6hDuOGUMOJIN0v0PXhU5bGGhz3u8YTwJweILqep9dtt7oRG4gD4HtGFvaRh1gZMorp8ixy+5H7kE7yD5PNFypoHzgLz/vl/sB8eGmwFoF6+Dc3F+pQveu3PiR6h0FYEFXykI/HjWMi6sjsK1WY8NCenm6w43LHbdD0MAcLm6zHbDg4iykdSBvGF5EjsQkVfOCM8+cqyC2k9xcgMiSVsoL3ZHfL2lHJ55nRPZpdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ0PR11MB5055.namprd11.prod.outlook.com (2603:10b6:a03:2d9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Fri, 31 May
 2024 15:47:54 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7633.017; Fri, 31 May 2024
 15:47:54 +0000
Message-ID: <f2cf6650-a164-4d3c-a3d9-cc57c66069a5@intel.com>
Date: Fri, 31 May 2024 09:47:47 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-12-ahmed.zaki@intel.com>
 <20240531131802.GG123401@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20240531131802.GG123401@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P194CA0024.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::28) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ0PR11MB5055:EE_
X-MS-Office365-Filtering-Correlation-Id: 02298df4-2ac9-42f7-30ac-08dc81890917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3dUbklqOHIzQWgyUU90WlgrMmNYVzU0K0xVdXhQenJLT2NFblRHWWZIdjF5?=
 =?utf-8?B?U2tmeVE5dmhza2NNTG5yVVNEQmY0UVBkamZFWGF6UEZWUTh4dDRaYk91SGVV?=
 =?utf-8?B?U3pnRmhlVzF2b2ZiQUcwcnA5SENLS1YrMnJSVjdHalY3MExJK0xrdW45WU1v?=
 =?utf-8?B?cEh4Zlc4Z1dPck1OYVJYTjcyVGlxQ1Fyb3owNDhhK3ZsNGdIaXh4TkZGUG9O?=
 =?utf-8?B?OXNCQlkyQnp1alB0RVRGUS9hN3hDVHZqNGxpM2FuTmM1UStDNU5UTElic0ZB?=
 =?utf-8?B?L0xYUkNhQ3FsbzRXaFZJUWhRSDBaUDl6ZnY3RmphalZndit2UHdPdXdnT2ht?=
 =?utf-8?B?L2p4SWM2N1lmanBndENUeGtKUUtZbXI5NE5XS3IyRVZsRGh3WWVTY0d4cTlv?=
 =?utf-8?B?MDFMZElzR3ZteUpTYjk0T3BQL2tJSGZ4c2dFUzNCcXpOZ2VXZDZ3cGF2SzRF?=
 =?utf-8?B?dUl6dXFRY1Evc3FVVGU3Y1hPKzdZT1BKcjkxWUF4TDdVanhma3lxblhiRkJ3?=
 =?utf-8?B?UkNEZkt1cURJZVA5aEd4WHhaZUJiWkE3RHdTVmR1ejl4ay90YlZmbjZDLzNt?=
 =?utf-8?B?U2JzcWtzL0FvcWduc0l1dVFVU25MMzFmVXNmSHY5dWFrNERlYmw1eWVlNFg5?=
 =?utf-8?B?bFBuZm93bHpVNmZxR3hXa1lsemt3WVR2UHY5Y0dNTGRYbGFubjR5MWNlTXli?=
 =?utf-8?B?Z1B1em9wUkk2dkRBZFFNRVgrd1JFUFp0NlBGbmVpVW92Uzk1MzZOaUdPNFV5?=
 =?utf-8?B?VG9QUjd4YWtwSFN4RmdzZFpOOUNUeldmNVJqTnlXek41SENFaVdPVEc5cWEz?=
 =?utf-8?B?NkdQNk1FanQ3Mkh4b3VnNnBWenBHM010TU5DVDhlMzN6enJtQWRydm5MOVBl?=
 =?utf-8?B?SjcwQ3dIcVlMYU5KbXRucFpCMVM2NzM1ZEJIUGN0b2h1L1FMVUtnNEtLa0Zi?=
 =?utf-8?B?STJTNzI0cDU2OU1sWnkzUG1KclVGMGw0eU91WnlKOHR6aUwydkVjUHBxcExu?=
 =?utf-8?B?T1hkSUpXd2MrYSt6VUp0Wjg1YUpSKzFTejl2a1V5RTNqVTVVZ3dIU05lNzd6?=
 =?utf-8?B?N2N0SjcwWVRqMmcwT05Dd0F1V0QxbmVwb3dldUNEeHJJRUtJeFc5WXFRZ3My?=
 =?utf-8?B?YldkeU1WUVFnUTR4SmUzN1g3dUZiYWdWSnAwb1BJdmNCU0hyMHFqR1BsajJz?=
 =?utf-8?B?WHFtOXUwenI2WGJXSkZhOGg1dkhqaXdWaWlaaGZDWGZWSlV0d0xxNjRtZXFN?=
 =?utf-8?B?V3pMTGN6YzZEWVF0WjNJS2dCWUZoM2dIcm0rN2M4c1NxcHQ3bjRobUJCeVor?=
 =?utf-8?B?UWcvQm03RXd0V1VPOHFqZVFBWkJEaE1mOUxITEN1dHRwYkVOMjhOaVdVSm1m?=
 =?utf-8?B?VXR4NkN4UUNwbzROQnV2d3pReCthdWJ0VVhncDkycklEZk1Yb21qTHZEamh2?=
 =?utf-8?B?eTdtUFh1K3JXbjlDUTBuazRTa1hjakpLWDZmaTB3bWpZZzBROTJUUkxxYzFx?=
 =?utf-8?B?dEQyS2hBeWZTMTR4MEtLYlVDT1A5TXB1M2I0b1JQRXVHRC9GSmhFSXZYNlZn?=
 =?utf-8?B?MjhBR3JLaWlyVUlNUXN0LzBIaE04dEtPb2svTXVrVDRBNFU0alVYUTU5MWNV?=
 =?utf-8?B?aS9qMUgrcmxKVUkwb1lhTzZDRkhTWGFuSTZ2VTRsc1hDYW5ldVE2amZZOUlK?=
 =?utf-8?B?dFk1ZnMveVJVajRtSW4waVUwVlJpb2tQY3NQOS9BKzZBVVliei9kUkh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHYxdnkwK1J5V2FsbEJxcUZRYjdIeVpHMHU4aFRWQVkrWnI5TVcyTm9jZnFx?=
 =?utf-8?B?dndudm4zSS9SMzZ0OUhGVzZyTkZBTVFyNjVjdGJuM0NrcEtxT0RmRmY3aWdz?=
 =?utf-8?B?RU9DS1NMelZ0Z1owbmVybklPWGNKbUZFUHpuMDl2QWd5V0lDZHJkUzNPaWVC?=
 =?utf-8?B?TnBGc3hQRFJoNHdYbURybDJIT0FxQjdpT240czJxejlubWl1eHZaaUR4NU5Q?=
 =?utf-8?B?c3F1RGptR3VBNkN4cnZpbUNoRGkyTmFSSC9UWW1pN21BV1RWdFl5T3ZudGVU?=
 =?utf-8?B?aHJRNXZrQ0pUUGhFL1lPNWtnNGVQL0dFMFA5Q3lvb2VGbGY0ekhyQ1FRMjZS?=
 =?utf-8?B?SUQvdHRhc0t6TkFzMlhCbURjUDUzdUpMNnhMQzBxYkZtbFppMDFHNXVKSHNK?=
 =?utf-8?B?UnlTOU0wNXlka3VoL1RrZVY1a3h0QXlDNzU3SW1vdUNMd0J6SStzbjY1RmRw?=
 =?utf-8?B?enFqVmFOeEl6UTVUcVI4S2NscWY4MTdvSFFoSGZUNWh5Q1BEbkVJcm9lckxU?=
 =?utf-8?B?Rnc1cUpXTFNXbzVSWklQWEpQcjRlbExzZmRuRk5qcGtKSGgvc3U2dWxQVDFF?=
 =?utf-8?B?d25pNnlzRUo2QXRYQ0MwM0xmbFdrSTlybWVWSFVNV0ppWEJmb0JUbXJsTmQv?=
 =?utf-8?B?dExMSGF5cEp4RTNMSnd2Nnk3eUdGQzNad3daRlIwUVVxL1FrSHN5dmoyWnJ5?=
 =?utf-8?B?ZklIN2I2WGtPYzNRZ2VVZ1pKR0lKa1V5eDNRVyttcC9jYnlmb3BISlJXaW1X?=
 =?utf-8?B?c1BheEZ3UktFY1FHWTE0M0pRUkZpM1NlUHJ4aExYdjZlbGdUWGIyNDNKMnhy?=
 =?utf-8?B?STgwOFJZUGgxbnZnNENiMmJaYmE5NlRBYzQ2aVEwVStYS2RVMVoydk13Y2V2?=
 =?utf-8?B?NVlkYy8vTEVxNG5JY2g4SU44WEs0dXVYQTR4WG1VUVQ4Qk9Xc3daZExaUnpw?=
 =?utf-8?B?NVRmR1FLeHV5RWVRazMxeGFZTmFqcG1FRGtYNExQS3NhZzBwWDlwNmRWNXV2?=
 =?utf-8?B?bHRxMDVvNERFWVgrbVdaZ2FXM3Jaci8wQjREVzFDNFdIQkFUTkZIckdhTjV1?=
 =?utf-8?B?TlgvdmVrS0hEeit3aVJQTFJ2elBNL3VBS1ZpV0NHa0V1dFVYa1ZsaHVNTEVE?=
 =?utf-8?B?S21Bc2xaUk9LdDZmbXY2Q0c0TUhHZElHQm5sSTFGWU5nOXRRT2MzN20vRFdL?=
 =?utf-8?B?OGtVOU5pWjdKNjFLbkd5bjZwQUZyN0NzZFZQMzluczJBUDlJcE1yOFlmRmhX?=
 =?utf-8?B?TWRwbHd5R2VoOC9ZT2ozZEp3L25OeC9GbU9IS3NkbjlkY1BXcjFuNDllbFJH?=
 =?utf-8?B?eUZKZWNXN1V5emFwREpNdWNraDArQmtYdVhkdEM3ckxRblp6eG5zdjAva3Q2?=
 =?utf-8?B?eHp0Ui9sQ2J3S0hhcVovaXdrK0dLZ0gvcUxLU2ZSS3RUeDlMYTR5Z3AwOXRy?=
 =?utf-8?B?Z05tUFh4dEdCL3lpSHE3MGdkS1VTM09oWldacHFIUklZQ21vTnhhbGpYTTNw?=
 =?utf-8?B?RlhZMURKcTJLdW5DN0F4cDZzMkFKbFN1YldnS1dzaXdObndHOGVGRnV5TVk4?=
 =?utf-8?B?SC9lYmlISFZoYk9LV21IWjdXODZMVzNwZGpsdmhEMDk2RHJQc3d2Qm5Ya0tT?=
 =?utf-8?B?dTVLMURGazdxVEU0akRuQk9EdFhucllaWVovVXJJd2NjOWZPTXpiR1J3UmN0?=
 =?utf-8?B?UDlQdVZyY0xiMjFweHZwRldkS2dESDdDam1JMnBVdmZwYnBhZHZsTHM5Rkxs?=
 =?utf-8?B?cHNmTFdWalI5dmJabUZNQnZCMjRwYzV1N0E2cEhVMWFxSUIxZ29sd3lTaWFy?=
 =?utf-8?B?dW5JNXlxZGp4dkRQR0psS0cvL09YbXdzSmlIazgvMU1WdnlxczFXbkpIMEg1?=
 =?utf-8?B?cHBGOFVJUitZLzRjZEtQN1FZYnFJNG9pT242eWM0b1ZWL0hGQWFsWVpjUXJE?=
 =?utf-8?B?Nll2OURHQWdtc2Y0NzRUcmxLcnQ3cEt1dHo5Yk5PUTlEWlZySXkvbGtBUU9G?=
 =?utf-8?B?TEE2MGtYUWsxTllSUlR3V3lFUUJzM0tCTVRWRnhmQlFKVElmbE16ci95T0xv?=
 =?utf-8?B?Y2ZKZE50T0FWY0grMGkvUENLK0Vhc1AvaW15cWJHeTkrWlhYT01MR2FLSy9a?=
 =?utf-8?Q?oVQDhD9THKQ/pyXhmnW6HmwgV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02298df4-2ac9-42f7-30ac-08dc81890917
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 15:47:54.5702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JOxstAt9xtnZUSz/uqJ1nhgCqE6N/7fsj9onaLSmcGQahh6vhzpp7lowpGkFrgs2RQbN7DdzEza6i/C46zxVtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717170479; x=1748706479;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tZFg93SQROxed6UE1pp8fMhRdKWU46NXzvMH+vUup1s=;
 b=WhPO6cZbphUSG7LPwA6SVqiKsjikg9UBEkGo4ytcR/UpXnE95vd7lQpP
 hGaIXc0f205QUE3lRxe9eitKTGiUfI5Nx2+/s48JeK86OG35SXT+7o1LT
 7d59d+a/20IfJfYTS1nvi+wdzwFdQPd/62Ej0h+b8MIJoiSQ2KlhwYX+F
 5Awz7J/cHFw0aUevl3UMNphOWEmhSKHRiqeW36u1/9mlCQrVwNxuFyfIR
 dtvrBDJBBkSo6dO1HSfmAp7iHw5IFFlkbbwjWh62Gg0vpwNoEsAPSiS7m
 k95kpKHvZFXMASUOgQx0TTorRutzDEISn+fE5d40FSh6YwB9CcanCLSFD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WhPO6cZb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
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
Cc: Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-05-31 7:18 a.m., Simon Horman wrote:
> On Mon, May 27, 2024 at 12:58:08PM -0600, Ahmed Zaki wrote:
>> From: Junfeng Guo <junfeng.guo@intel.com>
>>
>> Enable VFs to create FDIR filters from raw binary patterns.
>> The corresponding processes for raw flow are added in the
>> Parse / Create / Destroy stages.
>>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> 
> ...
> 
>> +/**
>> + * ice_flow_set_parser_prof - Set flow profile based on the parsed profile info
>> + * @hw: pointer to the HW struct
>> + * @dest_vsi: dest VSI
>> + * @fdir_vsi: fdir programming VSI
>> + * @prof: stores parsed profile info from raw flow
>> + * @blk: classification blk
>> + */
>> +int
>> +ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
>> +			 struct ice_parser_profile *prof, enum ice_block blk)
>> +{
>> +	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
>> +	struct ice_flow_prof_params *params __free(kfree);
>> +	u8 fv_words = hw->blk[blk].es.fvw;
>> +	int status;
>> +	int i, idx;
>> +
>> +	params = kzalloc(sizeof(*params), GFP_KERNEL);
>> +	if (!params)
>> +		return -ENOMEM;
> 
> 
> params seems to be leaked when this function returns below,
> in both error and non-error cases.

Shouldn't the __free guard take care of this?

> 
>> +
>> +	for (i = 0; i < ICE_MAX_FV_WORDS; i++) {
>> +		params->es[i].prot_id = ICE_PROT_INVALID;
>> +		params->es[i].off = ICE_FV_OFFSET_INVAL;
>> +	}
>> +
>> +	for (i = 0; i < prof->fv_num; i++) {
>> +		if (hw->blk[blk].es.reverse)
>> +			idx = fv_words - i - 1;
>> +		else
>> +			idx = i;
>> +		params->es[idx].prot_id = prof->fv[i].proto_id;
>> +		params->es[idx].off = prof->fv[i].offset;
>> +		params->mask[idx] = (((prof->fv[i].msk) << BITS_PER_BYTE) &
>> +				      HI_BYTE_IN_WORD) |
>> +				    (((prof->fv[i].msk) >> BITS_PER_BYTE) &
>> +				      LO_BYTE_IN_WORD);
>> +	}
>> +
>> +	switch (prof->flags) {
>> +	case FLAG_GTPU_DW:
>> +		params->attr = ice_attr_gtpu_down;
>> +		params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_down);
>> +		break;
>> +	case FLAG_GTPU_UP:
>> +		params->attr = ice_attr_gtpu_up;
>> +		params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_up);
>> +		break;
>> +	default:
>> +		if (prof->flags_msk & FLAG_GTPU_MSK) {
>> +			params->attr = ice_attr_gtpu_session;
>> +			params->attr_cnt = ARRAY_SIZE(ice_attr_gtpu_session);
>> +		}
>> +		break;
>> +	}
>> +
>> +	status = ice_add_prof(hw, blk, id, (u8 *)prof->ptypes,
>> +			      params->attr, params->attr_cnt,
>> +			      params->es, params->mask, false, false);
>> +	if (status)
>> +		return status;
>> +
>> +	status = ice_flow_assoc_fdir_prof(hw, blk, dest_vsi, fdir_vsi, id);
>> +	if (status)
>> +		ice_rem_prof(hw, blk, id);
>> +
>> +	return status;
>> +}
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> index 5635e9da2212..9138f7783da0 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> @@ -1,8 +1,8 @@
>>   // SPDX-License-Identifier: GPL-2.0
>>   /* Copyright (C) 2022, Intel Corporation. */
>>   
>> -#include "ice_vf_lib_private.h"
>>   #include "ice.h"
>> +#include "ice_vf_lib_private.h"
>>   #include "ice_lib.h"
>>   #include "ice_fltr.h"
>>   #include "ice_virtchnl_allowlist.h"
> 
> To me tweaking the order of includes seems to indicate
> that something isn't quite right. Is there some sort of
> dependency loop being juggled here?

This was needed because of the changes in ice_flow.h, struct ice_vsi is 
now used. I will check if there is a better fix.


> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> index fec16919ec19..be4266899690 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
>> @@ -12,6 +12,7 @@
>>   #include <net/devlink.h>
>>   #include <linux/avf/virtchnl.h>
>>   #include "ice_type.h"
>> +#include "ice_flow.h"
>>   #include "ice_virtchnl_fdir.h"
>>   #include "ice_vsi_vlan_ops.h"
>>   
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> index 1c6ce0c4ed4e..886869648c91 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> @@ -1,9 +1,9 @@
>>   // SPDX-License-Identifier: GPL-2.0
>>   /* Copyright (C) 2022, Intel Corporation. */
>>   
>> +#include "ice.h"
>>   #include "ice_virtchnl.h"
>>   #include "ice_vf_lib_private.h"
>> -#include "ice.h"
>>   #include "ice_base.h"
>>   #include "ice_lib.h"
>>   #include "ice_fltr.h"
> 
> ...
> 
>> @@ -784,6 +798,106 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
>>   	return ret;
>>   }
>>   
>> +/**
>> + * ice_vc_fdir_is_raw_flow
>> + * @proto: virtchnl protocol headers
>> + *
>> + * Check if the FDIR rule is raw flow (protocol agnostic flow) or not.
>> + * Note that common FDIR rule must have non-zero proto->count.
>> + * Thus, we choose the tunnel_level and count of proto as the indicators.
>> + * If both tunnel_level and count of proto are zeros, this FDIR rule will
>> + * be regarded as raw flow.
>> + *
>> + * Returns wheater headers describe raw flow or not.
>> + */
>> +static bool
>> +ice_vc_fdir_is_raw_flow(struct virtchnl_proto_hdrs *proto)
>> +{
>> +	return (proto->tunnel_level == 0 && proto->count == 0);
> 
> nit: Parentheses are not needed here.
>       Likewise elsewhere >
>> +
>> +/**
>> + * ice_vc_fdir_parse_raw
>> + * @vf: pointer to the VF info
>> + * @proto: virtchnl protocol headers
>> + * @conf: FDIR configuration for each filter
>> + *
>> + * Parse the virtual channel filter's raw flow and store it in @conf
>> + *
>> + * Return: 0 on success, and other on error.
>> + */
>> +static int
>> +ice_vc_fdir_parse_raw(struct ice_vf *vf,
>> +		      struct virtchnl_proto_hdrs *proto,
>> +		      struct virtchnl_fdir_fltr_conf *conf)
>> +{
>> +	u8 *pkt_buf, *msk_buf __free(kfree);
>> +	struct ice_parser_result rslt;
>> +	struct ice_pf *pf = vf->pf;
>> +	struct ice_parser *psr;
>> +	int status = -ENOMEM;
>> +	struct ice_hw *hw;
>> +	u16 udp_port = 0;
>> +
>> +	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>> +	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
> 
> msk_buf appears to be leaked both in when this function
> returns for both error and non-error cases.

Same, guarded by __free. I am new to these guards myself, pls let me 
know if I am missing something.

Thanks.
