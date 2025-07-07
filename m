Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A8FAFBEA2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 01:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F4E3418CB;
	Mon,  7 Jul 2025 23:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-qw9BeJYOsA; Mon,  7 Jul 2025 23:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4508B418DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751931212;
	bh=EiAsQNkQ4tyNmIbhATv+PJ+O5RJlOxNOKAuCOtGv/Ko=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JEWSoBpzynJ9bgYSNxZJdu3gwdLZSds/SEKLjngLxPbVexIx8y/ZAVbOgImniLKq3
	 pML8GKeG36do8aqAcVAA6JHgQFWnTVnEf4WrycZXqxXy4SZu+TOpWVgJ6O6nE/kf0j
	 uzggv2IJdEaGa7Eg2uE4X/QfWRm/dShhkm5gFwjq/ESqAmayDPDwQiylEIMvQSirFn
	 WwYjfhWxPUi4QXQtW04+ni3moaakDeoh0E+IKKgJMhHlEbTYjbIoQIcXNa/L7e/dv/
	 qvBAf4gKg8DtPrDTMs81UEUQRo1/hKxzTS3qIxUm+n9kSIAaG+Y1ye+HfCHq4+c9wK
	 9bQS56gj9Njbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4508B418DA;
	Mon,  7 Jul 2025 23:33:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F1B9B12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E347960B45
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:33:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3vQ2kKaN7RdV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 23:33:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6052460888
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6052460888
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6052460888
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 23:33:29 +0000 (UTC)
X-CSE-ConnectionGUID: N6kacKUHQRab/sqfUe+W2Q==
X-CSE-MsgGUID: eIZt9f8pRFak0E4nmTTRWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57930082"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="57930082"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:33:28 -0700
X-CSE-ConnectionGUID: ZVzDYoD+QiifYYbuuaioLg==
X-CSE-MsgGUID: 85M6E9huQ+eFj7+j3Xgbkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="154746387"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 16:33:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:33:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 16:33:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 16:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K5Up8HRfdYKSZ4/hvZcSqi6qqIkb4Lnhqqn4l4zXuqZNJs9Vk99u+gYthKrHI1SKEUiLEMcJf1IeVh10Umr1TLtmKruE/dUvaJn7ZPecikE6PU1vkJ1m2DJpurslWjhAc7qEZrmIN3yTKzozGLQlo9IzqHN7qX7d15vavxzIO9DFYgEoc/qqmQnlO4GOlvjLe6r1BEcNdSZFYpd18OppGuUv3ScYD2Yv7LZXVBFbtXQs7E022oCWpOBvxiME1k0vMWzB3zQb8a8JnWbX8PKrdw6gOFk2QVoMEBYTOHMa2x+m8xsjeGXAUPB9a7vc+UcIMwV2WYdLI6j2qcIPGeC36w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiAsQNkQ4tyNmIbhATv+PJ+O5RJlOxNOKAuCOtGv/Ko=;
 b=Lc1SlgniHPEqdHd9hu3FwSAgrHAr5zZXQMXAKwCRymRICYHfAeil5eElHMJrB9B29216DTsJUgGqFWuSaaJz/3DZSW6MxjXy138nyg7UMsth5mq/AVh9OQUkoS8hFJA4LXUFtetk3Gpdv0Qh2YTYHoJf7/96CqDj5tsXl/dvb4vKrGCxIT31XOLdh7oRujELKsNRlD3wwsM1ZjQsUJxFUE1Mq/yvz5ZU5Jx4uctocxslq1+BvxbLjYnYHmZwWPvXbnw15YD5gphNEVWYpzUZK1N+ERF5nVXQcW+P1SwK149ocE65qQHiQWVZtMkbpFbrf4UFuO9/z5TxXj3Ji0ewlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB6423.namprd11.prod.outlook.com (2603:10b6:8:c5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Mon, 7 Jul
 2025 23:32:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 23:32:56 +0000
Message-ID: <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
Date: Mon, 7 Jul 2025 16:32:54 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250704161859.871152-1-michal.kubiak@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5BWFwlVvcRIEw3LlVsjzsSPw"
X-ClientProxiedBy: MW4PR04CA0084.namprd04.prod.outlook.com
 (2603:10b6:303:6b::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fddbb04-fa67-4987-6862-08ddbdae99e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OXlxTEx1UVFZRERXRjFqdHloZGpORnVGT3AzUFpXZGdBUHNLb3NQTEFac1V4?=
 =?utf-8?B?Ym5leFRyYUJVZEFTNjRCeVNZaEtkTC9DbSsrT2ExZUVaV2t4Ykx3MnJYMGNE?=
 =?utf-8?B?bGVGQ0NGUGhYOXhvMkRCNjZCYStMMjFUTDdPV2RINklYbTh6cmlBU1A2WXVE?=
 =?utf-8?B?YWREQlZlSTAzckppb0JkYkFUQS9mcVo4bmxjMUVjSVlLc0toMjl4TzZuTEZ4?=
 =?utf-8?B?dmlTbG9EVy9kbkpZckJsR3RDTG1QbFROTkdHc1lIWXZQQXBxc0FVQ2NKd2VF?=
 =?utf-8?B?bXVjVEVYTWVNemM5b3VVSzI1Nnc2dTNhb0toT290ZkdTcTRxOW56T1Z6Umhs?=
 =?utf-8?B?RUgrUEZGRnh1YjBmeUpsRkRUNGNhK05JbXE5N082aFQzZS9uU1NmTXhTTERo?=
 =?utf-8?B?Qm1hM2phT2VYOEN1RFJJczdPOVcyeWFkZks4elpSd3IzK0k1ajc4RndDSEFB?=
 =?utf-8?B?bVgzTHBGMnpyMVRPYVFDaGR2SnhoQ1h3bS9HWXFuTTRhRVRHU3g4OE5JOVRT?=
 =?utf-8?B?ZnhJRmxScVdCMTZ3dmplV3hFdUZjSTVsT0o5eis0N0ZCbGhzNFdDRTBELzhU?=
 =?utf-8?B?TVhKMUlDOUQzU3NKVlpKTmY5aENJSWlMTk9SaUYwZ2NtMEEwYlEvMlFkVGJG?=
 =?utf-8?B?ZnZnbkg5UzV1T2RaWDA5SzUzOEQ5cWs0V1BuaHBxVkZ1NWNQTXJRSWIwcnN3?=
 =?utf-8?B?VzR0Vy80OHNYYVdqNzBOZUY0KzE0K1NXMHI4TWlhOWt0WkJ1NysxNmdKR1NH?=
 =?utf-8?B?d0Q2aGNUT2piWW4zVDNzS3RvcUVVNzN2d2IvTHRUQ2V5QmhPb3hrYStRL1Vp?=
 =?utf-8?B?SjBubkNrRUNwVHh4a25peXNnY0daYi9Vb3hta1BKQmFHaFNkOVI3ZXpHMDVC?=
 =?utf-8?B?ZDdpTSs3TG5Td2pIWWdnWWFyaEs1Tm9rTkw3cXY0WW11cm44YmhkaWJIZE9M?=
 =?utf-8?B?VXl4RkNKN2YrRlNTc0s2ektqeG9SWGlZeUY3ZlN0TFhYazFuaytzT1o5M01K?=
 =?utf-8?B?SUNrNGRTM2NsYWs5OTB2VlJUdTd4QUdDdEJPTWx6TXY0dGlIT2FOWFJrV0VM?=
 =?utf-8?B?Uk5nSW5QNFpxNHFvMUZEb2drckNnWEo4TmJ6bXMyY1prNUx5bG5KYW5KcVBl?=
 =?utf-8?B?NFhBYUtTY2FRdFprazB6QVZrMUFCN09Wajd2UkQ5b05zbzJjNEZ6OWFGL3dI?=
 =?utf-8?B?V1NjSERJRVlDNHhLcjdRWlJxZ25EVUI2Y2dzRWUzSnJkTHBmUkQvcmd3azhY?=
 =?utf-8?B?djJESjJodmJhSzRHdGhLY3ZDL1czNVd0YS9tdWd4Syt1U2djNnFRbHpqdnVX?=
 =?utf-8?B?WGs5OXh6N3Y3WHcrQXBCcE5XeG5WU0Q1VzNDQXM5WC90S0pKY0ppN3RrRmh3?=
 =?utf-8?B?R0VyZXhSU284T2Voakh1SDhQUEkrVEZTZll2VGs2SEFMUUZ3d284RWo1a2VZ?=
 =?utf-8?B?R0xmQnhUMjZTWUZwVlJNZHh1cWppSXBhMGxzVkNLWVErOURsOGdnRWx3RmVn?=
 =?utf-8?B?TnBGdEpnYUxxcy9HTXV1TTBTb2kzd0RsVy9zcjQveS9GRUdoNko4dWlZTzhW?=
 =?utf-8?B?amxBZVk2U2pMVk9YckJhMTRveUlSRkZDUWJHSVM3clNQQk5Gd0IyVHFsdDZl?=
 =?utf-8?B?VEZEMERMSUxDVnU1VUdidE03bHVISDNBM0hzZks4dXJCWGhuOUZHWHNKS2Vm?=
 =?utf-8?B?bExKQlVEZENLVHZtajNsRVhSQXNJYnZuQ1ZUNHlZQ3o3dWpCOXEvNHJOblVG?=
 =?utf-8?B?Y2dGSTc3bGkxNDRYOHRTVkpRVE81di9qQjZ1NWp5V0hKSXY2ZWxqS0dhRUdj?=
 =?utf-8?B?WldMWmdkUzlPNWVGMGpyWXdGU3g3S3RWbWtqdkJ1Qm9RNTUwa2FuR3hsRFlO?=
 =?utf-8?B?SnZoNnRjQkthY3ppdjN6Y0REZmdrVG0zMmkvNEYrNlRKL3VTeWF5K3VWVU1j?=
 =?utf-8?Q?q2xYBzNCTzQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzVLS1VKaTNCblVvcFJDaUZuQk54aXBiTS9Wd3kzNktjR0Y4QW1SNEZtbkQy?=
 =?utf-8?B?b3gxWVBudzI1NGNKZlc5VXBycGtRNmlsSGQvWmJyMXZoMTJWeFFGQWJNakNB?=
 =?utf-8?B?SDdMM01tbEYyV0dlSzFOWml3bTZxL1BWeEdLOVVQclpGV1ZTQmhOUHNLeDMr?=
 =?utf-8?B?S1dGSnk5UC81RHhLNUUySEhrNTNkT2ZyMGtkSTFkL2JwdFNKb1BWTWc4U3BM?=
 =?utf-8?B?bXRHRmphTmR4V1pvVTFPTlVkVUEyMEsxY1JibkFFa1lBZVZtMmdyc0pPWjNq?=
 =?utf-8?B?bkZmQk9qazFCU3dqM3dSUFRKRitic0xLU3cwRkZUd3NpU1NvY05MV1VCZXlL?=
 =?utf-8?B?UW1UeEpnR1ZYNm1Ubyt1cWl3VXlRdzRiVW5iWHIzaXRYaDR1RS9zU2xlbkhl?=
 =?utf-8?B?ZXd0TWdSZGRuVlNkVTF4UnJoVGhpM2M5c3ROVER3a3Z5Y3B3MlBNRCt3dGhM?=
 =?utf-8?B?TEtxcGprNEdmaWJtYjB0WEtwOTVYRU9Ub01CVm9wWElmRmJaTHp3eGt2YXpL?=
 =?utf-8?B?SHVtZlQ3VmxkY2c4NFExa3E4c2xTdHpaY1RhMmlTRUR5SU50MmxEcDhHU2VC?=
 =?utf-8?B?NFdSOVd0bDVqc0lWbzNnZHk4NERDOXl1akViQWg0dzBnZ29ycmxLSVNTYnBE?=
 =?utf-8?B?dDk1Q0xlQkIvMnJ6ei9ic1VXMGcvbk0wdkVJeTM4TmpEQ0d4MW9XbC9xQUxL?=
 =?utf-8?B?TEhyK2YrRFdZVjVXNHpIdVJmRXFoZlVxNmxmTHZ4K0djWnFIOEd2S3djOEVC?=
 =?utf-8?B?cldhNmtSSjA4eDJ1RlkzbnVHV0I0WnpVOFlhYWNoTlU5bWpvdUVOaVFheHRL?=
 =?utf-8?B?b3o1YldoYWpITHBTNUIvWEFRcUcyVDg5QXJLbnpIK2pSdDVUajR3U08vWCtO?=
 =?utf-8?B?djZScXhTYm1udVBkcWM0ZmpJcW9MdkVTTEhHdkc4cG5WSkpEb0kzbk50VVMy?=
 =?utf-8?B?cEJ0T2FzSW1NRFVFc2ppdUdMcmljRDBxQzNPNCtpaDFWMHFPMWgrMFEyTjZo?=
 =?utf-8?B?UitPZDdiVnNFV3p6Q2lVNmw2T2xxNDNYOEtWSXdtcUtnZ3ViNzRCS1kvWWN1?=
 =?utf-8?B?dUdqSDhFWnVlc05jbDgydmplaFlXL0lPSVhMTDBiRnpMMjc5QzJyaUtPREVZ?=
 =?utf-8?B?OVo0SDBQQ2YzazBnd0xTRzM0K3hOSEM0ckpnU1hsNEFjVjlORyt2OXdNc3pW?=
 =?utf-8?B?LzYzdEZ2WUhXRDZXSURPT0xoYXBaZkpCQldKa3RWbng5TXFEUCtWY3pZWTQy?=
 =?utf-8?B?cDkrVUwwNXl3cHlJRktldTZrSjNXTHdqN0RkZTJEWmVmR29ZTXpwSHRXMlJ3?=
 =?utf-8?B?dysyZ081cW9JMDlaK1pRNlNFelVGRnNJbDFZY1hJaGJrRG8xbG9qVkdHTXVH?=
 =?utf-8?B?bXk3SFJsT3o1TEx5aTAvRFBRUmtoNmRrL0ozWWd3RTJqTWNaaFVFbll5a2J4?=
 =?utf-8?B?aHM3TGtVZVUwS080SHovZW13TXExVSt1eVpWSGgyWXhSdDEvdUJWWFhDVlVH?=
 =?utf-8?B?WERyayt1S1VYQ3E0ako1TTh5dExYbU5WV3orcXZEaC9GV1lHWUVybTNidFJN?=
 =?utf-8?B?M0JnOWtSaE9OUE5ya2MzMHdjb29jZDZaUWNYNURyUlpqQStEOTRRbitMQVhH?=
 =?utf-8?B?Y2cxamthVWp1YmVKaVRkWEhiYWRFOHdndW8rVjdKWThObnF4K3FGN0crUjRF?=
 =?utf-8?B?VzVIdnM3T2xtcGc4ZFV2NXZTbGhObUc1ajY1Nnk2d2l4OXNLdGh0S2JvWE1O?=
 =?utf-8?B?Z056Zk56MU1xOEhaUXErbVc2ZDl2YjN2b0V4NGEvUWwxbjZSazVOY2hnTFNk?=
 =?utf-8?B?cnF4bDB5K3RmNnNPWVBCNGE2U3ltRjJjNHd4N2JkcnlGM1dFd1R6dmhkMWJB?=
 =?utf-8?B?VUtvVjZaZnJqUVhUSkExSUp3cmNQR0Vrd0V1SnAzSjB3MUV1bXNkTU9CRTFM?=
 =?utf-8?B?SWZQNFBYNldkbTRnOFZzUlI1WVZ0MmtVTnRoOXFVUVlQSm1YaWVyUEFxZnNI?=
 =?utf-8?B?TmZMS0hXM0F2ZVlNU3BZWEE1dGIwT0I2Sk05TExFNC9sdDgvM0JFWURpMUo3?=
 =?utf-8?B?WTBnUVdXR1Bsc2RsYlc5RDM1Y3ZFaE9WZjE1UVBWR0d1V2M3M2pQckJjWFgr?=
 =?utf-8?B?UThML1BPb3hINlNmdS9TRXAvWW55aW5uTlFLVWltejd0L2haZlA4bXllZWFH?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fddbb04-fa67-4987-6862-08ddbdae99e8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 23:32:56.2025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gnobyPHnBPjNSHDg5mQ6Vg3Q0YPBQ58TzMX/1IWhxPK7yGpPAk9DJt8eKiqOJAKn3SYVGPX+VfKMXSqdfWxAAtLSOw3vIMnlYE9Jib0r7yg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751931209; x=1783467209;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=RKphz888iCG7+c/l9q0ZAQLzJU4SbpifxCNR0VagzZY=;
 b=HmbU4dp3+VyhMi7ZPGXnFSmxSvhxlXNbA5J1W+1rZdl5bnr6zJ8FmkGN
 SG7ts5NKacNF7sUsXf/OqoAUlWJWNa4eNeh45G6pkqqu7bFl/VfzkkBQm
 OdKjYc5DL1LD6gAGb2zl3CwHhxNDEHCE2TcYv79l5BhWFh7yJYV5b5sAf
 qIRdsfyhxS/60sNa4CIMqFeqYvj0OfLOciGKfwhgkhZSQIK6vM7GswkfM
 c+yyh9UufJQa8Ep1XMvDoF0qfbfVzv/RMpfomtyuaMkBb6mH2e1NUJFLz
 0vR2EGWU8vhJ7YAq+eSiOgC2dlShiieHGX7Zg9CwiMAJsHw0KtPqt7vGo
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HmbU4dp3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
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

--------------5BWFwlVvcRIEw3LlVsjzsSPw
Content-Type: multipart/mixed; boundary="------------UEyBS0UuHNUXyN6jo6L08ppS";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com
Message-ID: <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
References: <20250704161859.871152-1-michal.kubiak@intel.com>
In-Reply-To: <20250704161859.871152-1-michal.kubiak@intel.com>

--------------UEyBS0UuHNUXyN6jo6L08ppS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> This series modernizes the Rx path in the ice driver by removing legacy=

> code and switching to the Page Pool API. The changes follow the same
> direction as previously done for the iavf driver, and aim to simplify
> buffer management, improve maintainability, and prepare for future
> infrastructure reuse.
>=20
> An important motivation for this work was addressing reports of poor
> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
> incurred significant overhead due to per-frame DMA mapping, which
> limited throughput in virtualized environments. This series eliminates
> those bottlenecks by adopting Page Pool and bi-directional DMA mapping.=

>=20
> The first patch removes the legacy Rx path, which relied on manual skb
> allocation and header copying. This path has become obsolete due to the=

> availability of build_skb() and the increasing complexity of supporting=

> features like XDP and multi-buffer.
>=20
> The second patch drops the page splitting and recycling logic. While
> once used to optimize memory usage, this logic introduced significant
> complexity and hotpath overhead. Removing it simplifies the Rx flow and=

> sets the stage for Page Pool adoption.
>=20
> The final patch switches the driver to use the Page Pool and libeth
> APIs. It also updates the XDP implementation to use libeth_xdp helpers
> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results in=

> a significant performance improvement in virtualized environments with
> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,
> performance remains on par with the previous implementation.
>=20
> This conversion also aligns with the broader effort to modularize and
> unify XDP support across Intel Ethernet drivers.
>=20
> Tested on various workloads including netperf and XDP modes (PASS, DROP=
,
> TX) with and without IOMMU. No regressions observed.
>=20
> Last but not least, it is suspected that this series may also help
> mitigate the memory consumption issues recently reported in the driver.=

> For further details, see:
>=20
> https://lore.kernel.org/intel-wired-lan/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfp=
r7dnZxzGMYoE44caRbgw@mail.gmail.com/
>=20

I tried to apply these and test them, but I ran into several issues :(

The iperf3 session starts with some traffic and then very quickly dies
to zero:

> [  5]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> [  8]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> [ 10]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> [ 12]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> [ 14]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> [SUM]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [  5]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> [  8]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> [ 10]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> [ 12]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> [ 14]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> [SUM]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [  5]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> [  8]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> [ 10]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> [ 12]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> [ 14]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> [SUM]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [  5]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> [  8]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> [ 10]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> [ 12]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> [ 14]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> [SUM]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [  5]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> [  8]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> [ 10]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> [ 12]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> [ 14]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> [SUM]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [  5]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
> [  8]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
> [ 10]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
> [ 12]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
> [ 14]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
> [SUM]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec

I eventually got a crash:


> jekeller-stp-glorfindel login: [  326.338776] ------------[ cut here ]-=
-----------
> [  326.343440] WARNING: CPU: 109 PID: 0 at include/net/page_pool/helper=
s.h:297 libeth_rx_recycle_slow+0x2f/0x4f [libeth]
> [  326.354082] Modules linked in: ice gnss libeth_xdp libeth cfg80211 r=
fkill nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_r=
eject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat ebtable_nat ebt=
able_broute ip6table_nat ip6table_mangle ip6table_raw ip6table_security i=
ptable_nat nf_nat nf_conntr
> ack nf_defrag_ipv6 nf_defrag_ipv4 iptable_mangle iptable_raw iptable_se=
curity nf_tables ebtable_filter ebtables ip6table_filter ip6_tables iptab=
le_filter ip_tables qrtr intel_rapl_msr intel_rapl_common intel_uncore_fr=
equency intel_uncore_frequency_common sunrpc skx_edac skx_edac_common nfi=
t libnvdimm x86_pkg_temp_th
> ermal intel_powerclamp coretemp kvm_intel spi_nor mtd kvm irqbypass iTC=
O_wdt rapl intel_pmc_bxt ipmi_ssif mei_me iTCO_vendor_support intel_cstat=
e vfat fat i40e spi_intel_pci intel_uncore i2c_i801 pcspkr libie ioatdma =
mei libie_adminq lpc_ich i2c_smbus spi_intel intel_pch_thermal dca ipmi_s=
i acpi_power_meter acpi_ipm
> i ipmi_devintf ipmi_msghandler acpi_pad fuse loop dm_multipath nfnetlin=
k zram
> [  326.354222]  lz4hc_compress lz4_compress xfs qat_c62x intel_qat poly=
val_clmulni ghash_clmulni_intel sha512_ssse3 sha1_ssse3 ast crc8 i2c_algo=
_bit wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua pkcs8_key_parser tls
> [  326.462156] CPU: 109 UID: 0 PID: 0 Comm: swapper/109 Not tainted 6.1=
6.0-rc4-ice-page-pool+ #25 PREEMPT(lazy)
> [  326.472075] Hardware name: Intel Corporation S2600STQ/S2600STQ, BIOS=
 SE5C620.86B.02.01.0017.110620230543 11/06/2023
> [  326.482519] RIP: 0010:libeth_rx_recycle_slow+0x2f/0x4f [libeth]
> [  326.488454] Code: 1f 44 00 00 48 89 f8 48 89 fe 48 83 e0 fe 48 8b 50=
 28 48 8b 78 10 48 ff ca 74 20 48 83 ca ff f0 48 0f c1 50 28 48 ff ca 79 =
07 <0f> 0b c3 cc cc cc cc 75 12 48 c7 40 28 01 00 00 00 31 c9 83 ca ff
> [  326.507232] RSP: 0018:ffffd2c4c814cd38 EFLAGS: 00010296
> [  326.512466] RAX: fffff58c342d0ec0 RBX: 0000000000000000 RCX: 0000000=
0000000e3
> [  326.519608] RDX: ffffffffffffffff RSI: fffff58c342d0ec0 RDI: ffff8d5=
96e024100
> [  326.527173] RBP: ffffd2c4c814cdf8 R08: ffffd2c4e6bd3960 R09: 0000000=
000000000
> [  326.534674] R10: 00000000fffffb54 R11: 000000000002cd86 R12: ffff8d4=
9fde71cb0
> [  326.542159] R13: 00000000000001cb R14: ffff8d49acca5600 R15: ffffd2c=
4e6bd3960
> [  326.549627] FS:  0000000000000000(0000) GS:ffff8d59a3c9b000(0000) kn=
lGS:0000000000000000
> [  326.558047] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  326.564119] CR2: 00007f3eda90df78 CR3: 0000000caee56001 CR4: 0000000=
0007726f0
> [  326.571574] PKRU: 55555554
> [  326.574595] Call Trace:
> [  326.577353]  <IRQ>
> [  326.579664]  ice_clean_rx_irq+0x431/0x520 [ice]
> [  326.584584]  ? iommu_dma_unmap_page+0x48/0x90
> [  326.589232]  ice_napi_poll+0xbe/0x2a0 [ice]
> [  326.593786]  __napi_poll+0x2e/0x1e0
> [  326.597567]  net_rx_action+0x336/0x420
> [  326.601608]  ? update_rq_clock_task+0x3f/0x1d0
> [  326.606344]  ? sched_clock+0x10/0x30
> [  326.610207]  handle_softirqs+0xed/0x340
> [  326.614316]  __irq_exit_rcu+0xcb/0xf0
> [  326.618241]  common_interrupt+0x85/0xa0
> [  326.622340]  </IRQ>
> [  326.624702]  <TASK>
> [  326.627053]  asm_common_interrupt+0x26/0x40
> [  326.631493] RIP: 0010:cpuidle_enter_state+0xcc/0x660
> [  326.636709] Code: 00 00 e8 67 40 ed fe e8 32 f0 ff ff 49 89 c4 0f 1f=
 44 00 00 31 ff e8 53 54 eb fe 45 84 ff 0f 85 02 02 00 00 fb 0f 1f 44 00 =
00 <85> ed 0f 88 d3 01 00 00 4c 63 f5 49 83 fe 0a 0f 83 9f 04 00 00 49
> [  326.655959] RSP: 0018:ffffd2c4c6aefe50 EFLAGS: 00000246
> [  326.661446] RAX: ffff8d59a3c9b000 RBX: ffff8d592decfe80 RCX: 0000000=
000000000
> [  326.668863] RDX: 0000004bfb4d51d2 RSI: 000000003351fed6 RDI: 0000000=
000000000
> [  326.676284] RBP: 0000000000000002 R08: ffffffbe2deca6d0 R09: ffff8d5=
92deb0660
> [  326.683706] R10: 0000008df1fafa1d R11: 0000000000000000 R12: 0000004=
bfb4d51d2
> [  326.691133] R13: ffffffff89512ee0 R14: 0000000000000002 R15: 0000000=
000000000
> [  326.698560]  cpuidle_enter+0x31/0x50
> [  326.702387]  cpuidle_idle_call+0xf5/0x160
> [  326.706647]  do_idle+0x78/0xd0
> [  326.709937]  cpu_startup_entry+0x29/0x30
> [  326.714087]  start_secondary+0x126/0x170
> [  326.718241]  common_startup_64+0x13e/0x141
> [  326.722561]  </TASK>
> [  326.724960] ---[ end trace 0000000000000000 ]---

Something has gone wrong with the patches applied :(


> Thanks,
> Michal
>=20
> Michal Kubiak (3):
>   ice: remove legacy Rx and construct SKB
>   ice: drop page splitting and recycling
>   ice: switch to Page Pool
>=20
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     | 122 ++--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  22 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  21 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 645 +++---------------=

>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  37 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   7 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      | 120 +---
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
>  13 files changed, 205 insertions(+), 850 deletions(-)
>=20


--------------UEyBS0UuHNUXyN6jo6L08ppS--

--------------5BWFwlVvcRIEw3LlVsjzsSPw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxZJgUDAAAAAAAKCRBqll0+bw8o6B6q
AQDU4d5QTncvFALaOOHc4ynj3P7PVVAr3dBNes8YlvHyMwD/UdfZLkCuX8F3Mu1fefThiR9ivyTD
16BIlw6pF599iAQ=
=wHiK
-----END PGP SIGNATURE-----

--------------5BWFwlVvcRIEw3LlVsjzsSPw--
