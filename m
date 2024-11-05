Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 304739BD8EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:42:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB67081197;
	Tue,  5 Nov 2024 22:42:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N9rpeb2Z3oNa; Tue,  5 Nov 2024 22:42:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91C2B80F29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730846522;
	bh=ZwuJTqezC2XjTLDp5nBw6iirbWXftilcGrRgfaoggB8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QuQXDH8zpFnuZEEiZw0ZxFe7ubVHWWRMHtZqFWh1lwUDyuuWONdPnucX4JFYptlsB
	 h9IoYSsPgS1Q8Ieh8GtHIR50auWnG4EpRretOOjKTfmjg3v32AFlJk9JoiCykTJgGF
	 4jUEeBdkwlxUqIfvQy2OeF0fvA/hj/Q/U0bUwjzq5Tbh8r6if1MbJsWRV+hYpSQKyT
	 huB9XR9O9VRjcecOAQ6tUsUoq0Cg7e4Drwm1PhwJLGHFrhpFO0F4GhqnLw5osK8BcA
	 es+lPxEBl6JvPilNWZSE3Y90JVHkztsyy5PT7WRjNxbUt6ofaKqGmPVKDy5OJVPSs3
	 qh2Lz1t9k4NTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91C2B80F29;
	Tue,  5 Nov 2024 22:42:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF2D027F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FBB840645
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:42:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bHFrQPvuag8C for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 22:41:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A11B64061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A11B64061A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A11B64061A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:41:59 +0000 (UTC)
X-CSE-ConnectionGUID: lLlZpnduRq2HTgukgkbokA==
X-CSE-MsgGUID: UaypwsVSQWKKD62qDHIEWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30501614"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30501614"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 14:41:59 -0800
X-CSE-ConnectionGUID: oNXGOtdGQTKRwPW5fsANYg==
X-CSE-MsgGUID: kinpj4ZfThyRdZy+R+oH8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="89008379"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 14:41:58 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 14:41:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 14:41:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 14:41:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a850oSuSOQ1BRZJWlhyzvDfGtQe74RXp5+OLFgj8ihwASJelApPZYXK72xqeIqCXHlokbLZ+yKS1wYE9ikmwRzas9r+T9CmczHynf5ohKyttx/Mu5JjiOjjUa7erE9H4a/jXrEGdVUWq2Rqe7QZ/IhzK/5+KJr2xRxyMZldFFua6OnHJ+jtwfesvEFJuM9JRWjrhsNs9H2AgxIgF8Q7RJY5gFpOdYPOuQ+GgsqMFo1LXQN0/kdwIco8rIqSAwYgBthhfHZmHVyAYf2YE5RzkzixGNBdHvc6YiOY9SH+6x+B04Ql0/l3Y115DHIs6/adDxvTyscC8/b7HR7ESOlJgNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZwuJTqezC2XjTLDp5nBw6iirbWXftilcGrRgfaoggB8=;
 b=tqfn5o8FYY2ABkm0YMsIp8v04kgyPMz0ozXrG4L7dLMU0R7XlpokizsH77Y1hjDw1NoqRC/ak8J6mCksJpH8eAHHOy92U1kLO4415JCIzBrLlENAYu0geMwWD8hXrSLCQhA4l9LaR4RNkFHk3ZRDKMFCJm5zNaEHZ1uPD/qD5LkOQSSb74tlateB4oaRydRucLMnkQSf7gP/6FTqc3C7kyl2YWypxoH0U+LsfpQigj4QdB2uRGUnRdQgAV4Sbp14JJGhDNitesvIiDwlD2Dmi6FghJwux8494aMOhO2QktIJhkBXlE4uJK65+EwZMkZb6tQ68Cx9brSMQxYmyp4PkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 22:41:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 22:41:50 +0000
Message-ID: <1177b2aa-3ab2-4e08-8cb8-22117135b829@intel.com>
Date: Tue, 5 Nov 2024 14:41:47 -0800
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-1-f556dc9a66ed@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-1-f556dc9a66ed@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0059.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: 12b4b93b-d903-4f9d-0b46-08dcfdeb0969
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OENsVkR0U0NIblN5VnB3Nnp0TU5PNTJCNVhsNmRaVmhDckJVaStLcXdWZGJ3?=
 =?utf-8?B?a2FoSksyU3RYMFNZUHpmSjhiYkJsTmNQSVZqeUdDYXZHMXp5NDgxYjJNZmVp?=
 =?utf-8?B?aVZ4Z3ZycVkwNHVlMndSb3RqVFVCSjJkUndMTUtUNUMrU0kvQjI2N3RvU25t?=
 =?utf-8?B?MUY3dUFDa3UyRU0zVk9UbzduZkJSNGNGT3FzSUNHWHVUcC9nVlhXV09oQXY0?=
 =?utf-8?B?cnpzTWtWK1huVmJobnBETEhLMlJGSzBGSERtekRqVk9CUmFVMVRMNC8reXlK?=
 =?utf-8?B?dlNIQTI2b09wOS8rVzhpZmxSWGZoejR5TVpEbjd6TWIvK1AzTFZWeFUwVDVJ?=
 =?utf-8?B?UnVnZWd4VzlMd29pTUFQMHFremNaWmtrRHFKR2V2bmxQMGgrMm5GUnFIUU1P?=
 =?utf-8?B?WDFJNTJ2YlBIS0kzcGJKWlZML2VoWDE5SlNMS0lFc2hFK1hueVdsR3lEYUFC?=
 =?utf-8?B?ZXpnZm9FbmFNUDBRdCt3R3NhZ3hFMFdCS09VM25UcVN0dU1EckVUd0JKbGdk?=
 =?utf-8?B?eDVCd2k4RUJucnVCUnNwaVRNeDdCSStVL1dnOVgzVzBSZmhzODR1SGwrTTNV?=
 =?utf-8?B?Z2pGdlZOa2duQSt0YUQzcGFmWlQ1dHVXQitGdGtiNXVHZDU2UGxqZmJaVTFm?=
 =?utf-8?B?cXZLTnkrODFFMGxBdFRKYnJEZ08wajNtUjBEUGxLTnozU084WVBJeVk0cmpj?=
 =?utf-8?B?eElpTGQxamdiUlJ2SDF4K2k0WkFidmpBalc1V0NNTll0ZndQL1gyT2dxVHVh?=
 =?utf-8?B?WVlreUdTd0JBSEIrZlRXTGJUQVIxekNKNktsUFprYUQycGhKNDFMRVl2djRu?=
 =?utf-8?B?VXUvTVVsYVpaejU4WVlFUFRrbHZLeEc1MGtzakhFc1A3bVU1N0dqeEhVNjlv?=
 =?utf-8?B?eHZWYzRnUy80cnd3cUtXU1pVLzJDWnFhVVZvL3BtZFpqWXozQmVGcmk2ckRJ?=
 =?utf-8?B?K3lXTXYzMnAxV3lETGNiVXhrNGxZUWRudmdSWTNVODhlYWd6bStqMXN5NFBo?=
 =?utf-8?B?VkRPZi9YNjZFZVRUL0Judk4yM3prZS8rMDFiS1U5T29wckkvWjdhRitxYXFn?=
 =?utf-8?B?clJGVHFXWE9lQkZsS2lnbWJmeDQ3djIzQXg3eUh5YmpzdHllbnVSdjVLR0Zl?=
 =?utf-8?B?RVFIR1dkdW5oVnVwT0FjWXpKemdNODAvN3p5UGpZTW9OVXN2ZEc0dkpDaW9F?=
 =?utf-8?B?cVpES2t6MVgzY01mQ2orTFpLQ3ZKZUF4TmNRUG1qS0pCTlhIZC9YTVl4YUpX?=
 =?utf-8?B?YmpoTmRDVC9jRjZtN1NycFBBWE42VTBMUjlyMGlaaktZOVdwRFFDZ2NCcTRu?=
 =?utf-8?B?cnBnS1VhcDVpVTZkYWZyc3dpNGUvczlublJDaDJBQUpXYi9oR2ViVy9vSUJD?=
 =?utf-8?B?R1g3U3JGVHVQZzhvS3k0MEp5OTJIM1NzU0I4UEJYZDE0UjZPY1VxazJkcDln?=
 =?utf-8?B?dlkxanZMY3VKdloyOU9qcFQ2dW0yK3BwNGxGYVhmMFlsMmhXbUlYY3Z2Ym5v?=
 =?utf-8?B?RXF5aUVsU3RJWjgvREN1M2FLU09SbGR6N2N3eVRUeWJ2ZTRURHhoN0tSV2RP?=
 =?utf-8?B?dWtyT2ZUYVhCSWowMVNlQk5iUW1JZTlsTzAzb0EySEc4bVFvMkUvWkF2VTd3?=
 =?utf-8?B?ZElEM1p5TUNwNGhGdkQ0V3Z5aHJaOHMyZUZMNVFicS90V29ZS1pSa2R1OHNj?=
 =?utf-8?B?ekRrY08zS1JINnhNVVpIWjNwVFVyMXBzQVEwM21LTWMwREtHT3dLTEZ6Sk1q?=
 =?utf-8?Q?P/ZfBor3qN27Oi/YpJ9tixgb4Nlllo8PDDrgdyi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnpzSFFiR29JZDVlMWgrMzhkMGU3NnJSTEhEQzdvOW5SMWdlcVpLYkFMN0Rz?=
 =?utf-8?B?R2hFS1Jyc0NHRWdnSElTamtzcERtMWtMTFJsbURIek9ZcGtnRVJMWHBEUGl4?=
 =?utf-8?B?cVZGSXljRnFxVWo5cW9HcDRCZlFVcDhmTFJpYm5QRlBVVVBDVXlrWEY2NEl0?=
 =?utf-8?B?RllwMndaenpIVUdEcVhXNWl1TWtDaGJHR0l3c0RlWTBoR1NhbVdzekJUNStw?=
 =?utf-8?B?UmxBVTlzUUdieXJFTGlidnZKbTRKbVUzd3ByWXYvT3FHeGhxdHdkOFhHeksr?=
 =?utf-8?B?NC9rVWx4VFJoMU5XeS9CaHB1b2x3Q3NUdU9WaktlUUduTG9yRUcxVWJsL1Rm?=
 =?utf-8?B?USsya0VBU20xMzFweHdsVjEvdU8wbHZjN01mSUIvdHJ5ZGFNOHNYV3RYWW1P?=
 =?utf-8?B?M0JRdjRNM0RNVmphN3ZJeEV1Y3hlSGc3czQyYjJHcC9tamUwU0x5eUkvT0l6?=
 =?utf-8?B?Nlh6TDB3Z0txM2pIUk9iZmw5WndDQXFSMzhDR244bkU4T3JTTHpNYVB6aWI2?=
 =?utf-8?B?dzZnWDRjdmQrU3p2d1N4a0NRd0M1YTZEUGxkVUljOG45ZmNkNUV1WmhIU2Mw?=
 =?utf-8?B?UndBbzRtN29MWHdDYnNiZlNlV1JWUVVET1lscXI4YnVtSks2V1BYYmVRd255?=
 =?utf-8?B?ZjV1Z0Z3ZWlyOXB2T2JNOCtzU1h5dk9GUS9vT1orYWJ0VWFtZVJQaHhObklT?=
 =?utf-8?B?Vm4zTFJTQlUvaTBRVUxsT0p0NldoWThlUmRUSFJTdXhIMVlrVkFjU1p0VTMx?=
 =?utf-8?B?bTBFb3VLcDZWMHFaeUw0d1AwbVFTenVqSDM0VXRKc3I4QVpzVmIwSThZbVF1?=
 =?utf-8?B?K1FuV0w1Sm1wSTlLTGl1ZUxSQXhkRmtCREJqQzVyZjZmeUxwSVFLZWF1b08z?=
 =?utf-8?B?dVJUZmpwTzF6bnRhb0hjR3NzbHd0NUc0Zy80L21FelFUTzlRSmtGUlV4NHdj?=
 =?utf-8?B?Zk1zWDdQejZnK3RUcG0rL1ZXT1d1QmdYVkJwV1pNYlh4a0hwSUF6S2V5OGlv?=
 =?utf-8?B?d3YyVkhzS1FxRWtncG8vbit4MVdqZFQ4aXFIY2RELzljcDV4VWVWY0g0eHZQ?=
 =?utf-8?B?SS8rQ1dZUE8zYXAxVkZ4N3M2eWQwV294Rld5aWtGVHJBemgxMDcwMUt2bnk1?=
 =?utf-8?B?RGhXM0Z5dDJyYjhEQTlRZ2RIcFhnMUFMcXZ3VWtiMHpmWkVyOElVdnI0UGxi?=
 =?utf-8?B?dHBZWHRrbC9RTUVvbjdVUVVhQktkQ3JxY2pGZTR1RU5YZUJ2aW5HQlBGdGRU?=
 =?utf-8?B?VFI0bnVYVlovYk5YUlhJZDdPOVY1eW11ejFKKzV1RDhoREF5Y2FILzdKSURN?=
 =?utf-8?B?TjVZZUxuOWdhbTV5MEJGK1MvWlZ3Zjk1WDQzUDVUUzhqMXFodUl5NktEeEVP?=
 =?utf-8?B?VW1zZnBvZml0OVoydUQyamJkMzlLaFp1NE5UVGVNV3RmTDBPU1pxeWRiK0JF?=
 =?utf-8?B?UGJVN1FPOXQ2WlhiNjRzWTlaME5TWnZFVGkycnZyRWVmMzM0SllxaDdSNjE3?=
 =?utf-8?B?QnBtVHFlUGFkWGk0NWErc0V2Y2RNWkkrRkt4N0hHWTVKakhtQnU0cXN6Tksy?=
 =?utf-8?B?d0tYcjFCcUg3R2NaTDdyQytlenQ3VkdpYjNBUjlTakZ0TVhyaWNqZ25qOEhO?=
 =?utf-8?B?aGJML281c1lhbytYNmtmUFBQWTRvL20rcEZWdWQrd2ZzOWVCdVRaSzJFdmhu?=
 =?utf-8?B?VUdTS2QwRTNPdU92VVpDekpWRi9NQkp1Vkc2eXErOENlRnV4eXpKQURrdmxX?=
 =?utf-8?B?d0IzcmQ2V2Fabjdsa3hDUysxakhpeEVZVXpGb2UvSE1qNGhiT0FDZk5XaHVp?=
 =?utf-8?B?N05WaTVHWHI0M1pXenVDQVhsRnZ2YWhPbWUwS0R4Y1AxaWlmbldlcFFyMHhs?=
 =?utf-8?B?UUZyZzRJSzg3NndPLy8vUVFzWVJnUENQTWRwaHBlQnMvaXQ0bm1YR3IvTUpH?=
 =?utf-8?B?R2RLdUtEam1OMlJnV25tY2dzdWRLTE8yQURsL2QwRkU4Y2xlb29CZFRTNkNM?=
 =?utf-8?B?QkJDNE53di8wSWdxYWhPdHBBQngvUVAvWWRkR1VzRG5XbzdDS3F5YS9lQ3VW?=
 =?utf-8?B?OVp4RWx2bjIwejBDMVRlbDBnRk1GRnZ4MzBOMzd4VXA2bENocWxpQ1dkUjdT?=
 =?utf-8?B?ekVlZldkZHUzSU5OMDQyTkpuWE9KMXlXdFhBOHdlWk1OdW1HZmVIS01lbUJr?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b4b93b-d903-4f9d-0b46-08dcfdeb0969
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 22:41:50.1517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Paqk/EtnkP9auiixbyukgRKcJnNS+L9JLBF3fVPLwHy6tAGxxyk2a0G7ZiTLPDCq91qk1DPYWH8uA4x/vyn+RbyPHyxIWJ+QhHzcyjopBqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730846519; x=1762382519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZmIbNea67J0FO66WdT+gSEvQ7QcxGeeuXItkhO4oZd8=;
 b=TO7vppt9Kt/SlAUUDIDPNDYHbvwmDZWF+Dz8eAwROHWno2SibkpN/Juf
 RNVSVn+CYFMebqEJlAqp3kAP7l/rbFxNYKeBVzC0YqbsJWOraCVPNF7tA
 zh9vq/owRiHKSTo3MCH0tqPL22OgW0nmvN9Q8npFdu6CgAuVOG+CdaN46
 dgBqZs/p/j8P3qUajUrK/rFIW3+cnyDRl2j8QxGyBxDySa0UibM3ZGoO5
 rduBTns9/qd1JPO1xHUbEuV+mpD/enTM3WnXm8tfyFtSI0MBj2VZkNRxe
 aBNl323Z0W2g0cmKUL3Lu1Weyu9PTW49YWbl/L/6Nzek7o6aVHYiUAWey
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TO7vppt9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ixgbevf: stop attempting
 IPSEC offload on Mailbox API 1.5
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



On 11/1/2024 4:05 PM, Jacob Keller wrote:
> Commit 339f28964147 ("ixgbevf: Add support for new mailbox communication
> between PF and VF") added support for v1.5 of the PF to VF mailbox
> communication API. This commit mistakenly enabled IPSEC offload for API
> v1.5.
> 
> No implementation of the v1.5 API has support for IPSEC offload. This
> offload is only supported by the Linux PF as mailbox API v1.4. In fact, the
> v1.5 API is not implemented in any Linux PF.
> 
> Attempting to enable IPSEC offload on a PF which supports v1.5 API will not
> work. Only the Linux upstream ixgbe and ixgbevf support IPSEC offload, and
> only as part of the v1.4 API.
> 
> Fix the ixgbevf Linux driver to stop attempting IPSEC offload when
> the mailbox API does not support it.
> 
> The existing API design choice makes it difficult to support future API
> versions, as other non-Linux hosts do not implement IPSEC offload. If we
> add support for v1.5 to the Linux PF, then we lose support for IPSEC
> offload.
> 
> A full solution likely requires a new mailbox API with a proper negotiation
> to check that IPSEC is actually supported by the host.
> 

Fixes: 339f28964147 ("ixgbevf: Add support for new mailbox communication
between PF and VF")

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ipsec.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> index 66cf17f19408..f804b35d79c7 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
> @@ -629,7 +629,6 @@ void ixgbevf_init_ipsec_offload(struct ixgbevf_adapter *adapter)
>  
>  	switch (adapter->hw.api_version) {
>  	case ixgbe_mbox_api_14:
> -	case ixgbe_mbox_api_15:
>  		break;
>  	default:
>  		return;
> 

