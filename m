Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B816688E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 02:11:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1D9B8200B;
	Fri, 13 Jan 2023 01:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1D9B8200B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673572280;
	bh=n6ehoJ4MwlKCEbD2i3i2eWherrk+7WBIg3cGfLdyWo8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fVjhhGqeyEfGesjSr60F8ROyjM5++pdp/LGwVtohMeN4gpzPtR3cYs0RtJGWUpmCY
	 rXiv1u5ZEb2MCWCVgzvKO6iNOBOCmz+/y0Eb758yRTQxYBNFYictPYn14izqsk/Jg0
	 9uZYD+BgI3EGzlzK6g4CpbLWkDNYyaIaGDkejV/27ayv3/1Zq8KaGx1wlEZBHOX/6R
	 MH/wyeNw37F5FYjrPYw2osdtbMNHco7TcqpCrgxb6m5KgIDL/FtoFPTLAVewFflOCR
	 EovCENJ3ReadIaqNdHyKJx6Ajq2g/UeVXtf3t5jh5kF5VIyEwGYuL001e2bWxVT1pT
	 hp5jxcY1k3gXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x_ngeGAll2yX; Fri, 13 Jan 2023 01:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6B4882008;
	Fri, 13 Jan 2023 01:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6B4882008
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C89F1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 01:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 309B741796
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 01:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 309B741796
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZQhCLQvbEpN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 01:11:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA54416A5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEA54416A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 01:11:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="303577187"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="303577187"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 17:11:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="608003448"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="608003448"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 12 Jan 2023 17:11:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 17:11:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 17:11:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 17:11:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 17:11:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OT55CYXwwIjndeKf36b9RSJwSxBOlbotMeLe7sy2JhzOiSA2qT9grd6+3P2gbjO++unZLXjT5kTEN/uHgfQqWFmjhDvTtiu/8j4VM28Ng9Sz9NFEMA/uUl8wOlN+QwJGebBnE79dtvr7ftEF00DUj9kHJs9RVcHjKVU0oHFIX1t4mmBtEdh51OOhYrZUnUYqhlKK5ZLRZjIdqoBD9xRG/j6E5le4J7oNvGS1aobijsJBSLP0nnBUumrOZWV+jPvjDIIIs5uUHBiIBwR/K48wQCSYH3Xyu4eZBrj8nJyjirNDaDq3o8jKsdk/285b/anpQmQp5bIo/VOk6YsoI1z1ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwGo6stfsFXS8SKckt34m7sA6KV/vBuRttCaZx926ow=;
 b=g3mCGiJw/wVOw+rQBZ9fMKiHqV0zNmXj6HhSQ0tw6hgfCrhw47Xky4fSYCsB44fAAKfgYKqrMVATUDsIW51e4XbZaOD0AR8h2FPWY9qwvnsJ4mm1+0HJ7PrudY7EFD4tEaNXRREIGszcYW6b9Vsy7zGYwha060fOvWlmdIf/VYpPaFI26gFtSkG7XdHQNCcEfYpwX/pIgyOC25gE+S46G3w4zjMrs1MShMxm02/anzzqdNYhRsBWAruap0aJX2QTICf+93hV+e2Yz42nQx5LzA2BqHdvt0W+pKkyxG7ulYjv2IAU89/57CzpSPAfQ7vlFd9Q3zB8/MNX7QEWLdrIMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 01:11:07 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 01:11:07 +0000
Message-ID: <4662dbfc-171e-cdc2-7558-137567e05c25@intel.com>
Date: Thu, 12 Jan 2023 17:11:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0096.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::37) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: 89dc8802-92b0-41e3-1205-08daf5030bc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QQ217Fa9DdSRcjkoh8Ps8r86pCmzslMidazAj3a0p31EkSapJwxZbqAeQk7ulDCfZUpJ5FJsW4eXziIre+LKAlcC75G8FBKYTTU3SdvB0vyX9j3X5HRBWm0rAvLYTpiPCVT8XcDI3KUwcOa6qN1mLd3ew/jpZhDARjbeWIlRStlgXI07mcg77pzPgb3vETahAM5Z1apmXGxonjZwJYWl6QBCAZlVKTM5g5cnwOkkYIc+Aya2mQ6BUjL65r3eo/AadxZycUGAdb7mhkten87B9UaHBr8CPgT6BDmXJKbJDZbIQ9EP+Ga8BMbJXwJb6qlZmREIaJ99a3A1WBqawsoHYDTXuwI7D3HXfLt2+6cDSfEDM3G+55o1qOpIITQJW/aXR1PONx01PVcLN5YUODX/TqoYM2ur4TCTZWhhPsvR9htrf6jUf6Q+tmfju0C/irQSFGTp0Kp34K14yKzkxr9vrVf11O0gAVP2wyVxXZpg2bvsIFK2waA4GNREkIbaCjJ/SQKQOwg8SbQI8q72UMM/uYVnNKigclr18+RxpUgmYiPuQAMo6GtQZKvN/T86S2x7fRTo76cGU+CnPfh9B+VOfRqCZOX5QXroNi4dUYsnzt5205hnoAbOu9KskbMqII6dzFuXeZxZDaJKnRrQlj5M8orj+0CJJtfuVxx2PkPciYE4TnArhrbwuAdjSylhl0wvoLATFugjp3wrHE1zi+tpNo8CNdOAZvWJeps2xbmT+tQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(136003)(366004)(39860400002)(451199015)(6486002)(31686004)(478600001)(44832011)(6512007)(2616005)(26005)(186003)(316002)(8676002)(66476007)(6506007)(66946007)(66556008)(41300700001)(8936002)(6666004)(2906002)(4744005)(83380400001)(5660300002)(38100700002)(82960400001)(31696002)(53546011)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVFkcW43S2tMOUlmSUtJekN1c2J4VndqNUx5amRRV0REQmloaGo2S3l2czZw?=
 =?utf-8?B?SlM5ekttVWVHbG9VaFhEWE9zdEJ1dDkwTHMzOGhGcGZGallIQ0RXanp0ZS9W?=
 =?utf-8?B?Q1dQTGtiVHp4M1IwV290MUtJK3VBUWZsbW5OTHRUQzh6d3ZYS2c3clNqM2V2?=
 =?utf-8?B?MFdIRFRZS1lLeklaYjhLOXVXbnBOdk9EbXdJRXMwd09MeStmOWJ0TzVjNjg4?=
 =?utf-8?B?cjJFdHlvQzFUMS9hdmwzR05VZVg4RTZRSTMxQkMrV3YwR2NybHRBeEYwZzZp?=
 =?utf-8?B?Vjd3QmF3cWpoZWNRV1pFK3J4REhMZk5HKzNhSFppcUlHdHZTd3gxMHFOMVBF?=
 =?utf-8?B?U1U0Yk1mSHZHQzY1Q2N4U0hsS0dJekRkUXlMMGhKMUJIdVpsNVMyNG9Fajlz?=
 =?utf-8?B?NWRjd0FBaDVVTC9ma0ZxMXB5WHZlelBTWDJjVXQxdWhabUQ3ZjY3OWducCsx?=
 =?utf-8?B?VE5RWDJ4VWtMOFRHVGliYWswOUlTaVhXUEdDbWVMMlJDa1h3dnpHVXdUNkgr?=
 =?utf-8?B?Y1NlTVJKSnlpYytzbStsQWx3aksvMVhjQllRTi83RS9GWnlwR2dNSE5mUFNC?=
 =?utf-8?B?UEw2ZnpzMjlYcFZDcEpLdWd5RnBTUXNVZmZkQ1hMWnF0R3hYdkM5WHcrbW1v?=
 =?utf-8?B?a1Q5R0lxcHpKcTVWdzBSbXRKZGFvV0hOQlRqa1dxVllFdzBhMVBRbnlFUXhG?=
 =?utf-8?B?RXVyL2NOay9UY1lBR1hZQTJMOHBGZ3hxNDJTWlZwcDZDZjNua0RYbzBkdDFM?=
 =?utf-8?B?SEsycCszMitRY296aDBIMmdhT240cEtjVjhtenRWOVhJak90WDczaWhqYTBO?=
 =?utf-8?B?Nnk3c0lKK2ZxdGdIUUNzRCtyUUhMUGVQY1JFRXpvSGlFazdHdmk2YnppdFpS?=
 =?utf-8?B?Vk1SZXVDYlJpYzQvOUo4QWhNSjBOS2doemRxcm1BYmlQUDZCQTZTdTN2WW0y?=
 =?utf-8?B?ZXBSNnMxVW03MS94ZnBueVJ1N0ZDVVJSMWN4NlpJQmFuVTdxU1dXYWNZSVBC?=
 =?utf-8?B?Q1R3Y0piZVNLaUJJampHU0ppb256UjJlS0I0QlFnWHp4WW9TL2N1WVFCNVJS?=
 =?utf-8?B?UXdUdVlDdmZKWXBOVlRiWjhyaG9oREsyaG5sNkNCM1A1NDh0RC9WMFh2L3B0?=
 =?utf-8?B?bUt4TU1McTVwTDAzS1NjNXhFL0EyRVJrZENGUUxGOWpMN0QvRzA1aVdQZ2x4?=
 =?utf-8?B?dDQ1Y2FzcUM1bXB0K1E4d1hqZ1hQRG9PUUszSUZCczkySXA4RTFmQUloN0hQ?=
 =?utf-8?B?VUZzN3FSNldwTFFPdElkRWJkYjFkeHdFNWFaUG14Y2FyQXhCdkFQaVlIcm1h?=
 =?utf-8?B?RkxGbnBIR1FlSDN0WnE0M3RFemhGb1g2UnhwWWozeHJvWExCd2ptSmNpRkd5?=
 =?utf-8?B?WkczUHFaa1ZkTm5pR3Y3RGx3QlgvOEoyMUhzT0tuNVlLZ08ybkJPektZOVdm?=
 =?utf-8?B?YWFvdFdjd3pPWGdUZ0tvSURQS0VDZm1OZDdVSDFrZDJHMi9pWGF5RDdsSmc5?=
 =?utf-8?B?OGRWMU5McnlPQlRaK2IvU1hHdTdiR0lmY2p5bjZqcVozaHo4UzZ6Z1YxUjNG?=
 =?utf-8?B?Wmc5b2liY2FRbVhlRUova0JhdWpHMlZnbXFuaTZJRXY2cGlLa2FtdlcyOXVD?=
 =?utf-8?B?Z0pNV29idDFUTjFWdWZNeFpCVHNDZ2g5YklxUFR0aE9jeVpyN1NHYmJ3ck1C?=
 =?utf-8?B?dy9YU2NlaWwvTmZRdHM1aGJQWUVLLzhzTlBteFB6S3FTVjA2dmx6aFdkUU56?=
 =?utf-8?B?b1pPN2NGWVBZQzBBZEdHWkJETmJtelFqMk9tOTRjUjFvN010RnZsTVlJUlZR?=
 =?utf-8?B?aXlEQzV3RjA5U3BqVTRlVnBpcTFRQS90cko1QzN3RGI3MUFBVUNTL1o0SkpS?=
 =?utf-8?B?RFc5WGF2Zy9TeTlYVFFDMmx4YlhMV3NkUFFTT1JCMzB2YjVxQzVaai9jd0kr?=
 =?utf-8?B?eE9CQnJBQnA1N0Z1dTFROUtMaTdtSWNzOXlDdlVuWW5SOHoya0xKemlSTUxR?=
 =?utf-8?B?d3QrU28vaDFDMUkra2N1QklsaGUrNjBKWEd3c01Fd3NndEhsdC9mbFE3Q0Fi?=
 =?utf-8?B?OER0bGQvVklmYVFYQVNObmxTck1GbXVBUUNodDU4Wi9sMUFrWEVXZlVEWkpG?=
 =?utf-8?B?ZW11b3JxNjAvdzBXekRyMTJ1VC9FM1lwOVpaNHY3WENSM3B4Vy9aNWtubXFH?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89dc8802-92b0-41e3-1205-08daf5030bc9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2023 01:11:07.6227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhcKYR5CyT+dCLa757nBIcrbgV50YghvqEhubPOk8YSgmaxGr/Zh21XzZhKFtKVF5NZr53FhH6zeXMu6UTTTCPSh3ITOp0MZnui6YcZjdYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673572272; x=1705108272;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1a+kCeCCCeKW7r3iLuESV7Ox8OQBYNm4AO12HZ4J1bI=;
 b=G8BZB6mzJx2r/F2G38s/7r4Ge61KCG3j68Lr1dzo/JBLyQ5YzKvw0aNJ
 KUFEK1JZBDf7hHdeD2n0QfdHD0gqCv3J4U2ewsLfdX6K9muSM2ShhYB2F
 B8+D40nVj/y4sHcQ/drmAApbOe2re7NILrlwg1dp5N0JEnjA6D6ya0WeF
 6z5EJf0DmI+o4e9vaFoz0agoFoE3i02y7dcIlmqVY3qjmY+reU7ShK3ff
 ORzqdWwR4W0XHXWnxyeOQpZpf5N9OSCGd0HpgXGLS1vjBj4HpgbyHYNlN
 jOMeoCYcJoMtdUgQzVhFL61AD2kHTnxbrJ1SZCm7nr9Y7dcvljxPN93Mk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G8BZB6mz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/11/2023 3:01 AM, Michal Swiatkowski wrote:
 > Re: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex

Looks good but title should always contain PATCH net-next or PATCH net. 
Also doesn't hurt especially for net fixes to use --base net/master 
(assuming your remote for netdev net tree is 'net')


> Call trace:
> ice_set_channel() --> mutex_lock(adev_mutex)
> ice_vsi_recfg_qs()
> ice_pf_dcb_recfg()
> ice_send_event_to_aux() --> another mutex_lock(adev_mutex)

Ouch, didn't lockdep identify this? Let's hope it would find it if we 
turned it on.

> 
> This call trace is reached when user try to change queues amount using
> ethtool:
> $ ethtool -L enp24s0f0np0 tx 64 rx 32
> 
> Avoid double lock by unlocking after checking if RDMA is active.
> 
> Fixes: a49a2713f00e ("ice: Prevent set_channel from changing queues while RDMA active")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

thanks for fixing this!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
