Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33083B383E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 15:43:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAED440701;
	Wed, 27 Aug 2025 13:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-BxRwP7yTJ9; Wed, 27 Aug 2025 13:43:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0D8F4071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756302181;
	bh=ND4Rm6b6vSdaK8C3RYC6I4ADfQHlcM2aidXS7182aWo=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KsVzh+WTYv1DpX8cDVUs1i6u0jQcfAGiwbJotj3vcgx8pBapchwotQ3LTFtCLfWsp
	 Z7I12yGF7cKrDUiLAZvOF/GYc9O4PnON+BTSWGlyj4nORzdWE35xnvgul0OgqlDd2M
	 mO8r84QM4dquZKP4pR5G/C35JV/LjAjBmIsTkB735CcVoI2RQcK7lid8mFctOjiufn
	 WUiVGSaWXRuczp2FqLN1WhPdcpTm47jjuR46RdUp8YRJ6XfcCqbicpH8eth581235J
	 8qV+z54oRWRSE3WVgxeC2YEbQ+IaP0TN6OjeClYa9Wgu36Fygg/Wg/RAJf/cjv/8Qp
	 j2YHcJXu6cDNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0D8F4071F;
	Wed, 27 Aug 2025 13:43:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C72B114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E91660A89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JoZPAAoXElFg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 13:42:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2274B60645
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2274B60645
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2274B60645
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:42:58 +0000 (UTC)
X-CSE-ConnectionGUID: PDMOpb8NR+yyK1Ry+J0a4g==
X-CSE-MsgGUID: bb4Lmd90QNOHRGmzm0WCiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="62370382"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="62370382"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:42:40 -0700
X-CSE-ConnectionGUID: mt0KDy+XSZCNsc0WL/meMQ==
X-CSE-MsgGUID: 5BK4DRWLQ7aU+gdC7d02Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="175144150"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:42:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:42:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 06:42:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.43)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xip2y6ozwtI2jOzqOWJSJ1oTIiA4oX3wAtkJs/1gstpTrQAYmT1SClnU8D7iReHivESfxyQg+2N4Ihh3bLOMA8iZjy8SkZa19GrLaKU9HOVxS8R9pBsR3Z6MG16DfWDeYhafZ2xlBaDMZ1lgQcBdWzTvk7n/YvZ8EoyebRnT66Q30DzywCv0/0ZkTyBbGr6nqtela4E/qHkPCM5svybn97coDnKYSS9cWoVpx5zrS5R9RLfW7w1kbVbmck5CL7k26M2SkXLvxAqbNZ8Q7GLVrqQv29L91UA9CG2KwI2u7l3CuYX8jU42pHbYVdN20gXyfFOaoHcBfwuOXqfKAhf7yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ND4Rm6b6vSdaK8C3RYC6I4ADfQHlcM2aidXS7182aWo=;
 b=GO6ZjUkGNW8Krhhjy9Ho/zeyueODcvr+arbVLIwBouvJVmkI9Zh8ai3X/HnwX6WxCsMMO1Xc7lSH70RuKQXpr+txXNcYs7e0MEc1EUkjTZRCgoO30Hoj3jhuAm927IA+zHibl8QHe2v54Zefwcn0DtFDk/ZpDAGc2l7Dl8ZT6fTnKA7Z1V9WRxORxhFPAUl3qvSOjK+zCP2xx//z7O58wgHZ4b0pkMd5FI10HupD3b8GK8vwfixU+NhmLn5PuxDhkecrUQY558pJiSvm9rAnDMWLU2b3c3jdQ4jqJW3X/MXpaolSbCymMwqOZsULBOS8V3iEfqgWuc9oAPcygIVv6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB4775.namprd11.prod.outlook.com (2603:10b6:510:34::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Wed, 27 Aug
 2025 13:42:34 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 13:42:33 +0000
Message-ID: <4ae309b5-e840-4db2-bc33-2cb53209d32c@intel.com>
Date: Wed, 27 Aug 2025 15:42:28 +0200
User-Agent: Mozilla Thunderbird
To: Liao Yuanhong <liaoyuanhong@vivo.com>
References: <20250827121249.493203-1-liaoyuanhong@vivo.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
In-Reply-To: <20250827121249.493203-1-liaoyuanhong@vivo.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB4775:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bfb0c99-f42a-4104-92af-08dde56f93a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVVEejhVaGpEUi93TUM3VWJPQ0h5RlZHQmpZNUFiSlAzTlNjeldFb1FVRUpn?=
 =?utf-8?B?UHoxbnR2S29udzVVdk5GSThmRHp2UEtJOGs1dGxBQVFSMGo1R3lkUVJIWGNs?=
 =?utf-8?B?aTRlVE1KRC9ZRXo2RDZyMGVOWFRTTlB3dUlnSnZta2Y2dnhwUys0UlRzdTh3?=
 =?utf-8?B?RlViUmNSYlhHNzZkK2FPKzA1Rlo2T2pvcjdJeXBxYmwzUVc2WTl1WTFheEwy?=
 =?utf-8?B?anJFQmVEOHZWK296YzJHWXpVdkpnYmx3U3FmTk5rSFlySlJsR21GU2Q2Y01l?=
 =?utf-8?B?Z2doSFAzVUVTZXBVSFluSzBJaG01NTRjUWxoeW5WcmoyazA1QTBpc3JMRklj?=
 =?utf-8?B?WitZVWlaeUN6dGFGYkRpU282L0d2NHE1dTNPWXpob1pSZzVvVzRlbHNHd3I1?=
 =?utf-8?B?NXlEcUxRK3JxOVc0UEpJSTNsOXJYMGx6L2RnRHg2cHFIK004bDI4NUgxYnFa?=
 =?utf-8?B?RG9RNFV1TTJpVHptWTFmRjVvSHRrTnYxNmZKMVhIVGNSOFIxYnVmSEFqQ01E?=
 =?utf-8?B?dHBOTVBHbFBEa3pBaXFnTDdZSm1PNVR6TVR1ZkZ4eWh4elRud1lmWVdRaUhS?=
 =?utf-8?B?bm5HVExIUjR3eWRTOC9nRWNUdzBRSDcyaTNVUzUyUmZ0eVQwSmplYkJUaXFt?=
 =?utf-8?B?MDBhZVFvSGNHNFdCaURLN3I3SkJReUFxYU9DTmJ5V2tEcmZVeDFkMFFnVkto?=
 =?utf-8?B?NkZwTks1ckE0bkhMUi9kZlhWOHlEVzBGOTlLb1pCWUFiVUg2amVhZXBtTmlD?=
 =?utf-8?B?NmVJTk0wZzY5c09LRG1EQWpQWVZycktybGVCVmJwS1hROS9DME1DYXExS0pr?=
 =?utf-8?B?bUhSV3F6ektlMzRxS3laWW5LYlUyQ2dqZ1FKNUV2cG9ONlVkbEdhMlltRmRs?=
 =?utf-8?B?QVlzQUZvTUdsL3l3ancvTzFGdUhQUHAvRk52ekhJUEhwU2p0dkxDZXkyY2ZZ?=
 =?utf-8?B?L2tqOEFEMm9KakNyalNOb0w2VnZ0WmpFZVdYYlUxN3dTQ0lDTEFxckR0MURM?=
 =?utf-8?B?bURYUlJvKzdvaUlGTklMak5ZRExBb1NYU1JLTzR3Z2c0aE9jNmxnTnZWQVVx?=
 =?utf-8?B?SlZWc1RyY3BVd1FBNlNFVFZYbzh0TTk5SU9EdDVvdFluL0E3OXdBaU9Ualdp?=
 =?utf-8?B?bmNkVWpjazg4aWtnaFFYdW5zSStJczg1SjJWM3JJTnprUGgrTFZiSmhuQnVh?=
 =?utf-8?B?SjM1MjZYOW5XMFpXNCtVVm01MkkwRDJKMFA4ZnlveDAvTTcwN05GZU0yejI3?=
 =?utf-8?B?b2QyUVdLT1dGUy9pNzk4aCt2QWthRFhiWFhrTkxCdmtsR0JKbWk2VE1jNEFL?=
 =?utf-8?B?REVMak1KaFg1TzFXRStwZkJVenBNR25VTGZjTllhd2xKc3Jod1RaSjRacis4?=
 =?utf-8?B?NUJBbHBoTDJqU2kweFNpUjBvS0EyRHNwOTluSGxubjZtREFiTkZEMG5kdEhw?=
 =?utf-8?B?N25XdmkwTHdjU2Q5VTNFT2RXOHZydFIrUSt2dHIyNnpvQ0wzbm52MU11ZEpG?=
 =?utf-8?B?UUJiNFA0VXE5ampwUE5WaHozNHNtOHM1cWhjVWlqYnJOanpFbjZDME5JNlh0?=
 =?utf-8?B?RWV3dHB1SXVRSHVFZlhlTkZsYjJXMjAyeVZOSUIvYTZKcjN6R25oQ3JSbWtH?=
 =?utf-8?B?RWx5bzdVckIzcnEzTEJCVDByNDFmRlgrcDYrRU5MYW5yNnhTbjFyVWpvQTJS?=
 =?utf-8?B?K2JFc0g1RGMxVHRlT0JvMENOcTF0WU9peVUyWCtnQWpJRm50My9kZ1JyUnBz?=
 =?utf-8?B?bXFmeGdGdXRlNzN4RXpRUjBQSy9sNnJTNGxXWEpLTjYvSnI5dkRtYWRVZmZ2?=
 =?utf-8?B?TlQza3N6MDV5WVRHYTBlbkFYRko2TkkybHM4QldyWlZublNnZW13Ymg1UVBz?=
 =?utf-8?B?dGl5TzM0SmwrNXNIWVVqQm1Dcy9rZFhPSVZuL3RmcGY3d3UvcG1CUGxHYitV?=
 =?utf-8?Q?lnDmsI1/KTo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVhYNHFJSC81R2tBeTVFSEZTMzJyNkU3TlUydlRHQ1YrS2RxdW03WGVLVnpj?=
 =?utf-8?B?NGpKaDRJM05KWHFzbnB1ZEo5aDdSeVJaVzdXaEZZZnJCdndDMzRxNjc1K2J6?=
 =?utf-8?B?RUFVUG1mZHlpWkZhNG5sdUFIZENCeHljS1RsTmhkcTNHWStNNEtPL2t6OElz?=
 =?utf-8?B?SlF0Y2tZemdTRTZrQVFQdHUrMFNMcmFKVWdlUHVPT3Awa0ZFQjZ5M1JZTS9K?=
 =?utf-8?B?YlU3anhBVGNpMVRSWTRpNUl1MERLZ1Q5R04vM25pVUZ5ZHhPMldtZE4vTjY1?=
 =?utf-8?B?TlR2Y00xeTJkdk96NDNmdlh3dHZhdndJenVSWFpXYjFRV05Xbk10eVY2N1dU?=
 =?utf-8?B?dW5CRGN2UWUycW9GU2dwZGJSVFB4bFZ5SnV6c0F1OGJhS0ZWVFpuSjAwdzk4?=
 =?utf-8?B?MmlFMU1UbnoxbFU1OXovOTRZUmUvc3BJOTdhNmlMWW0wUkVvS3lZV2N1V285?=
 =?utf-8?B?ZUtvdk5CM1hvUC95YUsyTGNVRnh5a2lWSHhqTGN6QndXQmlCdHVtVG1EZk9s?=
 =?utf-8?B?SnFrMllVWVV2WHRXSFRQQUhXQUlLa0pUSlpudi9tRVZvL3QyTnVydVZNU3RD?=
 =?utf-8?B?TmhwNDZtMW5RYWVTYTlsaWN3WU1lMUw1Wmk4b2lkVHhiT1hsbVgvRTV5bmJp?=
 =?utf-8?B?Nk9Kd0hhSkJqdWh6U1lIeHkvMXVndjlVK0R0MWUyMmdIRmZDMWlHOTNKYnlt?=
 =?utf-8?B?cGd1c0lVdFg3cXA2ZHNFVTlDdXlCSEVWN2RyeitmeDVOZ2Jjd2ZDSW5xTDBE?=
 =?utf-8?B?QWYrU2xsMElqQmMrT3hDVk5SNUJMYWxWMWRrU05hVWp3cUJNWFBWa1VuMzdn?=
 =?utf-8?B?VDVseFQwUVJzSmZpdC80Ym9ScFlSd0pxaXlzVnltY0taZ1RBTGlNOFpFRWJO?=
 =?utf-8?B?Q2Z0VGlGalErZmNGcWVHcy82Z1l2SzdRYjZpWGkrNjgwTGRnb3BMb1JlZDIr?=
 =?utf-8?B?ZThBWEsvMUF4VXpkN2l5YWhYSVdFZURISjVKUWU2aDl2MDlyTWJ1RnhhNlcr?=
 =?utf-8?B?TFVIRGhrbmlPbXBseDZ4VThDUlArUXdUUFplNFRUY1Z5ZHVtSVFoVVkydkJo?=
 =?utf-8?B?c3BmRElkblBRYnFjQ3oyYUp6dlNodW45V21xZndCeHZHcU1vS09TNTZUNjI0?=
 =?utf-8?B?WU01NUFleFpMTVhsWnphVzdVL0R1ZTFudWRzMnJlWnRJSit1ZC9VbmRUUHUv?=
 =?utf-8?B?WVg3S3RwM1RnNzkzSXc3UUJML0J4OExSekQ5a2QwNXh2VXJtOTRtWlAwMTJM?=
 =?utf-8?B?bmRmRjhKeXpPZ1pERndTeXNlRlp2RFhsQmVMWjBreHdIT3J6aGJmN0EyRit4?=
 =?utf-8?B?QUdYUENtY3A3QTV3RGRWRmsxNzAzU0JzSng4U3VjeFpYYVUxL3oxRWdwZksv?=
 =?utf-8?B?VzMwODNSTFhQOEs1d1daRDZ3am02TUw1MWw2VnpaV2VyN0VXZDU4dTlMblpH?=
 =?utf-8?B?bGcrVEJkOVcwbG51aStMVDJ1c2ZrVkEvazV5blJESVEvcytuZXZNUTF3SzEv?=
 =?utf-8?B?cVZCMnNIem9QbG9oNGJnUzFGdkUvWk0yOUFDVGRrZmMwQkNTdGFQR1RUSkVH?=
 =?utf-8?B?SHJha3psYVd4cnlhbXBQbFMxRVY5ZzlVM0FUYVF0aDNuVTRCekZad2dFN1J4?=
 =?utf-8?B?Nk1NYUVJM1pMZXhnK2NkeGZJNFlrRUUzaW13WE41NXJlR2t5eEhtQS9qZUZE?=
 =?utf-8?B?ZlFvUXo0NHpBbjIwZVd1YVZ4TlVJTXMwMzlLZjdQTzlLd0s3MVBTbjl4a05C?=
 =?utf-8?B?Rlk2aUhzUjhPN29Qa25URDgzVER2cDBvNHpsbVFDeDB0VEtnN2VZaGgwZm1V?=
 =?utf-8?B?OEdCVHNxZ0RONTNXSmZiTXo0a1JzNDhVZnpOeWVzUTgwM01UeTVtelhNSi9k?=
 =?utf-8?B?ZHMxc1BjL25lOFpISS9RSmdWdUxyejJMLzhXdzluR2JiL1JNamlJSUdPbXpK?=
 =?utf-8?B?T3F4U29wYTZYR091ZWw3WkkrNUhMTHUxM0JiNUhsRFREdzRBaSt6RXBLYWhv?=
 =?utf-8?B?QnNxV1FSdTdVVXFtcm55QXNwbE9Bc3FLblhyN3l2WUNveW9mMmc2TWVpUGs3?=
 =?utf-8?B?M2E5Y3lYTjdLWUJuRkZXa3djQWk0bjBKaXZOYkNrTDAxQmtYUThTVzVnczJ1?=
 =?utf-8?B?VWZSbnlFK2swckdZU1FEZmxWdDJkS2R5MXd0L0xhSlZmK3R2RVVza0xZS2JF?=
 =?utf-8?Q?E60CNoeAeu1CHvfRM2tbIQ4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bfb0c99-f42a-4104-92af-08dde56f93a5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 13:42:33.9122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rkn8yzsdhfyq0jgitlPPP7cGwoNpeS6B0HaASL6Lf+RgTFjcYP+PLbA1KfZGEW0DnSGXI5LHOl3RXNEUh30lWoTReFxgz8idLOQTHwzrshc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756302179; x=1787838179;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xU76/IRJXAskmW90ynsYE7LciGj4KrJCc9p6P2GoV0Q=;
 b=d5sIYk+4+N4QJrDt2yD17Xs/UEZe/lTuc9RdOzsFDv1xfaBrCRicy3Ov
 XCbjOME14YjrPZqMeXREn3fPmikCEVcCDD6teuFlv4XUDu02+103z6wO7
 Gi6EOsordd0YHyZuwlYH7heMIu4x3kHrwa8wpQ+Law7rLZCecCKyfcROX
 jmSuJ9w2cOVJq6VaD6Gq+HBf9W6Htp9OV6cNxZVabT6Vx2ykwUMpUpWee
 WpUXWlZuIJrwj7yiop2zCiXVWfIBk/5yDPmCWPMmz+tnWmfXDWoJwGk9H
 LffPziCCAj8M3M1RVprx849EiHrwevFOag+1Y+4IPHrpBjumBtjUGcyIf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d5sIYk+4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] intel: Remove redundant
 ternary operators
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

On 8/27/25 14:12, Liao Yuanhong wrote:
> For ternary operators in the form of "a ? true : false", if 'a' itself
> returns a boolean result, the ternary operator can be omitted. Remove
> redundant ternary operators to clean up the code.
> 
> Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>

Netdev discourages patches which perform simple clean-ups, which are not 
in the context of other work
https://docs.kernel.org/process/maintainer-netdev.html#clean-up-patches

> ---
>   drivers/net/ethernet/intel/igb/e1000_phy.c | 2 +-
>   drivers/net/ethernet/intel/igc/igc_phy.c   | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
> index cd65008c7ef5..c21cd6311f45 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_phy.c
> +++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
> @@ -1652,7 +1652,7 @@ s32 igb_phy_has_link(struct e1000_hw *hw, u32 iterations,
>   			udelay(usec_interval);
>   	}
>   
> -	*success = (i < iterations) ? true : false;
> +	*success = i < iterations;
>   
>   	return ret_val;
>   }
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 6c4d204aecfa..828884d76f04 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -94,7 +94,7 @@ s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
>   			udelay(usec_interval);
>   	}
>   
> -	*success = (i < iterations) ? true : false;
> +	*success = i < iterations;
>   
>   	return ret_val;
>   }

