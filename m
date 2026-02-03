Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KJ/NAe9gWm7JAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 10:16:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F58DD6AD9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 10:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C4CB60DD2;
	Tue,  3 Feb 2026 09:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z9f06o4XS1t5; Tue,  3 Feb 2026 09:16:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B39360DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770110211;
	bh=vfNEDrLQgIP+YbizymPjpoB4rKukPrOQWbCfZaaX2kI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GpHioXcy9DnDpz6gZ2H8BjovQieLPkjqFZw4MQTF8LWWsPmoKFFJyJtGSZJ1Ej4gY
	 ieDOpx4vVeXO9yVDKLxEQ1O9NHheBsMsPKLvUW/BU3tK0yoVzbJoohapFr0NGDxM+1
	 y7S2f71AqTcs6MUz38jmbvcsUN8kAWCrfqkTLy1uF2tVG3ZXRNifs7OF93EugmuGFL
	 s1+Lecby8+jRVYvjf3zF6UNBz0NoTWUx4eznqUKBUuQIMnTVFbSt1nLFr44Q1N+LcD
	 UDogdsvGeZ7W/oyNqTNp5nsnYL+fKDrrJEJqxchcmcOqNgIuGBa4PORvCjv4ucTE4S
	 sRPp2FiqEwWIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B39360DD8;
	Tue,  3 Feb 2026 09:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 313091A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 09:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 226AB40C11
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 09:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TK0yooIchdEK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 09:16:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 503D740C0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 503D740C0E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 503D740C0E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 09:16:49 +0000 (UTC)
X-CSE-ConnectionGUID: EoctBhYZRMaZLQldWBhdXw==
X-CSE-MsgGUID: qdWAK8d+R6SI93yXRZ21sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71257369"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208,217";a="71257369"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 01:16:49 -0800
X-CSE-ConnectionGUID: hh8v/pKhRA6sgvH9RR4p2A==
X-CSE-MsgGUID: SRkv3qTcQ5aB5ohc0ac9mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
 d="scan'208,217";a="214568587"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 01:16:48 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 01:16:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 01:16:47 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 01:16:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qeydgDSZCfeuBgalGWGlc1zLhs6uF1E42y4EDXRs2OohBiMxGt9ScWYPkbZSAx0ZsBvDuEbJv/VGOU2Fib4K2xajIKl5Cp6p1EAbosdIyeIp5LSWOzOi0sqKINs0VmhAVyuF4y+PDdaBUrpKe9b76IOwof/IxXQiIowFtZXD/JCta+Am9WfI7ALlJrXqBZLkKLmPgjhz0l2CB5aTwzNvmuP/DMjwPV75zRNbdrnkIrNVvlBSHzASXsmZD6OlrfMxHN0Ezbv2FafLncQNXkdGfrMhFzXuaucNPKYLtg48kwutB2A7ju1mToJfdcMzWsBgiS4JZiIrj5O6nO34N4rw6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FfGhBuO7Arq3hvLEIjrAvKAjN2Mx9hcFPQ3lcO1b2M=;
 b=KSYwpXp93gaxhabcxTVniZeBxl7U9FZFqleWTruRJOy6kK+R3yH2TXejAxPEbnxb54YxubnoeQGNBpghuHz0bu1Wazq1etd29Gs4hsRIdrLXHMRxuJ1oh5xNQ4czkyIvegWMXk+7ru0UMVIk8ONQI5fPZyNY/23EMNwfwFggo03JhSik/dF982KJSwrSBOeLxUEuOtEk5tAhSJN46VoVW+xg0CwKIhhPLzgwu3shlY2levXFOJrArXMF0u43437DVGdxrZgQGkpgukMNUmVaufhAitu+lZ6UF9669LbhQBDQqNP9dX7K4QmQ2Osj14vVpvVSL8PpuR25qHVZsOLmZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by SA1PR11MB5900.namprd11.prod.outlook.com (2603:10b6:806:238::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 09:16:27 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9564.014; Tue, 3 Feb 2026
 09:16:27 +0000
Content-Type: multipart/alternative;
 boundary="------------5Y4U9J3nc7ENTwRQjRA5HILS"
Message-ID: <61d9d030-9b68-4081-809c-cdc725217b28@intel.com>
Date: Tue, 3 Feb 2026 11:16:21 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|SA1PR11MB5900:EE_
X-MS-Office365-Filtering-Correlation-Id: a37ce2ac-3e78-4570-02cb-08de6304e92a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3QwS01Yb0VUN3RuUGxqbEFKdnhBZGh6ZXdjQ3hEUS9TOXhnV3ljSzNaOWhW?=
 =?utf-8?B?Y1lMWWhVYzhhUzd1ZENMS2pSanpNblYwbG03T2VZZ0xJaitCR1NwNTRhR3ox?=
 =?utf-8?B?b1N1TkVGY1RBL3NPVTZTS29UOGpWNWRWSXZTSHBOOEN0amEySUlUTWltTUNq?=
 =?utf-8?B?Q204czZlWEJXOE9YTWpxRUlIcnlyWFFyNmFBa1RMWmdUV1U4YVRPYXZCUTRR?=
 =?utf-8?B?U28xNjlNOXFCK0VuMzQyQ2VFMWI2TGJMaHluUUR5alcwb0dBUFhBd25XeldT?=
 =?utf-8?B?ZVg3OFNaaUh4cmNRbGlTaEx6aktIY0xQajNkdmFNVEtPQWNlbXA0RFZtUnZH?=
 =?utf-8?B?S1dwMUVHcFNieUE2aSt0VUVIOHVKQWRZNnZCV2JBNE9tR3F5NXVVbVBUK0o5?=
 =?utf-8?B?YzdVeGpzemFLQ3FKYTBEQmRjSkpHRzk2WlU2cW00MVNIRGpCV01tdXVHKzZE?=
 =?utf-8?B?ZGJvMWxwZWhlcWFQN1hESTJFVU1teS9rdlpOVk9rNHhIRjRZRUxzc1ZQdVda?=
 =?utf-8?B?WVZ2SzEyRGVXUWRlR0toM05NM2VKTjJBQUpEVlRTSVgrdnRGRHVac283bUph?=
 =?utf-8?B?YVVPZVU3OTBFNDE4YXZLbkZpRWExZlFPc09QcHRTcjkrMldmM2hnR3RQSDFJ?=
 =?utf-8?B?SGFMeUEwQ0Q4Rmc2Y2liWE5FWUJGMmVZUlZEam84Mi9OWEdvSlZDQTdHbWRH?=
 =?utf-8?B?c1o4QkllTGs2alJRQ0c5c2lpSU13Q3ZqcVN5bk1nSVR5Y0k2QlZLNnR5REJD?=
 =?utf-8?B?Mm11dWdIeG14RzR3eVFkWWZTVE9WQmw5NUZuWE84aW1tUWpHWVZ0SDl3WnNs?=
 =?utf-8?B?VVd1RENjYUp3bHM1cDNLSFJlRERoTG15RUJtL3hVTitZaXRlQUFIdEFHUGtF?=
 =?utf-8?B?VUpGRmZ3dFowT0xIYUp6cFRqT2htSXpIQm5JcERFQkpZRDAwZ3huWkozaGJm?=
 =?utf-8?B?dk5kOVlhQlowcHppYlJTdlpGOCs3N0dvcUhZQ0JVbzdvblc2VGlIN1ZVRHBR?=
 =?utf-8?B?bE56cUd2ejRuVWJVNFBxajlJeDBKcTZNdTk4TFdEak1XemMxSVovUG04c1RZ?=
 =?utf-8?B?NmJuTFV4UjJGcW53enp2cGlLNi9YVHBCcFV5L09CTXpnSmZKRFJRSXRBV2My?=
 =?utf-8?B?OVZEZUlGaU15NWZIUUZBOE1nQTRaZEFPbUdlYjcwMzMzU0h1Z2xkbUMvcG5n?=
 =?utf-8?B?WmJMbCtSY3Z6ZlpDTk8va01pVlZSN2xqSWlVUGpJMmFWV0ZNNzdEaXB1bXhh?=
 =?utf-8?B?SnhkaGxtOS93L2RoYjQ1UmtWYzZOZTM5MVhRZndoU2paNFZIMHRPQXM4OVkr?=
 =?utf-8?B?aGpYRndIaWdua1R5SkdNcCtQTFY0RXJ4UURiYk9RQWVxZEFILyszME1LbmtG?=
 =?utf-8?B?TGdaV3NNdURQbGM1L2czUmJIaHBETnZaaXVMUVFHMkh0WFhSRVVLU28zeFNr?=
 =?utf-8?B?b0tLUXpKQ3RvYVVGS21JLzRwUlA3OXppcUhvTnVDc0l4MDU4YkczZWxVK2FH?=
 =?utf-8?B?dzNTVFQwL1djU0ZTUFpoK3M4SW1YL1NSaFpFQmxIWGp2aTM3bHIreW5LN3ZB?=
 =?utf-8?B?RTF2SnA0NU9tZ2EyZ2k5YS9jS3hQUHdxaGd5VXFHNzNMNU55WEsyeGdKczFm?=
 =?utf-8?B?bVRUSkNNWkZObDkwNWVid0pHODFVVFRhSGZVeVY2ZmJOaGUzQkdMQUJaTUpC?=
 =?utf-8?B?UjJteGtkWGxuMy9qOGlrN3p1cjBrVHhINllrOEdhanBNdjlibWRDY0h5SUxs?=
 =?utf-8?B?bmhrQ2hwT3M3QStNam9XckVXSDV2SzdlbFpXOXF4bktTZi9hSWtKbFQvRW95?=
 =?utf-8?B?UEhNQk1hM3p0RVl0Mmt1RG1OajhPU28wRjhxUFByRmZZbnBtQ1pOaHlYNlQ3?=
 =?utf-8?B?NjdkMFh3OEJlVnE3Yjl4R1VSbDdsWEVaOWdEdE8wNnhKd0tUV1Y2RXptcFNz?=
 =?utf-8?B?M3YrNm1jai9IT2EyTGwyOHpFeG02NG1LU3J4S01ONytiVzFrWit5dEdRYnBX?=
 =?utf-8?B?Q3ZqR1pKeWR1dWxlL2FJOVZMMjNVYUNoa1FLMWRpMVZxUjg3NDNWMkMyUHQ2?=
 =?utf-8?B?S1B6NDdwdGdHMndvNHU5eXQzamNmRHlFN29ibHpKV0JWeEhKa3Zaem9ZaEpC?=
 =?utf-8?Q?LFVM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1F2YUVheHgxWXRidFE4djVnbjZkbkgrS1dtaE5kYXdZNFlFSzZWNk13MDlL?=
 =?utf-8?B?R3poa1lJbk5lZ0hvdklrWkdoUUlvOFdZZHB5bXhpa1AwbjA3N1p1cm03Zlph?=
 =?utf-8?B?cXJUY3J1ZU9oUEEwd1ZDbm9mRVl2d1d3TWxpRjJBMWViWXV1ZVpTZnRad0JV?=
 =?utf-8?B?NCtYMTRvM25rMnJwR0d5dzYyTDY0WXAwTUVzRGNiN2xJQ2VsSHFTN3dtZGRa?=
 =?utf-8?B?eGV4NTdObi9hd2pmV25XOXZLRU1ER256eWJzYXMyMnBnZnpha1VIbWVJNHVI?=
 =?utf-8?B?MHJpbVhISDdpMHJNR0JQcnBwZUlJaGZEMHRtUlgzUDd3dkFlM0RPdjMzMUR3?=
 =?utf-8?B?ZUNBR2taN3NvVDlDWmg2RDBWdmtpUDFPNU5YMkdvZEpLKzV3SHZKQVR4THJ4?=
 =?utf-8?B?NmNGK0VFelFRREF2OHFGVmJHSmk0MkZxUEdiTUtkY093VmxjZ2E4eFpyR0kr?=
 =?utf-8?B?TzY2K3pWSWZBWm9DQkJoRldXbVdlS0hzRDhlWkJUT05janBnei9ZZnZlZEtB?=
 =?utf-8?B?eGtZK25GbVYvUDBhTkFwVVRSbjgvV1JUK0QwekpVZ2dTYllnVVdVYnNjSDFR?=
 =?utf-8?B?bmJpUFpFaXZDMkJLckV1Vy9aam5NVzk4Q0VISDExekpPb1hsL3ZyNEtRc244?=
 =?utf-8?B?RnBzUWdZSVdhb3ZQTWlMMVJubWRqY3dzK0NDSUxLaHIrcW5OdlZrZExXd3dY?=
 =?utf-8?B?M09UTEFFWUEvRXdDZHMwcFBCREE1d1poZVhiL1pVNkVVU1A4aFJNQmhRTUNL?=
 =?utf-8?B?bWx5cEt2RlJNWVQ2TDh2VXJPN2E0VUJsUEMyWnIzb0VyOVIrMmgzcllEeVhC?=
 =?utf-8?B?aHFva1VyUFpYY1Z3UFBnYVI1SllNd0o2Z3E4YjlYeFQ5SGNUTDhDN1Z4TkRt?=
 =?utf-8?B?NWlvUGx0U3RycjVjTS9WbmpyVW1qWGU0SXVzbG9YaExlcElQOHpvSG9mbHZH?=
 =?utf-8?B?b3JFK2d0NGowMkRVRFRVWHc0NU41aE1iWWN0RkU2elZMWXFtLzJRd2RmMkpo?=
 =?utf-8?B?eWtYVjhIbWlueW5HK2tTUkdBZkJueW5PejN6czdDK3ZyV1RYRmtvZUd0TU1R?=
 =?utf-8?B?NVQ1TWQwNWtXTGxrMGZsN3lVZjdCVnFPc3RUUXJldVduUEtvMHM5T01lVWl1?=
 =?utf-8?B?a05EcjkyZTE1ZEtMcXNQazFibHhwUzErd1l3b010Q2ZaR0h0MTM1dHhQZG4z?=
 =?utf-8?B?L3RpcXBabnMwNW43VjFGRjRyaVV0TXFRMXZsRVFYL2pNdzQ1aTJqTGs3S293?=
 =?utf-8?B?OXVIc3F5YVVEd0tVT1JKcTFod0RySnp4VjR2MnhEN2F3cFZ2YkVqNWwwUCtV?=
 =?utf-8?B?aG1aZ3dtcThkaXZBYlZwSVhQTGZudS9VWkxod0JvRnVvSFVMQzZOTmdFNHY3?=
 =?utf-8?B?T1FQRTNqbWJEbnpDeVpXdnZtYlFxMWRmd04rbkszdlJNc2VRaFRJTjd5OVQ4?=
 =?utf-8?B?UzkyMHFhQi9GQVplRGptMkduTXY3TXRnNW0wYTNiYi84QUFkeU9Ya2w5aEM0?=
 =?utf-8?B?bUZLTGJCS0gzYXpjaFp1czFOYkpDQS92d1ZYdGo3MExKMnI0OVNOS0ZKMFp5?=
 =?utf-8?B?NmhOYnVXU0N1Rk5MQ0pVMTlRd05pd3dFbmRZVWVhdDYxalcrWjdzQ2JLU3Bp?=
 =?utf-8?B?dzM5STAzcTk5U1ZGbFFKbHpLbHVseHdpdVlXNVRMbTlmVGRRM05aVlZOZ3pS?=
 =?utf-8?B?Wk4vZGc5cFJSS0NmRGMrVjljTy91SzUzZ2hEVkowQVN2S25Cd2JFK3FvUXVa?=
 =?utf-8?B?U0tFRXlsYXVFVTZ5cXN5dEVEamNFZUtGZXZmTEI3R3NuWi9Dc1VxejJZNTV1?=
 =?utf-8?B?eldYcld6S3h6SFFwTEcyWVpoMVgyaDdDK1cyRGJLaUdhL05rb1pwUVhhTFZJ?=
 =?utf-8?B?a3FwOE5MMWRqeG1kTWpzQURPdDlCTzdBV0VnVHJxRDdJdm1BRWNCV1VyN21r?=
 =?utf-8?B?RXBWc3pjeUpCSW5nWlYvb2ZZQmNFWk4rc3RMUXNPRVYrL2pPbUt3eVZWMWJT?=
 =?utf-8?B?Z2hVeHFoUGU5VGxTbGQwejJxZ2p3TGlyUFhOMzgxYkYrNm1RQnlJbkhnYTRE?=
 =?utf-8?B?MVRPdVNaM0JyVUQ4c081Rm5LaUVlb0kvZUJBL2FVYzBTWWEzSkVoWTgyR0E2?=
 =?utf-8?B?VmlSK0pzY016VmVMVlhMMnBXVGhsUzdzTXZ1NzExeWkxeXZrMGU2S2hqVzZQ?=
 =?utf-8?B?Y2hvWjUxRmhycVJlUklneUMydDRxRnVHV1NaQTJZZkVjZHZkVE1QaW1LVFY4?=
 =?utf-8?B?eEF3R2doYkV5c29qRW1HL0toaW1WaS9ISkFTWGdFeENQdUpXM0dRc1MveVdN?=
 =?utf-8?B?VllTNTdKQnE4SDIxNi85N3NkaVBRM0JGYmVKVnRVZEFsc0Y4bTFPTVRRbDZJ?=
 =?utf-8?Q?281HLOajtExmASsY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a37ce2ac-3e78-4570-02cb-08de6304e92a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 09:16:27.8265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFCpgrbR3Yuaf4fQF3EnVqO65raDSw/DbD9NohAsM+iQRbq6dF8LD3D+yPPbE160pgPcWuHy7/jLCTKOblJY5SZ3mfWTOKY2mo77gFyXNNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5900
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770110209; x=1801646209;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=7s/ATaPj/GHdrlq4xkyNq+S4upjbTh3FMVkfU1UnCxU=;
 b=k+kDtKdVvJqd3D0R/AgD8nQsWo7HyytfFFk1i6duDjmOQQvP17ZusQNC
 FfBzKXrSX4Y0/V7QNixP9EAIWIdnnzY+i4WZDpZNvVscB31n0ipOrbIlv
 D++tKR5rm4S1khxcDufAPJaII80qI4Z0vBED0TyQJFnAZMgIR7sDFSFBD
 3aTifAQoErwy5rQcAVxR56WbQ91GvAXrsanc1/xy/89U10Z9FsWMKNAG0
 B/CbU6JJ1kwNjB5FFHiu/slSxm+F810aPH2NPyvBJMlreLySziZljDFgl
 /0n8GeKIBycSJ5M8IozJtrj7zNgLvo9cmbhEJI9a5s8QQQ0eE9UxcCZZu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k+kDtKdV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5F58DD6AD9
X-Rspamd-Action: no action

--------------5Y4U9J3nc7ENTwRQjRA5HILS
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 06/01/2026 12:03, Vitaly Lifshits wrote:
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
>
> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
>
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
>
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)
>
> Signed-off-by: Vitaly Lifshits<vitaly.lifshits@intel.com>
> ---
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
>   1 file changed, 80 insertions(+)
>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

--------------5Y4U9J3nc7ENTwRQjRA5HILS
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 06/01/2026 12:03, Vitaly Lifshits
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20260106100331.1576758-1-vitaly.lifshits@intel.com">
      <pre wrap="" class="moz-quote-pre">On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
38.4 MHz. This causes the PHC to run significantly faster than system
time, breaking PTP synchronization.

To mitigate this at runtime, measure PHC vs system time over ~1 ms using
cross-timestamps. If the PHC increment differs from system time beyond
the expected tolerance (currently &gt;100 uSecs), reprogram TIMINCA for the
38.4 MHz profile and reinitialize the timecounter.

Tested on an affected system using phc_ctl:
Without fix:
sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
clock time: 16.000541250 (expected ~10s)

With fix:
sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
clock time: 9.984407212 (expected ~10s)

Signed-off-by: Vitaly Lifshits <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>
---
v2: avoid resetting the systim and rephrase commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

</pre>
    </blockquote>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span data-teams="true">Tested-by: Avigail Dahan
        <a class="moz-txt-link-rfc2396E" href="mailto:avigailx.dahan@intel.com">&lt;avigailx.dahan@intel.com&gt;</a></span><span style="white-space: pre-wrap">
</span></p>
  </body>
</html>

--------------5Y4U9J3nc7ENTwRQjRA5HILS--
