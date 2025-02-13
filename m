Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D9BA34F87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 21:39:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67829610E4;
	Thu, 13 Feb 2025 20:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2ntMBZC7MJx; Thu, 13 Feb 2025 20:39:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BA556080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739479154;
	bh=9sIr02i71qCmbbNaUZWqeW7MoJHrZ1NCVubxmIznQ7I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6H5L77QCAx1DyAZhi45/IKw+ndAUdBCEAAISPMaoXVnOdnuQVLAe1oFrBolzCK1mI
	 /ObJ18gzKb4Jx+GDFSQ/RsfteX+IT7aWwHwMRnYAm3/NS1uuXST08Ta9ySGV9yu/HB
	 jjGp78cCutMfKCKYWBFceOqgtHJjmDezDjDtYZWtVoiM2bEKZlxH1/dX9/kbNVEPKE
	 6k/wrE6U0ehS+oroFFEsEa78EwRHEmxxsSWsvuYi8n4O+CMfw8tlSN7PnSmSQAXqre
	 egDt0Ve2++EWxYfPojBqrGokoOJ8pHDNR26qW4+fv+s1yAVZD+6HvrWj/vpkkB9oNn
	 gWW3AO7M8EWwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BA556080E;
	Thu, 13 Feb 2025 20:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 21DEEC2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 20:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DF7A40183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 20:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGM6haoOuRp6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 20:39:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D3F7340260
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F7340260
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3F7340260
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 20:39:10 +0000 (UTC)
X-CSE-ConnectionGUID: eyXfhHNCTpaf4GqFn6zbtA==
X-CSE-MsgGUID: ymnw1rfuTlWqcHDWErmzdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="43041565"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="43041565"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:39:10 -0800
X-CSE-ConnectionGUID: bMzU5LrmQ6qd1ApTk2ibWQ==
X-CSE-MsgGUID: 0pi8jsftTTmz473KeA3nqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117381827"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 12:39:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 12:39:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 12:39:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:39:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lLpDFHhX+4uDWbr44BP6oCdk63d7lIC3q5yHVxtqLbJoX2SSeeKItNryjmOzqhYO4coY+HHooOV3Evc8KWyyGYc2QdwPXMAE3S8HOcKjyKfs8+eLug+2UV74LYHEflLpzCs29F8giQyaIzOWrglqxWsKHvjOYw023r+mzPis6d+E6q4+JOxg21x3tzQadrUy9oGuv6j2w4m2LygI9lEdL4/RqhlnlrQnxF4taTaTDYCzqyzKIkI2uqBk9TQTXY2IkYpX5+CwHKR36skd4K4YevUF5if83QEw0FuP7aXtYrp38fwrmYdmkfu/TrizDUTu7D3GbPp1m8+0vcICN/RSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9sIr02i71qCmbbNaUZWqeW7MoJHrZ1NCVubxmIznQ7I=;
 b=AV46jBNJmpAr5RUDT1kEaUmpWN+lwEgmu6+2Jh6rq7ueGPOI1F2LdiqaccKZaR/0gthF9hOCOV+0xRnBT6Bk1sTkSMniicmrux0CBBw/NdLWJTLM1vFW7Ow0dShBSe8sQxG/tX0NA8ersk5i1UuA/jZ5n99vn5PQAL3yG+TOy1y/Eo/9Fuqet41ekUnSDHHpGfrhaMuqNjSPPBr6txG9PExujoOQw94+ZVxO+jzRBG48Ly4IX3H8v9HHo5uMh9zAooti9z9uxKUYWVNX0dhCQxlcFmZ10+7JDVAZBoo23yxBqipASfECDbS2oXNhWXrUMM9yQ4o6oZ40dWSj9Gd/8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.14; Thu, 13 Feb
 2025 20:39:06 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8445.008; Thu, 13 Feb 2025
 20:39:06 +0000
Message-ID: <00ecb5e5-00b9-4c30-a29a-37c9f268b389@intel.com>
Date: Thu, 13 Feb 2025 12:39:03 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <decot@google.com>, <willemb@google.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <madhu.chittim@intel.com>
References: <20250211023851.21090-1-emil.s.tantilov@intel.com>
 <20250212182111.GH1615191@kernel.org>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20250212182111.GH1615191@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0060.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::35) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|IA0PR11MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: 19418374-501d-4ce8-05a6-08dd4c6e75c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RG5qbGx6YzkyVzdEUkhtekg0UGU5Mmtnb2RFL3M1TjdkUWdlbWttQi82cjEy?=
 =?utf-8?B?aGtteVBIKy81YTNWNXNtYy8xSGtBVlp2ZUV4WFljdHZmcXNuY2hnK3phZWxL?=
 =?utf-8?B?NEdUMWh3cjdZQ0Q3T0FDR1QxQVg4M2o1TUNHZlBkNnJUdUFyUkJXd0cveUpL?=
 =?utf-8?B?V1lxYTREcEpFckxuN25GbGdnRVNOZ2grcjFEM0MwMW9TaGJuTU1lb3ltNWF5?=
 =?utf-8?B?SzZMQUxhazFPalk1Ujd4dm00VDR0bGFBS0RtV2xaRG9qZyt2clIyYlZTQUZ0?=
 =?utf-8?B?aENLQzdJcnhWaS8weDU4YjZlMVppbmJlMUxFSDl5UHVLSWRiYlZQZ0d2d1V1?=
 =?utf-8?B?MHZsaUl5QTVTakRucUhEbXdSM2R0eEVxemhLVGNTMTY1bVRXMDc2djhRNC9Y?=
 =?utf-8?B?aW1DSVRhMEplVnNEVTNjclV0aWtZak9vT3BINDNrSW94N2lXOW1OOHlNTWh3?=
 =?utf-8?B?eEM3V2IrNEpWQmdHVytBQVQ2c1Rmanp2QmhrbmQ4VVlBK1plbkI4Wmc1TkNT?=
 =?utf-8?B?L3ErSnlIZ3NHRDhkdDNNamNVRnpvZVpleDA0WmFOeXNBSVdXcCtTUVM3WGt1?=
 =?utf-8?B?K3V1Q3phd1l3NjExMTQxUnU0Q1RXUGhGK3pXY0VqTE5UZzlqamhsRGNjT3Zi?=
 =?utf-8?B?Q1ViM25rbjhDSXVUUGFJaWd3Q0JRNW1DYUJKaXRYMS82UVNyM3ZuS2s4cU5l?=
 =?utf-8?B?UWU0Wm41T3IwZURBRThWSEh1MG4wOW5ZdytTdnQyVEVxVkptZmVrV3Z2VDJj?=
 =?utf-8?B?OXZCUXk2WE9JOUxhTU0rdmRFNjl1STNmVzFQbWZ5UldROEJ6R2I3TEpEYXVT?=
 =?utf-8?B?aDJ5bEx3TkZ0emZwQ1RQMVY4TzNGb3YrS0FPcHZrSWhweHVNTUd5dE45b0hE?=
 =?utf-8?B?ZG9GalQ4cDFEeEFsQzJualY4QW1JbEFLa2gxSTNZMWpVTDdqamN3cjMxVnNr?=
 =?utf-8?B?S1pqMmQ0S3cxbUw3TkZBSVpVU2JJcDF2aTlHQStFNkxlMkw2bzYwb3dqVHRT?=
 =?utf-8?B?bGtzaWFacDJHRGRycEdyM3dLM0FTV0RSK3JmK1Z0Z2JwTDFlRlhqTG52cUR1?=
 =?utf-8?B?clZxUTN4L0FEbGNBMUFmT1B5ZE8yQXhWNlFVUmNMQzFVZmdlclU2MVo1N2lN?=
 =?utf-8?B?VmFYYjFZOE9CTlB1Sm5IUUJtWlFrMFJBTER6ZmNhckxCUjdlMHVyRzlpdUMv?=
 =?utf-8?B?RWtYbEFTeGU4M1NTSGhLZGZjNHZBZUZXWVg5ZWJJTFlnbHErWFhDZkEvbXR3?=
 =?utf-8?B?UE1KSkNSL3Q3TzV2amJKUmlETnVvWjlGOVZnWmRFbkFnYnAwTkJkQ01PV2Yx?=
 =?utf-8?B?S3M2dXRpUWZXUDd3TlR4a281dXdpbEMxcW5pdlJJN0pDVEppNkJhY3RZQXpR?=
 =?utf-8?B?bW9LN0xwK0RSSjc2dEpOeDJpZUdlc0ppcjNoYkk1eFJDQ3N3bTdHV3l3Sndl?=
 =?utf-8?B?Y0x1aktnMURvdVovUHl2V0ZwUnlReTdSSzZlb1ZHa2tlb0h5Si8zTGIzL0Mw?=
 =?utf-8?B?S2Y5eGVqUnpleTZxT0VNams2L3J0MEFkL0tuY1JnNThMdFJ6dDdFSStlVFpl?=
 =?utf-8?B?aVFtWWNVSkhYb3FvTnpRTEdOZklOYnlva3dHUFo3WmpJOWNpWUNpMXpCMVh0?=
 =?utf-8?B?ZlVxTSs5d3FhM1MrMXpkTTBBajJGR2RxSHc1bkZkZnVKV1Y4aWJZT0g2cDZw?=
 =?utf-8?B?MnhKc3h5ZERpeERGV1g3ajQ4MWVEdTBQblFSbWU3cGtQeHBZeGVLZmRCam1n?=
 =?utf-8?B?YVRVOUE0NUpvSTRVUWUrYjNIdzJvbFlVMThRWm9HVzdUeWc5TTBPYk9na0Rr?=
 =?utf-8?B?N3Zyc0F1WmlvWHpZbG5rOHZ6Qlh4MDkySnpHK0NsOFk5TDJ3UzRQQVUwbVdW?=
 =?utf-8?Q?0JGhMn0qJZmVB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm13TWJsT1RsNDFjK1YxQlRmM2w1WjVrNzJETWtBSURHbHFDVXhySHJOaUI3?=
 =?utf-8?B?bFNHZFowd3ZkVGwyMXNVaTBOaUlMQ1VTajFESGJCTitTWlNPckY0c0lUNVZl?=
 =?utf-8?B?MlVpdUUwdGJ0MytXaWNkTE9pQnlWdHRYd3dIdHBuMk1mejI1WTd5b3UrTWRt?=
 =?utf-8?B?K0pzS3NqL1RuNERCOHBuTldsQTdkRWlPdUxUVFRIRWtPYktZalN4ZzNaZGhW?=
 =?utf-8?B?bHdwckdsekYzWENTTy92R1RNRzFqbG4wcmFVdDAzQUpyUlVmRnVlUFAwSk1C?=
 =?utf-8?B?Mjl3TkIwVHk5c1BnSWNkMGYxcDlmNGNJN0EzUXJ0NkFvakxONEMrRUxzOGRV?=
 =?utf-8?B?T0dYNEVoN3VvS3JOVTg0V0pCdytwd3VjaEdZbmpwYlJ5cTNjU1grOU95b1Nw?=
 =?utf-8?B?NytvL3hJc3gySTNscFZlb0h6WW5wUU5OSGpxTjVTc2x6ajV0ckIwZC9oa000?=
 =?utf-8?B?L05YaEQ5TVZoZzBhRmFxMm9idUlJZmpIMXpTUm5tcEVqUm9qbFV3WFdEMEI2?=
 =?utf-8?B?M3IzUlhoSWF4OXR1MHVKVmVQekZSanVtRUpiYjNiMGU4MU42QlZ0V3dlUHQ3?=
 =?utf-8?B?bk9XN1lCM01rd0tSMmcza3dBODdCdnpaaXgrSFl5eld4REJBanZKM3NPZTFy?=
 =?utf-8?B?RnJ2Um5sTkYrTFpmeVNZc015OXkzT05vaXVCaWc4Ry83M0c1VGNQaHUwdnpi?=
 =?utf-8?B?ME9OV1UyVXlXTmdCNkdtblRHOStoWGx2T0lFM0tpbytVTExlU2tJYTVFckNr?=
 =?utf-8?B?QXNPaTByODVjR2VUMlVDYzRteklLK3ErbWxIUThUK0kyazRGeUQxNFhlNG1B?=
 =?utf-8?B?SzVSYXVXUjRJZ2gyOGFrbkUwdFBOdHVZL042Nm1VR3pGN2VoSktKS0tVOVd2?=
 =?utf-8?B?RFFwZFBJUzRZVnJOSmo4VXB5QjJBYk56emppcG54YWRBM3MrQkw5L2lZYzBm?=
 =?utf-8?B?NzU0NUJHY0M3bVJ4RWxvTTNtRnZQTi9WYkJIYzhQc3pXYkNQb3VIL0xVRDNl?=
 =?utf-8?B?S1pEU1AwZkZnWER1UEllb3JPczN5RUlwd25TSjhSYWJIclpIUVpaL2hIOUMw?=
 =?utf-8?B?aG1nUzcrZXhLYnQ0OUpNOXc3SHBvUzdPY3d5K1JlU1FXQVZQT0I1UmRnTm1O?=
 =?utf-8?B?bDRvdHFmdXJlWmNCYTNSL3FCQmk1NnJXNnNIcTJKaWl2dFgwN2RodUJDajZa?=
 =?utf-8?B?ZEpDZGN1MC94MkdTMWJHV0xSejNSTTRJSlo0Yk9RMUpBWHMreUJhZWxjeWFj?=
 =?utf-8?B?TmlCaER6NHFHaTB5S3lhdmt6dTFleFhIa204bXpsdFFldXRXNzYrWUsvbVRY?=
 =?utf-8?B?S1U1bkczYkFBeEl3Skt1U25KUFdIYld3VFV3UGg4Y1ZqakttdGk2a1lHM2xw?=
 =?utf-8?B?OTkzenFRcHFEaFFWZUNkdndiN1BuOC9aaFhFL1dqUVJyNVlJanI4K0JvMlMx?=
 =?utf-8?B?T2NRdE1qQjlwTGRrNm1GRW83dzhDeVJHMzN4bXFnMno1cnRGS1Y0cHAwdXpK?=
 =?utf-8?B?U1RqV0d4ME1GbTdwenBmZ2RqUEpkOW4yOGs2aVRubGwvdmJVcVFuc3pQdzNv?=
 =?utf-8?B?M3pvbitNM3EzVDVlQjhGbW5BUEVWL3J2RElsa3RDRnZtQTdhZzFid0FPVTRH?=
 =?utf-8?B?K215ZG5JdkFVK1owaG8xYVh2M0NaOVBmT25oOGVCYlNWZjBxK0RIOGZEYkd2?=
 =?utf-8?B?RWd3dnB6ckRBY1V3NXJwOUZtbk9Fdnd2QlBwSHpHL0M2SGdUK0NNbUl1UzV5?=
 =?utf-8?B?eTNwbXIrRUt3aUhaSlVOREpuWXpWaHQwbm1ubk95VDhVNm5DOXVyRlhITDhr?=
 =?utf-8?B?L2Fqb0x2cG9veDFpOGtsKzBIeEZtYUQyOVZzU2VRQTJXY3hvQzZFYjRjM29E?=
 =?utf-8?B?Wit4YXN2Y09PQWlTYlAxWVZNZlFmbjRERkI0ZmdZSEJtRU50dWxrejJlQloy?=
 =?utf-8?B?dFhaMHRYSmVWMzZqM2d3N05KeEZVaG5TdWh2STVZMXA3OXhSYWkrdWFoTVZ1?=
 =?utf-8?B?UzFtd1NGMHFrVXVjTWdwQllwL1UydGdXczZlOE9XL05WUFBmTnVnazFZZ21p?=
 =?utf-8?B?NzJOTEEvOURSNC9ZSDhpc3liU1dIbTlYQWZ5blQvYzBsTFVWZ0dSSVJLc3Fv?=
 =?utf-8?B?SDFSNjlzV3VWZFBzZGRycW12MWxhWXhTMXk4Wlg4MmpLUVgrMHRKU2doM1pB?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19418374-501d-4ce8-05a6-08dd4c6e75c9
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 20:39:06.3967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C/jiCg+5lD2sGeOtzXeuFbD0ZaaxQqrdfkk6McRJ6NATVcqT7oaYHhvFRqC29LmtV6cjfYjkaFH140YLLAueeVXvVaLJL/V2CGkIGTkct1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739479151; x=1771015151;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m2KAJw06GaHYWZ1dWeeiBxFbIi3GqZJfVJedy0kAcxs=;
 b=WUeRp9lsul9eWsgmKSI25+t464T+Y2EaLtK85B3jbS3ngdapjEbHowy5
 Z2GfJqO0xYEwNmJ8WNRyrwROuaBiK0iNNtqHB8U17Bzzh7303/T4+MaP0
 8lKymcSG5axhcF7/5Y4RO+QHzRa1IAeGpG/AeHloEPYpFXPoe0sg83SdW
 fWaZzQnaUIKatf9jRm3VwGIGVndBTbSkNBxJp6J7JrJD9WXvbO7RV4m5k
 eRqjwGKwSW31ddrZqLJ6uDGKQpUHfsEQ3JdzrOr2LdMl1vY+xR6jUyjy5
 dDXGPdfOKrEZJVwLm4ApRwb7+B0E7oEc1DUDj3UsBSCQkP3xEet4w/vFb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WUeRp9ls
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: check error for
 register_netdev() on init
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

On 2/12/2025 10:21 AM, Simon Horman wrote:
> On Mon, Feb 10, 2025 at 06:38:51PM -0800, Emil Tantilov wrote:
>> Current init logic ignores the error code from register_netdev(),
>> which will cause WARN_ON() on attempt to unregister it, if there was one,
>> and there is no info for the user that the creation of the netdev failed.
>>
>> WARNING: CPU: 89 PID: 6902 at net/core/dev.c:11512 unregister_netdevice_many_notify+0x211/0x1a10
>> ...
>> [ 3707.563641]  unregister_netdev+0x1c/0x30
>> [ 3707.563656]  idpf_vport_dealloc+0x5cf/0xce0 [idpf]
>> [ 3707.563684]  idpf_deinit_task+0xef/0x160 [idpf]
>> [ 3707.563712]  idpf_vc_core_deinit+0x84/0x320 [idpf]
>> [ 3707.563739]  idpf_remove+0xbf/0x780 [idpf]
>> [ 3707.563769]  pci_device_remove+0xab/0x1e0
>> [ 3707.563786]  device_release_driver_internal+0x371/0x530
>> [ 3707.563803]  driver_detach+0xbf/0x180
>> [ 3707.563816]  bus_remove_driver+0x11b/0x2a0
>> [ 3707.563829]  pci_unregister_driver+0x2a/0x250
>>
>> Introduce an error check and log the vport number and error code.
>> On removal make sure to check VPORT_REG_NETDEV flag prior to calling
>> unregister and free on the netdev.
>>
>> Add local variables for idx, vport_config and netdev for readability.
>>
>> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 27 ++++++++++++++--------
>>   1 file changed, 18 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> 
> ...
> 
>> @@ -1536,12 +1540,17 @@ void idpf_init_task(struct work_struct *work)
>>   	}
>>   
>>   	for (index = 0; index < adapter->max_vports; index++) {
>> -		if (adapter->netdevs[index] &&
>> -		    !test_bit(IDPF_VPORT_REG_NETDEV,
>> -			      adapter->vport_config[index]->flags)) {
>> -			register_netdev(adapter->netdevs[index]);
>> -			set_bit(IDPF_VPORT_REG_NETDEV,
>> -				adapter->vport_config[index]->flags);
>> +		struct idpf_vport_config *vport_config = adapter->vport_config[index];
>> +		struct net_device *netdev = adapter->netdevs[index];
>> +
>> +		if (netdev && !test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags)) {
>> +			err = register_netdev(netdev);
>> +			if (err) {
>> +				dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
>> +					index, ERR_PTR(err));
>> +				continue;
>> +			}
>> +			set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
>>   		}
>>   	}
> 
> Hi Emil,
> 
> I'm wondering if we could reduce indentation and lines longer
> than 80 characters in the above like this (completely untested!):
I was mostly trying to focus on the fix itself, since this patch is -net 
bound. The >80 line came about from the introduction of the local netdev 
and it seemed cleaner to keep it in one line. I can just split the check 
as in the original code.

> 
> 
> 	for (index = 0; index < adapter->max_vports; index++) {
> 		struct idpf_vport_config *vport_config = adapter->vport_config[index];
> 		struct net_device *netdev = adapter->netdevs[index];
> 
> 		if (!netdev ||
> 		    test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags))
> 		    continue;
Again, because its mainly to add the error checking I am not sure if its 
OK to re-shuffle the logic.

> 
> 		err = register_netdev(netdev);
> 		if (err) {
> 			dev_err(&pdev->dev, "failed to register netdev for vport %d: %pe\n",
> 				index, ERR_PTR(err));
> 			continue;
> 		}
> 		set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
> 	}

Don't mind re-spinning (and testing) v2 with the proposed change, if 
it's not infringing on the guidelines for submission to -net.

Thanks,
Emil
