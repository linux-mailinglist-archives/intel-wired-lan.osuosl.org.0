Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B81E944569
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 09:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EA1F40BC4;
	Thu,  1 Aug 2024 07:26:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qt7kLnYWiIO0; Thu,  1 Aug 2024 07:26:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36D2A40120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722497204;
	bh=s6OnvkXzdnW5goN/h4dSzC915+wQ5oT/woSNNFAUzxI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vsT0mxuQqtElJf+iA403EObBG/Fj8tRRkocb9Q+5fc8xp/bGNimhqjF8vKHgzCiu4
	 MvmZTx8a3EPYdLYO3ndGssXgCU9TtYo1BhifHBvfo8ODcnq9HRZ6jTWVzJti7r6o52
	 3ThyAiptC/pOVitN91WNtLpF5l8YLqaOSu+4z9upG0gOvKqzrVaG4627iA2x3l7KzZ
	 3raThlWWa878m9quEthMrorQexxj2Io5KiUeStlOV4Y81ZcDkZXoXTR5hl2GVj4OcC
	 ftLO46Hk/9QwdqOle5lLaikzfah8ssxcD9m88CtOfCj55sodKuf8qgxn1/i27gYprg
	 sN74oS0y6VlGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36D2A40120;
	Thu,  1 Aug 2024 07:26:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF0C1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6997740BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVY4Zg_tQbWq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 07:26:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CE1A40120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CE1A40120
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CE1A40120
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:26:39 +0000 (UTC)
X-CSE-ConnectionGUID: S8ig1e8wTJCsq0suyedfdg==
X-CSE-MsgGUID: YqpWSAzLQ/mdvWa7pOPJcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="24289809"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="24289809"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:26:38 -0700
X-CSE-ConnectionGUID: E/ICGAC8Q8a0jfKM1SYSQg==
X-CSE-MsgGUID: 8I/hO6dpQaWVF89TQaL5Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="59789694"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:26:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:26:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:26:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:26:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:26:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PWoGJ/o7aNWAtgQ1iHH0IXDT02vAwNSeHfPE4lWqCxv1DQ53AvdTJJoUKy8mR28jtTSxwjYIF44YUS00SkwfpkItSdg6eqd2sFoEGU0Bqk/Sq+KqXvmSGC709o0K0uzPltuH2yjeSu3ZrSeNlte3ewlfT99yY4BONrFFyTnA5opXa0OUOhJFKsTw0cmSHKmVw4q4DYWNiPY3YTgwsJx0Hwc/L2SIkmzi+dDRINyXvhA8gptFj1/CwUzdENGIysa7ZHy0tbmOMF0sMJXOPT1gwM89E/BNT74yXNbglRdddQ8066fDw/9oCd+HWFn82t7goIlFvcShu9quaeHgBQJJgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s6OnvkXzdnW5goN/h4dSzC915+wQ5oT/woSNNFAUzxI=;
 b=PeX4LkUdBwG7N7RyWJncCp9aBATOhD0sOtamqIo4IC7Szrpw6wAZ5b71OoUdfUUeJ2RJ4VGxIsRQeTWa8+J0P/zrCUIrhcKdR34F22vgJl6Ye/h/sXx5NxgBz/byG347AR5U0lfyXSlaV+9pb/mjxBmrgk/iAbjig9VyBM3aE8OQWcdhEp29nd9h/rc8iKs0rhk/p/1SoTxU9zjpPrW3CygONMZFEuRcnaq3pVVqc8X+OcCallC5TheUxJoauGq6NjJrxLcBBAKC5gQ7xbO+qQhMhXT2fiAkQqmsuSMOHeeTDl95D73gf+AGeLTdFU/0v1Fr/U6PCg/svUYG+IrFzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 07:26:34 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 07:26:34 +0000
Message-ID: <3fa847cd-67f3-470c-b375-993aabc6decb@intel.com>
Date: Thu, 1 Aug 2024 10:26:27 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
References: <20240706153807.3390950-1-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240706153807.3390950-1-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::13) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c4babde-7fea-4c25-f4c4-08dcb1fb4548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEJGc1QyOHc0M2YvampEZ0diU2pmTHpVbFA3eWJVeHZucjdWRHU0enBCcmdI?=
 =?utf-8?B?cmxyMCtPNHp4QUFxS0JJbVpnRllDQmR4TlBwNTZ2THJmY0xiSjZaeThuUEFR?=
 =?utf-8?B?WEs5cERVU1dnUGNXaE84VDY1TzRrOC8xZlVOZmJESFZMQmpHQnAwWnFyQzJi?=
 =?utf-8?B?MHNTQVRSL0kzUGRsd2p1ME5mQzNIMEpKTWVBZzlFNEJwUTF0WUVYbGhHR1d0?=
 =?utf-8?B?b3o1bjdUbnBXeUpVUGJ6STFmK2luZjZJazNZSlNTVUVzSEt0RG96TXNGT2hO?=
 =?utf-8?B?Z1BCNXZPMTN1YUZiUkhDS2hDUFl3K0M4dVdxOEFWSGZIYWp2bFQzcmxsdWxR?=
 =?utf-8?B?YXNaU0IxY1hETlUvbmdkTHdrYzNoelNIMWZPdmJqK0NoVDVQWEZVcnBDUy8r?=
 =?utf-8?B?eFl0NmNZRGtEQU5zK0RIVEhSNXpUbytuUnkwdG9ZdUhyY2VlVzM1bkpkMzda?=
 =?utf-8?B?TmNJY2JhUXFJUFlac3pnUVh2TzZITlFobW5DRXJxL2xGaXVGc05MMWNoaU11?=
 =?utf-8?B?QXNHQ2FkVk5YOWE5NmNIQVBreDNkZ0lQZ0pyQlUwWHBBcEpOSmJxdFlEMGtE?=
 =?utf-8?B?VkY3M0EzWS9VNy9DZmVrKzJ1VmljMUtjelArTFVMeThBRlZMdEJHU3hydEtm?=
 =?utf-8?B?NUczVFZnR2ladUtrUmVVTVFtM3RFYm1obnBkYnoxNWkwMFVTbGhYbmZaR1hU?=
 =?utf-8?B?Z0s0Zi9uTkN3c2x4cWUrdHZHQzZrN0M4ai9DVStPbEl4d2FOOVFiVEFkckhG?=
 =?utf-8?B?Sk5HYVp6OXZ5cjZtc3gzMWpLZi9qMVJNdEViNzFCWnFJaVQyYXdwZHNmUVRl?=
 =?utf-8?B?Z0JNQmNpd2ZnTjU5TGJTcFp4aVN3S2g0T3YrZENDMnhpUzhQb0hMT3ZCMkVi?=
 =?utf-8?B?UWh4aUxaT1UwNkFLWTljVlZ6OXBwcnhpYU0zc085UnYvL0h6RzFEeHVaamJH?=
 =?utf-8?B?MVd1RCtpUTlsTm5vbEEzcmk5YmpDUGZXcFBOc3g3bDVYRTROdzZWaUhoeFpl?=
 =?utf-8?B?RFlLQkFqMGszSkdvdHJ1TE1zVGRjWC9acWFQR2pIQUVRTERVYnZka09tZEw3?=
 =?utf-8?B?RnRxSHJQU0krWjRzYVNVeURjeHNtV0Z4ZXVuYi9SYWhWdUVyZ1hNUkt2eEVI?=
 =?utf-8?B?VS9JWDlyUy9EYjZPOEUrT0J4Nk5wTjJuanE3YkNtQW0yNDlkdmUyVWlOcnRP?=
 =?utf-8?B?UjhteGliT3ZmTm1DS1o4U01Yc1VOZEhaZEEyZjZlalVEZEdJYStlREhvcVJJ?=
 =?utf-8?B?aGdQVnVHMEdXdVM1a1UzQzk0MTcyUFRUVDZma2hZa3BLOG01eUVDZmg3YzJm?=
 =?utf-8?B?cTdKUzBhNlBlVFhOeisvTHhFYkZ2cC9ycDNrU3lFK3BMMmt3V3BjZkNFVGk2?=
 =?utf-8?B?U0MrajNMalRKQ0M4aGVPbUx3YmZNb0FFNVJJVWZMNnBHcTg4TmpyalI4eFIx?=
 =?utf-8?B?eUE5bW9rdythRjgyQjUyajY5YjliZm4ya09td1lDS3ZISEthdWRFdS8ybG1D?=
 =?utf-8?B?NkxHbGVkLzg5aFdnZklBRU5mQ2VYenNyWU9OOUsyallZeVM0WDdiWHRVRjZ2?=
 =?utf-8?B?akZXMGtpSHlrVG5qMEtsSGVhSkZLa2d4V2x0Sk1ZZmcwbmhSMzVYR3NoOXg1?=
 =?utf-8?B?OFUxbVRGTDZBU0kwVzA0d2Y3K1lHRmZwdnJMRmcyMmc0SDA4YXd2bmR6Zi9H?=
 =?utf-8?B?eXdoZkVtR1pGU0xjTjFGTDFwbW1kNElxUEp2NkxHdExYdTlWcXhVYXd5aHhy?=
 =?utf-8?Q?76j4BOMgHZGspywBs0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlJ6ajNLaFI5WksrQ1ZnaU93aHdHQkdROWVQYWFiMDVRUjBqeEFEcW9yaFpF?=
 =?utf-8?B?VVRHQlNKeVpJL3NCRnVFd1E2QU1SaGFQV1BFa2ozSDdQQkhHZjRmZ0dReFBH?=
 =?utf-8?B?bHplNEtEdTFRaHJDSmxvZCszc1pUZkJFNDUrY1lKTnB1ZHB5azFra0xhcFB1?=
 =?utf-8?B?Mk1YeTBBaWttSkhPMkNFdjBhL2ZQZ2xLVXhKMjlocW03OWU1azZzY3NFRWlI?=
 =?utf-8?B?MU95L0xoOFF1cmFiak5vTllEY0YyeUtQckhkdlpmdVNnc1FMVnJoSHZxaTZU?=
 =?utf-8?B?bFRpKzMrN2ZmYzRjOVh1b29qWFVkcjcwdUR6eWtvVnlpdW9pM09QampYUHVa?=
 =?utf-8?B?U3U2b04zSnFuZWJnY0FiM0E3OXpuaFhXWml1bTFWYzlHVkhzM2YxQ3Y1d3RC?=
 =?utf-8?B?bFN3QjRiSVJKV2R6NUs0Z3lubWJhMXVmMmV2VE4zaEptakpEc1JaWEV0cmZE?=
 =?utf-8?B?NFZpZHgxWlVhY083eUZ6eDdnWDdUQm9ONzR0Qy9NRXl6R1hFNCtSdVBBT3kw?=
 =?utf-8?B?U1JNUEpZZFhZcWcxQkR6eCtKRFZjTGFTTVNyNnRSM2FZajdxMmx2WExoMWxB?=
 =?utf-8?B?VEplZnhVMmhyNHg5eHlpaW82Zi9UV3RLcU1DeVphWWlTaVpGZ01IUVJ5VFBo?=
 =?utf-8?B?NHZWTVR0TWVFQ2F4RjBJdWVpS0dIWjhRTVBzTUYxMklFYlBSeXZLdlFNYXo5?=
 =?utf-8?B?anRjK1BRcnl0SnFqZW1OT1hBVVVBUS9SK3lGb0c4WTQxWCtRaWRNazZPNTdH?=
 =?utf-8?B?YUlxL1ZiSkgzbkpzZSs3WWFKY0VZRFYya05laHJIcTlNZTdxQUlJUVh2VXlt?=
 =?utf-8?B?cnZTYVZuYS9TdHpQSEYzbnFLUXRuemZpVStWK2NRVm9zbVVtRUNJck9La3VH?=
 =?utf-8?B?bGd3enJvR2FiMk81ZW9ZL0ZOQkVnKy9TN0JLS3ZvanowRHZNdDVCK213RU1C?=
 =?utf-8?B?Yzh6ZFlPKzN1bkw0RUNId2JyTEd6bkN3WEpQbWVLRlBiS2szb0phcmQybndj?=
 =?utf-8?B?U2ZxZHpEK0ljUThCUmZoV041VUJwYlVmelVONllUbXJObVpzWGxJQzB5VTVL?=
 =?utf-8?B?Skh2a3lMT3RxUHozSjI1cDBDR1hydXVNdzhNMXRQY3pXSVVmTGhlNzFJamd1?=
 =?utf-8?B?aVBJNG1ZSWUyeWZaZlM4T3pmc3pUZ2FvaFZMejNxNjArMGFyOHJwSkl1NHQ1?=
 =?utf-8?B?UGNCVTlCRUhLUkFVcFlzUVEzV1pRakhQeDZDSFZsM1RZTHRpQjQzY0JhN2xZ?=
 =?utf-8?B?QWZMS280Wm9JS0RQRVF4UjVkOXAvTzJTaWdLdzBFUFhhU0Q5bGI2UmFXNUZ6?=
 =?utf-8?B?YWRUK2J4V0ZnQ1l4bklEaXZMUE1IQkthbkYvK0pDTjBJeDNpQ0hjS2VuQUZm?=
 =?utf-8?B?SU1RY2pLTWlnRFk4TWVsbEhQd0QvVURkQlczd0t1ZDFSOEh5alBrNy9nVmRl?=
 =?utf-8?B?MFdhbGxGQ2ZHNHhDOG9ianFaTHB1OExvLzRWeHBBdmNNK2gwSGVsK3E4cERa?=
 =?utf-8?B?Q09oaU5aL01jRU85MGR1a0ViT2hacUtOK25LeHpPSkZQZGNPbkswYlNaV0lz?=
 =?utf-8?B?Y1ZaN2o5cGtlR04xa2wvR1dXTWhvUzcwTlVMNVV0R000TUtWQlRhZGFDaHo3?=
 =?utf-8?B?OGl1WUVPelgvMVVyQWJjdG1wam9mTTFvVDVxb3orYUNFYlNXVGtjQ0grOXVL?=
 =?utf-8?B?Mk1LN05aN0wvcHVUYllSYXBiSFpwc2h4dDBWRmxVcklpMzgyOTVCNFBGYzI1?=
 =?utf-8?B?eXZybEZNOHh1eXF6UDJGdmJCWlI2ZTU4VkZ0WWV0b0l3VVlGZjhwWFhxSk41?=
 =?utf-8?B?czBDdmtDak5zWFRleEkyTFRrNEVsNERtS2RXOFlYZHYrLzgwTFRFK05CNnAv?=
 =?utf-8?B?QWpCQXIrczIxTEJraE5qUE1ZTGRjazlnT0xPMFN4alBaTVRWWm1FRUVWaFY1?=
 =?utf-8?B?QTVQUDA1YXlhdnBYZllZRUVXa29uaHhpTFN2NmpXUkY5cnVZL1RRK0hEZzNG?=
 =?utf-8?B?S1VGeGtIaGoxSGxDT1c1YWNCOW5ndy8rZ1BHeDRPTDRoSXhjMDZvbTBHQkRO?=
 =?utf-8?B?TW9mNWdMdWJKdTJDMFIyRWNRbzVZY2ZFWXFSYjZKUzhUZ2JQYm1mMk5TN0s3?=
 =?utf-8?B?cVpWRkNzN28vUWtKajZRVnJhZmVVdXRmQ255YWtIVHg4T1doZnNrY29tbmZO?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4babde-7fea-4c25-f4c4-08dcb1fb4548
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 07:26:33.9883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EczAKmqbuh2ZbhDqtFCJIJiyh4UDlNSXtcJIVigzUQBHTNNjfFZXvDsk/2VQVAkBJaZdgi47pnkhXA1DkveDL5Zh5VW+ItN8W5N9LW2Cqps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722497199; x=1754033199;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ElGZFlqTouppiIYnJEnL6adb4HXolqcSpqB0tBKD+jM=;
 b=l8nvNKm1/iD0r7wWiTjXf9dxnUCd5crI+t51ejKtMMDaNCJhKc0oCwpI
 NK/RRlhSbpuwkfCuLd2n31Smf0p1y08jxgEG81JCh0ddiMVLEhKD4v6u8
 cdwG2hPUD/DghACgtXpjKPYigY7AJXNRc802gfKf4eoTnzk+YZgJZHE3h
 WO1faiypg+xbfYB5cqifml8xTQCT3sXEfGVwkXyUsMwsqzgEGpuYFKnR+
 8hY1jiZ9/l051CuoTtTuPis0ft+/wSFUKsAN40deWK00wXBCXO0Oqn5+W
 Zqi2eKAX8VRgFXFvqSKpp0ESlSnuK0XUCx9Zk29LvkGUykp9GxG/OrM3L
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l8nvNKm1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] igc: Fix packet still
 tx after gate close by reducing i226 MAC retry buffer
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
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06/07/2024 18:38, Faizal Rahim wrote:
> Testing uncovered that even when the taprio gate is closed, some packets
> still transmit.
> 
> According to i225/6 hardware errata [1], traffic might overflow the
> planned QBV window. This happens because MAC maintains an internal buffer,
> primarily for supporting half duplex retries. Therefore, even when the
> gate closes, residual MAC data in the buffer may still transmit.
> 
> To mitigate this for i226, reduce the MAC's internal buffer from 192 bytes
> to the recommended 88 bytes by modifying the RETX_CTL register value.
> 
> This follows guidelines from:
> [1] Ethernet Controller I225/I22 Spec Update Rev 2.1 Errata Item 9:
>      TSN: Packet Transmission Might Cross Qbv Window
> [2] I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
> 
> Note that the RETX_CTL register can't be used in TSN mode because half
> duplex feature cannot coexist with TSN.
> 
> Test Steps:
> 1.  Send taprio cmd to board A:
>      tc qdisc replace dev enp1s0 parent root handle 100 taprio \
>      num_tc 4 \
>      map 3 2 1 0 3 3 3 3 3 3 3 3 3 3 3 3 \
>      queues 1@0 1@1 1@2 1@3 \
>      base-time 0 \
>      sched-entry S 0x07 500000 \
>      sched-entry S 0x0f 500000 \
>      flags 0x2 \
>      txtime-delay 0
> 
>      Note that for TC3, gate should open for 500us and close for another
>      500us.
> 
> 3.  Take tcpdump log on Board B.
> 
> 4.  Send udp packets via UDP tai app from Board A to Board B.
> 
> 5.  Analyze tcpdump log via wireshark log on Board B. Ensure that the
>      total time from the first to the last packet received during one cycle
>      for TC3 does not exceed 500us.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> v1: https://patchwork.kernel.org/project/netdevbpf/patch/20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com/
> 
> Changelog:
> v1 -> v2
> - Update commit description (Paul).
> - Rename qbvfullth -> qbvfullthreshold (Paul).
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  6 ++++
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 34 ++++++++++++++++++++
>   2 files changed, 40 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
