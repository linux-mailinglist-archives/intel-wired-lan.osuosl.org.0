Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BA4A9A6CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 10:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C9E5415AE;
	Thu, 24 Apr 2025 08:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zsCRTy-3DG6T; Thu, 24 Apr 2025 08:50:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1196415A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745484652;
	bh=y9FI6f0v3lo43Y5KHew1JoAi7x/BX6kMBZJtlypAAHI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pL0InKMgKkGXZVB/rS7I5mXGOv1vFfwsA2t4fqoQLbPpdmdPe4t++xQ0EniGkBlbJ
	 s8X6A9luBvsDMCAY8AlBkWfvqxwBo/2O7X3QYig0r6zGeHk6ON55/G5A2LRRGo1VSD
	 CJIagDiUX4s/YQMkP/5VtP9+QWeK2edKNlGC6ugF6KYspitiPHhsaMG6KdKYwfWH2d
	 7uQyof/fiy+ARZeSnMu/IVk/ihbkk5IfRoYut/Ow7aUiVoNIPkXD4xzcHfaiOl10lX
	 tUJnTqMhIzG0w3IELy6o8LVvjcJrI2zV7/KBun+rwKT7Ln9PHboasrMpaXVJwLHtSP
	 JmRHgzpa7UM9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1196415A5;
	Thu, 24 Apr 2025 08:50:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 370B5EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:50:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B451415A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:50:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1lu9SydWHYaG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 08:50:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 33286415AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33286415AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33286415AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:50:48 +0000 (UTC)
X-CSE-ConnectionGUID: Tu/t0fZxQ/Wspfw04MYs7w==
X-CSE-MsgGUID: vVqc6tt9TuaadHOQdpmU1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47240391"
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="47240391"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 01:50:47 -0700
X-CSE-ConnectionGUID: GIz8MimGSz+b+ozUzb7hRg==
X-CSE-MsgGUID: SHx1rpayTNasVZkQVieU2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="133085714"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 01:50:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 01:50:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 01:50:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 01:50:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uTVbStDRL9S3vxLpOg00mvX3UsGDjOUsaEatjMqFAjlJCRSHVj5qUieRtiI2E05LodL1sx+bRm1Fn30B8VM6BO2e5Gx8IZhtHHLaPBbm7zxlFCnbBEASp+F/r5Lu76f6BscqKzFzdcIWv7PZpIZch4iuyAxAWT48icNpvKtc0hsr3KiBiWysqY/GoS9SPrnH2h14cp1aTCA3pwfXfM/qvCQsv8gQew20N1TsfrM7QG/530ULkt+uN6OdlSaZVcNuObF4fRmaPSQ9PdkAukosbR837ue6tJ0XQrhmTFnfggu9//ePkAv72zN/jvcCrKfdym3sFyHmyczEnRQQ5NEVbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y9FI6f0v3lo43Y5KHew1JoAi7x/BX6kMBZJtlypAAHI=;
 b=iB5c/SB5H1pr14v1dzXljPqze4eL0Qcw67wFhvIReysKxEKjPzr8/19HdO4yTGTPWMnKoMOl0XXtFVlVydc6FbNaoD3S8dV2ZCiGtPNjv5Cqbzs1FN3bTYGUrW98yigBc6G0CAAoTy8pPQ9waJvg1/mR/b75moi34ZnZoaUHj3FerWMVGAwVos/nID4bYgxVxiSk1dsIRJykZPkxwygzaqqlyBrPb9XSGu5ycqNIegLXHnun9JrhzGQtCO0U2ONe5r/ny4axAJml8PIG5JDGHKEImq7k4kdh6n2PLd8b8P2cn+o6RDrF4b8zQpwwlbud0xVRByOhal2W0GcPee3I+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) by
 DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.35; Thu, 24 Apr 2025 08:50:41 +0000
Received: from DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018]) by DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018%3]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 08:50:41 +0000
Message-ID: <e430f01b-1206-4c91-afc3-b0e8dc2066ca@intel.com>
Date: Thu, 24 Apr 2025 11:50:33 +0300
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Simon Horman <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::16) To DM4PR11MB6310.namprd11.prod.outlook.com
 (2603:10b6:8:a7::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6310:EE_|DS7PR11MB6077:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f6de3cf-f512-44c8-2987-08dd830d1632
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3lUQWJhR3VnS1FEUS9pdFZwcXRoaHlaSHRJUkZOSjVNenFuN1ZLbmxLdSt0?=
 =?utf-8?B?UFVPU0lMQUdVWkd2RW1xOTlpcXYxeWY3UVc5YWRxQ3I0SGhXNks5TTVrRW95?=
 =?utf-8?B?NjNCR29OdGRxUCtHcnFQd2ViU1pTOFNUSXQvdmV0ZW45VjJnSTkxS0J3RTlv?=
 =?utf-8?B?NnJxS2hPSE5iZ1YyZ2V0ZkdjbWMzVXh6cnYxdUZMMFlvbjUyR1d3dGdIaVRl?=
 =?utf-8?B?NGsxZjdWUFZOU0V6MXpkVm9veEpURTdXTS8vNGk5UHB0cXN1ZzFRL0g2TGRD?=
 =?utf-8?B?SzRoMmNpeHl5UU0wU0wwVGU2OENQcEZTalhHRmNzYzlJYWhScnRmdTB3RldE?=
 =?utf-8?B?QVhTN0c2b0JxVHNoeGllMVpLZEwxMnJNaDQ0NGZVbnF3WjBWTmw5THJkWWNB?=
 =?utf-8?B?TXUwakYvMXg3NDBWR0JIWmdycTJZZzJ2YmJEd0lycVhMd2NGeitlZ1A0bzlI?=
 =?utf-8?B?c25YLzFjNDVqTmNlaFlxMThac0RjVWprWW1SaEkxcEs5TngzRllaSlFwZmpY?=
 =?utf-8?B?eFZBUTVZZjlNcUI3TXR2aGdGZHJPcTdHMTlMSlg5WWk1RHo5ODlpd0toUnk3?=
 =?utf-8?B?RWh4SDN6YzNRUml0Ym5aRmZ3akkxNzVxUnlzK3ZJaW8rRUhBN3pmeHpSbEFa?=
 =?utf-8?B?Wml0OHkyMkw3akhRU09FSWhVbWNUK2pHVFZTbmVNL3hGTGJsaWxIbGp3VU52?=
 =?utf-8?B?eTkzdnIxc2ZGRC81ZjVhWWpzeHRucXlLQzF5ZmxRVkZjd0JQS1FwditQZ3h1?=
 =?utf-8?B?WlhvaWx5OEtOYy8zOWc2QVR4djlDdXhreWU3aEdGRTRZZ29tRUNtZzRhZGE0?=
 =?utf-8?B?N053TWdlVFNuc1d0bUgvZkN2WkV0b1FNTEZHYXdlbUwreGxGWkRQMUdmVlFU?=
 =?utf-8?B?emhoNjA5QW5haWpyVStRaVVZb09wb2NlamExbW9uMWpXUXRpME1aS3ZJN1VH?=
 =?utf-8?B?enh2S0c1dGZpa2w4MVVOd1BvNkg3KzMwRUlVbG9xQjQrVk9BeGpjK2hrYjNR?=
 =?utf-8?B?cWhrRE4zWS80UmZ2dXFheGNSRG1tV3RKa05sNFJNZ1dYVHVCM0xpVTk5c0NW?=
 =?utf-8?B?TjBXMndQTS95NjUzbnRKOFkwajluTitGZHUrU1pRSFFjL1N2eWJXNFBTSm5t?=
 =?utf-8?B?SEZGMkJBQ1lFRzlNSUZIT2F3SUw1KzZDaGp4NnVPYmF4ZTVGc3B4M1Izc2Q4?=
 =?utf-8?B?ZmgyQ1hGUTZjSnd2czRMaWhNSmlNOXhwMFljejhDTGZqclJ1bTEwRHJ2STJh?=
 =?utf-8?B?bXF6ekpOcmxvSlJkNnJFZGdGMHNycUpDQ0VoTER0dzlkUmh3dFhka0Zaek5h?=
 =?utf-8?B?TEthWXJjU09pcEs4K2ljdVgzc3U2dTc5OWorT2xhUGQvT0k2V1RxUTROaDYz?=
 =?utf-8?B?MWwyQmg3RmNZcFdjVDVxVUFVWkhOOTUwanNLMWoxUmcwdnFvN2JQNVE3cU9Z?=
 =?utf-8?B?cmMzTGp0VFIwd1VjUHJTZkRIVlJEUlhWS1JidCtYOVdHc0xlTUtKL1libk9Q?=
 =?utf-8?B?a2hvNDY3YW4rcGVqVDczSTQxQlV4Tjc1YVk2UmNsbzFodGRkc1pId2VkNEUy?=
 =?utf-8?B?UGRqZkM3T3hGYk5ydWtocjNsUUxUbzhtN3lNbmU5SW04QnppdXM4MjFocXZW?=
 =?utf-8?B?eXNMZmdJcGVJQUFlMHFvem0xUGVGbCt4MFNaUUlkQWVUNTEyZlYyV08xNmVX?=
 =?utf-8?B?VG5xd0ZxT0FBdExvWC9jZU1aWHZIN3VEUmcvYnhDSGxCLzhYbzg5MXN1NGUv?=
 =?utf-8?B?Q3lTSCswUlZjbk9NOG1HaTh2US9Wb2RLZkRIMGd2Yk0yeFB1UHhKVFhLckE5?=
 =?utf-8?B?Tk01Yk96T3BvcEdmVWtEVHJpZFBMU053QkxBWkN6ODREeVZJU3ZHMnpxSmpw?=
 =?utf-8?B?akRlTXFQcHkyOVovNkNiKytuVEhzWG14UVJTSElZNm1KbGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6310.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2Rha0FOOVVYaDFOR0J5SG5zZ2ZsU1RuZFhvZ0JGd3dEZGRnWURHLzJJay9i?=
 =?utf-8?B?OFQwcmFBeG1pbjlUM09BUWNzQ2RtVGdUbkx5MEhhYURVWWR1ekZEVks1ZjBX?=
 =?utf-8?B?bDRCK3hCbUQ2WXE3WWxBUlBQejNTYzNJZVYvMG1EZWRnR0o0ZXY5WUVWRzlu?=
 =?utf-8?B?dmtJazh2MEx6dHQ1TDZHczlGMm83MG10MEc3ZXF2NnduSEUycHlEUnlKWGlt?=
 =?utf-8?B?cXBiWndhWHZIMXpmaVAzK0Q1eWVkTkxSUXZpWFFYT1J4NjFFTE9ySERrdHpG?=
 =?utf-8?B?U2VqL1VpcVl0ZU8yY2JyeS8xbDFBVU9PalpOSkQwZTh2Lzdya3FsQTdnWlRE?=
 =?utf-8?B?UXJ4WmcyM0F6V2VkUVlZM0pwNDZOVkovQ2QwSGZ5MkxDa0ZJeWVyTE1HZmR0?=
 =?utf-8?B?Q1RkYkdUN2dtSjZGY1ZrUk1NQ2g0aUwwTzE0TFBPTjRpR3J3K2E5aGhwYUNO?=
 =?utf-8?B?UzYvRFlmOWZpY0d2RlJkV3l0eS9SWUxjR2I3aWsyaXhSTXpoM3BXem1QNWEx?=
 =?utf-8?B?Um9Zdm1UWEJWaHlUMVpRa05va1FpWS9CQXY2ejlNRmtPZVo4ZUNaSUJyMjFU?=
 =?utf-8?B?T09YbktMQkZFVnljZmQ4bnk5SUptb0tCb3V0aEpJZStmUDRsUXVHMUQ5czhq?=
 =?utf-8?B?STJCL0o5Q1djZFRSMzVhMklGalVFMCs0MTBZelROYmV4SWM1ZHJXTEVLM1Jj?=
 =?utf-8?B?aEEyOWFBeEJKSkExQVlmd0xrVHZvcjNXbHQ5OGJJUnJNY2pzT016WW1lUnlk?=
 =?utf-8?B?N1BGcGhyamU4QWcvMWZhRTJjTlBaYkZzWnZXTys4ZHZOSnBHYjZxckEwS2xP?=
 =?utf-8?B?bGkvY0J4VzFzWm94eWV4cjZuSTk4MkZmNCs0a1dwb2ZXS0l1bVlJOTM2bDhq?=
 =?utf-8?B?NEpVRHBpeWtCZVlqbG1NTlBsOVp0TDJkSHlpN0Rkamh2akMvZCtrTk9Baklu?=
 =?utf-8?B?OWczYnUrVVFRVDU3ZzNqRk10b1k3MUNrWWlYdGUrY2FuSXpIMjFVUGEybEdZ?=
 =?utf-8?B?MC9HNEE5b0c1NFRtVlJoR1VJSFJIR21iQmllRVpScU9rakdPTURFMzhWWU9S?=
 =?utf-8?B?Zmw0cWdzVHR2bjRhckc1cU92MXQ0TFo3d2tIbTBoQkRPZy8yNmVZNEg1ampz?=
 =?utf-8?B?SFBoVThmU0g2cU5EemtHa09zQUUyZHdxTHBKdTI1bW1KQlBobXJxVXRQYU8z?=
 =?utf-8?B?MTdIY3RmYUJWbE8yd29DeWZrZmdtL0g2dy9MS3gySjNWa1lwcDVTc1JKOVNN?=
 =?utf-8?B?emxPaS9sZW5xOURXVzA1V0lzYnVzU1pvTGJxVXVHTW9BZHl5dDd1djFsR0pw?=
 =?utf-8?B?T0JFNEJpem00eW00NGE0MnN1d2IvR3BnZjBWOGZrd3pwMlc3clhmczRDL0d0?=
 =?utf-8?B?KzhYRVFldWpURWhqYnk2T2o1bzE5ZnhFcjFiQlg3U0ZzVmZQaE50a1FLbFZX?=
 =?utf-8?B?bk1MRGNOaHdNV2RGb2hXQk9BL0pHeXZZc1NKWmJVenh4L1cwbTRDNFcyUmJG?=
 =?utf-8?B?TERJS3E2OHoxdXhoaFBqTEFjZWhuUm1tU3BxbFNHdktDQzdSTFl6Rk5xUVNy?=
 =?utf-8?B?NUlmZzJNMTZUM1RzMk1WakJoOXNZbW9HR3BYcHhObkQ3dmUraWNRYWNZZnRk?=
 =?utf-8?B?SSsrdmFuMzdsTU1VSXhXQlozN2wzRHhDTmNWdC9BOU9hSTBVbytWWk5KTHls?=
 =?utf-8?B?YVhYRGk2RU5XY09zUU5KU2liNUdCSmlydG9mOXVvRWNOTkRJeXE4bDdsbDh6?=
 =?utf-8?B?ZENJdWs0TUt0dDVDL0xQUnk4Z0lsRXBJREllK2VwZ2ZNSTdzTVpNVVZXbWNs?=
 =?utf-8?B?MTV2Y3UyK09xR0xoOUxGdnUyYldQNUlWcll2Wi9zM3J5VGQ2cFhQN0Qycytq?=
 =?utf-8?B?L09Oa1FmUHIvb2pRMVp3MDR4em5VYkxKQkY1ZlYzaUxzT25KbE9zRWNDRmMw?=
 =?utf-8?B?UlVYeFNXSDRYRVpTNXE1Y3NZVFFVYm9XUzJKc1V5TkdFamZyYnJ5UGh6UmJp?=
 =?utf-8?B?U01TTjI4ajg2SEFBWXU1ZHI4OEtMcCtTYUMzYU5iTVN5Q0V0MVZOOE55YVpm?=
 =?utf-8?B?N2RtakRTeHVpeGJzT05HZkxOSjAxNkRoQ2FtTEVWMHh0cVg3bDN1NkZ1NE51?=
 =?utf-8?B?QUliRGdTL3l5U1R1ZGNvdGdKNUcvMTdDY1hJZlZ2Z0E0Z1FDOFJWUGUzVVNG?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f6de3cf-f512-44c8-2987-08dd830d1632
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6310.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 08:50:40.8817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XAdfZSNvk5sna2H5euqNBH7Q+LKrwyEafEUu+BWTUe26u2z60dl16pFOXte20tEL1lqUkYc/3M5O/byU/I8iyrnFkoasUCed5ca2qqnil0Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745484649; x=1777020649;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IcUVVC9fRc7se++pZ0ScmQpxwOTuEDrw4paqRRfyPQ8=;
 b=ISWSavwrhcL5Kq72kfoWgzawaS6vYIyszfJrvwtlI7+wYHJyR+XF3tSu
 2ofXcz/cq4vvseWbuFEKbKOHAFhXE2H+72oGccFaPwz48690fsjBX3XIe
 X4ZCzpiq1S9YWmfGXl/7q+oacdrte9FnPdlU7piVXtdaXUkI1TZi4P1Ib
 nbDQL81jaLch+9BCSET54O+Td066I24Nl1MYnP7DafcSoPaLRnkuVZM+C
 gf6aEQjDrn/ARUTzu/wnoUwzE3JLqdJFHcnQ6xVqMUeEzvXVMPdZFHbRv
 jd+pH5WBglfHF/F91/znStwQPN35UOpHQpPJi6CRPeAOD3K9aAbFcE4Ol
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISWSavwr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] igc: Limit netdev_tc
 calls to MQPRIO
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

On 21/03/2025 15:52, Kurt Kanzenbach wrote:
> Limit netdev_tc calls to MQPRIO. Currently these calls are made in
> igc_tsn_enable_offload() and igc_tsn_disable_offload() which are used by
> TAPRIO and ETF as well. However, these are only required for MQPRIO.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 20 --------------------
>   2 files changed, 17 insertions(+), 21 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
