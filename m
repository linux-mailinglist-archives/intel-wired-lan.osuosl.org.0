Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKwMC93j12kVUQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 19:37:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC283CE368
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 19:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 229598222F;
	Thu,  9 Apr 2026 17:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1AjfUxZOqwhx; Thu,  9 Apr 2026 17:37:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93DF28221B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775756244;
	bh=ffFuuH2CMjMmglfaJE19vBlGRm9flM+3yLt8k+y2qZw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ymtzVlU7GEFE6KCDbmDB4YKGLuW2rkXJMoY6fkRVahqxoSNeSo57QaCgDAIE7p2IA
	 xyOkMWbc/UzgjISnkVFRqjZWj/68eVpziHdSq+eTvhFWSMJ4NmRyrqKLRviYMvzWvz
	 qKI6SffjpFg6pLxmx5AAbeYICd+++C3WD/kBC5PgMQCirv/ygmndZfNpsOuEDHM5uP
	 9f9ZAeYIAjsjw+zfRr/O+BUX6etHd0H12LCN/hO2kgJf+ndBicjKPs/AWF8IKkYteY
	 P7Jc/8tmZdlMaGnvFARvhgdIDeXVF6TPR+CUtaNzAep1kWe78Fht1maYSUl+j3cCST
	 PXhIvXzuzcV8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93DF28221B;
	Thu,  9 Apr 2026 17:37:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 46B4A237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 17:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CC0C40425
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 17:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85bdb2k-pqOz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 17:37:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C60540426
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C60540426
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C60540426
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 17:37:21 +0000 (UTC)
X-CSE-ConnectionGUID: +UUbhzofR2WQzXhXgPm5hQ==
X-CSE-MsgGUID: wLnh6O4XSQqnPgqVQ41mPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76659678"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="76659678"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 10:37:21 -0700
X-CSE-ConnectionGUID: mvQiG5ITTGOwaaXG/vo4QA==
X-CSE-MsgGUID: jHJUrsNJQZijB5b6zIjXkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="230523575"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 10:37:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 10:37:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 10:37:20 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 10:37:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZu6pfVEY5yqo/Im+HRR7dMrYLPerpptQKs9Q+cUZnCSQhTvGGLXmPxxu9MCslAXeIOaFYpWyEH63Z5KU/AuVPsffC9Hy7m9l8/OEsLjt9M9EVyJI1/UDfOIwx3YGseD6QkOmMkG6RbCm9AZQcgdm/idAGQKp09uJfFYCI8TUIYIiZDONmSACuICC/aIOmgZVaqHkG46oX6BQtzeJODMfGwbP3vFmQZxnFRoXhhK4VCvlGxhh2kHXwKhacVQL4TJJcnyNNbKI++bffmC987BXTaH6lq9g5t7vGIvJlsa0YCbbxfTfTXM3n3c2XVOcRgr0/FN0svC7xJBTUZinrTzlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffFuuH2CMjMmglfaJE19vBlGRm9flM+3yLt8k+y2qZw=;
 b=CisZ21RgXrunkueFyzfGRetmbolw6AFdrxCQhq5NGNRcKvTIQDIYRnB1BHowsg6adsv9Hbt6zxqzyZy1Xi1wzO4lBQGR7+cZ+o/+uNRpqjFbB2qtz9M0H5BTVMo6p7o99WITnECg3nvbvs2D3SD7neQjqKK7RBPVzWtkoZYBaBUr2Odj2hXsFq2xyAvTNaGmnyLk5DLZeEs/2BUxkGK4gJfIWJYnAf4lUUaTiw9a4u5xucdwYMO33SSEpeHG+YefavzfWctRAtAS3SXGAIZrx4X/z5uBtOWOCqvATsfnySZNVimbLwQf5LBPAxn2u9pBg3O709TZUbkJN8FkBSKu/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS4PPFABF58482A.namprd11.prod.outlook.com (2603:10b6:f:fc02::45)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.11; Thu, 9 Apr
 2026 17:37:18 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9791.032; Thu, 9 Apr 2026
 17:37:18 +0000
Message-ID: <3c12dc2e-a05f-4681-8c3a-3b5b901e1a66@intel.com>
Date: Thu, 9 Apr 2026 19:37:13 +0200
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <sandeep.penigalapati@intel.com>,
 <ananth.s@intel.com>, <alexander.duyck@gmail.com>, Lukasz Czapnik
 <lukasz.czapnik@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-11-marcin.szycik@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260409120003.2719-11-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS4PPFABF58482A:EE_
X-MS-Office365-Filtering-Correlation-Id: 8940078b-9a03-4cf6-be15-08de965ea577
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: CPYyKNlUeMbZgfo8jbZE+0a/UUMl6o2fF4/C1cpNlQRWu7x4H1mCKcuI6HlfQXirqNGZNMT1AChLlt7J5tSJDyxuO2oKfuAPpBYS8/1xXQb7Lj8l8Av+T9c/GAHn9Rh6+od3fj0mFiTXT8G9kaZC2jO53nsZvqmdhSi65TEwdPefhi2lIAlMORIBfiZCNZf0R1gryvgQUbVN+bflGRdNQ0Ecjmm14wKoOyYOf2NhkkvFcXfJnWLYMQoCrhehoZh3/xGxI8wezVLvc00kI3ErMxyjgXliQgBBqIHfeBBg3zsrguxm5He27ltqM9QBCoT7tuc/B0veNgPgF5CrJilrHvedn5K5VyiU3hQcWUeprvYox6cIVPcFE4R8Rqdz2+vP1xNANJixdzeLMcCa/uESaahiYhm86rA6sQb3ttVfbQyZdt99zC00Z4lis6YbadDCN2fwed0oLw/UsVgQMRIh6XxPIyxXOx+Hm4BAD2X1hwI7U8alBtGQSe29Eg2yMF5Ot0IqRgvlF/0T5B8M6bIz6XHSumPe3Ifh/0XMOb9b/SfXdDpfCREnWlT+E+dvjiY6XGFoy33eaYXll2ercuV3o1AbGt99LQFyZ2iy7uZoe2B/bun3ByoKQ3zf+3KbWQu3agdhYiG9ADvRINDhIyJs/U/kjzS3jX4/SAvU0KH0gTtHIHvaQJXVmFPUMRMtszivsYkUc6fcO6m8lBYACwhyrIumf8pQE7ZXNMTnXal9gCI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S25PR0l3Ri8yTmJoYnJac0w1L1ZvaGw2bGtIcmlGK2VNNjIzYTE3ZTFrck9u?=
 =?utf-8?B?MmZiRGhzWC9UekhzQS9seWZMd0czWWtmOWltSytkdDNmeTZVSHRGdWxnVzVC?=
 =?utf-8?B?UDNkQmVLdkpLZ1Z2eWxpQTFIY0hRWElNcTNKeWZROG9yUy9ubWsxblVXbTlt?=
 =?utf-8?B?WXRsaGRWS1Y5a3l5TkJsRENSWjEvbUV2WGJiTTE2ekRmTURXejVRdW1Wc2Jo?=
 =?utf-8?B?Ui9oaXFCQWtZdFUyRC90dDhISUJ6S0kxeFoxREhhZjFSZFBML29hLzZLUEVQ?=
 =?utf-8?B?UXpoN2ttOVpzc3MyOGE3dE5ObVFJVWVNUWJnZHZ4MTMrcGdxeWxYUHJLT3ZP?=
 =?utf-8?B?Q0tJdytHYmY0QmtNbHo2T28yQjdqSjVlM0ZpZ2I4azROZkU2b2JpY0QxYXlU?=
 =?utf-8?B?eTI4TTFFbytEMXdlSFJiTEFJR2pPVnVXeEVXRk9COURaZXRydWdYNWdHOEVz?=
 =?utf-8?B?cGRCc2JUdmZjb1hFT0xTMXhvVCt0SEVvb2tnN0VpYVBwcHMzMzdCNUNLam1k?=
 =?utf-8?B?UHhKQ05oV3VRREJhREJTR29XQk02SDlsdFArQ1UxTFlJNnZBdnBWOHB6Rith?=
 =?utf-8?B?bTZ2QUF1by8rTmNvT09tQ2dnTzYrdXQxamZEMFhIV1dMQUdlWWhFQ3JLUDlt?=
 =?utf-8?B?ZkthSDRwSmlaUzhNY0Q4L3Q4dG56SnRmbm9aUXdHdW1IbUVLYy9PS25LTmpO?=
 =?utf-8?B?S29wdVI1d0pYVzFRaTA5R3hjSGR6NGRNN0hML3VMQ2pJbEFqN3BidXJzUCs3?=
 =?utf-8?B?MkxSWWF1QkpHWHVFNWNsYjVOWXRGNk9lSmtISVNUOHZBSCtFYUV5VDFkRXlh?=
 =?utf-8?B?SXNTVlRHVWUvUGFUR1RXZWhNS2x1SEp5elpKbi82RkRCR0pXSEd1eEhWM3R1?=
 =?utf-8?B?RkNNdnIxeHpYYnhUTjVxVk5qbERmZDBNVC9ZaXdqYnhqVEpKV2wyL0pFU01S?=
 =?utf-8?B?VzZBK3hyaUZwK2dFSVBsVml6K2RQZDc2N1JhZDNCeGs4b2dCNEJXUW1zRjVa?=
 =?utf-8?B?cGJMVXhnb3NkUmNFaWIrYlZiOXc1aFdKQkVUdnIrNVZYa3o4VU5BWHVkS05O?=
 =?utf-8?B?UVBlMS9kU1YzR09xbk1WcHJ2aEdxaHY2RmxPOVBUdzFobDhWZjcwSzJiNHZh?=
 =?utf-8?B?MjN3cHg4YlBOZEd1dG1YeUhQQlBROTVac3ZVYWVTVkFpYkVVSXBnY1BkdWJ4?=
 =?utf-8?B?cTVwUHI2d2ZiSjMvU0FscHRUKzBZZk44d21MalRsNStPYWh6TDFaRUhPQWFt?=
 =?utf-8?B?N2Y3NWRldEQ4NHNiQXZadGViZ3NKM3dXVHF0cEN6QnF3MTFyZmxId215a3pW?=
 =?utf-8?B?THc2R3VoSWYxOTljcTI3cGhYbjhyUDB6dVFkSForcjhsdUJ0Uk0rd1FqZ3or?=
 =?utf-8?B?cW05MjJ4b2NGZmtpQlBjZW14Z1lublRYcUV1MnV0eHdNSVNCRHJOb0hPcndi?=
 =?utf-8?B?cG9jdTc0SWQvc2VFNzNpSWlyU3NDend4c1owRDBiamRCeFFDTDE1MGJERis4?=
 =?utf-8?B?RlNQbHUrd3JqdFJ4TEhBVG1Ya3NLaG10ZU9Gbk9McUtWUGVYVG9WVEEwcm5M?=
 =?utf-8?B?dzNQeXJicXQwOHRJVVZrek1xeGpWVDc1bytXak5Ha0xoazNLQWZUc0RDcjM1?=
 =?utf-8?B?cFBOMU0rTStSNHZ2Z0Jvbjl6cEVnc2trRzdjYnRhUUZwVlFaQWlKaEZVQW9s?=
 =?utf-8?B?MUdlN0MwZWc2ZzFVaGZBNDhSdjh2ejdyZUl5aTc3alNvWDhITEpEa0FBN2F2?=
 =?utf-8?B?SHVrcjIydDlwUGtlcmp3TkR5SUhZdDBsZTFhTXRSYXVwbDBETWhYeEhabWlk?=
 =?utf-8?B?NWRlZ1A4WDE3SWVzU0lrdmFuYWV3bC8vL0VpZ1BlalpYUnlCK2F2S1A0NXVP?=
 =?utf-8?B?akVUeVpjbWx3TjZyZjlkRkxnaS9qSmpNYm5ZYjdVU0xCNlh4VkJ5L2k4aW9a?=
 =?utf-8?B?a3V4d1FZRGxzUDYrdVVIZWtxZ1JqTmhqNVZPV3htQ05VRU1kMHNNdGxPRmhQ?=
 =?utf-8?B?SlV6Mi9ScktJRGhXTWhMZ1Z3V0ExRzBHdEpwSS8vM2RNYmd2WDhrRkxvSlVa?=
 =?utf-8?B?VjZVcTNkN0M0TmsxcnpGUnNFdE9VNkswbkhmVUtpUEF4aVplZjUrYzU3dXZU?=
 =?utf-8?B?Mk5FSHRoTkRnZDFzYmVqVkl6TXIwSkcweUduS0xUVUswblRqbEhneURpN00x?=
 =?utf-8?B?aWJVSHRSVjZtNVB0NzVXaDl1SUNHTGZEeXoxR3p2ajRHR2FkcTJxc2QxZGhB?=
 =?utf-8?B?djlWMDVLYm9lL1gzV3VXcy9ySkJoUERNL0JQT0FJeGNpZThQcTlvUTFjZmpy?=
 =?utf-8?B?dEgzcjV4cGhzOTZPZVVPR2RNT0I3ekFMdEZYMXZ0ejNMM0ZXWmNCSXlaY3Ew?=
 =?utf-8?Q?ez0/VMtVrSCEujRk=3D?=
X-Exchange-RoutingPolicyChecked: AS1/uR48u5K5YjiuYhVQlkBJgzPaCIFE5gofPEP2fNoc0i0JdeSkjS+TbThNOPyuYcsQnvHL7GpjLnvsrm60g/ZmHxFsFpiZY6xmPbKFr74FxvA2B7qGIJoMBhqeGUyOHFSeftSekN7cGuflC+jofeLBkAQ2eDLtaLK5/OMY86FzU+wn7O3x8OYzX8GNRcA3hvvkjP8DYu+1NzJkHIgBj2z6/U/Tvr22tM+BgGJ78YCvVlHOEMiK/u4Vgf7GfuxC2UX2zJP1qZm8/BCYSi2p8sA2Q15LPmYiu5Av98KiUz/M7sy5Qz7GbKcBeHoj11Egn7f76/fKFAEWIdiQgCVY5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8940078b-9a03-4cf6-be15-08de965ea577
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 17:37:18.2818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H6SSKWg/3hjTFh16VNkkRmi4vb2mpTMxNBncXm5Rn16u8eOEPWj+GUVgCO3j5fmVAvHFatiWvs6PsYSupNuygW/Jc6TZsczhcImX04oMXK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFABF58482A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775756242; x=1807292242;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SuBpOPVqiQvTDt9+ldZvKecWBqG2E+80NWXgX/H0GS0=;
 b=fVV5W+No51IjdJ7c3BmwL/FqIYk3KfeqQ4bR5xvaZThkJr113BLR2FE9
 tkTa/STddKEEjaPfhgL8avy6CRZUwAq1/9G8nDWs3qfJJrEtBGSiLD8Du
 z+LUyC2rF2b/kam9lQxd1JtyaXe7IIwDhKKMX9IiwjPuqWf1Z2OuhkN08
 KsssmN389Ak/4To6YXyuiRr6alVjIC2Bw1zTpMNjbMiVv6SDBBpOBmHfb
 HrQ1gp5YsBmrUH1aFX7XQidHpibaZ18eupwzSmkqX+f96q8To/C1kTBu/
 WW4x6vm0KHo/2KleoB8h7uvx/HPTA+x+a/xLhiJj8Zs4zP88a4otUF+88
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fVV5W+No
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: use ACL for
 ntuple rules that conflict with FDir
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:lukasz.czapnik@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CAC283CE368
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 14:00, Marcin Szycik wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Flow Director can keep only one input set per flow type. After ACL
> support was added for ethtool ntuple rules, the driver still only
> selected ACL for rules with partial masks.
> 
> That leaves a gap for rules with full masks that still require a
> different input set than the one already programmed for Flow Director.
> Such rules go through the FDir path, build a different extraction
> sequence and then fail because the existing FDir profile cannot be
> reused.
> 
> Detect this case before programming the rule. Build the candidate IP
> flow segment, compare it with the active non-tunneled FDir profile and,
> when the input sets differ, offload the rule through ACL if ACL is
> available.
> 
> Refactor the IP flow segment setup into a helper so the same logic can
> be used both by the extraction-sequence configuration path and by the
> conflict check.
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
> * Add this patch
> ---
>   .../ethernet/intel/ice/ice_ethtool_ntuple.c   | 154 ++++++++++++------
>   1 file changed, 107 insertions(+), 47 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
