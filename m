Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1829FA4E0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Dec 2024 09:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19CCD42A10;
	Sun, 22 Dec 2024 08:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GOpn2a6X6Eyt; Sun, 22 Dec 2024 08:55:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87FD842A3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734857730;
	bh=ViWaiTAE6oga6GXEL16Hdt2lJfXHyXXvq+wvbKeyQ1c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LxSESBrWN5xYRsfzpXDzN3drFDRRr4adUuy4ECJDhjNBj8inIDxeWsAJTOpOGOviV
	 Jo0RwsAO1LR1sSFvce9CuaFVi359sjna5CA+Kqp7byvBOPSetejrkoTSE41o0n4JMh
	 Q06JCnKS2LBWyLNf/aK1/EeY5hp43PvXHJ+6jfToQT/dHZ8BCzLt9r9B1qKYrlswcF
	 5iSmyCQuKMxG7qp5c9M4FTc6NFKa5ZdLCq22AJYh07NhED4/Va3c1AbZ6pnV3vlpFN
	 YkTb1bmgWXusx01rgmNwUn4K/RMCg/8UASfDv6xztVZwyIxytm+mRaPvEYyeO2SbeS
	 ARsX+2mEAFGfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87FD842A3F;
	Sun, 22 Dec 2024 08:55:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EE6ECD3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 08:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD81581FB6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 08:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yn6yozSib_03 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Dec 2024 08:55:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E972281FB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E972281FB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E972281FB3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 08:55:27 +0000 (UTC)
X-CSE-ConnectionGUID: +kFw4XyXQ/OjvAzosNLGaA==
X-CSE-MsgGUID: cVz5J1QtSzeM6pGjMEbthQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11293"; a="35241967"
X-IronPort-AV: E=Sophos;i="6.12,254,1728975600"; d="scan'208";a="35241967"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2024 00:55:27 -0800
X-CSE-ConnectionGUID: YQhrLyK5QTya7TzKG6aheg==
X-CSE-MsgGUID: EteuKyuqQ+O3QxN2PxKn8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,254,1728975600"; d="scan'208";a="98694824"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Dec 2024 00:55:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 22 Dec 2024 00:55:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 22 Dec 2024 00:55:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 22 Dec 2024 00:55:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tcMFS4v2WPvhcQKJ0R4rbtqw96D49z3sqWlOoeHi5ay5vllQ7iAqO+I0VPssBc9Ih1eSZu9g/gbIQ86FGcLsIMsNzU30jboaJWn9Dj+xL0aHtje2e6DWgsnfVimW22r1zVjnHLipFjFj0/l/5jpkoN2wFhpw6uwR9FQ2S55mb4IFMJLd5kcHHCeAY2QEXQze/qosEPL2IXCcOCx2WtWlNHsdivFCf4tbH10O6klzKcInmuNkRPxGmW/FWCm60Ywxzo1dKOJOQNz1aEL5D0qn1B/fntaaRWijOf2+DNo6enIDhtexQJBg7JKi+7GbOHAYB4HceDxbFYSN/xjhsPJBTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ViWaiTAE6oga6GXEL16Hdt2lJfXHyXXvq+wvbKeyQ1c=;
 b=XGPUAo3QA3MfkvNNbFY4oo9+TlqRQP8GWskLrbT6zHuxO31WJh0VsKn5WMSLmk3LINfcb/SkBjwS8qOZepo2zpYLES+BZ9SJfC7dTh1YmC/8k7ylUtdXO4IX0ZPbtPLhBWkj7fmRGmGX9giGynA6JY14shBxIusC13WdeDDVtXnb90ZSJmBGFWRsvmspHpjJ/AuJsO0C/iodwfpphprePdkht9YLfpRKqq+c0Fmi7svjUJu+BefFBj3YI2mbs51/H7LHFqL1rdHBpgVY3gfcvYKCK2325YLPhEU+UY3prsC6CV/fSBVo+8TU6JBPOG2ud5WDqj1JaLs1t26u7i0TAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.19; Sun, 22 Dec
 2024 08:54:35 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8272.013; Sun, 22 Dec 2024
 08:54:35 +0000
Message-ID: <4d6cc03c-1190-4ed5-9afe-9062fdde35b0@intel.com>
Date: Sun, 22 Dec 2024 10:54:29 +0200
User-Agent: Mozilla Thunderbird
To: En-Wei Wu <en-wei.wu@canonical.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Chia-Lin Kao <acelan.kao@canonical.com>
References: <20241218023742.882811-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20241218023742.882811-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::16) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: db375420-458f-4d54-f6b9-08dd2266421f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YkRad3RUODQzenlHcmNYdVF0dERrZkxyOVRJK1ROUi9IVmVXQWp0L1VJNVNL?=
 =?utf-8?B?ZFpXdTFMY2ZEdzlhVmxOR3NqdkM5WmgvTG1aQVAvYVJuWUdrU2NiaGorRUE2?=
 =?utf-8?B?dDhxWm1LNEcyVVBIbUJLeWhTTzNtOG0ycmhGcWRWOFFuVmhhYXlBR01Fc056?=
 =?utf-8?B?d05BemRUdy9SUWUyWnZOS3l0c1dHejRndXNDaTM4NjA5STlJKzdVR0dXb2xJ?=
 =?utf-8?B?R1Q1WHRRcTJXNmExNGxqa2J3emZVRnRaMnk3RnhjSExRa0U3dys2WWs5VHdS?=
 =?utf-8?B?S1pheU1GUE5UZGFmUE5jRGUydGU0dGZJQWNRaU12TWV5WDk4ajVraVhKeGV2?=
 =?utf-8?B?bFNDTlU4L1BTVkhDa2N4MkEvN2V0WmhVV2dNMnpYVURPTkQ1QmU2cVlFbkxs?=
 =?utf-8?B?d2hzUS8xaS9saGpzbFcvQ3d3dVNGQUNGa3ZxZVAyVEtpVGxWREkvalhQM3B3?=
 =?utf-8?B?NTFob1pLN1BVWTUxQlJSQ3JaWXhoNkRmdmE0aDBZZW9DZi9TeU15a1p3WlJW?=
 =?utf-8?B?ZEg0S1Bjam1jeTFwRGZ1M3dFZlhsS01taW52c0FoOVNhYmhKTXZ0WktsZ0F4?=
 =?utf-8?B?eHhoUkNaUVRiL3hHRGdKOGVvL2tvSVkxcDByRzhzRnhiUG83WEpjSXhKSVFH?=
 =?utf-8?B?WUJqWCt4YVJHOGFFcm5NR2pFT0hjRGhXdDB6K2xPc3Q0bjJ6WEdjYXJNVXpL?=
 =?utf-8?B?SUxPVloyc0NURldYejVFS01lbXdVMFcrNlVQT000VHg5ZkdFNExiL2lSRWxk?=
 =?utf-8?B?WGdOVjVyN3lScnJmZHlTKzVtWFNyMTIyNldiYktFM1RVOVRqbjRjMDJjRXhv?=
 =?utf-8?B?VUJDQkxSekQ3V0tMT1lrYXZxSmQvUXBiK1g2bldOQmhEK3ZXbERFaUxDNFV4?=
 =?utf-8?B?WG9mcjFVdVRiL3QwdEpzTGRQc28vOFZJeldKaVhrL2pDb0kxVm5WN1QrR0lQ?=
 =?utf-8?B?aFgzb3hpSGdLcE82T3NhNnZKaUdkczU0dEFEQWppalhWL0JQUU5aK0t0eEtV?=
 =?utf-8?B?Y09qVTRNODM5dTB5di81ai9HSTlHVXZMZ1Y3dDN0MHBzRHgyRm5UTGxjcDdH?=
 =?utf-8?B?R1k2OXEycWNpZjlSeXhnRlFaQ0pOZzVvbXVBckJzdDVmUTIzVktuemFaTzdy?=
 =?utf-8?B?eUFKUzhxaXpiYlplSm1nSW5SL2FEbHlwTkVSRHluU3M1dGFqSGRIODZ2eWpK?=
 =?utf-8?B?TnVXVlRLQjVydVFjMTJ0RzYzeHg2WmIrWlhoQTkxSVhjdGtTZFVkcmlIMlhQ?=
 =?utf-8?B?bTJJK1B3Y3FiemgvalNFaEhONjFmMU80b0ZsQTlYOTBPSjhwRXhoTnVBYkNl?=
 =?utf-8?B?a3lHa0dRN1FubVhkeEVuVjlHcktIMlluV09LQ1dPcXFCdW9SOVUwNkI5d09a?=
 =?utf-8?B?TkUvMFBLdjgwV21hUkJSVHByK3lBQnR6Z3VLUEhNMlFTcnhIbkk4YWpCY2g1?=
 =?utf-8?B?TjNLTlNtZXMvazNOTTA4RTJjMG9LNEpab2IzaGFLRmUzSDN2OTJSK25hM3BR?=
 =?utf-8?B?SW5NeDdlYk1OamY1TVFBYXd0a3ZhTXBmWnRPdmwrT0hCWHBPd2NNM29NdHlI?=
 =?utf-8?B?VVBWYlVlQTFQYmdiN1BRZHhGazFNb1gxNm1laXlJcDFNemlCbWdWVTYwL2FU?=
 =?utf-8?B?Y05QQXhVbTBWZEhPR1RrQ1FYSXhXWS9oK0l2SVZwNEFWbnRITXZmZjQ4aGhj?=
 =?utf-8?B?RkFRZlBuOVYxVnlJOGVzckJVN09KSktWTVdCaVZ1Q2V1RWVsTThId0YzV29G?=
 =?utf-8?B?VGRoWXRuRklyQjladXFYUHFrcUR1cnFEdmUrLzNzd2JtVmRxRjNrcHRBSDZG?=
 =?utf-8?B?NWpzM2l4clcydWRqbTc5R3JsMlhVcmFZVngzZEdHdjFZK2ZvSTJ5bnNORE1Y?=
 =?utf-8?B?b2hEZUZWSUlENG9Ya1JOcDJJVzhNeDlSNGNWRG1ETzN6ZjdvcU9JZ3M1Y2Qx?=
 =?utf-8?Q?aai6SkIaGMg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dS95eFVoQmgrK2JBdGhBdzlGc2JpbS9KbUhvcmxEb0hjcGFlOEQvZUFuZjZ2?=
 =?utf-8?B?L2puMEY5NGhMZFVpck5WRS9Hc3ZxWldlcnNuRWZJMmZjdDNVdHlCcmRETm5K?=
 =?utf-8?B?eEFWdjkvY0sxSjl5cGZPcG5OR252Y29JSlpZQ3NmemR0WGxUT1hSQWpuTmt4?=
 =?utf-8?B?SkNBTXhnbEg0SXFNemlaR1ZwTWkzVHVPOTJxeStzU3NaU05hYkY1eGFlK2pZ?=
 =?utf-8?B?ODQzcjNWVlNkcE14N0tlQ2VXcjFDaXJxelNSR1I1a05YaW1PRC83U1BVSE1s?=
 =?utf-8?B?NGRYUTMrSURER1pTSUxPY1hJZThPakd3azk4dGFGRktKUEdPVEhBOHlRaWg1?=
 =?utf-8?B?UUFtbXhRVXNjT0lqdGZBVHpJeDJETGMvYXY4a2owWndtUmxpYUk0ekM4NlBL?=
 =?utf-8?B?QUJjSFppUDl6dzF0U2s3dDIySWtxSXNNTGZtR29pcEV2QStNRnkwbFJzY3Za?=
 =?utf-8?B?NFJ3YldMZXBYMkJORit1WXlZSmU0T05Ra0VwajJ0SUJKY00xcTJiN1RRbnNX?=
 =?utf-8?B?TTBxMnlIVnJoeXlKdGI2a0tXOWhla1RJT2ZUNmpyOUxOcXh2eVBvTmE3RkZv?=
 =?utf-8?B?cVhBbHUwOTVTSWxaMkVSK3RTZXlybGozY1NOVFdjZFJraEhrOHJ4amY2RDk0?=
 =?utf-8?B?V3dLc1JFNE1CYkltelRtRUh4RUU0c0loSzhaWU9CRHcwaTc0dlVhTTBJSzhJ?=
 =?utf-8?B?VXJ6enFBWnB6NzJsL2hnOXJZSEF0UWxUVWs3M2lubU9sSnA1eTJCQ084bnN5?=
 =?utf-8?B?VkhiRStQRWlJdWZKUGtQbzRRaW1rZzRzQXNDUGplV0VreHRuRUtGMWlZSXFV?=
 =?utf-8?B?VDdkNG1MR201ZDk5WUlDd2IwN1hBL2lWNFkyLzVHdEd1ckcxTGlxT3lSbmZB?=
 =?utf-8?B?QzBSV0lHVFloMjR2cEFucmtCMDNZOTBZZUlvd0hZUnNiR2FaRDVwaG1CTFZ0?=
 =?utf-8?B?azBiM1R1QXI0VkM0UTRLRHUxd2tmbWdlTjFrTXFXUXErL0NDMXhsNlBmdVJ0?=
 =?utf-8?B?Z3oxOWJycFFUNFF5WkpEalBSV2ZKcm1MVWtYVEQyRFFMLzRPeTFUb0VqOE5s?=
 =?utf-8?B?UDIwbmIzeEZIQzVYd000V0QwNjlHWlpiUWcrZ0JIUVNSaVBIdVZtcnBNeExP?=
 =?utf-8?B?TG16aWtQL2JCUlZtUkRxT3l2aDc4eSttYjl6U3R5a2d2ZmhZMTRrRksxL0Vy?=
 =?utf-8?B?c0sxanZNV1cxanB6STdWcXJ6dDdYYTVxL3prREMxYnJVNkkwVFVJSDl1V3NI?=
 =?utf-8?B?dFMvdUQ5NktnWkhRQ0ZFYmRLVllDN0Z6L2lVL0VtQ0h2dUhPNkJxMllXR2Fo?=
 =?utf-8?B?SGF0bUY3SEU1Tlp3VWZydG1tVmcrL29PRHkwS083RFlWd1lTb1JDdmdjQ21O?=
 =?utf-8?B?eEIzK2ZVR1hka0hDL2ZQUmtZREFmYWhYRU8yTm1lSFBUNU14L1B1a1ZuK2tV?=
 =?utf-8?B?akh3T2hMenlJNjZTSkQwSDR2YllRdHAyeWQxM3pRMm5OVWE2VkVYMzlYUjBI?=
 =?utf-8?B?aXdtYm8wMjg2QzdCUUhMaEt5V2JzcWVCVVBNWTFGSVB2aGJmUGRpdGpnNnlq?=
 =?utf-8?B?aTdtMldIcDhNc3Q2Y0RrbjlSc1V2MElscGYrdjhDUml0ZTBHTVRQMmRXWVZk?=
 =?utf-8?B?b1NUcDB1amNpRGFxZWNxK1MydGEvMFpCNnpMdS9XbWxlbjJVZE8rNTBMcUIz?=
 =?utf-8?B?Ym5JVDZ2cGxvbUp5UFZZSjVoUU5TT2U2L3VNeGxoU0EvSWp1c2lCN09VR1Z2?=
 =?utf-8?B?MXhmb1JJRVNXbnZvR0paQ3Z1RU5ZVUFwdnQzUWY0a2ZJRjBCNnJHQUtoU0xL?=
 =?utf-8?B?cy9jcjErYm5VZm5xWTAzQnpoZCt0Qm9zbmMvWUdGNXh3VjhUWGJZS1M5R0FF?=
 =?utf-8?B?VVRyRjd2TWxCOG50QytESG4rV0dTNkNOa1F6UUtTZ1V6MDNZWDYrV2MvaGdY?=
 =?utf-8?B?MWZLMmVFb2c4V0VNdndDR2ZWR1BsK0xHZmtUTmsvaWNsSUJBTHRsbnpmQ3d3?=
 =?utf-8?B?RUI5YlpudVpwVGNYYWtWRnhIYWdITnc1UE5zRnk3REd5UExwSnNsWHpCMEg0?=
 =?utf-8?B?S2pDemF5ZEYrajRPWWg0SXhOeUxac3EyQ3dDU2x3TUMvU05SL1g0Q2FJMVZQ?=
 =?utf-8?B?allKQlRiZXJXS1AyVDZWeGdvS0Y1ZUFuOXp0aWNIclJXOVlqb3VoSWo4NG16?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db375420-458f-4d54-f6b9-08dd2266421f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2024 08:54:35.0707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dcj4l3ZT0fglVWBSHijZP8WfRNbgRpc8Q5/S3Gf+mbOLhXh2vMcEfiR1EtbLYsQmok6e4d44lL0sGNYm7XpbkvAJ+6eMjc3RW3m8R4HjtLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734857728; x=1766393728;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ls7Ueialy1rOv2kO9eA05NCreMIbvzvOSbJaByJT0mA=;
 b=SFctw3NKydfhPVLnf/UIzyxaRmSvFs6L3amjAsykwMz0F80LzX20hIsF
 jbIdYyJXFvobE9FG+mN/rIy3ArBuRxx1Qish3jf0H9DFSxknD0e1iWx1Y
 9n8jp7ztqZ4tbkD2wHBfeMsx8OshcpkVQG1x0+EQ7msauAkT9p1gZgiVy
 LgYhzEYgQRL0b2sJJPpdfmAADRl99HYmmbWbyXy/6Hi8fier8pZg8QN+4
 zPhRRYv9hjuI4Ofluxfo3oqxu5SWX9RFCwJmTxxCqgTqUXenWPcjy0Nuu
 lx2EQQAPJ8Zw1dj8V5OGVqLEHjUgE3Oj/cNNwnH5dqzIeZchogGvOaasC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SFctw3NK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: return early when
 failing to read EECD register
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



On 12/18/2024 4:37 AM, En-Wei Wu wrote:
> When booting with a dock connected, the igc driver may get stuck for ~40
> seconds if PCIe link is lost during initialization.
> 
> This happens because the driver access device after EECD register reads
> return all F's, indicating failed reads. Consequently, hw->hw_addr is set
> to NULL, which impacts subsequent rd32() reads. This leads to the driver
> hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
> prevents retrieving the expected value.
> 
> To address this, a validation check and a corresponding return value
> catch is added for the EECD register read result. If all F's are
> returned, indicating PCIe link loss, the driver will return -ENXIO
> immediately. This avoids the 40-second hang and significantly improves
> boot time when using a dock with an igc NIC.
> 
> Log before the patch:
> [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
> [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
> [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
> 
> Log after the patch:
> [    1.031000] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    1.032097] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.642291] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [    5.480490] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    5.480516] igc 0000:70:00.0: PTM enabled, 4ns granularity
> 
> Fixes: ab4056126813 ("igc: Add NVM support")
> Cc: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> Signed-off-by: En-Wei Wu <en-wei.wu@canonical.com>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> ---
> Changes in v2:
> - Added "after" logs showing improved boot time
> - Fixed error code (use -ENXIO instead of -ENODEV)
> - Added error propagation in igc_get_invariants_base()
> - Added Fixes tag
> - Added [PATCH iwl-net] prefix
> - Changed original author from AceLan to En-Wei
> 
>   drivers/net/ethernet/intel/igc/igc_base.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> index 9fae8bdec2a7..1613b562d17c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.c
> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> @@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
>   	u32 eecd = rd32(IGC_EECD);
>   	u16 size;
>   
> +	/* failed to read reg and got all F's */
> +	if (!(~eecd))
> +		return -ENXIO;
> +
>   	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
>   
>   	/* Added to a constant, "size" becomes the left-shift value
> @@ -221,6 +225,8 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
>   
>   	/* NVM initialization */
>   	ret_val = igc_init_nvm_params_base(hw);
> +	if (ret_val)
> +		goto out;
>   	switch (hw->mac.type) {
>   	case igc_i225:
>   		ret_val = igc_init_nvm_params_i225(hw);

