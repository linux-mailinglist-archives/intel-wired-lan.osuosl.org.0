Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGY3JpWCGGp8kggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:59:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 541655F5FDE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 19:59:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBF0940565;
	Thu, 28 May 2026 17:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWDVZa9aH4AM; Thu, 28 May 2026 17:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3668B40567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779991185;
	bh=7qFmurf6xJGGGu7UxU6dwLbEAT8j+Ha3MQpUrSB96Vs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b7LEBsBQiGzkhW1exPAp9Dv8rFAzCdD0GKBVCqO/1gTyMduTVZcZZwpPYrYEu9Lch
	 /igsBXNpPHsXE5fZM6A4Gi2k3FSclPEsbKdFbdZfPsNfKSvz+eg4WmCtA5TWin3RoV
	 AF3dPuTFwTWDXYPK9Zwzx0iO2zLqkLDyoUk9pg9vKAgdKj6dxFp6Rzxjvsmcd8rzWw
	 tTerBfw187JxBFXozS8Jsmcy7C0bU4CubWZQtf7boETiF0GZ1msMzqY4LQocPcQR7q
	 PNvr4wMdWQ8Mg81ptV0goaBpMP9ZY4ghe2yg/2EsKiWmzPOuar/34+GbARWm5s77YC
	 duCkJVMxr+nUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3668B40567;
	Thu, 28 May 2026 17:59:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AA12288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 076874007A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZP4O4W6C7vk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 17:59:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFF6040002
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFF6040002
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFF6040002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 17:59:42 +0000 (UTC)
X-CSE-ConnectionGUID: CH/E9fZRSTqOE6m1532TWw==
X-CSE-MsgGUID: jdZQ5iJyS7OB5aLiidWoUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80565451"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80565451"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 10:59:42 -0700
X-CSE-ConnectionGUID: gGFCNTsgStGLhzx4Hu7r4A==
X-CSE-MsgGUID: 7b9brPZBRZqUe59wKcG6uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="244438180"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 10:59:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 10:59:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 10:59:40 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 10:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JruxONSwEzEqpSAXe2h7JOLVrV8SQz4Ok/IFMbQRssFccxR2azK2ZCxIbv+6Q0NA9sVdqjH6KgiUB2ZuZEsVNIezntbKddgWJiX4BIywE+pAt8e4z1lQcVwU+zSNWO2uweVbt1LspIlv13UuOa3BtDrgzjOfCkzKolzJzTPmEoihxRdkFJpPFWDU2czXZzCHjjkCL8nft3v8kDBe5OS4CkZVpqPg2COCfuDqAsALLQ9nyszbbUWPovY226CjCE9iXhH5yoMD66fOC1kyRr1DoX7/09b7qHcrFsX/gsTYJ9j8vVsp8GVtk5s924TXFoIjtjUrua0rdh/rEw0BO9m8qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7qFmurf6xJGGGu7UxU6dwLbEAT8j+Ha3MQpUrSB96Vs=;
 b=fD0mZUdOAHqaZx3mYnc/z9Ob4WlQBo9IL5jv3qmV8PvGr/MIFMymJLrGmaSdFAq4b/DbyzqaXCqLoAucyVTjlt4Qpx85pEmtM/GPdSDkpGCKTn4R1EuxNaEJFde3HmC3icfWJoXH+CD5vGo81yKNNNWEWPGHWeoJF2UbtMk7KTzZV3ju/lnovmIlRCNDi3WgKAtXciSQZWebDWccgSr+ds9Wfw5bvLmsL50OBKE3sCH7dv3h8/6FWFuk1AO1c4KLjiJ4OEYhjWgHA+EtkkVMgm3oRQqsgJJGteAniaGkrWC04P1SwE06eyTfY058vq7NRwZRmtAAOB5keQR8gxb/7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 28 May
 2026 17:59:33 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%3]) with mapi id 15.21.0048.019; Thu, 28 May 2026
 17:59:33 +0000
Message-ID: <1d9f1395-1a7f-4f6c-a7e4-309e7f5f834c@intel.com>
Date: Thu, 28 May 2026 10:59:30 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>
References: <20260525143100.2758251-1-sergey.temerkhanov@intel.com>
 <20260525143100.2758251-2-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260525143100.2758251-2-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:303:b9::28) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|MW3PR11MB4539:EE_
X-MS-Office365-Filtering-Correlation-Id: 91bcf2f0-157e-4906-c2cd-08debce2df57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: 2vfGNs/b+6+DnnZtU3HbvBLcf5pkL1FQ3G42gdEM/RuZVyffGB+htFKP1+HuhoWn36y3IHFG7eJ2Rj+iDn7VO1IBBu3eb02oKVnVRgCVdTiLm2mSEvcC/iIHNq/+GmjmYN16sSnMBEn742W0EhQMQs4FyrPT04jYLNv4rV5sWlEGE642hLHylkvcPUZNtNVNpTNt7HTVxj3QNV/mOdILrR7t+RDmRxTdg81tXyZ/+cvjEPOVbzSyfaBASpb+npDYb4KbK5cf1mPxJm1+gVqEHiJLZBAViMm11BgTfyJQb++whDSP0AfsvrQa4jDNohV1KlaOmPzvBiklJf7wzMDEjlk8LK5HI05olOEQi35RqhXKru2cfjJSGOsUIlClx+QkyPj7jgbWXxIOeYTGfdYTCyYM0ZQkVG3Rt2iqY698SKP+uMdtOXmkImOxVSxz4KwmdPu07yK5CYBLocSzNzo/o6Dm5SIS5ltxy6nvoMF4s7NUEZrNqAwDGxVr+f+u89Xp1CtzgrHQq47gNyjFF925pFCum2aZK+BEG+Z8J6t+XJMppTXVVgozHr1vpYiOoNejDNwfpcm9OkdLshRASFPA6TvPjDJSwEbFzO2IucAfSIFu75Gt2Fc5I5rTf3kUo9NsvFMLDRMUsXb7QQKZNyp6bYetyH2CVFn483nAAGbtt4rNwiF8mGG+VWAkOPWGQGAG9rd8LhultzGr288CmElVrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTUxZGhEcG0rMU5ERExSRzQrb2Z5UVJLVHIxNTQ0RC9BMnFNZktmc2tuTjE0?=
 =?utf-8?B?QytHSEpJOTEvN2sxNU9oS0dQcFRsYjJyWDRmMHA5ZUdrL3pLNUZhYVBPY05C?=
 =?utf-8?B?OVAwV3MzajZ2NE5kbXVuWTVVbjZPd3dVUE9iS1llSUlObUpJQU1lZE5tdWdR?=
 =?utf-8?B?VGV0YTJOK1BmTXNmc29haHdmWXBKTno2aGI4dlV3T2svRGtiWTZ3QW9UREN2?=
 =?utf-8?B?TEtYNG9MQVRSbmhLS01lTEx6S2lLZDV0NzZCdk82QmJBZ3NKcU9MZHBQbm9U?=
 =?utf-8?B?TXdyWHpuZjR6dmVoVlpHV0ZqZFdkY1dRVldraEFPSWlReGlYRHZaZ1YvdzVq?=
 =?utf-8?B?bVE5UXBUdmpnZXNCdVB1d1RiVWh2TThMa2twcUphS1NFU01ERFR5QjA2NWRR?=
 =?utf-8?B?ZUZJd0Q4M0prcWVwNHJ0S05OVUQrNFhnWWJVT1gzQkVkb2hETmtYb2VhaWNo?=
 =?utf-8?B?dUNIZTBselk1QjR0VHNubGU2b2dvdmJqck5lYWhGQjhSbnFOaE1TTkFxZExX?=
 =?utf-8?B?VkJpVmhyOGZWK3VQUURzTEkvS2RSckFjcS9RZ0MvWXhGZUFmbzU5Z2xvMXFx?=
 =?utf-8?B?SmlUR214bUt5MDFZQnJ5M1RPQXFlMXBtWFhmbk15ZEhPaWVkRTNCZisvbG9p?=
 =?utf-8?B?cUp2MUxTZnhDdTVBeFBnNnlkTytaY2VQMm9hUHpiZ3dKditPZm1rQkJXdGZO?=
 =?utf-8?B?ZXlnek9ucDFNcEFNaENGV0FjWTVQVThDWWpuRGlYRXdVeWJrSnBreFQyVGtq?=
 =?utf-8?B?NXdXMk5NdnBOZnFtZytzVXBWdHNORXRBSFVpMVE2MGhTL2FESk9sNkI0OVZT?=
 =?utf-8?B?Zy9OK2dUWXJkbEJyckNJZkJWL3dZQUlvYTQ2SC9aT2tjZm90VnZVWVhVRGsv?=
 =?utf-8?B?S05LRUhqTU1KcTZ1ZmVMcG1iWndRRE42L1ZpajhoV3ZyMG9JeFRFMHFUUFBa?=
 =?utf-8?B?aVNURjhRa2ZIRDlNTWVwZWpHQ2Y0K0QvL2JnRkVjVm91UVNXRzArQUhiUWN3?=
 =?utf-8?B?eGphU2oybkxQbENOc1RrWkZMT1BtWC9wWFd0SmI2ZTVtazhYa2dQUWd0V2hZ?=
 =?utf-8?B?YS9tZCtRZ2xpdkdwcTUxQUZiaXR3NHZzdkZ5ZjFmSXhmMTF2a3FYYnE4QTdB?=
 =?utf-8?B?eWV6NWprVGNFeVQyZUtycUR5VEpBTXFxRWMvbEFUY0l1M3N6aUduUUxPeGV0?=
 =?utf-8?B?dW1ZNkptZzJqR2F0QzlGdkhlMzBPblVBUERGSlhHNDNISHhhUmNmd3NXU3pn?=
 =?utf-8?B?UFhxRlYvS0JaTUhuK3QwUVMycjdVU2FiZ2lXaHZ1NURnRERhVUpqdEFuVmFr?=
 =?utf-8?B?TE5zczQ1L0FRMG80T3h1RXpLVjM5eUpURjV0OGZ4dERTc1RkZ2t5NXBTZlMw?=
 =?utf-8?B?QUNHMzJObEQ1YXlteUU4TmVBc0JtbWlXTGJtbG5VaUVDWW1FU3lKYmw5elV0?=
 =?utf-8?B?bllubFFaN2dobXJuaDNnNWR6Q3R3OVhGcDBiRkZKQnhCWjB4MldvU01wSmM4?=
 =?utf-8?B?K0NSd3NTMkpKQm9ZYmp5RngxVEk4YjVQVjNtZTNoZ2RQUmxveGdpWnB3eWJs?=
 =?utf-8?B?dDBBeEF0VU5FMk1WUlI2Mml4MlhMSnNyVHZUd1FmeXdDQXNMUncwTTQ0OWlY?=
 =?utf-8?B?bTNGVTRQQTNMTzFRUkJsd1ljVEQ3U0xpaW1DR2RFWGRiNXZ5T0JlTmpxV0ls?=
 =?utf-8?B?NnRsL0VoNC8wdGZlSmhKdDhRNG4zaHdVV0lPdUlESFl6ZWpDSjFKN0NseUQv?=
 =?utf-8?B?Q0RHQ0NlcDd2ODltMmtYNms5SWdOaVhObGQ3V3RCLzdVK3JSdzVZN1B1YjJX?=
 =?utf-8?B?TXRmS2U0Zmp4SzBqZllaK000ZkszOTNpZzd5dmZFSVhxZHk5Z3JzOVRDMkJJ?=
 =?utf-8?B?Y0Z0ei82WU9naUsxaGdYNU0waFVRdytTbUEzc2VhYzE2ODRSNDhaMW10Tnhn?=
 =?utf-8?B?aUJZT1VGK3EvSHdMQm1iTEgvK3A0aVpqbjFKMEVtb3BDSUJxUi9NTzlFNjJW?=
 =?utf-8?B?MFNaakxFajNXbXlKYjVTa1BsYXFnT0pJYUJ4elVLYzdJdE4xTlZGREZ6dTVi?=
 =?utf-8?B?MGx2OUVGcmlRdFhmcEJnS1hpTXNYOTJTYjVRNk0wOHQ1SEJlTmFyeHBwOXBH?=
 =?utf-8?B?aGVNREovQkRWb09WMzBGTk50YTh5S0RzUzNKRWdNY2Z0R3RkdXk2UHg4ZWNO?=
 =?utf-8?B?QjZHTW5SOWtBeTFodlorZ2EwSFd3ei9ZZ2RhcThXT0JLUzJjSG0vblhlZ3gz?=
 =?utf-8?B?U0VTYUZUcGx5Y2Q3d1dGTGdYUXlxM0xZUjc1azFKejNuL0NuQklBOG12VEZO?=
 =?utf-8?B?Y0MzNmNtWnF3NVdFdUp2b1JBNFhiaHExeE5SMHlzNVY0SnBzVDQvckZUbS8x?=
 =?utf-8?Q?+i+LmOWN+tt3NOR8=3D?=
X-Exchange-RoutingPolicyChecked: oUu/l5Eyi4nao7ypkrbjMcbaaQ2B1JRzR9zK1sm1KwJd+okc4eiCwIUaZii2mto6XS1XNNCwzO/BYC6RQ7qfGGfMVzO+2nUdqsGflTLgFqRbRHLbv/2/lKRypQprWv+sBkOMah+tZeQtVEzSs14pnvmykzYFR9hA1+KIHawXr1H9S3LqLYrTAyK740I0OF3Xi8PePBB9GEVH4O3qsgzxWdLh5n6JvAoQmLwM7NQl/CDrM6rm1Idt7z/l4SpaKPC8qgeTyMOKFNzyDx8uyZpuk7/SL65rINzGsFxBRjwSlAm2CAlg3775u48ECiyVKV6DYf5RoN+ronwW/fhgL78jNg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 91bcf2f0-157e-4906-c2cd-08debce2df57
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:59:33.1099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egtwA44H87tOCWbh3aII2bm2Cb3fYcSyLxs7R+yWj7o+8H1v7Yd/VsiYcIKCaMRAznoIJJzSp7lsITxWOGc8FQ1hNiNNjzNCvrO1zboz9vA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779991183; x=1811527183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BZuvMp6Wq+b3yno7oUmyWTzs4a7jfGGQ1x8qf8wsxb4=;
 b=A59md8UcwdbevIoIqGeRxEQWV3W9jeUKd9pWirqNqe6nSyJowwVCz4GD
 vU4urCR15RYfOVXNF29GqAI3t8jis4uo1DlbaiqYX/Ns2i40r2zy3BX74
 7gf3F38nEeOIwe7VgZnemS1F+MVEgMIkHXZDyaP93Y0yXZMfUZzGmFXP0
 lCE/PixJnYVALyIvV9jVoTaV6tdZwBFvOfmO3dYTw19JGDwXEWjinJSpi
 nQiNpEz69f4UTMVXS/MIzPCWst96hRU4DSDezW9tdnx2sFHI8akxAJ4bt
 Lsm+vu/pKQX+ofKCL1ySBEbifAIstSsRBkY36hhNPahK/BfT3XwnCIl2p
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A59md8Uc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH iwl-net v2 1/3] ice: Convert
 ctrl_pf pointer in struct ice_adapter to RCU
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 541655F5FDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/25/2026 7:30 AM, Sergey Temerkhanov wrote:
> Use RCU to ensure the consistent state of the control PF global
> pointer contained in struct ice_adapter. Enforce RCU usage on
> the callers.
> 
> Fix a potential invalid pointer return due a TOCTOU issue
> 
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")
> 

No newline here; please keep all the tags together.

> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Tested-by: Frederick Lawler <fred@cloudflare.com>
> ---

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 07e621813ff5..732964fd7c78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -4,6 +4,7 @@
>   #include "ice.h"
>   #include "ice_lib.h"
>   #include "ice_trace.h"
> +#include <linux/rcupdate.h>

I believe preference is to have kernel headers before the local ones.

>   
>   static const char ice_pin_names[][64] = {
>   	"SDP0",
> @@ -54,11 +55,35 @@ static const struct ice_ptp_pin_desc ice_pin_desc_dpll[] = {
>   	{  SDP3, {  3, -1 }, { 0, 0 }},
>   };
>   
> +/**
> + * ice_get_ctrl_pf - Get the control PF for a given PF
> + * @pf: The PF pointer to look up at
> + *
> + * The control PF is the PF which owns the PTP clock for the adapter.
> + * Only the control PF is allowed to perform certain operations on the
> + * PTP clock such as adjusting the time or configuring the pins.
> + *
> + * This function must be called from an RCU read-side critical section.
> + *
> + * Return: Pointer to the control PF, or NULL if not found
> + */
>   static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
>   {
> -	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
> +	return !pf->adapter ? NULL : rcu_dereference(pf->adapter->ctrl_pf);
>   }
>   
> +/**
> + * ice_get_ctrl_ptp - Get the PTP structure for the control PF
> + * @pf: The PF pointer to look up at
> + *
> + * The control PF is the PF which owns the PTP clock for the adapter.
> + * Only the control PF is allowed to perform certain operations on the
> + * PTP clock such as adjusting the time or configuring the pins.
> + *
> + * This function must be called from an RCU read-side critical section.
> + *
> + * Return: Pointer to the PTP structure of the control PF, or NULL if not found
> + */
>   static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
>   {
>   	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
> @@ -207,6 +232,8 @@ u64 ice_ptp_read_src_clk_reg(struct ice_pf *pf,
>   	u32 hi, lo, lo2;
>   	u8 tmr_idx;
>   
> +	guard(rcu)();

This function is a bit big for guard()

"
Use of guard() is discouraged within any function longer than 20 lines, 
scoped_guard() is considered more readable. Using normal lock/unlock is 
still (weakly) preferred.
"

https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

>   	if (!ice_is_primary(hw))
>   		hw = ice_get_primary_hw(pf);
>   
> @@ -3076,18 +3103,19 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   
>   static void ice_ptp_setup_adapter(struct ice_pf *pf)
>   {
> -	pf->adapter->ctrl_pf = pf;
> +	rcu_assign_pointer(pf->adapter->ctrl_pf, pf);
>   }
>   
>   static int ice_ptp_setup_pf(struct ice_pf *pf)
>   {
> -	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
>   	struct ice_ptp *ptp = &pf->ptp;
>   
> -	if (!ctrl_ptp) {
> -		dev_info(ice_pf_to_dev(pf),
> -			 "PTP unavailable: no controlling PF\n");
> -		return -EOPNOTSUPP;
> +	scoped_guard(rcu) {
> +		if (!ice_get_ctrl_ptp(pf)) {
> +			dev_info(ice_pf_to_dev(pf),
> +				 "PTP unavailable: no controlling PF\n");
> +			return -EOPNOTSUPP;
> +		}
>   	}
>   
>   	if (pf->hw.mac_type == ICE_MAC_UNKNOWN)
> @@ -3123,11 +3151,16 @@ static void ice_ptp_cleanup_pf(struct ice_pf *pf)
>    */
>   int ice_ptp_clock_index(struct ice_pf *pf)
>   {
> -	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
> +	struct ice_ptp *ctrl_ptp;
>   	struct ptp_clock *clock;
>   
> +	guard(rcu)();
> +
> +	ctrl_ptp = ice_get_ctrl_ptp(pf);
> +

No newline between the call and error check please.

Thanks,
Tony

>   	if (!ctrl_ptp)
>   		return -1;
> +
>   	clock = ctrl_ptp->clock;
>   
>   	return clock ? ptp_clock_index(clock) : -1;
