Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJeLAy1G4mlh4AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:39:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8871C41C272
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1428460DFB;
	Fri, 17 Apr 2026 14:39:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74ad7zEfjDrj; Fri, 17 Apr 2026 14:39:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7391D60DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776436774;
	bh=4pCasmez9UaY8bg0TObNOxgkx+d4pPws5ZL7udBKs2w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OuKPPvCKJSe4XkY38vCxMba/0sKZQWQo7l7Y01/d9GmHTdJtA0hzQnr5kEgysAj7T
	 XYrUu5DWaFlvyZeXYjNLMFx5yAIpwlCRQdbf3I8GLW+h4jRCaGoJtcPYdtaiDMWU6i
	 eEMFwMkpXjk2A1M2JwJ/4Rv8Gcm2lbnpklhqz9i941BkrOB/UCu8rwYrdovbv8I8vm
	 hnsvZZa/0caE/QIFB5Seb1z+5tiQAnHrK6M1rUEX1APXfsEAOV22ujbMERtWmHxwN5
	 z2xJeFERYrt70fZbAQRLfEhtF47aXSHfzkEA0wUgDx7FsurYP1gXi8fykJmkr4f/e3
	 ubTSAZP0knJFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7391D60DF8;
	Fri, 17 Apr 2026 14:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C3CDF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B556C814BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hv3OJb4PoXxR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 14:39:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B25A3814B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B25A3814B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B25A3814B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:39:32 +0000 (UTC)
X-CSE-ConnectionGUID: MLFzlxoXTdGAXXuEuoHuOA==
X-CSE-MsgGUID: Kx0Xq9PzQSCY6XnIrrhZMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77461480"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77461480"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 07:39:32 -0700
X-CSE-ConnectionGUID: g+QXn0jYSpS/ALjgeErGqA==
X-CSE-MsgGUID: +D4J8PNuTUip0OazyorgoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="230931950"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 07:39:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 07:39:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 07:39:31 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.39)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 07:39:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W+DmMrnXWQKif4Ib4aaTqqwgR3O+Igd1rIpN08g0/dpucBDoo7jFV7V53UDASY1u2/5FLOexeNqnElWJdQLJa152uYFHIgxZeyTkQ/0/xrt47FEZ0plqsMyDSQK9UbDN0ON7ZvGQbPJ42oR+n7OjpqIJ3GIXH/PhIrabCLiCjCdJUDcpcpg6MqsBugPrxXl6/TFUHfr72s89zBZqYed7Td88Tf7D38At5t4oa5r0Z2NKZlmusB53xy/HieN/j96cNVvBxzBd6qegityfcMajsz347DgxWNu2yBXJddo9fi8tEG2nq/TH2nWGmoLZBt6aL1xwiZOk2fzzhCdKbFeTiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4pCasmez9UaY8bg0TObNOxgkx+d4pPws5ZL7udBKs2w=;
 b=VBCbROSqjdouiqC+jYmgMdB4Gtte2674IE3JodCfZFtILXScTfbgOFqVvsjgGpQi0YDbQDWtaoGcIw4QnfN/OYMGpJrUyadGbDlSeRnY62Zv/4CRMNEGFobLQvLADgDIcZz1K3q7/z8GGe+jCm/+AQb0qv9s9/ZsRgJOsO0qQoeHeup1rWSoiTwujfiMFiPsoXZUX7R5pnqEaBDYlhXoBpz3zoKn6nWyQftF0y7iIwnthIT4Salnq7qOATL+liDlMFfiVsBOU9S99EaZqbMKU6ORiBszmJuB0T/SuMvsuPdhTtQLNqAdVbKIU2LinsZg6xfNEsDX0KFf/OmTMDgDBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB6400.namprd11.prod.outlook.com (2603:10b6:8:c7::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.25; Fri, 17 Apr 2026 14:39:28 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9818.017; Fri, 17 Apr 2026
 14:39:28 +0000
Message-ID: <dd884d10-1a7e-4227-baaa-afa8b4b264ce@intel.com>
Date: Fri, 17 Apr 2026 16:38:09 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20260414110006.124286-1-jtornosm@redhat.com>
 <20260414110006.124286-2-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260414110006.124286-2-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P195CA0003.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB6400:EE_
X-MS-Office365-Filtering-Correlation-Id: 6093155a-36f4-42e4-85c0-08de9c8f20d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: VseSN6S+ZsEwrZwEgo/MMHwHV6BRmaeJRWDN2M3SygXytxzJkdiUvoLJb8uuqWK4XzkO4LCEgN3z56zodukNlXawN+8Es38YN5Vbeg+af5gg7146jkOC9VlCh7QfMcWUGj/MbK31MHuPjn7l3tkZJH3WNB1Jakd49Vv3jijYPq8s404DHocqOz04gAgky/qrwjA8XZaB4ee9ovEVPFUMtxMXAwGU7qJpRnwtnFHBMeeZELlLCvs6F+55xkMHT/cRmdWNMQ1pe1oblLUa6cwJAaxPzfQQdmMCS9OlRtyL79v8C49GywY29+3TfWjDz9WE5mCPi4rLwNtxlheSnYjlmLemJfB29gd34jiaS6YREEQ2NVcDxqQVIjgPVWIvaB7auOfEI/ZgJcmMuhOIjE6cISSxjwpqry0zidlyJQZAqLcodQQMcw84AK2r+AIhnDhtWvLzwc0iz966DfFjUYqcKHNU63sAoRy6BpWHzneg4aAysWEu2JQ08IK1dMN8Z37m00t4NnL+QbFBHlFc4ofW1wdd9Rm7u2M6usnHNxWjTX2BkyCqzMuhl9zAtlL21EV2RzZDj8zrbRoGVM6JqcDJq9fXB9sUpmp577C6XttwBgOfCOyp5TjrHw6WkzuwupgS1Py4OFFLrWXEqxbogeB7ePfjFF/Sf9PmYBP3FK8yh39q87dxQ7y70oPwiKh09/NK/ju/p52Y0GkpXDHyPA9Nzfq0v0aCNIlqNxm/LEzEmMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YklGQ29CZG92M09QRkQ0ZjBZV0E4NkFENVRIS2psTm8wd0FwQUd2MHRGS3NI?=
 =?utf-8?B?LzRHUzVXUVRBYmNsZXcwdnc4ZkVFcnVhbnhlRWVJdEdOZmxkaFFmZzhZVXpY?=
 =?utf-8?B?cGlDeURSK0swdFhFU2FOQWt3ZUt0WjB1R2I0R1prWXBPMks0aVM3RTVVV0gr?=
 =?utf-8?B?Z0xsUGUzM0xCWXFGb0h4alI3ZVBiVjFxeUNIcnhjVnh2U0hPdkRKL0pOd2RP?=
 =?utf-8?B?bGRoc2h2bTl5ZWJYUENGd1pZQjd3SlYzWTNMaUNaVWlCQXdRR3A4RTRuZzBa?=
 =?utf-8?B?WGg1d2hZNFBuMDN5UC9zNHN5TjBMY2FsVjY3eW4ybWlMMlNmcXZBZTVId2Z4?=
 =?utf-8?B?S2o3NFpUQjR6aE41VGhHLzZsemRqbW42YUNCRVBRS2JYNGRpeDYyNGNUbGEx?=
 =?utf-8?B?YXRvbHFHdFpXWEk3UnVuT05GblVjQ28vNHdnbDFmdWlDWk5DL0RvUkJESElv?=
 =?utf-8?B?MlpUN0xvZ1draXlTeDBmMHQ3SVk4cDNjTkYvYmtsTzNSVHp4WUh5ZWpNRy80?=
 =?utf-8?B?SGs2ZzF4T0lkZWZuWTA5aUhCNlE2eVpqYTVUa0p0bGdiaUcyckc4VzFlbXlS?=
 =?utf-8?B?MTM1bGt1bTRkemorY3ExalFoQ0VjVXFuc2xYTFlPUm9JenBPdUM4RHNZQlpW?=
 =?utf-8?B?cWJpZlRHZ2ZaNVgzbHovMUI4dHFrZ3d1elRXdkJBczRqWTlDajEzcjdWU01n?=
 =?utf-8?B?VEFvNCtUa2NwV3dFYTNzS2JjajBHR24vYklab1UxY0xPRytXb1ZLOThZakkw?=
 =?utf-8?B?UHNPTDd2ajRURWJ4ZWpjVVJwdGZERjdZYkhUNytiQWRLLzF3MTNCNWdNK2V6?=
 =?utf-8?B?T0hzaXJuN0dhMmlTUFNwbmtUSWZqbFhCWFpKS0VGWkEwcXVGSkk2bHhYMjVX?=
 =?utf-8?B?TVBlRFkzWFJ5MWtzaDJHTkRzK205R1JCbFp6VDNCNVlsdDdFdUN1UjczdzJ1?=
 =?utf-8?B?KzI5Z2Rla2hWVVp6OE84R0w1Nm44ZW9xWWZVR3ZlN2M1ZUtQVGlSL0Q2Qzg2?=
 =?utf-8?B?S3hCYmhiUE1jTmlMS2VGanpjQ0lkWElKVGpnaGxIS0t5RDBKZ3FuM2RXSytj?=
 =?utf-8?B?S3FUcmJkMVR3L0ZjSmEya0FXTkJRTjd0azIwNFppVTBBalVQVml6OWZyYjhr?=
 =?utf-8?B?WUsySVQzREY5MER5TFNjUk14OXVCVEJoY1V6Wmh6c3lPNkhqY1g0L2xxakwx?=
 =?utf-8?B?bFB5cHliVm5sTVpQWktvaTgvbG0zbVVqQnYrK0ZmdjlRbFFNNjdUTU5pbnB2?=
 =?utf-8?B?cDBuMTFsZEl2SkhJUkxSUGtOS01LcDRxTXFNQndRUG95U1FUSW4wR25EY3Fs?=
 =?utf-8?B?L3FZcmZTZlhZNmd4ZVlqeWNGbDFoUERoWTFuWGJRdXhIekg0ZUs4NjA3U2Iy?=
 =?utf-8?B?eng1UGJ2OTVrcFVzL3p2aisvc1R0M1hZb2RPa1ljS2w4WmJlY2ZWMGRieGZL?=
 =?utf-8?B?WXBZczVJRCtrc0dtZVJra0dycnJoc1pOQ1RwNnlpRlBoZkRFZHZEcVM4cHRL?=
 =?utf-8?B?blR2YjBKS3p1alRLeVpKSlhCZHRUZDBJVTl0UC9zT3lnU05zWThjRFYzVURj?=
 =?utf-8?B?SzBHNUY1N01idkNEZ1VKNWFhOTcyT3N1ZGxPUVNLKzJtSkpLcjI1Q3pxdTdR?=
 =?utf-8?B?YmMvdkN0UElXTTBRdGl6WkhLSzVVVXVNZTVYMjJ5NXB6dy83a2pRTUlxM1BX?=
 =?utf-8?B?ZVFYd1VyMFhyeFN5VWVSZUUvV2FRSDVudUVQOTB0UGFUcHpWcGpSakoyeEZ0?=
 =?utf-8?B?TmFka2o2K29EaVdXemxzWFM3ckJ4ZGx0NWFjWm9XN1N3UHVwVy9ickE1b0xY?=
 =?utf-8?B?UHpDWkpKcTAvcTRMSXdhVVRqYVhycjA5bkNnQUpTUjYxTEtSc2tuYmdHNXQ3?=
 =?utf-8?B?MStlcTFWdjVTYUhSbWQxbzJsUld3TkxXOFRHZTlwTnM4Mm5jMm9ScW5wWkxT?=
 =?utf-8?B?UHRCeXhmN3dJZDNPZTcyRllWNGxCN3JqUjhNZm9oZE9VUGtYaWZQc29ySWtw?=
 =?utf-8?B?R0tVZ3BldkpKNGhjT1YxMUErQkVxMDVzUFhpRThzNklBZ1dnTWVHN1BscEwy?=
 =?utf-8?B?bVpWTmN3OUVCcXp6MEdMdGR0enpNbmtXcCt2cU5TbWFxbG85UGJhNGlwZ3pt?=
 =?utf-8?B?bHJsSm1hNVdjdGJFdXpnUGVVZGNBejB2dmVERWVMZHI1dlBTSVovRGY5dTRk?=
 =?utf-8?B?aUsxd2g5ZzhVdTNqbEZtaEtxeC9kdW5SdER1bExNYWh3MVpLSFJPM2FTQ2w4?=
 =?utf-8?B?S3RpNzh1Y0tVelRTWmNXVk4vNklzLzR1ZldLQ1E3Nm9oSXdtYVdQT0hIOUY4?=
 =?utf-8?B?OWRKS2didEgxQllWcURrc3hmT0ZZMWMxbG5ZVUxEeloxejZ5N0I0Mmlpa1Vq?=
 =?utf-8?Q?v1fH6HFxtcClszxA=3D?=
X-Exchange-RoutingPolicyChecked: pqeO0Q3xh0GB3h1HSALfPx0LyW6TrOL36Zj5V3CQl3fQvi4bHWjgzVbG2QYvsqq7pDhdDDehzOx6AkpZ1zc/3FCt8A5VFQm6r/nNlxByNxSfDc8PquU9xMJbrvTGUoZg8+ls3YJLSrhD6Or7VntHt4xXFe1Q6gkqrWlyX6Q4Ofw9H5LT7+d6rkZoHXDjzm9K8gRbZHtSr3Ne3f3wp4A9c17fjbaAHC0n/7ea4Tj8WFLaH+zk3dmnib16Sz/8ybCLNWbANuddVHgsR26hVLa6Jl+ShGDTbz2vXyTy+oYQKPOtaBVcZvMseR0wDa7gcbkuTQS5jcqWjKoIptgn/g8/bA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6093155a-36f4-42e4-85c0-08de9c8f20d8
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2026 14:39:28.0722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8b5Sl3Qeu3coP7q7jwZ6zZmUIS4pO1OiMHSmsSvCisfyJyUfwtl5hj3hLATYbVfX9gqmYJ6ZaOJu75WTjIevXNj2SbMZslwNq/J/sdFk6Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776436773; x=1807972773;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FMndtSY7EJvL0J/kHCfhv47O1f2QCSSNvf67FEiUHY8=;
 b=EGPhlQ3siKS4DFsQfYy+i/I+KBY9VtvN1i10Oh+xlXK7tbh9KdCc7DkZ
 7Iu6GyqspYSmfU0Ck7/DoafYFfbMp7C6TQclJpye8gTzYgzmF9ChdsxKx
 PjYfOGVpGRmvFEagO/pEPfTdJMHTHL1bVN+hn+0Ow45ubA9fG56dSwbwV
 NyMNHZQFdyaAeNL75NMkgX2/lbHuHeZxl7YRwqNlnGrQcmMvnFf2iIezl
 n0ar7L0t9LjUXfaDeKa/bgs7Ik6bozD4MSWunFae0jpw2BeEKJfGLNbCN
 DSQKZPiGppQZZZH/7ZK8xJQOHUH8JP8NsF99A5btdmKEj6xwRDD3uwgIG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EGPhlQ3s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/5] iavf: return EBUSY if
 reset in progress or not ready during MAC change
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 8871C41C272
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/14/26 13:00, Jose Ignacio Tornos Martinez wrote:
> When a MAC address change is requested while the VF is resetting or still
> initializing, return -EBUSY immediately instead of attempting the
> operation.
> 
> Additionally, during early initialization states (before __IAVF_DOWN),
> the PF may be slow to respond to MAC change requests, causing long
> delays. Only allow MAC changes once the VF reaches __IAVF_DOWN state or
> later, when the watchdog is running and the VF is ready for operations.
> 
> After commit ad7c7b2172c3 ("net: hold netdev instance lock
> during sysfs operations"), MAC changes are called with the netdev lock
> held, so we should not wait with the lock held during reset or
> initialization. This allows the caller to retry or handle the busy state
> appropriately without blocking other operations.

that makes sense, but that could break user scripts, OTOH, with netdev
lock taken here, user could be blocked forever, so I think this is a net
positive change,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> 
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index dad001abc908..67aa14350b1b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1060,6 +1060,9 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>   	struct sockaddr *addr = p;
>   	int ret;
>   
> +	if (iavf_is_reset_in_progress(adapter) || adapter->state < __IAVF_DOWN)
> +		return -EBUSY;
> +
>   	if (!is_valid_ether_addr(addr->sa_data))
>   		return -EADDRNOTAVAIL;
>   

