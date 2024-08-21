Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 333A0959EA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF1F74057B;
	Wed, 21 Aug 2024 13:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nw2rAw8hsQ9j; Wed, 21 Aug 2024 13:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93366402E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724246981;
	bh=r0QGa4b5dfe0vdghpZiZcgKfQzrTVaadwhG/MmbBZ+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PwXZuSLlEAvpLggZsq/WHKoDEmx9aKVhpph68G8I391z28fuAb/WT6MGrj9GYaWdw
	 /wG7SoC60URHmrPXGIHfnEBD/9tAtwU0x4ZYMenatRp0VqntnH1xYZNLB6xUXPQ7pO
	 tTqJ+agtQtnnQTmsvsDMk6PY3qZ5DKxqAqjiVO7GqAUp5VLzWYw/VIBNZqOw+og+hK
	 BRBS6X+K06yF3OBsoNAVgb9yfGlOU0QxkARqnlHjhDtT2Pp8zaE8UkfPZdFQ3NTaL3
	 AiBmMNHCPf4u/sybDYvGLvYjAH7cXin/k5m58JTLl54eAiXC+sTeNpHfhq6e9LRxLs
	 lRHX5HEfFanVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93366402E7;
	Wed, 21 Aug 2024 13:29:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD101BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4598A6072D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uWWBwVS5RVEs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:29:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C7D860726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C7D860726
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C7D860726
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:29:37 +0000 (UTC)
X-CSE-ConnectionGUID: fFIDzux+Ql2fLSizav6J4A==
X-CSE-MsgGUID: IYOEgftZQz+3lZ0s5n4GiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="13132949"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="13132949"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:29:36 -0700
X-CSE-ConnectionGUID: TfWelFYnQ0SsfIOtZ6AFig==
X-CSE-MsgGUID: qn8RkeOARqCAcsgnyRXW6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65927797"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:29:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:29:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:29:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:29:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:29:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S9myIEgeyV6B5oKtVNiuArPsnt42+uRu+mAK9xORPzAoUQfiErzyqa/K2b6K0W76atsBCp7tohuxtuMS19g0713yEteCKf3kQQ/BIdDHIh3XQSI+aTBFEBtwLxLY6DVZONHYhC1tBX5wtTzfu3pZLeuI8uHkHLtG7x+q5Rcm50oCN04EIobWU2VaWAcZiaiARtkzn4VyxsO8ANSzQgZLKH/ZJbf00UFanqvobZvqHad19Vk6hYx3rETIt5z5/psk+WtL71RJJzr2dYP1t0Im0jmZ/3TC1MSv20OShVI4HH8efg7jkF1rs9m1CbkkKBoFpo5rrw/pF7EY5c8BnNvyaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0QGa4b5dfe0vdghpZiZcgKfQzrTVaadwhG/MmbBZ+I=;
 b=ZvIjII3GHMvsTVQ2H1FfQuI1uYAgiILb8UKwKC2+Wqxy+pYhRxJn3gAhGrW4cmxvfBPWjFr2URedZHd6lD3iPmTwLFoqLRaVCRpgnrtjnFh7hKfVF29W2an6Nhh+yvH7qrzc2U4jKuFFIjZ7rA7hKC9xuD00or0/21P86XIHJLmJfdk80tA4S28Yo9ZXAAXWjLJktoTOCDtUY5gu1Hps6FS8cQwi9SVbfY6Q5flZuglz9ocCrIVL4kUg3uu/3Ukb83W3UgkginEnGg6dP2VMcvntXKZldFb/krUTf8UNvbYwVWehfW60MbnxP3fsw1YEmTOZgMttSF8wrrNa6UqmsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB4895.namprd11.prod.outlook.com (2603:10b6:a03:2de::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.29; Wed, 21 Aug
 2024 13:29:33 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 13:29:32 +0000
Message-ID: <10175186-abff-42a9-aebe-d8d0d1daaf5c@intel.com>
Date: Wed, 21 Aug 2024 15:29:27 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-3-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-3-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0094.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::9) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB4895:EE_
X-MS-Office365-Filtering-Correlation-Id: ce5c250c-0426-4ac2-3e47-08dcc1e54ac8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WElWaloxRGp6K0pISVc0OWJ6S2FCMlFzd3JrZENMNDh4bGtxWFlsQlpFREpF?=
 =?utf-8?B?ZFRVbWNWODhTYm9NbFR6ckh3N1ZROGh3dGN1RnZlM1dDRzdWZmNNd0RYWjFX?=
 =?utf-8?B?S2xMY1FCTmp1RVh2NFhvbW5haVRTSkZ1a0l5dzVqZk95SC9HMlBqR1Q3c2xH?=
 =?utf-8?B?RUJ2ZWdzSk9GbE8xamtvbTgvd2VSdFMvR0ZJNmF2WWVzbHdwT25wR1ZURjN0?=
 =?utf-8?B?Y0RyTzQ0YTQxdU55ZHhoOGN6WkVXUDZOdGh1dVZBdDJoMjdWanlZTHA0T3Jh?=
 =?utf-8?B?cFVqTjJld21ITmdiamZRN2xUdkZXaEpUaUdacHZSTkZ2eGtZajlKOWU4V01M?=
 =?utf-8?B?U2w4RFFQY25VRVNFSTdscUNMUGN2bktxblVJd3g1S002Yk1FM1JDVkVXRHdi?=
 =?utf-8?B?ZkZkc0YvKzNDMjhmOUZCYmdaa3BkekRaZmEvSGxrNUxpaU1YV2ZORXp6NEZi?=
 =?utf-8?B?dE00bldkcWZaVmEvSlJ5YWFpMDAzOXJMQXE1NzhNdzZ0TVp6N0VCZC9KcU92?=
 =?utf-8?B?SkxYUkE5OUJKMlBDUGJoNVBrK2pNUE9LbDFQWGpwcWt3aW40cnNDUnFCTXpI?=
 =?utf-8?B?a1FQUjNyV1pMNkQzZ2JiTGVlcFZRYlJ0RzJrU2hEcGRrdUdBZWhqd1Z6K0NI?=
 =?utf-8?B?M3MvbVkxRmhlaGhwc0svRERTOUdUV2E4U3dyaGVob0ZIVWJ3Qi9vMmpnajZw?=
 =?utf-8?B?QW55dXEvVHQyNFpaZmRKdVFid1RsNStnWVJwdHlYSmxLU2s3ZFBudlBhSndD?=
 =?utf-8?B?ZFdTOEJpK094WTJvVnVWWW5tOUY0N1dveENPeVBaT2QrdU5hc1RjWVB4OUNs?=
 =?utf-8?B?eXNKblNmUWZscXRpQ1pGKzBkc3cwSTNTcGpOeEdPS0c4TWk0dEZFbWlkalpJ?=
 =?utf-8?B?dTdQdkRkcUJsemhzTEtUZVJhV09FdWh4NFgrYzZ5aklnSDEvMC9FL3QzNTF5?=
 =?utf-8?B?RHlsT0tRcTZIMXBvVXdOQVhHZ3BkejlRKzMrR2FWZk1HcTEyMFhSTjEwQzVB?=
 =?utf-8?B?QzZLRGFPV0ZuV2xrMEd6bWVFYW5VUm5hbGpTSkxxcnVvUXFxaFVTelBBbGJZ?=
 =?utf-8?B?cDltRU5SM1pQR2FVSHVRWTkzRkRkMzFUS3VoMWxpOWtrUmlNUFBXcGxFbXF6?=
 =?utf-8?B?aFFxaWNZS3BpK1BtdWpDQUc4bmhTYzhQV3lvYzg1YUZ0RWhndnB2L1hENjQz?=
 =?utf-8?B?ZTEyTk5NRkJWT1JjaC93MGtBZDMzMTZURGZ0ejhxc2U4NFdMNnN5blFUTHZI?=
 =?utf-8?B?cDFFWXF3N1Q2Ti9Hd1ZPVFBYcFJwdVF5dlgzV2pUVDVSbkhUL1FZYUVPYnAx?=
 =?utf-8?B?Y3d3NHN0Z2ZDc2wzNHhacll2OWNLMElXaGNUZjVZWWZLY0hINWtsa3JSTWI3?=
 =?utf-8?B?N25mRVFuNGJ3N3JCNVVLenl4V0dEQSttV3lsc3lrRVA3ZFVkZVZNQkt3N2ll?=
 =?utf-8?B?VWdXTVEzSjJMV3dZRFNvajVQQWZ5ek85azg3V3J6UlI5NXlBL0p3WFEyTzA4?=
 =?utf-8?B?MkFGU3k0TXl6azZlZzNsbDZXQnROTVNvNmNRZ1M4bEJLZzJFWFVBbyt4YTZ2?=
 =?utf-8?B?RDBSdHc0eDczS1NHOUxjTVhodVFCeHR6RTh5TzNaNEtRMTNmN3pjR0RQcjhW?=
 =?utf-8?B?SXpBWC8zbEwvWUlhMUQ4a0IrNEJnUlZTZ2tPTm41ZDRyTjV1SFlrcERTNk14?=
 =?utf-8?B?YW5NVUZ4cjl2NkR0S0NFK1BTd2xtWFZVY3diKzFzZ25vRXljNnd0cDdPNkta?=
 =?utf-8?B?OTA2aEsvV0QyS0xTQWU1OERIS2pNRFhQTTZHaXBTNWJhMUYxejlGVC8rcHhx?=
 =?utf-8?B?TzFnaDVweWJQRTlQZForZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NU9HckJYTmdwb05LUlY1NGl6QVpQTDJ5UXkyMndsd3hUdklLMW50UHYwWWdH?=
 =?utf-8?B?YzNneERTQ0NMMmtDT0xVNEV0dVlKOFNNNERranBuSnFYYzYra0c4SUp4ay9v?=
 =?utf-8?B?RzBrZDVwVGxIb3IxZnhmMzR6TVpndWlXWWVETjJmZWZ6MGVVOG5RQ2RYVzJZ?=
 =?utf-8?B?OFRab25iWVpLWnZkN3FLQ3ZpbllBckZtMGN6bXdTM2RiMzRRU2NQKzJ0NFFV?=
 =?utf-8?B?b1J2QTFkK2wzVDhmc1hFNkRnbEZSc1U5dml4T0VzeWE2Z0p5Y3VwdnQrODIy?=
 =?utf-8?B?S2hYUjZLMDZIYVVQaXh0L3dPUi84RmcwZzdvSjZYajlCUzJFOVd4UDcrSEY5?=
 =?utf-8?B?cHB4akJsUFB0UzRYako2U2duK3Vva3RyQTVsVHNVT3dhOTRnMWJvcktyWkR0?=
 =?utf-8?B?cU1ybjRTZW1ibHpOOUt5VmsycVh5ZXJkVFZHald0SHRteFRuM1F4QzlVb3lq?=
 =?utf-8?B?RS8yOHowcjI0UjI2MWN2RTdsQ1hnOW5nR1Y4bVQwZmpKdUJWZnB6OUhibFdT?=
 =?utf-8?B?VSs3NEcrd2hVQUtOaGptd1lFQ1RFRW53ZThDVzJPUTJRb1NINXU4dnpPUWFI?=
 =?utf-8?B?MHl4NDRFNmwxWCtickpzVzFGYjhCblZMdm1XbVpJWUV4bExYQ1ZFdzZSeDVM?=
 =?utf-8?B?OTlCS0ZabnN6QWQ3ZFlKWFFnaTQxTnB2Z0xhOEZZN04zTzFuT3V2WklzZUp5?=
 =?utf-8?B?YTUwZ1A1Z0g5NTRFNWhBU3QvL29Tb1RaR1pxb0ptNkQ1aENvbEF6cjh2Wm40?=
 =?utf-8?B?NXpFdkpWaHRxcmJkSkVzM3M4NVFuUGNZL243NncxNVd1MEdKT2tGbWR1cUpw?=
 =?utf-8?B?L1FKYUZkMU9vcW5mY0JDMTdHWjBUVnd5YzAxWk1YTkVMUTh0WDRVaGhVTjQ0?=
 =?utf-8?B?cUF0NXIzc3NQSk9KSzhpaHNySFExOVhaNE1GVVdzdWtsTTZTb3BYUXRRcFpk?=
 =?utf-8?B?UWJhclU5dlpRVWNzZnpvczlKcGw4cGtqd0hndngrdGF4elg0RVptMUptVTJB?=
 =?utf-8?B?Q25DOTFOVWV6NytUbTJOQzdiOFZQU0RaWi9CQVVIZ29iQ2wvYkw0S3R2RDlu?=
 =?utf-8?B?VHE4OXVJQUdQUVVLRTg2bUFZaDM4OWhZaXBnQzZ0TnNYQk5EQ1MvR01Hekxp?=
 =?utf-8?B?cWl2REdGVVcvdjV2bUswbCtzUFZyR1RGUGV0WmdhajNnY3pMamZNang5OXJ6?=
 =?utf-8?B?YVgyRmpKUm9oM2IyL0RTUHlzYjYyQmxya05mSTZMV3NSaHFjVWNMdWV6WEp2?=
 =?utf-8?B?KzcySFFWaFRtcklZNDczQzVvR3BtczUxZHRmU1BvM1pWQjBqdlNsZHRGWWNR?=
 =?utf-8?B?V1BKU2pjN3FTb1BCTE1CblZ1aXNHa0t0c0ZxZHB0QjQ3VlpsdncvaW9TbVlq?=
 =?utf-8?B?RlVPQlQ0VDdVSE5xMC9zdjAyTEM3UTBFVFd2MzBTc2tDcnRKSlpycU51V2NK?=
 =?utf-8?B?MDh6WDdOK1RFZDhHSlFLbEpYc3JIbi9kR09DbURxSlN4aHhnUHRCb3Uxb1hM?=
 =?utf-8?B?dWtVREtuYW52UVRMZkZjdmtNc0c0SGpPUWwvL0N3cHBVTXhpVDMxWVZ3QVZo?=
 =?utf-8?B?T0R0cDdKUDNTUkI2WmV5ZjNldlZPRXY2UmsrcXpKbVFvM291U0l6VGxlMldh?=
 =?utf-8?B?eXozV0xEclRRcXR2cVc1eWtpTENEcWs4ZjUyYlJCeGV1c2FmQmhWbmp5TUtq?=
 =?utf-8?B?enBOdlJKOTNaTDVyNHJ2ZWFtYi9mY3p6TlMraUlXUG9ValU2UityTXp5VFJW?=
 =?utf-8?B?YkJaMkFtUGJaL2l0MWwvWUloK2FZbXZTUjZqMC9kdTZZb0g1U3ZwNVFLN2hu?=
 =?utf-8?B?UUFHZWpZRVdwcEJzZE5TQmxzcUhBTmVVUE9xZXZTRkt0UzNxWGUxWDhRTTI3?=
 =?utf-8?B?T0dMekF3TTF1cVRMQjZKcE1vcEZXR01uOGJzTzE5dFdRdG96cUZPQXMwZlBp?=
 =?utf-8?B?enY0NmRaYitYTXNqZUtKUmJaaUNtd3h0K0ZJeVo3bnpJUkoyckx2K3BRSzJN?=
 =?utf-8?B?b1RPMlVZcnE5SmxRQXF4SzNsOVNMVmFNL0VvYnpMNFJ4U1VHQXJUcDZWN1Rw?=
 =?utf-8?B?V3grKzlRNzNhQVVpM0k4cEd3TjNwOTFMZmRNaStMTkZpYk5ybWg5QmtrbVli?=
 =?utf-8?B?Qzl2RE80R3BGVU9vMklpOGVFbGJnTi9UUk1XNkxsQys2V01FYVdwVXFOMis1?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5c250c-0426-4ac2-3e47-08dcc1e54ac8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:29:32.8563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zs8ZkERlDzg7VMotvAvfY2VqkiQS7RQRXbxf6lF6L2xzOW6hGLtoo3nO2LBpntmal9JVHwvtCuDDTpqsbMTDdXihyahK0zkdU5dQFSSytZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4895
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724246978; x=1755782978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pHdNsVDoo6XGBJf+LFPW70XrQ1WfKmorrSS/IrcW0M8=;
 b=PFc7flljjMaAG/CUbcDj6JEhfiJ/Enzl1K+y6WzlfDyEN59b9KhPdlxO
 gVz8kpMgRspbpyHPagMgq/ORy52I9TlKuN97GT6XCTjN0f2+8W1onbRNv
 qYY+P1TDvVLLzbd1ry9+IIIGdXdcsuFVtIvUvNiSRI8C0IvHhbA752BMH
 1mHxcodvJv4vEMDrRyxot6AAL/dYEUTaEVoGOQB4VX65lD8Hs3suby3dK
 y4/nwFlR44wUN07vb3b68My729YWnEiNXhsXf+nOJNRhyDUVh0CiagA5L
 oEAEcXttB5r+MCh/G4TGNlqy9S53jsV7Q3GjV3pX/AmmBNi4Gn/X9wD5m
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PFc7fllj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 02/14] ice: support Rx
 timestamp on flex descriptor
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:27 +0200

> From: Simei Su <simei.su@intel.com>
> 
> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
> the VF to request PTP capability and responded by the PF what capability
> is enabled for that VF.
> 
> Hardware captures timestamps which contain only 32 bits of nominal
> nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> To convert 32b to 64b, we need a current PHC time.
> VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the
> PF with the current PHC time.

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index be4266899690..b7c340bb7aa7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -136,6 +136,8 @@ struct ice_vf {
>  	const struct ice_virtchnl_ops *virtchnl_ops;
>  	const struct ice_vf_ops *vf_ops;
>  
> +	u32 ptp_caps;

Hmm, there'll be a 4-byte hole here now.
If you put this new field either after ::mbx_info or after ::link_up,
the struct size won't change at all.

> +
>  	/* devlink port data */
>  	struct devlink_port devlink_port;
>  

[...]

> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index 252fad21b04a..012ed2f5f9d0 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -304,6 +304,18 @@ struct virtchnl_txq_info {
>  
>  VIRTCHNL_CHECK_STRUCT_LEN(24, virtchnl_txq_info);
>  
> +/* virtchnl_rxq_info_flags - definition of bits in the flags field of the
> + *			     virtchnl_rxq_info structure.
> + *
> + * @VIRTCHNL_PTP_RX_TSTAMP: request to enable Rx timestamping
> + *
> + * Other flag bits are currently * reserved and they may be extended in the

                                    ^

Just curious, what is this?

> + * future.
> + */
> +enum virtchnl_rxq_info_flags {
> +	VIRTCHNL_PTP_RX_TSTAMP = BIT(0),
> +};
> +
>  /* VIRTCHNL_OP_CONFIG_RX_QUEUE
>   * VF sends this message to set up parameters for one RX queue.
>   * External data buffer contains one instance of virtchnl_rxq_info.
> @@ -327,7 +339,8 @@ struct virtchnl_rxq_info {
>  	u32 max_pkt_size;
>  	u8 crc_disable;
>  	u8 rxdid;
> -	u8 pad1[2];
> +	enum virtchnl_rxq_info_flags flags:8; /* see virtchnl_rxq_info_flags */
> +	u8 pad1;
>  	u64 dma_ring_addr;
>  
>  	/* see enum virtchnl_rx_hsplit; deprecated with AVF 1.0 */

Thanks,
Olek
