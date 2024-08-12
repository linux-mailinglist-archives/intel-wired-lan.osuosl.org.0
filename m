Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0920D94E844
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 10:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EB9180C35;
	Mon, 12 Aug 2024 08:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oa1XC182MnYD; Mon, 12 Aug 2024 08:09:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94B2380B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723450198;
	bh=xYsIpYvchuajU+x3gYrf76PWI/r32YWtz5BT2P4lwiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iooEXKjrJZ59zppnqkjPsdOnYWXnb8qv8bRR+FkByLkHyLD+R5CQq0stELBsBSFr5
	 Eu0InDYZmwL9btfJtbrY+HkeG4oDCgetH32/avTBx8FvgsZCdBywKWxXBajCFdhxo8
	 Oau1KqvqLkDQyuKp3oAgkvosOlS69PkbCpZdIYXIGThoUXwyUwQ1eIe8rFDilSFo63
	 LPDdpW3w/vzQk5rXDyGmkSv9mOu0a9B7IlYRRNYB8YEHyRJN72daK/t8fpA0pi6d8E
	 QP8g5b/xzYFIWbteeCk/m/EAgYyV4SPChH85ngxb+3CgKMzn/7RUKIUeN5IFckYtZp
	 fDJspuGg9UGew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94B2380B0F;
	Mon, 12 Aug 2024 08:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 111841BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 08:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F056A80AF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 08:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WtThId07pqhm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 08:09:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 20A6E80AF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20A6E80AF1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20A6E80AF1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 08:09:55 +0000 (UTC)
X-CSE-ConnectionGUID: dBAOz8/gQgGp87Hhmu7P+A==
X-CSE-MsgGUID: 3t87BkuPS8mFayliJyngNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="25315044"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="25315044"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 01:09:46 -0700
X-CSE-ConnectionGUID: SC6DkgKlTQ2BSxVHmcECNw==
X-CSE-MsgGUID: gmKH3cqaRA+AE7uaECEsJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="58088354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 01:09:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 01:09:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 01:09:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 01:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pmNjqdIRTI2GNBN9GHo09IoVlBjczdNeo1vK+/MK8AH8hlria+lhebU+PPcZrl0Rii31dmuyC+lf8+1GMlLAZd+yFN0DXu3mDAIr3FX3ZdVPmSrYEzv3mjzieZwqNNOcf3vm1DD0r+ryzFM529GyNqeWO6XQV166oJKclpKlcy5IBkrVNXyLKq7Ox9XEHcSgF2HB4UrQMGOYcS64EykhY6I8roB9k+rK4T1pCeEpXYI4t2Os0PXe3XPJNzvDZWJMu//NT9ZI7QtPDSERXrsDZV+lLRNiCt1Y3ld/dHcL1eQwq/ApYf8rW/ZPHZAjy5EDG8HDS0t7pyhrtwdps6diTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYsIpYvchuajU+x3gYrf76PWI/r32YWtz5BT2P4lwiU=;
 b=EX5KER+j4f8o1z43PzhjHQwQrlHK+Z8leY5qOT/PZg+4N1IEuQEgklD+t0Btt2LCb4aeHsp4yNspH3pxgJbi0ifQ3SMw1Tl7cTfh7of+XeuUsiME9UtoPRbY973nyEDil07iHkuTQdlyrDu0pyQFxL763+W99spWR7PURx/TevacAbzZZh4lgImmBtWV1uWd+QmzBa7gwJbzUys5562KmE0tS+4Ks44sQMkJ5G8ks3sn3fDsaC8ybd60EZEO++SzeVznnJ+bXkbcXqZ4bcpKNLg+KSJqVEuxZACq/atN/Ytvj1Iy04UEvYLh6qOrHcK2jtXl6D5W89CFTN/zd8c4Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Mon, 12 Aug
 2024 08:09:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7828.023; Mon, 12 Aug 2024
 08:09:42 +0000
Message-ID: <4e3602d2-6c6e-4311-b4fc-b3f8e2ce4da5@intel.com>
Date: Mon, 12 Aug 2024 10:09:37 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20240808112217.3560733-1-aleksandr.loktionov@intel.com>
 <20240809152549.GB1951@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240809152549.GB1951@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0009.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:2::6)
 To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB7184:EE_
X-MS-Office365-Filtering-Correlation-Id: 735709dc-af46-48e6-ad60-08dcbaa61eea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dThKZmRlM0xEV0Y4K0J6RkdoTTg1MzBDaUlBVzlHaDk5TEJXM0VZV0w4Q1NI?=
 =?utf-8?B?WU4vNWpvbXNLNnRicmdKeXVPZHRwc1g0VXRxaVJUOS91Mkp2RVBvTlR4VDNY?=
 =?utf-8?B?TXZqdE9RWEFnNlFyTE51U3hFRFB2RHBkbi9nQ1pnZ0I2VkhXMEJBOGxtN0p0?=
 =?utf-8?B?R0ZtNmc3UXJLdi8rY2lOeWVUZkIzcXZ6TkR0bXZJNGp5WjJWSG5SOGZmL040?=
 =?utf-8?B?QXZHbUZ2NVZyZm55NEplamJlSUJyUmpUcXBWY3p4dlMxZEE5RTVxVHJRMFo2?=
 =?utf-8?B?NHdpT0FUelJCMGQ3cUVnS1JaVTdxbkp1Sy9VbWRlMVdmcitpWC8wKzM0U1RB?=
 =?utf-8?B?ckZjcW1kQjJBWmFoUER4TDY2UVdUeFh5OU96enRXWCsrM0NqQzRQOVNKNXdZ?=
 =?utf-8?B?anFQakpOTkVtR0NJaUdMaElnWUQ1a0RIS0NBY2tiMUJ3VU1yb2xmRTVVQmdE?=
 =?utf-8?B?Y2JTWXc5WVkrOE56WkNkMkI4cXJjWjJYN0gydlR5WlFwY0l5L290THVlcDBW?=
 =?utf-8?B?cG1sQ3RJRVJJQnRVdXgwZ2I5MEpRVVRpeURIK1NLQ1YyOWJuVVhVa3pHTzFV?=
 =?utf-8?B?NGdDS1JtR2FjejJNRTgrR3dHeTJ5blpzOW0xT2tGRjhVd1RrNGh5R1VFSC9H?=
 =?utf-8?B?elFHSWNOSVVLZ2RFRm1HWVVraFB1azNTRzZkMFpwZDcrYkZycWtMR3lobVFN?=
 =?utf-8?B?QUVXOWNwQ2h6OGd0akd0TExxRHIxWUVLSjJpejE4dlZWeHRtcFBHTExTeGZK?=
 =?utf-8?B?eEUvdnpRdExhWE92Y2pjeHdQYjZKSGdtdy9OY01MTGpseE1QTTV4TzI5NU9j?=
 =?utf-8?B?cStnOW5vZzFVRU85SkYxb0ZYS3NvTkRPRmFnemg2SzNLUC9VdnVKUm9jWjFR?=
 =?utf-8?B?QkswUitLTC92Z0VNWldGRlZkeTFNdTVZM0FPNkNpYUJNTXlDSGhwYlFHRENG?=
 =?utf-8?B?ZlpBUnlrVWxvdC9aK3R6T1A5QWs1MTdFcWE3L0Q3MkVLRTBjMVUyUTNFZTY1?=
 =?utf-8?B?YWdBeFFZSkkya1pTb3ZiNGFHM1hjNllsOE1pLzZUUTY2N040aGtzL3I2VGRI?=
 =?utf-8?B?QzJDeTcrSldOd2paNWg5L01BZkswV2xSa1duMFZxUFpDTzVvNXVlV0hhU01K?=
 =?utf-8?B?QkhrQTBCVlNTQlNQZkYwaVFmbTRxdmxFMFB3Y1lYeE1XWEljV2hKaDMyZWZQ?=
 =?utf-8?B?djQrWU9vQVZTSHBzK25pRitXSVV2VjRidFMva0JWZzlZbVVnT0pCQ0JvVENE?=
 =?utf-8?B?eE1MQ3BPai9QSWU1NjY0aEtVV2pPbDRoc0RFdzBDMnBXZ0Q5RGQ0MEY3MFhV?=
 =?utf-8?B?YVdQZ3JoN1NtWlFvSGt2SDcvVU1SampIR09FK1NKcXQ0VTNTL3B3VkM1a3ZX?=
 =?utf-8?B?NXhmQzRJeFhUR0N0Q1ZCUzRYN0pIZWU1YzBSdUFvTVJONmE1WEJGU2JWd1Bw?=
 =?utf-8?B?cnNrS1FLMDlsdDhpWFhHTTFsajVhaklxYzJPWTc5MWFkYm1BS2FlelV0SS84?=
 =?utf-8?B?S053ckJwM09QN1JLS0YvcFVFeXdmQUsvclBmNWhMRFFkTHV0R3RtODd2RVVz?=
 =?utf-8?B?Z3k3ZEhMa1dlNEZqeG9IcnM5MkNMNHA4TEZTUy9MYU1CcnEvTHRqZWhWckZ2?=
 =?utf-8?B?bnlUQ2lSVytZZThlWDd0Q1ZyUytJZldpZmx0RUU5RUdWZC9WOFhoOWJMSE9s?=
 =?utf-8?B?dmh5T2FldVYwZUxEcTJtSjFSUXVjL1JQL1llUTlBd0J6eXZ0SjU4MVdnMTNq?=
 =?utf-8?B?TGZ5UGJnVVJhVE1EeDVnb1YyV3dyWklUSnMzSmlBemZmSnYvVVVxVlRSamZF?=
 =?utf-8?B?VU9veW1yM3EzeUVqd0ZwZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d29lL3BJQXpkUjNuNisycHM4ZzN0WHVSNkxmclk1OGs1LzY2WFl6Qy9jUDJD?=
 =?utf-8?B?ZW5xMEJ3MlBlTUZsK2FmWC9OcXFaR01CZTU1WXZQUkNUWkdaRTd6aElxaHdm?=
 =?utf-8?B?M2ZWU3NkbXN6d1huY2JuT3ZyTVQyRHJXU0xKbXV2cnpXS0dQdFdSQkkrUVVI?=
 =?utf-8?B?NTQ4Lzg1cFc2WUJzczVDSStrTmdPY2ZKL2d2ejJCb092dWhwbzY4ZklhWDZM?=
 =?utf-8?B?YzY0a2tCbWZxcTgxQkpVWTc3VDZUS3FHaDhYZjBtdjM5TDgzSExsZmNQMklP?=
 =?utf-8?B?MitsNlhQSTYxSzcxUnhrZDRFQTVHM3VRc2FCTkJnV3lWVlZqN2ZreGdJN0FC?=
 =?utf-8?B?SkRZbVB4MndYNGN1L2Y4RCtYVDgwaTRxaWpWQmpESzV2MDdoUGdVeGRuNHhh?=
 =?utf-8?B?K1BiWk5OZ1YxN1Qxd0lQajBENjVPK1hIVXlidDRCeUdqa0I0MVNYZy9UT3Bk?=
 =?utf-8?B?QUNIWG1DR1FneHlYRjhrckZWUzBubFZIN3FWd2o1Zks4MEJjbG4vWDZYUGQ5?=
 =?utf-8?B?SkVxWXg2R24wTVZoZjBLQmxOd2pSSjYrWm91eWxTZXRSNmxNOGdsejVOaUxM?=
 =?utf-8?B?K1RpR0JMbi9vLzRVcnRBZzlPQjZHc2E3ZWxob3NYUVBMbUNhYjdVNGtmaTZp?=
 =?utf-8?B?L3ltMFAvVFc2OSt4U09kRWN6Y1phNjhJbS9WWTVXaDJKWTB3SmRHaEgxdkti?=
 =?utf-8?B?TFFuVy8zZ0g4TWFnZXJDSXJZSXBRdnZTc0JGWCtlVVdwQTFXNk1GOHR5UTFJ?=
 =?utf-8?B?bmNoR0lUUkxXOTJUcXJEM3hhdEFGL2ZwRHNrWGxHc040ZktoemVRVk9GTUk4?=
 =?utf-8?B?QlhhOTIrckdJc1llSGtlOWYvR2h3NXBOd0M2MjBnZmdrQThjSkZIVFhGV0NK?=
 =?utf-8?B?ZHhielRLVHdnWDhMYzdGT2R4OENTU0pKME1rem1ybE83aUpndVE5cW5LRmRu?=
 =?utf-8?B?WDV3UnlUeWlRaXpVMGpKQUZjVFZwTDlHL3Rna0FHUUI2QkVGTlBXc0hMQmdK?=
 =?utf-8?B?V3c4UVgxc3k4c0RFMjUzNlRQYUV2VWJobXp3M3dkN0plWHBZYzF2T05tK3N6?=
 =?utf-8?B?ZDVYZ0pLUFhWUWpaR3pWWjlwVVNaMFpROVZsMUE0ZlZXaC8rWkVJRmJKNjQ3?=
 =?utf-8?B?Mi9TSkJMalU2S29TOVFORmFUWnpUY2hxNHdVWE13SUREc2cxN1F3eXVxTW84?=
 =?utf-8?B?UUd0bDRYclQ4Um4wRUpneEZpVWpRTmxOd1JmdTZpdVpzQmZNT0JRTUU5SUs1?=
 =?utf-8?B?K2drYjVVS0p4WXpVM1Q4NFF2bEdjNzJCMldpc0NGMTU5UGFoVXlsNGpzVkh2?=
 =?utf-8?B?aUQweWFPQlJmMjRlQkhYWFNkWjNEalh4U3dhK0NTUXJoYUVLRktxMjE0bHQy?=
 =?utf-8?B?cVZHQ1drc1FSY0ZTYWtyRElVOXZvaGxlTkpNS1lPZFB0ZS90N3NSeVFVRnI2?=
 =?utf-8?B?NG9nWTNCYVQrMzlPMWNsRHZETlpCVmt1Y0wzTm1wVGhiY0VPR1VwV0JSZEc0?=
 =?utf-8?B?RWgvd0l3WURVMTY5Mjk2eSs5eVdMV0dpd0N5dnUySGVZTlFwMTdpUVBGc29j?=
 =?utf-8?B?NkNYeFE1bG5yb1gwaVRNdVEvYm1DQng3ZlR0dW9vNjF6SG1lOERiOC9yT01a?=
 =?utf-8?B?bVhwbGNGT1J6bXl2WjBjMHJISnE4b1l4RWVLNzRGV0VUVWJ0UFpGazVHN1Fq?=
 =?utf-8?B?dWtNc0NETzRmTkN2RGpzRW5FL1JUZVFGVFBvUnZKbHhGMU5hVXY2dnNtdkRL?=
 =?utf-8?B?dTl1dFNqd2dUcnJOUlkzL0RXc3hZcnBuSDB2ZVRMQUtnNEpLYzVuKy9oTWx3?=
 =?utf-8?B?Q002SWdVMG1YdHF2N2dRZWpLdXZPbFpMUXN1eDFaRnpQVmYvalpVMUxCVHpD?=
 =?utf-8?B?V0hpZGh1cXpDZEM4SG16RXZWUXJnUFdmVnRhNHpIeStQelJrRHkzdDF2RmlD?=
 =?utf-8?B?MVN1Tlord3lBLzFsN29WMnpIQTVBU0lxUWMvMFBSMXozMENONklxdUQzbmlX?=
 =?utf-8?B?bzdDUkVzRmhwajJLOEJXbkp0UHQycDlhcGpqWnFDcmFDQnZmK2ZlV3ZKWUpS?=
 =?utf-8?B?RjAxVmhEVCtWdDJkSytWcmc3Yjd2dE9MSDJ5dU9XN3FBc1NvRHVMVEJGUzM2?=
 =?utf-8?B?WGI2S0dBNkFZdmUyQUxZbmxJdHNHSmFpQ0VXZzFrb1hyTS9GZU9ETVoxWlZ2?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 735709dc-af46-48e6-ad60-08dcbaa61eea
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 08:09:42.6748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfvhuZRGo7+Tgn6DLYzHjB5WEh3kh/5prTB5spV1r7v1EO5tNd+A795pcyRbryyw31Gh9RNZ9qQItHkfZumRDf837GIP8Gd0AA2h6zHpyPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723450196; x=1754986196;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fJeQBU05iy66OVzFjw2kNXGy6Lm5xXNyQB+IGoiMDYg=;
 b=ZPa6QvvASxpVt9AVKPAURAJKBfaFAaGVxA4uGt1jad48xMgkF8ef/jcx
 NgsL4fp122xfMz3MGuDjlpIxnxxM6Tl/t7hqeIxOG1gjv7ME7rMmUtTho
 boNosN1qq+7Fo3AMG93HVxpMeZKh05AwZNrhgT7yPC5Zqxlg+zAXumB3d
 tN5s4jdH/yYvbh41VzO1mlLT7iOXbzBzvxVcAcj6QJSi1WLy++V20s+QI
 XXpmDHksbbHIVVquv5CHVKdHyGPkk1T1OHBgUz5N8BtGjcT5Y0wEoxHBp
 oX12cWH9VMjGm3x2YzPw5ke8FfoGEe+FxhyJ6HLtrSb7Ds9+xB7YeXXTh
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZPa6QvvA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/9/24 17:25, Simon Horman wrote:
> On Thu, Aug 08, 2024 at 01:22:17PM +0200, Aleksandr Loktionov wrote:
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>> index 1d0d2e5..cd7509f 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
>> @@ -5641,50 +5641,77 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
>>   	return 0;
>>   }
>>   
>> +static void i40e_eee_capability_to_kedata_supported(__le16  eee_capability_,
>> +						    unsigned long *supported)
>> +{
>> +	const int eee_capability = le16_to_cpu(eee_capability_);
> 
> Hi Aleksandr,
> 
> Maybe u16 would be an appropriate type for eee_capability.
> Also, using const seems excessive here.
> 
>> +	static const int lut[] = {
>> +		ETHTOOL_LINK_MODE_100baseT_Full_BIT,
>> +		ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
>> +		ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
>> +		ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
>> +		ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT,
>> +		ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
>> +		ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
>> +	};
>> +
>> +	linkmode_zero(supported);
>> +	for (unsigned int i = ARRAY_SIZE(lut); i--; )
>> +		if (eee_capability & (1 << (i + 1)))
> 
> Perhaps:
> 
> 		if (eee_capability & BIT(i + 1))

I would avoid any operations with @i other than using it as index:
lut[i]. We have link mode bits in the table, why to compute that again?

> 
>> +			linkmode_set_bit(lut[i], supported);
>> +}
>> +
>>   static int i40e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
>>   {
>>   	struct i40e_netdev_priv *np = netdev_priv(netdev);
>>   	struct i40e_aq_get_phy_abilities_resp phy_cfg;
>>   	struct i40e_vsi *vsi = np->vsi;
>>   	struct i40e_pf *pf = vsi->back;
>>   	struct i40e_hw *hw = &pf->hw;
>> -	int status = 0;
>> +	int status;
> 
> This change seems unrelated to the subject of this patch.
> If so, please remove.

Hmm, it's remotely related, trivial, and makes code better;
I intentionally said nothing about this during our internal review ;)

--
// snip,
Aleksandr, please remember to address all issues pointed by Simon
