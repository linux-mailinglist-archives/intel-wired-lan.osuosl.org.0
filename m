Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMc+O94WpmnZKAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 00:01:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C72D1E62DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 00:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36AA1811A8;
	Mon,  2 Mar 2026 23:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0h_LX_SuTTDz; Mon,  2 Mar 2026 23:01:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83CBD8118F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772492505;
	bh=WVY3BH0lDkwHV0LItMBInjm1B0JDnwtS4Ofu+vk8l2I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7BXtonynlBnmRdwPjRIloPAYwHuUttfemEeJ7TlXxY0UpJlMzTU1+C2+Ut7hzfDmT
	 Rm4tjqpj0zL7ufDtFHdJtE3JW7aNF9MMnmn5w1+ufnv7IsMbosl2hRPbADMejLbPuR
	 VHjGSaCSC8PDgUcodfvQBbLWmY/Xt+ryLTHTZAazrxUI2H5S1YgQxT3iebF0pv508E
	 wWG7SWaXLLzHCJsgwk8k7041QfZcO79w1qe4Mv3Ryn1KJS0AVZuZaJWysbMgPqt8j9
	 d9Us5qXsUc93EEvG0OkBF1ILNhQ+s8lAaP4g++lSQoxaxBAOgH8IKLpReyFXNZ2OzP
	 1mMRy3K2JnCdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83CBD8118F;
	Mon,  2 Mar 2026 23:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DE04E25B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 23:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF66841D13
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 23:01:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0SyEEyYDndJv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 23:01:43 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8C0C41D0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8C0C41D0F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8C0C41D0F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 23:01:22 +0000 (UTC)
X-CSE-ConnectionGUID: pdkBAYg2ThqHSHZZ4dWyTw==
X-CSE-MsgGUID: XoR1u6Z7RK+1lRt3/r6WEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76117934"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76117934"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 15:01:21 -0800
X-CSE-ConnectionGUID: /e9TGeTwQDeFLUnga9tn9w==
X-CSE-MsgGUID: KsLrQX/2TZWUQvH/7Euyog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="248300334"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 15:01:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 15:01:20 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 15:01:20 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 15:01:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hdp4OMNcHr+rFXHmGVUBM185CletcdCh1wlqrmlbRZ8zurfbSSZU8vfcpuQX7hpwSm9a7CJMiAU4gAByA96XvLlOfHBnsbpGOWpUnEI5pgbijWUypVwuzWs4ntPdM1JL3KTNpycG/dCYmDT4UoUTbz6JbV7XUm2hNN5qNLpHk2AWikkLkDPia/F1lwrQbePh/1EeIs0jTrUV18Ot0KISbG40Zigbi4/82edWlhR5y9OIsIvWUDYV2aSKtgnPMO7u2FU4G8u6fqTmUyZZObq3MpX5vZSVZtLeJC2t7fb1lgSBT/dHj99Wlea+rcbgo+4MQTSnjVsPLsNd/FF2E1sucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVY3BH0lDkwHV0LItMBInjm1B0JDnwtS4Ofu+vk8l2I=;
 b=dWxgfOdlQ6oprdUXxYmSHK0Kx5pLxPpJvS3ugRJ8ZN2R4wY3ZNpp+Iv1pYS+R0wvZWiJdwKELxg8QcED0nEW8ociNC+Uv7lvIr29/tGG9XTrV8cc9l7nIgpiHcr58zCW2WcMCvQrPfbreh7Ghps4cC77TT0SuVnXHlQzosl6rGZ8s3Emio0x9QWaOmW43/ROCN0vn7SZC9LgiABdaPounXPU1RReSe25IO+EEch9q6K5nJuqh/0xjbbzrsfAXBZ+NkL3Z9cUHQsZRCSj5Um/UEMlqCKEn1qoqpemvyvuE54iBCOXI+sZ+TW3wSC5VuS6YpN4nDsT1nNKcNyyTsDQlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB6956.namprd11.prod.outlook.com (2603:10b6:510:207::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 23:01:18 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 23:01:18 +0000
Message-ID: <4b8e99fa-9f4c-48cb-96d6-5479ba177948@intel.com>
Date: Mon, 2 Mar 2026 15:01:15 -0800
User-Agent: Mozilla Thunderbird
To: Yury Norov <ynorov@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Matthew Brost" <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 <dri-devel@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
CC: Simon Horman <horms@kernel.org>, David Laight
 <david.laight.linux@gmail.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260302011159.61778-1-ynorov@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: 7483c0d1-9448-4773-a518-08de78af9ce9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: VjkTa6GeFLbkhFKcvkwZ5ww+OacrArtOvYaetn5ugsWBudwKxDtolPJ0EUSOARhixT+uxnWMLL3wPEFps+Omk175kmq7zJrg1S0DDlmCS8dRA7Ij3lKbU7akPnaxjoPD0Qmz0E6btImWMOItBdftdoktfnYlAwEcAuAg8UyeN93+lMi1Kpt1VQhBEogMfkiECaHQJWDSe2rhfskilcx5if/7Z2LdLQPrqN10HR9VffzoSa7rzf0yoTXuaUBgSgU8Kz4uHD3YBzCb+w9a3JeLE/s8PNqgNolsrbXtwSddy8eJK1cZlJ94Een+9q3d6NfdAuDOLGu+oS7p1lUvukIGcuZy/XbnAyVWjxd2Rv1MPD6jlk5HPMht1B2VnzEtnz+31M5THt/PYlRitSemmzEGMJ+yrf/2sw+tAuK8XEqZdF5XZF9qkdQnA/lHQAsXqA97LdTZQWCPl+Dh0mB7G/TvrsiWxYt2OYsqldn9x57TvpvrMLSMOxLmCitlp/e6tW1GBLQ3QDknZuDLkaa5z9PeSNY6g8A9Mn1FdEqnpR39dvuCnts1k3L6Ufwc6NlHmFQb9tAgicRddnUFgve7nup1in97b2V9EdmXZIGxVpqjstVU8Qdy+S6c1y2iDxdCko/AaTIfhM/hkcjYm3o7H7AfKiosoI0T+kdJnHFww4qGNRXFXDp6Brka9rO8W+t8XxtJ3XLyuUtt3Wn4XtmC/MQ766Jg6gPFy4Dogf5snYyenSqC4cja/XoHKw0LKHwjgZ6/PD/TExJaQ34OemV5Wca/6N+7LnLwvE20xw9ArADh1Qw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTBwVzVWekgwd3Q0cUhVNEhXa2xpN3RZREZOemxySWR5SG03ZENIdXl0Vytx?=
 =?utf-8?B?TjZ6WE9SVU42aFljRCtUYkQwL0luY1JrL0V3b1ZjeWJxaFZaTlBCTENjUzND?=
 =?utf-8?B?Ry83a3ZBR3dOU2IvMVZrcWxGaEZETnU0SURTQkRyQlc4NGxMcmE3dXBNdCtN?=
 =?utf-8?B?aHR5TFI5MXV0TnhRS2RVUFNlL1haekFKTU5QRTNSMHdWalZKVkI2bjd4Y09F?=
 =?utf-8?B?VGEzendwSXNmajBwZDEwNkg0SjhNQlc5WU90elY4TEZKeEdDWlJEUlprRTRX?=
 =?utf-8?B?K0lUNG54aDBBenQ3bGhKZ05WV1cybGs2MkJBc2p6M0t2Z1RDUGtPU3pBeXBz?=
 =?utf-8?B?OFlJclZ4RjM5QStRVkpXSWM1U1VvWGNmTmIxdEo3eDk1NWUrU0xLTUNPRlRw?=
 =?utf-8?B?ZHZHQ3lwbUlLVUNGaUZDVXZ4cXBlaHAydWhmWHN5Qk92WVJuTWNyWDNFRjlO?=
 =?utf-8?B?c0xxSUdCU2pXU2pIYmxkS2t1RmFocFg4cktHRWxSVmVGUHpidlJsZ2RUNFE1?=
 =?utf-8?B?UVo3SHhLSHdjYWtWRWNXTFpOQll5OWRwN0J3TmpmWHZyL2c1NUg5Q2xyRTRF?=
 =?utf-8?B?eGlCWjFpOVJRWitlZFBqcTlHZGpHSitDZjFMeDNMaDhWMFc2RGhFSkpMaHB5?=
 =?utf-8?B?MGt4Vlg4VzhNd3BReTVzcFNHNmh6eitha0FEYXlnZnFDOHFtaDhwUFlyWXRO?=
 =?utf-8?B?akpsS0NyZlRvV0lYUzlRZGtvYzBEdHduTTdRNmEzYlBMVExLWkFrYlFIcXZW?=
 =?utf-8?B?bm8zOHhvM1VMRGZpdWNHS3FYMGMvNFlSMTZ1c1dDdzgzbjFiMmthQ0VIR1o1?=
 =?utf-8?B?VHdMWW5LdDI2ZmszTVdJNFdOb2g4OWFKVmlodG9uL09CR2JsbUNlL1I0NkIz?=
 =?utf-8?B?MlEzT3NLSk9ZdFVQbkN4RHBGQnV6Wk1wM040SlhQZTQ2STdBKzJqSDNwWXkz?=
 =?utf-8?B?YkE3aXBsV3QvWnh1ZjFwOTRHTkZodHRURkFJQ1U1M0FOVlpjWFh4ejNSMUc4?=
 =?utf-8?B?S0p5WFRpTE9iL2pzU2RWWGNlRyt6aDhMSGlGN1dXZjFJeGNyOU9BNWd3WHJz?=
 =?utf-8?B?Z01GNGFVcExaTk54Z1FSTzAvUy9ONTFtRmk5VUNoYkZIdzlOZC80YmcxcXQy?=
 =?utf-8?B?TzlQVFpTcy96bFF4cVV0N2xiVy9GWGd3VmFQN0k4ZFFYSkdpUzZOcENXU3Vt?=
 =?utf-8?B?dW00UHBIRmFJK1E0QlgxblhCazhOaFA1R2ROcEt0azlZQ044akRBVDV1M09v?=
 =?utf-8?B?TUdIY0p6RDFJMDhlNWFyUWxqZEdyMTZDMnk2aFhRYnRSQ0hsK0dBNFFuVFVF?=
 =?utf-8?B?aXdqSWVoN1JDakpSYzA3UVo3S3dObkY2cGgyTVlqNGRrR0QrOXQ1djdWdFNV?=
 =?utf-8?B?ZGRsTzk2dnZBeTRvWnY1ZjdLTEQ0Z3hzSkw3cDd1ZTF2Mng3N0FLeURubTFU?=
 =?utf-8?B?bkJnWkRiUExvYWJTc1JOREUzbldXS0tJWmc0Z1l4ZFM3b25mUTR5ckxpamVt?=
 =?utf-8?B?OTRWOHhKdVBtOG9zcE5KdG1SUytJK292U2hETTh0UWtqUlBaSWhNNk1KYThr?=
 =?utf-8?B?RGsxQ1VveEVwT2MrUUZhcXV6eDVya1lUY1A5K0xWaVVIa01TcXIwNXB5TlFK?=
 =?utf-8?B?dGxLWTRIMktTQkxaMTdZRk9yOWxOTzArSE12NGVNOEhHZlJweC9MQ1lHUy9J?=
 =?utf-8?B?R29Ja0dnMzB5UndkNHBvbFBuTVNFWGdSSTdxZkZ0NkZxQUJ4ekRTT0RTeTdo?=
 =?utf-8?B?enFGSEFEd2paKzNiTTVVekUwVFNJZXd2cE9XUVp0czl3b2pKUWpkdjBPZ2RZ?=
 =?utf-8?B?NjYzeXdFbTZWQnJHR2dPeTMxMGV5K2hJeTk5bWRnakJ2SWFLdjF0aFArVldl?=
 =?utf-8?B?cDFkckVxS1VpZGJzUSswbUdFYkxIQUNCcTZmdG93WU9YaVE1VVYxRVQzMjFF?=
 =?utf-8?B?ZGZ6YjJGVll5cTUyNnJzVlNzcVJ2MndxMnZGNjdGNFpKbk1IcWNMNEYvQzVv?=
 =?utf-8?B?cG1HVlprQ3RjcDcwM2hVWlcrYWFZNENQRnpxemx0K2NNQzRGM3ZBLzBnTXJP?=
 =?utf-8?B?djA0OVErWUxyZXBZRjQ4ZXFJK0tqV0E2bWl1UGx3MzBsNnlvZmlPRlgrbElB?=
 =?utf-8?B?VXZHTVFoTlNaNGR0NE13OHZpbVJLVWdJcXZscFBOMnFMZElCZnlDeWlxQzR3?=
 =?utf-8?B?NzVIanhZNHpxN0Ixa25RZ3YyQmNXWVBsV2ViQkhDYUhoUVorc254YmVHcmV6?=
 =?utf-8?B?Y0pxZjFLOHoydmRkUUVhZ0xTNTdIcTZvL25TU3JsR2JNa2VDYktZYy9pSFhD?=
 =?utf-8?B?UUpxUGtwei9MdlBEcjNjQVpmTlJGOUZtdHhsSVdsYTJHOFl2bFNCZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7483c0d1-9448-4773-a518-08de78af9ce9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 23:01:18.4053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jJXgs2IyBpexHwRwG6V4vhR86XdeRh1tCwJG30VtYZsKYk14VM4ryCq7MgFLPfuq8vaXvdt+rkXH87DgNTftMWFaeSN5oSNlWnvkJVnc3fM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772492503; x=1804028503;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRnagR9pnTB0zMV1MK34h4tVyp2xO3CJV/w/g4lIn1I=;
 b=TwcKSnYwUPfhU6YDywdEN/jRbb8Dfrv+iavQsVhKvBjX270TP0gMEomI
 jTNlQPEdElCy8Ejg2Z7saUAwDTD4Eg4XsjpALtyjICj8vsMC1OKYItA9v
 sV53ZvGJEvEywJWCcXtqAFAKuPgp35tP5gyzp0rak+lG5Kcv0DRuHKq7r
 DZzD5vg34dsY+TnTS8W1fb1pcTUGeyiqq2km7PcxA+0WOs0UJrrHMq+Q6
 /oq1DVngk7XZDYRnNKD4192mLYOLA7SKoBCDd4n0qluY3TuuAbd9zuSK/
 1J8gbopK5qhe1NvvLTj6x0nhpzLGuBNhl2guydazM9yv26k9NyNyEmPeo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TwcKSnYw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 0/4] ice: use better bitmap API
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
X-Rspamd-Queue-Id: 0C72D1E62DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_TO(0.00)[nvidia.com,intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Action: no action

On 3/1/2026 5:11 PM, Yury Norov wrote:
> Use better bitmap API where appropriate. Patches #3,4 may be applied
> separately.
> 
> v1: https://lore.kernel.org/all/20251223162303.434659-1-yury.norov@gmail.com/
> v2:
>  - new v2#4;
>  - add documentation line (Simon);
> 
> Yury Norov (4):
>   bitmap: introduce bitmap_weighted_xor()
>   ice: use bitmap_weighted_xor() in ice_find_free_recp_res_idx()
>   ice: use bitmap_empty() in ice_vf_has_no_qs_ena
>   drm/xe: switch xe_pagefault_queue_init() to using bitmap_weighted_or()
> 

Good cleanups!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/gpu/drm/xe/xe_pagefault.c           |  3 +--
>  drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
>  include/linux/bitmap.h                      | 15 +++++++++++++++
>  lib/bitmap.c                                |  7 +++++++
>  5 files changed, 26 insertions(+), 7 deletions(-)
> 

