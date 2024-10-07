Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15253993971
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 23:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF19380E1C;
	Mon,  7 Oct 2024 21:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NEpkQ_d5BehT; Mon,  7 Oct 2024 21:42:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8829C80DDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728337347;
	bh=1aCzvAsakAJ/cl/WXa35qejRKchFbia+oLwngxytUR0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GCdc5Qr2kfaVfz/qrsG8ZmumUIrAurLMO2i0/zVcopjoLMU/3eSaSNKmdN2Zb/WSA
	 0yJkFUddT2lt/yaK+RSIQpYZFL+1Z1lhJ8OACaHpfsFTRWVNsOId9DjYXPbi8hRCe0
	 uRrgFyG1IbjKkklZ/ItrQiGh0K8YXOXzitaWxYD73q9qdIcVhBvLoC91mx94ttJZWU
	 JmUUc8LZ8XpHunA7S0JeNfWExitUOmwirYF7aObPVYRn/6ylZV+FeHg6GjaSahE1dY
	 q2XQ8ba1OGOJkyTD0ER5CqSxb4xTJ0zdD3mYIdWtuj0urckn5KbSvPhtdNh4yhmhKh
	 M+rwz8iwcqOug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8829C80DDC;
	Mon,  7 Oct 2024 21:42:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 522E31BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F87840042
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:42:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y0idXppVONxp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 21:42:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D45F4400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D45F4400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D45F4400FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 21:42:23 +0000 (UTC)
X-CSE-ConnectionGUID: FOtwQ2JBQcGCY6L7IVuN7g==
X-CSE-MsgGUID: 1lo4gKNZRyW9V+WOoGPquQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27675300"
X-IronPort-AV: E=Sophos;i="6.11,185,1725346800"; d="scan'208";a="27675300"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:42:13 -0700
X-CSE-ConnectionGUID: htgY0xVYSGiBhLQg4iMGOA==
X-CSE-MsgGUID: svR9oJqGT32NFWta9e66Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75448839"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:42:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:42:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:42:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:42:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:42:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HtZzcjyrosYVGhahwHT20V38La3gTfXk3619At0yrJqwNtDurgrZoUFUh7Ly/iCoIkxWnaiQ238jP9qHK7bvfPLlWYd9wvRu6IibYLPty7PPTjFCNFo9bNU/XeCj0Pk9ld8D4witU2aM1vxdbZadNH0/w5zU16iOAAcXDurn4gGdatgS67J5wItPK1kY9jicN5tY47voaHFM58NgHmEqJUwSdFhdHp38dMJxAhoH2Lih29bQJg0iavVEQo79sa46uFnyXfbVNQ0+z8gkJRaAV+1UmaPyDKHBHPiAed2UPjsQW5vlNjZCbomNNSx4hLs6FZ5S8rUhtUVfrUFkkiCB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aCzvAsakAJ/cl/WXa35qejRKchFbia+oLwngxytUR0=;
 b=sEPry2ci24nKciASHz6T3BcpXM6R3fqHWlajRrzHErWh75dCrWLLVG5KYYNF0ieOfWTS8SM6F4Z1Ungl09UQAQPM7zaOHDuSLAiaMNs7aJ7o69hfgYOSRoCofutzZ4awOfEESDy6K33YXL/ojwkmgX1H+2DgqvWFkt08fnolmrSJw9kOwxwQ86CCalQPeRhX5HUEEuMChJrQOOLZRDZ1Co30iApub7FnB2RoOxvA2xEvSAlGpFYnYok64BBa5HuiBQViAxLLH25C6Ni2b3DEG+Z/0bld7ZGKUGyUhNcohvGppkQxytWzhTYZpQiDTofdTrOk5gu7JFUZB1qGSDEsPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA3PR11MB7464.namprd11.prod.outlook.com (2603:10b6:806:31b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:42:09 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:42:09 +0000
Message-ID: <0f4a2226-b4c1-3440-12c4-19ed36e02979@intel.com>
Date: Mon, 7 Oct 2024 14:42:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Frederic Weisbecker <frederic@kernel.org>
References: <20240922222420.18009-1-frederic@kernel.org>
 <db2c96f3-c35d-42ee-a4e6-5233ccbac7bb@intel.com>
 <3ad7ab07-d91f-a3fe-4d0f-5305ae05e65a@intel.com>
 <ZwO4CrZ_c92ZUseg@localhost.localdomain>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZwO4CrZ_c92ZUseg@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA3PR11MB7464:EE_
X-MS-Office365-Filtering-Correlation-Id: 453be3e7-9a1b-4e7a-31e6-08dce718e511
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTg1Ymdua3VJbGNQZnhvM1V5QlpLNDZxajNjTXdwNEY0NGtIU1VyQy91V2k4?=
 =?utf-8?B?cXZCdmtxdyt5TjFvd0NZcDJkbU5Ia2pPYW9yc096YmRUdXBMaU84TDRDUUoz?=
 =?utf-8?B?VlNUQkhUb0c4cGJweUYzUW5zQ2NLQkkrdXVQV3c5ZTZRNVkxaEl6Zk1PbDNL?=
 =?utf-8?B?UDIrZlVzcTNQTjBjblRKQTNUUHoxNmdTTEM3MmVrQ1Uwcms1V3RZTWlTQ1hL?=
 =?utf-8?B?NEhZYUY5eGJmV1hYaWhaSEdlMVp5a1hIbFNlL3VUTnF3Z3J4eEV4V1kwK01K?=
 =?utf-8?B?Q3l6ajI1M1VMeXFHaFRYLzNjMUo4NVA3RUtxaUZ1cmZuUWFkRlRwZHA4VzFQ?=
 =?utf-8?B?ZkRhcGIrSituaDB6aUkzLzZVSVBWdzJjSGJOZGgwQTA1OXRLNTA0QUU3d2or?=
 =?utf-8?B?dFNVVjFXWmJ2K3BQcUdYbmVrYzZZN2I4VHhIcXVVakVGeHlGVytFZ2VmQjBF?=
 =?utf-8?B?WlpLNHpJWnlHb2diOWE5UUY1T0pjUldqUURYQkg2bjRCQ0dTVzQyeVJOUUNy?=
 =?utf-8?B?NFJLSG1xdU9wYjA3VDZGMjRobTJ5dngybnpyVjZIVk9Id3ArZHFFSUhIWjli?=
 =?utf-8?B?cVFLUmFQRmVoMkRJVm52Nmt1V1ArL1ZtMEZPbm9XT3haS0QwWkNFZGRCR2F1?=
 =?utf-8?B?MzRnK0RvN3I3OWtoL1RIcGdicEgvck9ZL3N2bGdnOVJpbmZ6TmNJRHZ2VFBZ?=
 =?utf-8?B?S3RleERXd0ZaQklXOTNHdWNYektSWDJkS1lWTzRXb0hOUDRXZnd4ejMyVEVo?=
 =?utf-8?B?RmxwTVpDbkZiZGNkK25Ya3lVcnYwekdFL0dWM0ZRNkVKaFc1QUdBaHYwL3hU?=
 =?utf-8?B?K05hemY1STIwcXUrY0k4SDVOQlBna0dMUE5KN3o0ZEVSQnpyQnZ2ZXY0TVBl?=
 =?utf-8?B?dGtIWlh3Q0d4cHB3azdNeGJBWFAwNDhHengxeGo3NmFtNFlzTFA5ZWFiUzJG?=
 =?utf-8?B?aDViY2Z6bHd1K1VPbnFyYXNHTXJMTEliSUNCcmhEdG1jS2lHKzY4NHl3V1Bt?=
 =?utf-8?B?a1AxeTJWZy8xNWIrZU51QWlQdUloNWNQVDIxR1NDSWVMTytxVlFHNmtJOU5H?=
 =?utf-8?B?VjlBMGgxM0RUczlvRnc3c1kwQlRGSVpPM0xraS94TWJSM0JNSGtlVHIrcGNV?=
 =?utf-8?B?bTl4bVpLRjZtZkJvSHhlK1ZCTVdqbHBzL2cvRnJ5R0RXbkxGTEpCMHJuSWFM?=
 =?utf-8?B?WUNxUStMQjBJN0MvS0FqQ0l1MHllVWEyTm14dGZkRkRLZDBhcyt1VmVRSk9z?=
 =?utf-8?B?dzduY1lQSm9aNVNENmFtUUhnR1B6bXU4a3NFNDlkRlI5OUZhOHBaUVFacCt3?=
 =?utf-8?B?Wjg3cnJTaDQvaEgrRFFmVWthVkJWa1JpVUFnQ1dTdUtleDhub05TKzloaDF4?=
 =?utf-8?B?MWMzdk1NN25naUZMU2JiY245L0NvOE84ZGhjYkZFVTZGOTlERXBTNWhJeE15?=
 =?utf-8?B?WnUrTFAraXdIOTNTSzZxb3A0eFhIeG1kY2dDMHNlamM1blJ2aW9zWXZoUmhM?=
 =?utf-8?B?U1ZsQitsSHpudWlSbGpCZ0xwMGdCZ01hUVU1RkdnaENDSTdScXI1NmFtWFZz?=
 =?utf-8?B?YVZtOXNkcG1FSDlFT3RJRWpLQnlwUGNDMTlFK1ptZHQxOGZpV3p3a21uS3JY?=
 =?utf-8?B?VjQzWkJ0L3BIelJYV3RKN0dXU1JLZ1BtOTI0T3VlTmJIalRpZHRLQ1NMT1ZR?=
 =?utf-8?B?b2JpMEIwRU5xeFI2TFhpVUFhejZVRlhLUHVJOE5QVk9QTHNEN2RNYjhRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUoyK0t1MkNOd3B1cTJidWRiZlVhWjZpd3RXNTI3UGg1bUU2dDlPRDVjcTFR?=
 =?utf-8?B?ejAxdWxzaG05cUFEY3U1bER1RFEyNndqKzEzelorVFV3ZlRPK09kaUpPNDBw?=
 =?utf-8?B?Z3JZSitLRlhGTTRWaERTZ1BDRWtXYlk5MkFucE1TcS8vSlZNVzBRc010YS9T?=
 =?utf-8?B?QUxtL1VvV0FJb3N0SkhmNU8zTDc0NzJENU5KaVFxcXhENTd2YmM3N1JkZXVW?=
 =?utf-8?B?SVdsR1B1VEVFcHlDY1I2ckJRN0NiNkxJM2hOYndqMEVuRmFxd0dPR1MyMkVV?=
 =?utf-8?B?eWpyWEk4SlFCbnRrd3ByMWpIL2JvOEFKZlJmZVB0ejZWTWYyRFBxOGdJQ1BP?=
 =?utf-8?B?eG1QQUlQaWZiV2FuYUx2T0hyei8vQUt0V3hET2JrNUZMV3NiRHpsM1hhdndV?=
 =?utf-8?B?V201Q011N09jNmIzK1ZlVHZDQWpoUWpiRHRhOXBodmwvRFdxM0FwV0dmdWRW?=
 =?utf-8?B?U2xJTUozVW9hMUIrYUJFZnF4K3M4M2RDKzV1cURObSsvNWdleWZETFZEOCtt?=
 =?utf-8?B?bDlWUHdBNlhmc3ZsMHFHV1VMTmxpWkI4NmN5a0NCa2JHMVZJalhWUFBxQWlD?=
 =?utf-8?B?cXp5RHo5QUZmcXVJUVBmNFFPOGJWb1BmSDdIcGdOTGM3YVh2cFZCY0ZhME5j?=
 =?utf-8?B?TjFwQitxRW55ZnVjVmVpVDNyWXhVaFhaTWNuTDJrZXE4TGZHaC9mNUl0eWxQ?=
 =?utf-8?B?WFA3Q2p6aDJDOWtxcFFJTU9lNFNncXBCZDExU01GalN0VmVIT3BvbG1xR2lF?=
 =?utf-8?B?N2pESk1PdXlHOGhNZW9ES1kyZ05RYkRxVXFQUy9yWFF0MTMyalByeWsvVUdL?=
 =?utf-8?B?aFZWREtPTXZIZkJlYk9SMFh4V3luRkF3d2VFelM0aXNCSHVOUXNiYVZILzdl?=
 =?utf-8?B?ME9tUmh5N2cvdHhOdDJaTFlVa0tkVkZxcExCdFlZNWR6SVZ2WGpySHNOWXlK?=
 =?utf-8?B?RDVvNG13NWhBdzZSbk83TSs0YllKemNpVnRSWTJOU0NTUy9jeHFrQi85a2Rv?=
 =?utf-8?B?YnhpdjViNWhVNTE1ZWhwbHg4V3ozeUtPd3JaeVhWTHkwL09HdkoybXUxSlNa?=
 =?utf-8?B?Tm02Wm5JTGxCSysvZHZ6ZjF6R1pGWnJnNFZtd3RUL0d6enNUcGV2K1h2Q2VC?=
 =?utf-8?B?UUZtZWJrQWtPMFFoOFlHMktSQldSVzVvWXFPdmJYQmd6bWI1VFFYdnNVanR3?=
 =?utf-8?B?dVN4aG1YQlpiZ2FjNjdhVW1EYy8zYTJzendOb0dCV3ZtejVUYXhXUVhES0VO?=
 =?utf-8?B?SGpMTlZVeVFkK2pPQWtVdjVybE0vUmZlbFJHWVk2bksrdnhqZWs2Wm9EekxI?=
 =?utf-8?B?KzMrSzZROHFMMXBQSmxaVzZrR1ZBOFkxZWkxemxiL3NEVmlpZ3RFT25RTUFq?=
 =?utf-8?B?UmdJT3VKMnQwV3RLWnd3djd4KzdWcm5VVHc4VG16YjUzNktRN3dXbFo5WG02?=
 =?utf-8?B?ckN3NnhRK2F3YzVCbkN0MmdEK0dTUzUvUXFJYTZSZ3NYNXRKVVJoVFQ4Ri9v?=
 =?utf-8?B?OGRreDIyWWE5ZDI1VkRINVBEaitBenFZUHdHRDFqUnFVUkd3RlhQT1JLQm9h?=
 =?utf-8?B?RjkxTWVjZ1ZtYmJOczdoOVNrWWVWT0NkWDJmSEtnM1hVV3Y4VnN6YzFCOW05?=
 =?utf-8?B?eFp0U3ZJQ0laSFdqQWJ5WG5yTTR0d3kyeXE0Q0FGMWVWMm5PdkdiUkR6YlBK?=
 =?utf-8?B?eEZ6UHF5T0N3NlF3ZWwxODNNRTRPS3JNekhJUFpHdGV3ZktEbHpqWVVRK0ZU?=
 =?utf-8?B?MWlWU005TVlJRURtcUNTM2dzT0FQd3dBR1prNXdBM1k4ODdZNzNyTFo5dzda?=
 =?utf-8?B?Wm1QV1FWc09YN3FsSHFnMWgvamRpTG9yNHZSbHkwL0hGcUI0dnVMRmZ3aFJQ?=
 =?utf-8?B?MGR1Y3A2Yk9XeFNBZlJBTGcwZjVsRFFJYW1DZkhUMUpXRXhMNU5qTi9yUFBm?=
 =?utf-8?B?Q2JMOGlEV1VrcHBlZTdvREVmVkUzTkovQjRMbnhCMU5kVy9mb0FSZEdpbTJD?=
 =?utf-8?B?MGhqVEFkTS93bDBLQUcvMFlkZmQ5M1BsZ3ovNzBUemdub3dQdWRrdmZhSUFp?=
 =?utf-8?B?dk9vV1pHZWhJUmhvZE9sZmFuem56ZjNISHVJdHA2S0l3WXlsRUgwamlVQnBS?=
 =?utf-8?B?dkprWktic3gwVVQrZnNXK0R6M25oUzFjM0JJV2V5SzNYK0o0R0VBMXRqSUF2?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 453be3e7-9a1b-4e7a-31e6-08dce718e511
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 21:42:08.9740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X3bxVkO0PcsCMBehF4MiAlAxVDyPgrxfJ7F4MnFAFi0TRzeHV53lMmrnBcy5TBkJhBFwDD7qOAH6q3UAA+0/EdbH8AZ+6qqCAIN5gN+ewfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7464
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728337344; x=1759873344;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YKZuN4BqixWodA7VzDF9xVvH/YTD/Ukphj5nCKHenWM=;
 b=atUayEW79r2xJBnrR0XY6rXo0pyLLa1PhaOMNEr6mIHbReLgA4mPoClQ
 C4xqqxAx39ly+rFCLVzJMaAA1YyN4UAv+vOWcOYiZRRxcxkhyu4oGWhSu
 MnVVmGpZ4yLZyNWDRC9qI9d+heCJ/Ik+2Zb/dqcfCwOCPwn8N/aQpMMmi
 EdW5KJMKen4rEGOZxHrAI7KO4eD6v7+V0ROdv1llObqvP6u2aeqlasp0/
 BaXehLk/6eqtstVrUJAHfiOBB1VzRk/67saY6421nMXt3RwVHGMVYzAOA
 Z0Bgysj64mMNcpYodu7pAHyu3I3SdkK6NO9jBkzwE07I2M24R9Tjklloq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=atUayEW7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Unbind the workqueue
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/7/2024 3:29 AM, Frederic Weisbecker wrote:
> Le Mon, Sep 23, 2024 at 11:28:20AM -0700, Tony Nguyen a écrit :

...
>>> Thank you for the patch, it would make sense for our iwl-next tree,
>>> with such assumption:
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>
>>> @Tony, do you want it resent with target tree in the subject?
>>
>> No, I can apply this as-is but please remember to designate a tree for
>> future patches.
> 
> Sorry I didn't know about any tree. I can't even find where iwl-next is
> hosted.

The information is here: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS#n11413

For bug fixes, net-queue tree is used and next-queue for other content 
(dev-queue branch for both).

I did find that I crossed this patch with another and found that the 
initial send of this did not include the Intel Wired LAN list. I'll 
resend the patch to include the proper list so that patchworks can pick 
this up.

Thanks,
Tony

