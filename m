Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39E2904ECE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 11:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A425840BCE;
	Wed, 12 Jun 2024 09:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1vgJJY2EK8ol; Wed, 12 Jun 2024 09:09:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FD3E40BD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718183378;
	bh=8kYjs9cVsJDg8Vc23zidIxzpGuquD7VxXJvVkqwFf+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZpJphGETakGqtA/Y8xqRkAZ71YDVi94Pwb1P8IsmuYYEe3kWDojbyYacDcNcfo6tF
	 RvlkIQzS9eUvPi6FlcLy9zX4SsTZ7RbXWhzXLGnC85drDGojNolhqSwpVKxQsSNxwu
	 atcQ2gkxtTvKoKG9Fl+URMTZNRvi+HcOtdq3gjADe37mnH41ai+2+StTnvEv/snv8p
	 Y+hdMcdZurgntri0zwjJjtUL4q0W5rWLmQSkq1Aj9gj2VFUeFTGJD5YsERVU6Ogva8
	 r3dcAuDfO+K/EgFbAmlj9XANfnAf1Iv2Ov57zSvI8x+TtQQibHF4eXOCEc59oPxW7W
	 OihIkpZvn8aHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FD3E40BD4;
	Wed, 12 Jun 2024 09:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74A2F1BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6061240BAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rkicuU1BGQtM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 09:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DDC3240BA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDC3240BA8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDC3240BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 09:09:34 +0000 (UTC)
X-CSE-ConnectionGUID: AG8GTjnrRZ2alusklB7Enw==
X-CSE-MsgGUID: cUcLL2qdRMmG+sPalJVoxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="14776786"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="14776786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 02:09:34 -0700
X-CSE-ConnectionGUID: z/s2DeyuSZOnQgnoEaBouA==
X-CSE-MsgGUID: 9LVUQh9nStmEWsrfKHaoIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="39686048"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 02:09:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 02:09:32 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 02:09:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 02:09:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 02:09:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUi+WISWYVXsx7DMNucMFUvTLi43Bym64hU78icqbixWn8bh5RoDmwnrsorYoy8OBEUR9ZvnnvqJy+pKzlNPtNFU8Lg5f9q//4V5oxB7osMs1g6K0b7sVDYmoFs3AkSvawv0ItA8f3rJEaGU2r672+wDsq8RmiqG7IxMBaXbXz/mR4m3l6Cr+akKHiaQCXJqVoNxHRTTga/5+ID2FYuIZXQS9hunS3Lw08BsgZ0MK35/pIZ0NwGQv9v125ubzpeRvOrDBP+bi09RgHRk/i8qSjPDT3kfY0CbO2aHIQXbxCG0O7NWeKF7cDJnU+qKwZK9N18bkmBO60axpHjZQxr1vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8kYjs9cVsJDg8Vc23zidIxzpGuquD7VxXJvVkqwFf+I=;
 b=jHK4sjZ+UntXtgu4Wt/BdxKbP0I5CztYg6LuVorx9APO7Y8JF9yELo2xpNsizuMyodfGopN4cPvrGb3DJuoFmyGEjSGrAaXmDm7Jr09fWJDbfYldiEnYWmgtRYytw90BiIL9A6RmvH75Q6Xc8j6lfHXYQfLkPTUf+o+tmGRTdqhkvi8rgWs7ob0xCr6yvG4AuD5R58M4OnvXhwp44wfr1XIKXRHFAg0KE72ynchurRiDQJFJaMf2aMxPuOPBMFZ12pJecu+xO/gyR1ZTv3oDyTdiCM7Qyc3rnQ97DbW/ECVccnAIDdkrNTTwN0J220aupJb8RTXfcrTDrUhHjeOOpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB7099.namprd11.prod.outlook.com (2603:10b6:510:20e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 09:09:29 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 09:09:29 +0000
Message-ID: <8a835d02-d65f-42be-b4dd-309e9e04d7f0@intel.com>
Date: Wed, 12 Jun 2024 11:09:10 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
 <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com> <ZmhdZwzIStFpghZK@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <ZmhdZwzIStFpghZK@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0307.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::23) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB7099:EE_
X-MS-Office365-Filtering-Correlation-Id: 17d950d1-e450-4fc0-0594-08dc8abf5d8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1VpeDJaZDFOKzRhV3ZHZGZsZmErc0h1RnY2OFA0M2NyalU1bkZoRVN5dmZU?=
 =?utf-8?B?SlBQb2U2TTlxQkJNdUJzSFc5ODJWd1pibm9tbVVxZTNGN1lLSlR3YzhPTnlZ?=
 =?utf-8?B?eC9IMm03MHVVVFROamd0NE5MbEZUcy9PQmlDS2crbkxvbWlaQis4UGZLdk03?=
 =?utf-8?B?dEFVVG4rdE1iRzBEMmd0bm51d0VwMHlidmlERngvcjRCdGduR09VKy9kSTZv?=
 =?utf-8?B?a0NFVzVWOE13eTYzTFlqU0YvOGp5MEk2N3NEUGg1RTF2eXZuMktTWG5OOWZv?=
 =?utf-8?B?RjBIa3paL2JzdFdSNkYxY1BnT2pXWFNNbTIrNjBOT1dicndWeHJsUVllNHZV?=
 =?utf-8?B?NHJXNVZ0cW9qVGt4M0s2dlFLR09TWTB0dnQxVzA1Uy9KUndOTWwxQzBFelR6?=
 =?utf-8?B?N21XOGNTek90ZDlCTG5Vd2cwNmxLY0hVQ2tFclNndDUxdUxpVDJPM0oyR2VS?=
 =?utf-8?B?SmN0eWcxNlMxMnV4ZVZZL2U5aUIrc0JINzEwNmR4SkpFa2wrRVRmdlNWNGxy?=
 =?utf-8?B?NXZYcStpUUlSRklZR3psQytxd0FQRkFhK0laanlnQzE4bGVjT2o2RG5wUGp4?=
 =?utf-8?B?NWlmaXE5dHpYeTVodE14bDJ1bWx1dEp5WFc3ekErTVM1V3kwb3BNZm5yTDhi?=
 =?utf-8?B?OGJvMnlKZXJ3VGlNZUFKeksvNVdWY2FqQjhpa0RVYXorMkVmYzBGUHFCQnJu?=
 =?utf-8?B?TXQ4dEltUlRDTkRmN0RDc3RFbU1WL0RJTVFtODliQVBFOFhLRk5jR1FJZktk?=
 =?utf-8?B?ZHZJSTNDUzA2QU4zRXRCcjRYam9zeThQdXE3QURwTHYrYy85ZjJKNmt5M0wy?=
 =?utf-8?B?ZlZINzY3eGl4ZHRmTW9ENE5LZ2VpeGdGcTlTTCtHTi80YjZ1NXowM0krTW9h?=
 =?utf-8?B?cGRVY2lVc0hTenBoWnE5UGFXd21iUW5pRTdGQmpNVFd1c1M3MUZqeDVaU2hz?=
 =?utf-8?B?VlRSTmlWZEhPUUZWRUw5T1JNZGM4WThDcnNzOGd5S2VPRWFINERsei9sRnY3?=
 =?utf-8?B?KytUaDhHT2xRZHlMT3k1THBQMllMRmpiVlpmMXlNblRFK0UzVkptcmkvRnpw?=
 =?utf-8?B?WmNyeENXQlZwR04xalVmdnplT0RIZFhxZHY4SGhxY0svcVUwM24rY0d3TzRa?=
 =?utf-8?B?SUFVZkdaOXFHdnQ5Z3JpR2xkdG1SNHpUV3hneDk1c0NCMDc2V1doMEw3VUZG?=
 =?utf-8?B?eXZ4VDcxOEwvelFnM0dIY0MwSS9pRCt1MGVlZjVMK2Rlc2d1TXEzZXJwOGI5?=
 =?utf-8?B?RFBoOXcxR1hEZ1FmQXJMZG4vSFdnOCtTcEt3cE5RQkx1Zlc5ejUxSGpQdVlS?=
 =?utf-8?B?bnh5QXZqWThHUWh1aEp2YVRMMWVGNmUrb3BWMk5BbGl5VlAwMGZUaStwaHUx?=
 =?utf-8?B?N0swVTdCNjFrNTNRRm41d2Z5TEZlT1lzMUlzVlFHVVlzcHpvRURaa0szbXhj?=
 =?utf-8?B?ZVBiK09HNDcwanZYUXlId2V4djRjM2VsSVNIVC9GS2xWbVlqR3YvMHVwaEpH?=
 =?utf-8?B?c0FpclZpTTFGQjhldGxOK0x5dHhvdVF6NjYxdkxmS29aM09sR2J1RGZPNUlj?=
 =?utf-8?B?N21SOEd2MzgyamZpUnprL3J3TnBHUDBkNFBtTDE3TWZmSHJEQk5BUzA3UlBE?=
 =?utf-8?B?S3dEZHUzQlZLNHcrOVZUanBLRkxkUTRxMGNJN3IrQVluVXZ3ckhXRW1BenNj?=
 =?utf-8?B?bTlUQlErU1ZkdHFyRG0yU0RtVVFpdlo5QkhsZWV0bkRDckdsS3YrNThLWkZE?=
 =?utf-8?Q?LqTO8HSQhiWZbnj/4Ev7urGF+2l3gI6z+IKc6Vg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVRIbmF6R3pZWlg0eHF6OU5hQkFQU0Y4cm5YdVNEalN4b2FmK3RmUmZ5OU5y?=
 =?utf-8?B?eHZ0MG9rbG5LR2NWdGxwdDUvNFlRVFU5eC9CR3B5V29CK1d3aFYyWTI3eXZt?=
 =?utf-8?B?em4rVTRiZDluZlZjWVEyT0IzVjRnSkdYQjIwRGkrYUtlWE1qSlRFSjY0MGlR?=
 =?utf-8?B?dlFTMUJpZ2JHNjVPc0VYemFjWGphOWtPYmxJam1LcDJPcjF4ajM2SmJPTGd3?=
 =?utf-8?B?QWlYc0tVNlFGZVRtTVNqNmx6dElveThqcGxIRVZJNmdab1djZUsrT0ZFcFdx?=
 =?utf-8?B?bkdlL29nY1I5Uk5sck04MFhsc1RUY2o5VmY3REExOWEwRld3NHl3MEdyck5n?=
 =?utf-8?B?MS81Ny96UGpZbW84c3ppcGxQb2NmN2lVRGxweE9LVGw0dk1KRVF0VjZLU1h3?=
 =?utf-8?B?OGZiRVhvNFZLbDhWWnpyNG5aYzdtQ2ZzcUh3RUYvUy9oaXhWR1FKTnRNMmQx?=
 =?utf-8?B?cmliUGk2d3RrRTd6cDdsQ1kvcTR6UmtHbUhCZUhMS1BKc3B1SUdKbXhxak9R?=
 =?utf-8?B?VzBlOXB4RlNtb0xtUXJjV0lBOFNodTJJVW5oZEFtbFJMeGMyaVB4NHJ4YzFs?=
 =?utf-8?B?ZzYzR2FCK0FZNVVxYnVDbS9qYU1BclVJUEdLM3paRWJWUnNDdEpXQkxUOW03?=
 =?utf-8?B?aXVSUXJ2V3ZzRENtV2srOE03ekZETHNTQi9aZElPbnJVR211WGJ4cVg2Q3hn?=
 =?utf-8?B?Q3dGZ0Q2VDNjekROclhPSnZhVENFNkhIWlZhN3dVWGxHOVFacGtJdlhXNmxp?=
 =?utf-8?B?YzkrRDY5TUREYkFpeFNwcXh5WkVvV1FyVzdXWldLaWtRV0lXOGR6L1c2bGky?=
 =?utf-8?B?YUhVM1lUZWxMaVhsN253ODFvR1RkNEhuSEo4QlZLVE1ZOHpUNkwwbDNkSzNn?=
 =?utf-8?B?RFg5M0xCR3QvcW92QnVlcklYM1RsTUF2TjlDUkI0bjF4aWJjYngxR0hKSFNm?=
 =?utf-8?B?bE5aY0g2YklyWW1IbEZ2aFp1eVQ1bkNBVko2S0Y5V0pMMndsMTJlM1ZhU2tG?=
 =?utf-8?B?eGpQYUdmVWlqS21IQWR2UHIyeGJVTlFmem9jODVBU3U0YkNRMytDL0tyNHp2?=
 =?utf-8?B?eGEyaXpMdjlRelRnRVd2Rnp0dDdqWWdGL01lRi9LeGxwdzNzT3pUcFJpTTlI?=
 =?utf-8?B?emF4MXVlTmxGK2s4cU5RbGExU1hHZ1BFOGJ5TFRkQTF5V0RKakhraWlNbjdO?=
 =?utf-8?B?clhVNWxZcVRqQ3pCR1ZRUTBrVEY1SUdTeEhBczBYSDlrbExNNjZMdzRkV29W?=
 =?utf-8?B?SFhxVlpEVFZ3VVJuSzc2UHZvUE5aa1RUL3JxZWg0UjN6enBUbVk0T1dQTnpv?=
 =?utf-8?B?VDBpeHo0YnhMcCtyeDRmN2Zna0ExU1ZBYi9YeHBOVWo2dVZpVWpwL0pHTjA3?=
 =?utf-8?B?RjdRd1BjTGVoU3VEaHZXRG8zRTRQR01sc2NxUkJlU2hjMVVNV2JhMTN2bXBz?=
 =?utf-8?B?Z0JjTnBqVTIrYTd6L0hPR3p0b3VhWjJVc0FDTEpQMWJZUDdFZ3VvdnZCRUlt?=
 =?utf-8?B?SUtteXZETzZvaGNkR3Y3dlY4Mm14c3pTV2Y1U01jbEl0YVRNdE5BQ1BjZW5u?=
 =?utf-8?B?MEREbkZwUkFQV1VZN3FRRW1haW5PSlVhMit5bXpYVDl0OENwNkxSREo3d0xU?=
 =?utf-8?B?WDdjR2pMZ0NxRDYrN0hoRXhiK2oyeHl1VmVNKzBuWGR6UjRMVTBOT3dPamg0?=
 =?utf-8?B?Sm1oWU9BbVVnQXplWmdIZWYySjhwazB1T1J2NVJ5akUrR0hveEJDaGhnMHlu?=
 =?utf-8?B?M1I5bEl3b2l1cTJ6WEpjS2gwUks5MXQzbFQ3NDFRU2lEcWxsenhwOFhiL1lL?=
 =?utf-8?B?Wm1iWEREUGI4U25Ra0lVRTluSmdqNS96Q2dPaUdOYTA0Tmo5ZXdqM1ZVdHh5?=
 =?utf-8?B?TG1oekR6aTQvNU9MR2tUL3JHM3FyS3MveEdjVVBRbDJFUVZUd2p5SE9WVDdV?=
 =?utf-8?B?dituZXRJeUtzTnVLUFhQWTBFb2tveldPWHNCRmtUc3lNMndBbXVoODhHSmtO?=
 =?utf-8?B?Q0lNVERNMjFMbndJcitCQW1TK3NCTmhMVVU5anc5RVZVc3BZeGlMOWl2eVR1?=
 =?utf-8?B?MURSS0dRZzErRkRacHdMY2d2cVlFb1JhZldvMW1aR1g2aEllQXQyM1dhVnNP?=
 =?utf-8?B?ZHVZbUdNMXF2VUFGK0Q1cGZNWjJlczE0ZGsyQ21iMllyd3lQazdoU0JhaVk2?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d950d1-e450-4fc0-0594-08dc8abf5d8e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 09:09:29.5241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b+4qoLgxWLOZI/QMLjZb7QXOMd7KCXB4Z1YSr0yjVllp15dXSd2WJ9pTzL+ThXg8RFxLTr6qXW8FFdlxCtFH1NNXnxlEiBKj9mYgnx8QtwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7099
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718183376; x=1749719376;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OfDWRfssrUV/26aYI2GeCUtYubUDbdUHfgR5LYhCm5E=;
 b=lPNtUBsraDgrX2MnwLS8w6pzxxayFgpprRgksKQRx3bvs90B06qbi/zv
 6BXPwEO9y+7B9fzRFl7hO7/x7+82HyzNUSHgdp5Do+BJN7SLXJs8cmtbS
 D/+NcTdsI+WAaFqOd0qxMjM6sy6CR5R3DldDYtfSuBzyrrjveqFubFawa
 m8x4eCUb0aUbWckez+nYpUM7QHaEUR6wDlZKwOZkaALqlFhaABPHGfs5j
 3QXAK1xk+SG8cqNo67GPWEVnerMfFVcU0kr8hv3W1RaNZDFxTh4atdJ6E
 lxrw2pPJ1ekV2vscOie4u3yjJlMhAabtxO68XhRq0xQ+PIwgen5oB0X10
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lPNtUBsr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 11 Jun 2024 16:21:27 +0200

> On Tue, Jun 11, 2024 at 01:59:37PM +0200, Alexander Lobakin wrote:
>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> Date: Tue,  4 Jun 2024 15:21:48 +0200
>>
>>> From: Michal Kubiak <michal.kubiak@intel.com>
>>>
>>> Address a scenario in which XSK ZC Tx produces descriptors to XDP Tx
>>> ring when link is either not yet fully initialized or process of
>>> stopping the netdev has already started. To avoid this, add checks
>>> against carrier readiness in ice_xsk_wakeup() and in ice_xmit_zc().
>>> One could argue that bailing out early in ice_xsk_wakeup() would be
>>> sufficient but given the fact that we produce Tx descriptors on behalf
>>> of NAPI that is triggered for Rx traffic, the latter is also needed.
>>>
>>> Bringing link up is an asynchronous event executed within
>>> ice_service_task so even though interface has been brought up there is
>>> still a time frame where link is not yet ok.
>>>
>>> Without this patch, when AF_XDP ZC Tx is used simultaneously with stack
>>> Tx, Tx timeouts occur after going through link flap (admin brings
>>> interface down then up again). HW seem to be unable to transmit
>>> descriptor to the wire after HW tail register bump which in turn causes
>>> bit __QUEUE_STATE_STACK_XOFF to be set forever as
>>> netdev_tx_completed_queue() sees no cleaned bytes on the input.
>>>
>>> Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
>>> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>>> Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
>>> Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
>>> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>>> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++++-
>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>> index 2015f66b0cf9..1bd4b054dd80 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>> @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>>>  
>>>  	ice_clean_xdp_irq_zc(xdp_ring);
>>>  
>>> +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
>>> +	    !netif_running(xdp_ring->vsi->netdev))
>>> +		return true;
>>
>> Why is it checked after clean_xdp_irq_zc()?
> 
> There's nothing wrong with cleaning descriptors that have been sent
> previously. We don't touch anything HW nor netstack related there, just
> bumping ntc and producing CQ descriptors, both ops are pure SW things.

Sure, but do we need to do that if we don't send anything this time?
Lazy cleaning and all that :p

Thanks,
Olek
