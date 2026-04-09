Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBnpMZCG12mwPAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:59:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6673C95F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B507D41097;
	Thu,  9 Apr 2026 10:59:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTXi-nZ3rYvZ; Thu,  9 Apr 2026 10:59:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBF8E41099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775732365;
	bh=DTP741ytYKMGYn/kEwzo7p/e23VVHATxmckv/FT0BMM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Prx1NGduIvppSbfgIVQ8Un+dHsC4e35wgiZvm1AI52jcBm3QdyMbHwtx7k/fUN9Z6
	 /uOxiH+NHl+nLNRuZsj8CNLtHLHOmaiJseGzD313eBVaN9Z02J4bM+M6JRFE7JqAUg
	 VnAksIL32W5CzGjk36LBCoLYAiOy+xDJIzxvtDPkXhCUo9/hI8vYyFJc+z9RmrVaTa
	 VERUONo9BEV5hhtD8nEDj4OYhk0FF/Gw5wol4kB2t3a1QpA45/DVHRfrDG+ziQ5H62
	 NmcPeO1ngMoNEgoxj50LCa9jt3MboabnVlbpl2bXZEyLWmHh0ofHaZv42HicWbE5Hx
	 ak+aQyNvvRX6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBF8E41099;
	Thu,  9 Apr 2026 10:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D3601F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12DA760891
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:59:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eh1wirvE9Wr5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:59:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0C09D60807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C09D60807
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C09D60807
 for <intel-wired-lan@osuosl.org>; Thu,  9 Apr 2026 10:59:21 +0000 (UTC)
X-CSE-ConnectionGUID: SuutyBp2RoqrFrhQ3krdCw==
X-CSE-MsgGUID: f7ICnmqbRdeDdzn4ykGp2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87431316"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87431316"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:59:21 -0700
X-CSE-ConnectionGUID: 55Q9Wj0NROC0OHR2nvTOEg==
X-CSE-MsgGUID: FMuxLBCBQXK7dOzUX58gUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="224434808"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:59:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:59:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:59:20 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.13) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:59:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bGfMEcO1nNbWl3WZrtzM3kWYOmFXnFSxWWgvapjdb2hryzQmjwhzFuUNb11aRvCfoojAEPDLK5X4C0B5eFP7W/RZDYxtu9nOBLweUHnr62Nm5P+WXLYwP9agS3to1k8K/t5z7OQh6KvpCRNu6P5TJOAuGcgFDyjJQ4YEovUC/9NabckYlyfDsuoqn88Kd7BVBLtgG/9YCS+si0AlkjZkNTGUmNs8FtdxFQXZOQ1EIRefZXmlllQFY0IOzmrLBZT3wIfUDGDSjg6RmjQ28GfZ0b95/xWtm1k21wepEGQMGM3dyR0xfUbh+eg2S0H++p+DFLbY6G0EQ46aBRRzfCY1+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DTP741ytYKMGYn/kEwzo7p/e23VVHATxmckv/FT0BMM=;
 b=XehRyqjfseyXiCNb8r4SX0JBh9aCyRga/zR1NVSHaKtr7IcYUA7bp3MjBcJC5p5uxxarpJ0yn+OcgSFjNWhxa0o+8HnbIDjh0JGnQP8v3wkAQbtBP9m830jxRXt2oJkpHJslNnMb4QJW9PBDDTfsWPUbRcsLkki0bNXp8ALHAdw0ZAOO+BQxUIPsc6ysslDf6xA2IKA0GcUEifAMmzv+LyYYeCRwmir44IvxArTReXexSOLEORRaIX1kVcPYy832MKRWp00sL+lqcqKs/FKusJFLxlAS1AUNRTBhRUPvRL3Fm3lRnqa+YD/e2BGBv+hI1f95FN5tpC6IuDIRAbQGww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by LV0PR11MB9862.namprd11.prod.outlook.com (2603:10b6:408:382::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 9 Apr
 2026 10:59:18 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9769.014; Thu, 9 Apr 2026
 10:59:18 +0000
Message-ID: <cc7e0bb0-5341-48e9-a162-08c3e42c08cc@intel.com>
Date: Thu, 9 Apr 2026 13:59:13 +0300
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>, <intel-wired-lan@osuosl.org>
References: <99b7e469-24e8-4f1c-ba2e-6c3438ed1aaa@gmail.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <99b7e469-24e8-4f1c-ba2e-6c3438ed1aaa@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|LV0PR11MB9862:EE_
X-MS-Office365-Filtering-Correlation-Id: 324e047c-a77d-416e-4474-08de96270c1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: n3jLxI99pr73P++BSMK3Hnbe/Rn8mZ5lbdaBAlQYVfqNsu16GNhAii6Tt9ITsR//qItumCgvpxSBUwIJsH5YvPADPVVSs1MaulzEb1zymXdGIq1oSssuk89vkQD5aBgLhQ6SKgtDfJibur4EFgiFw8i1tkDP1y5O/Jr98aK4FYVUzksZSaJFqyGMugr3EO7At92y4SB2ImemaXqsmzWUc9tK2OYMWHw9qi4JMwIgdOoiDKKwKQBkMitQzUe4qnof6EtorP/nFMeh5x5lQw9hSSvg/PtkfyRgB9GesrsCTJqwH4jgPyvcNlJOsYUAOVxOs9KpvrVFnYTQHTglynT/khBYeU6/DEoQuMJ4kojZRhQuAe1aO+NE9KK8SBhD3swftzp49BjKmoFVK6yyXt1z9u8O+7LpOZiHyIvlT0PvV+6HwuHXDMWW7OMPIgeZhJRyvG2kSfd9Jv+AeP6P5gPkFBnXaoX968zghagZuACiuHqfrAFjbidupK8xk/ADTol90eccKdgPDk8yXrvcvISBcoPWM2NmV10EB0/9TAui/fp/zJLcikzGshqAw53DgDD8I6uok8KiaTqoGX/kvsIDGjsp066RK3EMvAwe6UPiPV99wDlvr5UYjxD4deKxhGrQ+UDkdZ1zlHmbMT4HyhmbFNYjXu6GcWY6R8EsmFNRzIgTqoQhVufQWVG+ze4RtczMGh46hEZLQ4bijuwLaMIGT7Epi2FWSSWcFHDtdH/7YxE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mk1pclhOUVdYcVhVWkNHa0ptK1AvZ3YyV1dSUFJRZ3hjRlJ6VHFDMlVaa3Zo?=
 =?utf-8?B?Wi9uTmZ1blA1T2JoSW1ad3plZTZtVnl0Y2EwWWtBcUwrVXNIVHhUZ1pRL2hX?=
 =?utf-8?B?U1VreXF5LzE5Q2drNmlrQS9mVVg3Q1NHTldFV2gzRjFBWkpRQjl1QTJWVDVw?=
 =?utf-8?B?NjZTRXlxYnErNGFDUVJlTEFPUUduTU5vM2JQWVR3RTZ4UVpoeDFoZjdxR050?=
 =?utf-8?B?Nk82ZXlSeTlydkp4SFBEb0Z5V2VFak8zWTAwaTlpSFVHNnJUd01Iem9aamJB?=
 =?utf-8?B?akxrQk9MeUl1bFlMdXByam9jOGZsUmQvR240TG9yY0drNGhkSnNaV3pRbFlG?=
 =?utf-8?B?WDhMVzdRMkNKV04zbWRZMCtnK0VyVXB0d3JHVEM1eW8xWk92QmdWOWxQYXhH?=
 =?utf-8?B?UmQzWmkxa0Y5cnJnWno4b2VpeXkvajFhRW5XZ2IyS3ZoelRWKzgzQWxWRTlV?=
 =?utf-8?B?YTZ0WkhuU3JDdURkU3FZZDlDOUpHejhUYk9Ta0JEd3FWR1Z3OFFpaG1CNWl5?=
 =?utf-8?B?MlpoVm9tbVZ6M0VjVUR1bEI0VUhKc2ZhenNNajQ2RktLQVFhVnNOQUVKc3BI?=
 =?utf-8?B?MzlTNEk4MSsxNzhRbEdyUnJ6Y2tzVWpFTVNPeHFmajZhT3ZIdC9NRzBGNGhL?=
 =?utf-8?B?YXN0RmhwSW1YMzZ5Z3VnMSs5SW5BTVBrTXNmNkdOQVZDV3BJS3JLeGFjMWNh?=
 =?utf-8?B?ZzU1N0NrRDJmYlhEWXlVMmE5SDNjVVVrRXFqcCtzN012ZXZyL016dUpuTm9X?=
 =?utf-8?B?YXZkbCt3LzRlOEdJRDhGUm1QN3ExT05RaGlwVW94cUVRS05oL0RHR2tYK1I4?=
 =?utf-8?B?Sm1qVVhBeGp1aUo2OWs4UFFvR3hER0JjcmpJOXJWZWpwUjNYV3YzSUtUUlZ2?=
 =?utf-8?B?SDluSDdkcWozcjFZNDJlanZTWEY0bE1wejJudnZVeVdrNDlTWUZidTlwK0pO?=
 =?utf-8?B?RVFzYlpkM1dZc1Y2WmI1bmNhRHY2UzgvdDQvY3NQMldYQ0phRCtmQ25DT1Ez?=
 =?utf-8?B?dnJOeWFjcWpoS3RhK0VFV3V6bThBSy9GLzJHdEJZd1Y5b0JsbkVOVHAzZG0x?=
 =?utf-8?B?d0hHWlhIQTdGY2VSc0FvdWNQNHlrTFcweGlzWFJNQWZFdEIrRVZBSlUrMnpr?=
 =?utf-8?B?VjJ6L1gwdFR1LzZkMnRJT1dYUjRoajNleXBIVFpHNDg0NGl3N1hTbVpzczF5?=
 =?utf-8?B?QkhqRkVWV1lZQmhjQ1BRNUpPSVdhUUtxcjRFUGxrT2wzVmoxZk1Oc2h0dFpV?=
 =?utf-8?B?TzhGMjZtaVV6a1BTbVpUdnRLYUUzNzJuWTFqL2plOVcrOVpxV1U0VFZrSW44?=
 =?utf-8?B?ZDQ0L1BOSkswT1lIQkI2Y3ZmVitxekl3MTNGOEhDaDB2aFlNUUJBREhJaUd4?=
 =?utf-8?B?WWc1YWNjVDN4bXZVRGwzeGtmdTlPVHVxZmtTY211RkJpNVpYd0N5blFFVGVu?=
 =?utf-8?B?WXAvWUVXeDlSTThwZTNhNnlLeTZYM0pYRnhKRXZMK1Q5c3pHSEJaSWlVcFBw?=
 =?utf-8?B?WExtZDVKNURkVXBOY1M1QnRmUzM2c2o3U011a0hCQitwNTd1VHppT0xVTnFS?=
 =?utf-8?B?UU1RbEJqNnpxdXZQc25GOXp6cGM3anU4MlA1VTA3a1FudmFIVnk2MlA5c2V3?=
 =?utf-8?B?dDF2cjN6ZmdtOWdYQ0hwMGpQVDZjUnhOaXhaaUFkeUJOazZtSHRqdm5TakNk?=
 =?utf-8?B?bDJJVjNvQW9QcmFRd2p2M29rSGpnb01uY3cwNzZZanRmMUFzZUpCVDdSV2NY?=
 =?utf-8?B?cEdSeU9jb1pjUGQxNVJLMUFVN0d0blh1UCtLd2IwckdHYmJ0ZWZNZVEyNlda?=
 =?utf-8?B?UnJsS3UwTThoUGhndjlWVERJd20vM1o0aWlEdjF4dHNqVmVuWFVJYnpqMHRo?=
 =?utf-8?B?MWFQWXpxY21BR1VFYXNYU283T0N1TTliZEM0UFdDamhTR2FkWnJZKzN0Q2lm?=
 =?utf-8?B?amFTakxnalpuclJ1WDd4N044cnh5dnJ4SHhhdmxFSkQ3MDE4NUZBNUxLemNr?=
 =?utf-8?B?NTdacDdtOTRLVXNhdjhzMkkwTnpPdmYxMFRPWWJvOERJNkdNQWxZR3pUVVNz?=
 =?utf-8?B?enRBbk4yTzVTOTNoeXcwNG50QnFzeStwSFE2a2Z1N2xkNFp3TGNkRjdXV2V0?=
 =?utf-8?B?aEt3SGxndnlsRm5LVWN4TCtWZmNiakpjSExXeWRTTTZKVmtrajRMdUJ4emww?=
 =?utf-8?B?aU9Ycm5tSHY0eUR5V0Z0ZTlnR2txYWJBdHIzSXpCdEtTMSsrWm9PMHRmSFZ1?=
 =?utf-8?B?c0xRSXF2eHVIdDZYWFZaSGpmKzB6VjBweDN2VEtmcU04SWh0MGxPNFpWTUpL?=
 =?utf-8?B?UHVScXBZc0dlU0E2YWkzQ0lacEkvcWVQTk5CaWdvSlJZb2Rxc0dNUHhQeU9z?=
 =?utf-8?Q?aZ+08pXAWLCttkRw=3D?=
X-Exchange-RoutingPolicyChecked: Ce9uPyDYrwUrlom/beeZ510QZFUJYlykJRhvKKhIFZnWiMVNJN1WFnNgHrYMD5vuoV3nVNu8dsLg8qZX/8e4ilo8rr4eIQegGs1nVQto2Mhb4vwnmTV4xo5/TEGO+ZXxgywymbiPgFEQd5hcqV8kmLtzOgAmWpbzN+0ymQ9+ep6MkPG5vNPid/sPgmLfWgC9M5XUe79HsJPz+xs5g7HhMNdyjXxqUzvbisVQ3MVqeYuZKPmnHxxdnBMMPJPUh9p6d6qBHIqHkPngXhLfyMGUdViNq8HztZBk1IbjwlwpslGL76YawQRvq5LAOifG6AD7VlbVZkXTASOFkSTStAHe+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 324e047c-a77d-416e-4474-08de96270c1e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:59:18.7361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zr//uFzHaS0ba1uumIN8DgZphGbAbzR7taALkj0s2aqVeGMX4NUbfWzNhLeKSxKz/hjluj8SvUtc0dEcKy/TC/3A4IeYX1Z10+jpUrCC0vQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR11MB9862
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775732362; x=1807268362;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YcJjscFj6lavSNieycMHOFfM0FV72TmDUHGC4QDiCTU=;
 b=joiKF8I+HmvvnO/ChxWrqLfud/ghtaaq1Ne8lufpb5g3dHG/2nXTad5f
 lnpP9yInl2vcGJuyrCZoa/S6YSNxSg0R1kum4tPgqgzUGN6GIPfcjhevr
 0nrR99Z8FRX28N0OCOE5dmOWiykthkDgtUdNRljPevnhLIeZtlnCtyuQ1
 V5W+KDL0+nsHTSN4c5uLGM26G/HX5+Kiu7srCL3nbDB3f25DqtQrNU9lr
 cD/9uhUxpiGcaZ3UwEhzH0lJrjrQJqIGIL47m4m/Z5Ws6pLRD7or70Z/x
 JmFh85VWSmELAAQTZ/2ehDaAZIn6SWna16dck/vfG+cLc1Rhi6oUDxi7I
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=joiKF8I+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] e1000e: Unroll PTP in probe error
 handling
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 1E6673C95F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 23/03/2026 4:21, Matt Vollrath wrote:
> If probe fails after registering the PTP clock and its delayed work,
> these resources must be released.
> 
> Fixes: d89777bf0e42 ("e1000e: add support for IEEE-1588 PTP")
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
>   1 file changed, 1 insertion(+)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
