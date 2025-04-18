Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A11DDA92E9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 02:06:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12D617039D;
	Fri, 18 Apr 2025 00:06:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id begA8alvtmTu; Fri, 18 Apr 2025 00:06:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C7D7036E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744934789;
	bh=cElOdz72MPCZ/msmEoKd0rDMG7HpAeGKji11kO19+Yk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Iejw52oJXAWyr7YsSSpI61gSC1k5myQ5P0pX1ksfI1QcaTHBPh6Q4hchj9cALO6Lh
	 Ju2X7xQbelP8//Ju+TYf6/KrPCTveQV7RQUP2ne3J0tS2Bk9UxE00ibMIv1w6Ercay
	 87S3VmUYF3S0L01r4skjgtLK1EsLPqnUkNUWlYnA2TZsxJQbcJK6q0HO9NiaWAh199
	 p82UxYHPwH1vZ7pv8BplzwPue9PhhD7lMKKlSvk+Xu1mnlB4+fisC8bqrxY+dqH2Vj
	 X7bQAwm25yRQH0ZCBkH9fb6myvDvHEGIN/Y3uF9aHDvvTstbY9Qw5CUGis1Cwj3u84
	 aHm9UGQm605Ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C7D7036E;
	Fri, 18 Apr 2025 00:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 052C911F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 00:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA59D6FC9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 00:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MH1siw-01lbJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 00:06:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0822B70360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0822B70360
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0822B70360
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 00:06:26 +0000 (UTC)
X-CSE-ConnectionGUID: rfNrvOd3Q/Klel5sY4HF/A==
X-CSE-MsgGUID: M991zu6lQqSOS4Ii9o7aIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="46729880"
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="46729880"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 17:06:25 -0700
X-CSE-ConnectionGUID: p+5TIqnQSsmrmufKiRFUuA==
X-CSE-MsgGUID: vsTiA4E6Sfu780bMGH90Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="136078867"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 17:06:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 17:06:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 17:06:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 17:06:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N4k/7D/Ji8TUKB76zS6qWIqBSPfGeC1+bDnLpnjhssNJDS9q2OHricJh4+/lt3LYDE5kJTihyxkjVZZ1TwtMNfDy6KbWIuDmUzZudCabO2or1Dm1NzcWsbclZPpqbAYVr7YVkE7SUniamcjPyZbxpPG/LqqHgFE2wVojTOluIE0C51ERbaif4itTONP37sbk6uUvfILlQ9WbCVO+al++0nTCLA0d3Zkq51Z/5KYUMjyA2lL+pY9JJi1VFMHWgR6+FY5cS3Vf/+gyrJRyjFLYsbNktmj1rWj/X2bIPEIGQVZ1J9pbtPo+F5zuY8/iaX5AJRwlp4623l7WoovhALsTLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cElOdz72MPCZ/msmEoKd0rDMG7HpAeGKji11kO19+Yk=;
 b=P10saIraGE92vzPFSh4Z2Fdh/YFgfTRPiDFSvahVZnk8ChW/v8DzHMUCAMNp8FUT/cwzJ+HVjvbTXohsDuBYcwas4ydnsJ5VKJTnognFwLylClW2+OXgZovTltfWscI7TIUDUFUcNyPVqzlpyPA5RB0ZSlKINWyYvD1edwfWQ6fbHoXZyCcouU+FM4kQI0YOJmy7IZZeVP5jAA9RDt9SUQGNnTQLOcOIOQl0KQ35EAcDAKv+/tARumwF2X6IF0urBOAQauHG0dQ5+VvaFTkHhnBuZXfGSMnj9aTaXqorHZ69vgd1P1VkAkcwEkV7jrTkgVXYA0Y3v892iDKiYhlpsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6547.namprd11.prod.outlook.com (2603:10b6:510:211::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.21; Fri, 18 Apr
 2025 00:06:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8655.025; Fri, 18 Apr 2025
 00:06:19 +0000
Message-ID: <addf238e-56ab-44b7-87c6-f173df1223f3@intel.com>
Date: Thu, 17 Apr 2025 17:06:17 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Milena Olech <milena.olech@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
 <20250409122830.1977644-15-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250409122830.1977644-15-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0054.namprd16.prod.outlook.com
 (2603:10b6:907:1::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6547:EE_
X-MS-Office365-Filtering-Correlation-Id: 607dbc73-a34c-4703-660c-08dd7e0cd84f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmNoZVpFVEFiVUF3WXFwam5mWmdGWHZmMFRDUFd3UE9XajYrU2w0SjUxc1N6?=
 =?utf-8?B?VjhSRjIwbWsyYlJab1hjUXc1cm4zWWVTUFB5RTJyaWg0ckNJZnh3bWtzR0RM?=
 =?utf-8?B?R1VyZVdreDRmbVhJRWczZm5rOHdQckwvVm5YNG4vVmRMUXBmSVRJSU96RC9P?=
 =?utf-8?B?UFFYMDF1azc2alBXL1B2NGV4QTFCQUNQV0ZHWjJ3eUg5T0dpdXhSZ3hQaE9V?=
 =?utf-8?B?MmZVaHVGTUxqanBjN295WmhDQmxRd1VkclJvTnVKdEEwTmlkMXFQQm5nSUhZ?=
 =?utf-8?B?Rzc1ZTZDN1JVTzZtY0lqV0JJRUlUNkdLdFVQUS9WcUpCcFZPMUpOR2JHcHZR?=
 =?utf-8?B?aFRMWTVaRDg4N2s1UFJ0UGRWRUc5Mll0eUpPdVdhZzFBTkhKeEJUODhPMzE4?=
 =?utf-8?B?NlVoM3BtVTdCNFdTbG5uNWZIMTJBYnlsUGZoSC9YeXQxQ05DbDExa2hEY2E1?=
 =?utf-8?B?QUtjR1RGZ2hvZEdON2pUOGpDeU1RNjFtYVUwMno4dXc2L0dvdW5uc1RDSkFS?=
 =?utf-8?B?NG45TmFRRzAvenZCb3NmN2t1WFBEK2FoT21kRXhiWEQxVlhOUHdsRjR5Q1Fz?=
 =?utf-8?B?U2pCYStETWFScFZsN3U5NWZpNWE4NWdESGZMT0s2disxNGlkZVFmeXZnNG5u?=
 =?utf-8?B?WVptTm1Lc3kvUTgxWWZjTDNsNVBEUkNuVUJhVEZ1Si9HTEIwQkJGMC84YWZS?=
 =?utf-8?B?bVRxenNCU2VzSW1vby82bGQvbzA1a2JYeTlHMkRvaDkyTWVqdHloNnhmeU9Y?=
 =?utf-8?B?cFh1eDl6ekRHNWo3Z2R1ZGpPajZkdEJ3dEE1WkFCWTliODV2RUhQTVp2N1V1?=
 =?utf-8?B?cERWSko3bE1jRkFiTVQvL0Y1YVFvKzR5UmVHUzVQWCs1VGJRdnlpUGRnc1la?=
 =?utf-8?B?ek5vdzZHc2tVd0k3a2hKcm5oK29wR0lBd2t2bStNaE5qc0VTVXVEQnAra0JV?=
 =?utf-8?B?SXkvakt2cVBqaWlpNUh5Q29HNGt0OUJLT3pVVXp0Y0xXa1ZOMjhnSTREdmsr?=
 =?utf-8?B?a3BoejFmZ3hZb1Fjd1Z0MHNrVWRxMmRGWE9VZWI3Qkpmc01vQWtpZzdnRzB3?=
 =?utf-8?B?MnNnclhja2IvWTlMZ0ZjU2pWZ2FlZFZjdzhRRmI2Rk9WNDVRQnBuQ3c1QVYz?=
 =?utf-8?B?R0QvenFaZWpaNHdvZ3IyRHVqOThxUlJUSGxXaEczYndFQlMyd1FtNHQycnJZ?=
 =?utf-8?B?ZmRLZW1JL0ErRlpsYzFqUDJiWlprRzYrakpQN2JJUW5KT3h5NnJBVGVjblZi?=
 =?utf-8?B?SmEyQzVLWWtlTnJ5Zi9xdUJlZ2ZGdmp4cHFGZEc4RmhhU29La0RyUmtjbi9p?=
 =?utf-8?B?SXh0azA1NWMxNjBoZlNvTGI0eFI0K1cwWGNWNi9rbDdSVmk0ZXM3dm5PRlZQ?=
 =?utf-8?B?V0t2cGVCQ1lRSnZsT3NKRUczRmhOYkgxeHJrbGd6ajBKSlp2eXdBanRNaVJD?=
 =?utf-8?B?eGU3L0N2QmZWajlTK2lVSWZiTzRTY0ZzVmxFaS9iL1dTVnFVQVArQVVJL3lo?=
 =?utf-8?B?eEpSWFVqQlpybWw4YUN5SVJiSWhBRXlUVm9sNmNHWSt2S0hEdXcyT2FuRHZ6?=
 =?utf-8?B?UTNwOGJWTWpnWkFzWWM1QmZ3RXhSUHZRTnV6UUNyUmpSeUlnQU4wVWlrUHBL?=
 =?utf-8?B?QTJFUlAzN3lKZm5tSkdrYU1ON3dVUko5YjVMRUJxWVNkUk1qeWJpemI2dXpQ?=
 =?utf-8?B?cUxtV0J4RVc4MWlpQUZRYWM1TFptYStiZkNFZlpzUHJqQytOalRxV0ZsL0oy?=
 =?utf-8?B?TWRWcDAray9pZW9nRkFkZWdsNE1kS2xnakhpYVN0YVNZYzRjVFAveHVCZ2Ix?=
 =?utf-8?B?YUlyL2tKZy8zRk9OczY5a2Qyb09aV05FM0w3eUpzeTltVTQxSlhlTTFOWEcy?=
 =?utf-8?B?Wm9weVBZWjNUalFySXFQTHFrb0hyZkUzZkJralZ3Rm9IYmpnM1FKOEl1ekwr?=
 =?utf-8?Q?Jyi3+msGTnU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUtqZUdJcHJncDZnaXBmN3E2alNxdUpTN2p4UzlSM25XWUliZWJhck1hWWFX?=
 =?utf-8?B?c1dNQStkNDlSTU5rUmVjNzRvWmtMT01ZTlQ2bmlsVEtPMWsrUE9mL1UzR05v?=
 =?utf-8?B?UFYvL3VZWVRPOXl1Vjl2NUN1UGFQY0RLOHorSFpOeVltNnBOSHpSK1ZEZk5m?=
 =?utf-8?B?UmFnWW9zYm5lQU9lRkRTQW1oTzhqZGNwZXU2dFJXdTQwb3pTZjIrN2NlaEkv?=
 =?utf-8?B?aU8yT0QzTWhiSlNrZEZGWEpLNnIzUnhib09uYjF1YVZLcEFPKzVjRGU0WEV3?=
 =?utf-8?B?T3l5SWpWVEdSajl0QXdYVjJnbVpzak5MWXk3WVJ2RHl5aWpIejBHWDlrMU1T?=
 =?utf-8?B?RnNEY2RsSE5lZ0lYbmNXTk16UUdqSHBXbjM1NFM1cmJiY1ZIUTR3M3R1Ri9C?=
 =?utf-8?B?MnVsbmVkbWJNOEJvRHpRTmxIdktGWU5CckZWMUFZQXdkZ1RLQmhLdDRHNXda?=
 =?utf-8?B?VW9nbFRvRHErek9qaUNib3U2V0RpZkxYUXFHVVNmbUhPaDl0SGNJN0xoQWw5?=
 =?utf-8?B?eW9Scm4zVXNYY0dPVTFOSUtWWVVzRUdVd2dzcnpzQ1JLY0xjd25OdGNYZXY4?=
 =?utf-8?B?Vnd4TDMyTkVhK1Z5VU81R3BlSTF2c1gyUUZ3TXA2M2V4eCt0Q3pacCtYL1Ba?=
 =?utf-8?B?c0VlTVF4d1lRUVh6T0ZLKzlIYnM4T0hkQUt6V1dRMVdqZERBamgxbjJqUUFW?=
 =?utf-8?B?bUZuNWcrQVJZOVMxdjVBeWd5UUNhOTh5ejVCZ05uWFYwNWlvNHIzaDVkbTRZ?=
 =?utf-8?B?V2ljWDRPUjc0RzQ0UU9sTzZwM3F2RS9wRzM1UUwrUzRKaHRjVGV5NEVjakJI?=
 =?utf-8?B?am9SbG9reXA4U2t1Y3dVNFRRUGNMeDdoTjVoTzVvcTdtMXVJU3pEenNreFgz?=
 =?utf-8?B?anpMMHNTY0orVkVtMzhJMWx6MTk0UXNhNXA3b0t4M2p3WGdUbGtGb2hLVXdh?=
 =?utf-8?B?bFp0ODVxQzUvblljc0o1c1RGUm85MVl2b0RIM2FsbkVoV2xvZ1pMQ3lxaTJ6?=
 =?utf-8?B?d3RLZDZvVWdscnpFdXgwSXdVb2JqaWlSMTc0UHRXZ0JNc0ltYldRTWdqaGp5?=
 =?utf-8?B?NTAvZlY4ZWVrVUhLd0VjVTRPWUhsRTY4NUdONnpCSUdGaW95QTlaL0x6UFl3?=
 =?utf-8?B?YXd1dFY1QWlYbmNRZVdXaXk4YUZEM2hiWDU2MmQxSS9qSm1UbVJJR0d1Q3Ja?=
 =?utf-8?B?ODdxQ0NxZWJKelFNUlFBcWFRb1pBYTU0UVQ0b1E3WjlidUF0RVRhSlBDWmg4?=
 =?utf-8?B?Y0NUOFJFY3BxZFl1Um9hY1pBdXJoUktXSzE5MzhyNHRWWXlHZGk5UWJBcW5E?=
 =?utf-8?B?dW5hbFEvN0ZEU2dxVUFwR2FXVU1zRkh6MW5JWVlLcWZEYndLVW80dVpVSmEv?=
 =?utf-8?B?dVZNMmhFRFEyWm5POUZzUm5wOE9vSis4WjZmaU92eU94WVFpc1cyMGNjcEhN?=
 =?utf-8?B?NGttS3VoUElqRHphM1h5a1N1SUo0NXhOSnJUVE1SODVZREozUldiUURLUmRY?=
 =?utf-8?B?WFZRNFZGVWVnOEgzZkk3QkxDVVpLSTNqQnVtUEtmUHBZTkN1WWhBOW1DN1lo?=
 =?utf-8?B?blg2cnNueHFaVU1UOGg5Vy9Qam9GN3NSQkU2L2c1ZzJ6cGM1MVMrNEI1d1JE?=
 =?utf-8?B?QmV1cGdMcWNoUVlWYkFCcVlncTBiRTA5MSsyZHZnRUZselNDQWJaQzdlcnkr?=
 =?utf-8?B?L21FSTcveFE0SVRiSmNnNkUrRXhDV1NQRWcveitQU0J2MzN5dU9wbGZnRWcx?=
 =?utf-8?B?OGxGVTZkME5FclpqQ3VEYkNnT0t4cjk2Um83bWVWa1JSK3V4L2dwcXcrVlUv?=
 =?utf-8?B?UjBuYko5cHFyWEs1cU9KTkVldll6emZ3OUI1OThnYytwRUQwdzY5dDNlSFNI?=
 =?utf-8?B?VER6OFR0S3RWVzJTZWMzd1BxTm1IdmdLMmd6c0FZOFJQbkpsa3UxM1hqQTdB?=
 =?utf-8?B?Rmxjbjd2S05TUDEzSCtJN0JhOFYzbWd2eGt4dXpDTk55Rll4NGpVVU1Nd3lJ?=
 =?utf-8?B?YmVwRWRoampQOFh4NGYwdjZhOHZRNWF3NlhXVlpSeTBzWXpNN0R3dU9hdDEx?=
 =?utf-8?B?TkpkZ3BXMFA1MDBuMUFpRmJDTGlGTUw2SFZVRnJXai9EK3JyZXBTK0RwajlN?=
 =?utf-8?B?QXNMd3BUaWs1VTNGREI5L1lUa2hLRUUxTnBuWTRla1pyM0luRE1CWmo1VEY4?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 607dbc73-a34c-4703-660c-08dd7e0cd84f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2025 00:06:19.5845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f1XURMx1kLxM9xlH/FVlwDvSDMVur+RRvJqvhxsS620yYUM8WP5BIqJIb8YYssoLSwqpvuQx5JSJxBm//pYSeaICq8MKGXVtFwZorydONa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744934787; x=1776470787;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AQIAe6T3pmpxLFkMmvJbCuRe3pjcp07/0/lHaPDlh+U=;
 b=ecygQwy4bJXGeMYoAjMcV4RD6jch8OOW1yJtWXfNW2/UIdf4EQyh7RKI
 jIUxgWOs9N1j/FWQ8LjMBoqpO2D/NCCvKEyN5DAxkC/o0ZRrewYxtiaah
 Jkqvek0IWmT7E9ZeN5SBEW9hSUPr8eJz74GYc6VLJpCdzxGQN/wTPkTwI
 f9ROOOcdRnX3acKuF+la8y6BzD+MGxKwcfawjufGMBYJ3fCPFgmUamkRC
 Gzcs1DjqOBd3ej8sV2St6tZ8DlClv7XIEharkpdU+dfVonRmAXWXTEL7R
 VShbjCt6uKOEC7kDgZtqihF/b4UmGUFQDC7csUvGgokA+ye+fotz+xcG4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ecygQwy4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 03/10] ice: use designated
 initializers for TSPLL consts
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



On 4/9/2025 5:25 AM, Karol Kolacinski wrote:
> Instead of multiple comments, use designated initializers for TSPLL
> consts.
> 
> Adjust ice_tspll_params_e82x fields sizes.
> 
> Remove ice_tspll_params_e825 definitions as according to EDS (Electrical
> Design Specification) doc, E825 devices support only 156.25 MHz TSPLL
> frequency for both TCXO and TIME_REF clock source.
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.h |  19 +-
>  drivers/net/ethernet/intel/ice/ice_tspll.c  | 203 ++++----------------
>  drivers/net/ethernet/intel/ice/ice_tspll.h  |  29 +--
>  3 files changed, 64 insertions(+), 187 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index ce5f561fc481..83e991c160ba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -74,11 +74,11 @@ union ice_cgu_r16 {
>  };
>  
>  #define ICE_CGU_R19 0x4c
> -union ice_cgu_r19 {
> +union ice_cgu_r19_e82x {
>  	struct {
>  		u32 fbdiv_intgr : 8;
>  		u32 fdpll_ulck_thr : 5;
> -		u32 misc15 : 3;
> +		u32 misc15 : 1;
>  		u32 ndivratio : 4;

This change appears to be a copy mistake. It will result in the offset
for ndivratio being incorrect at BIT(14) instead of BIT(16). You later
correct this in the series when you convert to bitmasks, but this should
be removed from this committ.

>  		u32 tspll_iref_ndivratio : 3;
>  		u32 misc19 : 1;
> @@ -89,6 +89,21 @@ union ice_cgu_r19 {
>  	u32 val;
>  };
>  
> +union ice_cgu_r19_e825 {
> +	struct {
> +		u32 tspll_fbdiv_intgr : 10;
> +		u32 fdpll_ulck_thr : 5;
> +		u32 misc15 : 1;
> +		u32 tspll_ndivratio : 4;
> +		u32 tspll_iref_ndivratio : 3;
> +		u32 misc19 : 1;
> +		u32 japll_ndivratio : 4;
> +		u32 japll_postdiv_pdivratio : 3;
> +		u32 misc27 : 1;
> +	};
> +	u32 val;
> +};
> +

In fact, I believe this entire change should be separated to its own
commit, along with the other functional changes made in the conversion
to bitmask.


> -static const struct
> -ice_tspll_params_e825c e825c_tspll_params[NUM_ICE_TSPLL_FREQ] = {
> -	/* ICE_TSPLL_FREQ_25_000 -> 25 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x19,
> -		/* ndivratio */
> -		1,
> -		/* fbdiv_intgr */
> -		320,
> -		/* fbdiv_frac */
> -		0,
> -		/* ref1588_ck_div */
> -		0,
> +	[ICE_TSPLL_FREQ_122_880] = {
> +		.refclk_pre_div = 5,
> +		.post_pll_div = 7,
> +		.feedback_div = 223,
> +		.frac_n_div = 524288
>  	},
> -
> -	/* ICE_TSPLL_FREQ_122_880 -> 122.88 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x29,
> -		/* ndivratio */
> -		3,
> -		/* fbdiv_intgr */
> -		195,
> -		/* fbdiv_frac */
> -		1342177280UL,
> -		/* ref1588_ck_div */
> -		0,
> +	[ICE_TSPLL_FREQ_125_000] = {
> +		.refclk_pre_div = 5,
> +		.post_pll_div = 7,
> +		.feedback_div = 223,
> +		.frac_n_div = 524288
>  	},
> -
> -	/* ICE_TSPLL_FREQ_125_000 -> 125 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x3E,
> -		/* ndivratio */
> -		2,
> -		/* fbdiv_intgr */
> -		128,
> -		/* fbdiv_frac */
> -		0,
> -		/* ref1588_ck_div */
> -		0,
> +	[ICE_TSPLL_FREQ_153_600] = {
> +		.refclk_pre_div = 5,
> +		.post_pll_div = 6,
> +		.feedback_div = 159,
> +		.frac_n_div = 1572864
>  	},
> -
> -	/* ICE_TSPLL_FREQ_153_600 -> 153.6 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x33,
> -		/* ndivratio */
> -		3,
> -		/* fbdiv_intgr */
> -		156,
> -		/* fbdiv_frac */
> -		1073741824UL,
> -		/* ref1588_ck_div */
> -		0,
> -	},
> -
> -	/* ICE_TSPLL_FREQ_156_250 -> 156.25 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x1F,
> -		/* ndivratio */
> -		5,
> -		/* fbdiv_intgr */
> -		256,
> -		/* fbdiv_frac */
> -		0,
> -		/* ref1588_ck_div */
> -		0,
> -	},
> -
> -	/* ICE_TSPLL_FREQ_245_760 -> 245.76 MHz */
> -	{
> -		/* ck_refclkfreq */
> -		0x52,
> -		/* ndivratio */
> -		3,
> -		/* fbdiv_intgr */
> -		97,
> -		/* fbdiv_frac */
> -		2818572288UL,
> -		/* ref1588_ck_div */
> -		0,
> +	[ICE_TSPLL_FREQ_156_250] = {
> +		.refclk_pre_div = 5,
> +		.post_pll_div = 6,
> +		.feedback_div = 159,
> +		.frac_n_div = 1572864
>  	},
> +	[ICE_TSPLL_FREQ_245_760] = {
> +		.refclk_pre_div = 10,
> +		.post_pll_div = 7,
> +		.feedback_div = 223,
> +		.frac_n_div = 524288
> +	}
>  };
>  

The code diff is also a lot cleaner if you split the removal of the
E825-C array as a separate commit. Otherwise, this noisy diff is much
harder to process.
