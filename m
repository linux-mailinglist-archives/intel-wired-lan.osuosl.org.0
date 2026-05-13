Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kA4RCi3oBGqnQQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 23:07:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADD753AD5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 23:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0370380EBF;
	Wed, 13 May 2026 21:07:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ggHGzAvTbtmK; Wed, 13 May 2026 21:07:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7980480E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778706474;
	bh=ewRLmHkzRAEnMoxZGUnphAscLoXoMYgS20WAGgQdRRU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vALaKaSiNwNJ42b70CXMspjuXZJOsvppd/RZhDgSJ8syDPOEgDYl0Ic0ujrIKPgKx
	 LsEVN+hqfFlPHyRhFOCkPjlbdQNt+NnpfyP0PpTfZ1xQbkktXQRLkCrLgc+T318rSj
	 DwPuO2NuPn3ssg+/3qchC6/6Kg5nVZf04RJtXWZMk3NK3swBXr+TlvQZx9qFCt31TO
	 29gPGpqt21B8de9tZgpiyIohRlKB9J3kHyUb1vaoIpcIKBF+qpy2OMjwdT1LPdhrnA
	 wC/HHoxn9B/clhIB0UyUKJMYNOkeBUNDPIdtuIKEDw2RKLI0sQ5yAUgT9ZYPLHCZEi
	 EJGNEDKO4eGMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7980480E4C;
	Wed, 13 May 2026 21:07:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DA2F36F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 21:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D9E040A4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 21:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBN99JzniIG2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 21:07:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBE5540A4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE5540A4C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBE5540A4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 21:07:52 +0000 (UTC)
X-CSE-ConnectionGUID: hPZV9xbsRie54K56rJ0efg==
X-CSE-MsgGUID: ZswhZVLvRPGefXbYwRWCTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="97215271"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="97215271"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 14:07:52 -0700
X-CSE-ConnectionGUID: OXiVdtwNQpi+DzaKBpt1ng==
X-CSE-MsgGUID: xtEp7xOgQbyNtUb9BXzVfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="268550104"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 14:07:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 14:07:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 14:07:51 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 14:07:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JYNICfyHmOMfGXrPMdbMebRPBJ9PYuGP9VaU8Du4tk53nfmdl/soWsHx8tCtQYo37IgIot8qnNqTwDHqNCwKN63UMfZaHnhx0F3RYfoFnyt08uXglc9zTQHb4ZZg5FuxcV/jvEUn+spT0Y9DU/q1MbqScuW3IIfQsvhqP4rNubXzotchHSLwg7jzEUVzTOQRCT2l95fJasoxKApY40snflgHQFMqDbE0vWgI8sJi9IEoskzUKNX3XzeFumYzgF8YkFii3M7DoO4XenLwKHoPa/UmBeC0+ytwe+JYUmhHAGDDsYdhsPlhetL/1d3eW9e29/5Teq9na+d3ZR3RyVJOjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ewRLmHkzRAEnMoxZGUnphAscLoXoMYgS20WAGgQdRRU=;
 b=CHyLv2/QpQlsm6S/eeaXibbtSwhMTI6aEM4QYbqvZUd1ydGcCDYQnsdEjNwxcetru937VoW3kaVM/t3gVlgv4qPJj/0HcgmjXPVKRdvBSmf50Rli+2nVzwPRw/yFU5cm7ek1tAsXiwLkMRcQQ+zSgjyjnoheWFMyrrMtBI6cKWTkNYXey9R6G4a7DMGKoEz7BsWSSA6aDc9Gs+d8fS79gC6ZooHn2Ys9L7uiVm21p150Q0V50iirPEmzmsL4GXAjT/3PpjWmMNeiaXU095epX4IeoSh85zWS8hF3A+EvWPv+mkEg58P0854cDpEIscfSAX+FyDo/FqdB6mpuaNaOiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8241.namprd11.prod.outlook.com (2603:10b6:208:473::9)
 by SJ2PR11MB7501.namprd11.prod.outlook.com (2603:10b6:a03:4d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 21:07:48 +0000
Received: from MN6PR11MB8241.namprd11.prod.outlook.com
 ([fe80::cf79:ceec:e277:9d46]) by MN6PR11MB8241.namprd11.prod.outlook.com
 ([fe80::cf79:ceec:e277:9d46%7]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 21:07:48 +0000
Message-ID: <775f497c-7ae4-4484-9990-4d610bdb77be@intel.com>
Date: Wed, 13 May 2026 14:07:46 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Mark Craig <mark.craig@intel.com>
References: <20260430123050.131101-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260430123050.131101-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0120.namprd03.prod.outlook.com
 (2603:10b6:303:b7::35) To MN6PR11MB8241.namprd11.prod.outlook.com
 (2603:10b6:208:473::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8241:EE_|SJ2PR11MB7501:EE_
X-MS-Office365-Filtering-Correlation-Id: 39141c40-8c56-46eb-ad1d-08deb133afa5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799003|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: B0PSPmaLEGBztZJ+XrAxIkB0/bQelILwucaExP2thVNGF+BJBQAkNlBpCv+GJnCQLpnm1vhIt/VTIWNU+4d0a0Slox8qPfuFb2JfuhPJ9Jg/2EeJwVjy1cLBpj0QxsbuvxJqTD5KFTBk/7mA+gvkDTAw/l8BKPmwehVJRsZ2EgQCoZ8GVZYMxZCwmiB2fO0YG+jP2GIeQ9EO7jI5/VyOIUYboF2PTzj5FKjTBK3pvBrq/mIDRHVMR1L7C38uoUFrP+ZnwHx2P8Gl4vti9nLKnz0t9Z84FLRkePFe9sJ8OIH5iBg07b8KXq2CkVaDmuZdVwTGEkTBX64uLKKHlqmbuyrayDRGQD6/iFPPUB5GW9IsY6rzoVqB6/926O8Za/dtwQYUtDT4zbkUWaV1xYGdtn/OHC/nHRGi1TVP/rrxTjtVcDArDi+oU3meFPyr6TKkoE3226aZCFiUGpxUtZGpuOd6HbyhL5uwymHC1b6RdR1Ke7YS0lhQOhByGlwvj0uyCmxeAUY1rkPXDziOmXO/qVDSUhStwPDXR9Fd+SITDVrkb6XT60NfBFdNMBsTrHus5U5ToXTsz3t2gT9GEHGl9D4QMZsc2xwMD9cIV1xGKiH5XElU99GfgpE5CvLfs6fDvIYJc36kqbdMI317/S9wchaNN5Ioq0UUxr3Dk99mN4ORYK7Yb66L3uIsr2VVZlH9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799003)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFczbWdRQUYvemJ0MU5DRUZId25VUWd4VG9yajR2aE9CVnZXcStTMVFOOVFH?=
 =?utf-8?B?a3VPVWNYNGtkLzA3dWVXbkJwS2VzZ0Q2WGdoQ215SjlVbHo3eUtCZjVScVYv?=
 =?utf-8?B?ei93VnFDRGFhQkM4cjRYZGdSamoxN2Y3T2pSdXNVZU5MaTdaZXE5c3FlYjVm?=
 =?utf-8?B?T0RoWDdrZ0ZyYk5teTRKTXI0YWRoUUwxNnhsUHJIeVAwb2RkWkRYblI5TFdZ?=
 =?utf-8?B?N1NBNGVlUkE1Yk5VNXp4Z0JMdlREckFKSjFhRzR3UWdoMzhkMGRwS2d1NG5R?=
 =?utf-8?B?aitjbDNMeU0vOE9JVGhZVHkwT3pxdGxuSHR2enFUSVJWNnl1TlFVMFJ5SmZJ?=
 =?utf-8?B?ODV5QzZod1Q5cGFvZkpvUDlTVjNMN1hDMm52ZVJjWFlkM1pLWlBValVLbjRa?=
 =?utf-8?B?b09xVU83c2d1eVg1UEc2R3RmbkdXN3gvZTdIblpTOVBVa2pHaHlBa0k4bU9t?=
 =?utf-8?B?UXNlczUybHIzQVpLVUl4S3Zlejc1UGxWRUhXdGZkdXVPRXBYM25kNTlIOFZQ?=
 =?utf-8?B?Y0ZhTWhoVElacHRvcW5QQVlnMk1NWWtDQysweHRnY0JzajNBZTVHdHRpUmVn?=
 =?utf-8?B?ZmJINGpOMjlGMVpSRkcwTnBrZ3lkOVcyOVFieVFMcUhNVTRhbk9ha0gyWlc5?=
 =?utf-8?B?K3NxMWh6V2taVGFreWJWbU9JdmVXMXYxc2NrL1ZwdWs1MmpsVnlxb0hlb1Vq?=
 =?utf-8?B?ODk1bnJTcnZQR3ZlVlJITWNxSGZ2VlRiVjZTRmZFYjRWYlY2V3BEZFRPV3BH?=
 =?utf-8?B?OVRwSk56Nm53ZnZBdUFFeDF0NzlsVjR5NVB4V1M0dVN1dHh5Mjh5VldnY1BO?=
 =?utf-8?B?bTcxSVVKMnBaSWpuZHBaMUd0eE9NMXkzYW1HcDJGVnZOTG1qdTdzVFFSYTRt?=
 =?utf-8?B?cm4yOGFMN2kyMmN5czFFTkdSYktGbHplNWI0bExZeURaNnp6bTZFL01MQmhU?=
 =?utf-8?B?anlJVzRGSkdxbW5NK0duZnJ5WGZQM09CQ2c1UnFxR0lkdWg3cGpVeUtPZlVO?=
 =?utf-8?B?OW5xY1BmNFFVVVZwc0hEWDgvNERSNXRJaHEra3lYT2VUQjdiVE0yTVB6b2tI?=
 =?utf-8?B?dUQ0REs3OE5jbTg5eFJBSjc5QXNUaEhuVGZncWdkeXBGWm5pKy9YaHpnaDNh?=
 =?utf-8?B?MGxpRllWVG93a1Q4L1YvRWJZVU9tRlZTNzRDK1YydWtFWWFzYlZHci82R3FS?=
 =?utf-8?B?Ym9wL0UrWTRiMHU0K3VGQXRlRHI4THdPZEsyZk9nWVVlbmhkMSs2TmJSTi8v?=
 =?utf-8?B?TFVyYjlPaXpnV01uZFlQZlc5UktoV1JDZTZPWkx3VUVSQXlKWXk3WUlmNll4?=
 =?utf-8?B?TzN1Mk9lL1JTNThaSm83Wk1LSkhUUzhsZytCOFhvY21EdEliYkhhZFZORmIv?=
 =?utf-8?B?eVdnT3JqQ3QxQUtUREgwT3FqVlU0YlZ1T2dnNkNCNUpRRzlPem81Y3hnVHZ2?=
 =?utf-8?B?SnJSTyswb0sxTDlsYzcrMUJFU1RnQVBsdUt6cXV2aEFDOHVPZE1LSlJhbFA5?=
 =?utf-8?B?TFg5d0ZubzZDMzVmK0tLc3R3L3FZYXJUR3ZYTUR0VVBwMnVxS1dLUUtYdE9X?=
 =?utf-8?B?TVpOWVNETG9qcURIZm8vQzBWRWluc2RhekNlaFp5c0FPdFl4YTAra25hUm9y?=
 =?utf-8?B?QkZhaWFmUmErbWw3SXpQUFFHcHlaUmJ5STFGbU1XYkUvMHI1bXl6amRxVWNa?=
 =?utf-8?B?SXVJUXFFbFpWNFZWN1RRR1R4U3NReUt5YXpIak9JbEh3ZzcwVWJ2SXZMVnRS?=
 =?utf-8?B?SnpBVmFZV0VPRHZveW5hcGtvK3JHckNTZGVnT3NQeDFQU2tYRHB6RUM5aVZM?=
 =?utf-8?B?bmxzbmVLbEdTU2xGZHk0WjQzOFp0NmEyK2UrSTdFS29lNEV3OUpqUXpIdFRB?=
 =?utf-8?B?SWFEZjVOdDZ2Z25oYnNJamk1dmNPTGRCV0hwMXZ0OHRheGVoWXBFWHRaTzJE?=
 =?utf-8?B?VldFaEpVVVZ3OFFMd3kyMGc3bDhxemhZeXZUdlo5NnRuSmZyaCtORGJyZHJr?=
 =?utf-8?B?b2Qvc0FPemp5UjZtYWVURm1TU256VlQ4blhIZURoQ0hCSmdteE80NUVXNG9h?=
 =?utf-8?B?SVZCKzdKSjlMRmFaOFgwbWtVZWRNa3Y4UWFFM3pqZWdLbGgzc2VZSnB5eFhB?=
 =?utf-8?B?MkVOY0x5dmR5WUl2enc4eTRhOVk5VUR4OHpaMkVmdnRnVHFRbjJ4STNVSmFn?=
 =?utf-8?B?N21SN05RZ2RsUVFuOFpWcWJPbEhZbnQydDFtTS96YkZaeXAyMjBOOWZDeVZU?=
 =?utf-8?B?UVZOSkNVQk9xWUhtMCtVeGprb3ovdjdYS0xqbFJvWnVaaVY1anUyUjVkY0FX?=
 =?utf-8?B?ZzRiMWxHajc4M05FWXIzc3dZY2Z2Qm1Sdi9DT1UvUlVSOVRtTUxVL3lMclNp?=
 =?utf-8?Q?bYCa7NfQE1N2srdE=3D?=
X-Exchange-RoutingPolicyChecked: S2mvp+YnYrWmYZ/YxiPo3KwCG5DLfp/pQiWMAn9sxr7DQxIeoNbjJI1CGceeKOA5S8eNZTnkDnGtc7q0T2SU07dF1UQc7jcERzIFYJnkUj8rZ8DUjSfwoME6XJU7fOxQFxPU3SDUEMTWUjkNIzO+AhcmbyTpJdYO2P/NFg269h4xbjkHVEVmonKo81/UgxHeYuDC2tyXRLYUP9MvZgJnHVus6AN3HJ3k2VSVXJUTdawlkHDV6FcqYcYt2qlck5hEeENmg35Wx6RxqX1ho83wHC8XpYBm6/u8kuSHZ+30Myl/IFk9QbHv19wwTPN8qPcVvl/SLwq4NWhdfN+b/5jU3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 39141c40-8c56-46eb-ad1d-08deb133afa5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 21:07:48.3475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kUHgB81aSNavZxcAIn10tXO+xRnhlIgQMFLaAo/ljB0YR5KijnXfFYhi5rUGlKuqDfu7zcpz+XqekYcGSQw0yS+F87kUzDazXpHIFWypZl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778706473; x=1810242473;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WHVAgtdgggvR3wqD+JNgbmkpI3S1LRgpJp3gJoXviXc=;
 b=UPIZCOurlLNAUFu+QpXG1AFErC2Lkh69+MPorqiochitiy21grL09wZG
 8cjC1N7FX/9xPhtTOvNadHmDSBjvJOj91pSiLWJub7R8nwHu2lTvLXqTw
 jLPphPEQ1rndPaRc03forF7xm91Zmgmf74HazqlHO1BC6k2HU7fiMyv6h
 nelvWztXSQn/E8Mk7nbwFz3BgJZqo628XctPS3pDXhZECGu+HvjrI6Mgm
 YA219Vi901bU1S2LREblvhvD3DCOA5FgeKLt6B4lR3fSGFvoL2xotDb4C
 umSEiNSH4H/XlIbG8AaTsiUiw8YLXACGRSxgUSkiy+FM5XY0TePADyskd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UPIZCOur
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1] ice: add DDP COMMS
 triple VLAN package 1.3.2.0
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
X-Rspamd-Queue-Id: 6ADD753AD5B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:mark.craig@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



On 4/30/2026 5:30 AM, Aleksandr Loktionov wrote:
> Add ice_comms_triple_vlan-1.3.2.0.pkg, a variant of the ICE COMMS DDP
> package that enables transparent passthrough of a third inner VLAN tag
> to a SR-IOV Virtual Function.

...
> Signed-off-by: Mark Craig <mark.craig@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   .../ice_comms_triple_vlan-1.3.2.0.pkg         | Bin 0 -> 1442692 bytes
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   create mode 100644 intel/ice/ddp-comms/ice_comms_triple_vlan-1.3.2.0.pkg
The WHENCE file needs to be updated for the new package. Running a 'make 
check' reports this:

	E: intel/ice/ddp-comms/ice_comms_triple_vlan-1.3.2.0.pkg not listed in 
WHENCE

Thanks,
Tony
