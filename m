Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0CD8FAE5F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 11:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E368413B3;
	Tue,  4 Jun 2024 09:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Hz200srBaQg; Tue,  4 Jun 2024 09:09:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B5F3413B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717492194;
	bh=Om8iPW5DuJIi8R9ZHTet18gOt7RFvKuZHRbsS8kIj1w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rrkJrErhMUmCzVH9w7v7s2TXqd9+R9b08e804VHyKS+xXsHn/OvBtk1lCP2ZZVi6N
	 BI+dgCN5ON0pPVjPJQF4o622KUdpcZvIceA7K+XTegl21wMTWtoX3Dw4oSJw2cgWR8
	 lRSVECfwu3iUYYUaozQpmfc22O9jpWOkDjxLJI9/dWflbOeCCDgX+E4aR1Wxrmr4AA
	 0YrdcQU47q+CeT+WO2ZwlR3Wx9RXSr1+4FfuNReTpTGrvikWF0OR4dLtcrU4yHi0V0
	 CylRlwqshpBPBji7RBqmeqre1TDeXsWBtqxQdLNOJO4+Tb9lzo3WXseD/l5QYzSq7U
	 RDdbkVRf+2lGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B5F3413B7;
	Tue,  4 Jun 2024 09:09:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDD391BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D90E984557
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:09:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfiHCPQaNKtu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 09:09:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0B2D84505
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0B2D84505
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0B2D84505
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:09:51 +0000 (UTC)
X-CSE-ConnectionGUID: nHoZ1275SE2Myeq5tvydyg==
X-CSE-MsgGUID: owE9+AnbSqGeb3tQrP+4jg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="25136999"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="25136999"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 02:09:51 -0700
X-CSE-ConnectionGUID: IpqsoWLST/ifR85Fx/0Zzw==
X-CSE-MsgGUID: GVLUcaWSSfSbVriElyidtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="42274586"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 02:09:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:09:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:09:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 02:09:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 02:09:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKMgo0Z8bimhiwitl5oSZaIHHzXqi96OqIxmstUK+e7+TfrDM8IAZstcHcGqP1buH335+nvcBlGANO/Wr26+iGQDoMi8vHyOiLONfZQ5yhBbHRolcUi6W/dy8jC7S9yZl4mV72n0qYLvnFmdVzjFsDmoiU+WxTz1WT4hqxsGWWuDkuxkPkbNP40BuC10quYBuo2cfcDfV1zfN5LL/fuTLY1UcMgMaBLcz37XiGBy3cZBSQ6ZvRNtBLluEEzEovadKowlm+8XyVSlw0Qsyzc9q4cpTlZtJlJxfF5r3d6Sg88rZmnBv5VwP1ZL7DszhGiDYH6nGdxYSyZJOLBsZGJamA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Om8iPW5DuJIi8R9ZHTet18gOt7RFvKuZHRbsS8kIj1w=;
 b=DCk5tjfuOt+DnXNkMipIl7/styokhuc/HBgFBV/jwIsxQbmM1Ie8mrNsMl3/pXcL2lCsFKo0U6hSgmx+hXEmoQ6jD29g6X5sEX8ug/HcBQDLNxRqWuYCL6v5qMsITDUFUm4Kg5Blg+2yNn4oitkncmBGw0+KIn1DXziM9I7SLJIqDNgx80F2fJvuW5K8TCOOGZ5Caf2t5ZwgM01j30ybcVV8oyRdizSo5hxhcTLYqC5VUKIC6r89gC2h7FXu3rNN+CqKs7oKvPfFfkQDERXUYrOof1Tbkx+R0Ertq1cIitkJvtrgM1X/Lgd+a7v6JiYhuzxt2QxhUMvgchpPUZTHlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA3PR11MB7433.namprd11.prod.outlook.com (2603:10b6:806:31e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 4 Jun
 2024 09:09:47 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 09:09:46 +0000
Message-ID: <1ee2b836-ffec-4581-b68c-60ca63d50b29@intel.com>
Date: Tue, 4 Jun 2024 11:09:42 +0200
User-Agent: Mozilla Thunderbird
To: Hariprasad Kelam <hkelam@marvell.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20240603123146.735804-1-wojciech.drewek@intel.com>
 <PH0PR18MB447415E48D0E77D24BE9A9FCDEF82@PH0PR18MB4474.namprd18.prod.outlook.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <PH0PR18MB447415E48D0E77D24BE9A9FCDEF82@PH0PR18MB4474.namprd18.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0012.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::22) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SA3PR11MB7433:EE_
X-MS-Office365-Filtering-Correlation-Id: afe13f13-06b9-4cd5-5a10-08dc84761486
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVAzNnp1dUJZUkp5MExTZHNZNEpodDBQVi9YKzQzK0UwQ05CL01DNE0xUldu?=
 =?utf-8?B?bTFoZ2xjVGUvWloxWHpPQUpFMUlyV0lEanRjNGdyUUcva01BQlYrL0YyYXVQ?=
 =?utf-8?B?K2s1S21EQnVHaTdxRS9ONVZBY094Qm03ZDhKbU9tMm9DRWRLWXBXQU5JRGQ2?=
 =?utf-8?B?QmNYdmRROXRpQmtMdi9yaG5IMWZTOXBWbTZvQ1ZhbFBKMkQxV2prZUZHYUVX?=
 =?utf-8?B?U3hUYjBZR2dGM2RRMCsxMTBuV1RBcS9xU0U5TTd2TnFFNkVhaE04M2pZWjd0?=
 =?utf-8?B?OXh3L0pYaEgra2lLMTVGREpGVkFUcjEwOFpDbGZMRmNHWkRrTncrTnYzeXJL?=
 =?utf-8?B?bEQ4SkhGRUc4RjRGVjlmWm9CbWVjMjZnbnhqT2pTTnU3MWJXeHl3c0NSdXNq?=
 =?utf-8?B?VWxxM0NyVkl6N0pFMCt3ZCswaVZab3FCb05QR0I0aDNLSHdyM0l5TWpiK0ZB?=
 =?utf-8?B?dzZkSjlYbkR5Wmkxc3F2akcwMVErQ3RrbEdwK3Y4RDhYcDhycWtPRmZtQ1k5?=
 =?utf-8?B?clNTSUN0UnlTZE10dGxlZHk3WmNoeklUZkI5QTVIOWJzYUR2MC85OHEyaEsy?=
 =?utf-8?B?dlVxWExqSTNRRTMxaE9Ib1V5RkZzTEViUFF0bHN0L3FNUE92TEUvMUszTG9t?=
 =?utf-8?B?Yk9MVkZyMDlaL3FBeFg4bmF6VmZ6a3FYWUZjS3JsYlpZenhHNE5qY2syMGRH?=
 =?utf-8?B?ZnRMYmh4MGxqU1JMWEkyNk1RSGhrNkY0QU5rRFhzZmVBQW55VVZhQ1ZBN2lW?=
 =?utf-8?B?ZFpTQ3JBY1AwcUI4Vnh3TE5lcDBhNjhjSmFYOWpzWmo3OUJjOWN4a1Z1ZzVH?=
 =?utf-8?B?QnZkUzVqSzF2Q0xnOG12VTRIRXBFaFpQZGptRHVtK3BBb1k1U3lnNVpIUjR6?=
 =?utf-8?B?TVVrcDE2THZnUUlhVUYzNUNEelBMM1VFQWV6NEpxRzJwS1k2dlFGS1VWdHBF?=
 =?utf-8?B?bHJxWlY2Rmd4emdSR0JsUnM1SWVIckhWRzBFdm1Nb1dYa0h2elBCaHdnRmti?=
 =?utf-8?B?djI4QWpicDV4Rm5iY3N1bEd6UHlpV0kwbW54ak5HU1RMT3VRVS9mK2xXQ1lR?=
 =?utf-8?B?dUpEbGx3cU5zNlN6MWxKVG1OMnp6a2tpdzJRRUtMeWorUUZyQlYvS01XYmxt?=
 =?utf-8?B?bUkvYy8zdWJZOVBoWU5Oeml5bE1VQ21qSnZPSzAyem5XOGMvQXJZenRja1Jq?=
 =?utf-8?B?dWFoQVgyMGN2VmdxMHVhV1F2amkxclRIQXBPc2VPV0pqTlRBMkZEV0ZOYkRI?=
 =?utf-8?B?b0VGRU9waHpOdXJyNjRYY2k2SFpFckZGWkxEMkJMdllUUWpabEFSYTB5d01h?=
 =?utf-8?B?bG5vK3lQaC9SRDRhV0d3U2taM1g4eDRKMVA2bXYrd29hdHBiOWxKelp5MEdV?=
 =?utf-8?B?SGtEelE2MjIxYXpvQlBsK2FmbFU3NGFkUDYvYmJpZlJHbFhYSThyMURTNlI0?=
 =?utf-8?B?UUJYQThQbEY2Z0hVeWlBLzgrNWgwMXpPV1RhL2I2ZmVPbm8zenZKY0lTaUc0?=
 =?utf-8?B?aHlmMWthUUJtMXNEL3NoNVBpYkZWc1VpNVA5cmlEVHRjNDZrT1N4bS84cjVR?=
 =?utf-8?B?RUtEelJJempKdmNETDN3VjBIRTdiTHlFbkRXTDJXRkIzMnlSWHZDNnpySFpi?=
 =?utf-8?B?T3BaYSs0OWY5aDlGc00rVHhKUE9DRFN2V0tFVGNhdmF5K2VFYjN4T3pGY0pF?=
 =?utf-8?B?MDZTeTZHYnd1WWhEaDJnYzVTcVM4djFxWU84S0QwdmxuZURqR2xoU0JnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V29OcUN6OHFQVlNLdXZDSjlJNFl1SmhVWHVqNWFXT1RCVE5jMTFIN2wzc3Ey?=
 =?utf-8?B?alhKVElocStXcEk4WGFreVA1VVJZQUgrZ0VXOUtBR0h1emhXaHVFOVRpSzUx?=
 =?utf-8?B?VGlQaFZjNUdTa3kxdklUbGVOckVrVzZub2NFbU9nZU1rZUM0VzdCanIvM3do?=
 =?utf-8?B?bFdRclZEUXVsT2JZUUJzOGVYSXExZjZSVUIrSUJDeFZFR1JIVzBraHA1RHFV?=
 =?utf-8?B?dHVaYUpweFMvM3NYL2pxZ0RCTDhxR2o4TDlIRE1qdFVYTmJUWWNKRStGU0hx?=
 =?utf-8?B?ZFN3THZJL3o1SkZwcDIvZUtnR05sZ3EzY1FCTU9NdUo0ejdoWHd1MEdMZEFK?=
 =?utf-8?B?Ykc2WlRKNTl5L1FVa3IxSlAyOVlhVVhCczBiVS9obld0MUt3WmgyTkFLY0xk?=
 =?utf-8?B?RFp1NnY4MlJURWxaQWplelJFNUF2Wm16cGI5UENMUUE3VlplS09NWGNpRTVr?=
 =?utf-8?B?N2VHalVENkxKaHVWUldFdGowMVFwN053K0U5QkhKOTl3aDVoc2U0NEJKNGhi?=
 =?utf-8?B?UFh6b3h1OW5sdE5XdXVpN0JPV00xUmlrK01zL0d5SkVQelNabDA4QzZucDF6?=
 =?utf-8?B?SlZtS1R5UTloWlBwNndycFg3Zlg1NzByU1pSUFA4b3orRjljcG5Xelc3UjRP?=
 =?utf-8?B?SXBIb1hxc0M4OUUyUjQyMTVueWxsQWxaSnBIR1FQTWxCaWpNNWRpTTBOTzBL?=
 =?utf-8?B?NHdrTllxSWR5RU1sWjE4cE1qZ09tdlBYVDJHZVRPcWdUTGFvWnpjVklNVXRV?=
 =?utf-8?B?bjV5WUpWbng0N015cldOMnErR04zTGhaa1o4RHk1bEhaN1pOc1Nwem5RNmdR?=
 =?utf-8?B?eXpkSi8wbzV4RXJqaWwvUm5FQkt0YlR6K045Q1FkcHpmZlNxdFZkU29ObVR3?=
 =?utf-8?B?eWRIdHVYMGVPNmRkd2lFTzd3UzI2OEtBNjZ0V0pGNXdLQnIyQk45Tm81SnJM?=
 =?utf-8?B?QTFVTHVseEFVRndwTDhmb29ZSTVRWkR6QittOTl4ZGZ5L1kxMkxIeXF1ejQ0?=
 =?utf-8?B?a2JUMnN2enNscU11V1VDeWtqSUN4cDlDd0w1T2F5Uk1UZlluK0hqWFdKUFJw?=
 =?utf-8?B?VVo3YUtvTS9LdFRDcjBvR0RBNjZhVFNvLytXRWNibWZJeVFqT0pVUVk1M1ZJ?=
 =?utf-8?B?dklFOUU5U2JYWUc1eDhlYlk0NUtPeEJ2c3hGNXF4U1ZpeGY1V1Jxck9UWW1Y?=
 =?utf-8?B?Q2tjQUh6VC9SNVdRZGRocXQ1VXo3T0xibmlFNGR6ZVVkOFZLTDNueEE1WWJN?=
 =?utf-8?B?d0tleDlsaENwTHYzSXN0ay80VDN3c3pnWkdMbzZqTWFyQ3M2MklyK3ZhQ25U?=
 =?utf-8?B?YUpKTUJBYXRMQU9mbjhidVRLQTRKenFadWFvUVVSczNnYkNNKzhOVFdTeEhN?=
 =?utf-8?B?ckF1RzZ6ZUpQM0xoQWhEVWxTNktPclF0R3Z2MElCT2drYmpRR1AzQlZncmRR?=
 =?utf-8?B?Qm13Q2NjUzRKQkdpYUZITHorMTdoQ09CSFFSSHZIQjJuVmdMUkluejBQYm82?=
 =?utf-8?B?am1IOTVHeE9aNythQTZMYlNtbHNIclA2cXI1NnN3MGE2VVlBU1RKSWVkallB?=
 =?utf-8?B?Ujl4NWVFQnUwb3ZGblFORWY3TVpKaFlhVjIycTNxNG4yUERkcjVYb2dkcUJM?=
 =?utf-8?B?b2kzaVMrU1h1ZldhR1o3TjBXbEZYWWZaaElEOHdIOFlTWGdwZHVNU2tGdjcy?=
 =?utf-8?B?aVQ3QjUzcU9HTkVLa1JVbzZmelpvZmNkT2Ftd3BPMnFMaXhWam84S09MNjYw?=
 =?utf-8?B?bDNHZzhvQnRsWEhMV014SkowWlJkYXBqRitRelJ4K0dxTktPSFJQL3l2Mmpr?=
 =?utf-8?B?enlGQ3p3U0hKL2M5VnkrYVQ1MnNHTmxFL0RzWElleGFXNFI0V29kLy9XTFkv?=
 =?utf-8?B?eHh3ZnBhRWd1NmhyRzU4Z0xsVzlnM0dCaWJsRzhCS2JIRUlMaWZSaTJJbnVm?=
 =?utf-8?B?VWZmSnVLTHZWR2tFaVFzSlg5WkZNNDRKSXB1dVhxUENneVhQYk8yZDFwUUVs?=
 =?utf-8?B?eDh3K29obnFIdHBuVVhhR1duekFicXpkTjcvaDc5S3grVFIrbEhBcnpzeFNT?=
 =?utf-8?B?dUpDU1hpUDRrUEFheGs1dldEcTFPVmxHS3BOU1dZK2lIeVZReVZOOExWa0VO?=
 =?utf-8?Q?rfN7xz06bG/kBc/cRxubjj8zh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afe13f13-06b9-4cd5-5a10-08dc84761486
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 09:09:46.7519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X5+tWXpYSzcuWaJR+oJ0yNMcq3WCy8KsBxyLzH5aD/E22LovUzYNrEW1yn0T/pKcl1uP6yVqArrGillaAmDKtfjuVSESE+HJ03IFbkysZog=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7433
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717492191; x=1749028191;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kWihgGg8r70Cm/u8+Rwh8W9tWP4hdu2crmd6p+cPhgY=;
 b=SVkOwOPvns72g8Yn4awDUMkoyFM3Nzu19YdBS544DOJKzlvaMWumLCGr
 bHzm8PNgDOO9HQxnCs/PWD1GQ8slBUH5sehOIOVOmvi+6JuPHI5Yy2I0k
 km/q6oonY9qNttP4yEj4BiAyF8d8YvJq77O7VLNHJ8YKlzrCkDGX9K5HC
 NgzLfmRHbKtlln26e4ZEmPwmCxKAdIWZDonAMzeliqn5GQbkSEuUJsPv1
 MKllOwgqRe8gYxIsvklD4EpB3H4joCBphaDuO3bHGfeu7BF1YVrlne1Ei
 PqByBpdla/NELyT7Enl9wmPAq/lxjXI9eO7Nkm8EkPIVs8GfuRLlIc47c
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SVkOwOPv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for
 devlink local_forwarding param.
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
Cc: "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 04.06.2024 07:56, Hariprasad Kelam wrote:
> 
> 
>> From: Pawel Kaminski <pawel.kaminski@intel.com>
>>
>> Add support for driver-specific devlink local_forwarding param.
>> Supported values are "enabled", "disabled" and "prioritized".
>> Default configuration is set to "enabled".
>>
>> Add documentation in networking/devlink/ice.rst.
>>
>> In previous generations of Intel NICs the transmit scheduler was only limited
>> by PCIe bandwidth when scheduling/assigning hairpin-badwidth between
>> VFs. Changes to E810 HW design introduced scheduler limitation, so that
>> available hairpin-bandwidth is bound to external port speed.
>> In order to address this limitation and enable NFV services such as "service
>> chaining" a knob to adjust the scheduler config was created.
>> Driver can send a configuration message to the FW over admin queue and
>> internal FW logic will reconfigure HW to prioritize and add more BW to VF to
>> VF traffic. As end result for example 10G port will no longer limit hairpin-
>> badwith to 10G and much higher speeds can be achieved.
>>
>> Devlink local_forwarding param set to "prioritized" enables higher hairpin-
>> badwitdh on related PFs. Configuration is applicable only to 8x10G and 4x25G
>> cards.
>>
>> Changing local_forwarding configuration will trigger CORER reset in order to
>> take effect.
>>
>> Example command to change current value:
>> devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>>         value prioritized \
>>         cmode runtime
>>
>> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
>> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>> v2: Extend documentation
>> v3: rename loopback to local_forwarding
>> ---
>>  Documentation/networking/devlink/ice.rst      |  23 ++++
>>  .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
>>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>>  5 files changed, 164 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/networking/devlink/ice.rst
>> b/Documentation/networking/devlink/ice.rst
>> index 830c04354222..0eb64bd4710f 100644
>> --- a/Documentation/networking/devlink/ice.rst
>> +++ b/Documentation/networking/devlink/ice.rst
>> @@ -11,6 +11,7 @@ Parameters
>>  ==========
>>
>>  .. list-table:: Generic parameters implemented
>> +   :widths: 5 5 90
>>
>>     * - Name
>>       - Mode
>> @@ -68,6 +69,28 @@ Parameters
>>
>>         To verify that value has been set:
>>         $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
>> +.. list-table:: Driver specific parameters implemented
>> +    :widths: 5 5 90
>> +
>> +    * - Name
>> +      - Mode
>> +      - Description
>> +    * - ``local_forwarding``
>> +      - runtime
>> +      - Controls loopback behavior by tuning scheduler bandwidth.
>> +        Supported values are:
>> +
>> +        ``enabled`` - VF to VF traffic is allowed on port
>> +
>> +        ``disabled`` - VF to VF traffic is not allowed on this port
>> +
>> +        ``prioritized`` - VF to VF traffic is prioritized on this port
>> +
>> +        Default value of ``local_forwarding`` parameter is ``enabled``.
>> +        ``prioritized`` provides ability to adjust VF to VF traffic rate to increase
>> +        one port capacity at cost of the another. User needs to disable
>> +        local forwarding on one of the ports in order have increased capacity
>> +        on the ``prioritized`` port.
>>
>>  Info versions
>>  =============
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> index f774781ab514..810a901d7afd 100644
>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> @@ -1381,9 +1381,129 @@ ice_devlink_enable_iw_validate(struct devlink
>> *devlink, u32 id,
>>  	return 0;
>>  }
>>
>> +#define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
>> +#define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
>> +#define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
>> +
>> +/**
>> + * ice_devlink_local_fwd_mode_to_str - Get string for local_fwd mode.
>> + * @mode: local forwarding for mode used in port_info struct.
>> + *
>> + * Return: Mode respective string or "Invalid".
>> + */
>> +static const char *
>> +ice_devlink_local_fwd_mode_to_str(enum ice_local_fwd_mode mode) {
>> +	switch (mode) {
>> +	case ICE_LOCAL_FWD_MODE_ENABLED:
>> +		return DEVLINK_LOCAL_FWD_ENABLED_STR;
>> +	case ICE_LOCAL_FWD_MODE_PRIORITIZED:
>> +		return DEVLINK_LOCAL_FWD_PRIORITIZED_STR;
>> +	case ICE_LOCAL_FWD_MODE_DISABLED:
>> +		return DEVLINK_LOCAL_FWD_DISABLED_STR;
>> +	}
>> +
>> +	return "Invalid";
>> +}
>> +
>> +/**
>> + * ice_devlink_local_fwd_str_to_mode - Get local_fwd mode from string
>> name.
>> + * @mode_str: local forwarding mode string.
>> + *
>> + * Return: Mode value or negative number if invalid.
>> + */
>> +static int ice_devlink_local_fwd_str_to_mode(const char *mode_str) {
>> +	if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_ENABLED_STR))
>> +		return ICE_LOCAL_FWD_MODE_ENABLED;
>> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_PRIORITIZED_STR))
>> +		return ICE_LOCAL_FWD_MODE_PRIORITIZED;
>> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_DISABLED_STR))
>> +		return ICE_LOCAL_FWD_MODE_DISABLED;
>> +
>> +	return -EINVAL;
>> +}
>> +
>> +/**
>> + * ice_devlink_local_fwd_get - Get local_fwd parameter.
>> + * @devlink: Pointer to the devlink instance.
>> + * @id: The parameter ID to set.
>> + * @ctx: Context to store the parameter value.
>> + *
>> + * Return: Zero.
>> + */
>> +static int ice_devlink_local_fwd_get(struct devlink *devlink, u32 id,
>> +				     struct devlink_param_gset_ctx *ctx) {
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct ice_port_info *pi;
>> +	const char *mode_str;
>> +
>> +	pi = pf->hw.port_info;
>> +	mode_str = ice_devlink_local_fwd_mode_to_str(pi-
>>> local_fwd_mode);
>> +	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_devlink_local_fwd_set - Set local_fwd parameter.
>> + * @devlink: Pointer to the devlink instance.
>> + * @id: The parameter ID to set.
>> + * @ctx: Context to get the parameter value.
>> + * @extack: Netlink extended ACK structure.
>> + *
>> + * Return: Zero.
>> + */
>> +static int ice_devlink_local_fwd_set(struct devlink *devlink, u32 id,
>> +				     struct devlink_param_gset_ctx *ctx,
>> +				     struct netlink_ext_ack *extack) {
>> +	int new_local_fwd_mode = ice_devlink_local_fwd_str_to_mode(ctx-
>>> val.vstr);
>> +	struct ice_pf *pf = devlink_priv(devlink);
>> +	struct device *dev = ice_pf_to_dev(pf);
>> +	struct ice_port_info *pi;
>> +
>> +	pi = pf->hw.port_info;
>> +	if (pi->local_fwd_mode != new_local_fwd_mode) {
>           This check seems redundant, as devlink calls set API only if there is change in value.
> 
> Thanks,
> Hariprasad k

Sure, I'll fix that.

>> +		pi->local_fwd_mode = new_local_fwd_mode;
>> +		dev_info(dev, "Setting local_fwd to %s\n", ctx->val.vstr);
>> +		ice_schedule_reset(pf, ICE_RESET_CORER);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * ice_devlink_local_fwd_validate - Validate passed local_fwd parameter
>> value.
>> + * @devlink: Unused pointer to devlink instance.
>> + * @id: The parameter ID to validate.
>> + * @val: Value to validate.
>> + * @extack: Netlink extended ACK structure.
>> + *
>> + * Supported values are:
>> + * "enabled" - local_fwd is enabled, "disabled" - local_fwd is disabled
>> + * "prioritized" - local_fwd traffic is prioritized in scheduling.
>> + *
>> + * Return: Zero when passed parameter value is supported. Negative
>> +value on
>> + * error.
>> + */
>> +static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>> +					  union devlink_param_value val,
>> +					  struct netlink_ext_ack *extack)
>> +{
>> +	if (ice_devlink_local_fwd_str_to_mode(val.vstr) < 0) {
>> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is
>> not supported.");
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  enum ice_param_id {
>>  	ICE_DEVLINK_PARAM_ID_BASE =
>> DEVLINK_PARAM_GENERIC_ID_MAX,
>>  	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>> +	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>>  };
>>
>>  static const struct devlink_param ice_dvl_rdma_params[] = { @@ -1405,6
>> +1525,12 @@ static const struct devlink_param ice_dvl_sched_params[] = {
>>  			     ice_devlink_tx_sched_layers_get,
>>  			     ice_devlink_tx_sched_layers_set,
>>  			     ice_devlink_tx_sched_layers_validate),
>> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>> +			     "local_forwarding",
>> DEVLINK_PARAM_TYPE_STRING,
>> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> +			     ice_devlink_local_fwd_get,
>> +			     ice_devlink_local_fwd_set,
>> +			     ice_devlink_local_fwd_validate),
>>  };
>>
>>  static void ice_devlink_free(void *devlink_ptr) diff --git
>> a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index 621a2ca7093e..9683842f8880 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
>>  #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
>>  };
>>
>> +/* Loopback port parameter mode values. */ enum ice_local_fwd_mode {
>> +	ICE_LOCAL_FWD_MODE_ENABLED = 0,
>> +	ICE_LOCAL_FWD_MODE_DISABLED = 1,
>> +	ICE_LOCAL_FWD_MODE_PRIORITIZED = 2,
>> +};
>> +
>>  /* Set Port parameters, (direct, 0x0203) */  struct ice_aqc_set_port_params {
>>  	__le16 cmd_flags;
>> @@ -240,7 +247,9 @@ struct ice_aqc_set_port_params {
>>  	__le16 swid;
>>  #define ICE_AQC_PORT_SWID_VALID			BIT(15)
>>  #define ICE_AQC_PORT_SWID_M			0xFF
>> -	u8 reserved[10];
>> +	u8 local_fwd_mode;
>> +#define ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID BIT(2)
>> +	u8 reserved[9];
>>  };
>>
>>  /* These resource type defines are used for all switch resource diff --git
>> a/drivers/net/ethernet/intel/ice/ice_common.c
>> b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 9ae61cd8923e..60ad7774812c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
>>  		goto err_unroll_cqinit;
>>  	}
>>
>> +	hw->port_info->local_fwd_mode =
>> ICE_LOCAL_FWD_MODE_ENABLED;
>>  	/* set the back pointer to HW */
>>  	hw->port_info->hw = hw;
>>
>> @@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi,
>> bool double_vlan,
>>  		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
>>  	cmd->cmd_flags = cpu_to_le16(cmd_flags);
>>
>> +	cmd->local_fwd_mode = pi->local_fwd_mode |
>> +
>> 	ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID;
>> +
>>  	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);  }
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
>> b/drivers/net/ethernet/intel/ice/ice_type.h
>> index aac59c85a911..f3e4d8030f43 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_type.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
>> @@ -730,6 +730,7 @@ struct ice_port_info {
>>  	u16 sw_id;			/* Initial switch ID belongs to port */
>>  	u16 pf_vf_num;
>>  	u8 port_state;
>> +	u8 local_fwd_mode;
>>  #define ICE_SCHED_PORT_STATE_INIT	0x0
>>  #define ICE_SCHED_PORT_STATE_READY	0x1
>>  	u8 lport;
>> --
>> 2.40.1
>>
> 
