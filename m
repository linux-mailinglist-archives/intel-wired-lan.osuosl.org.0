Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB2ACC252
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 10:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B774C60FAD;
	Tue,  3 Jun 2025 08:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYlf0hdiUArO; Tue,  3 Jun 2025 08:47:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29330610D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748940433;
	bh=/mplSNkoL46yoRklPlHD+fibahU5uz3CY9JwUGk8lkk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sDdFrE7DmymdeG9s8MIUkJw86+9E1kPuxWbt6yFYaIItstzLOqgArVXb4AIuF+7VP
	 D0qwQa64+cydtfeW5/wdt4adOUQzklBpqU0KnP2ayiJubT6eZHDHMF7IO9+/UoHZtZ
	 fVdgap18UHyK58ME8rfZ6QFW7YDOJqInXIJjJblAo5KIEZamRp/DRFnHNNRiPyBG5l
	 Iu1/CoQovrRgcneGWA9PD1W44JqlAgmtlv09E4RjrSvYPK+bwCew9aJYXxpZMZqD3X
	 RDc3AwTA4i+WMpnQLVGOJL9t7i9VRK7UbGpe2s/dywfw+DoGokuyCraCOxameSSj+s
	 AXed8WNxKm0uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29330610D2;
	Tue,  3 Jun 2025 08:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80840DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 08:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71FDF60FCE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 08:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NqT2Z6gCxPab for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 08:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9441960B58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9441960B58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9441960B58
 for <intel-wired-lan@osuosl.org>; Tue,  3 Jun 2025 08:47:08 +0000 (UTC)
X-CSE-ConnectionGUID: 6dzKn/lRQkqLr7lZXGWpCg==
X-CSE-MsgGUID: UYdksxC/R2qdI3Em8gseQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="68401692"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="68401692"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 01:47:08 -0700
X-CSE-ConnectionGUID: 82pepp9BSOaRXghLy9+XCw==
X-CSE-MsgGUID: +C8Wzma3RRCg3PdD+nXYLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="144685970"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 01:47:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 01:47:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 01:47:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 3 Jun 2025 01:47:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tFD8Swlc2ajJ0hoeaYpEcQ2fQMZsCLXYRmfndVPTHTUKnPDSa9cxcY4Q1wUte9N5NbBGl2v9D2UVi88Fkm4Rw4mpFBvOUhr2rJfGWFbwbmsI9oMypIUS4Q8zWHmVq/KUkrTmDnUpVmT8RP1cchO54yGO53uuSYJ3rlN1+jll6kyjDakZJnOL5lN8K3gHsif5X44TFvkFStdXvmHNENuoJaz272PmhuK1DdknLOny3rmuDlkclSqa0nH/LmQ6y6otSnpjmbGQ9xt+wQmGVfU7v4MDV7lrxzWaWMza1LdZ1IFJvx5bSP/07DPa5u77DvRIlE09vCQzFi4jrtSk52v8dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/mplSNkoL46yoRklPlHD+fibahU5uz3CY9JwUGk8lkk=;
 b=AovjDup5betP1w5w8PpeHJ4kmSAJzbCjs2KjVOeLtsPbZfRZMwohLMHPCvoT3LtmYKHlpSKFFA2v+R/YoocF0FlnbkDzZDwn5nWBF0jejp2URmJugIODjHU7DPjpQB8n7p8hCinIt5Om9wRwIfN+Q6HFD8UBlfaGk3dzRdEGM/dCVCwI/hjMjKDk4qP6bwBEKhi7QVWAk73e3in6xEPov60QotGUJfXqgKNIXr43UzZQPLOy52weNd0Z8U1IfpUhLkWj8S15N6lEOfsdg4SyJFM0WV2fVrGOlcuzlWw3md2SBXaPi1sJHvWh5iMOQfhm98NGGvCGBw9zxj1Iqgq8QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by MN2PR11MB4614.namprd11.prod.outlook.com (2603:10b6:208:268::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Tue, 3 Jun
 2025 08:46:45 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%4]) with mapi id 15.20.8792.034; Tue, 3 Jun 2025
 08:46:45 +0000
Message-ID: <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
Date: Tue, 3 Jun 2025 11:46:41 +0300
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>, <intel-wired-lan@osuosl.org>
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
 <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|MN2PR11MB4614:EE_
X-MS-Office365-Filtering-Correlation-Id: 79d2a27b-eb2b-42b6-6a75-08dda27b2b85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFZ3ekRTbEgrZzM2ZC9iZFBHaVBIVkU3aG1ZVUZRN1F2ZHVMYmFJb1BRUW5Q?=
 =?utf-8?B?V3NCRnY3bVFXbzlBeGNNb1lHUm1CNUhmQk4vNW5sZVhxZVhWek8way9SZzZH?=
 =?utf-8?B?VFZOYUNrNWp1UUlzOWplMGJLWjZURnZZbWxoYjZQTTdFODFsamFaeVZCcnZO?=
 =?utf-8?B?TGQxTWs5Y3ZOQ1NIZktIaUxFcG5pN3lta0lqc0RGOUpUT0krbjVrc2pwQVhJ?=
 =?utf-8?B?TitOM28wUENGTGUrYzYyaWtVbDRSS2thbEZsK1dSSG80TXRjNEhOMUJJeUxq?=
 =?utf-8?B?VXVJclB1d1JXWlRHS3UzQ0RqS1NXTDJhR2lOM0RjTVdsbWhhNmh6QmxkUWNl?=
 =?utf-8?B?b1drcnlWTGNxbzRsUU10SEhRZWFqdWNqbDRMOWQ1cHJIU3ZrT3Z4R1Z4ejlz?=
 =?utf-8?B?YmxHNE01eGFSWk1ZWFF5YzFUNGhiaGtMa0RCbUlYU2xnSFoyTlUzTTZReFlF?=
 =?utf-8?B?U3lWdWxJNTVsOE9tREpPQVVKOUZUSUsrL1VXNmFFVGlxWmVPc0VtSFVOa0tn?=
 =?utf-8?B?ZkJrMWc3WUU5QUZvUks1NlNtdlVBMXJZajhNMmIzN1AzcmhrZmhYaWpZYmRH?=
 =?utf-8?B?STZaTFFoUjF5ekIyekdHbFd0bitJbzEwWWlaMnVpYTAxOTM4OFJjekdiRkZ1?=
 =?utf-8?B?T0ZpUE9qUnpLZkJva2Q0TkJoNWE1dnhrUlIybUJJdjRybEZxMGk4UWgyZVBG?=
 =?utf-8?B?MG5iM01mb1ZNeXgwelB4aWloY0RHeWVSdkN6aWFCT1cwWUZxTktoeGFjamZX?=
 =?utf-8?B?ZVViQzB2TWhWZTFMekp3Y3FPdUVjT01sVmlxRUJVckFhM0JURjIxMjMvdWto?=
 =?utf-8?B?L21ybVJUcGExZzdzSnZ3YllIckE0cXI2Uk5wai9yd3JsT0dCaW91dGhVcVU1?=
 =?utf-8?B?K0l6RWZaT0pwVUlabmNCNWJYQ2FVOTdLY3lWdnVBdzJTSmR6ZnBpbnZJNUJW?=
 =?utf-8?B?aG5HeFczblRlMml2TUl2YVU1SnlwZ0pCMEVMa093MzhWclFJU0pWb09lYUNi?=
 =?utf-8?B?eWJCRURCdlBMZDdHUUZYR3ZkemM2dHVJa3ZiR1dSaWdpdmhySGo0UElSTnB3?=
 =?utf-8?B?cGRZbjdtNXFCNTRINTlIV0Y1L2RHb2VNZzBac1BqQVhPY2piek1CVXN6dExU?=
 =?utf-8?B?Z3hHRTJTT1VKMHBLeFdFMUtENHF4a2JRS0xzZlBQR3h1NGVJQ3VoeEhqZTU3?=
 =?utf-8?B?NjVzK0c4c3ZLUWt6SHR3U3RaQm9UVVBSTVRmQlltUnRjaFhpOGMzSVBVYzF6?=
 =?utf-8?B?WU03M3l4Qmx0Z3YvcHRSQW9iZGF1ekVMblpxMTFMTjZ4NUFaWEhPc1hoa08y?=
 =?utf-8?B?K0tFMXhNajBya0M2Qjl3ZVB5Z1NwTG9QbGx2TDBpaCtDWlNIZjZYR3R5aElD?=
 =?utf-8?B?bDU4MVlHNGV3YVdBOGRHcnRjTjAwZTRKRnhVaHVoeWdNalVDY3QxSGlQZmk5?=
 =?utf-8?B?bnhiSmxNTy9iSGhlYXFPQUlEeTZld2dLWXJ4YmZNeDYrdXlmeXN5RmhnZ3B1?=
 =?utf-8?B?Wm1yK3g0NHJ6R3Y1cFFYNHI5NXByOEF6a2M2Y1RhdjNkWWdKZnh6eWdIZUkv?=
 =?utf-8?B?blk1blN0NTJmT0VVT2dpaFh4WmZqQ3VGc3NTeTJYakV2RVJHaHhwZEpHVFVo?=
 =?utf-8?B?blFqNmhzTjRTd0c3OTFoN3VmdG5lRldEVkhTRUo1QXRGV2hOY0RBai96U29I?=
 =?utf-8?B?UWtnd2tkdUE2UDVxMXhLOGVPdUx3T05YSzRoUHFLY0RpNFE1YnZBb3hYQ2wy?=
 =?utf-8?B?aVoyaVRGRUJtbmp5cE9PR2R3MzkvMkRKanBRZzV3R281aklEclBEaXRSRE9R?=
 =?utf-8?B?aDFRUVdmVWpzN2M3RCtiV01mcy9DQ3ZCV0lIcEVnYUQwRWJzZCt5bCs5bmxI?=
 =?utf-8?B?Z3g3UTA3bHRNR283QnNPTjVIL090RGMzYyt3M2t2Z29FWlZjaGt2eVJHUnVB?=
 =?utf-8?Q?R+vH4gXhPTQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXg3WXo1MzhMdWczN1J6QkZaVkJBSlF1Ry9iOXBVM3dTRkRGcGlWNCtRbW9h?=
 =?utf-8?B?eWlhb3ZZb1RDUGZIWDRiMStiR2lUdzZnUXlWUDZLOGFvVU5WMDB2UjF2eTB0?=
 =?utf-8?B?N0dDZGRrWU1iWTF5cUxDZklXYmQvbXZBckxLVGZmZ0dXczc2aGRVNzJzWHZn?=
 =?utf-8?B?SmFGT0dmWnRyTllZYlo2R0xveTNzLzBQZ2ltYllkRFVBZ3FJS1h6NHBtNElS?=
 =?utf-8?B?UWQvQ0ZkR0FwY1ExMkROYUw0dlAyVTlwMUFoVUxuRDZEVy9wT0tXMzRDOHh4?=
 =?utf-8?B?bUtxWkxWNkN4SVhxYXVDcWcwKzNYMGI0TFdEL0QxVk1PSjVXcFBZbnpVSlNp?=
 =?utf-8?B?LzBrbVliNHpMeVZ2TjF2ZVZFaHBaL2J4cUNad1FhRlJuK1hJaWZFeDh5SVJq?=
 =?utf-8?B?TVdEQ0xKWnpyMEkxc1ZlUFNralB1aVZrOXVPWmt4S2pPbHEzZUlVZmxQbWw0?=
 =?utf-8?B?ZVdBTytoUklxTTBnRzk0NzMrVUY1SVBNVFlBaW5wSVg2QlUzSENpakdXQlFL?=
 =?utf-8?B?TnY4d2pmMW4vMkpFMUJ2Ny9xdDlNK3hHVmo1MldadFphR09OOGVDcWZHYkVt?=
 =?utf-8?B?UGxrZk4waHZWbWJJVlNqWjl1ZmRXS29UYlJxQnVDRllUbU1oMzY1QTd1QWRt?=
 =?utf-8?B?Z0V4MHJNK2EwMkZtSlV4Y3hoVS96NFRFMkw1NW9FQmNGdEhvK0Vyb21JUXBW?=
 =?utf-8?B?TVJFTmNPd1dUcTBTVjZWZ2JGOU11RU9tTmkzUzN3ODJoZGlNUDg4L2NQaHR3?=
 =?utf-8?B?ZVpaeklkd0lpRFlwYy8zdjJFamdVS3VnRzhvR2Q4bVBoMDk5MFJjWnVlZTdB?=
 =?utf-8?B?cGJaZ0VMSWhPeEdOWWZxcFo4YTdjOElNeDFFSHRybVFJRHIzK0VkNWhKRkVD?=
 =?utf-8?B?ZFRPZ0IxUjJlVkp0LzRXYnRMNW4wMWcvYk5xREpHT2ZuY0hyUmgzMVJlT3Vl?=
 =?utf-8?B?d2lsYU9hMGVVL2VycHdjMjJ4cnQxZDJXY25aNTROZ1luM2dSQTZ6eEE1YVY1?=
 =?utf-8?B?eUN3d1B3TFFQSmFvWmtjei91Z1oyb2IrRmFFcW9mK2Rvc1JrV3ByVi93YlB3?=
 =?utf-8?B?eklMM2E3T085ZGJHNFprMWtXdit6M2hVK0hmTFJKRy9wNnZ1cGwvVWp1SG9z?=
 =?utf-8?B?VjV3N3hmTTI3SGNjZjhnU1h2dHJLMElGS0NSVCtrSEFXRXNrUGw2NnR6QTVz?=
 =?utf-8?B?SEdKSlB3QXpHOXFSNHViNG5SU0F6UHgxeXdZSEV3RzBUSFNLOGNIUzRaOHcv?=
 =?utf-8?B?ZjZuVERGa0psS1B4WHZnWlNyL0tEWHBGK0x1WUJXY0c1R3lua1pOWm14d3FU?=
 =?utf-8?B?by82NDN5Uk9NbGx0blVycHJySzJyNXlWN2xFcld2cFpMYmh6NHpJVTg0alAx?=
 =?utf-8?B?RmYyS05HcHU0Qlh5dy8vZnc1ZTFsMTZNSDZVcm9hTDc3RERvbStYZHFqN2Mx?=
 =?utf-8?B?M0VJS0h0cVQ2U2pUMHR6OXcxcjdqZjV5cUVsWjVYYnVkcmRaZXY0MFlPenR3?=
 =?utf-8?B?b1FkZ08rcjhEbU9FQUNTZ3RWWWVzNkUxWlZ0ajkyK0hGL2hIWVJ2aWk0R1Fz?=
 =?utf-8?B?S21wano4YXlJd3pnNnhjV0F4L3p4TVluVjlqUm9IRUtVNXRIT3RpMU9Idmlq?=
 =?utf-8?B?dEE5NG1hWjNhSzRBMHlBcmRSdmFZcDJNZ3M0Uzc4QWdndmROMXZ5L1NHQllt?=
 =?utf-8?B?clBoZ0dpYWJtRWpiUGpQVGxHakFsZlhjRDZ1Nm52eGJmTkk4NjVuNkhCSWJZ?=
 =?utf-8?B?U2gvTXE4V3NUOGxrdk5lZGEyQ2IzaW9HNWlKUjduelhFM2pKNEVOOC9iVXdS?=
 =?utf-8?B?aFZKV0I1V2kwU2lYWlZtQXZicWltSDh6M3piQWFXK1hFZzBtc2tVMmFuQnlK?=
 =?utf-8?B?RUM3TDRYcnlGUkl2Mi95cEZlbXZiREJiU1d3ZlJGeXVsMGpLTWxqdmczRUN2?=
 =?utf-8?B?dTU4MVJoV0o0dzBuOTJUYjAxTDRESGhKckNlUExDRWRucDJWM3c4eTgxdEtD?=
 =?utf-8?B?em1rUTQvbGpnaWlLNUFZQVEvOU9zelBGcVNZeWhJSmNzeEptbE03MXhJcGxG?=
 =?utf-8?B?WGtsUUNrSEVWRHFWWTFSRVZNbXhESG4wSG1PVUU2V0xDdm5OWElQR0d5QW1M?=
 =?utf-8?B?V2dJdzFCVVNtK1h1dVBrbE9BcUZ2OUxtOU1CZ1dxeEVrdktZZks2RE1oZUVD?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d2a27b-eb2b-42b6-6a75-08dda27b2b85
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 08:46:45.4236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WKy4RVfR1Cs8JFVofld24epiQnjXXPE6RNhyCR2E/Uq8vtAnLsrwcN1vFP6LK8CkzQslrf4z4uLks7uAnxLHRwInNWhbglY15kRJfr+FWMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4614
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748940430; x=1780476430;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DVcr+zfvmVwEhpaOegdGaq21f3LBVkI7sxpv1e3mHpI=;
 b=mDF4lh3XwCxDwxSTJSyyV6z1Vz/lN+STnw144hVP2iKtSRJdRaItfmtH
 Gxb0Dxg66DdPPoNvGufFZHmVGUfw3nrVl/xiZ9hrtlyw0LEPHWY2Ig9MF
 7veE5VJ7UJ3b8AqP3XkrVixe1krQLvxvt+7sSldbHI+mpaN1gsYjCFMc+
 2lNHTxvYzp5cEr4VEhlqKKnFltxF6UCHLISyPKkLnwofGMKiIC89/uWDn
 3y9htwSqx3nN7zQurlAl9zImdXYGF4DBR4hzs5hID8TwEWJg2pgBWcOJD
 u6NVo0i8bhtPq+Em9Wx8mfyWHWRzDLQQyHmJOpuSsLXeSWAqHhwXrJFoF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mDF4lh3X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM
 enabled
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



On 6/1/2025 4:16 PM, ValdikSS wrote:
> On 01.06.2025 1:04 PM, Lifshits, Vitaly wrote:
>>
>>>
>>> Hello, are there any updates on upstreaming this change?
>>>
>>> If there haven't been much testing, could it be put behind the module 
>>> option and disabled by default?
>>>
>>
>>
>> Hello,
>>
>>
>> We've decided to pursue a different solution to the issue.
>>
>> The original workaround may negatively impact system power 
>> consumption, as a low LTR value can prevent the CPU from entering 
>> deeper power states.
>>
>> As an alternative, and for testing purposes only, could you please 
>> check whether the following changes resolve the issue on your system?
> 
> With this patch, the speed is fast only after suspend/resume cycle.
> If I just power on the PC, the speed is capped. If I unload the module 
> with the previous patch and insert this one, the speed is also capped 
> and another suspend/resume cycle is required.
> 
> After suspend/resume, the speed is good.
> 
> Tested on 6.14.8, with the igc code from 6.14.9.

Ok, so I believe that adding this to igc_probe should work:

--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7074,6 +7074,8 @@ static int igc_probe(struct pci_dev *pdev,
         const struct igc_info *ei = igc_info_tbl[ent->driver_data];
         int err;

+       pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
+
         err = pci_enable_device_mem(pdev);
         if (err)
                 return err;
@@ -7498,6 +7500,8 @@ static int __igc_resume(struct device *dev, bool rpm)
         pci_enable_wake(pdev, PCI_D3hot, 0);
         pci_enable_wake(pdev, PCI_D3cold, 0);

+       pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
+
         if (igc_init_interrupt_scheme(adapter, true)) {
                 netdev_err(netdev, "Unable to allocate memory for 
queues\n");
                 return -ENOMEM;
@@ -7623,6 +7627,7 @@ static pci_ers_result_t igc_io_slot_reset(struct 
pci_dev *pdev)
                 pci_enable_wake(pdev, PCI_D3hot, 0);
                 pci_enable_wake(pdev, PCI_D3cold, 0);

+               pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
                 /* In case of PCI error, adapter loses its HW address
                  * so we should re-assign it here.
                  */

I think that if this patch works, we can start working on upstreaming it.

