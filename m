Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D0091C00F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 15:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89BD28452E;
	Fri, 28 Jun 2024 13:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1wQ93Fqa4XF; Fri, 28 Jun 2024 13:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9550884528
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719583030;
	bh=TlEN9rq/uAflePk2zNAMPdlekfmsKIrv64UJWtmVSt0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LPpuo1ofJ54IZXj7O2Ny7h3jF/1XimZ6u2ZOAknl44PHqLTMfTy8KznWH7U837dHZ
	 1FhMmWf5I8hOGd+h3VfpfxciBmcRg3ILQ1iy7o+PCvmCiTD01IxZr5LXLqiAbcJaLQ
	 32Jl+WgK4su6mm253t+jnRJ0dSO4aLvTEuRYSc6pJD/H1x+CUYHBIyn9q1rQ9bxBjX
	 fE6iBGR9oEPirmC27G4kZG3aBoPNBVZOasu3GKPGudSnp0OsKIqP2mD106xIa+HBkY
	 lKwEs/3lf2+maTVjyA4VFa20YIQJtbG6C/BxPugGApX8JLnV9LH3dEJ7TxxwAUfOWI
	 p6L0CYN5ZkA6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9550884528;
	Fri, 28 Jun 2024 13:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C03D1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03BA284506
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z2fBU_9i5uxH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 13:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 119EB84508
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 119EB84508
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 119EB84508
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 13:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: b4aetOy2R3m+AtMFg/1ZUg==
X-CSE-MsgGUID: g6yDxdC8Smqhdgj2ms5+cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="34303967"
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="34303967"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 06:57:06 -0700
X-CSE-ConnectionGUID: 6hgWE75RSc6MRxZ6PvPlhA==
X-CSE-MsgGUID: OXw5hE4TS+mGaqCnO1XxWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="49919636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 06:57:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 06:57:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 06:57:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 06:57:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 06:57:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5uTMFDLB1e7J3uIgc+NI6ZIueKH9cW4Hwt7h5fqgWWYCo8pb8TRNyVFHKoxMYgwrVrtHhcdh3rDJgV/GIE8bY/QaigCFEV090BSm7d5VgJNBJdKId+oemsLuY3AbR8aK4KwjI+jsPhJy2zBs5O15wGEgsFtZC/Kl5RnzekvKW41u1KAzcWLG6NNVMMTioHTZ5gusNdOuZmGM+wNoY3485csv/EPfy9v5brYtqYxh6HQg9bDgbmhD48j0k6ESqgpmOfDAEU81EMBrLQXoH7JkXo3Oyw5tw+eBEGFYYsKyX9tk1OSpsgSptUBwiCz2SxMqIazBlpQ3j6TFzt2m0M2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TlEN9rq/uAflePk2zNAMPdlekfmsKIrv64UJWtmVSt0=;
 b=Cy/k/iiJlr6oybg6BWwqyXNUI+daOa4IV/d/GGfiXcKb+xYK5myxUVYzcd6NTMCWMzJQfHEi/147ZLW4G/ZMmGK6pmABBtr4LtDu2Eu0/IaDouMr9ec31Uo8KwhVo9Dzohjum+YOuSUfJv7431zZt+7cOWQCufWdn4tHlRZ+jM8O6ehqhdXlwUR+jBeCs08Rfx3NrXAjWUjbO5+mLHu7imxEDd36qZpBEV1LCiajtoh7kJddodmrTmua+tcAqT8nP7ShP8GdS5VNQCFAhtN2swUDy+ZhYbLY/aZndUDcxgEXgPUUIyfWwPAkL3h8aXxM0lqh3+WM3lKKVYyQevzQYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Fri, 28 Jun
 2024 13:57:02 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 13:57:01 +0000
Message-ID: <5328363b-1ff0-439e-94f7-c6d3ca6039cd@intel.com>
Date: Fri, 28 Jun 2024 15:56:55 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
 <20240628124409.GD783093@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240628124409.GD783093@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ee4fffd-35d3-4cfa-a8e3-08dc977a2f5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFJ3bEtFaU01dUFMSWZvdzRKVExWWjVvRDd5K0xYY0ZzVkkzUWVkeFlsbHAr?=
 =?utf-8?B?NHdqbHdhclhIZytuUGc2Q1RRc0hxWHozTnNmdnJUNFVSR2xLTDhWTDNNVisy?=
 =?utf-8?B?bm9Yc3JieHFFbVkzQkpHUE5lSUhiTUwrR3ZENndqcGpMS1JUR2FlVERZTkIy?=
 =?utf-8?B?SUJvTi9mdWNzc0hVTjVQdHJJTnNQU25IRythWDJib21ScnZIcWo4UlhPenBz?=
 =?utf-8?B?MzFYYTdyQkNpaXhPbjM5TkpxVkFia1FMcjVVMFFCRnFWY0F3djVUVFFzR2gz?=
 =?utf-8?B?cHFGOHk3bjdtTTlZVmYwa3RPdjZzWWRST29uMXhFckU3U3lLTFdVMDluN3RB?=
 =?utf-8?B?dHNQTDR5UDUyeGVkT2xVZ2xXS2h0eUtyQzI1SjdYQ1JEaUJVMFBZTmhjSGhs?=
 =?utf-8?B?SnZpeWNOUXNEWFo3dHRIUmd5a2ZsWEUrVFRBR0lUMHZJZHduSUJYY3hmSGEx?=
 =?utf-8?B?RUZqMnZ2TnpKSDV1dVJ3aWVNYjdrWk9aSy9RZTRvV1p5S253NTUzZ3FFNEt0?=
 =?utf-8?B?bGtBREkvcHdHeVl2anl4QUVhZ3RSaFlZb21lTHNidDdMaTcyZFVJRXhkWVI5?=
 =?utf-8?B?L3ZRYjdmV1N3TFNLdW5tQ1J5aXEwRE91Um94QlIzUm0yZVNQaUhxWHNwS0FB?=
 =?utf-8?B?TnJCaUo3ei9KanppNHZkVVplYkQza0ZpSmFNVVBOa3A5RFl6MUhuV1kvMEJ1?=
 =?utf-8?B?dnpFZzloQjhzeWhYWk1PUlAva0tPNG43bFFvbDFhd21SVU5yemxXZVJKWTVo?=
 =?utf-8?B?dXJONlVmQUNJekZBNUN3UFc4MDZJcmVLVytQSkk1MG83TWlJWWZZaWd1SFFU?=
 =?utf-8?B?LzJWUVBBV3R6Mm4wWEl5ODdPdHh0TzBUbU5iME16bUEyQktFQkgzM1pveVNF?=
 =?utf-8?B?dWhxMHEyY3RkaEFFSDJycVlQVXRMR0c1YmJOVm0xb1BWQ09taUV3N1Zod0tz?=
 =?utf-8?B?dGpFNllzOS9ScmlqMlQwWUdxVUI4MENmcW1aWkE2VU5vLzNOQlJ4ZEM0UHdF?=
 =?utf-8?B?TERMamN0anBld1NvMEE0RDhiSkpQek44aHovZWNYeVZJNDYxb05KbUZGdnhl?=
 =?utf-8?B?T1BCRng3dHlkeW52emhQUXlOeGFLRWM1dHNPZDJLajhDWkNoUWtsNTlUQ3ND?=
 =?utf-8?B?R1BYTmZqYUg3TEZkb3dNR09GSDRSWHFSV3c5T1c3Ykx1MWlPVlNmbzFGdW9V?=
 =?utf-8?B?OU53RWcrRWgvNzdUTTE5azcyUWxQd3RiV1hEeTQrYy9BL1NOU0JYUU94c0JW?=
 =?utf-8?B?c1Urbi9UcUdBMEptc01xRHY2TXV0RmxZRU9UYmtuWUJpeFJ6MGlJUDBKbklu?=
 =?utf-8?B?bDEyd0NIajU2RlFBV0lrN1FlRkdHbWZqTVFCQ2lnQ2R2Nmc5Q2VObUpnZWZh?=
 =?utf-8?B?SllncFNER05DV21kaGU3RnZSZEFCL25iN2owSHFiS3I4SzBzcG85OE1HZ21H?=
 =?utf-8?B?OHdRMks5MUEyRlljNlFJaTdMc2NRZmg1cGpPZ1VwcUhDVnNLWGlMdmUyUCtQ?=
 =?utf-8?B?WEJsSSszaG5mOUpEelBIQTI0czluMzRmazJKYUZaRkhaRGVCblhxOFBXY2l1?=
 =?utf-8?B?ckRFYzJlZWlWbmhlL3ZJWGFEMG9PMXlDN3NMKzUvYzg4NWdjcW95NEJYaDlT?=
 =?utf-8?B?Qy84NDdHVWVNY2lTTXEzN1hCWFptVFlQVDBpdFZrUitlS25yMFZONW5GR2hU?=
 =?utf-8?B?MityaWdTV090T1pOdElXYkwzSTBLK3Z5bVpkbGU4dmlZczRUMWxRZ3FhbENh?=
 =?utf-8?B?YXFnZXF2V2drK0JBTFpscHBqUDJ2YWdCZHRsdlFnSkFPakxwbmFUcjZtbW9L?=
 =?utf-8?B?TkNxTllhMDIxVzlTdE4yQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUFvYVY0WkdLZ1J0Z1owbmxWZEVUKy9WMjRMd1VWYXdwbEpBMmhFSnUzS043?=
 =?utf-8?B?bURVdUJySTA2R2RjUCtJNG5lbldMMkFxS1ZKWmFmbVhUeTE3SzVvUExYQjhH?=
 =?utf-8?B?cEI1eFMvc3kzSjBBQ1ZGaTlnMFBNbElHd0Zydm9vZlljaFBJcTdrUjMzS0tI?=
 =?utf-8?B?cFRVS3ovUkZkTzZiUEFNbmIwK2dkalBCTHY4QmNTNWhncWNBMjFNMUlUcUlW?=
 =?utf-8?B?QnlqVG9RYjl0ckFTeEE1cWVmMDl4bnJLQmh3RHR1c2xoNnE4eFk2NHRzbHFX?=
 =?utf-8?B?T1pyOG05S2hWNXJjRHk5eUNCNzJUV29sYURUSVNiTUdSNnNMT1RaMjJEWUxH?=
 =?utf-8?B?dFlBcFhLMnFjTGRwbHo4b2ZLWFVxVlVIU3dDWjhsbGxmanBGQWFtZEdnVGM1?=
 =?utf-8?B?MjBPVnp6OWh3eGNLNGN0dlV4eldHR2hBQXZ6V0tKdGIyVVh6d244L3lhZ2FE?=
 =?utf-8?B?RFY1b2RrYVBIc2tPRVVCOVRoNnQ4b1NTV3NMc21ZdXp5VHdMWVAwVFVvdXp1?=
 =?utf-8?B?d25aWFJwKzVnalg2Q1BoVmNTQWQ4R1h1TkVKa0htWkI2MERvemIzOHhsRTJR?=
 =?utf-8?B?WFR2SUVJVks3MzJuY05IUURtMDBzTFh0VHlWTkhzRk1QdC9Bd00xMjFlTXJO?=
 =?utf-8?B?YldOQVhQNUF1Um5iZFE0c0VCc3hDL2ozRTRuWE9hdFpzdm13TGJpSGd4dm1B?=
 =?utf-8?B?OE9RankzWllKY0RSUno3cG5JT2JMdlJxQ2dLNEN6UC9tTmNIWXhsV2krZFk2?=
 =?utf-8?B?bFc5Vk1KcGdVdmpHSDA5djAwTkU5MFBjWkIxTEdVNzZhS3ptT3Y1a2doRWd5?=
 =?utf-8?B?OUlXWExUTkdnRmhoVzJNSDJJakJVbWVSMGx5czRNRUVVc0FMNDBGS3VlWHRP?=
 =?utf-8?B?MTZZWUlHWERJWjBXeEdkOWVwTzhxMWhyUURmMEdJcnJnZ2d4QzREajJmZ2ZE?=
 =?utf-8?B?b1NNKyt2KzB3ZkdRSndPU003MitzcDJoRm9nKys1T2Jkdm1Uak5DT2dySUFT?=
 =?utf-8?B?ZlJuSmVTcjNheFZVMTA4TFhnS1NtMjRYb0E3TFBOdVdFRHczR01iaEQveitq?=
 =?utf-8?B?TEZNMHJ5d2xkR2Y5NEM0M0hlN2RqMHVqczQvUWpsbHJUeVpJZ1FBdTgyU0pU?=
 =?utf-8?B?YlFGS2VoVlNEUGRqU3p4Z3VMNXc4RFlUelVoTTlEYmxiOFdHRUx3T1Nick9E?=
 =?utf-8?B?dWM2OUZxTHhjL2plZHYvbmhPUklTbE5HZkRxL05vWEQyOG5ueTUyajNJb1dP?=
 =?utf-8?B?ajBiSnNMQngvREo3SlN1ZkZnWjdyTGxKd3BGR1MwMG83RDJLdEV0RWZUUDBN?=
 =?utf-8?B?Q1FMRVVSaW5ESXdGMHJHd2lQQjVHTW5zTnRhUnBTVWx0NnRYM2l3NW9VU21P?=
 =?utf-8?B?dm1JMCtHWlM1TGtIOFNvdVpHck1SRW5aSmVJRjYxMG9YZ08xQ3ZNN29WY0o2?=
 =?utf-8?B?bW1MOHNzcnFEWVF1dzRBWVRPMitSajZNOC81NDZTanQzLy9vaWx5S05tTU95?=
 =?utf-8?B?bWtxWFhsd0ZnVVFhcFpua3BZRFJHU09rS08wRE8wQXY2MmJCOUZ3MHlHS3p6?=
 =?utf-8?B?ZUNvVThnOEFhQTVSUDBxdUpYeEtzTjFtbFRGYmw0bWxMVk4vS3JnSnNEdCts?=
 =?utf-8?B?Wk9HeEZiTUk1Tnd3Yk42amVWb0dOdGlLV3BHUWtRZGx6MzQybU50TjVtWUxz?=
 =?utf-8?B?cWVyTWlleDBsbThEOFh4dThGa1lsc0xONG1CdVhGN01ReWlGclU0K0NtZE9V?=
 =?utf-8?B?U3Y1bzNoYmNoYTV5SEF0ODE5V3kvbDVWSDhjYS9GM1lHUm5veXh2eVk1ZGp5?=
 =?utf-8?B?OEp5Ri9HcnJQT1F1eU4ycER4UE1ubTBOMURPcklJM1IvbWZCNUo5MHFDbWdk?=
 =?utf-8?B?QlNadXI0RlFKSWsrV0VkTDd3WXRwazZTYXZocXgyek5iRnYwcTdJcVZ2YjQy?=
 =?utf-8?B?L0toTUtlQmYrVFBmUEJUaGNGdFo3K0FYd3Y2aHR3dWFkMzVSYkw1a2h6eWRa?=
 =?utf-8?B?NmdIOHNtd0FlM0MrYnowUmtxZEdCcWY3cVlxanl6amE4T3hMNXBqZVJzNWcv?=
 =?utf-8?B?TXJ2Q01vbGFPeGMxNEdwNVFsSUpmRGlhVnY1T0x1enNtcW9YOXprV283N2Yr?=
 =?utf-8?B?WUk2TExLbnNJKy8vY2JVT3VzU1Jac3hpSm80K1hxeldpNXlkZ0ZiR0ljYTVx?=
 =?utf-8?Q?/lJ1lijQcABPzqTGTWtCE+w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee4fffd-35d3-4cfa-a8e3-08dc977a2f5b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 13:57:01.7964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f3O07VpyPf3iytFrkcNGI1EskeF3kl/cq+vfyuk0BEy4x43mONGkv6qqhdHrgV3DO32xPPEMioV1n4WNz8iUnpiBQVEk27YWdjO/5ThVeCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719583027; x=1751119027;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ETkzHb9Z0M+a6v8p57bkoppmai+ztvQ/c7bVb+T867A=;
 b=GuOkCMRydNLAYvHpTwWtaCf7cWbvPvgS1oNpp3xRXPrjM4DFnOQ3Dph1
 Pk7elpn07lqpjxOenN94uTHSGOdrIELIlHwTukbt1tdKVQGjGp5LW13fK
 o4eG8Pw/VFz/WMIQ0/tEKMzmqLljI4N1cP61f83X9o+Ky+eTEVcstX5TD
 5XK2T9pjJEFZboDzM2Msyt7Z5w6R1Q9qFuUNS/tnWDYSbzEupfJfLpTHJ
 EC7yphi+RCNZpbM5q3KIt1TsXrx0iIlmbi7dqb14nYWaIQiMpIcDXCjyU
 vvuaUcJVoDuRg2jDsrT6Pm4yIS8ngXrcX6AU7DPiSSFYMUHJaZFWc8YBu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GuOkCMRy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: Optimize switch
 recipe creation
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/28/24 14:44, Simon Horman wrote:
> On Tue, Jun 18, 2024 at 04:11:56PM +0200, Marcin Szycik wrote:
>> Currently when creating switch recipes, switch ID is always added as the
>> first word in every recipe. There are only 5 words in a recipe, so one
>> word is always wasted. This is also true for the last recipe, which stores
>> result indexes (in case of chain recipes). Therefore the maximum usable
>> length of a chain recipe is 4 * 4 = 16 words. 4 words in a recipe, 4
>> recipes that can be chained (using a 5th one for result indexes).
>>
>> Current max size chained recipe:
>> 0: smmmm
>> 1: smmmm
>> 2: smmmm
>> 3: smmmm
>> 4: srrrr
>>
>> Where:
>> s - switch ID
>> m - regular match (e.g. ipv4 src addr, udp dst port, etc.)
>> r - result index
>>
>> Switch ID does not actually need to be present in every recipe, only in one
>> of them (in case of chained recipe). This frees up to 8 extra words:
>> 3 from recipes in the middle (because first recipe still needs to have
>> switch ID), and 5 from one extra recipe (because now the last recipe also
>> does not have switch ID, so it can chain 1 more recipe).
>>
>> Max size chained recipe after changes:
>> 0: smmmm
>> 1: Mmmmm
>> 2: Mmmmm
>> 3: Mmmmm
>> 4: MMMMM
>> 5: Rrrrr
>>
>> Extra usable words available after this change are highlighted with capital
>> letters.
>>
>> Changing how switch ID is added is not straightforward, because it's not a
>> regular lookup. Its FV index and mask can't be determined based on protocol
>> + offset pair read from package and instead need to be added manually.
>>
>> Additionally, change how result indexes are added. Currently they are
>> always inserted in a new recipe at the end. Example for 13 words, (with
>> above optimization, switch ID being one of the words):
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmxx
>> 3: rrrxx
>>
>> Where:
>> x - unused word
>>
>> In this and some other cases, the result indexes can be moved just after
>> last matches because there are unused words, saving one recipe. Example
>> for 13 words after both optimizations:
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmrr
>>
>> Note how one less result index is needed in this case, because the last
>> recipe does not need to "link" to itself.
>>
>> There are cases when adding an additional recipe for result indexes cannot
>> be avoided. In that cases result indexes are all put in the last recipe.
>> Example for 14 words after both optimizations:
>> 0: smmmm
>> 1: mmmmm
>> 2: mmmmx
>> 3: rrrxx
>>
>> With these two changes, recipes/rules are more space efficient, allowing
>> more to be created in total.
>>
>> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> I appreciate the detailed description above, it is very helpful.
> After a number of readings of this patch - it is complex -
> I was unable to find anything wrong. And I do like both the simplification
> and better hw utilisation that this patch (set) brings.
> 
> So from that perspective:
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> I would say, however, that it might have been easier to review
> if somehow this patch was broken up into smaller pieces.
> I appreciate that, in a sense, that is what the other patches
> of this series do. But nonetheless... it is complex.
> 
> ...

all of the "bugs" that I have internally found for this patch were
addressed by commit msg or comment changes ;)
what about you reviewing also patch 7 from v3 of this series?
