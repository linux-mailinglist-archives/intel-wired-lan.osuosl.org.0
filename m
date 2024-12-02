Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB229E02C3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 14:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DBD9407C3;
	Mon,  2 Dec 2024 13:04:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eO41dqQ43Vkm; Mon,  2 Dec 2024 13:04:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED63C407BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733144651;
	bh=6LJD55YKdNNESzTJwbwG5krXAaX/DtzffCzAB7my4a0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cl41FyRDX7G7+JziqTIS8UoLj/fg5Xx4Ja+lRJMClkoDSPXeNIM8k7E4ccwLO01Hr
	 LKR3Lbyxrq+61COpEng2k1y47/lipIQ3sNPQbCU8sYrkAUU+dW7WBiRq+h+v4b8Yld
	 VN4O09FRHITxSIBZAO/T0REjsI3bneHLkEJIeo1r8jiSVuQE+0wMLHKj8ixyWIGZ3j
	 AlpaWpYv2RSG10Wa+nr2S3RjrVTvUkXURS+lksdYAc3nTTzyjMWx7BNi7v2dtD0Nb9
	 F7q1E8D+TwqUANAtnivn4Mktmf8shzLjYj7T7aD44EjA3OOlpO49TL+UldUVV0O71c
	 HwoOI1kzk0AWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED63C407BE;
	Mon,  2 Dec 2024 13:04:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CC301ED7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6836C81517
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H1HlX4cQUlhD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2024 13:04:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A029F81514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A029F81514
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A029F81514
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 13:04:07 +0000 (UTC)
X-CSE-ConnectionGUID: MfgEEMZcSHywPivG3jiwog==
X-CSE-MsgGUID: S0FK/Q+PSuurjr24S+R+yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33368912"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="33368912"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 05:04:07 -0800
X-CSE-ConnectionGUID: AU7S5nZbRn63I69RaKjtvQ==
X-CSE-MsgGUID: MSMxGyiMQ1iglRd7S1KyBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93483997"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 05:04:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 05:04:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 05:04:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 05:04:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJmjRf3EJQRotoNPEs5C7pMS34HcGLfVdY8F3xkatkoahLsXUxWHbxnMQT8PfIriyM4v1rUkcLvLBPcBHlO0i0n5ji2WBw4SDiXmTBLgpxb+q2UgUKOaGocMPggpo6oAQuxsvop5XDaP6Z+pRQkPzAwrhQ8ilwdzpUPP1JPz3KSMqGA1YU7JvyAfMJ7M+x+nTdNtJsNKPnbgTIKGZMcmQXA6JiuUoajLpyEbjrI+1nI85T9jnxRNNkCMUGyhL//V5zSdD5BfAcSa90LDv2fwuoF9J0q9VsAIH68DPLJX40SqgPIilXGLM9Xv9TzD5/u/jiHi/6kJwcrxzVBR7JE6GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6LJD55YKdNNESzTJwbwG5krXAaX/DtzffCzAB7my4a0=;
 b=Egi19DS3j2MQXAAXpWN+/BsIzgxMLNoCpg5oV7ezW4VdCoJmv5B4llhi8sPR+21Pg7P3SrJ1Y3V9+S37Ei6QTikFn2sgmtKyher+4jFiZjVuxLMlQ4rLy/8tNnJaSQCLTl3GrwjabwmRmEHZsFp3hqwn92NTvnBQN3/eKi5f+VM0lEmkdf+aeZuGEzUVEHzd3PFTfsWkBA5Ay12VdqPG5ye00gft1TuXsJsgZRE/niSWn7On4N6DLXitDA8YAssGltJeKQhb9+3HbVEMgLEHTee8UEQ6nuvWExDqv/gpgqnQKKN4TjFGvE0e6Qu+LPEY0+j31ExmoXzAYCoTzVwWLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA0PR11MB4720.namprd11.prod.outlook.com (2603:10b6:806:72::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 13:03:58 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 13:03:58 +0000
Message-ID: <96df3bc7-85ab-4e21-a26d-3785874454a8@intel.com>
Date: Mon, 2 Dec 2024 06:03:45 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
 <20241109001206.213581-2-ahmed.zaki@intel.com>
 <20241111185334.447a5253@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20241111185334.447a5253@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0051.namprd04.prod.outlook.com
 (2603:10b6:303:6a::26) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA0PR11MB4720:EE_
X-MS-Office365-Filtering-Correlation-Id: 730ff652-7907-4242-173c-08dd12d1c8b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2EwTEVhRlRKWkNaa1RCME9vN3NxZHVidDhnNEVqQUdRYUxFT0J0eEE0c042?=
 =?utf-8?B?dFNXdDVHeWdoakxFYkU1Y3BKWU5WMURjcHpzVGRWK2Z4U3d3cmdtU1U5ekd5?=
 =?utf-8?B?d3FwUjNZaUQ2UFFnSzlTRzZndGpTcDdTU0xKTzdzeWtGQ2NjdnBrZHpudHM0?=
 =?utf-8?B?U2treVV5Zk4rZ3IwRHRrNVNNWUlSYi9BOVgyTjVac3hiWUdLaXJaK1dxbVpY?=
 =?utf-8?B?MDFXSzhEdE43ZDdtQkpBbXdlOUNZREMyWU9jejdHdGQvakRETDhjT1lTZzJV?=
 =?utf-8?B?M0tZRGV2K3hWWXpYWnRpVllUdWxXWGNMa0RNUVd0NFo4OHdDZXhrTDhPRlJU?=
 =?utf-8?B?MnBKRUVJRUs3R1hDQ2lFcDRRZlJKRlBiV3R0dkIwMEN0dkdXZGgyeFlFZkhP?=
 =?utf-8?B?YVcwbHM5Um9MU3dtaG5Xajc2bGNOMDR5L3lnN0kxQVMxL1JvUy84c1o5Q1RQ?=
 =?utf-8?B?eWJzUWdUaFVZamUyTERxczA0WkZSekczMG54OGVUSUVScXJNTEZmL2Z2SGVE?=
 =?utf-8?B?WEhwMC85TkxReGV2c09DMEQ2UGJIWXdWS3JuZU1uZ2cxc1ZtdnM4NGovMjVI?=
 =?utf-8?B?RzRRY0dRc0Q3MGFpTVZ3L3VXSUh2T2pRRWFIY0NkR2tqZk5WVTRaS0Y0b2Rl?=
 =?utf-8?B?dTRxM0VkbzVsc1hoSmx6WGpKdjRTTTZUOUxJcXRJdFQrUUNKcmhOUDVONTN3?=
 =?utf-8?B?ZHVEU21HTE15ZFZQTnBDVU1GKzhLRUZlRm0rYWFhMGhtN2hGM0JqNllXVTYv?=
 =?utf-8?B?MVBZRXdiOXRKb2xEVk0yVzNmWEdLbXlhek92UWVIUnIrL2FhMVowRmRzUGdj?=
 =?utf-8?B?VU1qUkpNb0dkWSt3c2JLZlNpMnlxSldkaTlJbDlkc0N5U2VMakxtTkpUWE0r?=
 =?utf-8?B?UG9wUDFad05tb2FRenZlRFBFK0J5bk8rT3VIUkRTb0VlMGw2YkpNSEJ3NVYw?=
 =?utf-8?B?QTdvYTJjOHU2MFcxZ0NBdUI5SGl2T2FFejhYQ0k3eEhjOEU5U0pLSnNYdk1Q?=
 =?utf-8?B?bE9senhxNURrT1JocEhhRndNU3Z1a2Qxc25PbzhOWTQySTk2dTVqeC9BUFlM?=
 =?utf-8?B?ekJkZThxMXpqTU1uS09Mckk4STB1a3hDWTl3N0pmRk52MWZnSWdXRG9keldK?=
 =?utf-8?B?OTVaaWc4T05oOWpURFZHTTRJUWNTM1hTd213cFJoWWJWWVFsdy8zVVFNNUVX?=
 =?utf-8?B?by8xVVJGSEh6dDVGdnZ4MWdsU3BMcmFTNzZoSUl2bkxHMFdJb0tXNVZaRTlN?=
 =?utf-8?B?YWJaV0dQYVBOdXVsZm1IRUxXZlFhRzNZNk9BRi9RVElxeW5aUkJEQ1dMSmVZ?=
 =?utf-8?B?M1NicDFEaXdrM1U0NTJzMFNoMlNpVmduejgyMUVKWVlDZXFobi9jT0pSZko1?=
 =?utf-8?B?QTAvaUd2N0hRT204VzcrUklQeVF1eVpqZlRFckhWUkhSMnNRRHdKeE9HUndZ?=
 =?utf-8?B?eHpCZ0xxaXZZRkZ4SEI5UmJjUnI2YjVOL3JxLzIvWGQ3WWsyUHU5Zm5GbVls?=
 =?utf-8?B?Z29TaDhoRVZMYjJ5VHIrQ2F6QWRkdGpycjdiaDNIQVovbWM5TTdRa1JLODA2?=
 =?utf-8?B?VWgyTGFkMWVKd0FOVzUwWUZLUXZxR1BMcU81aDVPZjIvWjMrbmxKamVMOVcy?=
 =?utf-8?B?R3UrK2VhSy9CWVRsY1BnN3FFSlZwRUw2YlB5TkovZTZRUnY5QVhBLzQrbzdC?=
 =?utf-8?B?RmxvSUhMajNrcTRuK2V5Y0lESDFSWlEzS1cvMldKb3F4SGtoZjZDdVpFcUNs?=
 =?utf-8?B?cFl2eUl6enc1TUQ4VXNtb21DS3d0SXJwMWNHckFlT3N3cjFyeDhROGxXbHJo?=
 =?utf-8?B?ZktEaU1sTkk3Y0ZVU0wvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzZTWUYwdkxDRG81WkY2VkNDem51d0l2cExKd08wZkJzWmo0WVkyK3Z2bzQr?=
 =?utf-8?B?eGhiY1BOMlFOK05ySldKczJTT0pTUXZoOVBabVM3TW84V0UwVXlEVitWM2pN?=
 =?utf-8?B?TkRobmxaWVI4YitsMmVKM3JVSjdnc3B4Z1NqSVo2RjJFSXRhem1KVUpma1pM?=
 =?utf-8?B?bURDOXNGUkE2VzlNRHdKbERCRC81RDU3cHBSR05LT1F3d2dKQnMveXpnWElo?=
 =?utf-8?B?VlJ2dWhKKzhZeUZIamZzaXRBemtGMGpURVZSb08xSlpJV2M0RnEwdmR6bFhE?=
 =?utf-8?B?WGptZFdFOUFwVUZzaUM5ejdsSW83MWFBaEQ4UHEwSmVWOUlSNjFHaGhJRnhI?=
 =?utf-8?B?a0p4dWsxTWpPYVNzUzc5Ylg5Z09pdDlFcmViYnhyN3p5VDJ4N2J6M0t5Z3kv?=
 =?utf-8?B?Qms3SlMvanBpSnV6MWRYaXc5OWdyTkwyUW5RMU5zOHNONUNNMTZLQWNBTy9Z?=
 =?utf-8?B?NGlOd0k4S2svNm1jZE5yVE1QVFk3am41SVZFOGZUSHc0VUpPd2s5Z01TamFz?=
 =?utf-8?B?N2NrdlMvbzFvVFdLNk5ITU4yMngxK2Q1Y1NpRnprdS9USExONWRaaGhrRnls?=
 =?utf-8?B?YUNwN0RBVU0yeFB3dVZHeHVoOTJ0V2Y3emE3WDN1SElBN2d3TDBEc3RjSXor?=
 =?utf-8?B?NDU5L0V1dWdVR1hJRXhmZTlVOXBENDgxWFFUSEI4cTcydWk0V3hheWRTc2l4?=
 =?utf-8?B?SW1XWnhlVGl4VmpRc1phVWJrYWVXVVZSVFNZU2RvaHJ6RmJqVHEvY1k2Umdr?=
 =?utf-8?B?VlJ6cm1WVWxWeEV6VVFOU1VhVGo5NTVtL1JpRFpsZWkwNjUvZk5Va2lmbHVt?=
 =?utf-8?B?VlIxRGdrd3crYmR4SFRxRjZOY1cvdnhqL3VoQzJvcDBEVHZCM0pYZG9yQVk2?=
 =?utf-8?B?NG9xV0x0YWVlZkxGTkRIZlBpUzcydUdNRCs0UlZ6dUlZd0xoSmpHY0QrUVJL?=
 =?utf-8?B?bEE4UHJLaC9hMTk4M2lCYXNPb29Ia2ZSK3FjaUk4czREczZ5Z3F3L01iT0VR?=
 =?utf-8?B?dVdhaHJYV3I2dnhGVEx1c1BDQ2Y2YW1KSFAzSG1iQTgxTHErZFRrR1p4d2JZ?=
 =?utf-8?B?K0pzRU9FWjV5aFpNVzFLbU1RVUFTOS9SVkJFcitzWTliL3lmQWJGMWh1R3hD?=
 =?utf-8?B?M0lBVnpIODVERk5HaWpNdVc0OHJ4U2hFU0JCRlN0OHF4L3RmUlBEREswSktk?=
 =?utf-8?B?OEFCYkJkaW16N0pYNUVrSEY1Zk9JY3lMZVB1eVdwNDRZUm1ZODUrdGxQaVJV?=
 =?utf-8?B?ME1pUjBJS3FWT1RmOTNOZS9IRzJScUQ3NXM0czlsTVJUWnhaUWhyeXdqb2xw?=
 =?utf-8?B?ek9sK0Vpa0R1RFNZU1F4T3htTHVZU00zRm5HeHB5WGpzTXF1ZmFHSGhQb3Ny?=
 =?utf-8?B?SGZaOEsyazJjVWpick41blV5Z2VjQXFwRk0xZmE4RHpxSFByOEJBNFVZSFZa?=
 =?utf-8?B?QnQvcS9yMXQ0Y1MzWDJxRWk0aXJkRnVHa2FkZHNqbUU2MHRmT21VcnAzTVdD?=
 =?utf-8?B?OEtyY2JMRWhKbWcxV2djY3M1QS8rSXF6dTRQUGxGSzBpcC92YkNLVTRrYXNE?=
 =?utf-8?B?bWpwWHpJZW9uejFuMTdGSVJNMGI5SVZEL00rQ1Y2M2R6aFJvZjgvcTRYZzhN?=
 =?utf-8?B?K012bTNjVU1HTEpEQkhRem5IdkNQU1RhRU10Sk9ZWlBlTUJKS1F4N1NqcG9U?=
 =?utf-8?B?bktsckJ5eERrVkRtTkk4UWVjZXJEQnNLTTdUUWdQSjgzV2Jra3ZVdWdXS3Ft?=
 =?utf-8?B?dEQwUUQ3cmpOeWxVdGNjWGlMckxESzMrb3RIZ3BFS1pld2pYMG54TG5SSnNk?=
 =?utf-8?B?cWZFb3l3RjlrTXJRSnZabHFoRVBFd3V2ZW4xcmRiLy9qcXJKdUlqdFZaVzhI?=
 =?utf-8?B?c244U2xvcTl1MVBjMXlCK2haV2pTdEQ3M3lQclR3MUNXTkgzRGlMV1phYTJF?=
 =?utf-8?B?UU0zdE5ZaHloUDZ3ZUJYRHcrZ2RmeXdQcTlPcFZtdnpCcG9sK2NpbzlpRW9s?=
 =?utf-8?B?WU9Ub254T2pDZkk5VmdHWlRqbEc0dGd4Qmt5L240M0lDQTNsZFozUzFWSEU1?=
 =?utf-8?B?TlErSktiNmdRSHZUOWtwQ20vaWpDZGlYZ3hWMTk2dDNidm9SSnJqbWVmQ01B?=
 =?utf-8?Q?ubu+hWNC/wkkA74hzmMwo3YOb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 730ff652-7907-4242-173c-08dd12d1c8b8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 13:03:58.3363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S8vSdQfRXQjFgCjRjc+CpVjOnv1zxZgh1fDvb3hUNlNzw6pWbMIRgdieleJGfHoL+yQgbW/y618MCQI4ZqP+6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4720
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733144648; x=1764680648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qC3q3iu6LqlwL6E9F+9D0qRRiNJG/1p6xJ42Lms8sfg=;
 b=ZPxEYqvKFB5L/75nNHtN/KuLtKf9UuIHEa7Y4BqqwPdBboCuWgwG7tRu
 p6jcqrlhpUrKumHSyZsQtfVcuzGn6M7nAWzgtIK6Qpwzs5CZHMqEiNIzl
 o6Au8yls8e2PIb1GHDUcRvHw8o1kZyxsNJuzbgZsQxYhAYN2grYja3jKL
 qTho5ISDtY1eMYkU6yIjXTdhtlSJTwugAaN/uEk2unPxrnDedk/z0W05b
 azzSHQgFliwH6x5imPvuG//pD42j0ZS8r4UTxeMk+R3Tez95ZzbnyMlFq
 ead9MXOpPHdr1rmFDZHbOhabSPz0JzzYTcvtaIVu8qXmPXoBTCE9EAEZa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZPxEYqvK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: preserve IRQ
 affinity settings across resets
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



On 2024-11-11 7:53 p.m., Jakub Kicinski wrote:
> On Fri,  8 Nov 2024 17:12:05 -0700 Ahmed Zaki wrote:
>> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
>>
>> Currently the IRQ affinity settings are getting lost when interface
>> goes through a soft reset (due to MTU configuration, changing number
>> of queues etc). Use irq_set_affinity_notifier() callbacks to keep
>> the IRQ affinity info in sync between driver and kernel.
> 
> Could you try doing this in the core? Store the mask in napi_struct
> if it has IRQ associated with it?
> 
> Barely any drivers get this right.

The napi structs are allocated/freed with open/close ndos. I don't think 
we should expect the user to re-set CPU affinity after link down/up.

netdev->_rx perhaps?


