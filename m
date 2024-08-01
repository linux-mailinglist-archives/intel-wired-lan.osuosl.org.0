Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6EF944598
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 09:36:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C6F540E84;
	Thu,  1 Aug 2024 07:36:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KpPYXCJoZgW7; Thu,  1 Aug 2024 07:36:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8D71405E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722497795;
	bh=20Tvt8j0frXFaS0I4bT2O6GhbTYZb+SGyVaBZfw2lJA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gLIDjFdamT43yAQQwFq2YopWRZ1xC4uDMZq378oCHaCRUcWGdJY/RncRedRmNqUnc
	 jsCLVog27zuKxfZObjZn7WPMZa3HD/A5cbRLEwoky+0yotID2uYtRVuMxcNFpG0SbK
	 vH8LpxE1ZMibYkAeUiinC6dky5joWzJmaNnz8ILNw61f20/XbVmLxxdVPSImlyTJHR
	 yYk4Cd/Jh/rxbP6tRXAwZfFD29bKBtGJx/nWSZg1pkAGums7pWvbwYvwONg648g2e4
	 em1cox3FGJe+k86R5IKKCe3wQchLB8dL8iHPYA7Cq/5mm9DtK5BMJKlDVLsdbs8wu7
	 kW4cQDcm/okSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8D71405E1;
	Thu,  1 Aug 2024 07:36:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 927761BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 890C940170
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:36:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uEeY1Qo0RoNR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Aug 2024 07:36:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 711894009B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 711894009B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 711894009B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Aug 2024 07:36:31 +0000 (UTC)
X-CSE-ConnectionGUID: a0g2N9iSSj2IKydGgIkZLQ==
X-CSE-MsgGUID: 4tv+VfZYTGyR5PurrIPx1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="45844754"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="45844754"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 00:36:31 -0700
X-CSE-ConnectionGUID: uZHTnHFzRJG/vGAiUaymeg==
X-CSE-MsgGUID: DNC5JSMVTSesRDJnWsppjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="59072297"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 00:36:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:36:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 00:36:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 00:36:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 00:36:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qIZaCQdBYdPbaRXc+YRg21Mbvm9SOqixydmvPXVWBG31yAX/FjD1s3erKV+Y1l816AgxA5fcQqOI7f66vG16kllyXAMWlkhJgNrx2G5hJ4BMKh9KXfv9SZNiB9o0He674d1n72Dg3BGiBSUs1srfm0gso88OWosCB+niq0cOUkoFeiuhPBLcj9BoUaZTwM8EPaAIzejXN7WZw/xpUbK7yJLRiamgQC/ENPLkNyM5C/eqjVGhBO80ooAmpVKSYbwcWFvlKHT6bUks2oeeKsxsg4xckbWXjo2qaM2dgjacmpt0FZwTreII19OKGMUdPgmBoaxGjMVF9gWUmJLSLfBH1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20Tvt8j0frXFaS0I4bT2O6GhbTYZb+SGyVaBZfw2lJA=;
 b=apVPegI2XwQuY8cuPSmo9nCxwhwEHAnT1vMhobbp5hjRbjF49lYVk6XDbwHcLtuheI9bWTgZ7Bu2lnGABjOtv0gRQPKy83ZJMXEPgLqjsJqeN7DS3BNqop0gdVQSs2rpWK9nVCC2SJJH/b69Pc6ihNZrdDurKljD1Yk8YLJJXOKfF1prOhHaK5VJUmI3zqbq3GZTBbLv8J7iyzIJNHWCf4PlZNUBNYl93anRnYtIOCgx+lXjMn1KKMMUHlCbFBiwCeoMtswrOFkuan8I1bgALYFULjKrojKh5tvJsGxJXpDY89S+u92DeBm59B8PQCKJWrd4YV5BtWMpCljTFX354w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 07:36:22 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 07:36:22 +0000
Message-ID: <51c7fa4a-26e5-49e4-baa6-b72d51098ced@intel.com>
Date: Thu, 1 Aug 2024 10:36:15 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Simon Horman
 <horms@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0030.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::16) To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c106317-1410-4dcd-37c4-08dcb1fca455
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3dqSHVWOWtVdHJPTFFHbkNFV2pINDh1alJNQk5FM0NWY1k2Qk1HY1VmUXBu?=
 =?utf-8?B?Q0dUM0hZckVtRHp2bmxEa1NYVjRxWDV1MTRCYm9TS0loWVZScmlxZkpsV3Jv?=
 =?utf-8?B?SzBHRzlTelMvc0xkOVZuV3pML3UwWThValhHWm1nS1FldkdraG1vcGFHTk8v?=
 =?utf-8?B?U0ttM3UvNC9MYTM3YTkyUlF2NkdpNmpZZE9nanRCZFhlZHFVRklrNkhMcnJW?=
 =?utf-8?B?dER6KzhpUmJSbi9vNFBEZ0VDOUVHdGtEWWRsVGtFNzl3d2hZaDZ6Q0tueFAv?=
 =?utf-8?B?M3FsTUxZYnlTbTh3OHArR0lLbzFBY2JaMkJTNGx6blhQdDdUYnpYQmlrck1L?=
 =?utf-8?B?NG9HU1dBUi9FMTVlZG9tTzY5NHVna2IrcGxsSHlDbzh4QUIyVHlreTVodGR4?=
 =?utf-8?B?aUsvTy9jZmNoaXFIbWZQUFRSc2xyV2lqQUZPbmVGamJiVC9VZnVJbHo1dXU0?=
 =?utf-8?B?WHVySW1HUVVZTHhMTkc0R3ZrbWtiVEEzK0FXb0VjNEdkUW01WUlvMWpCWEUx?=
 =?utf-8?B?QWpIWjhsTDVWT2I3MUErQ0l6ZWJqc1hCQVM5bTRVTTVBNTR3MlJRZjVuRnJT?=
 =?utf-8?B?allDcDhFOVdJaWg2RS9hQjA2YnJKR09TTXNmMldzbVR6S0pGQzZCUW4reGVu?=
 =?utf-8?B?OVl1d1ZreWxUeU1uRHZoUHlTNTREZW51Y2l4UFg0NXZuWmt5WU1RT2tvMTlM?=
 =?utf-8?B?dWZISHorbGEzWnBsOVlPQnJkWFFrT0FsWVVwMXBMNXR2VnFUSVFnZTZyWVRz?=
 =?utf-8?B?VllDUERQSHoyUzRVQ3RRUmlRd3dqWElzSms2MFN3TGRndkVFbVFJejgrL2xp?=
 =?utf-8?B?bGp5WjRwbUNLclA2eVc4b1U1eFVZejZ1MHAyZnN3T0NBUkgyckVGdDRRZTVa?=
 =?utf-8?B?M0V5UFBVS3JpZU4zZGdNd1lqL3QwcVNzb1N2V1pkRnp3N0NtUWl2VThLTHdC?=
 =?utf-8?B?UzhMVXcxY0c3MjIvYS9wQlVpYXVBelcwMG1KTVh0T1hDT00vdUpWT1lqZGlU?=
 =?utf-8?B?OC9jbDBiS1l1WVhSL2RuT1RsVDZJQ3kzcEN2UDNBU2RKc1A4ZERrYmxuYkpG?=
 =?utf-8?B?dGN0ZVMzMm80d2JpaUZzVC9ob0pkZU9Ld1FuV3FtblFYTzh0NEl6YTIyYVZX?=
 =?utf-8?B?Y0s1NmpBZlBKdXBScDJFMlcrazFyLzBSb0NpT1RoMWtYcHJnMitEZUR6NXBE?=
 =?utf-8?B?YjVXdlFVaFlZVC8xQWs2MWFVRVkrNGtxeU43NFV6S0ZpNWN5eldua0xFeEQx?=
 =?utf-8?B?VTY4RFFRbzU2T1dGbGlucGwzYTNFNEw3a2Z6QkJUSXNKdkMxS05rZzBieXFU?=
 =?utf-8?B?SVFOajYvejNDS2pNekNiVkRMbldSYnM2VThEQnpGekY5MjVuYkljNXBTNjJQ?=
 =?utf-8?B?YUF0NjdveHA2Vm85UEM1RDhaVjg4K1JzRE5sdTdLSytEMjFnaFMrdU9YZHVr?=
 =?utf-8?B?MUN4YVRsM3d6T3NCak9nNEZEcGdsYXBDUWRaUzNBOVN3NnBZZjZNYVRHdDB2?=
 =?utf-8?B?akVXMndGbXZXRzNkUDJYcnJvKzZKMzJ3T3lmUXZObTJUdVRhR0RMWFRxa1Np?=
 =?utf-8?B?dFBnem9jQUtKdStIYnRXYTk4OU95WnkyOEpjczkxLy9kbEYxYmhYMVhZbkJJ?=
 =?utf-8?B?VmxENC9JOFVCM1N1ZEI3N1dnclhXR3lNaXNqOU1xYWdQT2huTjFTaTJ5clJp?=
 =?utf-8?B?a0gzbjdKU3hxUG9lY0kwdHAwREwxMWxUSWw1VzVQTFNyVEJIRVBmZkdRN05j?=
 =?utf-8?B?MEFWOG0yVitDR1gyeElZTktwSWxXUXlZdjFEQnJYdzFwZEFOMjNxcU4xcmtB?=
 =?utf-8?B?b0ZLWUtkZG9tZDVWQVRhcHVSTlN5WC84TXp4YmZPUFh6eDlnZ0Rxc3RiWXVN?=
 =?utf-8?Q?MRTh9HhlDjI4J?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3VKNlpBUU5vYy9LYXFPMkdFTXZBZ0tsMnhYSjhmNGZqbEVhWnNwL2FodDA3?=
 =?utf-8?B?emR4aW0wT3AxSEF1R1hMRHRZYzNUWHBKdXVOeXlQWjM2RzNQcTVpbXhmR01E?=
 =?utf-8?B?dHhzeE1DQktzOG1CODBGbG9hSGtlMnRMeDJyZlB5TUdZQlNJUUVzYkF6YUo4?=
 =?utf-8?B?K056Z0VkR1FjV1dnTzRXWkFxU2xCb1k4WnpXbFcycVErMDFUdk9uN3I5SHJ3?=
 =?utf-8?B?YVRJeFR5V0JBSERzaW02bUhGeEhFMy9ZZUVTYlpoR3RHc2YxQUYrb01oVFdK?=
 =?utf-8?B?VnRZWFJvSGdDL3VqWHFCYnZKSW9vdVFueXl4a3dCZmlZei85TEp2NC90QlRR?=
 =?utf-8?B?MFd0dWsySGJZT1hIVVc5aFN5NHZWcGVhWk82NjBYT1dvR1l1UW4rM3o3MVRj?=
 =?utf-8?B?dGlldk9weWZHK0RaZW9sc0FQRGgxQllxU013am94dTExd252enI2eExtNGtl?=
 =?utf-8?B?bFhubmVQOENIeHdWdHJwL041bDVkWXljWHZDNkRYc0crb1grVG0zZUtVaWRJ?=
 =?utf-8?B?MWN2VnVVMk5HNzI4Mlo1WVhEWndHWDl6QW1lbDZTSWd5WVV1WVNXck02aVZ6?=
 =?utf-8?B?eUllK3I4Wk9xZFhaeGI4UTNnZkRNQTBnUnJOL1J1aWdqcGJzWmFMeHJCS2VC?=
 =?utf-8?B?alo2V3dWdGxJRzBaMVNYdzdYVzM1alcyTE5BaFZ6OE5mb2lZUnFvQlc0dEdk?=
 =?utf-8?B?U1FRdUdOK1ErOUtmVkZwSVVoa0wva2VZWUtndGR1TVBIbGJzSnZoYzZWcGIv?=
 =?utf-8?B?MTI3dm5qa3RaVEFTSEhlR2h2Tk1RK0tQd1RGNjVDa3RXTlZKdUp6MW5ERVlu?=
 =?utf-8?B?alQzdjAyQkRYZWllaVV6ck9ldUlOdzl3UWNQMlFwOVlUZ3JkYXdYTURDTnI1?=
 =?utf-8?B?QXpidjBEdlhoemVIUkJ3STlGTjRsUDRIYTlvTVU5ZmNTUHlzbCtoR0hwMzRG?=
 =?utf-8?B?TERPWEc1dkhnMHh3MXdrZWJZVlMzWnFSUzIrZzhYd0ZlMVk2Q0xGdkpUSnJC?=
 =?utf-8?B?UGszbWIrVEJlcFpGZkxOa2FiNjdyTHMvZUlXQUhiQnByRHE1L0tiWTFyajhF?=
 =?utf-8?B?OU4yV2p4eStzNEtjdklCNFFVa0pjN3V3ZUdIZVRkempmdE9DbTVOWlJrVEJy?=
 =?utf-8?B?K0NSUG9DOFcvQ0x1aW1VcENMVDdlVCtQTDBzMks3SjF3blpsblZwdXNiZ1JC?=
 =?utf-8?B?WEN6NExoaVhwZkRPREVsTStSa1VXYlRybC9BckJLTnpZRkNDNExjb0k4OWwx?=
 =?utf-8?B?SXlYejdkZm9wcXVHMnVSaWowQUlaczk2ejV0YVVvd3c0T3NOM3dwNFY4b1Vy?=
 =?utf-8?B?UkU2NmlpTW1NR2FyYTRJYlBTdzVWWTJxYll0WWN4Q2dHT2hNYmlLNEZwelNL?=
 =?utf-8?B?UnlxdCtkTFJYQXBXdTZ3Umo3bktLdTFNWFR6ZVlaQk1MU2NKVFYrRE1XeThi?=
 =?utf-8?B?ckQ5R1M5a3JCZ29wM3k3bGN0M1BTZ3ZJSHVSbFoyQ3hDZHF1UVpscWEwV0xa?=
 =?utf-8?B?M0NsNkk0cStYbW1BQUdFWTNUaDlLVHBqK1Q2T3BPTG0xbE03UzNJemZCNE01?=
 =?utf-8?B?amxXeTJaQVJ2T3dRaUhhNDFCWVdocHJmYVhRVHNYSitGTUpvck5GNmlwbXpz?=
 =?utf-8?B?Z0thL3A2SG83b0FKbFZnbjNDRkswWmUyUGducGthMGZkM2h6eUtyUVE5SEg4?=
 =?utf-8?B?RVRLa05UZ1dlMm1OWnVha0pVbmRuUmo0MDd2SXZVMkUyQTFhZ096S1JIZ2Vv?=
 =?utf-8?B?OXBwbWdKQldYdXVXMVFkTmZPMTl5djgzdVY2ZFovcUJiQVFmY3lxU1ZBaHEw?=
 =?utf-8?B?dlJ4WDZrY2N5NXR0RWxYdzQ5dkd6dTJpZnZDZXR5WGl0RXcvRGJPYVRXK3Qr?=
 =?utf-8?B?algxS2VzMk5TRTBQanBVZnpvRUJ1UTFZMmdWZkxndGxjZzlqUk5BZXhvWms3?=
 =?utf-8?B?ZVlTTVhVWFdOM25oZmd6VG5TRDFrYWtoZ0JpeVpFYjRaelkxWUhpNTZ6dXAr?=
 =?utf-8?B?NXc3Uk9KTUlYNVZkdU9UNld5VXlaUU5EeVorMzVNLzIxSnhwd2dNMmRCblZ5?=
 =?utf-8?B?eUI4NThHdXFKQlBqTmlDQzNrZ1IxYkpwSGNsMG0rU0VLRVNEQ0V6cjlDNlRK?=
 =?utf-8?B?cGE0YzIrYTlmclVNWjZKZlRpN1RtTlhUY2xoQWV5OTkzWkM3UWRxV09wUHBj?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c106317-1410-4dcd-37c4-08dcb1fca455
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 07:36:22.9075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ntrJ/Y7jJmWdX1sYL/tYauFvJd3QTDiNofH320OgIHpZB9lyv7A1u6Sl1dpubE79O04jSzpjyeWZSvslss12Vem4EHLwL0WuYLBnJ0Gfl5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722497792; x=1754033792;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CceiHC55ec7fZmdJQHB9E1GoL6UKAK94LLrp/C5euRM=;
 b=hS3QBUtfzjH7cnMrpyPBxeNbpuXbBiYgnCDdUEKwnalrF2Ga6S0OAUk9
 owWuBIoio0i4Mz4lqlNpHWeEG8bWqkwzZcMMZFjmj+jHf9iWf4bbK3Iek
 1uZ0e5wN7NYKJUwuh/vf03t0OpwV/gmIg5u2PsoYs6OjQAGW10uLa/1Zv
 Y+uBAnDwYcpd17Dbn4AC82XFa1gwSX+xS9HKv/dYOtORwfbKxu2gNnnxG
 YiDJKqVdce3njka3McyIk3IPR/DLSH1U5b5trtyyeMFtVhDgu4Baj5ofH
 Q0gZIsR2K+dpEUHTLOhnUhlaHzAgmcZXqzjxcAUrRPO1kZ++yT8HPJLKm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hS3QBUtf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/07/2024 15:53, Faizal Rahim wrote:
> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
> have been observed:
> 
> 1. The reset adapter logics for i225 and i226 differ, although they should
>     be the same according to the guidelines in I225/6 HW Design Section
>     7.5.2.1 on software initialization during tx mode changes.
> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>     This occurs solely based on the condition  igc_is_device_id_i225() when
>     calling schedule_work().
> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>     resets adapter for legacy->tsn tx mode transitions.
> 4. qbv_count introduced in the patch is actually not needed; in this
>     context, a non-zero value of qbv_count is used to indicate if tx mode
>     was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>     be replaced by checking the existing register
>     IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
> 
> This patch resolves all issues and enters schedule_work() to reset the
> adapter only when changing tx mode. It also removes reliance on qbv_count.
> 
> qbv_count field will be removed in a future patch.
> 
> Test ran:
> 
> 1. Verify reset adapter behaviour in i225/6:
>     a) Enrol a new GCL
>        Reset adapter observed (tx mode change legacy->tsn)
>     b) Enrol a new GCL without deleting qdisc
>        No reset adapter observed (tx mode remain tsn->tsn)
>     c) Delete qdisc
>        Reset adapter observed (tx mode change tsn->legacy)
> 
> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>     to confirm it remains resolved.
> 
> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 23 ++++++++++++++++++++---
>   1 file changed, 20 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
