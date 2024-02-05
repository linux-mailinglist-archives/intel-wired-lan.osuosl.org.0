Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DC984A2BD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 19:52:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D998F40A8A;
	Mon,  5 Feb 2024 18:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D998F40A8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707159156;
	bh=vZ5JZGopWclSc1Razff6qBEwaHBJHsdnAeW0iP1gCAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AIxmLUNn75eli8pOONcAdvhgF+nzTxbgkBzXZmrKx9CFeTCm/Dt2O3znQ++7GjE3A
	 PoGYwPtDpMzGhB7pqiCEDA5d3aXIITEo2Ulg6s63uO28dGUNX9oV81HealUPt9oEUQ
	 ACPt8l+0n+pP5DL1ajXAVQBXiOXZjEkq+rkM9od1Ow+U+bU+mchDu0kPWY8T6tirHa
	 8jtYvo7GP/OxbE26BUDV3jIs98AZRn9tPwY/vCo5DKGeg3AxnPkL1x2XzKq+/Q913P
	 L++WbC6iNC1Lr4ROw8/6FUtJUfend9/hqDGvfBdLIXlLKCsW+cb6XBNpGoDniSnY0/
	 Pzg/kJ6TXLItA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLw9WYAFW05J; Mon,  5 Feb 2024 18:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B90C5404AF;
	Mon,  5 Feb 2024 18:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B90C5404AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 746A21BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 18:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4934881FF8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 18:52:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4934881FF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6EgEOZ1gdoEc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 18:52:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40ABA81FF7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 18:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40ABA81FF7
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="18109566"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="18109566"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 10:52:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="1131659"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 10:52:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 10:52:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 10:52:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 10:52:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 10:52:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggx1tGUUwJXKbUVARAWYFHOspsWExaXbshPEJNKdKfA1L2Sh472AXjTUbpimjGb3cY0sqzTC+bbN+2vrYeU5lXa8mHJ95tZ9jqPVDIQGRhpSPJFjTyoqkPFOsOeeN0PtINh93MNN6Ffm6gIhEZXqW7ZuA8crFtRysBck+UqUG02Ani9p97vETDLPF11GhJl3jSp0lkQdwxmZqUSr9WCHDnEobV8nFbSaFDTJbVGtuG6owjUiA6E/w6PRFBOfRlM5ueQDI6g3R1Xbq/W9Q1t40EvRFxhSU56J03bA027ZEg7zzSJWh+GM4+tU+19vLLxjI53D1ri4zh/bAP9bYeTaxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZ5JZGopWclSc1Razff6qBEwaHBJHsdnAeW0iP1gCAA=;
 b=N6xs3APm9IT1jF04t19UFGKkDtdk+s+JXgCGDSotw2h2BaUdMmSUx7pziawHPm0pycGf0rcipLypfl7xiS/zpxOyDVemASJOjKai6fFYWrEfUeQpKmgWGcGCET03xGHWHhDQJI6S+Mh7hOJTbgin3WraPFTHKPxMxQmJnX8TBhPrI+H+3HvWT5AhDhwbV//EgCVHAvC2Es8tCE/njTXVud98ZHKBGsxDaG4qZQfwmF6IIcxdNlqWlvf7Ofy7u9WH86cKsXSVomwgRXAYn6Ybx/XIjmeft4jpzGb5vESwTgEGclszfZ2hgfhj4GqCZfmCJrhVhfsO4fnyQ5knK89IzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SA2PR11MB4939.namprd11.prod.outlook.com (2603:10b6:806:115::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 18:52:16 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c%2]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 18:52:16 +0000
Message-ID: <8db8ce6b-9b4c-4e01-b4b9-9c70bbc70740@intel.com>
Date: Mon, 5 Feb 2024 10:52:14 -0800
User-Agent: Mozilla Thunderbird
To: Geert Uytterhoeven <geert@linux-m68k.org>, <linux-kernel@vger.kernel.org>
References: <CAHk-=wisik=He=zySDRHq7fe6k_cOXZeZiCkR41TmbzK2KNZtg@mail.gmail.com>
 <20240204194607.3067634-1-geert@linux-m68k.org>
 <f839ca42-c55-4850-28fe-cb198fa9db4d@linux-m68k.org>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <f839ca42-c55-4850-28fe-cb198fa9db4d@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0318.namprd04.prod.outlook.com
 (2603:10b6:303:82::23) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SA2PR11MB4939:EE_
X-MS-Office365-Filtering-Correlation-Id: 75abbf65-bba9-4cdc-1c5e-08dc267b92ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yBLS/cHHXP46GTbRxHrZJsX6+2LS0J7olLfsWaDYWXcfStB4BVTJdSpBYrKhPDjb7QzQJ6UElN8D964lC5zkbuCd0CRsSaFMRHmnZlw6yQaQlfoRO7ehKCDmk8+qoGm88kD1vZWszwmpqtfBi8S2ZcjWr9HuwOG7CxDWB/MDOr8Ts2EXEvMiIPxZSohUViW9nVVlceArYsUTPNnQads6R5E7Gquf96Ka5eT0ZJKbptQtR/1ND+ZC+WSXPnb7ULOTkTI/z+ekCn/diaMeoV1SdgDOQPEmQqhGuxgiaaFCMVYjCTOeFQlEGrQsz+40t35wYVuNH79YoS9Ygxe/ZmBi18/q8HVRylyO/RQgBGZIE14yk0lbU+L4W6hQvjTPEjLcN5y7fDzIVvlMl6vOFa/2Rtn+mEJOqq0zAMpbaXKORfpH4Vy1JxqNsJW2ddz3kOjmZTBxIK4ETvM/rKokabMDwLUh+LwM5JcNP1qR3G2ZFZ6ZjqaSX3hN8xaHENYUwgwFOfeRXcqki4I5A3dMF7q52zvlpCZgsWBbuRE59KpLOMF3pBr4JUnmo4pxA6r8zXWiUGWxmGQsuvHgJg9CjNVnf5vg7xKG/LIGOdZQPlB2ZrbfKXBufTnc/5I4zVwL27YZG+I9aQw5jth+wY0s4g5A1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(346002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(41300700001)(8936002)(5660300002)(8676002)(4326008)(44832011)(31696002)(478600001)(66476007)(66946007)(66556008)(86362001)(6486002)(316002)(36756003)(4744005)(82960400001)(38100700002)(6512007)(2616005)(2906002)(53546011)(6506007)(26005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjFSV2wrNnZZRlRxSGs4Z0phQ2pFWnlqeS8vc0xtcldKNU9YQUJ3WU5TQ0FN?=
 =?utf-8?B?eWIwNm5Nbm9QTHo5V3N5eXc3Sk1LZ1FzRTRJMmhKUWp1cDNacHVna3owTFNt?=
 =?utf-8?B?S1EyUXVmQmJpTHE1NENKOCtyK2NkVVFzbXpQMzhjblIwSGE2aGpEd21QN1N6?=
 =?utf-8?B?Tk9EdjZiQjNBZDVkQmRKKzJNTHBoYXVmblJFSDVrMG1iWmQwVWVIVUozc3o3?=
 =?utf-8?B?WC9NNzRPWGZsU2FMSlBXb1Z6VnNibEZOSVN0OGNHUUhZZUJrUHZQL0RMWStN?=
 =?utf-8?B?V2dqRlI1ak9DVXpCMkdlakxUeHQweE91ZE9tSG9xMDhwU2ZDcGczbkJEZktj?=
 =?utf-8?B?UHlyT0NwbnBiSXhHSS9MVi8zSjJVSXVOeGEyejdmcmVibHFUNG1Bd1hZNzY1?=
 =?utf-8?B?RG9EcGxHUHNzNmVqbDI1czc4Mkx1cTZsWmw1K1liUkVicnhDS09wVlU5YUp2?=
 =?utf-8?B?eWdEWlVRbkhmaEI2RHpNQlM0TVdXWjlvK1Q3alhINDVqUHpxVTlSckllWS9N?=
 =?utf-8?B?eWtRaldOTFplU2JKRlQ2Tm53OFRxRi9DNkwvbnJLR2hEcDdVUHg4NHpOT1Fi?=
 =?utf-8?B?Q3V1aXNQK01hVVcxSVZpVGwxMU9WUjc0cjVRUnBXcXRYVmR3WHZCR1QwM081?=
 =?utf-8?B?VjhEVTEyMEErRjBQV2l3NzNRMktGemlpNGxUdVFncTBSY0FiNU9oWDVvZEl4?=
 =?utf-8?B?UTlSK25rVFdZM0dRQ2VFOEI2cVRadHNYTko0YVVlaWtSWXY0a2ppZUl6MTRx?=
 =?utf-8?B?c1Jubno1U1cyRzBJMUdNZzZTQnRRcGJSQjVGSUcvQ3h3M2ZDV3IzOXdTUnJK?=
 =?utf-8?B?S0VxUWdkb21vempoS3lLMURQaHhXUGJZcUR6T1A1a1FLTHdjVGlNV3lXdlRx?=
 =?utf-8?B?YlExNnR4Z0NtN3IyOWRNOWFhSVJtUW01b0ZxSEZUSmpPLzA3SWlrV1lvU01N?=
 =?utf-8?B?dzJDZ3NIUGloOHlZenNWdkI2VXdhRGZIbVN3L2VyOWlITnp3TUNDOUlweXZE?=
 =?utf-8?B?aUxtWnJlM1JkYms0allJZTNCanB2ZHRldjhzMGlPMU1OaFk4SGt5eXZ1OW9H?=
 =?utf-8?B?dXhvbXN6YzYwYzBpTkp0eWpwYTZyNzFLVVQ3QWxsODBqdkFobTNjYkk2dGx6?=
 =?utf-8?B?TUFKVnBiak5oaXVWVlNPQXEzbGswODYxN3VWSDVLSzlXT1lyWkFZaVBKN0Ri?=
 =?utf-8?B?Ulc0c0xqUWJadXhhUFhjY0JUVEl0SXp4WndtWGQrWDdMZzRBYXRUMHByYUVy?=
 =?utf-8?B?QkFTVVB3bE1OQXMvTTF1NkdJYjBFbWloQ1d3YzRCeDVvb2dUaitSNFllbGdM?=
 =?utf-8?B?a0VYRTFvUzBOWkdlYWowTk41M0NOaDJrSENmYWpPajRWRHVKRUJxcU4xT1d0?=
 =?utf-8?B?akdwQnRodnlkeDg4enRMUmUrbmVmd1RJMWYwTmk5RUFwYlBqQm9aQmZBLzlJ?=
 =?utf-8?B?Y3g0L0NlSlNXTEM2ZlMzc1JvaWZVeEtkaXBzTVNFU3BRYlZlb3BqNk4zQ0Rj?=
 =?utf-8?B?NithRXQ1Tjk0eXQxeFFGcDMrK093b1FmVWE2MGNqbHRPL1RpNllFK3VKS0Vv?=
 =?utf-8?B?ZEZaVm9pd3FkcG1hcU5TYU45cWRhZGIzcGEvZTd1ZmwveGJkWTJ6bHZZMHJz?=
 =?utf-8?B?dFNvWEZZTWJLSnBjelVwMjBxVWJTb3oxbjQ3RmhzV0hZejk2QU1GK05RbHBk?=
 =?utf-8?B?QVpjb2NUSm1venJrMVQyMTBlcnA1MUZ2aHhDNE5udWc4Zk9EQmk3dFpGbnll?=
 =?utf-8?B?NzVBNUlMazdiZ0JhL0E1U3ZoRFh6ejhzbkh4dytUNmpQamhjRUYrSzFIVXNy?=
 =?utf-8?B?elc2c2d0M2JlR0tQQ1NKZDRtQ3JBNWJ1RHJvNnN4aXFhSmo4T2FsMlRWWWZV?=
 =?utf-8?B?cVZjbEw5SElVZ3lSUUV2TmpKdWhRQmhncEoxOFowMXl6SUFiMTlmc09yWU5C?=
 =?utf-8?B?RlViNU9TODcvTS9oeXVRN0t6bGZmYXpPWUlYTzEremtBWG5aQk15QWgyT0pW?=
 =?utf-8?B?ekUvc2ZoRm5PckxvcW9VcUYrbHhXQzVvblkxbVQ4RVYydG1NTyt1TE5Wb2lR?=
 =?utf-8?B?NG04Y2lsNEwxQkZuMnhTZ2d5dmNSUkF1bWlrTlp5dUd0RXlUZTZrbHgwVWJO?=
 =?utf-8?B?NFFOWnR0NEh2MjlqM1IyTGoxZFcyUG81bis0bUxkZGMwLzdtMjkvNG1ZcHN3?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75abbf65-bba9-4cdc-1c5e-08dc267b92ca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 18:52:16.6257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SWLO2aaWyXIP1zq8UIk2D/+/oPLTi0Qx1G9AJ22ivLTx9eFrJyko4ih3tXW+N9OBrxrPi/cF0ri1nHBNNS4kgbQRRS0CybsaE/MVtZazRKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707159149; x=1738695149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ydyXFE8qg7iRDYCH7G2g/WnRDzoM1g5VtKu7L3tAp0g=;
 b=Olou1Oo8rPkxKaNAsZAqY/ROBa2XlauTiZ5FbaBerzFkA3honvtEWtTW
 YmDhm+HDtH2asqDfn56WB7wat563Iw+ctx8yKbifUHRp9Oyx9zK9MN7op
 UIDR6X2BVDNQez0enYvmTUurehJO/NlXpUN28l08LigjHi9D0cG75Dv6B
 +HkA1j0K9ilp7wUx3sspcax87jQ88PS+/X2d+vFgm9KbpYGWUSEdKaXyr
 S+XUHkGAFYRetIgGYF5lCCup1K8VbkdV2GkS9YOyFOYzv2y3Jh7lf+KOQ
 vu0PrK8+V55RRI7bp5QWG5TgDYvAddiEHXFB2PXCpTji8RuBQ0ox/XdfT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Olou1Oo8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Build regressions/improvements in v6.8-rc3
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
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/4/2024 12:39 PM, Geert Uytterhoeven wrote:
> On Sun, 4 Feb 2024, Geert Uytterhoeven wrote:
>> JFYI, when comparing v6.8-rc3[1] to v6.8-rc2[3], the summaries are:
>>  - build errors: +4/-44
> 
>   + /kisskb/src/include/linux/compiler_types.h: error: call to
> '__compiletime_assert_1093' declared with attribute error: FIELD_GET:
> mask is not constant:  => 435:38
> 
> drivers/net/ethernet/intel/ice/ice_nvm.c: In function
> 'ice_get_orom_ver_info.isra.0':
> powerpc-gcc5/ppc64_book3e_allmodconfig
> 
>   + /kisskb/src/include/linux/compiler_types.h: error: call to
> '__compiletime_assert_1104' declared with attribute error: FIELD_GET:
> mask is not constant:  => 435:38
> 
> In function 'ice_get_itr_intrl_gran.isra.2',
>     inlined from 'ice_init_hw' at
> drivers/net/ethernet/intel/ice/ice_common.c:984:2:
> powerpc-gcc5/ppc64_book3e_allmodconfig

Hi Geert, thanks for the report, I'm looking into the FIELD_GET/SET
issues being reported (both on rc1 and rc3)

Thanks,
Jesse

