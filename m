Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCYMO5zIxGnO3gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:48:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD832F7E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:48:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3AF3408E8;
	Thu, 26 Mar 2026 05:48:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDYgYP_YIYkp; Thu, 26 Mar 2026 05:48:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5336740910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774504090;
	bh=iT1gKWgABM+JOF8jOqVHcUZYbTAA1ZJlbpNeN4Mnkcw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QD02ePciqorsehn3tXOQgi7T4d9wXJzgaLG3vDfVqOfh9vhjr4iRfGbG8qODLChoM
	 gbZwf+UgekJKDAzFPUOjnsURcnoMYiNgg0/s7iM7LiM+a/M3QQ6bHxZbG9rSXzmvBI
	 ZNn7PxbsKMZgNRH87zYj/JAGNFrowmVH6nLUJ2sEHukcirbCpi6CMx+fbF8etbV5n/
	 1tX1D/MuOWR8ngxjqoCqSQz07e8lCdOJ0mAmR5AeKirtqNODki/4t0KH2L2qpXoqwo
	 U+1bmSEzpBwtwEo/ZlSj5LMU1I59CNiEGhHItP/UbzTLFi8v/X6+Q/qDn6OAbh9NF4
	 rlrPbyuJ6stgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5336740910;
	Thu, 26 Mar 2026 05:48:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D371F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F2DA4089A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:48:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B5Ihm1i0nl5K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 05:48:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 328AA40895
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 328AA40895
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 328AA40895
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:48:07 +0000 (UTC)
X-CSE-ConnectionGUID: L9BSgz3/TDmY26wOFW2SCQ==
X-CSE-MsgGUID: pYbSPU+9S2qmPI7qYZz1UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="93132747"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="93132747"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 22:48:06 -0700
X-CSE-ConnectionGUID: DJ9q3WoDRfah4kyYzGlz0g==
X-CSE-MsgGUID: 7NOVffPOSxig6dwakmDA8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="225154755"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 22:48:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 22:48:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 22:48:05 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 22:48:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BMBgc1w9NfB/JkarTtbqdxQ46+lvLa8Us6srWEc8gE8+E3TfsYZ+KTpKSmbtMUK56jHUNffBGxPeHkA/M+BrsAWpeG6/dig5wCyrJ/y7iViPBSiUt2IcggmRbpBoNVhrveHM/e7WZMOrZVDPzJU7l69nlU0qGx3gIcHuyFW/feSUL3YZbGAQj4huQ3JMwsngrjGll21nUar/WL6IBCgVmJPmVkn/EGZDGz8Jm8YglvKIOrs/d64chyebxe8jqv8wVPg0Q0lWRX06mXbnqEV9IsT6jJ0wpsgEsDCf6uTv89bIXjAg0cWUSImO4rTmmjqEaElvaOYUw1cx77hV2Y62oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iT1gKWgABM+JOF8jOqVHcUZYbTAA1ZJlbpNeN4Mnkcw=;
 b=ILAzUOxfRstzJhYuj90QwbLXTMJ8w08jp7mttMVL7XuxWpnzJ6HWptFP/pLBjuJ+RZhPD/HytOCbwMujmxs1xLuRHiih/2eIq2n0Jpbe/hlVq5hc9/eXjTCJsSnC/7PJuECfX+O2SMhAUBpwrIJQnFFWhVWkDeMlpLyLxbIcmFtU5ftaY9xVm7FidED4SaSIAogOW7U9lxOW2BWW2mgoJo7/FHXEEoi91wjMxp3czG30aqQbMAhTm9K32SQR8fNdQ1EnzaHu+065/LkPga0DY95CntVp0k8HSU9RcRWtiuRJI4wjYy7hVC31+yOqhGuxOkT9FEafVz33LAa+XF3DRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 26 Mar
 2026 05:47:57 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 05:47:57 +0000
Message-ID: <4972e037-5465-4ecf-8894-e8b77f964bd2@intel.com>
Date: Thu, 26 Mar 2026 06:47:52 +0100
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Jiri Pirko <jiri@resnulli.us>
CC: Jakub Kicinski <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
 <IA3PR11MB8986E7BC738215D7C5069556E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <fe8ba892-e8c2-49f1-b7ef-06f4acdcc946@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <fe8ba892-e8c2-49f1-b7ef-06f4acdcc946@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0294.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8551:EE_
X-MS-Office365-Filtering-Correlation-Id: 2be4396b-8cae-4069-74be-08de8afb3b64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: MPqAct1nInAi4kQypwvl6XN7xIb7t2yQdFpvGp0+gMpbxUo3LBrqrth1y9KPB7o3Sxxj2fc0M7Eiofmq8kXjSVQMm0uiZ/4kbvXm18la8ILWy9GFAUajzUvFTT/ff24t3sTGZKV3DlvGUWBSbCgz1j7e8rLQnnc4wNbiZ27824RL+tdPPSvLbja3eui6sYynMvrIHWWQGUgIgjpK3SGZFt4dKT7Tmv1XUooAiHnup4T3YByRvv1DoaQ7t3G0e9zhYWlJWCmx1YcmPIp1UJoqRCeXVTzNlgkP42VNuY05FRind/4SJ7qBljT9Mb6e9OspArklbmmYz33pL0oSGijA+MkBmQhcjydcC0XJyMZnNuCfUrxx/sLzcyehr/oUs2sFADfIQ3S7ecm6w61G/BLbgSpo4QjSd04RnsPV2D8xoMiMxexs9ffrpE7mdr4pxKDKZOyvZbndEC/soxxzjlxsBO1bLASAX7k/RKoGvCom9SbDMY5zlvCytBNWieckUMjtGflBYCopQhP6zZoW3XkDdht1/gj2rhNJd/SdcjbjZRBFNGjGza2KQCbI8hIjot/DL/nRh+Z1C7aJLU3I97QzzxsPG7Qm3yFTZCBzsBhRQrqTMIRaWOG/I93msQyiGvuMYKFaHSxD/1PV2mOITHbUIre2xJc4y0gR1Znd+Ll21cSvOpIQmj7yFcAhiW/25vc56Kd+ICvFpQStX3nW7wPXHEj8OEi87F07DWFiNzksqRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TktzbEh5QjJHUi9oTlZhT2lpeGY2a0ZhaVR4MW4vQlRCTExiQ0VuTTlkMms0?=
 =?utf-8?B?cFM3OGQwdGZOeGRUcnZZQXlOM0hwOElGcG00V1FGN1hySlpuYkU0L1ZnTmE0?=
 =?utf-8?B?QXVpVDNhUWU4RVZKTHlDSVNreEZVUlkwQjFNVWtmVi9BcUFzcGVJK1RsUWlH?=
 =?utf-8?B?VUNaVS9lUCthSlpQRjNjY21aWklEb2UyWWV3enFDYVc4VXJWeW9XZGZEZHJL?=
 =?utf-8?B?Qmt3Qk9oYkhVRk5JUkFRZStwa2tmVDVpQlJGUGl3bGRDbWZxS2J0VlY4QXlU?=
 =?utf-8?B?NkF3WEpCWVYyZ1ZsZUFxOGdzQ2FReGtWSFFhM3pYdnR1ZGJnM2FGWEFWblRS?=
 =?utf-8?B?a2RLQU4wMXh1OU9qY2ZUc1NSUElPRjZwZmtJWXV6cGI0RVpKcnRTemFFRXVj?=
 =?utf-8?B?SDBQSFdHN213UWZhMHI2cEVNbVZGaXg2OTBpUTczQkhDZUdiakRRajZNMm1U?=
 =?utf-8?B?Vnk1YXYyUmEreGFXd2NUUVNDOE1RZTNiSFZTa3Q5YVNHa0RqM0tIUWlnNWQx?=
 =?utf-8?B?andpQ2tNWGVudXdHdU50UUpZTk5aUmZyWnlBeTJ5eHBtS3ZIeU5FYWJDSTFX?=
 =?utf-8?B?V2xBLzcwc2dDWlptK3d2RnZTaEl2YWI1UFdhZkE4MFhRQVdHT3ZGdkNPY3dt?=
 =?utf-8?B?TEpkYTBSak5zSWQwMlFWWGwwU2IyL2x4am9rTnFlUDZkYjJJdzNXdlFBZnFu?=
 =?utf-8?B?VXlLekI5U3RQTWM0d0hyS2dIZzdyQXpJMzlsU0hlOFMxd3diUW1zRDlKamMz?=
 =?utf-8?B?RWVRcTZVWUczSnYxaFZhb2pudFZjazJ5VFRXdzdObk8zZlljcHZhNlp4eGU5?=
 =?utf-8?B?VDBabVZEM3hhVC8wQVAvTVcyYmcwemJINTUza3hNWXVzRVI5NktpRmsyUzJU?=
 =?utf-8?B?MFpjc1BPU0VGNlpOUmN6ZGNvZ01vNU1NRnpMaHFOU1pQTVJPYVZKYkRMbFJC?=
 =?utf-8?B?OTNBQUlzdzNpSTlWMzJadDRsQXBIV0ZEV0diZytZelBTZlJTMkc0dUM3ZTFx?=
 =?utf-8?B?L0FyY2FKQTBpWFgxeDZ5ZTI3NXF2eHBtelNHZllYODBRbFBRN0krd2tPdVRi?=
 =?utf-8?B?R1k0YmJSeGZaMkJNVi9jQWNhVFliYWRZMXAzRk1FeVVlR1F5ZldwNlpsQjJj?=
 =?utf-8?B?d0V0U2NxNnJ4UmVHL1RNR3NZd2t0NlU0c2NybERmRGxFdDNaR2NYd1F6T3pa?=
 =?utf-8?B?V0NQSk5nMFpVOCtkb2kzZXNMbXBzWmY1ZTNjTFpGcEErTzJWUXpkeFJNUjhW?=
 =?utf-8?B?SWhtMDBYVGlnQnZPRC9DLzkwWEx4Q21qVERGeEQ3WjdJdjc0Wk1reldLdzZV?=
 =?utf-8?B?blI4S1EwZzNFWUVlK1hHa05HTFZKc1p6OEhvTVpENUFKVzJWdFlwNU5wdEw0?=
 =?utf-8?B?aExKcEpablVhK0w1UGd4WFhsVktBTlkwUEx6OGhYZ0R0dlFVMUhSZGZUMlNT?=
 =?utf-8?B?R1V1VjV2cWJlVGM5Qk0xciswSmNVbTNuWk51ek01aWdaOHhiR3YrNjJ4Qkts?=
 =?utf-8?B?cjU5cWZCQW1Gb1hqMVh3OGFka016b0htUkNhK2lrUjVWSHdvYTZkeUptTmdz?=
 =?utf-8?B?T0JnVDRFYnQ4YTdHWkJkUk5KRks0MXFRMEo5Z3lGQllmdVhXSForbjJMVTh0?=
 =?utf-8?B?cXdZYVNKa2NqZ093alUrMmpTYmVGZ3dvTlNvYnFhMjlmRVNSSkVweTcyOWx0?=
 =?utf-8?B?OHQxN05XT3ZjczdMY1ZLSEVSaHNHdUdrVXZzVmsyc0xkU2JvWnBhNkNxdXNC?=
 =?utf-8?B?bDliS0lZZ1F1QUhqL2pFb2lRNndEWGtZbnpncUxpakxib1VWN2NVandvTEk4?=
 =?utf-8?B?MmpCNnUzdnBwc0Rwc0NqbHJTYWVlUUlTU0JJQnoyejRpZ2pKdFVCT29odmly?=
 =?utf-8?B?dVJuRXRDME54eDAyVkhuQVJYKy9HS3BtbkgvUWlFNHVzdXZ1ZXpCWmMvZmdw?=
 =?utf-8?B?Nk01UVF5YVV1eEdIRUpWS2ZOQUtQU1ZnOUU0dzd0V204R09nc1UzV0Z5TUFW?=
 =?utf-8?B?dDZ1OU81MUVpTVZ2SVFoVDcvNlEySTdiZW1QbTZCOHFveTQyWlhCKzdEa1Bi?=
 =?utf-8?B?aWZ4UEViblNMSG1SZzZrY2oyZytlNlJDWTYyLzJnVkRaWjc1VS9Wb0NrRkUy?=
 =?utf-8?B?dytvUzZjZVZ0RVRDd3paemcraEs1TkpkdU1wUjVvalhtNk1ZSVJDbjhMbmJE?=
 =?utf-8?B?ZitFcVd6Y1pDcGN1UVVYN09uUndYc1g1RndCOHFNdERDTEVtU2E2cUNoL3NN?=
 =?utf-8?B?em1oWGhhN092VkVrekt4KzZKQ0c4UW0zMnhJMllaRUlGQXlMdUU4SVFZVnJk?=
 =?utf-8?B?cHVjbnFmdGFaK1I1Mi9jZTlpdjdhaHQ5Sk1ua2RwVFJ2THlKbzdpOG1XYnBK?=
 =?utf-8?Q?SSZQ+wmp4xsOL8Nw=3D?=
X-Exchange-RoutingPolicyChecked: N97LQWHiMbJKVYNHpZJDg8M9H0oX3DkbGMSNwBv00XIKo4n3QRd8Z7DfL5clR9ZbqCjpll3oMRME6eMaamYiLv0tYFWVQtPQGW1SvDYxqfXnDzy+7jfsmtzxz2VyfkJj7ttQIyUmtGHlEKOrfkoQD7Lt/SAuJed571WomrIg52E2ok5BZqoFTa537NL6931Zvqq86i26T6OfazOJ5r6ba12wds6RItIZqECJzblbW4n9ysDsgxpuhaoQfUAb/9ZCYeVcceuhZYwvSlhva4TDp3sGtypjiQoARx9Bh0c7iojzsF8+9iMtapfu2jvJVbb3O6CXF0aRA1UtPzTo+dBY4w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2be4396b-8cae-4069-74be-08de8afb3b64
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 05:47:57.3411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ox8wHJnBmT9N1jehZdNKapNJewXtTd//7KVDk8PUd0y+j3UJqEVfiiE/P++WHjIFUP3x2rHmgB0lClTF3ee9gQXTSDoObtbkYrzKA5HJVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774504087; x=1806040087;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tD8kuXWf2YHcFxJROqC8pKxYoD/n2QwiWoeSKOSyz64=;
 b=g9i0Gzzxd2eEM2EXoHNWmKljARKB2dib4u0tbcW8Ic76dvb9yQtJKcNQ
 tFyKZPdgEZTFatIlUunzHxxz2suK8BRwdEUvwmh1pw2mfJt5z2r1mT5fC
 wQExR99Hydz429rc+bnCOSXh2ufLT2/zeySC5VtY/fUKhRedXnq83u8Yd
 y6QeJP0tVqI3YImBN0zsNnAAxfHO8Sgz/kJ0Unk62B8SwgCb7lx01XJjU
 EtQ+RSv3GhSoO21nh8kpf5mK1CSbEsvhEC0W33raICD5SQ+AExY4WmUmb
 8i3383NGYeaSpDezDSSAEwQR0xaY4+3rISjNlDhNRhdQieRUSReFEBNr7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g9i0Gzzx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:jiri@resnulli.us,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 42BD832F7E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


>>>
>>>   struct devlink *priv_to_devlink(void *priv) diff --git
>> I'm worried about priv_to_devlink(), if someone passes the result of devlink_priv(shared_dl) as priv,
>> container_of computes garbage - because the pointer came from shd->priv, NOT from &devlink->priv.
>>
> 
> There's no good way to detect that inside the priv_to_devlink either,
> since it can't know which private pointer it is looking at. Hmm.

We could achieve that by adding a marker prior to priv data, in the same
layout for both structs. I have code handy, will post v3 later to don't
spam too much (and hopefully resolve discussion on the other patch)

@Jiri, I will not add your RB, as this would be significant change

thanks a lot for reviewing so far to all of you
