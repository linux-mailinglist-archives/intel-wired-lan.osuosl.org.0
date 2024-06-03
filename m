Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 473EB8D7D9B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 10:41:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BFDB40275;
	Mon,  3 Jun 2024 08:41:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsiDtz-Q8UbL; Mon,  3 Jun 2024 08:41:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E35F240563
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717404096;
	bh=qv3sVm8P5p7BaGMdShP0zCe4B4TOG56wD1J3mBR7dp8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0DiScOMwnpSqMNhfmQAF8fZrRGnmgq1qe9oEhoLtv7UFeu9qmHgCWNu6W703JjzWy
	 S9guXkiY0jbXogkTyQS0NZG8yChl4IJlixaI6pGSnr48SqfGjJ8Hz2ARUpL8Gkxitw
	 RBEN9bPmfZVOvECuVWsgKuSCfzmgqIEKgWxwk/e9dTAJ8kwFKa/Sq5U1OOIgLp5JE/
	 Gp8c5OLtQahOOlUBKtKZTyhjwc5iysZxpCMkn68nTaXMSXMAibOxDVOVVryKbb6Uc2
	 BIT4/DMywosclIE0mR39i0BtRKfEabic1Z7+9wLvQi9640nEGIHt8rvg5peNYVJ3HE
	 za2CaZ0h1wBrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E35F240563;
	Mon,  3 Jun 2024 08:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61C8F1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 08:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E13B60741
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 08:41:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OP8oIbxVYQX9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 08:41:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 671226072F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 671226072F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 671226072F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 08:41:33 +0000 (UTC)
X-CSE-ConnectionGUID: P2ZeLHA9SbyW8WMY+y9vVQ==
X-CSE-MsgGUID: Vsae1BrCSbu69/87ERZ9ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17713157"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17713157"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 01:41:33 -0700
X-CSE-ConnectionGUID: 6VytJW8DSZeB2ttTjf6+VQ==
X-CSE-MsgGUID: B8/59sUARHetkYH/B61QOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41256620"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 01:41:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 01:41:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 01:41:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 01:41:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxODHUrTJB8qWgJthxWOVZgX52HuzUiErb+qm6yJDzkGSrJJAP7IM8aZC29dRaB+3uLUFnR0T8wL2HxcSvVuggUsdJNd1dJvE26ekm2f3IRxTmR9P5jzzcWlP8z2/DUlUTbLzX/MqUtICJULI+7g/CZE+TjP9VfYWgAPUEFrPbymoLwGQJ0WHNaUTupWGdObZmjCR0Za6U4WJrOm4m0+nGY7+fNm4Z7HkmAUFDJLxzVq8XeFhUYLCzs/sx7TRkTVwWr1SDEgu5TH1vjOyZcsmFGbK0w5jgJoxAtlRSTC+7JBN9mIqlFGH/MkdVzFZNIS5ZyDhc7v9diHZV2u06c5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qv3sVm8P5p7BaGMdShP0zCe4B4TOG56wD1J3mBR7dp8=;
 b=Wui+Wk1ZRkfnlD/AHNhnH7y6OyHKF046Z9PJ9N2iM+GWAu+jFFEfXvCdIyDpwaYYqTmvTtDiKLkJx+5uH2ZpE/7hxoIpkLll4n+qjdiNHKEHI6js6KAPOc90xR2WVTS3qatl9TNgdo9mcNduUdNKYE2C/MdUFHHexW9Iar6Soh4O8+k5sFBrXtwviBlCMf8E/Mq0g4Sr1Ej92yTWZHfZ8JhlWFz7AZydsFYcJPPp28U6HoQP8Zblt5G4v+sd60S9bX3o5XOdbwj6FDcRTFFyinZ3NYB5PHxgYhdm8G0eFFmsOoNc1Rpn9kESzLF9kDj5qAN0XuFrQxGf8ANYGtekGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB7253.namprd11.prod.outlook.com (2603:10b6:8:10f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Mon, 3 Jun
 2024 08:41:30 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.021; Mon, 3 Jun 2024
 08:41:29 +0000
Message-ID: <43089963-9252-404c-a617-6f8f8e90b978@intel.com>
Date: Mon, 3 Jun 2024 10:41:24 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240531093206.714632-1-wojciech.drewek@intel.com>
 <40438f4d-d790-4921-ad6d-d69977747a57@molgen.mpg.de>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <40438f4d-d790-4921-ad6d-d69977747a57@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR2P278CA0089.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::20) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB7253:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d8d8998-f7af-4162-55fd-08dc83a8f6b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEh5RHpRaHh3WGYxeWtGL2lCZlMxQjl6bEROS3lHNHA3ZktSK1hscGxEOHFh?=
 =?utf-8?B?bHlWK1ZHOHN6SFdZTlZnTlF0dEtMSW1uczZUeG9Vd1JUY1VSQkRLSk5mNWdo?=
 =?utf-8?B?U0lTaEwzbHM0V1VrMXhsRGRrM0gwSjI1RHcyQlRjU0FxZ0U0WUpzWG01bVZT?=
 =?utf-8?B?MjcwREhzbThYRXZwbC9ieEVMOFVOSFg1TmJnRy9zVmJyOTljZTUwNE0vRWR0?=
 =?utf-8?B?VEVzUGE3Sk5hdkQ2UStuRnVFakpVb3pHemFpNnV3QzNLZi95QkxLcGQ0TlFO?=
 =?utf-8?B?bFMwd1FtWEM2Z3dOYW9IRGNXOXJxcUZJbXJpZWNjcHFMQnA5V2w3d05UTDRY?=
 =?utf-8?B?c0UzT0hLUkMzUGMrMWFGTTZJL3dBemRtU2VxeUwvSmV5SHBuejBOaVRKME1R?=
 =?utf-8?B?aHpHL0pkOEY2Nkczd0RrSUE0UHQ3ZlBZUHJwREN3SUtCcVQwa1pXTTFiTmFo?=
 =?utf-8?B?ZWZTU1ViTjc2d2FIZEFBQ1pGVVF3K2ZqaU1COXZOV0pXcEZkekR2TUdNZ3JM?=
 =?utf-8?B?YnEwcUc5OEx5NWtBcGJNZ09lNWQrRkErSzVwNno2RCtuQVJPakR5NmUzZjRH?=
 =?utf-8?B?ZkZqNjVkcEJqdU5YcDF3dU00RDZTK01DSG5mNjFib2hKRFpSR1Yybi9TcmxX?=
 =?utf-8?B?ekMxUkttNEhER3ZhajhTbzRTcENBQnE4N0FrcmNoYUNWd08xaEFCdWFYZEQr?=
 =?utf-8?B?STM5c3hiVUdTSWZJdUx3Mk0rdHNvT2l0ZXpwUlp6cUgzcXhndHZOZVpRL2g3?=
 =?utf-8?B?eXdMVkFHbldWMHMzRG1HZnhyZk5rY3VoOVo0NldGQTBPSm9tU1BwRU1oRVF2?=
 =?utf-8?B?VW5XbEsyNUYwZStSempHRmRDM1dhQyt4SjM1S1hhV3V3VkpJWmNOTW9LanJn?=
 =?utf-8?B?bUZCYWtJWEZURUJBN2RPQys3R2NaT1czaDFmSjk5eHh1ekdsbWR4dmRKalFk?=
 =?utf-8?B?U2J5bklSU2tBemthNzEydW5XVDdtSWExNDEwdStkc0EwYVliQW5uSk5ySC9k?=
 =?utf-8?B?dkZUUVVJa2J1ZzBZMjRFMVdENlgxMGlxMGJmMUNuSDkvN1dIaWxra29jZ1Z3?=
 =?utf-8?B?RmF0Q002OTJBYWpQUjZCNytsMVIvR25LczRoT3BZSjJOeW1pYjViR28wR3k3?=
 =?utf-8?B?V0c2NE9PaGI5SDJEdnhkY0F2UTlJT2hYcEVFWCtLTTlyNlJ2Z0NNdHE0UW9K?=
 =?utf-8?B?VWZmdk1PNVBnSUNZQlZaNjhMVjdYWklQSVJDek15WEFtSGJ3dS91V0FxeWd6?=
 =?utf-8?B?MVVaMURZRldreEM5dHNPOUNxZUZwZXBqNkJzZVA2bCtUMmxCQ0VJbUZUZGk4?=
 =?utf-8?B?Y1o5QkJJODJrT0NDb2l5bEZXWEF5WDdxeXJBV0RwTWdGVlpueklZT0hYZkda?=
 =?utf-8?B?WXhscFZMMjJkK3l5Q2ZhemR2a0tXZzNudzNsbnJvWGxNTzZTZ1pxVVM2Unll?=
 =?utf-8?B?NnAzSTRmNTNyTUl0bjIvMnQyS0RadFhSK0RjTnFvcnFHM2NpdnBWNWEvVk85?=
 =?utf-8?B?b1R6emcyYmswZVRGMEZKNERTUEFzMHdQLzFSVzNpSmNxb1dLNzc4TzJWc29r?=
 =?utf-8?B?K0NiVVlsYnd6Mm1qUU81eEtjN252VFdWV2drWlltOS8zOEtJRGE1Tll1Z0sr?=
 =?utf-8?B?MFpzRWhjbS9zWGR6WkVRUjd6RGdiSmxsZWxoV2pnamZaWi9VWmlRS2ttWDZm?=
 =?utf-8?B?RS9yYWIyKytnaVpYRWlrZE9hYTV2cnE4a0lXT04xa3pDdExENVJvTkFnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWhQeW9DcFc0ZFlIVEx5Qk01V21LM2FNd0czZFdLT1llLzQweHFQTCtjV3RR?=
 =?utf-8?B?K1BuYnYwbkQveVJGcTV5WEZpbFErdEs1bnhHaVB6dTdYcVUyT0ZYRkl1dW9C?=
 =?utf-8?B?M0tvNUE3cWhzQWtsUDgvMldpemJnaTE4WUZaQVB0d3BuenR5Q2grQlRWR0l2?=
 =?utf-8?B?SHloTjlWSXRDNlhrbFVjemhUaTlHaUc0LzRvRk4xUkxSSTZUc2ltZUtOeUdN?=
 =?utf-8?B?cmVLZ1FqOUJVb0dnRS9lVTdEZG84bW9xVWRKVDZQTUJzcDRSazUvc3pNZm4r?=
 =?utf-8?B?YndobWowUVBjdjRPQ2tnc1RTN1lCamhIV25KWUsvV1o4SlRMMFhPV0RBenNq?=
 =?utf-8?B?UThCQnh0V05NeDhlWWpNZ0RWaFord1AxMmRkT3c1TFRSMTJoRFQ0aTA5ajNn?=
 =?utf-8?B?NG02N2NFc2JjSTZjT1ErUlJDOXhsSkVZWjlkOWFrYjZhTmE0WitDblZxWlBW?=
 =?utf-8?B?ZDZOVEZ5amJnVGFWb0NTbFh4cGI5S2JET21Hcmt0dGVVRU44RUVpbUt2N0R0?=
 =?utf-8?B?OTlWYzBqRjNJbUtqZzBCTWtJcERNb05mWHdwOW0zVHpUUEZwN2lsc3d1RUdP?=
 =?utf-8?B?TXFCQm9jaFc5aFFURWoxVGtobDVPWGt6S1pGZGpKSmgvYlVrTERKaXlNV1o1?=
 =?utf-8?B?bUszK2RUSzlzRTZMZnJnVEZTY3c2NHVYV2lPb3AyRzRUVkk3eWVjbFVDN3pD?=
 =?utf-8?B?NHFJV21kSzIwMWlNVzNWMDZuL3Z0eStkSHF0SzRtR2JZNmU0QVp2TVRzV2dL?=
 =?utf-8?B?RjMwSjBaS3pLOTAxakxWTWZJMkdyWW5WMkUzaUtNZ1V0RkNacnlGTW1pRTBH?=
 =?utf-8?B?M0ZINFI5Tmc2a3NxZUFFaDlFK1FWMWZSUGVMZ2wzTGYvMUcxWndEdnZ1bU13?=
 =?utf-8?B?WmNCWUNhSGJzQkxWYUFpdUV4UURDYUpaQjQxNGdwd1JrYmxtK2dac1lVZG1R?=
 =?utf-8?B?ZGNiNGdsOENGQkV1bjhlTXpSVURzUzZhZjkxSVNRM0lTVGZYbVZPODc5K0V1?=
 =?utf-8?B?RlZGdjBzc21DbWZLQk1Rc0JvUDBJTXRQQ0Q2eWJzQks2Y0VsTzhUdEZsRHp4?=
 =?utf-8?B?U3ZVckt5aGpBSnJCb3ZOSW45YzJGZFN4ejYvYk9WSlB3eGpzOWtpbVI3NVpV?=
 =?utf-8?B?eWEwSG1OYlBNSFhFMjZaNlUyVlRhN0I2ajQ2VDVFTU1JOEFtR0lzSnhKcldJ?=
 =?utf-8?B?cEtzTVBacGFHQUZPMnBjT1B6QUdoUVFRL0RPZ21JV09BVmt1V28zYngvTmk0?=
 =?utf-8?B?dnRrY21jZkJkUGRSK3M5NjRkRERFbVplNjhObkZWQUxhL0FRNjc3dHBTQnhY?=
 =?utf-8?B?NmdXcEhkMVRRKzJGR1d6UGRmQ0NraEM0elRJTE5UcnF0YzFoUnlEZFVsakFz?=
 =?utf-8?B?MGo1bkJvZWhIRjhQS0hrSlY0eWlYT3FuVmJ4c3QvZko3THQzSFBYS1dzeGlj?=
 =?utf-8?B?SHVlQ0JwRGYxUnJhLzVVRlZ5VE5Lc29jTHI5bGh4VXZPTFJleVFDVHBRdFhT?=
 =?utf-8?B?WHNGM3g0QVp0N1lWN3orMW1TRDhSZXNGdGJzNEZEY2MzOVpDV2c1ZVkvVnNj?=
 =?utf-8?B?dDY2UEVIR0NDTVF5OXZrcERiVC9GeE5nendPY1Z3aWhUYzJkTWpCUElyRkFh?=
 =?utf-8?B?ZER0dmxBUmNTVVpmY0JkcVpoZUoyMGdENG43M0drRjJLd0NERkhyRzgzV0dK?=
 =?utf-8?B?Y2xseHhpM2t4TENOWUhGUGVnVEZiMHZtQUFYbjFaeWhmZXZqTWFBVjhQVCtN?=
 =?utf-8?B?U0phTmxhZnFwa2dacmRTa3doOHI0MmpGZ0N1YWcxQ20rbkVHQURmZG5RQy9n?=
 =?utf-8?B?dEgvVkN1SzFzcGpNSlNGNW56QXg1bEtuYUJsTFBOSkZXUXREWFJqcHRLT0t4?=
 =?utf-8?B?VmIwQ1ZKanhZaFpSQlRiNFdYelNkTjVOV082RkdIdmxFeUVRZFZLZlgwYjRU?=
 =?utf-8?B?UjNtK0l1TlpmM2RtbnRzZElEdDRjNFpXMGJ2cjdRbkRrM1hMNDZqQk1Ec3NG?=
 =?utf-8?B?WVhKaWE4WXFqSFdoQ0xSK0F6SzQ1aDRZTzU1ak4zTDRwUldGY2NuK0h4UkFV?=
 =?utf-8?B?dTNXNklGcDJpcUlESHhvZmIxNG9NaHhRVlpzWnBORFg5WGZralBsbWVESVNh?=
 =?utf-8?B?K2FUOVJnM01obll6Yk5qTVdVTnN0M2hYeDhmVklQcThYZTlYSUREQmdySzAv?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d8d8998-f7af-4162-55fd-08dc83a8f6b9
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2024 08:41:29.9190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lprC7xHByw6Mf+cq0Uj6nkIpi2qW4PFEQ4tvP8SDhClLfoeEyn8iIAc5egsiBBwxsDzuihHWcMRBzbNRkcP1oRQbsLZ9D2ZVTdKNVcT/tBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717404094; x=1748940094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TJqzstf8cySk3/Ohj3lhMMX6qRPMG3JimIIX+9z2AvE=;
 b=F+VKDqJAyAojx/0rTN3asSzz7S3xarBcgkO61ZDjiCsIqrPdA0Baqz9Q
 kjZECfxEpx7cpQwnfp3wmCQxqES7PPTlmpL2QReQuIENAqN9F+wwqtl8a
 nMn6bTjg5oMVmtUq65BX5gMZV4D46ppgg5z46FcRj4NJPg8tkMVsieegT
 8bVasjKxanqpOl3xFvm4VsR0IjYpb9T+5VmMJMh5d/5OJPIhsneL3lzMm
 Dwav851qdinEKchRzFV607B9ipjct+OnJwVSNnGznTjxEWqllTVEOrXia
 6Rgx4QJtJhZQRvp9Swh3/hlKKdfiGNXxGuF3K/aISqt2cYmlJ2qUnYvql
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F+VKDqJA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: implement AQ download
 pkg retry
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 31.05.2024 12:36, Paul Menzel wrote:
> Dear Wojciech,
> 
> 
> Thank you for your patch.
> 
> Am 31.05.24 um 11:32 schrieb Wojciech Drewek:
>> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
>> to FW issue. Fix this by retrying five times before moving to
>> Safe Mode.
> 
> Also mention the delay of 20 ms?

I can do this.

> 
> Please elaborate, what firmware version you tested with, and if there are plans to fix this in the firmware.

I tested it with firmware 4.40, I don't know anything about the fix yet.

> 
>> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
>> ---
>> v2: remove "failure" from log message
>> v3: don't sleep in the last iteration of the wait loop
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ddp.c | 23 +++++++++++++++++++++--
>>   1 file changed, 21 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> index ce5034ed2b24..f182179529b7 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>>         for (i = 0; i < count; i++) {
>>           bool last = false;
>> +        int try_cnt = 0;
>>           int status;
>>             bh = (struct ice_buf_hdr *)(bufs + start + i);
>> @@ -1346,8 +1347,26 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>>           if (indicate_last)
>>               last = ice_is_last_download_buffer(bh, i, count);
>>   -        status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
>> -                         &offset, &info, NULL);
>> +        while (1) {
>> +            status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
>> +                             last, &offset, &info,
>> +                             NULL);
>> +            if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
>> +                hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
>> +                break;
>> +
>> +            try_cnt++;
>> +
>> +            if (try_cnt == 5)
>> +                break;
>> +
>> +            msleep(20);
>> +        }
>> +
>> +        if (try_cnt)
>> +            dev_dbg(ice_hw_to_dev(hw),
>> +                "ice_aq_download_pkg number of retries: %d\n",
>> +                try_cnt);
> 
> Should the firmware be fixed, a warning could be shown asking to update the firmware.

I won't put such info before we actually have a fix in the firmware.

> 
>>             /* Save AQ status from download package */
>>           if (status) {
> 
> 
> Kind regards,
> 
> Paul
