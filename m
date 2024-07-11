Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C29C92F09C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 23:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47D206125E;
	Thu, 11 Jul 2024 21:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gMI0-B3X3Bbd; Thu, 11 Jul 2024 21:03:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62E006126C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720731799;
	bh=qaIVjnk1h889jj3yhJ2TNpfmr9W0gA1VTpby5SCBxXM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A1ADiZv5fJXHG35oVVbOikjOKIt6ff337ETHtTSj7q3k2xwk091HwUevlZuWexuzp
	 mC/9+1ZL6u6VJlbsvv/NbZ3tHH2/h5F2sqzwmplX4f1htuc4UAMQti4OCVZWYFJbNW
	 avVK3rokt2CLNMoTn9w3KomP0Gfm0sL9P9cAcYIM7G6cHrLVD5KW/S9EPhcIaAkU5N
	 iDlTQcz9osJ65pv9RYlZlFB6m7suKSlCC+bw2H2NNuOqJ4S7PUCNBbGo0l05cik9W4
	 5eTYBJpUew8MgRylhhoz7dvWXkN40481ARfdQUSCI/AksUeyqjFHLN8ANcwU2Z5n1s
	 kkhuo7Jgy1l1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62E006126C;
	Thu, 11 Jul 2024 21:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7E391BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 21:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EB9584056
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 21:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y-9JhQGdqEY6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 21:03:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5EC1481276
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EC1481276
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EC1481276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 21:03:16 +0000 (UTC)
X-CSE-ConnectionGUID: Tf1JmTkKTEynLZYCA/xFFg==
X-CSE-MsgGUID: 3gi/wu5KSQawzJODJKwuWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18100472"
X-IronPort-AV: E=Sophos;i="6.09,201,1716274800"; d="scan'208";a="18100472"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 14:03:16 -0700
X-CSE-ConnectionGUID: HX39Ku6IQoCN0bCouXr2Hw==
X-CSE-MsgGUID: cbKEMVGkTKChiYjKhquJoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,201,1716274800"; d="scan'208";a="86201972"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 14:03:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 14:03:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 14:03:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 14:03:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYQgxXPGZ2+vGjcJFoSCBzdS9GJIsecPbGAYq8KCsawnQkB29DcoL1FNZZ2H+Kvt9/AcXpTwx4dCiHzaxQn0tYD5cftuyaYJlPsXRg1/vPRjfrLGhz0EVVqHIJZviqOdrmil/cxQ2LV1mcLnJ/xAy44VIuUYNDpW5GzlOFOrYTIXmPqZ6ASfylEhOgKmSPDj3FR9JLUOqJhn+u2KYX/NdJuWRrk882/Ww53p9tBwvPcZv4oEC6edzmEcwdpcS4D5IhETgBOTSaqLXdog1TW873b9idmIvfNjrkayLOcFL1IewwWRBYGiPthf/NmHuuaR6G4Vi4LfNPNtIzmFb6ciqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qaIVjnk1h889jj3yhJ2TNpfmr9W0gA1VTpby5SCBxXM=;
 b=WhULNlj6B0oMke6Y/1MC9USerWKnmq7WwD4NN0QZIS1/JZPhKNkIko7/Vfe0Ew8+ZXthuPdPfw0+VFYTvyNxlSF+B3CUn2pJ3CvOFqAyxtDfdq2qWbEiNNpDyBKyVn/Oga2jcRW5C+IX95/SxVF/77vhSqAiwCkJn77eEigPUTroqBb3R9TejOqnzs83d95udRAxO+QQWKET3tbdUdMdpbtULxSF06pUSIdpLApNMaHSxNndFg6d8BDMUoqsNM8UoGgSAO34wcmhdzeVAyMVT/ttPHJYu41dx459vDLoeL6mjLXHuImoQ6yZMkL+z4UQu8n8DxgOtH6MtzufurAc1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.23; Thu, 11 Jul
 2024 21:03:12 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7741.033; Thu, 11 Jul 2024
 21:03:12 +0000
Message-ID: <2ff9ab23-c6c3-43e1-9f8e-4664de341e78@intel.com>
Date: Thu, 11 Jul 2024 23:03:06 +0200
User-Agent: Mozilla Thunderbird
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>,
 "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
References: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
 <CYYPR11MB8429D7C7B94ACA267F592444BDA52@CYYPR11MB8429.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CYYPR11MB8429D7C7B94ACA267F592444BDA52@CYYPR11MB8429.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN2PR11MB4536:EE_
X-MS-Office365-Filtering-Correlation-Id: 26713b57-7597-4960-8ffe-08dca1ecdfed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3E2QUtTcHdHRHBITms2UTNkOEI5V2t6UEtCcDY4S2Nxbk9lY1FxNzJxM2Mr?=
 =?utf-8?B?Q2lhWWovc3U4cDY4c3hlN3BoR0tlTE00OEYwV1g3OGV2TU5yelc0akJpWTNu?=
 =?utf-8?B?OTFMdld0SEtrYXhSRkJvWnc4TXpRTmoyZ3ZaTy9WUDNSeWF2L2tqcE5yT1Vy?=
 =?utf-8?B?czZOK2FzYzlLYkVicjB4MGU2K3FZL0srTG1PZWh5M0orTGNRdFV4cUJMRExt?=
 =?utf-8?B?bUxXUW9NWUU4ZUFKNm5NbGp3U3RGR1ZPNi9hSFE2REszWlg4Mk1TOHBkNjNN?=
 =?utf-8?B?Z2h3b0RXUWRVWVF0em9ydnNPMUljRjgvdERMK0JrcVdoQW0yYzJveW1JeS82?=
 =?utf-8?B?YmR5a3o1ckwzeXgxN29Rcks5Q0Z0WkJWUDhsaS9lUXlPQ3d1ZmNFdHNiNGQy?=
 =?utf-8?B?dUVEaEtxNUJTQ3JoT25MT0dCeXZ4ZE8rVXpWdmk1NHN1czBYYkJsQWp6Z05L?=
 =?utf-8?B?Vml3UWFnM0g2TVBicWVqUDM1YWQ4QTVYT25JUVRNV0tkNG9UZ3pQZU1CcjB6?=
 =?utf-8?B?MDFkYUVZUEJzZER2TVVqcjVnaHFVcEUzbjBHR0FUbURmQm5qcTdDZm1CNE5P?=
 =?utf-8?B?eWpmZGt5dXJNcEFiTVpXNG5DU2pTcVJPajV3WllJQ09CbHp1Q1czaFdsY1dl?=
 =?utf-8?B?d1AzWDFiS0NBQTV6clEvUmdJeWp1SW8wclhST3BCMmhWbDRpbFdzU1NzQUpS?=
 =?utf-8?B?cHN5MWF6dzJ3N2hub0dlcDIwcVQ0b01Fb2lxbnhVTVd2Y1U0Q3p6RlQ2bzdF?=
 =?utf-8?B?ejZBQXkxdnNzdjlEbFlEd1hwa3kzUFk3VEIwZm5qc0xZa3lBVDQzRWhlMzgv?=
 =?utf-8?B?RTlvbnBQbzI3M1JyV1pVbDdGQ0tRdVlJQ1Ewc2Z2SDZOeisrcjl0TzZIOGth?=
 =?utf-8?B?YXpZclN5S0YvWHltWlgzTGdaUFZ4VkxURmpXeWlkSWxzalFJQm1OYzg1aTFx?=
 =?utf-8?B?OEhYOXBreHl0d1lvZUxYUlRxUlMxbnlHZWx2VnFMaEFBTTc1YlJrK2NDMUtx?=
 =?utf-8?B?aytLL254NXVpVFRmQlVqemtmS29DSzdiMHBRY0NVVnNnNW83WnN3bk1LS2Rh?=
 =?utf-8?B?MG5EY00rU1ByVEp2cXF2MDRHYjROYTRpNWVteHlBQ1NYVGJnS0J5dU9OcWwx?=
 =?utf-8?B?NjA4MWM0MDJLU1U0NGNMSFkwUWh2WEhkd0g4MmtvbnZWU0FFWUNkSTFOSm5p?=
 =?utf-8?B?a0tJMG5Edks0ZmlZbGNSOU45VkFpYnRUNExwZVdLUTZtTVRHc0M2YzZlbUg4?=
 =?utf-8?B?S0pZalFNcytmejRrcSsrdUZQU0puRmkzdXBpMDI5aTZUaGh5WllhYlNKaDZq?=
 =?utf-8?B?YzZBMlQ4eElQVUhweDdBWlg2a2RWY1U5TDdXV2hHVDNtUFVRejJxQmVnbnZP?=
 =?utf-8?B?OFZWNTNkTnBrTkRVTGtVaWdQZTJoZXMzWjJhQjg3TDdwOU5TZHF3MHZzekgw?=
 =?utf-8?B?c0ZEeUlVV0doeG1Dd0lXa0s2bnJyeXhRVFJkV2tFQm01bEExRHBic1ZYZUpH?=
 =?utf-8?B?a056NGdKMnpsUmhqRk9sQWJLNzJEZWl3VXArVnZsd3JvSWhpejZkaXZLdHhI?=
 =?utf-8?B?MGZLdk14LzJFTkhXQzM5ZVlaUWx1djd6emV5MzA5VGxuNy90NlBkWXZ2TnFV?=
 =?utf-8?B?K3hBUk9rTVlJRlFaNG5LK2RORk1wYWdrNFErc1JnNkFNR3l4THJ4L2VLZEhm?=
 =?utf-8?B?UERFNW5wM2p6Wi9TZ3EvZ3lCRFdpbitVOGxrQkVwQkpLSmh0Z0xUMExGU2JF?=
 =?utf-8?B?QzNuaXQ3NzZYNXZWbFdGUklPY2NlQmlzTUxheXc1dWNvTEYvUndFSXhXVmUr?=
 =?utf-8?B?TU1OcGJLbnJmZi9RU3BmUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW14U1ptZFhMZ2Q4cUZkdjlobW54Wm8vNGhrRzZzMmtWTXpFNXRhR3BZQm1n?=
 =?utf-8?B?MVVSK0F0RjF6dkpxZ3dzRnFXQ2N0MFVScUxOQVhrbGdvSVRtMzVSWVFyekgv?=
 =?utf-8?B?QTMydDJwTWpQdWpwNS9Uc01USUs1RGhPMWVDVk9TemhtNmQ4RmRVZFFiNS9C?=
 =?utf-8?B?RnBFODJFZCtJc1REYkI3NjE1N3BQL21qaFhnckZBZThLeERRRWx6b0NKVHNj?=
 =?utf-8?B?elRuM0RaMm1nK002TFBuTG1lMmtMeENvNVU2eE01N2l5QnhPYjBBQjMwVFQ3?=
 =?utf-8?B?VURGTGJNYUV5YnJQNUlZSVN2Smt0M1B3OE1uclAxWGFnL0UxR2poUnplUUpp?=
 =?utf-8?B?SDk3K01Qb3ozeFB5WWFIWE5EclhSZGxHZm9FamVUU1dYNjhsS3Z5dnNIQmFI?=
 =?utf-8?B?OVZsSkhhd1NXRTFCa3o4a1I1UGN4UGcrNUxTczdZOTZHalM5YmovbWFFRHg2?=
 =?utf-8?B?dEpwS2ZTWWIxaWhPRm44THd1U1hTVXZoeTRtTjdKendLK29FdThYUWV3YzN6?=
 =?utf-8?B?M2pEZXBxamY4UUtWZHVvN1k3YnlmVXFUcm9XV0JpQ0syRTlYRStCZ3Y5MTB5?=
 =?utf-8?B?a0Jvd2UwOHhuaHQvL3BGV1dUMURnakxMWnM0K3RlT2RVTXNKSUZIYmNGZDJS?=
 =?utf-8?B?WGJST21PTWxDVG9aYXJaUEwzZjgzZEtsREhOQnhqVzFvTkg5Tk1aVDJaZGxH?=
 =?utf-8?B?MDdRTnBQRVYvamZIcEI3NFJBbFp3dkFwYTIrRFdBVEkwMi9FaTMvZU5GVTQ0?=
 =?utf-8?B?VjVnc2ZtR1d0Y0o3TmhyRHJvZ3FDeGkzZDFJQUtKbGZLaGZudit0RTZOUFNI?=
 =?utf-8?B?RDBUbHprL2ZKZzdPK1hUYnVnd3JHN2V4WExRZkFQTFFhZFlMbEoycHVtZkxO?=
 =?utf-8?B?WnRtOXpzOGhlRjlUcUduWEh6UFN5QVFvTFRiMXUyaC9QREN1bnRDbE02M0tK?=
 =?utf-8?B?cGM3T0JLRDlnVXNPN1ltVHg4Mmc4aE5OYmtXeGhuRHJkUnFWbU9sV29EdGtN?=
 =?utf-8?B?QVk2clNkUy9hdWZGT2kyRmowcURFckdjTjBPWU5acTFpTWw5ekF3Y1VZMDlu?=
 =?utf-8?B?dWgzTWxodk1YckthZHIwZkFjakdia1NPR0xSNktxNEJ3TVNCWm5yNkRhenhU?=
 =?utf-8?B?eCtPNDlpekNXclVLS3p5OXptd05qWk4vSGNVZk9Mb1lxakZQczUreDZ6N1lm?=
 =?utf-8?B?alFmNlZzT1RSZXlKMmhFTkJ2SS9JVDM0eU1oU2JkL1lOUUNta2pLb21uK1JR?=
 =?utf-8?B?ZnhIUkY4Tm4rcE5NckFrWmxQM21sOHhQWXQxOHJKSXlXaURYSnFtc0V2NW9X?=
 =?utf-8?B?WElYeFBRQ1hvaCtPTU15TUVnbEExUVVrWktqL1pxTnBWek0yNlZBU1pwK0Zm?=
 =?utf-8?B?SE1TN0lWR2FFQUZ3NWlPWnkxam5BQWxIaTMrYzJVNC9lS2YwV0RhZy9OZjlL?=
 =?utf-8?B?c1ZqL3dmVnRCUXYvZGFmSDFvWDN4RngyUEZVaFhUd1RkZDVGR2NHa2xXQ2xq?=
 =?utf-8?B?Y3k5NmZoa3ZDY0pJRWpMK1ZNcGN1SGMzYXE4VnhWbEMxcVNRUFNiMVhjRGFW?=
 =?utf-8?B?Z0h5SGtOcno0U1ROeW1id3IyN0FkYlVzYk0xZWZLSnUrQ04vdzU5RGNvWlVE?=
 =?utf-8?B?WThmY2p6WkFraGR1NVhrOFdCQUFZcHpaUDRyUVl5KzZybVhtMU5IUmh5enVW?=
 =?utf-8?B?RDBHSStrdkdpOUFVYk16RUc4RE5BelgxK3hMQU1veTQwbmliU2Z3SXp0SmR6?=
 =?utf-8?B?TEdBKzlDTC9CeS9ZbUJUWnFXRHU3WnBZdThCa3pUMmJaTC9WM3ExYm9WSy9k?=
 =?utf-8?B?c053aFhPYWZkSWh6VmwrdnBLZVo4aGZtWVJ4cThCa0xleXByVXIwZkxRbUx5?=
 =?utf-8?B?eU9NWWNHeXNlcWFGeUNrZWZ6VzNPcVIxN0tCeEV5ZFI2OXNlZnJnZHd6emJ4?=
 =?utf-8?B?cXRwL1pRQjdlTlEzUmFlYWNKdHBnelRSSVpvZDNFcFJ5ZG9QWWxVRTNkVnZp?=
 =?utf-8?B?ekZzeXllYVh5RjBITHd4VWxYMTV6SjFMVWVOR2Z6azBRYmNMSHN6WFU1ZDdX?=
 =?utf-8?B?enFVWGxtc3BUWFFhYnpNQU1ncHVNK0lmd2dZTDFPL0VxRzh2TVNzdFlBNk1w?=
 =?utf-8?B?WGkzdGxia0tIRDZxR3ozWmtkdlY0Vm5UWXNBcEhKWmZUUVNaTDhYSjJEaitP?=
 =?utf-8?Q?cg0NDW1tQxtI6gMTy/5Uq3c=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26713b57-7597-4960-8ffe-08dca1ecdfed
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 21:03:12.2963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7FbipWkco7RIC8bl451FjVLH3hUjjqVeYGn2mPi1OX7+LFzDJrvgKmO7t9r8MHV9c08GJB2x+GykcMS/KQ/8cJ5jdKwP7UbixA3jOMb/x2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720731797; x=1752267797;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ni84HE4IPjrKHJB9P3Qm9244h+3AwEhGNxY8O0PpoZo=;
 b=K/+xYZHVIQFVT5LtsgaGtuO1NCBF1HQE1HUuGuSBbRsvxlyNowQG+e9J
 PqrPPu+rURCoC701SeXnJQqSJ+kd6mAjhl0Cct8XGyPPa0eEQZN8zx5YB
 VQ9xRXakmK7yQWD3IKLg9Bw2QcrFnwTr1CwEybe1RYJFxTgf7H9sTxXsu
 5FpONaDjDEV2w9ig8Zjl5mojgsYMvmoWDTBhfWmYE1mwEcCqPpwkbg74/
 kBkQgVugAU01/cWU5lbAg3F5dhIxMprLk3rjg2NroDT3w6v28xxVo9Kbi
 twSqmevK4btpRAcLMWxHvIgpIV+d05lWlOHhgKGywqO//Km6pBYvAh0LN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K/+xYZHV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus
 with ice_adapter in the PTP support code
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/11/24 17:53, Pucha, HimasekharX Reddy wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sergey Temerkhanov
>> Sent: Friday, June 21, 2024 2:13 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>> Subject: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus with ice_adapter in the PTP support code
>>
>> This series replaces multiple aux buses and devices used in the PTP support code with struct ice_adapter holding the necessary shared data
>>
>> Patches 1,2 add convenience wrappers
>> Patch 3 does the main refactoring
>> Patch 4 finalizes the refactoring
>>
>> Sergey Temerkhanov (4):
>>    ice: Introduce ice_get_phy_model() wrapper
>>    ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
>>    ice: Use ice_adapter for PTP shared data instead of auxdev
>>    ice: Drop auxbus use for PTP to finalize ice_adapter move
>>
>>   drivers/net/ethernet/intel/ice/ice.h         |   5 +
>>   drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
>>   drivers/net/ethernet/intel/ice/ice_adapter.h |  21 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 338 ++++---------------
>>   drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>>   7 files changed, 111 insertions(+), 310 deletions(-)
>>
>> --
>> 2.43.0
>>
> 
> With these patch series observing PTP failed with below call stack.

Have you tried with v3 or this one (v1)?
Anyway, there were not much changes and we expect a followup.

