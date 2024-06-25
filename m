Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0133916066
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 09:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98F6860EF8;
	Tue, 25 Jun 2024 07:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Agl8CHgNLU7m; Tue, 25 Jun 2024 07:51:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78A3C60635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719301893;
	bh=OMqJXuRsWqelLODdgEKktV2fhc8Z8cAxx3Wgm778B2s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nfo9BA1uiuEfj+IyPdWxgvckhrfZaAD5LCqec1y/3aRmEirrz43A90GaYM1xxLhK5
	 fKUGgHIiT251bx+Uqp3Z93o3UKrfLWlAMn0HK6/x4YKfDrnSQwEOllua2ywAYI7PdP
	 lFZahJs1Y2XWbWXZSpHaRrKE1cn6nq//ooM6kSC4GYfJNaJ5tt3CqV7UqFnsmt+4Ir
	 ACr3FeNksu7mT/2iyaBMMnW4e3nBfqNfudKT7RcbMHRJnSFgajOwJiBL9JEEolOJ7e
	 13FIR8nnXD3V+G4pR8C8cEMyGEgceU5y6+/PIaeAuqb8BRSrv2xMiIUleVNlzHY3iI
	 dQFwo4DsuBhxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78A3C60635;
	Tue, 25 Jun 2024 07:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 461381BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F85A40B32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:51:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Da0YAfn2191a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 07:51:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01E8F400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01E8F400C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01E8F400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 07:51:29 +0000 (UTC)
X-CSE-ConnectionGUID: fDdWu1ztQG2xI7JLOD2mTg==
X-CSE-MsgGUID: M02XV8LLRryCfdybnV6sjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="27710548"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="27710548"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:51:28 -0700
X-CSE-ConnectionGUID: TDdyx+/CSdWWysI+W+YY8w==
X-CSE-MsgGUID: 7Pxjj399SfqrCPB7Qf5xZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="48476159"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 00:51:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 00:51:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 00:51:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 00:51:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P2wJB3vIo7SDMbA3C2WMVqdhSS2vi+48e4ZxKfgJA2rL7oTcL9pQQiLHZALeV28MmDQ8D4eZGUzYvHJ04IizoHgRayYfWlP7whYe5oXv7ALbUg3f4k10gIZELUBCtYYLTQrNyr5Yvbb6Qy3m07ypE+E/U24yzUhC+/eml/XJs9StbKNAqgjU6PPMdjv+2TcAuCwCn485WbxGZypZ7aj+kJ+jQ6E7gRWbwxKjhzmfG5c1Js7QCGVlfcTkA+iAjr3cxm1QxmtD3NziFl8ULoNCafw2WZ0ESuKa1WGuY2YzVJsqtgWyPNVgO8zazUpZuWfXfjskxLvYK2budWbcHY9aQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMqJXuRsWqelLODdgEKktV2fhc8Z8cAxx3Wgm778B2s=;
 b=Hnf9bGCFJTd2RsfKc0uE84jJCwtz4oxqmKyg2OFimdNx+rh8Inb07kHG1doyVbsx191vFtOHknQm0XfsnVmZZIjy3j/wzB6UQm5/n4VQPKXqNLRV8RR75Ga2qKqso/MaJiVf0TxQEYhzjzPAniQfaZ4xqyb8L0SovB8OAhVkMyzU3pDXI3AAzz6zBI+2InACaSf2x3Cq+ifxMd1yf+3r92Dh/p2nW70/ny5akvqwroqwZ8g1RZJvCdMCF0sOgY2O8hg/W+9v0W0IVhFarJMrV7x89+WzLByrjXZzLoyvF9xvp0BO58NjB4ymaViamwv7O8ODFnWwPTh01eazRBbtJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6917.namprd11.prod.outlook.com (2603:10b6:806:2bd::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Tue, 25 Jun
 2024 07:51:25 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 07:51:24 +0000
Message-ID: <e5a1c93d-243e-4c7f-8a61-aebf50b9e0bb@intel.com>
Date: Tue, 25 Jun 2024 09:51:19 +0200
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20240624144530.690545-1-marcin.szycik@linux.intel.com>
 <20240624144530.690545-8-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240624144530.690545-8-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0103.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6917:EE_
X-MS-Office365-Filtering-Correlation-Id: 9963b52e-cd5b-4fbb-bfc1-08dc94eb9c91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WlEvOEpuSEJBTEtqSHJVZmtjVFU0V2dnZUdGbUtpWUFCOXJuakxFbGNSZUd6?=
 =?utf-8?B?TWFTdHg4WXpuQWsybXlpN0VBYXhzbTFFa2h0OG1qUTdlWVd0ZTV4QVlKQVM1?=
 =?utf-8?B?WEZ3LzdEUmpUUG9FdzhGQkFDdXJQS01FN1FkTGhKblBzRmE2dlRZM1RjOFZo?=
 =?utf-8?B?V0owZEw5QmhCQ0VSWjk0Y1lCTHhXUEh6cDg2dTFZSGwveFZDdXd6U0NjNEV0?=
 =?utf-8?B?aEZlN05HOFFzSDNXZXZqeHFBRFRhRnZnOGVVWXZjcnA2ZWtjd0dYV2RIa2d4?=
 =?utf-8?B?alhZMk5zR01rM2FUcWphWHlpbjBQQmd3NVVCc0QyYVoza1k1R0dUNzRWL2Z1?=
 =?utf-8?B?TWR0ZXBHdWFWTW43bnUxY055bnpSWmJkQ1ZvcHhxTTRYL1hqUGFJbEpHM0c0?=
 =?utf-8?B?a2cyeVYzTC95R28vcWFVR2ZRamZKTTdnU0VUbWV2dlpxbTA4U3BTaXM0UzdU?=
 =?utf-8?B?bGF4cWlYU2R3MmswYmF2M0VvY2NmMlBNQ2NQaklQNWZobTZReDFVTm9kZHpn?=
 =?utf-8?B?Q29Dc0xmdXpTL2ErRGZKNmdsaVpMUDZFSTlraFZVMTJ1dFFBcFZwdG8zaCtU?=
 =?utf-8?B?K3V5QXBVZCs3eWxxWUNzc05qbjlBUHdlcmR2bE9RQWxmMmZwY0tyY3JhczdD?=
 =?utf-8?B?ZFVFVlBoR1pxa24raExDUE8vcGdBYXBUb2xlZ0szbXBxbEFkYmUvSGFTSHFK?=
 =?utf-8?B?UDBGVkFkc2RvZWlnTzVWWnJuU0psaXJ3UFExVXFlc2lPN0tabkFTTSszY2NM?=
 =?utf-8?B?WkUzc3RhYjBlS0lvaTNNcUl0RGhaYkFzWmdTMW10R1daTWVKc1pLUERsRWpX?=
 =?utf-8?B?VlJtZXJrU1V6emt5OU5xamQ1NFhNaEIvVkN2d3pYODZMQnFpdDZ0WHN4Vnph?=
 =?utf-8?B?SXBOZ2ZjbmlJcFZkSXV0OENBYXlLVC9pQlM0M2hRUThpZVNmR2JKYXNvbzZY?=
 =?utf-8?B?aXFDWnF1TU1VY3NhbzFXb0pTY003RnlPMEREaldnUWNEbVAxNks4Z3JYVlhG?=
 =?utf-8?B?anRBZHpqYUtISmpNTjQ3WHZkS1dFblBOS1cvUGVaWGdodWtuQ3RwN1l3cG9N?=
 =?utf-8?B?SkkyczZJVlhKR3VqejMxK2I5c1hscHAxaS9KVFlzQXdXckd3VWErTVAzNElS?=
 =?utf-8?B?RTZuUFdsa1lBd1pCYWo2ZlowZ1RBVXpsZXo4WkdDd0F2RmNVSSsxMnRIaUx2?=
 =?utf-8?B?cS9UOWRyTWYyY1Vzb0p6RmxyOUJEa2k1YWpBZTlRY2YyUlFNSm4vblcxODht?=
 =?utf-8?B?TXNtb0dYMmFnbzRVV0tEaDJ5NldsT3kvMXRhS1h6RkdPeW1WckpaeUlxVCtK?=
 =?utf-8?B?TFhNb0NFcitSRitlTEJlMk9SRjNSOXZSenFkS2xrY0oyNDFNMU9pZVFwT1Bw?=
 =?utf-8?B?aEZEOUlKNUpkcHpOK3E4b1lPbXNteGU3V2NKRDlTTUdXNWhxcmFaYzNzUDRo?=
 =?utf-8?B?SlczdTlHTnNqZzZUbVM2ekU4clMxeThNSXlhSm52a1JQZjlGQzNqYVA5djQ2?=
 =?utf-8?B?UzhHMVNvUTUwbmM0YlBqQ3QzaTVPeHlleHQ0MUtTNjJyZG11c1FBM2xFYnRE?=
 =?utf-8?B?UHFmNitBVFlPYVkrWEMwTUc3L2NrVWtFRUs0VnFRNy90SXFzUnhTYVJaYkJk?=
 =?utf-8?B?M2N1SUNKZ05oRVVJME9xRGJNZ3RPdHNFdXNKVHBjU0p5bzc2MzAwNURsQUky?=
 =?utf-8?B?R29xNzRwNmI0cFd2U0swa0ljN00zOWMwTDFnSlorTjF6TXdwZmxJL3hWVmlC?=
 =?utf-8?Q?/sHTjv7OuhgV+4dhF3cyykc5J+7H3km1WLyd8WX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFlKSGViNGF3U0RnUHRUL3lEcjc3VWlmQUlGSWM1TnAvZ3doVjREMWhJK2NS?=
 =?utf-8?B?QWgzS29lY1M3aGc4UmZGdFRTMG1KUmNhWEhLZjhlbnRMOHNSQXJvWmlVak9K?=
 =?utf-8?B?cncwWW5WL1RYVE1wS2taRVduZjhpVG1jcWFHMnYvc0dzdEJIM0lKSTNQdkFO?=
 =?utf-8?B?S0pRcGpuZEx5MFJoUzA0aTVMdzlJT3p2Vk9pNzFCNnIzWENGd0EwUjZMYWNW?=
 =?utf-8?B?UVVzMW5yVGd1bVJwUVlDOG1VUzc4YnB0U1JjVjk5SXVrcEJCbk9qOTFBakNT?=
 =?utf-8?B?TWUwanBMYlB4TEZEUEtsVW1hVmRyTFJpWUwwam1PdmI1ZTlHbmcyZ1hpQkhN?=
 =?utf-8?B?TnRYMDR0MzBuOFlJZWJ2S05vSklHZitBbTdrWE1hS2svbkVRVmVBaHZhMnly?=
 =?utf-8?B?UHNqeVlYQ21uSUZYdE1CYlhwS3cxZlpITWhXV3Q4RnZhc0UrNnhEV2FLaUpj?=
 =?utf-8?B?UUl2c0JqWjBLdlVTUnFWbllLb2FHYU9sR1JYNEhWNXZyaG5Vdmlpekh5d0xh?=
 =?utf-8?B?RFkzUVpKS3ZxTkVpMDR5YnNTNWNVUGNka29MV05nTTFOZHI0a1JIV1pQMWVv?=
 =?utf-8?B?dU9BTnh2UHlhMWtaRnJUQWhoMW9tYUZOMG5Cam9QSzZVbWc0OENHdGJ1VTZL?=
 =?utf-8?B?Sk00UVhSQkNmcW5ab0dReEJ5MWxtajlZa2M5SEJPMlJUQUdkSW1WdU1MZVBa?=
 =?utf-8?B?S3hKTWI4dXdvZXhqb3kvc3lRQnplUXFUWXpkVE9ZWUFDMVhmdE9DMGJvN25X?=
 =?utf-8?B?MjEyamJFSGx5RUFUT3dONUhpMFVDNUdNNUs1T1pmZHdabmdieDcvaFV0Qy80?=
 =?utf-8?B?ZmV0cXVxQ0E5ZFFwZVByZEt6NUxkeng2cXp1NlVWRVVCQTcrSFBCYldjMlN6?=
 =?utf-8?B?WHZ4ekYwSDRGeENEREVzSVgwVmpjU0tjbkZQekZaSWh1NWp1US9lR0syVTNq?=
 =?utf-8?B?d0RvbkhhdXQzV3B0ekw5dGo5cXduRHM3RXVsZG0yaW9pdG1FNmFLSU9qUUlq?=
 =?utf-8?B?Z3V3M0pQVEVqcExXRGdvcWtjSjNKdEtRTjN2TFpya2lIQXJUMHZRY3Nha2dP?=
 =?utf-8?B?blpJMjZIWjlDV3ppMG5oS0RkdzlycHVodWhLZnp3T0FqZFp3UlNSV3JmbDVs?=
 =?utf-8?B?VkhEWHFzOVJsak45ODZ0TmlJaXpxUkhQT0xmZ3VzNGVIa0REMWUrTS8wT3lu?=
 =?utf-8?B?TWtSSzVJZ0sySGlySGRvVVJnNE5wMUxsM3RYODJ6bEZvSXZCNjNkT3RFenNM?=
 =?utf-8?B?eGNuNVdpVDZRODZBMkV1L1M3RXNzMndmL3ZPVVk5cDIwVERSc25NcUpzNUk3?=
 =?utf-8?B?bGh5Rm5zYW1hUVpwbFZWTWozRTBtTVRnM05tQWt3aDhGaE5sVU5xVkd5bjdt?=
 =?utf-8?B?U2kvTnRZSncxdkNENjlSRWdibjNvb3ZkN2JaYjFkNWNma1FkcFprSDg2czUv?=
 =?utf-8?B?VUExbDA4MlplQmpSS1BHZ2NsbEkrc3BEaXJjOVJOQUMzVjhCQ2pJK1EvQkNV?=
 =?utf-8?B?V0JpSi9QQjRVQVRQNnBEY1BGdUVjNG5Yb1cydEE1Ry96MWxNWFRmYytkR21W?=
 =?utf-8?B?YU9TNWd4anY2UFBIZERVRHNBWHVieHF4NGJyOGsyWnV1aUQ1WWRKY1lVd1Rk?=
 =?utf-8?B?WDhodjcyUHpjMzBGVExnekhyZlc3NlV1Qk1pTkdmd2x3UnljVkdDVmRGNkpi?=
 =?utf-8?B?UGZyWWxrT09oQzhRQkNMSFFkQUxVTHBDYWY5RExzQW84T1RSc2lSS1hyUDRN?=
 =?utf-8?B?OTArdXA2c2tvNGk4S2xWdm51clN2UDVsaWxoeEJ5SWlVazdRbGRoM29pWi9Y?=
 =?utf-8?B?ekxUOGpOaDdPOHFnWDd6bjAzaVMzQlhIMDBtVW5VcjBZQW9DVHE1ZldtUzZM?=
 =?utf-8?B?anBXV2hiOWpsb0lMVjQvclMrNHBBcEkyc3gzVnJrK3Q5TXN2MVhGSW1mdVkz?=
 =?utf-8?B?dWlEZGpDNkZWMHhMRGl5Z0xuWXR3dmdjOWZYR2JTTmgxNW42QmI5UVlNNkJU?=
 =?utf-8?B?eFJEdTc3eEdNNkdreStOcE1IT1Npb1NNT3lzRlBrc21LbktIYk1tajRGQmhq?=
 =?utf-8?B?NUx1TXNlN1UwVm5QTXFaR2pJKy9wNHI4dVoxckMvR3EzVDBqRnhJNVBPN0V2?=
 =?utf-8?B?Q1lkaHhiR3YzSHBxOXRZYy93Rk8zNnBlMXB1ZjZBNHN0aFRNYTZ2UXcxdUVN?=
 =?utf-8?Q?P4NMxMt1CrRKNSRbhjO1gpg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9963b52e-cd5b-4fbb-bfc1-08dc94eb9c91
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2024 07:51:24.6139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ebfB6vS7sYe+YDdOkpEjNaT/XTgalhMJfFHLxXra7Kyx6Od0pJ7uPFSWP7odewty88hLJy911p07uXkQlb4aN3RFZReXuMgvlIsY7tn45sM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719301890; x=1750837890;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JUcqECQTDwchHpRPA8sH2wHK8rEiD1cahWeCHMZspOw=;
 b=BgT3N46GWd9mTqU3GIhNBdVy7bKVQp3gG9JLlDllqhJuj+0+VeKGgv3Z
 nLpHdSAXHw435Sr4zWQDp5IkrCI9SCdn+lFyKP7gSANNO9MpSodWfBAPy
 /AMYZYmrnbkIAH7TtkJK3/MtV5wP7UTFHbfmnmxFDeurkUxHF4unnBor3
 V3GBI+7ujZ0Bi8BXwHokL0Az1NMhCwWKHmyPaGWY0QE1fvRwfIY3p0JmO
 5ni02s8914UtTdOFe/m8PcPqSfGakCNc4zz4dR1vdZ48/YDnGIZG7yRyr
 55OPr8llD42n8+mL8M0Wak1Ar0GoykPEQh5dWXIEPDFllLpxCSO6w7OH9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BgT3N46G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/7] ice: Add tracepoint
 for adding and removing switch rules
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/24/24 16:45, Marcin Szycik wrote:
> Track the number of rules and recipes added to switch. Add a tracepoint to
> ice_aq_sw_rules(), which shows both rule and recipe count. This information
> can be helpful when designing a set of rules to program to the hardware, as
> it shows where the practical limit is. Actual limits are known (64 recipes,
> 32k rules), but it's hard to translate these values to how many rules the
> *user* can actually create, because of extra metadata being implicitly
> added, and recipe/rule chaining. Chaining combines several recipes/rules to
> create a larger recipe/rule, so one large rule added by the user might
> actually consume multiple rules from hardware perspective.
> 
> Rule counter is simply incremented/decremented in ice_aq_sw_rules(), since
> all rules are added or removed via it.
> 
> Counting recipes is harder, as recipes can't be removed (only overwritten).
> Recipes added via ice_aq_add_recipe() could end up being unused, when
> there is an error in later stages of rule creation. Instead, track the
> allocation and freeing of recipes, which should reflect the actual usage of
> recipes (if something fails after recipe(s) were created, caller should
> free them). Also, a number of recipes are loaded from NVM by default -
> initialize the recipe counter with the number of these recipes on switch
> initialization.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c |  3 +++
>   drivers/net/ethernet/intel/ice/ice_switch.c | 22 +++++++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_trace.h  | 18 +++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_type.h   |  2 ++
>   4 files changed, 43 insertions(+), 2 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
