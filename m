Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5BF904349
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 20:14:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AE5A60AF1;
	Tue, 11 Jun 2024 18:14:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sREajv9-cVCI; Tue, 11 Jun 2024 18:14:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0494260A8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718129646;
	bh=T3eUnmAdAzQSQutAGa3myF/2ZPVJsrnemsT/NwT10sE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eO8y1fgpR0iVPjsTQzAZ1lbdmbp9v8Fj06ZzKbAMD9HzXbxwAUbS308IRee5Hjbq7
	 yq4oU90dQLSEy4LkLoWz1e5x+wKX2weVPqadBfSNkiblM77a11We0aOfW2jbbsvlTJ
	 /8UynnyQODpfDk9VEKvp9tpA7hwNyZdDNqkraDUn4aMQGc/Zy9OjeLFfkvTOYPVEN8
	 WDtO0jmgI5M2/wQtLmTGJALUlyYYKVEkbfJNJBz+25nds41+M4wApGuuzJAsgF6VIU
	 UdD/cYd3KSxWwjgW2PWdnRsafNh4BoCU8xOYhhhd58qqmhwbf8I5WP+e8DRglCubk0
	 D2EaiskWK/Z2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0494260A8B;
	Tue, 11 Jun 2024 18:14:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DAF71BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 18:14:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38E8C403BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 18:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hz3PMlafjuVz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 18:14:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D60DE402A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D60DE402A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D60DE402A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 18:14:01 +0000 (UTC)
X-CSE-ConnectionGUID: XVJ0KLmtSqOoK2csL61eOw==
X-CSE-MsgGUID: cRqop0TOT9C3v0zgkMKqBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="25535366"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="25535366"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 11:14:01 -0700
X-CSE-ConnectionGUID: BXewpNygSfmaKle2RZj5uQ==
X-CSE-MsgGUID: wg58k43BT2maSWhUHTEmHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44064810"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 11:14:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 11:14:00 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 11:13:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 11:13:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 11:13:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3xG7idsnCUZLnjKvSMyCQhuTbkypTYg2MdREVPnvjBUFSKdpz4cAMqUzHSTHCJ9YvcNbNZtlDt+4Hqol4Bu1//q0Q0o1xZAlgOeE4HbjwqrA+qLbLiCjB74wX9I3QXN/nMsUxMbuVmyydp+cdLj/tMFRpijOiVw+IDIKDuNHNoC9RCqSlMgJ3Jk5KnBygSkjrBTKrjneC9sfM8ND1MaVmeoqqFdRPDEoo2KB3WnlyCJNOvj/V5oDFFQlzrXFHAFtRoU2/l2NZiem922VVl3XFUAujUismowg8+ogUh+3qEbbFQha3C+oUU3QKWvfudNbWKw+U8MKqn15aRaE6RgjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T3eUnmAdAzQSQutAGa3myF/2ZPVJsrnemsT/NwT10sE=;
 b=CuJR8vtY6A9iWrkN4HJ15s/RlKWgT+VOuIC2tTlyCrmDj+4xg7uj11pUkeu3NA2WuDP1+Z59Sagd0VqV5XZNBhAD7kFYpXUayvGFW09iuPmpD0rEa/QKbuPEm1wZPV925M9YYSjh6DmZbROoV5bKJD2OJHlsKzMdh2X91Sb6JzepfedMW2quwcH0qMg9ZC1JuYqNJ/cWBiLk2+7r67XZi7fVthL2SUQXKmADk3N3O7uXzyzXlewamdujuFdM+VXKwWy2CoQQng9t1tH/h/a2uTbJMNP0EHreSxcXMLWmON35DUkzFsDtNRVpHtwPr+MnMCa+P6vsH2xX+CAm3z9n0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.36; Tue, 11 Jun 2024 18:13:56 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%5]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 18:13:56 +0000
Message-ID: <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
Date: Tue, 11 Jun 2024 11:13:53 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, David Decotigny
 <ddecotig@gmail.com>
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
 <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
Content-Language: en-US
From: Josh Hay <joshua.a.hay@intel.com>
In-Reply-To: <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0240.namprd03.prod.outlook.com
 (2603:10b6:303:b9::35) To DM4PR11MB6502.namprd11.prod.outlook.com
 (2603:10b6:8:89::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6502:EE_|PH8PR11MB6755:EE_
X-MS-Office365-Filtering-Correlation-Id: bcfffa9f-cb53-48c0-c547-08dc8a424210
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RStYVUVEblBZaTVwMC9mU2tlOXF3K3I0amRRV1AvQ282NlRxVTJ3NkREclJX?=
 =?utf-8?B?ZU5ucTNQcDlzdUJnZGM3QURpMDJURkxUanBySFFKMkMvVE5vakMrbnkrcGht?=
 =?utf-8?B?R3ExbnZ0VjZrV0dJRTMwRld1VXlDSEU2V3BTMm8vUDhvaTFTejIzK3ZmQ2tG?=
 =?utf-8?B?c1RkSDc4S0J1QmIyWi9tV0FrSFVUZ3UvWjhGTUsxcExKbHByZWpFUVNoWVIw?=
 =?utf-8?B?dFlmcDQwV3NOUVJaRzdjMlhCOHJSRjVuMVVpWms3bkV4SERobTBRM1R0UjZF?=
 =?utf-8?B?aFFHSGYrai8xWUQxbllSTHBteUc3VzI0SlJsMjhWbVNzaENQUWh2UnVKVHQ4?=
 =?utf-8?B?OURLeDRGQ0gvUy9BNHp6RWpNRzV1L1ZMTjliWTJpOTFzQmJ3aDFoWkVDQTRR?=
 =?utf-8?B?Skk4Ymk5S1F0eTJ6eHZ3RDhSREFvNHlmRE9uTkt1ZXV6SndUSW1TTG5VL3V6?=
 =?utf-8?B?VDlCc3N1SXdRUWMwOGwzME5vVVJIR2pCdzY1VWJDcWFYK0pMU1ozWUlZc1BM?=
 =?utf-8?B?aitMRUZJTDhWK3RXZUhUTTNHUkFlUTJnWmlneXBXajZGbHd1c3BMaDJpV2F2?=
 =?utf-8?B?dnM1WVVMTWlKU2tGQWdEem9sbUdESUJmV1VBVWV1K1BhaGJ4SG9pa3cwR3VE?=
 =?utf-8?B?K0taVnJrcWdRaEI0eUFwVkIzTDZrRyt6SmVJNHkzSjBjTjZwZVBITVRCbHIr?=
 =?utf-8?B?V0RDbWl0UDUzenc5cDdGYWE1UEJQallkRnBHZzZWTFZOMVFMdUNPcDdoWnBo?=
 =?utf-8?B?TWlsOG1zWUJVRDBlNk5LSURoTzVBQitVV21pQURvTlhkemU4aHB3ZFBXRHBk?=
 =?utf-8?B?S3IybngxdVJFclUwOFFMY0FyVXl4WXowdVpKa2lhLytPTDlQNTFwWDJ6Wnk1?=
 =?utf-8?B?b3F2cG43S0FvelB3REx0MnMxeXgwUzZMZjVYajZsSHJjWENaQnBpdTFUYTdD?=
 =?utf-8?B?dTIxNTRRM0M4RXVRdUNsNmt6VU90OXh5Yk1oYXpSZEdlVWxJQ2lneVRneUV5?=
 =?utf-8?B?MUlocGRQNHFGRys0M1VLOW1UVGlFUEI4YmVFTDZvWURkSTdYendsSjF6UU1U?=
 =?utf-8?B?MS9NbWkrZWp2UkdCS01KSkhHNTRBOE5jTDNPbU9ncG5qc1gzdTVEMGZoSWN6?=
 =?utf-8?B?SXJ6K2RnNE9KRjhXb1hOYUJSeDdob3NTUDdPRHdOZHZ6M2c3aXdmSTRqcGsy?=
 =?utf-8?B?UnZpUzQ5WlNmbGI5N1gxdlhMRnJSMWFvc09XbDczYjFuMTBxL0tKaWFYaG9Z?=
 =?utf-8?B?cFdTNkpFTGkyZWU4aTVuNWN1Yll3akJ2OEFYa0ZBVWhLQURSQm54clRTdHVU?=
 =?utf-8?B?Q0FqVU9wUnFsZGs3MVE3Qi9IWHlkcmlXcXJlSW5MQVpTMGp4OWxCMXVOd3Zp?=
 =?utf-8?B?YkYxeFIxb1F2cEVVcUZUcGdjL3pQc1FqSTNJc254Z3JwM3dJNW5sd2o2MHFJ?=
 =?utf-8?B?UUVxbE1UdFFuWTNsWEJoRWdJUzkrSVpKU04wdDMxRkhwQnQxS1hzNzRoQlFI?=
 =?utf-8?B?TStadGwvS3l6YTkxU3orQ25BWmFCYWNNSURiNXB5bmRUdkxkU1h0d0M2OFpI?=
 =?utf-8?B?QTl6YXFHRnhVeXFhS2hvbFR6NXh3OTIxanN6K053aW9CbnVYNWRQTERzWG1N?=
 =?utf-8?B?eUdyOVAySGtBVUVVY1pWVWpGUEluMGV5bFQyUXk0UTMzZWVnWko2QjR4RVMx?=
 =?utf-8?B?UitmYVJWZmljSUoxVk8wQTBPWGdiakdqc1ZZQ080dWhuRXNxbHFzWTJJUmh3?=
 =?utf-8?Q?VMVzOqLzbbSR+SYpc/PiA09jscl3KwVq02FbPrk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzI2a3k3K3BLM1NzaHk3S3djMldxVnl3QmlVckZ4YjUwNmpUM2VDdkhoTUxQ?=
 =?utf-8?B?YUowUTl6OG5ZU3BwU1N6WG9yaDQ3NkdsdGZjMzlSOFMwUnJ1aXZlK1o3NlVY?=
 =?utf-8?B?UW9VZzdoUU03QzlWcUJhdGNqRXNFTlJ1bEFKRmdaVVltQnlUUDg4TGQ2cmlN?=
 =?utf-8?B?VElXUnloVkNyV2xTKzJxZHRLUE9UQUxYaVM1eUNBWWV0YjV0aHI5YVhWRUF2?=
 =?utf-8?B?bXl2V1QwZG9Fd0RYTTB4ZE5oWWtScW1JUWx6am44MEV1Q3ZEQllFb0cvdDlN?=
 =?utf-8?B?ZjFIWmJkR3pkSUt0SzVObTlTM0x0Zm5YWDc2UzE3RDFMU3RCWVI4WE9WTjNk?=
 =?utf-8?B?c0Z1RitkSnRnK1ZXKzhPSDAvaTUxaGU5ZC9NcEJtWVR2TVFVdjNrZnRaM25D?=
 =?utf-8?B?QWpwYnh0Zi85MmpHbVNPcTNYLzhiaStTNU1pUnBXVkFvSXNEUW1zSitZN1h0?=
 =?utf-8?B?dUc4NWpiZDNLWWNOSCtQU0JWUzRiL2hMMGs1Njk4Zk16THZDNmtMeXUrc2V2?=
 =?utf-8?B?enFNUXpncFBCdUhoS1Noby9rSGdlMG56Z2ZJaDRscUR0eFY2MFlsbldZQ01T?=
 =?utf-8?B?UkpvU2JSUkJ2eHBDZFlXNU5YUmdwNHU0MHYrVkdFZ1RRSTZNNkQxYjlwY0x2?=
 =?utf-8?B?U1lKeDYvRWlXYVcrdCs4UXhsVmNaWDc2M0xMMVFYMXkzbmZWSVoxa2ZoMlp4?=
 =?utf-8?B?SWwyVjNvMkg4OGhiZVJ2bFhGdElJVUE2UUJtcWM4TlArRHpyS1FyUTJ4VGxa?=
 =?utf-8?B?MHJMRzllcHc4K2NGeVBhTUdLRkZWaFJDQ201eitGbmRWSUtQUGJDTWVmTVdr?=
 =?utf-8?B?b0hXR0ZvQ2pRUzliN0g3YnpzeElQNHBQZnlVYlUzY3FmMUw1MkxHZm9SM3BV?=
 =?utf-8?B?Qk9WOHFmNnJlRExETm5XK3ppcjd3V2NvRGFIZ29wOEZqTjlVLzBKWmxRY3RM?=
 =?utf-8?B?WWpIN1k4Y0dIblJ1MWoyS0wxeFk3MnA0YWlnZWpaVjAraEZrZHhFd01LYjBQ?=
 =?utf-8?B?U3p5andoeWJJbGdqNU55WTJ0UTJkbmxobXAxUnlrTEhuNnNkeVVHSTZXRG9W?=
 =?utf-8?B?K2VLcTJhaFVKSmI1cFp0dDkvTm5oTmJGOE1DTjRQL25rVGpybitKS08wZy84?=
 =?utf-8?B?U3h1MnB1SlovelhWWW0wc3RoZ3c3UGdsQVBLR3lkbkdqbjIxR0Z5RFcyMEUv?=
 =?utf-8?B?d2kvcEdFSW9ITUpkOFlKNmtWck50R3FKZ3BtTkg5c0YwRlFMalkyVWUvQkRD?=
 =?utf-8?B?UkN5WlorVWR5cXRFeldUdy9WcDQ3ekNzWnRwZ2NwY3d1MmEyQzh1bUlOeE1P?=
 =?utf-8?B?Z2tjczU0NnlYTFZKOW5FTmRFN2ZzZ2gwMXUzS0Q0dVA0SWl5N1NVdGEzWXc0?=
 =?utf-8?B?UjdQVlVrZ3kxN2JIZDIwL3Y1WFQxdVkyeFdVR2J0c28wR0tyQ0ZieHNVU0VT?=
 =?utf-8?B?c0gxenRLRmVRY01nS1F4NUxwaFNHaHhYUmdJQ2V2YzJITlZFc0phVE13K3Vp?=
 =?utf-8?B?My9QbndFMlA1d25TSnk4clBTZFFLSEEybFVOY3FJOUxxekVoY3ptVzY5U045?=
 =?utf-8?B?SE9qVjltYVRycTBBMlhaRzN0dHFid3JOVDN0VHhINkZSVmZXT0tTNTlhMUt4?=
 =?utf-8?B?Z2VQMU5uQnMzTU9weGQ5bzFSSm1qQU9uSDJFK1FXYWdUYzZzVHdQdnFrSDNj?=
 =?utf-8?B?OUJQVFRaV3N3UVZNd3BpTW1LZ3NOT0hJaWQ0NDhjK3k5d3MxRnlCdHV6Tjgr?=
 =?utf-8?B?VzRaK21Qa25Xbks5K2Y5L3ltdnp1ZXc5bGRKYmJ2RGJnRElDNndnYlliclJR?=
 =?utf-8?B?amlaajdLWHBTWVpvU09lbExhaDI5MWxuUXR3OE9LL1lHQkxVZW0wZnlDajNl?=
 =?utf-8?B?M0tLdmJnczdjVFZWSHovWGZuWGFPcFRuSXdrYUtWTTQ1aE82V20zZWlIamhP?=
 =?utf-8?B?cUVHMHhYSkY3emU4dkVHa3Y1TGhxWGdDYmlRZFZab01YTm5IOXBudEpKUFdC?=
 =?utf-8?B?Qm5tVU9UdStZZUVvUUhCNjFtTFlucjQydmdwMy9pVGd2dXl3UFdod01vLzkx?=
 =?utf-8?B?R05ERHVLSmp3N2ZSZFJEVFVsSzhjS1drWUhlWVVpdG5nMjg3YnM0T1YzNE5K?=
 =?utf-8?B?c1Y2L3JLb2dtMmxGNkt0bGV1SUpRNGI2V2VScFZKMERRcjJaeFRsV2s4UjJB?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcfffa9f-cb53-48c0-c547-08dc8a424210
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 18:13:56.2232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pua7YUMSvWI2/4H413vIPHBsq4dYgkVhb3TH/rMLck54XqnChVL9/KPGU1zc/hZDolS4TVslS2FpL7LFE16qFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718129642; x=1749665642;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=62DLdMloZ5Rb/nd9iawCa4aR9MiQLCC3A0v6R9Y2uFs=;
 b=i04zvocOTx4Z5LplDV9wnL13K2+rqoAE3vWZf/3DobwC52T9PC3tBBy3
 xFiiJXUUwE4MB/q9yODegmrZmClxrYUWyS6cyJtSA7qH94h08alRdi0qr
 i1H+Y90TlEMXCaVXAYXuwfoCjnv+sk771E8tfUpIWr4UAik06ivTMg+f/
 IjI+aMZMfAdIltBSbm2JdqoPJ7bCSMsEU9r8Dl1UBkCybXaSxTRtJ+bS8
 naytKttndI0kPtSVAXemBUK9Ip+B4U4AOAUzMogOC7vjT+XJhtNdz+5wR
 vHvlSGs8Rl2KWap8xxcuCLo0gUxCHIu00P3TwxeTqVBv5NDK2wnMMjXBa
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i04zvocO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Sridhar
 Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/11/2024 3:44 AM, Alexander Lobakin wrote:
> From: David Decotigny <ddecotig@gmail.com>
> Date: Tue, 4 Jun 2024 16:34:48 -0700
> 
>>
>>
>> On 6/3/2024 11:47 AM, Joshua Hay wrote:
>>>
>>> There are several reasons for a TX completion to take longer than usual
>>> to be written back by HW. For example, the completion for a packet that
>>> misses a rule will have increased latency. The side effect of these
>>> variable latencies for any given packet is out of order completions. The
>>> stack sends packet X and Y. If packet X takes longer because of the rule
>>> miss in the example above, but packet Y hits, it can go on the wire
>>> immediately. Which also means it can be completed first.  The driver
>>> will then receive a completion for packet Y before packet X.  The driver
>>> will stash the buffers for packet X in a hash table to allow the tx send
>>> queue descriptors for both packet X and Y to be reused. The driver will
>>> receive the completion for packet X sometime later and have to search
>>> the hash table for the associated packet.
>>>
>>> The driver cleans packets directly on the ring first, i.e. not out of
>>> order completions since they are to some extent considered "slow(er)
>>> path". However, certain workloads can increase the frequency of out of
>>> order completions thus introducing even more latency into the cleaning
>>> path. Bump up the timeout value to account for these workloads.
>>>
>>> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
>>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>
>> We tested this patch with our intensive high-performance workloads that
>> have been able to reproduce the issue, and it was sufficient to avoid tx
>> timeouts. We also noticed that these longer timeouts are not unusual in
>> the smartnic space: we see 100s or 50s timeouts for a few NICs, and
> 
> Example?
> 
>> other NICs receive this timeout as a hint from the fw.
>>
>> Reviewed-by: David Decotigny <ddecotig@google.com>
> 
> We either need to teach watchdog core to account OOOs or there's
> something really wrong in the driver. For example, how can we then
> distinguish if > 5 sec delay happened just due to an OOO or due to that
> something went bad with the HW?
> 
> Note that there are several patches fixing Tx (incl. timeouts) in my
> tree, including yours (Joshua's) which you somehow didn't send yet ._.
> Maybe start from them first?

I believe it was you who specifically asked our team to defer pushing 
any upstream patches while you were working on the XDP series "to avoid 
having to rebase", which was a reasonable request at the time. We also 
had no reason to believe the existing upstream idpf implementation was 
experiencing timeouts (it is being tested by numerous validation teams). 
So there was no urgency to get those patches upstream. Which patches in 
your tree do you believe fix specific timeout situations? It appears you 
pulled in some of the changes from the out-of-tree driver, but those 
were all enhancements. It wasn't until the workload that David mentioned 
was run on the current driver that we had any indication there were 
timeout issues.

> 
> I don't buy 30 seconds, at least for now. Maybe I'm missing something.
> 
> Nacked-by: Alexander Lobakin <aleksander.lobakin@intel.com>


In the process of debugging the newly discovered timeout, our 
architecture team made it clear that 5 seconds is too low for this type 
of device, with a non deterministic pipeline where packets can take a 
number of exception/slow paths. Admittedly, we don't know the exact 
number, so the solution for the time being was to bump it up with a 
comfortable buffer. As we tune things and debug with various workloads, 
we can bring it back down. As David mentioned, there is precedent for an 
extended timeout for smartnics. Why is it suddenly unacceptable for 
Intel's device?

> 
> Thanks,
> Olek

Thanks,
Josh
