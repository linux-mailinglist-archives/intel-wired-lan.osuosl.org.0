Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42F7959F0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 516C140201;
	Wed, 21 Aug 2024 13:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sy3NtcegtkDX; Wed, 21 Aug 2024 13:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41FB840251
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724248260;
	bh=P4A2BUKPQXgoe6KhuKxLnqPLLK6nHJDoF4ni+6lf6Vw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MOQSHdXFGyWunB+GSQUCLdkDN39nuxjJVzRpK9McwrYVnF9cbycQ6mY/LdNPjLiAq
	 5tv77bwafdovtF3H5vd2y5+5Hki+q2gaH1vidt1p3aeOvyOFvJOljwkvpYkt5b/LeN
	 da1YoSuIGXTwK4AQ5A+y87Q/6lwxzXYjN6SSrDAcPK5BA88h+qSYuM3y5jh4lZqi7t
	 bnvAIYfR/XWWbn0Xh75scYpuUwHnmbngGLNVqHY/TIV1vqPkdd7xIoG6j0iwWQ6qTO
	 fpRZZSzaOd+44EXClmmK/4KujnNVC14N4hK8F/JcyoyG0/bUzp6eYwvo1up3KT07Ch
	 pS6by149ddefQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41FB840251;
	Wed, 21 Aug 2024 13:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 936CB1BF3C0
 for <intel-wired-lan@osuosl.org>; Wed, 21 Aug 2024 13:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BA06401D8
 for <intel-wired-lan@osuosl.org>; Wed, 21 Aug 2024 13:50:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PHXm0Ii0Msg1 for <intel-wired-lan@osuosl.org>;
 Wed, 21 Aug 2024 13:50:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B145D401C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B145D401C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B145D401C3
 for <intel-wired-lan@osuosl.org>; Wed, 21 Aug 2024 13:50:55 +0000 (UTC)
X-CSE-ConnectionGUID: x61X84xTTiqbLT1yZGvpFQ==
X-CSE-MsgGUID: mRMdOl8URgyLvx1MjYMmAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33226969"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208,217";a="33226969"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:50:16 -0700
X-CSE-ConnectionGUID: nxHOQFY1TIup7rR3nyENJg==
X-CSE-MsgGUID: o5YMAmXaT4iBFCwMAafx8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208,217";a="61075617"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:50:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:50:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:50:16 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:50:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ww7TiBL3XgAX/evmQNCSB97C9EzPqf0A70VcoaVzNCmR7ESZ7qudOTJaYh2aHuxvFErQlGGraGpsLN99+TD0F0bwi7OxQ4Y7TbgpJe+KCzgzQ5S4egwPpsUTqwv1bQLAiWzoro/3UMLOhYB8jbC9lfY9xuF5PloLpXMKSjJntCc64m+QtdPVEytM1G+3x1Uq6KHVWjp4F3Knt3ilr7wBy91IbtQykjXBwxexjZ2DOSl5+F6D0j4E59enP82X8nw9MP2MOnkej4ObtSTcd7y5xCypI8TdjBMJUENVzTWVm1Y98MiYtLWhaja89Pm6XpEYkoXdVMI573kIkNv1pjufxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXHJ3sCpQC590mwy07XqEdBOAPQ8O1/BH78AgQ82p2M=;
 b=K2cHcktzZyPNLTyWOt7iwTY43zBK2AuSx+Le8+OrjmKMKLjhGwxb907YkhYbQf0YYUQ240wzUrdDA23MGfKUhEKvDqNjbtoaRXjO83zXw4XZcouuONlaQVXr1ROfDXfrfBgNYrV0sCN4rSMVlxlqjlvWNVY6aTZ2RdKMUsW6HzmkcsfsV/bvaa8nMnwxGY8pcHyksJFC/6Wysx5n34kuXTA2llzxbgJIr7QelQluivoHCFSZl86B2J3coTj1NaC91kL6blLO/CufOX9sEOjbNdsGTg91ZYRGXfj1TQZ/StZrShf56M5lloRzfAglFpv8a98HV8IrLi3PpVnniMrsSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 13:50:14 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7897.014; Wed, 21 Aug 2024
 13:50:14 +0000
Content-Type: multipart/alternative;
 boundary="------------P9160bdUfIzgLU6C8aSYlUdu"
Message-ID: <2d9a325c-e7bd-7df8-4575-3f32c85eabd2@intel.com>
Date: Wed, 21 Aug 2024 16:50:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: <intel-wired-lan@osuosl.org>
References: <20240820213035.GA226181@bhelgaas>
 <f0552842-7824-424e-af21-ac9eb3c5c14d@kernel.org>
Content-Language: en-US
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
In-Reply-To: <f0552842-7824-424e-af21-ac9eb3c5c14d@kernel.org>
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 49943346-17ad-4659-522e-08dcc1e82ea9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VTVGNDR3aFpSV1JMbXcyWHorZlhzTHFMTHZlNmFubyt5cWtLUzBpK2d6Uytv?=
 =?utf-8?B?VDdaaGVjcUpMaWFZUWt5c2dnb3ZSSm1DekhqQmNGank1YjIvdGFoekNFbTc3?=
 =?utf-8?B?b1dMbDZQTFlyVlhCV2VSZ0dJN0hjV2E5THUvVlJieU5MTi9odGlXSVN0dHEx?=
 =?utf-8?B?cmJ5dVdwWUQzcytpaGx6WmFFOTVLaitka2x6bFUwVFl5OHBrNjc2ZTBRSFpm?=
 =?utf-8?B?dHpTZTBTMDJya2Q5M09JbkN2b3dnMEYxZGlZUFp5SjAwSDhYdlJweWRuVG01?=
 =?utf-8?B?U2Ntek51RS9QOHkzZFZHSmdJOUVFNGlYU2o3dWVIZ0NmaE9qR0p1QTNaOGR4?=
 =?utf-8?B?Mk8vcWZtNWlZQjl0aWlGd1pQSlB4YkNjMkFkUjRDV3c1dkJBNnFtekZoNUo1?=
 =?utf-8?B?NEx0dVozb2Q1YW9kOXRtSDU1NnY5NnVIOU5weEVpc09GL2xvOC9mZG5xOGlM?=
 =?utf-8?B?M3hNWE0vQk0zRVRid0ZEbGVya0dIdU45ZkdObnM1cE01UVpScUh5MlZXcno0?=
 =?utf-8?B?WklEeFNUSy85akR2T3ptSlNoRHBrQjB5RlB0K3U2cjlJREN5dWlaVXAzZlVF?=
 =?utf-8?B?cFc3QXNjOTNFbUhtVWNhRFI3MVpZQjhtdG54REFtR05DSEtoWVhIeldobUFu?=
 =?utf-8?B?QVgra0lXZ2ZXZ0grNExZU2JHVGNZYk8rMC81NjlDd1gxajhiZ3JJMmVwUDNm?=
 =?utf-8?B?WUxqQXA5WVBWaEdvYThpZXhScEg3Vk5ZdEdpQk10U0syWlZmUVRvUjRFcWYy?=
 =?utf-8?B?Y05FcHp4cFpRMjdPK1QwdklkKy9rOG5yMWlXcVczdHdtWWR1U1poL1Eza1da?=
 =?utf-8?B?RE90SUt3Y1hJbjdVa1ZvVWJVdCtxVlVhM1Q1TVR3T3BhbW85MXhqZ2x1ZjZu?=
 =?utf-8?B?aHNoVlR1SkVTd3ZuWStYL0FUTzgycVFlVjh6Z2hHRDJaMlVlbVE0UWNuTHhW?=
 =?utf-8?B?M2xKS1lPREZFWFU2ZmVsR2QwM0lpTUc4bnNocFNBTFZzbDk2eUVRaktyY3ZJ?=
 =?utf-8?B?V0N4bWRIaSs1K3lXdXRnNVFtSkNZQ2tNcUppcU50M21vcitpaDFsMnFKWTNP?=
 =?utf-8?B?ZEZ4T0E1ejNwUzJla2RKckJoMTVxQlR0QUhLWU9HWVhCUG10bFBWZHpEL0Na?=
 =?utf-8?B?RWdYWWdvVXEyaUFpcVg5czVpVkp2MHpHZ1RuN0lqZzROL1JhemZjYmVuQ2pY?=
 =?utf-8?B?RVBYNTdaeTRNeXYxRkRoSEhhWm5EbnlueXg5WDhoaEphSXNsVnBuWHVpSVBq?=
 =?utf-8?B?aHVLZk5ZWUd0dm9Ga2tkb2poSGJma1hCcmlLdW14NDJwZE1rYnNTQnZFRFJH?=
 =?utf-8?B?OTAzdVZuSXhLUnlJeVNWSmlJS0VkMURrTzE5SExDWmovRFdiOEFiQk80Z1R3?=
 =?utf-8?B?dDQ1MXdWVVZPQjdTOFp0K2d1N2xqMEJIUXB5WWs0b1FKaUZJb1NOUHlrNUZW?=
 =?utf-8?B?S0U2ZzBTb2x5S0VBaGVnRFJaK3BRYzRaNk43eHVZVVgzZ3F3dzl0SUpGdC9k?=
 =?utf-8?B?ZUYyejVWdU1SVWNLZFJiQm9YUkdpeU4xKzR2aS81SDZMSEN0bEl6RjF6WnM0?=
 =?utf-8?B?RXVlMmFFL3dHRHdpODNiSmkzS0ZWRm1lZDdGcXh0SmU4YjROc2VkYlV1aUM5?=
 =?utf-8?B?N203TUFWa1lHeERzN25FZzh1QWVRTGhmN2phV29KbWJtQ0NCQUloYmp0ODVx?=
 =?utf-8?B?TXpYRCt3aXRXM3FyUXRBWmJlbHpDSWFHNE1YNUMwa3FHMjRpdmJvOFpVamdM?=
 =?utf-8?B?Y0pHcEh0RWE4K2FUdzZBa1VCekgrUGpwK2dwcDE3dkNoMnVLRXJsM0dpNlN4?=
 =?utf-8?B?cXdZNWVmOTBCQStLK243QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2JDQnkvaWhMNFduYzFmTkdUUXZiKzJoY0dLcUVmRmw5UVFGN0QwR0h1Nnhn?=
 =?utf-8?B?M0xLT2dQVkRBODFMT2xYWExwVkw4NERhVEFjRnNhU2JWZko1ODdqYTBxeXlj?=
 =?utf-8?B?MmVNZUhsbzhVQ1lSSE5kbFloZmdSUjVSSXpWcjhJZ1ZDZDVXcnZTN1JMczh4?=
 =?utf-8?B?cnlFMjlGb3pLaTB2MmZmeitFMUlVRnB6bWw2Z1VMd1dYQWdCdk5ocnM0RDMw?=
 =?utf-8?B?NmtISCtwQ2IvQ2k2RXVsUTM3NjMzdVhmZnZSL255UWJjOHFUNUpVVmo3K1pL?=
 =?utf-8?B?RnBEVlA2dW5HRXNKNWJPZTJNZnYzRzVLSXZjOU5aWGR3enJXRmxpSWxCeDVH?=
 =?utf-8?B?Q21FTWkvZEJtQyt2UjFmRE85T1lMd0tad3ZQVEU2eFhZU3FNUTNsSjZPQlMv?=
 =?utf-8?B?RkVFVFpJUnJtT1RrNmdOVWJGNVl6VlkzUFlSRUhXeXVFOVJJbjlKMzRoNU1C?=
 =?utf-8?B?WVhxYlVYRzF5T0xjc1YwRS95Wlp6dnN3ZmpKcjdpVkphQk94RDZZZmlOOW1G?=
 =?utf-8?B?NUlFcEMyNmVoWVA1cVJNZFRHQ0ZiZmhCdlNWV3J4d2ViU1dncnpCaHBkK29U?=
 =?utf-8?B?QnJ3dGlhUkhCTlc5NFNsVndGTEFpazNEUzV6R2hLdEdNNnNJSmpOM0RGSEhh?=
 =?utf-8?B?WVVBSVpuZGdaS0t1SklVWkZUL1UweWs5WXBienJqa3pQWWhpWDI2enhicWlH?=
 =?utf-8?B?amNvb3NEVW5pc2haWXpjdjVVNTBNOTBtbnY2ZFV0bnJaT0Y0QlF6cEhKcVlG?=
 =?utf-8?B?d2U4L3kyeGMyWTVZbURERGdVTTZPVUNuVm16TytPS3FwaUtzZ0p6dmNpVGVU?=
 =?utf-8?B?SGt4ejJNdWRiS1Z6WFI5Y1dTQ25Za0lOQjFVUURuT3lKZGpjK0ZyVWZJV0FI?=
 =?utf-8?B?K2wrd01LWFRjeXZxRW1kdUNSczErLzZMRTVkNW5rQzZlNGhnOGhTOEc4eGtB?=
 =?utf-8?B?b29UVXpzMFNyOERHbkFDVjdTNi9laGN4T3JFQkdpRTFTcUhRV2RJTnVteStI?=
 =?utf-8?B?THJnazg5dzFSd3dpWHJxV05IRDVuWll5cTJHQ1QxcTA1Y2NTRFp2U2M5cllK?=
 =?utf-8?B?ZFJTZ0dnQ1dVcm4zWEtuWWxOYlhZUWxkcHFIOTNpcFRQckxzaDRIb2FHby80?=
 =?utf-8?B?T3ZyTlp3c1RFdThMbG91NGhoUTBYQ0ppVWljWFJFbzJJWFc3VHBGMFVWcTJj?=
 =?utf-8?B?aHhydXJmUmhseFNmQ3p3RjE0em52ajRYSE1MdXpja0hkNUJaMUFZQmpiaHRJ?=
 =?utf-8?B?NHJvV3hQS21ZMkoxaW9QSGVRYnlEUFc1M2ZvTUlsUHdWN0txMVEyeXdubVJs?=
 =?utf-8?B?bXVwY3RCcEFtNUQ3SGRHc29vZ0p0YU1NeGg1NlQzb2ZEVjdrSitBM3RVakg4?=
 =?utf-8?B?WURHSlgwQmpUL2wveGFSYnJOMTBpeHZxU1lBK1dXREMxWVFWZXo1QkhERDEy?=
 =?utf-8?B?QkpRQ2FFVDl5Y1NDeWljSU93amZoVzBvdkpHTDlQbHBrUE0zN3RQRTFBcHdC?=
 =?utf-8?B?elRmV1M5bXIyODhMM0lJR09NWWtTc2pnZUtNdkNyRGhQdXNZWUV1dFh0SVF5?=
 =?utf-8?B?Z2dTTzVOQUFMQmF3elNiL0hUTE5GRlpGZWM1MDJraVBlRGJMajhDLzFIcGhJ?=
 =?utf-8?B?S2FIVGgrWHgwRzVWcGoxOTdwaXFLeUhmRXJXTU5SYk5nWFovVHBQRHkxTGNs?=
 =?utf-8?B?eWM3SlNtYnVjWlNqVktkSmtaeXVmT0twVFhCblV6SzFPTkhVdDF3L1FzRUd4?=
 =?utf-8?B?M3JjSVpET2x1L250WmdVeXdWakNyOW5WZnNNQXRMc3BXOUNKeTZrTVhGTlZa?=
 =?utf-8?B?S2VTRE50R2tXUERueG9HQUpMbU5ka1h2bDJUbE4za3FmZmx0WEZPVGhuS0Vr?=
 =?utf-8?B?T1VzM2VUTXFSdm1SNUZiNkQ0RmVKWDNBNUo2RkdzS29LTnNST2hvVW9EVHc2?=
 =?utf-8?B?Vk02LzU3UlFQbkpiOWU3TXMxT2huVXNZSHl2SlJVZE8yVjlKSWpuL29OT2ZZ?=
 =?utf-8?B?c0JEVVlFaGRCWDhtV1RGZENKQytYZkhMbWNHY1dZNGJxdTZGTi9uT2lGV3ht?=
 =?utf-8?B?RzZCRm0rMWZUNDhHcWlsMlRPTndpVnE3bHd3R25vRnovMUZjaE05RmxMYW8r?=
 =?utf-8?B?dFNXVmlKZ1Y1RnVvUEM3aDVMbXJoQWo5a0wyNjFpL2ZtMXAyUHpycWxucnIr?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49943346-17ad-4659-522e-08dcc1e82ea9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:50:14.0345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OllL41gRJU2Q9EPtIwyQoDIdRPZ6IDLkXPtyUgMQ4JKkv1OVyFwz4cbcVuFl25BN4xydlyCSRxzOhm/aWreJIPCleRJtuzt5YuC9JTkXXO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724248255; x=1755784255;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=Eo8nD2S/BX3pXPs8AV4nQqIcPK+lxwwDAGzHl+RGtYA=;
 b=F48U2dOC2aVEgr1omHWKLZnr0Bhd0l8dnYXVFrA3knqLyJ/Plh0T6qWP
 g//brBaDi6GSBlq72W0ZzemroVtZ9dMhwIuYpn7g6XYoLL6BaF4dNYV49
 9wEMhxObriKCqBZANnt6sFdhHSuzMpParC28ZoOke1O0aC6EGQCj8sLq5
 oVjP0pj6XC3jpDKCHIhcNDe2LovmVodWeasBOlsGCTO7fHBWR6MfCc23F
 DUSqX8Ng4nywTjynGjSFoaoaUI4ViYtFmluikZPb/EAtugMu39eO7S+iz
 9QhNzLYFpNR7YH7ioSAZPiv8kSK0b0iQcapZiSq/u7nv4s3aNyyWierln
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F48U2dOC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------P9160bdUfIzgLU6C8aSYlUdu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 8/21/2024 8:09 AM, Jiri Slaby wrote:
> On 20. 08. 24, 23:30, Bjorn Helgaas wrote:
>> On Tue, Aug 20, 2024 at 11:13:54PM +0200, Petr Valenta wrote:
>>> Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
>>>> On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
>>>>> On 19. 08. 24, 6:50, Jiri Slaby wrote:
>>>>>> CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to 
>>>>>> b2c289415b2b)
>>>>>
>>>>> Bjorn,
>>>>>
>>>>> I am confused by these changes:
>>>>> ==========================================
>>>>> @@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct 
>>>>> net_device
>>>>> *net
>>>>> dev,
>>>>>            * duplex is forced.
>>>>>            */
>>>>>           if (cmd->base.eth_tp_mdix_ctrl) {
>>>>> -               if (hw->phy.media_type != e1000_media_type_copper) {
>>>>> -                       ret_val = -EOPNOTSUPP;
>>>>> -                       goto out;
>>>>> -               }
>>>>> +               if (hw->phy.media_type != e1000_media_type_copper)
>>>>> +                       return -EOPNOTSUPP;
>>>>>
>>>>>                   if ((cmd->base.eth_tp_mdix_ctrl != 
>>>>> ETH_TP_MDI_AUTO) &&
>>>>>                       (cmd->base.autoneg != AUTONEG_ENABLE)) {
>>>>>                           e_err("forcing MDI/MDI-X state is not 
>>>>> supported when
>>>>> lin
>>>>> k speed and/or duplex are forced\n");
>>>>> -                       ret_val = -EINVAL;
>>>>> -                       goto out;
>>>>> +                       return -EINVAL;
>>>>>                   }
>>>>>           }
>>>>>
>>>>> @@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct 
>>>>> net_device
>>>>> *netde
>>>>> v,
>>>>>           }
>>>>>
>>>>>    out:
>>>>> -       pm_runtime_put_sync(netdev->dev.parent);
>>>>>           clear_bit(__E1000_RESETTING, &adapter->state);
>>>>>           return ret_val;
>>>>>    }
>>>>> ==========================================
>>>>>
>>>>> So no more clear_bit(__E1000_RESETTING in the above fail paths. Is 
>>>>> that
>>>>> intentional?
>>>>
>>>> Not intentional.  Petr, do you have the ability to test the patch
>>>> below?  I'm not sure it's the correct fix, but it reverts the pieces
>>>> of b2c289415b2b that Jiri pointed out.
>>>
>>> I tested the patch below but it didn't help. After the first boot 
>>> with new
>>> kernel it looked promising as the irq storm only appeared for a few 
>>> seconds,
>>> but with subsequent reboots it was the same as without the patch.
>>
>> Thank you very much for testing that!
>
>
>>> To be sure, I also send the md5sum of ethtool.c after applying the 
>>> patch:
>>>
>>> a25c003257538f16994b4d7c4260e894 ethtool.c
>>
>> Thanks, that matches what I get when applying the patch on v6.10.
>>
>> I'm at a loss.  You could try reverting the entire b2c289415b2b commit
>> (patch for that is below).
>
> FWIW he already tested with b2c289415b2b reverted (I provided him with 
> a built kernel). It behaves the same. So you are not the breaker.
>
>> If that doesn't help, I guess you could try reverting the other
>> commits Jiri mentioned:
>>
>>    76a0a3f9cc2f e1000e: fix force smbus during suspend flow
>>    c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
>>    bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp 
>> function
>>    6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD 
>> duplicates
>>    1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
>>    b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
>>    75a3f93b5383 net: intel: implement modern PM ops declarations
>>
>> If you do this, I would revert 76a0a3f9cc2f, test, then revert
>> c93a6f62cb1b in addition, test, then revert bfd546a552e1 in addition,
>> etc.
>
> Or perhaps easier to do:
>   git bisect v6.10 v6.9 -- drivers/net/ethernet/intel/e1000e/
> directly. But that assumes one of the above commits broke it. If they 
> did not, as a last resort, you can still do full bisect (without the 
> "-- drivers" part).
>
> I would take v6.10 suses config.
> Would boot 6.10.
> do lsmod > /tmp/lsmod
> make LSMOD=/tmp/lsmod localyesconfig
> make bzImage
> and use that bzImage.
>
> Note that graphics, wireless and other stuff will be defunct unless 
> you build in firmwares for them (EXTRA_FIRMWARE config). Alternatively 
> use localmodconfig and build and install also modules (now limited to 
> your machine).
>
> thanks,

 From all the data in the Suse Bugzilla I understood that the issue 
happens with a cable disconnected.

Does it reproduce with a connected cable?

Also, I suspect that it might be related to wake up interrupts that the 
I219 device gets which might cause the IRQ storm.

I would like to ask you to enable the debug prints in the e1000e driver 
and share the dmesg log. I would like to see if we can get the values of 
WUFC and WUS on on resume.

For getting these values please comment out the following in 
__e1000_resume function in netdev.c file:

         /* report the system wakeup cause from S3/S4 */
//      if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
                 u16 phy_data;

                 e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
                 if (phy_data) {
                         e_info("PHY Wakeup cause - %s\n",
                                phy_data & E1000_WUS_EX ? "Unicast Packet" :
                                phy_data & E1000_WUS_MC ? "Multicast 
Packet" :
                                phy_data & E1000_WUS_BC ? "Broadcast 
Packet" :
                                phy_data & E1000_WUS_MAG ? "Magic Packet" :
                                phy_data & E1000_WUS_LNKC ?
                                "Link Status Change" : "other");
                 }
                 e1e_wphy(&adapter->hw, BM_WUS, ~0);
//      } else {
                 u32 wus = er32(WUS);

                 if (wus) {
                         e_info("MAC Wakeup cause - %s\n",
                                wus & E1000_WUS_EX ? "Unicast Packet" :
                                wus & E1000_WUS_MC ? "Multicast Packet" :
                                wus & E1000_WUS_BC ? "Broadcast Packet" :
                                wus & E1000_WUS_MAG ? "Magic Packet" :
                                wus & E1000_WUS_LNKC ? "Link Status 
Change" :
                                "other");
//              }
                 ew32(WUS, ~0);

To enable the debug prints you can run:

echo "module e1000e +p" | sudo tee /sys/kernel/debug/dynamic_debug/control

--------------P9160bdUfIzgLU6C8aSYlUdu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/21/2024 8:09 AM, Jiri Slaby wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:f0552842-7824-424e-af21-ac9eb3c5c14d@kernel.org">On 20.
      08. 24, 23:30, Bjorn Helgaas wrote:
      <br>
      <blockquote type="cite">On Tue, Aug 20, 2024 at 11:13:54PM +0200,
        Petr Valenta wrote:
        <br>
        <blockquote type="cite">Dne 20. 08. 24 v 20:09 Bjorn Helgaas
          napsal(a):
          <br>
          <blockquote type="cite">On Mon, Aug 19, 2024 at 07:23:42AM
            +0200, Jiri Slaby wrote:
            <br>
            <blockquote type="cite">On 19. 08. 24, 6:50, Jiri Slaby
              wrote:
              <br>
              <blockquote type="cite">CC e1000e guys + Jesse (due to
                75a3f93b5383) + Bjorn (due to b2c289415b2b)
                <br>
              </blockquote>
              <br>
              Bjorn,
              <br>
              <br>
              I am confused by these changes:
              <br>
              ==========================================
              <br>
              @@ -291,16 +288,13 @@ static int
              e1000_set_link_ksettings(struct net_device
              <br>
              *net
              <br>
              dev,
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * duplex is forced.
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (cmd-&gt;base.eth_tp_mdix_ctrl) {
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hw-&gt;phy.media_type !=
              e1000_media_type_copper) {
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret_val = -EOPNOTSUPP;
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }
              <br>
              +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hw-&gt;phy.media_type !=
              e1000_media_type_copper)
              <br>
              +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -EOPNOTSUPP;
              <br>
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ((cmd-&gt;base.eth_tp_mdix_ctrl !=
              ETH_TP_MDI_AUTO) &amp;&amp;
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (cmd-&gt;base.autoneg !=
              AUTONEG_ENABLE)) {
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e_err(&quot;forcing MDI/MDI-X state
              is not supported when
              <br>
              lin
              <br>
              k speed and/or duplex are forced\n&quot;);
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret_val = -EINVAL;
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;
              <br>
              +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -EINVAL;
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }
              <br>
              <br>
              @@ -347,7 +341,6 @@ static int
              e1000_set_link_ksettings(struct net_device
              <br>
              *netde
              <br>
              v,
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }
              <br>
              <br>
              &nbsp;&nbsp; out:
              <br>
              -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pm_runtime_put_sync(netdev-&gt;dev.parent);
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; clear_bit(__E1000_RESETTING,
              &amp;adapter-&gt;state);
              <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret_val;
              <br>
              &nbsp;&nbsp; }
              <br>
              ==========================================
              <br>
              <br>
              So no more clear_bit(__E1000_RESETTING in the above fail
              paths. Is that
              <br>
              intentional?
              <br>
            </blockquote>
            <br>
            Not intentional.&nbsp; Petr, do you have the ability to test the
            patch
            <br>
            below?&nbsp; I'm not sure it's the correct fix, but it reverts
            the pieces
            <br>
            of b2c289415b2b that Jiri pointed out.
            <br>
          </blockquote>
          <br>
          I tested the patch below but it didn't help. After the first
          boot with new
          <br>
          kernel it looked promising as the irq storm only appeared for
          a few seconds,
          <br>
          but with subsequent reboots it was the same as without the
          patch.
          <br>
        </blockquote>
        <br>
        Thank you very much for testing that!
        <br>
      </blockquote>
      <br>
      <br>
      <blockquote type="cite">
        <blockquote type="cite">To be sure, I also send the md5sum of
          ethtool.c after applying the patch:
          <br>
          <br>
          a25c003257538f16994b4d7c4260e894 ethtool.c
          <br>
        </blockquote>
        <br>
        Thanks, that matches what I get when applying the patch on
        v6.10.
        <br>
        <br>
        I'm at a loss.&nbsp; You could try reverting the entire b2c289415b2b
        commit
        <br>
        (patch for that is below).
        <br>
      </blockquote>
      <br>
      FWIW he already tested with b2c289415b2b reverted (I provided him
      with a built kernel). It behaves the same. So you are not the
      breaker.
      <br>
      <br>
      <blockquote type="cite">If that doesn't help, I guess you could
        try reverting the other
        <br>
        commits Jiri mentioned:
        <br>
        <br>
        &nbsp;&nbsp; 76a0a3f9cc2f e1000e: fix force smbus during suspend flow
        <br>
        &nbsp;&nbsp; c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
        <br>
        &nbsp;&nbsp; bfd546a552e1 e1000e: move force SMBUS near the end of
        enable_ulp function
        <br>
        &nbsp;&nbsp; 6918107e2540 net: e1000e &amp; ixgbe: Remove
        PCI_HEADER_TYPE_MFD duplicates
        <br>
        &nbsp;&nbsp; 1eb2cded45b3 net: annotate writes on dev-&gt;mtu from
        ndo_change_mtu()
        <br>
        &nbsp;&nbsp; b2c289415b2b e1000e: Remove redundant runtime resume for
        ethtool_ops
        <br>
        &nbsp;&nbsp; 75a3f93b5383 net: intel: implement modern PM ops declarations
        <br>
        <br>
        If you do this, I would revert 76a0a3f9cc2f, test, then revert
        <br>
        c93a6f62cb1b in addition, test, then revert bfd546a552e1 in
        addition,
        <br>
        etc.
        <br>
      </blockquote>
      <br>
      Or perhaps easier to do:
      <br>
      &nbsp; git bisect v6.10 v6.9 -- drivers/net/ethernet/intel/e1000e/
      <br>
      directly. But that assumes one of the above commits broke it. If
      they did not, as a last resort, you can still do full bisect
      (without the &quot;-- drivers&quot; part).
      <br>
      <br>
      I would take v6.10 suses config.
      <br>
      Would boot 6.10.
      <br>
      do lsmod &gt; /tmp/lsmod
      <br>
      make LSMOD=/tmp/lsmod localyesconfig
      <br>
      make bzImage
      <br>
      and use that bzImage.
      <br>
      <br>
      Note that graphics, wireless and other stuff will be defunct
      unless you build in firmwares for them (EXTRA_FIRMWARE config).
      Alternatively use localmodconfig and build and install also
      modules (now limited to your machine).
      <br>
      <br>
      thanks,
      <br>
    </blockquote>
    <p>From all the data in the Suse Bugzilla I understood that the
      issue happens with a cable disconnected.</p>
    <p>Does it reproduce with a connected cable?</p>
    <p>Also, I suspect that it might be related to wake up interrupts
      that the I219 device gets which might cause the IRQ storm.</p>
    <p>I would like to ask you to enable the debug prints in the e1000e
      driver and share the dmesg log. I would like to see if we can get
      the values of WUFC and WUS on on resume.</p>
    <p>For getting these values please comment out the following in&nbsp;
      __e1000_resume function in netdev.c file:</p>
    <p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* report the system wakeup cause from
        S3/S4 */<br>
        //&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (adapter-&gt;flags2 &amp; FLAG2_HAS_PHY_WAKEUP) {<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 phy_data;<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e1e_rphy(&amp;adapter-&gt;hw, BM_WUS,
        &amp;phy_data);<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (phy_data) {<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e_info(&quot;PHY Wakeup cause - %s\n&quot;,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy_data &amp; E1000_WUS_EX ?
        &quot;Unicast Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy_data &amp; E1000_WUS_MC ?
        &quot;Multicast Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy_data &amp; E1000_WUS_BC ?
        &quot;Broadcast Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy_data &amp; E1000_WUS_MAG ?
        &quot;Magic Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phy_data &amp; E1000_WUS_LNKC ?<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Link Status Change&quot; : &quot;other&quot;);<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e1e_wphy(&amp;adapter-&gt;hw, BM_WUS, ~0);<br>
        //&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 wus = er32(WUS);<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (wus) {<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e_info(&quot;MAC Wakeup cause - %s\n&quot;,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wus &amp; E1000_WUS_EX ? &quot;Unicast
        Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wus &amp; E1000_WUS_MC ?
        &quot;Multicast Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wus &amp; E1000_WUS_BC ?
        &quot;Broadcast Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wus &amp; E1000_WUS_MAG ? &quot;Magic
        Packet&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wus &amp; E1000_WUS_LNKC ? &quot;Link
        Status Change&quot; :<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;other&quot;);<br>
        //&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ew32(WUS, ~0);</font><br>
      <br>
    </p>
    <p>To enable the debug prints you can run:</p>
    <p><span><span class="ui-provider a b c d e f g h i j k l m n o p q
          r s t u v w x y z ab ac ae af ag ah ai aj ak" dir="ltr"><span><span style="font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Web&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;"><p style="margin-bottom: 0px;">echo &quot;module e1000e +p&quot; | sudo tee /sys/kernel/debug/dynamic_debug/control</p>&nbsp;</span></span></span></span></p>
  </body>
</html>

--------------P9160bdUfIzgLU6C8aSYlUdu--
