Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA82959E8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABBDC403BB;
	Wed, 21 Aug 2024 13:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQt_HokoPud5; Wed, 21 Aug 2024 13:21:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDDCF40339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724246482;
	bh=jGr/oB1tGFGOOAQOgGOgO3D0pXESXz5hde9yPT8iv9w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j8oSqHo6/pGtpmU2neAi905dMLy0tK3vIYJELWG4SO5u2bztHLo8/x9RBQE3dZi8F
	 7H+q3jjkOcB46pQSElSEWnd4tNygQPbmY7Qquysd5Yb+7dOm5mvRJ8qgSEbY9MojrV
	 7YB3RAYON2T0oGH6xLSF9pWLg2DkBZxQfnSoLO2AsGkzsiGgCqJZDJty24dXAL3D5b
	 GD+wV2u4VlTwu0f192f1ul85HHvSNQJ9ZcSJxSIhvPf/nyhPD24zMGdc7Mk9abN0aG
	 1VoHSWm7lIAbyGvSNEQS5gYCCllU4J9PYleu/EP85CXE75bsm8AGj3vOuPTpu6ncw0
	 uxpaNOB1uWVLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDDCF40339;
	Wed, 21 Aug 2024 13:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 323AE1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C8424011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GRaY8uguNMYJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F1EF740201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1EF740201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1EF740201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:21:18 +0000 (UTC)
X-CSE-ConnectionGUID: DCVfKgi6Q7WOXjDqOyuVhg==
X-CSE-MsgGUID: Z/Yxc9AIQi2hhipbcl8kAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="40118076"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="40118076"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:21:18 -0700
X-CSE-ConnectionGUID: U4cmy8BnQOeAZV0r/IPatw==
X-CSE-MsgGUID: IrXgVbqCQ+q9h78O4SRCrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="98573691"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:21:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:21:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:21:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:21:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YQb42MPiyWXxy1Qzaru8Ml1lTJiO4LwciNJV18CUFIU09543n0RRhv0jVVaP29mfG5N/rTWOqyAcNv1/Jjg10RNAY/iZZb05zPLS2lwmIGz3fiAdfCPdjuzb70gwb1y6k7NWSzk+/CNCkSeghuIsKYfUdECXbv7D1wpThpQU6Zsj+sfT4/PNAZ5JL2uzEH7r/9pxkcWCVFhI6/xwitrEdvi1yocLkYMtK24T3AkUdv3dCG65sVa3Xygw4CGtoVv+LWhd17ifOJGSLjRmrWUcqs05ekM7k6NiWBC5zG+5nMj6zwgCt8PE/sckcoz6dqTBSy4P6jcJTEAcS9j+YoknUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jGr/oB1tGFGOOAQOgGOgO3D0pXESXz5hde9yPT8iv9w=;
 b=BNMPUwkK5R6e8QCnEsOKb1PKfU5cot1ovRpC8i3tGfb37tjo6l9QIRShFJg0gqYf5qSOQr9aD+OHFPDTjgS6UcX1PtOnaAEwk9wb+Ux7Mw/MTBTvsqZfJW6P6wZ4sAr4T80TOYyCZ1dx4gre7cwXSMYQbRMU3pZsV/Uc9YoikFVZINHrmSYrBLs2rE5sxnLyPT5OTkIgkTbXMeUUecGUatTLWeklEEo2e9FclwtbOxxSTML9slgDILCQHwWI5tG7lKwYjj/VXdgizvXQ4Nu+OROGNqXfYSGRghsAR0JK1/pGlfsMsvkWFfOt9DHztzb398bvYy6HDFy1wm1HLJe3fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB7278.namprd11.prod.outlook.com (2603:10b6:8:10a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Wed, 21 Aug
 2024 13:21:14 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 13:21:14 +0000
Message-ID: <d94f5d69-f69f-49af-ad5b-19fe0faca353@intel.com>
Date: Wed, 21 Aug 2024 15:21:09 +0200
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20240820212616.3400449-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240820212616.3400449-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB7278:EE_
X-MS-Office365-Filtering-Correlation-Id: b4addc04-2292-4538-13c7-08dcc1e421f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXl3NGhQZnpJVy9PTk9QZ2g4WitoRnE1RTV4NWlOenR2R3Iwc1FnZ0xnamNH?=
 =?utf-8?B?V1RnazhDM0EyL1UydFF6VlRPbzdrS1hUQUFUYkM2YVFCQWRQR3l3Y1Q1N0hL?=
 =?utf-8?B?V3lsSFR4NzRzb05nMmtvWFBnaURiU2R4Ym82cEpIdlh3WEhKcVo3emczVzlC?=
 =?utf-8?B?OEsrR1ZaS0FPNHI3UUxoRWhrWXEwVmQ5VzByT2t5WjM4bWdNRDFQZnViSnBF?=
 =?utf-8?B?RWNlWmdLMjVJZkM4Vy9MZXFuQ0tYZml1V1gwaTlpUm01MG5Nc3IyQXU0TkpM?=
 =?utf-8?B?ZGx2bSs0MWdoazB2QlFWUjRqZHdYT2RlZ0dhWVloL09DajJlZ004YlUzYUhF?=
 =?utf-8?B?c0FXZ3ZPNnBod1gzWGNWaW50RW5GTnVUbWc4RUt0T05yM3ZSN1hiSWRRM0VR?=
 =?utf-8?B?ZkF4V3JLMkduZU4vQkRXV0lXMWpxbzNZMUxzN1dWOU5sSC81dUovQjc5cUQx?=
 =?utf-8?B?S0EwSkpIQWRBUGVmMXVBcHNHaUl1aFowcng5clFFUEZRdnFMYUpIVXcxeWx3?=
 =?utf-8?B?Qzk5U2MvYlNhVmw2TkZCd1I5NU5rN2NaK1ZzQTV3aElXYUt1eHY2cDRoU2JE?=
 =?utf-8?B?OS85WlA4VE9qTkFmR0FFZUF2dGJQMmVJUDZVazFqTTFuVnRPeGIyaTBYZnhl?=
 =?utf-8?B?TVdaeWlvaWgxNVp2UFN5NjVhNUJOQlM5RmJKVENMOERnNUIxeU1yY1lwcEhO?=
 =?utf-8?B?ZHhvUU11Q0FXVkV2aDNGMFFiRmFyRjFJanNXUFhPcHVRcVZYVGFkQk90VkdD?=
 =?utf-8?B?Q0tMRHVaSjlpUlh5NUhGdFJteXpnYjZhZlVLbUtVZFY4ejBHY3E5SGYvSGRr?=
 =?utf-8?B?TElZR3Vua1ZQb25jUDhmanR2czVOUVIxMkR3cGh1QWcvd20rKzQ1NnU3RkZN?=
 =?utf-8?B?ZnE4eHRpY0V3bmUrbzhSVUJLTXgzeFJzSUtXMXZOYnczd3lnZk4zU2xVNkdK?=
 =?utf-8?B?eUxrUG5UL0M1bGJ6OGpndUJWU0piU2RWZkUyOTh4cElFQzNMY0lFZVNScEw0?=
 =?utf-8?B?cTIvUUlyc1MxNTU2L29qalJuOENGMS9EcFpKdG55VWFjbWlZSDcwSTk3ZjRO?=
 =?utf-8?B?TytEdHRWTEJVRjk5OE94VlA5d09sWDc2NVRuMWlleXlpWjJIR0JDWSs0WEE4?=
 =?utf-8?B?SHg3ajl5dHdWVjVsd1MvV0lnaEVUcDg4b04zVURqUExBUmNNU0NGckNFdmxP?=
 =?utf-8?B?Q3YwRHR6UUZlMmF3aDJmSnpKNll5akRjbXFzT25pZStBRG85ZEJCcktiSFlI?=
 =?utf-8?B?SXhVRkNyY1lMdGJMQkhtQmZ2VzhQZ0FubHNXTFVtSDhZcGl4OVBRMG9Odlkx?=
 =?utf-8?B?SkRrNFVRNnhWcitMbWg1Y2pPYmpOaEVMTmREWWQvZk90MnhXZGVoaktmQ3N2?=
 =?utf-8?B?dnhBcjY1ay91bndPc0dzNVZ2bUpxTWxRV3pQTDkrT1JMZXpLVW50bHQ2WFJ5?=
 =?utf-8?B?WUZwMk5EOGw2TFRjdU5FZW5ld1FTSEw2QWgxL3h1a2NQUWhBbTM4TU1BMXA0?=
 =?utf-8?B?T3NqcGRqZjJHZmFQM1lXVnowVHU1bFEyRENoRC8vR0xjdkE2cVppRUt5WkJJ?=
 =?utf-8?B?SWRNMnk3NjM2YXYzNERRb1EwZkYyb1htTkZ0aFZJVlhaQVh2elBxZ1AvajNG?=
 =?utf-8?B?ZTh1RFFLZmswTmVmTmdaa0wralZnYkQxMnhPcWc2alRXbXBBcGJCejJUVk1D?=
 =?utf-8?B?UWE1d08zL1hveGhrcDJNdVhYTFNSbGdLdVA4Skl0c3llQ2tPVEJISWYvTkpj?=
 =?utf-8?B?TmhTQjkwYmFCNTRSQkhkVW9nQTBTbzNDTDZzK1F4T0pvRnRhdHlxaGZQNEpW?=
 =?utf-8?B?N3pUNUFCNmJQR0dIWC9rZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K216UmJXUFFuY0F6QXdvcVcvZFdLWjNxNEIycXIrVUtsU0VLbVVYbnBCV0dl?=
 =?utf-8?B?Wk13RjJkanRmVDVhOGd1M2s0emZuVXJJWE5mcndUWkVuUHZ4bUZBc3pjY3RU?=
 =?utf-8?B?M09hV2wvNjUzcjJHZnAwVWh1N00rQTh3MkNQamRaMGNLeGFmM2dCVDNSeDd5?=
 =?utf-8?B?YXF4dEFaUUszdGE0cE9Vck84dkZpZDM5T3J2L0ZkVjR4NHBkS2tSQU9ZVk1v?=
 =?utf-8?B?citSS2w0YW41VVJDRUkzVU1yWWI1dHNVaVpsb1hicmFmTUhXMU1tQTFtQzcr?=
 =?utf-8?B?akZsRFp2djZQRkVwNlBRMDlIN0h1NW1iMyt4RGVXZXpUZHFFdE5nZ2pTdVdl?=
 =?utf-8?B?R0MvcDBsNjdWaE5xQlRoNGxlajIyQU5SNTZjTSs0MGNLRWhVb21xNUo4Qnhs?=
 =?utf-8?B?SHdDRk94NG02K3FWRTJ6djU1a05LN2JpY0VMNlhjN0REZUxGUDAxejBQUVFt?=
 =?utf-8?B?ZWpYWDduc3NMSXM4U1ZZV093clU4QlMwMzBtcGJ5aGgzNnJwSE9Kb2Q2bjVD?=
 =?utf-8?B?UFpVNHErV04ra0dReVVIM3pXdmsyZ21WTElCUmVTN2FsWlAyKzE1UjJKZTQ1?=
 =?utf-8?B?WlZQT3c2cmdXL1ZTM0lUV0x6b2lpWVdQK1gxT1pTN292c1QyM2JyNkZYVkJm?=
 =?utf-8?B?blQrTUJrZ1g5Z2dWbGRnaXo3RUFkc2h2V3l0S05ycFBkdkowOTFwenBET1kv?=
 =?utf-8?B?a2lBeEYrbzJuOU9tV2ZDVDFEa01VRi9VOEtoeU05bzJ2aklDNzdnL3dYZ2p5?=
 =?utf-8?B?TmthM21Jbk10TndxYVBoZEhQSFZiTS8ydVU2NE5EY0N2czV0TDRBRDhEZU1l?=
 =?utf-8?B?enR2d0w2emhuK2JUWVJCYkhzUzFhbXpnQTJURFZVSHpjTnVnOGpCaU41MXFz?=
 =?utf-8?B?UFBrRWIvUXNOL2lTMEVFSmFlYWVCb0Q5V0xaWjVqQ2lPUlZWZHpTTU9WRjhz?=
 =?utf-8?B?VlBTTHFSOXA2TUt4ZmFaekhlRU9jT2QrdGZRb0lOWGcvbXpoWlZwdkF2ZW5q?=
 =?utf-8?B?cnBTWlpYU2owY0ZFRm92MzZiSnBURFQ2eDhKUHlybStQN0RUcnlUWWlpYVRa?=
 =?utf-8?B?QktnYUwyRjNOQm5wNnhpd3l3MnZUV244OWxVRnpINVNMdllhK2RIQWhKeDNE?=
 =?utf-8?B?WjNNdG5zb0xraEkybkJocDZYS1dwNlpveFZlNVNtOUVvQWtZR2ZuSWFFWXhW?=
 =?utf-8?B?Skw5ajY5YzBOWi82bi9nY0I4WEpZS2pHZjVub0NZU0dRY0R5eVV5eG9BbmFC?=
 =?utf-8?B?K0NybmNWbUxnVk5qNGx4WjJ5R1dtSkdRcFR5VDFkb29sdmJxNThHcWlkZGdx?=
 =?utf-8?B?ZVU1TURNQlkwYmI0dzY5VmRvOTBrYlI2S1U0MGVFRUlJTGtqeHZSaml0bGpL?=
 =?utf-8?B?Ull6MnpjZFloTitERmx3ZGJ1VlpWKytXclJhRzlIeDJWbFgrVXUrVmRsV0JR?=
 =?utf-8?B?WnlmVGhNaVBlYWJ6Sm80Y3owNVgxaURjNWpDWmlET0VTNUR2QzdNb2tjSE1w?=
 =?utf-8?B?YXJsTmhBWDdqeWZJZnVURDZLWXZUQlZvbWQ4SmpBUjhGRXgydHhFVVQwZ1ll?=
 =?utf-8?B?T3NUSXJrUHFId0ZjVHlzenVlZ3ZlNm05VmRiK3E4enJVa2dIWGNwU1U2aUpM?=
 =?utf-8?B?dTNoZGkrUTFtUHdQWFI3K09PeFFLL0FWMWxxamc5WCt5WHlMVE5vdEg5OEU3?=
 =?utf-8?B?cWY0LzJwa1V3ZklLOVE3ODE2T29ZWWxUeVNLKzI3NHEzWm5MTmR2cnVyWERu?=
 =?utf-8?B?c0VLTzEwbWQwRUJ1SUh6MitsdmpkRjE4L0pYVFBzb1Z5S3g3RDR2QXhpOTNK?=
 =?utf-8?B?UUg4TzUrNUtEaEU3UkVWdjJUYm1SWDFkdGN1RHc4dW1WcmQ1a2Fmc2UrNnNY?=
 =?utf-8?B?ZFJSZ1ZzU2FxaU91bGZva2tTSk9UNmVwdWZQN3JzWEZjTU9yeDhQK09XWjl1?=
 =?utf-8?B?aUV2cG9xVkNZelU2ZEdzbWR4bmxRNUZ5cGtLUTBqT1o0eHBQTEJhWTdRbkhw?=
 =?utf-8?B?amxMVmp0UVI0dzdQQWV1bVhsblBudGhXTUtkbnZsZzZJc1dlLytHdmhoVzRh?=
 =?utf-8?B?ZERTVmFKbU1FeXk4ck1qR0p5WWRrQlFJM2NkOUpvRk8rNGVCWnlYNGY4ZFVE?=
 =?utf-8?B?aWpHVnRYSGYrWHFWQzlZOGNkbkZob3NGV0pFVm1JbWJhRFpDeGpBZldWTXUz?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4addc04-2292-4538-13c7-08dcc1e421f5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:21:14.8652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qFOUkodYAdUpfwqimiPDg+h58yXI2UeITYCmOyRxlAjbzmzVHnlbVJpkRlO259d8vWVQLba4FSjWftM/6g1dD83n/4j98UwNiA3ljEov/IY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7278
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724246479; x=1755782479;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USfrR8yyVK3L76zaqMcnl/pkam5q/DtuZ647BUKsgFY=;
 b=iJ5qPAYj/8xw3KvN74g0simU5bMNh0VgPvzbAKHsXpXcsctUkLVNxWl9
 qmgTmyPlI59iQHlbqGDoufEac/QJi3IKoTe/y8oxr93SuIL2LWbCD0Zur
 AbFj+rzBOpwP3qpxbLEPzqFEVzKxdTsTc4N4+Az9LjtASgNisTwP9D31e
 F1hoAZjv5Ul6CwqgyH8ZPsXmID4bWkCPPmXbYcf3yUkAX3ahRXT+qqLj2
 sun2IYCaBu1aaFp3W332kQRLajsmNKj4LgDTA4zkgxdUIbBBgZ0DbmL/Q
 JHImyZmDLx8lm3G1vWUeOtjOnd7GktiIm3RdXxiPVoOb1fkV2SwmWaLhG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iJ5qPAYj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: add E830 HW VF
 mailbox message limit support
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Tue, 20 Aug 2024 17:26:16 -0400

> E830 adds hardware support to prevent the VF from overflowing the PF
> mailbox with VIRTCHNL messages. E830 will use the hardware feature
> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().
> 
> To prevent a VF from overflowing the PF, the PF sets the number of
> messages per VF that can be in the PF's mailbox queue
> (ICE_MBX_OVERFLOW_WATERMARK). When the PF processes a message from a VF,
> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
> register.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks,
Olek
