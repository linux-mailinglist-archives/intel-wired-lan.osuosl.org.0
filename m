Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DD38C74BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 12:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B950641CCC;
	Thu, 16 May 2024 10:41:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zdt3h0ltrQDc; Thu, 16 May 2024 10:41:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB08D41C9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715856116;
	bh=atRrQndo8daz55G8yo+YPzmREkmGh/4Jihy+7UjHoRE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eHZp5BvMrX0l1Qhptyn51yB7HXKo/eshNCm2WzSQ86NVZYa6Jq4maDF2twmy60hIn
	 kuwc+enN/cQI5pcfH6bc5+VnrlK/BnwAU1h4OQl1PAlj9fK0dHmTixpDdyhZKuWpw3
	 RRJ7CnxFdLh0egabrqQBjUNM1lypWWeihwR2BDsEY/uHgqxNTDCT7sq7HayXCi3QG9
	 pwUmHl+Lk9vqAu9oRn8BAU/Qtu70jGOaAc+I/CHZsEMjg5ZGwKHdLpDI+iU+uoPXBl
	 5uC8SDkar6QVo5QLmITuPgZSJS1rKm9ob1Dm/XX9cpETGp1g7eb/SH/roOiDZtyl8B
	 kjJ+VMQ3Iso0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB08D41C9D;
	Thu, 16 May 2024 10:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EDB51BF292
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 579794045D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jWmIsDr4INuu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 10:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C166940204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C166940204
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C166940204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:41:53 +0000 (UTC)
X-CSE-ConnectionGUID: 6wNIRFrXRT+B/G1Zcdfybw==
X-CSE-MsgGUID: tstxwPYVTLuKzs4ZTetStw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11809343"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11809343"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 03:41:44 -0700
X-CSE-ConnectionGUID: uBivtuEmQNiNcvsq+hHiFg==
X-CSE-MsgGUID: 3HgQUM2dTvWx5oOxbyIAaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31802438"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 03:41:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 03:41:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 03:41:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 16 May 2024 03:41:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 03:41:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ets+rhuW4UgXBUaXTsBIg2nruh0UKugU5fs7c67G6Bsi11erMI8ID4TVUWLq8OpCIa3NqnD+QV5JDhnzSqV5KiY89+M95wUPP4Anz3UkjrP6Bq501CMSdayXJG3kE4yHhiIr0S6JCybdNwnvqVJpimIt+0cUc03MOwgyIid4s6TxwDPeZPS3NbgmEbZeE7gAPZ9hOS+ZuueA5H9UsYTqtUGQ6RrBHrfMsAU1IZegq3JiXhFyoAYgmES9pWHyzN9rkAEOc4NGIUufgknCncXd99pVvFT+RLCBKDxV42qAn6TXCSrC9N/i5UfvSpK9nytAxZdBwMKjeyicW0LgCtpnaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atRrQndo8daz55G8yo+YPzmREkmGh/4Jihy+7UjHoRE=;
 b=JfozfiYySKIVrhusoyCFrFOFpH8entJKjquyIaEw9NocpAu006fnazs7RvqpsKSjfRNvETZuhvb63r/jYLwu7PJoTK3sNbxS99Fx8/MXWeEyLvHw2L9Gp4kQmahP4ERR/4XpToh3pqtEXckjxSTmsuC3VqjU4g95loWIq1GBZxBv2w80pOS4xtsAeqVyHXC5RM3xLmD52WcbisJUX4nQXrYs8in87JjfBxnd1EePAHXT70zjPsmARCjicjeTkcAsBKJn79m54PI/mC2z/1ZDD6I61v6vtAE93Ji8Ta9rVIKO5eF8UOWLwth04zsHQTbE/n9m5OVxFzG0dtLv/Sforg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB6191.namprd11.prod.outlook.com (2603:10b6:8:ac::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.29; Thu, 16 May
 2024 10:41:40 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 10:41:40 +0000
Message-ID: <095fc242-ef9f-441d-b376-f2cfd4d5759a@intel.com>
Date: Thu, 16 May 2024 12:40:12 +0200
User-Agent: Mozilla Thunderbird
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
 <20240510152620.2227312-8-aleksander.lobakin@intel.com>
 <033c24ce-b0e4-4653-ab8a-2cefbbec0893@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <033c24ce-b0e4-4653-ab8a-2cefbbec0893@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI2P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB6191:EE_
X-MS-Office365-Filtering-Correlation-Id: 7383d5fe-ba26-422d-d7fb-08dc7594c4e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFhQWlBoRC9mY1hHYytQMFN2emhiTlFFSlJQQlEwTEg0QVRkbHQwbzZCY1Rh?=
 =?utf-8?B?YnBlTjRyMG45Rm9DYUNacVpYSEhyYkN2dTJDNy91K2xwRjQ0SW96TEJMMWNT?=
 =?utf-8?B?Qmp3L3JnSnZFa21yUlZXbE1udGJQb2tDZkt5UlJhb1ZYM29BU3MyU3FvcDFM?=
 =?utf-8?B?aHRwTURXWkNkc0lnbmszeVhPZjZmRGhUNjhOaHc2eWZYcWgyZ2kvVlNKTUhx?=
 =?utf-8?B?dHBTU0JBUVNoNHNNTGR4KzFNRWJieDEvc0NYTVZyajg0cysrUW5rYXpkN2RK?=
 =?utf-8?B?T0Flcm5JakZKeFcwdnRlVk1kbEdiSW1EY2xsTTBuTXRzRnZYMWVOY3FlUFZT?=
 =?utf-8?B?alJqcXlNS0JvdjF5RmhWUmdqWmJtTlpRSUVhUkN6L1c4ajdqRXdWa2lyUEl0?=
 =?utf-8?B?YURYMEZ4UkswUUtRTnovYlR5bGNZU0FMaUt5a0d1UXBpZXVLci83NW5pa0NP?=
 =?utf-8?B?dWVzSXgzN1F2TVZFRG1BWWVMNEdKWEhoTmxYUlpxYjFXR0FpbFk2cmZXK01k?=
 =?utf-8?B?Z1VzdDVLd1NmRHZBUHcyM2IwTTUzc2ZPQjRUaU1ib2JheXROTmdhYytSWm1K?=
 =?utf-8?B?b3BzZ2dkVjRsUXMvVFkwdDh2dkY2L2pBcVBsOUU3ZVVmbExJQllqWXFFSVYx?=
 =?utf-8?B?SmRVTlFndlprRkR1cVRjMWZBVUk2NUpjczZPbGZMMmhQeElXTUpYYWtqZmd6?=
 =?utf-8?B?SDdvaXh0NHl2Vk9ZUks0VlZCNjBMM2orbC9OdENqbXg3bHNrZmpCVmJNUFpj?=
 =?utf-8?B?RVRRREtKbDdqd3JPcXhGNFdRSXBBd29ENXpneDlhTHVCYm5XZldrVUJobENk?=
 =?utf-8?B?d3I5RG1neVJqT0FVUXpzS3ovdnk2MGR0eC9EMnJhVllpekUvc3V3U2hyVW9x?=
 =?utf-8?B?ZWlpd2ljRFBydmhyNzZFY3MxT21kNzgzMVNoNlF2S0hSRnNHUm9kZ3FsMERV?=
 =?utf-8?B?enZPUFY4NWF1RGpXNmNWYmNTTlo2SzZhek5DU2VIcGpkL0dIaWkrMXg5cEhP?=
 =?utf-8?B?TzlBRUV4RGZUMW4xTTVUNkxWM0h3bHpoMytySzNrNXJnd21Cb0tVaFIxejNJ?=
 =?utf-8?B?R2w2VHR5aWhncFFOR2ZMUGVlUjg1dGwrOUttV2Z0bUI0QmhYSGJPVkpIUGxH?=
 =?utf-8?B?TGtzQmtTNW0zaHZsR2hFWUZSMHpSVENXQkkremhBdW54YXRGKzA3dWxrQlJ6?=
 =?utf-8?B?T3FicW82L01JbjJsZWNieEF0akF0OEZCYXVJbU1kekxkOExkVTJ4N01FeEdC?=
 =?utf-8?B?TkFQT1gzV05ndHVmTlpzYlVCS1RFR2cyczlZUnl4dHBqU1BPdTFVaENkTjNQ?=
 =?utf-8?B?SURrMVpHSXU1a3RKelIrM2pET0JhQzMwRjNXMlNvTnNjSTVFSHllWWpGcERK?=
 =?utf-8?B?eHgvWkk5UWVXQjRuRm8vUUJtTTk4YWJQOGtjNTdVSlF3V0lXTVhrcHlJKzIv?=
 =?utf-8?B?aGhwd3ZaUk4yMDQ2VWJCakhsdnVzU1lKbkt6L0tGbHhmelRZanBYSXMxMnVH?=
 =?utf-8?B?YUFqK0dXNUU3VmlUeWxDaFpKY3hTZ3pybU5yMHpkS2o0ZFRETVNOV05NUzNI?=
 =?utf-8?B?K0JPTlNTS3IxRU5MdkE3b0FpRGV2a05ReGw5WEpia0c5aHVsMTZFemNUd0tB?=
 =?utf-8?B?OHExKzdVblE5QVpRQzRwUFdEUzhoU2hxQXp5ZmJnekRQUUd2U1VMenQzS2JT?=
 =?utf-8?B?V0FXaGlQcHkyUlYySUxibjhSYWN4SktwdFJESGZXL3d4NUl1b0ozZjBRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEM0NFd0SmM1YzMxRk4vZDVQVi9uRUJWVDlaS2xTc21iS3N5THRrcFlRaVdy?=
 =?utf-8?B?UHBYaHFnRDFCcUxxdlRiR1VnM3MxbzhqN3pEV0ZMUFFVY0FzTGx5MjUyNW0v?=
 =?utf-8?B?U2lhTDZFVVlkOUxOQlFtbFJ6WjZDcXliSmFCN1ZsMFFObWpnSDJyNkVNZjVS?=
 =?utf-8?B?QzNObTcyeW1oQXR2MXJiblNQQ0plQU9tSlMybzJlaUFPWjRPVEUyZDZRczRP?=
 =?utf-8?B?NHhrbzRaajFrRTVOSUIzbHcwRjREZ2VVZGExRWtxdFJ3NW9wNUlPeEZ4ZXdD?=
 =?utf-8?B?Z21VVC9OelRiVEJSQXV0eHE4a1dIaFZLWndPRFpTWDY1d09OTG9JSzR1eEpv?=
 =?utf-8?B?UTBzWjVkempuUEJaN1czSTNYejhLMHFnSkd3eUJ2VEpTOVZkYklaM0s3TEZk?=
 =?utf-8?B?OWhBRVNDc0xXRkVFb2syVkFTUDZBcE5NMWJWbzJ4cHZBSERLVkdCZzdjSTB6?=
 =?utf-8?B?a1pNT0RNWklObHBBZjRXbHlIclNjREhweEU0ZlVSdE5ITWEvNGE4WFI5YlNy?=
 =?utf-8?B?dEtaYkhyMmRpazlLRzFsSlBVNHZRNUZIb0pnbGdyQUNZTHRoMzN1cUFrc2tp?=
 =?utf-8?B?bmkxRzA0cU55WXpqRW1kbWF3c0pSdzRFc0w2ZG9Vd1dldTNsY3lWSEd0WE41?=
 =?utf-8?B?VHZYZ0ZBbGdaQjMzNTVrVnNrRmtQM3F5c0tBOW8veTV5d0RRNXlPSEF5UjFD?=
 =?utf-8?B?RDZMUWdqVXhzVWl3emxORWppVHlGa25uVWhZWDNFRS9IbExtZ3JicEtHa0RV?=
 =?utf-8?B?amVuOGR2UWxZaldyWVZwYlYzcFJlRXZ2SjRib2ZiYVdkZ1FmZUxmUjhVSnBz?=
 =?utf-8?B?OTFqTjAraVdUaEhWS1VlU1NCRjJMdVNPUVg0U2RLZ2dKZ2VodlZyWmRZK2lv?=
 =?utf-8?B?OVpyVGpvU3NNZWdhanJOWjllWHpOTEVEeFlTNDN4RmsxU2tZMkhzUjJQL094?=
 =?utf-8?B?aTdFZERaeDlETnB3WE1BT3p3TzRFbjMveU1rbFpWTkdxM3BTNFEwSFRndTE2?=
 =?utf-8?B?azQ5ZldOSkdDZW45Y2dHM2RTUHIvd1dDcVc0WDhJanJERzhMTm9QOTlsR3dv?=
 =?utf-8?B?dG81Q0lJU1Q4Yk1UQTJjUFZ6SmhFQ1ZueUFkSjFwWWRlN0xVUWM4czk1RXdw?=
 =?utf-8?B?clhVUjJmb3VnSXZ6dENwRXJwT2Y3TWJoVVF3bnpyUjJqTjdIbGZ5cXNMOFhG?=
 =?utf-8?B?ZEpXOW43a2VONkROdUJLZmhZMzVmbVdNMzJiK25jN2REU2p6elh2djkyajZI?=
 =?utf-8?B?bVVVam5sRmtLNEI3T1ZXdlpqNjBKVUJ0VjJnQzdEYUNIeFN0aGpFMnI1Vnc5?=
 =?utf-8?B?NitteVAyUmtBTmlOUk9tZGlaMkhZWWl4bWdaYlpFRElJV1NXenZ3TTJlZG1h?=
 =?utf-8?B?UE92a09qcXBYTHlvL1pPaEZ1dlh1YURTbFRtM00ycU9rRGpWQVdyalI5N0RE?=
 =?utf-8?B?dHVPbWpBT3MwT3Y4eWh0aTNBemN0V29wWFFIbG5lcEMxNEhEOGo4bHJESkVv?=
 =?utf-8?B?cHJ4S0tzSklKVmZQbkRZWjBKTlltV1FqVTNVTVpGSUFqM1lhZHJidFBCQ2Fr?=
 =?utf-8?B?RHJLR0IzdTlZR1kxTGtIM3dsM1lpclNRSGdJc05QNjhNZC9veFpOd1VPbTlw?=
 =?utf-8?B?T2IxQm44SDc4S3g2aWtiY0FId0VOVStpQmg0RXJZYUZyQ2dFanJBUWg4TVR3?=
 =?utf-8?B?V204eHdzbm5KYWNBN0VrSG8rZ0lkSXRRZytKWk9oTFlNT0RZL1JFYnY4M0hD?=
 =?utf-8?B?UlRETUVqaEMvWkowSksxQmRmQjRXVkk4TUc1OTUrcWVQdFdOMWZZK0hyc0o0?=
 =?utf-8?B?QlVpL2NEL1BoWkpoZUROaUFSTG4wUlpBWW5MeDVxYkswTDgxMk1jQ1A4NFhl?=
 =?utf-8?B?QW00c1V1WUQ0U3kzUWVQTjVNaVk5SVJBYk02UW8xc3lVa0FKZ3drZjJIcStm?=
 =?utf-8?B?c1pBdFltM1lkZ3JyYXgyM1dOVEZmUTQzNkhUSEVCOHJiZ2NIVnk3eUgwSC80?=
 =?utf-8?B?YnhRWHZic1dKV1J5S3BRMTQ4WU1QOE9VaGJYS1FCV1dvcEQwZ3RJWWx0K0ZN?=
 =?utf-8?B?WmFMVmdqNitCWFdneXNqKy8yTHpFcU1BUXZURXJtOTNaQUdnT3F3TDZkVVJW?=
 =?utf-8?B?bWZZYlBqbnN0aUxuVG1KMlRBZ0RxTTZOdVlPV1VYWXdybVRzbHBONGxlN0FC?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7383d5fe-ba26-422d-d7fb-08dc7594c4e7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 10:41:40.0374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7BG1ER3UJhxrDWyl8mIWNZlvsutpRbFlFH++P/lE2BfQGKLPuj7xGBmz/mWwNbneU+I9Dkjw4ghGW57H3G49OYZ0c2+lgmPvIm8uVBbl6Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715856114; x=1747392114;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TvOlI0zj/rJqhX+MPRhcJyLba5iRhNfBdRwZwONhDNc=;
 b=eqtUTmqzghVx2Jof21i79N4Bmgql90ilFs51FPeZVnRh4jrSoEdoQzN6
 5WwqtzVDQipq7y4X2lS9imkEbD81Oj9nTMDEcc6GuyfSkzw3OpSts5EX3
 OSuASrTv78pdsiVpcXG3CZTpUC4z88hOxzphPSZoklJ9/l3UVDlI+yag6
 h2CqLCNrzyYUYTkrkGgrnHbYN6j22suOoTNsDoTuzKcFr63QUClmIHX/x
 Zg8ULDJZYrcPs5pOXLmVh8xvxbpwsZ5aSlIVWQ0J4ev5oVLI8v6YAXm7E
 nNbYSm5AtT/GUbmOI1SwzGZp2kDZxkta8Qeu96H7hcrK0cEmrIwj0XP/z
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eqtUTmqz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 07/12] idpf: compile
 singleq code only under default-n CONFIG_IDPF_SINGLEQ
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tantilov, Emil S <emil.s.tantilov@intel.com>
Date: Mon, 13 May 2024 19:01:30 -0700

> On 5/10/2024 8:26 AM, Alexander Lobakin wrote:
>> Currently, there's no HW supporting idpf in the singleq model. Still,
>> this dead code is supported by the driver and often times add hotpath
> The driver supports the HW in single queue mode (not the other way
> around), so I would like to point out that all current HW on which idpf
> can load supports this model.

But no hardware currently wants to work in this mode.

> 
>> branches and redundant cacheline accesses.
>> While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
>> the singleq code only when it's enabled manually. This corresponds to
>> -10 Kb of object code size and a good bunch of hotpath checks.
>> idpf_is_queue_model_split() works as a gate and compiles out to `true`
>> when the config option is disabled.
> Compiling singleq out does introduce an issue for the users that would
> end up without a netdev if the driver is loaded on a setup where the

There will be a message in dmesg saying that the support is not compiled in.

> Control Plane is configured for singlq mode. In that scenario the user

Any real world examples where the CP requests singleq mode?

> will have to recompile the driver/kernel in order to load the driver
> successfully.

All distros will have it enabled as usually.

> 
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>   drivers/net/ethernet/intel/Kconfig            | 13 +---------
>>   drivers/net/ethernet/intel/idpf/Kconfig       | 26 +++++++++++++++++++
>>   drivers/net/ethernet/intel/idpf/Makefile      |  3 ++-
>>   drivers/net/ethernet/intel/idpf/idpf.h        |  3 ++-
>>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  2 +-
>>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 15 ++++++++---
>>   6 files changed, 43 insertions(+), 19 deletions(-)
>>   create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig
>>
>> diff --git a/drivers/net/ethernet/intel/Kconfig
>> b/drivers/net/ethernet/intel/Kconfig
>> index e0287fbd501d..0375c7448a57 100644
>> --- a/drivers/net/ethernet/intel/Kconfig
>> +++ b/drivers/net/ethernet/intel/Kconfig
>> @@ -384,17 +384,6 @@ config IGC_LEDS
>>         Optional support for controlling the NIC LED's with the netdev
>>         LED trigger.
>>   -config IDPF
>> -    tristate "Intel(R) Infrastructure Data Path Function Support"
>> -    depends on PCI_MSI
>> -    select DIMLIB
>> -    select PAGE_POOL
>> -    select PAGE_POOL_STATS
>> -    help
>> -      This driver supports Intel(R) Infrastructure Data Path Function
>> -      devices.
>> -
>> -      To compile this driver as a module, choose M here. The module
>> -      will be called idpf.
>> +source "drivers/net/ethernet/intel/idpf/Kconfig"
>>     endif # NET_VENDOR_INTEL
>> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig
>> b/drivers/net/ethernet/intel/idpf/Kconfig
>> new file mode 100644
>> index 000000000000..bee83a40f218
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
>> @@ -0,0 +1,26 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +# Copyright (C) 2024 Intel Corporation
>> +
>> +config IDPF
>> +    tristate "Intel(R) Infrastructure Data Path Function Support"
>> +    depends on PCI_MSI
>> +    select DIMLIB
>> +    select PAGE_POOL
>> +    select PAGE_POOL_STATS
>> +    help
>> +      This driver supports Intel(R) Infrastructure Data Path Function
>> +      devices.
>> +
>> +      To compile this driver as a module, choose M here. The module
>> +      will be called idpf.
>> +
>> +if IDPF
>> +
>> +config IDPF_SINGLEQ
>> +    bool "idpf singleq support"
>> +    help
>> +      This option enables support for legacy single Rx/Tx queues w/no
>> +      completion and fill queues. Only enable if you have such hardware
> This description is not accurate - all HW supports single queue. The
> configuration is done by the Control Plane. Furthermore, without access
> to the Control Plane config, there is no way for the user to know what
> mode is enabled.

I can rephrase to "if your hardware is configured to work in singleq mode".

Anyway, during both the internal review and this one, no one still gave
me a real world example where the HW wants singleq mode.
When the idpf made it into the kernel, singleq didn't work, which was
proven by several patches from me which fixed critical issues.
If it's not tested and no HW wants this when splitq is available, why
decrease perf by dead code?

> 
> Thanks,
> Emil

Thanks,
Olek
