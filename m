Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BF9ADDFE1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 02:05:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C100404B1;
	Wed, 18 Jun 2025 00:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOGrlbc2YitG; Wed, 18 Jun 2025 00:05:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B66FD40540
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750205114;
	bh=5wMO4jSfFAdHtwQV/yuESLl0a7DOJq2NkCqhyZwzpLI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JqrEJXPkbi+NPEtkjWEffuS6tt5A1QhI9q/306SyyeoI8umYcpE+8ltCaX/Wv3CIl
	 P/xswI079Y7soJyu9pwwqEAMA4mFJ2i00Hc2YP00jBe9V1qxq+qcAJKWZM696BkwyX
	 D3ktCArmL0XcEnpLBQoTP5SnGPUuCcQ44l1SIlZtQ2hhVzo5TbfkV5/2JJYHUh2guG
	 W66YI1nb6noZw0LhhhbiMlOmkPqg66s0rM5klZBSLLAz868JvcKQuwjrfhDK/wUqlW
	 2Osu7og60ZXKbbllwDIAa0z1CISR4XSFsyik3edmv3rY3buim0H0z4E5lBwGLZDIwN
	 QNj4YCv9a8Fjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B66FD40540;
	Wed, 18 Jun 2025 00:05:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4C51E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 00:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA63183F0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 00:05:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LRbqNU7nYqph for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 00:05:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A40A780C61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A40A780C61
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A40A780C61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 00:05:11 +0000 (UTC)
X-CSE-ConnectionGUID: iThzYNXgTPakKRD2iJsRHA==
X-CSE-MsgGUID: gzo5nR/vTjCzyqBT/7LVNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="63061547"
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="63061547"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 17:05:08 -0700
X-CSE-ConnectionGUID: kIYLZjd0QpKpDLqqF91Jrw==
X-CSE-MsgGUID: uwRM3wkgQG2qYegm+NnPaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="172300334"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 17:05:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 17:05:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 17:05:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 17:05:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VD3iTsgRHs00GVeDxvZMi38jy1yryB6MLVLX5JZJM+HLB3ICSS1ofVJdH16fxB8JCAkp/yLoZzDv6XDrPFdoVhx01894IY3bQ/pshuiW8LCAWstKvNwiZyKs4BQXLbwmgp0/13UuwgP2pn09sMkavEFyCm2F7uPlp1dXsqsS6hMSL2wRTEXSEeBmzj0bbpDY08g7ZAZWODclE/WaVhyMzogaNsjCcKB/reOhM2nG6yajTdh11q5RKYn91CTDH7zGBbZuvuwrJimrxollXTOoK/QHMd90cy4WvIXi3NZWj7SjeOwO6TH0PwlMbEy0skS/fHxs18lHWqxDrdt6JteUQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wMO4jSfFAdHtwQV/yuESLl0a7DOJq2NkCqhyZwzpLI=;
 b=YaEY5xw84rSDsPICV3BrVcRoZKaIoRxlrdVLWqRdBPeh5uThGGn4aTSbw9+bAHlbyJVqUJGec08chT4YsoULjqwAGpmt+XmYDjCKc+H65QoL+4aw1I5CbvgT+6+XFitUNqgmbuauiAzjmT7RTWRgD+mYVRuTiheC06EM8KrsSpw1fUeM7xo8oMEF6tAxR/lcf8QfSJ+4odBcvwocMYKNYIKvSUmPDZt+zPq5mQKTJ69QcefH+/ewlnmrgVbbiaO9RJ+HwX3m/d87vd/JECMR48NIW4ubDeLn7N+3O82Dmzqhhf3J7gomH+HtX3nUuShnctMFByZGkP/jVgU57tZ6Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SJ0PR11MB7702.namprd11.prod.outlook.com (2603:10b6:a03:4e2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 18 Jun
 2025 00:04:58 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 00:04:57 +0000
Message-ID: <16644b14-2101-4e95-a9b8-d1226d52da27@intel.com>
Date: Tue, 17 Jun 2025 17:04:55 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Madhu Chittim <madhu.chittim@intel.com>, "Josh
 Hay" <joshua.a.hay@intel.com>, Milena Olech <milena.olech@intel.com>,
 <pavan.kumar.linga@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-10-larysa.zaremba@intel.com>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20250516145814.5422-10-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0069.namprd16.prod.outlook.com
 (2603:10b6:907:1::46) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SJ0PR11MB7702:EE_
X-MS-Office365-Filtering-Correlation-Id: ba217a53-85b8-479d-7249-08ddadfbc2f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S283YTJJZXRKOTFBTThtb2FiSSt6YUZ6b2tXT1VlSm1rQ1pQaW1SKzlMVEFE?=
 =?utf-8?B?ckxyUC9lUU04RU5rYWdlV0luL1A2OWh1cjllTFpONzFUWk5LSlRlZ094Z2U4?=
 =?utf-8?B?dWxOWkMrQkJuN1c0YzdWWXhOK3p2blFaUFRxbWI3c2l2UjlJc3ltSlhnZjFk?=
 =?utf-8?B?RDVaMHBYQzAvQmZKTkJUR2RVR2tKRmM4a2pmVWJxRWNWQVVFRThkcGViNVNs?=
 =?utf-8?B?K3BIZnhTZ3diU2FTdE95Y0paSHorTGVuUTZKbkgreHFqZDZEK0luQ3V6bXpp?=
 =?utf-8?B?TGJuY0NwVlFYTUtLMEFVVGFnUTcrbGNYSm85Vk5VZW1keEZXNk9mdFZ3ZG0z?=
 =?utf-8?B?SXFVZXdzM09qdHpXdWRtQ0tsdExxQkNsZGFhcVcrc2Zmb3pGZW5TTTYyTFVQ?=
 =?utf-8?B?UzJLVlU4bzFxWlpyQnFSODlObFgydUdtbmJSRTEwdHNsdUxENG9UQUJFQmZi?=
 =?utf-8?B?QkdkV2NYY2JuR0h3ZVQ2eEM0UEd4VXdoRDVLNXl1TXp0MytBdGVsLzJqOHNI?=
 =?utf-8?B?UDZDQWM0VEpMYUxPNDQ0T1hPVXpseDlNYnltSHZPaEZ3aCs2ZU9QZlMvaFJp?=
 =?utf-8?B?WVNpYjUyUm1jMDNyNkNRVkNVYkNFaFZBME1lTVpkVitNL0FpWCtUbDRNeDVD?=
 =?utf-8?B?VGN4QmtKcUI0ZHZvZEdFZXMzRFJKVCtUcnZubHBPczRQN0RtWHVXZUdrRjhw?=
 =?utf-8?B?UVFTTFNybFd6RkROcHpZTzNBbVdQZ3BDNUhZeFpYSkdPbmY4NkpOS2RLcU53?=
 =?utf-8?B?NjRLSTZRa0pFQ3ZWTWZFanZtbmpERkYyY3gwazEvTktMWEJsS0ZCcTI5dGdl?=
 =?utf-8?B?ckwwc0tuaVFNY2hYYjJENGI0SE5KYlI4WUpGaXo4WGh2aHNnNE5uOEZndXZQ?=
 =?utf-8?B?UWxMNEhBNVZNbHZ4Y1R0a0xsUERob2xZaHg0TXdQb3NqVVZhZk9Zc25Sa3Bi?=
 =?utf-8?B?OEJyeDhOYzJxUWFIYUt3VU1QbXBuNUtXZTZnMGFvTDROOTMzYUR6dVhiNnRW?=
 =?utf-8?B?TVV3eHBlYmhCeUpxZzg2U2RDdzlIc2d4anRmMTBaUUhDN1JtQWdscVZqSWNj?=
 =?utf-8?B?d1Fpdi9VMmt0c3pwUTJoaTBMdnd3clRCUUFDNlUvdms5MFdhb1ZIQm5UMFFH?=
 =?utf-8?B?VHhZL2FRZjl4QjhFektPL2JRd0sxR1Z5dmowL21FWXlsa1QzMjRWMW5lbmhP?=
 =?utf-8?B?VVlnY21ObDEwRjJIZmpvdCswQWFuei9FUER4cW9CcDF3a3VSRm1VS3ZZOXpD?=
 =?utf-8?B?SnQ5ellVY0plK05vZXlnSEw4eENqSnpPaHIzTE5XS1k1c0prMDJacGlpME41?=
 =?utf-8?B?SlM0aEVYSGpkUGk1OVlRdFhFNnZhb29zVFQ1cHk5WmdzTmdSYzZWUWVzcUxV?=
 =?utf-8?B?cExIMVkxeElGbHV2LzZYVXduUFViZlZxRmZ4ZlZmV21XeE9Ic1NjSG5URUdr?=
 =?utf-8?B?TmhicWhVZU55cnpkcXFIdnJXWDdJcVd4OWg1OGRGeWc5SE5BN29zV1d2QVZh?=
 =?utf-8?B?WHBoSTFzVitWb0xDSzNsL2tzSmFiZElDeHlvYmdMSk5DOW1ZTExLakhyd0ZO?=
 =?utf-8?B?aFYxOVlvd0NWM1Z3SG5XQzQ4WUM2NUh5VzBvZllwL2dlQW9GVVFhL3ovelha?=
 =?utf-8?B?ZGk2Tmw5ckxvVE1OaXZLZ3ZNS0NYSHNNK0xKUlpnTHREanVHMURBejdvYmNL?=
 =?utf-8?B?dG1XRWVEYW85RXpOT1V5MVR1MVRkU3luTTRJTzZuNFBQMXpWQ3lIWHVMZkky?=
 =?utf-8?B?bjJJcVovbnVXNWM5UUxndldXbzFsL1pORDVaQUx0MDJRN3ZFQTBMOGl6dDRM?=
 =?utf-8?B?UWkzcS9RcUhnaHdaeUpROVdDSkhjWFpJM2s0MTVhQVdIblAzOEpuSUVjQ2Ix?=
 =?utf-8?B?eU94bU1kOXJjS3JpQWkrYmVYOTM0eUFoYURzZVdBZkhoR3RLL2RnckxSZnRn?=
 =?utf-8?Q?yn3HvM2jBhw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmFvMU9uM3p6Wmt4eTBRdS94Njh5NkIreVhGbmhlRHJJTFVNc0xQS01oNHJQ?=
 =?utf-8?B?bUxGVE1CZGpBYzIyTzVwQWZjamtIa3NYUzJhQTZmSUk2cC94dnFWT1RWSE9h?=
 =?utf-8?B?Mjg3SlNVOG1NdFQ4QVBHMTVCcFQ5a0hVbFJzYzdRbkovaDREczRMSndPeE5y?=
 =?utf-8?B?SjBmcnFRRFR4L1pRbnpPczNSSksvMDgrZUtoYzhiR2xoZ0thRkRMUW9JSEI4?=
 =?utf-8?B?OWQ5bEJiazVBWk85Q2NpWll5dWJYdlY0bHptUjlpbGlUb290SXJUN1doajNo?=
 =?utf-8?B?TytjWTBRTzgwbTVWV0JSVjdCTy9oZWxqM3dsZThoVVhGYStUVmFhUExyM21F?=
 =?utf-8?B?dzRtR24yTzR4YWRpZXpmaDY3QnVuK2twcXRSbUl4Y3pPR0JmUHpZSWphUUh0?=
 =?utf-8?B?T3BUTEtsOXdzcXc3dHRld1E5MlFuMml0SzB1YlJPRzhSZHhVa2JSb0JzSnZm?=
 =?utf-8?B?Tm1vUGhzYnY2ZTVQQjVtSG1xdnlkUHBoVFU1U25TajF1NjdXQmlEbG1lN3Vk?=
 =?utf-8?B?RHZJYzhvczZwMytWTWVMZTVnRmtXenRlamdvK0lyNDhUMXo5anF3NmRLRWlj?=
 =?utf-8?B?Uk1vK0doNEZEU09pcWJMazJjdVRvYjBCM1RQUTFEUC8raVNJOXRSMEpaclZS?=
 =?utf-8?B?Q3M4NllRbWZ2T28rTHhqTE0wTjI0SytTL3F3azFoSUl6YVkxSE1EOGRvbnlj?=
 =?utf-8?B?NGlvenJWTXZOblBWcjVBNFFQNWt3NDlxeVNueXVDMGFiNmZuUDN6NTUvTU1C?=
 =?utf-8?B?RHBuUVZGWVA5aDlkb3ByZDRnSGVZTkw4UC8ySlV1QzNkYlgvTkt6ampQTmpX?=
 =?utf-8?B?bDAvMFJyQndMRFZlM2dkYWxQR1dCcnRvN1dqSXR6czdBdlpwd2FvNU9vRnBF?=
 =?utf-8?B?a1AycVQzUFRhL2cvNXdlSUIwQWVvR1ZKTEt3MVNERkNvdWZUdktBSnorbXN4?=
 =?utf-8?B?T1BJYXNZY0dCUlZkKzRnc1JWOTBXNjJ0T2pCYkZFZ2UwOEI0d2hCbEJtc3FE?=
 =?utf-8?B?cDNjQ0ZVRndlakliWTBZSXhtaXBVTSt1ZjE4TGFVMWpkSC8yekZIbXE4bjZz?=
 =?utf-8?B?MncyRXpLcVJqc1ZCdmRjT2Q0R2RNdkpLd1JOMFF5QlUyNW5VZjFydXpSS2xl?=
 =?utf-8?B?bUowdzNCWVVwdElsWmJTMXZXNmxzcXhLcGVZNUV2NEZmY0ZxUWdWd3ByejBG?=
 =?utf-8?B?eHNVdGZHWHc2VnJ2Mm1pNURTeVVCWHFBaXhSSFg0MjZRZW8vVy9nelVxdVVL?=
 =?utf-8?B?THh2MXdua3p3UVNpUVo4TnJBYTZwczRtVUJMalRZTlVSODFXK0I0ZzJVa1pG?=
 =?utf-8?B?b1M1Nzc1NGZGS3ZkSFk0dzVTKy9hV0pDWmxqRUg1NEFWM0xQNWpQd0NacE9v?=
 =?utf-8?B?S3pESjFGVWhSaHgvZHE3S2xidEF1STBHZWVWMTZKTlFqdWRtRzMwUHZ2dWxa?=
 =?utf-8?B?YjZFclRVdzloOHlua24rZTBGbVA0TVVUYnhJT1ZXY041N1lFYit5MnRITHNs?=
 =?utf-8?B?WjRPNUp1RVFYaENYZ1BkSWFSWGJzbzNrLys0TS8xVkNLeFlSUjhVdGIvbWpR?=
 =?utf-8?B?S2s4Wm1FZ2dyVzMzMDA5RFJNdWFCME5QV2dzK2dsazZoQkhrMTI2bEFCU0Zo?=
 =?utf-8?B?UUNEbDFxR0RqcitXU2xCaXh5RHRMeWV3YmZSQUV6THVnbjlMeU5obS9GY01s?=
 =?utf-8?B?cXhGRnlBMS9PU3VUOUpXVUNZdGtYSTgwb2dGdk9HT2l3L3VLMHpUOWFpcmRZ?=
 =?utf-8?B?N3FsVmxnWHNEWDlFOFAyTDlmajNvbzVJck5aV085bjkxRjNZcmhOV3BxTkR5?=
 =?utf-8?B?OGk0N2pQRHJORm9JcnFMbmpERmZkeHY5NVQrekdtVzd6amg3SFR2YWU3ZHlM?=
 =?utf-8?B?aVNoNUdaLzNKSFNOWEZsekVGdkpBVGJ5bFZuMjNtNDNmdVY3SnJzbGt2bG40?=
 =?utf-8?B?b2tiaFJjQmpOQXl3VkRzUlU0QTllb3FvSVphV0Y2SkUxa201VXFDL0ZhVXdJ?=
 =?utf-8?B?V0NXeW9scDZxTlhDWFZVVHpWRC9TaTg5MEM2ZGVpdGNkbVVjZmlPbDJNZGhC?=
 =?utf-8?B?SkUvRFlNbmg4VWNqNFQrODl4N08wM0k4UFpCd0hBUmQzRnk4WDBkUkU1UlFD?=
 =?utf-8?B?OW1UQUNnYUw5cGR3Z216WmVGMWtrUTd4QlluMDN0ZHNnQXRsMDEzRGhxUmZv?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba217a53-85b8-479d-7249-08ddadfbc2f7
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 00:04:57.7737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6fvSiswd+H4kG3/FhjSaxFhNP3zgAZxJFp3ScmVC6z8Et/150npLij3qR00UNsv6AKgL9Y+gAWz4fNzFhoANPb7yuGdeuDX0yQ/VM8xoCkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7702
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750205112; x=1781741112;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UhAUp0A0CHLVJ3m6Dj0ndvc0jZPByULH31YDu/K1HI8=;
 b=Bc2nosf2rUiJapCDL+7Ys2CwiLze3QsyFGQgNi61SDwXZv4VA5rpq626
 ZBR6w/03TZMPHNrK9DrDph/1mU9Yt+t1btR6rtofMaNwfAqC0IbDr4qH6
 ApP7j11jCAMjizouqRbG1qUEOopkqWI4+V8NHHUf6E3JTlLHRYGzovK3v
 cInGUAekdNYx9K+UCf/XWlVCpgzYnVEz8Moj03vaEcRnN2fD/YQnfQIIj
 cDPB2pG34NlQSYadqdb1Uj+MALWBvE/wI6RXDBiu5vCk5DBegPGnzeb5g
 j9Cn0sHukT9kFrwGRAGJlMospJPWuP8QvWbbOBgrsJnR07TkWB4225c/z
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bc2nosf2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/15] idpf: refactor idpf
 to use libie control queues
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



On 5/16/2025 7:58 AM, Larysa Zaremba wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Support to initialize and configure controlqs, and manage their
> transactions was introduced in libie. As part of it, most of the existing
> controlq structures are renamed and modified. Use those APIs in idpf and
> make all the necessary changes.
> 
> Previously for the send and receive virtchnl messages, there used to be a
> memcpy involved in controlq code to copy the buffer info passed by the send
> function into the controlq specific buffers. There was no restriction to
> use automatic memory in that case. The new implementation in libie removed
> copying of the send buffer info and introduced DMA mapping of the send
> buffer itself. To accommodate it, use dynamic memory for the larger send
> buffers. For smaller ones (<= 128 bytes) libie still can copy them into the
> pre-allocated message memory.
> 
> In case of receive, idpf receives a page pool buffer allocated by the libie
> and care should be taken to release it after use in the idpf.
> 
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.

There is an issue with this approach that impacts the ability of the 
driver to force a reset. See below ...

> 
> This refactoring introduces roughly additional 40KB of module storage used
> for systems that only run idpf, so idpf + libie_cp + libie_pci takes about
> 7% more storage than just idpf before refactoring.
> 
> We now pre-allocate small TX buffers, so that does increase the memory
> usage, but reduces the need to allocate. This results in additional 256 *
> 128B of memory permanently used, increasing the worst-case memory usage by
> 32KB but our ctlq RX buffers need to be of size 4096B anyway (not changed
> by the patchset), so this is hardly noticeable.
> 
> As for the timings, the fact that we are mostly limited by the HW response
> time which is far from instant, is not changed by this refactor.
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/Kconfig       |    2 +-
>   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
>   drivers/net/ethernet/intel/idpf/idpf.h        |   27 +-
>   .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
>   .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
>   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
>   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
>   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   54 +-
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    |   37 +-
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   44 +-
>   drivers/net/ethernet/intel/idpf/idpf_main.c   |    4 -
>   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   60 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1617 ++++++-----------
>   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   90 +-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  204 +--
>   17 files changed, 765 insertions(+), 2500 deletions(-)
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> 

<snip>

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 68330b884967..500bff1091d9 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1190,6 +1190,7 @@ void idpf_statistics_task(struct work_struct *work)
>    */
>   void idpf_mbx_task(struct work_struct *work)
>   {
> +	struct libie_ctlq_xn_recv_params xn_params = {};
>   	struct idpf_adapter *adapter;
>   
>   	adapter = container_of(work, struct idpf_adapter, mbx_task.work);
> @@ -1200,7 +1201,11 @@ void idpf_mbx_task(struct work_struct *work)
>   		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
>   				   msecs_to_jiffies(300));
>   
> -	idpf_recv_mb_msg(adapter, adapter->hw.arq);
> +	xn_params.xnm = adapter->xn_init_params.xnm;
> +	xn_params.ctlq = adapter->arq;
> +	xn_params.ctlq_msg_handler = idpf_recv_event_msg;
> +
> +	libie_ctlq_xn_recv(&xn_params);
>   }
>   
>   /**
> @@ -1757,7 +1762,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>   		idpf_vc_core_deinit(adapter);
>   		if (!is_reset)

Since one of the checks in idpf_is_reset_detected() is !adapter->arq, 
this will never be possible through the event task. I think we may be 
able to remove this check altogether, but as-is this patch introduces 
large delays in the Tx hang recovery and depending on the cause may not 
recover at all.

>   			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
> -		idpf_deinit_dflt_mbx(adapter);
>   	} else {
>   		dev_err(dev, "Unhandled hard reset cause\n");
>   		err = -EBADRQC;
> @@ -1825,7 +1829,7 @@ void idpf_vc_event_task(struct work_struct *work)
>   	return;
>   
>   func_reset:
> -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> +	idpf_deinit_dflt_mbx(adapter);

This is not a straightforward swap, whereas previously we just discard 
messages knowing that we cannot communicate with the CP in a reset, this 
goes much further as it dismantles the MBX resources, and as a result 
the check `if (!is_reset)` in idpf_init_hard_reset() will never be true.

<snip>

Thanks,
Emil

