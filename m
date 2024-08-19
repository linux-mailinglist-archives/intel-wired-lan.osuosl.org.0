Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA54957641
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 22:59:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DA3B60600;
	Mon, 19 Aug 2024 20:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q-krBJp4bQT4; Mon, 19 Aug 2024 20:59:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D577860826
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724101173;
	bh=5O2KmRKaC0c3vZqcwnIp7ytt+6O9hO4Mqglb4FQoCMI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2cNlcu9urHQBItkjLNZYo4oU6n+uvio3mgxR7yvc0xuXFoYvNzHcjnxQuLboYqFfo
	 f4TOP19ufEt0fkI6dmImhD9NfccflZ8pGmB69daxkeDS5Zw/NeddMR3Ui3pbm7SpzK
	 Dff8ux00wwfR+H0bxL3Y/2vjF758lJR2MHhrP3ba53uG2Xokwk6jjtNit3D4iKlw/G
	 SKJa/dC6tHVKdyvU/uO+YkvIbmHJwG8beQ0crO27BNNtwpP33pbSRizzmoG3SbVwwG
	 lrkoHYO00xz2RSwOb3tawS5MJIi/aBQdgxtmmJCUZjy34BwSL0OwIWy/HoPqHvtoXC
	 jTrPlWfcXZC9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D577860826;
	Mon, 19 Aug 2024 20:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E748D1BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 20:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D41DC605C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 20:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QpkxOkcEVQDf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 20:59:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4607D605AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4607D605AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4607D605AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 20:59:29 +0000 (UTC)
X-CSE-ConnectionGUID: x42/4mDiTU+HB0XPY3ubPg==
X-CSE-MsgGUID: MN+RuB3hRX6h63CMu5AZLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26168594"
X-IronPort-AV: E=Sophos;i="6.10,160,1719903600"; d="scan'208";a="26168594"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 13:59:29 -0700
X-CSE-ConnectionGUID: ER0OgcGVQoi/aXjkyAt8gg==
X-CSE-MsgGUID: pCxYaMQpRaiYojj9Ytf47A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,160,1719903600"; d="scan'208";a="91233353"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 13:59:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 13:59:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 13:59:27 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 13:59:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vGgDGsL4PGW0QmFzqlIjSoGee78d3krnzrQWJiCapAadq7DWT+G+eCFKrp0fOU7i6ofTQG8h1/xTnkDOEbelFbIAGrr2o/KCuzsYWNmrYLhxGMPtmayAYSVyTuMi36GBbtUsUUViI3J+ku8+7fVPJsu7Nye09AG1UYwGmY10vMsbhIuSHaVBkJHMw/iROZ8BcTiJoqv9Ek9UuWNqGYuavL3M3RWxn775DK2ziDcGcLOWrQQ4wx2VscPIPq50FvjEjq80gexHn510X1c+kY3WzXMQRHPfktfGPwwY+E9SSQM5Fx5fIXUUtzPSiq3YbwAAqV3f+WbnKxsRAtmi0KbGUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5O2KmRKaC0c3vZqcwnIp7ytt+6O9hO4Mqglb4FQoCMI=;
 b=mp+M583OaVWieGIUQvWLHNkYcrLlijh0QGfSrrj6BWSVBQiC2BdAat3Yd7lZPyaFY1YiEixLlg4mu77dPioDhnpqDsOuRR4WvRA0Qz2Lp8SlKWcW42rFkwgJfjtfgjXlGqHLstpGFkxSKQ7Tlc+hp5J3TsYN+BHnOVV9GSPQAEdgk0uzhKMjgb/uVZ/mQ1G5XQLQMju865kcfEDG2oarK4Tiu4CiLfwupiH8ne6iQVpMXXMGxeH6CKR7+9dIMcSi0/Ehd38rMn9a1ldxuSWGx7s0dqkSXJZl8LGvgzXcphl11/FvSes/mO9aV7CcoPILdtFchDGRRmY/mBLO2JNZJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Mon, 19 Aug
 2024 20:59:25 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%7]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 20:59:25 +0000
Message-ID: <32b2d271-59f3-7bc6-449f-8f1c32915883@intel.com>
Date: Mon, 19 Aug 2024 13:59:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240812221501.1705162-1-paul.greenwalt@intel.com>
 <b8a25788-21f4-4d9c-b3fe-42aaae884494@molgen.mpg.de>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <b8a25788-21f4-4d9c-b3fe-42aaae884494@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 8124dd5a-4e98-4b92-0d3a-08dcc091ce95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amFjOGRyMUl2c2RQS0hReERLMkdDNHBkUjRKTUl0T08zNnFLMW54TGlNZ0FP?=
 =?utf-8?B?Ui94WGFsTHZmREorcXovTVNIZmJGMVRaTEFlMnI5TTI1SmtrZUtiL2ZITlFy?=
 =?utf-8?B?a3VOMSt3bDd3U29zcmR2Mkg0dDA3dFlmQW9mQk4xTjVoUnJWNHdKcERmcU5l?=
 =?utf-8?B?SXBjZUo4eFNnYWp3RW9RV0FoTzZvaE1NMm54SVNVaVM1MWl0d2lLckVGSGli?=
 =?utf-8?B?dENIa0E0VTNCZWhQQklwOGVldVJCODA5bmZWeDVzZmVkL1RZekVTRnIvbW42?=
 =?utf-8?B?b2lHNnp2VVNhZ1J6eEY2bWFZc1p0d2pYa1IvUXhTSUlsQUlDVEZOSXAzQmkr?=
 =?utf-8?B?cHNWNWhSZlpsOHMzdWdYWVdvY0NnWmFpeWRDT01XM0ZVZjZvc2FXaWxHTS9I?=
 =?utf-8?B?cTY3angzSkc2TnZuSHV6c0xXUUgyVTdKbVY0OWJyV1lpRHIyNHpVUTFWekxz?=
 =?utf-8?B?cnZTR0pVRDVDdUJYVE9hbzNseEpNZHF0VitoWlF6SW9IWlFDUUNneWx6V2tR?=
 =?utf-8?B?dUpieElGeVpVMnY1UytUeHBGZW8vL3lSU3lXVi9TanQ3cDN1Tm9NclA0MzI5?=
 =?utf-8?B?K1dSMng1K3ZVTm1CQ2dUY3o0NWV3NVI5NFZIL0FjU29qeGdud1ZDaUtpWDcx?=
 =?utf-8?B?RXdqbXRpcm5uNXYrTzFTcmJxSEJ6emZYNUdIT1RBN3JqN2piZUlTcDVJSGhY?=
 =?utf-8?B?ZStWblB5WURLQmpaY2V3SjJBN1Uzb0Z6Y1ZHSlhGUmlWQ3dSSmVCZmRpZS9t?=
 =?utf-8?B?bXZzTURhWmxHYjR3M3VhVk4zRHloR2dCWmEwcC9JZ01XcVc5OUF5d3o4MXZq?=
 =?utf-8?B?OXJUa3dWSExFY0VnMlVBUC9xdy9nbU92SWs4eDV4dVdFV0tONEtNZUM5SFVM?=
 =?utf-8?B?Tmp0VzRpM2tsaGdaczdnRW53bmo5TjZlejEvS1B0SWNEMkVEbDhocTJxYytJ?=
 =?utf-8?B?cjA5c3J4Qlo3eC9jcU5GcGtjUjJ2UkY1YlhEekYrWmx1eUprL1NDSXJSMThF?=
 =?utf-8?B?UklVMnk5NktTRG85WXlqR0hZY2NCZXJWejlYS1kySjQrMll5M1RZd2UwdW5Z?=
 =?utf-8?B?THdsaUVxVmVmUC9TQUN5Y2ZPL1ZYb2ZjRVVQQnh1MWdEMytOTlVVOEJwMmRj?=
 =?utf-8?B?S1R2OHcvT28rZStoek0vell2NVFsYzROc2xNVDdGWUkrZjhiWEFzaDhrdUNZ?=
 =?utf-8?B?MGpDcXJkZ1cxNlRvM05adXltL0pzTUhnN013a1lFeXRvc1ZYa29pZUJLcm41?=
 =?utf-8?B?TlVDWTN5ZjA0ZmROVGY3K2RwQkxjRHYyYlJtRThWNUV2aWthZkxTR05aVUh1?=
 =?utf-8?B?aXpMbUY2V1dDRlFzZjBycHl5cGVmR2ZxYXo2OHFTMVVGN1ZvWlZRb3NxWG43?=
 =?utf-8?B?MWJqbzF6b1d4RWs5Mm8rNEtkbzhwMmFCRkJ6VWNFVTAwSEl4QWl1KzIranBW?=
 =?utf-8?B?cERlMGphMzVUSlh5djg4ZkN6dG1aSTR6V3pPRkJtQ3JKbkpldVM1R1psOWFP?=
 =?utf-8?B?UmRKK3Z4QXNyUnp6RWE4MjhSKzJpemQzaXpqYXpqWUVzalhmYzVYZGhFZ3Y4?=
 =?utf-8?B?dXJnay92TXQ1Zm1xSUZlcHd2L0J6UjdST2lyd0ErOENNMDZLOEtRZGt2MnhN?=
 =?utf-8?B?RzYyRnhiRUxEUURYa0JLZmVqazhld011eUJnaSsvWTI0UXFaRVFFYk1CaWtE?=
 =?utf-8?B?KzAycnNnaWJIaUFrM0J3OUxxaGFxTnl2VlZZZ0NyZ1NVeXhubDZONGRGbjBN?=
 =?utf-8?B?TG5oT1dWYmt6MTBuWFVQSkxZVHRsczVOMWlvQmlNZWdEOU1QZDBMZzJhYkdy?=
 =?utf-8?B?NHQ5dWJtL0kyOVAyNHVZUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUI0RDJud3NEK3dlY3ZVME5zR09hbWwrMVdIeXBlZDk3VTBHNDZSTVBLcldX?=
 =?utf-8?B?Tm9LeU9UbDl1TnJ4VXdETzlYUllUNEJHUGVxSkdRVGN2dXNWdGRGNG95bGxV?=
 =?utf-8?B?cEpQZ2VIZDdESlF0WnVqenNaMmpIaEFnMXY3dE1ZVWMvTWRjZ0JtZE1vbUJS?=
 =?utf-8?B?USt5WVFoVVpYenpYanluK3FRbXJFQWZWTWl3NjhreFVCRGhlQURWVno2QkNr?=
 =?utf-8?B?TWpyOHJ0NGNSbFFYNlZwaWtRYnYvZlVkRm5SM3I5dkdLeStRRk1NbXRaRmph?=
 =?utf-8?B?VjRSNjVYbUNKR0Nhd3JQM0luNklZS3BBMkQ4d2xGQmFHY1FLekUxd28vczYz?=
 =?utf-8?B?dnpjczBjSDVUci9VSGNOWEt2RGVwbk40MnlMUjJIOFBVMXFUU0ZtTTdFS2o4?=
 =?utf-8?B?UjJGclFXR1Q3VkdDd1k2ZkF2S3VlSlZNRTE1bFo0V0RTVk1rWUwwNlVSQjE3?=
 =?utf-8?B?TVFOZ2hhRmQ0Rk1XZGgyb3Q1QVFVcUdiQXI5QkpkbHhJQkRZWW4ra2hQZWNh?=
 =?utf-8?B?Wk5PemhiQW9nbnJ0M1NDQzB6UXZka0xSaC9ldE85VzRnVDlJU0NPbmtzRy9G?=
 =?utf-8?B?ZDM3a0lHaGdRYU1WMXhFbXl5RmZmSkhCcDhqeFhVUE1iL2UyajhNNGNReVM5?=
 =?utf-8?B?SXZvSWdpNmNCRHFHN1hZUHFLU0FJcDZ1cGxiU25FdFhDMEFScEVRU0svcXdV?=
 =?utf-8?B?UHJ0K0pCZFJuOVQ5VVBuNzFaak1XelhGbW1jQ3JRekFLVVM1WXlGN2Vua1JQ?=
 =?utf-8?B?N2syaHhlMmgzZWdETXpBKzBlTjMyenYvTkNSYkpNTTdMNWRJOVVxVlBweG1Q?=
 =?utf-8?B?NnNuZXgzSVdlU2g3WE1ZYlVYSkcwNElnTENkSEtCU01nc2FieW5OSWxGQmxW?=
 =?utf-8?B?dmZRVGpLUWNTS0lYNC9OUFI2dlJNOXdaNGttN0hVdXBGUnRaSkFqekRWazBP?=
 =?utf-8?B?L1QxZDRrQk83eFBOWlh0N3NTeDhqK2p6aTlPTEpCMjRPeDIvclFKOUVvbEpM?=
 =?utf-8?B?QlQ2cmpOd2tuNHYrUlduNE9hLzFoaDI2TUFhZFMvRGVxejhIR0Nmb01sMVdi?=
 =?utf-8?B?TzVBaFZSYk1icGR6YUxHdmJxL3ArTWFBRkJReDFrZEd4cUxFVTNPUFNtNHR0?=
 =?utf-8?B?cEhobUV1SFczMUtHL1NKbVAwVENDalcwWlU2S1YwN2hST01wMWRkZDM0MzY5?=
 =?utf-8?B?YVNzdnFNanNweUpJakNUU2VMOW94KzBzVmx1RkJ4NGh5TXRBd1VLSFhyb01U?=
 =?utf-8?B?ay9NSXQrUklCRDdyVmpUa0J0MHN2d2E4K2pvYUZSQ05MT3lBbVdJTWZYTnFu?=
 =?utf-8?B?QURxSlhRbXc1NWNlNVdTem1jUytMTmdvN09kNnhFY043cDlUTnFGbm9iY3VP?=
 =?utf-8?B?empnQzdpTUxqWGRxREYvbDdsd084V2tuemRGbHhmM2g3RjdGLzlOU3hSeFVk?=
 =?utf-8?B?eWlOa0w3V3R3Q1B2VmNPSGxveXF0NHhMSWE0QTBSM3FzSWRnYURPclF4NWd0?=
 =?utf-8?B?dHZQS0NYQkhRZEtIZkR0QWJUNDFLMURzUmZLa2NqS0MxQnE3aGp5S3V4cEF3?=
 =?utf-8?B?NmZQWmdRSmoyQVZCc3VyVjkyMlZVYlhLTkFMRnduNHRXL2FqbVNYSzNZNnRV?=
 =?utf-8?B?dDRTWnJ5ZitENndqYTMraUZRQ1Z3WmpjRDA3aHF3K0pvRG9YaEtGcEZFT0Fr?=
 =?utf-8?B?aGo1UGN2KzlqSVZQUmM1NDNtUXZYZFRZc3JXSUJhWmI4aGgrNjZ6Z3dGc3NH?=
 =?utf-8?B?MlB4dDNBMGtPT01HdTZKSXJFc29GK0V0SjY0YldKbStOeEowTFZIdm4rZ1NH?=
 =?utf-8?B?S1pWZXhJUGxveHRFRkwzM2pacFljVk1EK1VmUFR2TzZaanU1QVdDcmt6cWw1?=
 =?utf-8?B?QngxRnQrVkNLSHo3Wmp6bk5KZndCdHZQem1YL1F5ZVBvVlVNdVVGT1RNdDFF?=
 =?utf-8?B?bUhXeWpyaHdHUTQrRzFRbzRpby9jZGtpRG5ncXExOHdTRk9UV2JxbHlOM08w?=
 =?utf-8?B?YnI5aGtFTEhmQk9xNnQwRDBMODhCNEMyWm5VOHRZUUJHZTh3NzA3RFpDNG9l?=
 =?utf-8?B?UzRqY3UrNndJSjkxR09GTERKY2FwWDNXcm40T3kzNFhKYnJ3aDg2U2JSK2pj?=
 =?utf-8?B?cUNaUkJmdlRNYXNIdnJ6djBndzB0NEtxQW02WHBkTGFsWUdIQjAzeWZuaGpj?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8124dd5a-4e98-4b92-0d3a-08dcc091ce95
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 20:59:24.9588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 64gcsxNyUlImAWmw1fiPw3+3SinqkvB7CYwKSCZOgsodIXo6lT/AoNiq8oCnK4xB5YR1YRgr86UBiF8SfOKvMdPFdRoUCjIXLae9YYw0D50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724101171; x=1755637171;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EFvSWd7wGpXs1C4vD3oPu2phlnCp8H8NDQ4Fjf+SuNg=;
 b=OO3T/SGNSgZWhpkTRras77qdsE60z58qxiB92T/IXHxVUW//H8hx3iPc
 Iu9uwYlTtgn8B1SdBsKfXYuhzj81SIOT4NX5ZU9WyWuLnb2W+WPP652On
 YCKKoLZiRVFrvVfXZGPeHD0SntC7yxPSZDal0JyJ8Lt0KyvifSvhOuVc+
 ODf+fxaYUZKJhZzZEEu8fq+YlcmiviEAtKahGrhSESIfAm+jvaC0Jr90A
 IGyo5vd462J/cm4WnB/ixKtnbqVVqwJO6WJTMb5Y60mzKZYcQeBANymEA
 O9BGc51SGeIMBqF196PItL+uhxM5AQuAu7/V0elYncge867p5AjrjKUyQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OO3T/SGN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 HW VF
 mailbox message limit support
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
Cc: aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/15/2024 12:58 AM, Paul Menzel wrote:
> Dear Paul,
> 
> 
> Thank you for the patch.
> 
> Am 13.08.24 um 00:15 schrieb Paul Greenwalt:
>> E830 adds hardware support to prevent the VF from overflowing the PF
>> mailbox with VIRTCHNL messages. E830 will use the hardware feature
>> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().
> 
> What is the benefit? Less CPU cycles used? Any measurements, how much
> CPU it uses?
> 

The hardware solution reduces complexity in the driver, and it’s more
robust than the software solution. The software solution will detect and
log when the VFs outstanding messages to a PF exceeds the threshold. The
hardware solution blocks the messages from the VF to the PF when the
threshold is exceeded.

>> To prevent a VF from overflowing the PF, the PF sets the number of
>> messages per VF that can be in the PF's mailbox queue
>> (ICE_MBX_OVERFLOW_WATERMARK). When the PF process a message from a VF,
> 
> process*es*?
> 

I will make this change in the commit message.

>> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
>> register.
> 
> Is there an error shown, once such a malicious situation occurs?
> 

There is no PF error message when the hardware blocks the VF messages,
but the VF will generate messages related to the failed communication
with the PF.

> It’d be great, if you could documents ways how to test this.
> 

It’s difficult to reproduce this issue since this is unlikely to occur
under normal circumstances.

Thanks,
Paul

> 
> Kind regards,
> 
> Paul
> 
> 
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> ---
>> v1 -> v2:
>> - Update ice_mbx_vf_dec_trig_e830 and ice_mbx_vf_clear_cnt_e830 onstack
>>    variables to const
>> v2 -> v3:
>> - Fix indentation and remove unnessary paranthes in macro
>> - Replace ice_init_feature_support() E830 device id check with MAC
>>    check
>> - Remove use of const for scalars
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h          |  1 +
>>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 ++
>>   drivers/net/ethernet/intel/ice/ice_lib.c      | 15 +++++++++
>>   drivers/net/ethernet/intel/ice/ice_main.c     | 24 ++++++++++----
>>   drivers/net/ethernet/intel/ice/ice_sriov.c    |  3 +-
>>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++++++--
>>   drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 32 +++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_vf_mbx.h   |  3 ++
>>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +++--
>>   9 files changed, 102 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h
>> b/drivers/net/ethernet/intel/ice/ice.h
>> index d6f80da30dec..53082b619fc3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -207,6 +207,7 @@ enum ice_feature {
>>       ICE_F_GNSS,
>>       ICE_F_ROCE_LAG,
>>       ICE_F_SRIOV_LAG,
>> +    ICE_F_MBX_LIMIT,
>>       ICE_F_MAX
>>   };
>>   diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>> b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>> index 91cbae1eec89..8d31bfe28cc8 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
>> @@ -539,5 +539,8 @@
>>   #define E830_PRTMAC_CL01_QNT_THR_CL0_M        GENMASK(15, 0)
>>   #define VFINT_DYN_CTLN(_i)            (0x00003800 + ((_i) * 4))
>>   #define VFINT_DYN_CTLN_CLEARPBA_M        BIT(1)
>> +#define E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH    0x00234000
>> +#define E830_MBX_VF_DEC_TRIG(_VF)        (0x00233800 + (_VF) * 4)
>> +#define E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(_VF)    (0x00233000 +
>> (_VF) * 4)
>>     #endif /* _ICE_HW_AUTOGEN_H_ */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
>> b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index d9c34d28c9cd..2c55209d3ce2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -3877,9 +3877,24 @@ void ice_init_feature_support(struct ice_pf *pf)
>>           if (ice_gnss_is_gps_present(&pf->hw))
>>               ice_set_feature_support(pf, ICE_F_GNSS);
>>           break;
>> +    case ICE_DEV_ID_E830CC_BACKPLANE:
>> +    case ICE_DEV_ID_E830CC_QSFP56:
>> +    case ICE_DEV_ID_E830CC_SFP:
>> +    case ICE_DEV_ID_E830CC_SFP_DD:
>> +    case ICE_DEV_ID_E830C_BACKPLANE:
>> +    case ICE_DEV_ID_E830C_QSFP:
>> +    case ICE_DEV_ID_E830C_SFP:
>> +    case ICE_DEV_ID_E830_XXV_BACKPLANE:
>> +    case ICE_DEV_ID_E830_XXV_QSFP:
>> +    case ICE_DEV_ID_E830_XXV_SFP:
>> +        ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
>> +        break;
>>       default:
>>           break;
>>       }
>> +
>> +    if (pf->hw.mac_type == ICE_MAC_E830)
>> +        ice_set_feature_support(pf, ICE_F_MBX_LIMIT);
>>   }
>>     /**
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index fd27c7995d60..12ce5d2283d3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -1542,12 +1542,20 @@ static int __ice_clean_ctrlq(struct ice_pf
>> *pf, enum ice_ctl_q q_type)
>>               ice_vf_lan_overflow_event(pf, &event);
>>               break;
>>           case ice_mbx_opc_send_msg_to_pf:
>> -            data.num_msg_proc = i;
>> -            data.num_pending_arq = pending;
>> -            data.max_num_msgs_mbx = hw->mailboxq.num_rq_entries;
>> -            data.async_watermark_val = ICE_MBX_OVERFLOW_WATERMARK;
>> +            if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT)) {
>> +                ice_vc_process_vf_msg(pf, &event, NULL);
>> +                ice_mbx_vf_dec_trig_e830(hw, &event);
>> +            } else {
>> +                u16 val = hw->mailboxq.num_rq_entries;
>> +
>> +                data.max_num_msgs_mbx = val;
>> +                val = ICE_MBX_OVERFLOW_WATERMARK;
>> +                data.async_watermark_val = val;
>> +                data.num_msg_proc = i;
>> +                data.num_pending_arq = pending;
>>   -            ice_vc_process_vf_msg(pf, &event, &data);
>> +                ice_vc_process_vf_msg(pf, &event, &data);
>> +            }
>>               break;
>>           case ice_aqc_opc_fw_logs_event:
>>               ice_get_fwlog_data(pf, &event);
>> @@ -4078,7 +4086,11 @@ static int ice_init_pf(struct ice_pf *pf)
>>         mutex_init(&pf->vfs.table_lock);
>>       hash_init(pf->vfs.table);
>> -    ice_mbx_init_snapshot(&pf->hw);
>> +    if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
>> +        wr32(&pf->hw, E830_MBX_PF_IN_FLIGHT_VF_MSGS_THRESH,
>> +             ICE_MBX_OVERFLOW_WATERMARK);
>> +    else
>> +        ice_mbx_init_snapshot(&pf->hw);
>>         xa_init(&pf->dyn_ports);
>>       xa_init(&pf->sf_nums);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
>> b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> index e34fe2516ccc..e7b5fe553d1f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
>> @@ -194,7 +194,8 @@ void ice_free_vfs(struct ice_pf *pf)
>>           }
>>             /* clear malicious info since the VF is getting released */
>> -        list_del(&vf->mbx_info.list_entry);
>> +        if (!ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
>> +            list_del(&vf->mbx_info.list_entry);
>>             mutex_unlock(&vf->cfg_lock);
>>       }
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> index a69e91f88d81..d618292dfe27 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
>> @@ -709,6 +709,23 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf,
>> struct ice_vsi *vsi, u8 promisc_m)
>>       return 0;
>>   }
>>   +/**
>> + * ice_reset_vf_mbx_cnt - reset VF mailbox message count
>> + * @vf: pointer to the VF structure
>> + *
>> + * This function clears the VF mailbox message count, and should be
>> called on
>> + * VF reset.
>> + */
>> +static void ice_reset_vf_mbx_cnt(struct ice_vf *vf)
>> +{
>> +    struct ice_pf *pf = vf->pf;
>> +
>> +    if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
>> +        ice_mbx_vf_clear_cnt_e830(&pf->hw, vf->vf_id);
>> +    else
>> +        ice_mbx_clear_malvf(&vf->mbx_info);
>> +}
>> +
>>   /**
>>    * ice_reset_all_vfs - reset all allocated VFs in one go
>>    * @pf: pointer to the PF structure
>> @@ -735,7 +752,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
>>         /* clear all malicious info if the VFs are getting reset */
>>       ice_for_each_vf(pf, bkt, vf)
>> -        ice_mbx_clear_malvf(&vf->mbx_info);
>> +        ice_reset_vf_mbx_cnt(vf);
>>         /* If VFs have been disabled, there is no need to reset */
>>       if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
>> @@ -951,7 +968,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>>       ice_eswitch_update_repr(&vf->repr_id, vsi);
>>         /* if the VF has been reset allow it to come up again */
>> -    ice_mbx_clear_malvf(&vf->mbx_info);
>> +    ice_reset_vf_mbx_cnt(vf);
>>     out_unlock:
>>       if (lag && lag->bonded && lag->primary &&
>> @@ -1004,7 +1021,10 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
>>       ice_vf_fdir_init(vf);
>>         /* Initialize mailbox info for this VF */
>> -    ice_mbx_init_vf_info(&pf->hw, &vf->mbx_info);
>> +    if (ice_is_feature_supported(pf, ICE_F_MBX_LIMIT))
>> +        ice_mbx_vf_clear_cnt_e830(&pf->hw, vf->vf_id);
>> +    else
>> +        ice_mbx_init_vf_info(&pf->hw, &vf->mbx_info);
>>         mutex_init(&vf->cfg_lock);
>>   }
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
>> b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
>> index 40cb4ba0789c..75c8113e58ee 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
>> @@ -210,6 +210,38 @@ ice_mbx_detect_malvf(struct ice_hw *hw, struct
>> ice_mbx_vf_info *vf_info,
>>       return 0;
>>   }
>>   +/**
>> + * ice_mbx_vf_dec_trig_e830 - Decrements the VF mailbox queue counter
>> + * @hw: pointer to the HW struct
>> + * @event: pointer to the control queue receive event
>> + *
>> + * This function triggers to decrement the counter
>> + * MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT when the driver replenishes
>> + * the buffers at the PF mailbox queue.
>> + */
>> +void ice_mbx_vf_dec_trig_e830(const struct ice_hw *hw,
>> +                  const struct ice_rq_event_info *event)
>> +{
>> +    u16 vfid = le16_to_cpu(event->desc.retval);
>> +
>> +    wr32(hw, E830_MBX_VF_DEC_TRIG(vfid), 1);
>> +}
>> +
>> +/**
>> + * ice_mbx_vf_clear_cnt_e830 - Clear the VF mailbox queue count
>> + * @hw: pointer to the HW struct
>> + * @vf_id: VF ID in the PF space
>> + *
>> + * This function clears the counter MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT,
>> and should
>> + * be called when a VF is created and on VF reset.
>> + */
>> +void ice_mbx_vf_clear_cnt_e830(const struct ice_hw *hw, u16 vf_id)
>> +{
>> +    u32 reg = rd32(hw, E830_MBX_VF_IN_FLIGHT_MSGS_AT_PF_CNT(vf_id));
>> +
>> +    wr32(hw, E830_MBX_VF_DEC_TRIG(vf_id), reg);
>> +}
>> +
>>   /**
>>    * ice_mbx_vf_state_handler - Handle states of the overflow algorithm
>>    * @hw: pointer to the HW struct
>> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
>> b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
>> index 44bc030d17e0..edcd9332368c 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
>> @@ -19,6 +19,9 @@ ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid,
>> u32 v_opcode, u32 v_retval,
>>                 u8 *msg, u16 msglen, struct ice_sq_cd *cd);
>>     u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16
>> link_speed);
>> +void ice_mbx_vf_dec_trig_e830(const struct ice_hw *hw,
>> +                  const struct ice_rq_event_info *event);
>> +void ice_mbx_vf_clear_cnt_e830(const struct ice_hw *hw, u16 vf_id);
>>   int
>>   ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data
>> *mbx_data,
>>                struct ice_mbx_vf_info *vf_info, bool *report_malvf);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> index 59f62306b9cb..3c86d0c2fe1f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> @@ -4009,8 +4009,10 @@ ice_is_malicious_vf(struct ice_vf *vf, struct
>> ice_mbx_data *mbxdata)
>>    * @event: pointer to the AQ event
>>    * @mbxdata: information used to detect VF attempting mailbox overflow
>>    *
>> - * called from the common asq/arq handler to
>> - * process request from VF
>> + * Called from the common asq/arq handler to process request from VF.
>> When this
>> + * flow is used for devices with hardware VF to PF message queue
>> overflow
>> + * support (ICE_F_MBX_LIMIT) mbxdata is set to NULL and
>> ice_is_malicious_vf
>> + * check is skipped.
>>    */
>>   void ice_vc_process_vf_msg(struct ice_pf *pf, struct
>> ice_rq_event_info *event,
>>                  struct ice_mbx_data *mbxdata)
>> @@ -4036,7 +4038,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf,
>> struct ice_rq_event_info *event,
>>       mutex_lock(&vf->cfg_lock);
>>         /* Check if the VF is trying to overflow the mailbox */
>> -    if (ice_is_malicious_vf(vf, mbxdata))
>> +    if (mbxdata && ice_is_malicious_vf(vf, mbxdata))
>>           goto finish;
>>         /* Check if VF is disabled. */
