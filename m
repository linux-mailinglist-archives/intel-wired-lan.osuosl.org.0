Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B44B9A3DD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 14:06:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01F284088E;
	Fri, 18 Oct 2024 12:06:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4NQtzsJ8PdSB; Fri, 18 Oct 2024 12:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF4D14088C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729253202;
	bh=n8r69edcLEv5v26309SCPDMGSvxE16rrEBQmnDfjmGo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v1uwTFvVFEr57dbx7E/sjhku3lv0qxcskFqHwahfI5zMAclxLpimEQjNF4Ekkl95/
	 CwbHMUUG0qq8S5ojnEsPP+Zplo2FgdfOZkgxuhuw6U+N64Fn9SQ8emg9RNNNVRz0Ut
	 zsYlffmbqgg9UMqvtlPUi7cxpRL5Gv3YBCuO+jRsE9RcRS0hhkqTCepR/i/JJtCInE
	 giZk8cfA7Is/5mtEuknoaMxa2L/7QfG23STy101hz/OtCBE849LkW7x51Gew/5XY+d
	 NaTOMKAM+BQyHedlR9L1BbCkrrxcw9Ij1tUK5X8hLx40VVcx2DnK5qtAJfktai5ix5
	 Ir7cMvgWR/zQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF4D14088C;
	Fri, 18 Oct 2024 12:06:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B5DB2072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C1E060682
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wdZLoniVvdUV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 12:06:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D1C960614
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D1C960614
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D1C960614
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: TsoZnLkHQp2miipU7a3nSQ==
X-CSE-MsgGUID: CXg/97WGQbyjhGxk+oiN5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28657955"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28657955"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 05:06:38 -0700
X-CSE-ConnectionGUID: FCDzck0kR1eZEyeYC7s11w==
X-CSE-MsgGUID: tIGIE+5aRMGWzPwWklGtog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="82821664"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 05:06:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:06:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:06:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 05:06:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 05:06:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kR5bk382ESyo39CqkgAFntebwMlKSw9bk/S60m8hAZ1yhmB54GAS0VGoOg2JbHqKyx+FLFkV+j7bRNvG6lusoY+/z8QSPmcJsO0AK9K8Wa0dOuU81l8NN1Jc8gFTUPr/24DcfyIZf/hcTK1f4eUOQmdY1ZLcBrVvPnx1wck+aTu//6DNU/GtAi51FyhZOYRw0+AVHE2Efx6HZmo3hmExZGyFQB1IZZ6y/Dqx/N7rIWXa1JOqKWVZHoNbqHbur4IfhDC+oGD8AbLUYMvyuMJpLYZirySR7vsaQjyTdJL+rUi//pXU90gTnmB8gMnfuv1U3D2Jsjvtabz5VAlhfGx2fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8r69edcLEv5v26309SCPDMGSvxE16rrEBQmnDfjmGo=;
 b=TdJWRgDH2k9UjSQlV8hFWJCtw+GdYup2lL/KVzueHmySRNlGw3VLRw0FbmSCE/+sL5CHMc8OqHHy4ABrtVsanREGyNAb6Kb8yhw5QVmO1mr11ixi4+TJqEC0csvvZderUMpg3tAd6puypZ0DHxT/nrhoZi1KPginJtSr9ouw87i3YLJKn9DCPkUYwbYMklyCCtDckkGM0/nKP1JIQeR0yHYoXgIexkq3mw4b2iRqzIjSoOP53F6YN0ksi3zzUA3wUEDqzS+brHmOPeoEX4lk57mL4QIvRVBC7nRyWr9qELeZf9oScLxDh8ia8AliubWmTzwu8LFL9PBzSH9RFtZHiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW4PR11MB6812.namprd11.prod.outlook.com (2603:10b6:303:1ee::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Fri, 18 Oct
 2024 12:06:32 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 12:06:32 +0000
Message-ID: <f902994c-6f8d-42b5-84d5-c9b277cd2b3a@intel.com>
Date: Fri, 18 Oct 2024 14:06:27 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Paul Greenwalt
 <paul.greenwalt@intel.com>, Dan Nowlin <dan.nowlin@intel.com>, Ahmed Zaki
 <ahmed.zaki@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20241003001433.11211-4-przemyslaw.kitszel@intel.com>
 <20241003001433.11211-5-przemyslaw.kitszel@intel.com>
 <20241017100659.GD1697@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241017100659.GD1697@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0170.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW4PR11MB6812:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fa39fba-56eb-4e1b-e4bd-08dcef6d4e14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekFkemRFcmJ4MWJCdGhab0MveS9pSURNZ1F1SFVjL1U5MWNpQm42ejJNNC9F?=
 =?utf-8?B?eWdrcWlsVFVVS1drVDBtT3UycGlYcVNadys4ZWdhSlFaNmFLN0g1WG1MbDNv?=
 =?utf-8?B?RXhEaGhCZGQwYVlHRlJaS0p2ckRacks1NU5qZXE3THUzajhRU01DczVYc1kx?=
 =?utf-8?B?WDFpKy9BVC9YVVdtSUZVRjU2anJIOW5FVTYxNUhvSk1aNytiSUFpanByT2RH?=
 =?utf-8?B?Z3ZUZ1QyYnZ4OEFwQ1Nram5GOGhscDQ1M1Nvb1VGSDZBTGY1aVBxWW9jaXA4?=
 =?utf-8?B?K3hSZHFPbkZDRzBBNmVSclZxTlBqVTladWJuc1llY2JXUEdlNWJ0WERYZ3lw?=
 =?utf-8?B?bTBHUm1acVJ6ckxBUkdoWGs3dE9wUy9ONnV0VlFVWEpPM0ZFS3UzSDA0SzFQ?=
 =?utf-8?B?cVpZMkhJbXhXc2IzQ2tXOW50RHZveWwzZW5JUnd3WEdKRWN6RVdCY2FCMWJM?=
 =?utf-8?B?Wis0QTJqNUJMYVJDVDRLTkQzeHlFdHJqWGNSUVUzMEZyVmpDZFNUUU82Y1dM?=
 =?utf-8?B?NC9OajFoa3dhbElMZmRKRGVwWGo0QnRFQ0lNeGt2TVhmVEhQYXl0Q0xtc2oz?=
 =?utf-8?B?NnBpeEtYdFRVZy9uV004d254Nk5IOTJiY2RNMThTYmxCQ2hwU1M5RnV3TlZn?=
 =?utf-8?B?b0dhVXkySk9KMWFqbm5xTUFBVW1wN2dSOXYrS1BsQVpSc3pVQjgxVVZZUVBC?=
 =?utf-8?B?ODRCa3RpRVdkaThKM1pMa1E5RUtGRFJaNVpCOGJtaWc0TGt3TUJsYStYS2VV?=
 =?utf-8?B?aWw1ZFVyQnBsNWdRL3dhbUpOcGxITXFlV0Rob3dxVDAzM2dreUNabXc3T1li?=
 =?utf-8?B?TWQwbUlzd2VZdDJST2FrUlFJNkx0TVhta1k4YjNxVEdoV2RPUnE1WFFpUXli?=
 =?utf-8?B?cWc1cWRCQ0s2ZXY4L0g5bUVyVzI0QVFxTzYwbWlvLzNNcDNjakp0UWhXYTdS?=
 =?utf-8?B?SlZsREpqdDdReFhpZ0dNaXp1Y1k2clJaMmpvQjVCbE5TeEdCOEJYcE1UOWh3?=
 =?utf-8?B?WFluYXlXdjcrZHFaNjNYNzdFU0ZHUFU0VzVrYU4yZnJrcXc1blU1dXZ0a0k3?=
 =?utf-8?B?dXF4N0llK2tzNVlkMGZkN1ZZTWRhZFhUWlpHTkNWTjM2ZXVyeTA3NURGeUsv?=
 =?utf-8?B?NXJ1eHIvK25haHcwaHNuM2FKSkZVMjVhZDBBTjZoR3d5U05veCt0WEcwTFFy?=
 =?utf-8?B?aXNWOUtpM2hWeE95Y3owWHc3WXVESUZ4T2JWYjJpTnIyajBxQUlHdG04U1RV?=
 =?utf-8?B?bFpDL0RYNG5xT3RqYUQwcWNyQzRzbHVwUzE5WlJJTlBDa0ZObU1nNlh6NTJm?=
 =?utf-8?B?OTBubkpQSzF0LysvaFJNOGFvQ3dBTG9KeE9IRjhRZzFvdWppd0dSbmxXOGFa?=
 =?utf-8?B?cmdyczRwYTE0bDJ3NG8rb0F1YVdMd3RXL3hiU2ZWWXBYaHV1a1JYMGtxYkc1?=
 =?utf-8?B?ejNqS2FKWi8yUnNqWWsrbjhSMG9QMjM3Yi9IWkVleTZocld5V2hxZFdsM0JK?=
 =?utf-8?B?d0Y3NGRPT2grbGlHM2wxUGZRYWpLWlM4WUpZVFdSdUpPU1RMRWVueWw0aTNE?=
 =?utf-8?B?ckkrYnVRQ25kK2Q1OW5kTklOZFZOMEtQSStYWmhmODdWZHdBWlI5V3VtaVF4?=
 =?utf-8?B?VVRlY3VldUpocWNUYm5yYlBiTmcramMzUGtUSzNablQrUlFYaFUzVXcydXJE?=
 =?utf-8?B?dzJmaURhc2NCYkFsYjEyWUo3UEx3SGhTL0Z6TzVtdm1HaEhJeGZtWlRteGFZ?=
 =?utf-8?Q?hODIj9Qxka6lIk32Y8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0tOaWJaUU4wamhtR0s0Q2dja0E1bWlTQU41YXUycXJxb2JTUk5rOXZrVCts?=
 =?utf-8?B?eXY5OGNRRExLSE5LTit5cXovSjh1eDFrWXBOWVYvUWpYMytqV2llQkxteGcz?=
 =?utf-8?B?ZUZiOE1DSUgxdk03ZmI5QXN1NUNPZmxQSmVteUloNWRWaGJFL0xhUy85SlRm?=
 =?utf-8?B?akcxek9uODF4Y3FyKzc3ekZLeUg2RWZBdU1SKzZ5WjB2SWxBb0xZYU5zVGRy?=
 =?utf-8?B?cXNLOVI5NXE2UnFSdGsxL3JkSk9vNkpqaGFUd3Y3Sm1mcUpLNk0vNmc5KzlJ?=
 =?utf-8?B?a0krYitqV0RvQXA2SXBzM0ZjYVcxaEcxNlVlRHVCUk80cGUxZXB1eXlReEth?=
 =?utf-8?B?ZGFldzJCNG1qVmtVWFNHZlRxczRsSGRuRk1IaW9KSmVFN0ZYY0w1T2VDK2J0?=
 =?utf-8?B?SVBJL1ZzMlJRMHdlSFFLSlV3NFlXV1I1T1pLaFJHenZzVm5kUWR4OUt2WXFF?=
 =?utf-8?B?bmNBQTU1Q0ZMZVNoU0hRWjVtK3JiNlJGSHY2ZkpvQVJUK3lHeWdib2JVNTVB?=
 =?utf-8?B?YnBiMU5uTzhucFJCck5FUGRXOGd6VVVtUWUzRzBPS1RFZm5US1hKRUlGM3dv?=
 =?utf-8?B?Y3ZvbFIyc2FIcFUzUmhkTlBuSlBqS0dpU1ZmNzYwRElXbTlpTjZYQ2JpUHZB?=
 =?utf-8?B?a012Q0JsdjBJeGZ6TDVpRUtrSEVuemliT0ZxOVlZZnNHSno2cUlSYXZMTGM0?=
 =?utf-8?B?c3VVWk9JWFhIVTR0ajBFaU1HVFovU0Vpam5Vc1NxbFZpaURjWXRyMFRaVmhw?=
 =?utf-8?B?ZEprTGYzN1lObW5kZy83amhHQUtJeG1obEIyNzdFa2NKakMySFZkRkl0QU5E?=
 =?utf-8?B?WlNQOTVhTDRXZ1l5eXlLdFF3aE8zRi9MVDUzSjZZZ3RWd0hUcjFmekZBUkU2?=
 =?utf-8?B?OGhleE1HN05QTEZQcHM4aklhRXA1WEhwSUY4dC9TeE41Mk5uU2d2TTIxR1dO?=
 =?utf-8?B?LzVSSytSTFhQaGNxQm9WcElrRXBNZ2JweGtFMmw2UHZUS01Hc1hRTGN6WW9Y?=
 =?utf-8?B?dUVaUVYzSERDWUhzWko5RVlpWnZkdzdPbHdleGlKVWdFeVVHYXZXaE1xZy9N?=
 =?utf-8?B?bE53U09ubkFSdnA1M1VkQlRQS2pXR2RRUmtoMXhQREp4S2wrRHF4Y253VUF1?=
 =?utf-8?B?OVRrajlkSmZjSS85N1kwbFA4RHhwTFZuTDJPYkhnVzVPS3c1S1Zhc3JEdkVI?=
 =?utf-8?B?bjFEMHcyZDNQdGdacHZ0eTJzS0ZSNkVWKzRLM3Zpd2k5QzJRbXphVHhYOGZZ?=
 =?utf-8?B?N1NhajNBVmE4UkExNlV3clJtKzNtYzVyVHVpdjZPWTdza0kwOFAweTViQlNZ?=
 =?utf-8?B?YVhvOFVOYWdKdnlhcS9vbXp1NWlZZ081UzBhZnFrZWxPS0ZueTRMOFl1R2s2?=
 =?utf-8?B?SllIMzZ3ZlZ6M0hJeVk4V1gzMUhCcWFUdHhxNEdrZlBqMFBGS3hJWDlpZ1c4?=
 =?utf-8?B?T0JuTExhUzV5cXc5Vm80ZVlDZEJ2cTh2QS9YVVpCRnVtY1o5RERWZ0l3RitV?=
 =?utf-8?B?SFBwWjNMTDg5YkQzdEo2REpHTU5MV3NDeWJiNVduTGZIY0I0SVAzT1ZoREtU?=
 =?utf-8?B?OVEzZGlic0w1bU5LaVR0K0N2VEcxcGpxU01BanJhSVplY0hmcWxGN2JyUHh1?=
 =?utf-8?B?WHhXTVNvNE9xR2R5bmtOTC9ud3FoY0d4cG5WVzg5dHl6V2R3ZWxtWlFnZk1Y?=
 =?utf-8?B?eWJFa0t5Q0YrcE1sVTdQL3FnZnNJMWROMVBiL214ZExQUDdBS2ZybEVROGR4?=
 =?utf-8?B?OStneFFFK1E5Mk5ZdGcxc1FJMjA3bS8yWEU4WXliTHVHejBubkE1eCtBOTZt?=
 =?utf-8?B?c3VpbjgxNVFqNzhxdFdxN3czcXJSaVdKazIyc3JOU3BLM3ZjUmxrN2J0cVBo?=
 =?utf-8?B?RWx0bFVJeU44OTZobzEzdExLRUZFRXozd09xUUduR1dSOVRma0lCa3FXR3Vq?=
 =?utf-8?B?Yjl2MzREbkQyRE1GejloRDR4T1hTemJPOUgwbWRKekNxcTBXNCtjR2l5ZmxO?=
 =?utf-8?B?TWpFYlJ5NVUxR2JudFUyYVdsNFJuVmpoVzNRWDBMRkxVK1lXbUF3YmFtWXBK?=
 =?utf-8?B?TTFLbXB2QmRHNEFpOWM1eldjd1VRUE13S1Y4c0g5L09xMXFmTWZLWTN3ZVQ1?=
 =?utf-8?B?cHRES0JDUlN4cm5TL1J5cVVFT3NscXpQWjZCSzhBMlZSM1ZsZ2Y2bTJhRFVt?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fa39fba-56eb-4e1b-e4bd-08dcef6d4e14
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 12:06:32.1473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t3i+l3AvsDAZ1sTc8VxhdPYBlM8RVnHlEaUA5DLBZLzrA9npTvz2NnuET+FQc7KZsuW26Ls3OdJzdxPBsqIewpsSt9PxmOHd/qabK1B8DvM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729253199; x=1760789199;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ssKobTGJ53KqNvGoUGXr/xZ8U/Lqb9474MnoIv6KOA0=;
 b=YlfInKh5Z2YsvakZ7ZskxInGQqgv0e1FjO4xf81HsRbGqjZoW1OjI10l
 5HPMA/veSHD84c6nSZjv5UoR0JlPHw+hTCm6M/VU6ndwB0Kua/NS6NPCb
 j6QQ58hzPBCzlFGp7ngbx9sxGg9i4lxzv+v0ekca85PeJRYAo2Ww0WKNB
 tECYTlxVgiDD0wT504+04wLN4MUu1+efja0+IEMvRjTHQC/sSjKr08JHE
 wnWrPo7kGGPPwv4N9HgFSgMyvK4yZS1ZfRBRfaag/GivDxhgUmQveLyUu
 aNWdh4lSo1dy8yYNfPVPfbNQ/dDQdWkUsmXjeZdoI43YR9SwnYIvDTq2s
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YlfInKh5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: refactor "last"
 segment of DDP pkg
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

On 10/17/24 12:06, Simon Horman wrote:
> On Thu, Oct 03, 2024 at 02:10:31AM +0200, Przemek Kitszel wrote:
>> Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order
>> to mark the "last" one in more elegant way. Next commit will add even
>> more complicated "sent FW" flow, so it's better to untangle a bit before.
>>
>> Note that metadata buffers were not skipped for NOT-@indicate_last
>> segments, this is fixed now.
>>
>> Minor:
>>   + use ice_is_buffer_metadata() instead of open coding it in
>>     ice_dwnld_cfg_bufs();
>>   + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to have
>>     better git-diff, as this function was rewritten (in terms of git-blame)
>>
>> CC: Paul Greenwalt <paul.greenwalt@intel.com>
>> CC: Dan Nowlin <dan.nowlin@intel.com>
>> CC: Ahmed Zaki <ahmed.zaki@intel.com>
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Hi Przemek,
> 
> Some minor feedback from my side.

Thank you for reaching out!

>> +static bool ice_is_buffer_metadata(struct ice_buf_hdr *buf)
>> +{
>> +	return le32_to_cpu(buf->section_entry[0].type) & ICE_METADATA_BUF;
> 
> I see this is moving existing logic around.
> And I see that this is a no-op on LE systems.
> But it might be nicer to perform the byte-order conversion on the constant.

As far as I remember, for this driver we always do have binary-arith
constants (flags, masks, etc) in CPU-order, so do as I did.

I could imagine keeping all such constants in HW-order, and such
approach could potentially set the boundary for byte-order conversions
to be better expressed/illustrated.

For new drivers, I will still think more about unit-test-abilty instead,
and those will be easiest with as much constants expressed in CPU-order.

No strong opinion here anyway, and I think we agree that it's most
important to be consistent within the driver/component. I manually
sampled that for ice, but I don't have a proof.

>> +/**
>> + * struct ice_ddp_send_ctx - sending context of current DDP segment
>> + * @hw: pointer to the hardware struct
>> + *
>> + * Keeps current sending state (header, error) for the purpose of proper "last"
>> + * bit settting in ice_aq_download_pkg(). Use via calls to ice_ddp_send_hunk().
> 
> setting
> 
>> + */
>> +struct ice_ddp_send_ctx {
>> +	struct ice_hw *hw;
>> +/* private: only for ice_ddp_send_hunk() */
>> +	struct ice_buf_hdr *hdr;
>> +	int err;
>> +};
>> +
>> +/**
>> + * ice_ddp_send_hunk - send one hunk of data to FW
>> + * @ctx - current segment sending context
>> + * @hunk - next hunk to send, size is always ICE_PKG_BUF_SIZE
> 
> Tooling seems to expect the following syntax.
> 
>   * @ctx: ...
>   * @hunk: ...

oops, sorry!

>> +static enum ice_ddp_state
>> +ice_dwnld_cfg_bufs_no_lock(struct ice_ddp_send_ctx *ctx, struct ice_buf *bufs,
>> +			   u32 start, u32 count)
>> +{
>> +	struct ice_buf_hdr *bh;
>> +	enum ice_ddp_state err;
>> +
>> +	if (!bufs || !count) {
>> +		ctx->err = ICE_DDP_PKG_ERR;
>> +		return ctx->err;
>> +	}
>> +
>> +	bufs += start;
>> +	bh = (struct ice_buf_hdr *)bufs;
> 
> Again I see that, to some extent, this is moving existing logic around.
> But as bh is set in each loop iteration does it also need to be set here?

good point
ice_is_buffer_metadata() check was prior to the loop, now it is inside,
I will remove the redundant assignment.


>> @@ -1454,17 +1459,16 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
>>   	}
>>   
>>   	count = le32_to_cpu(seg->signed_buf_count);
>> -	state = ice_download_pkg_sig_seg(hw, seg);
>> +	state = ice_download_pkg_sig_seg(ctx, seg);
>>   	if (state || !count)
>>   		goto exit;
>>   
>>   	conf_idx = le32_to_cpu(seg->signed_seg_idx);
>>   	start = le32_to_cpu(seg->signed_buf_start);
>>   
>> -	state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
>> -					    count);
>> -
>> +	return ice_download_pkg_config_seg(ctx, pkg_hdr, conf_idx, start, count);
> 
> This changes the conditions under which this function sets
> ctx->err, which is then changed again by the following patch.
> Is that intentional?
> 
>>   exit:
>> +	ctx->err = state;

This line is unusual as it changes ctx->err from ctx user code.
ctx itself updates @err only on new error, it uses "retained error"
style of API (that I'm clearly a fan of ;))

Next commit replaces the last (successful) write (via ctx) of ddp,
and error return from new path would result in
"ctx->err = ctx->err" update. Not clear, not intentional, not harmful.
I will update code to leave less space for confusion.

>>   	return state;
>>   }
> 
> ...
> 

