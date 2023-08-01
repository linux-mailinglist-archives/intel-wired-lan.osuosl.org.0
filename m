Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ABE76B7BE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 16:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC03940638;
	Tue,  1 Aug 2023 14:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC03940638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690900658;
	bh=RmFPB3GObSEWmw/yqTYK+GT23ua7hqI28YkrQp/Wfok=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MG3R7LIyT8KTxHoj2oivWef2O/B3TR12LksehONilP1jnlL7Lhkt4IngH61p3UOVo
	 aWoetcvyw2LpZQRtZZGridm1CZBMpIGruupPtSaLTy5M+O9Ym/Ugk9PBAnUXrhbfeS
	 x0dsyfoK1GOz5V8UXTG1+/AvEeTAq15qX1rBtrl13tCYTWrEEV/hxRvIITyH4OP/oG
	 mxfSAlWgfy9/07s7nK86VDp3qGr8MUpViao2J3OhjDGYfhOUA790FfTFtqhHe5Wm1I
	 aAhUbAnlDtH+xZhardTsTni1h+K27cInAYx/8x8QmY7E7XRk9zn/c+kLphCw75t9SQ
	 Uljtyhy/Msxzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lz5asV7m3P_g; Tue,  1 Aug 2023 14:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C6EA404F5;
	Tue,  1 Aug 2023 14:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C6EA404F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDF741BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB2AD4076E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB2AD4076E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9fL0xy9cMeYP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 14:37:19 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F79441824
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:37:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F79441824
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="400261488"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="400261488"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 07:37:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="678690189"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="678690189"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2023 07:37:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 07:37:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 07:37:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 07:37:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=euqJxnazTMrsMTy9hP17PTdNqMpT2rjTc2cshKe2Sgx81XlmWMKxzD3w5hkT8nFrST3Ik7Vk8hzi+bJsCbrAECPpn14i4eV9CGIQPoJYu+qKSwBkLLx79WH/sMAT3bl1i40pJXlhnpeW1wo5DhgqMgXwEum35CvvkxZtj1SR7/KI5sH4PqiPgIbexfA0TG1WEBontS1CLMc/1R0zU4D3DxRTKa1XHaV3co7LKjeBvM46iGPnPnrdpwnrNd2WZLTujlyjS1n3oivx4ExnO8agu0AR+I9znEL9w2Zwm11b4e6f7R+IiXBZpmm6ZqgUKyQsPuwXRUV9Ra3Zn7i468ZLSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5sQzAR2nPpjzeqSWGD1sYy41tKBvVXV/O/A9s7bWWZU=;
 b=BKXsF+H9ttrMyzheNEvpV78+VgQ/JH6RpAAzyl1AG1Q4dOQaI0roKgSqXfzNOAglAu857YGMvCXr69PjZEYJLoY3siG5m0frQM7Pfd/qSmeqOC12HeO0TITFNn1tZo4hytemuL0/qAw5s/lkjLoyZgfCpA/Jp7Ewa6m4Xcl5nCQQaApYIK2DWjk7htOlLHRYaBCWmSiJDhmsAwbH9qkYzAvbg+DvOllqeKUs+og5SIwvsFpXapTvqpygJi7jgQDUvqQoIojZj190XeFqOs2klalyVy/e4+GviESQ1At3OlHDfGMffY/qfG4bxgeiO1uMh3jmD8VbYiGROO6rbYEIpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by SA0PR11MB4701.namprd11.prod.outlook.com (2603:10b6:806:9a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Tue, 1 Aug
 2023 14:37:08 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 14:37:06 +0000
Message-ID: <0ac9d86b-c659-d4da-0838-7e0e447d2e49@intel.com>
Date: Tue, 1 Aug 2023 16:36:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-3-przemyslaw.kitszel@intel.com>
 <f68aa06c-c0bd-a614-914d-3e94ff8f4ba6@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <f68aa06c-c0bd-a614-914d-3e94ff8f4ba6@intel.com>
X-ClientProxiedBy: FR3P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::23) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|SA0PR11MB4701:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f825e3c-a7bf-4488-e585-08db929cc726
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xvyhCNMD+/yupE/OZwJaq8CYW6xF92JThzlFhapjeSvHyyiwIhDPLLi4Fr/d3my1//y+zq3DjzNGt/lJyiQIEm3lYOMZfqeqh6hScqgzQ1zeKbtb9thdL4GuvYCvjfNpc3voBJ41e2pb7tdZ6mDZlRut0oOtl5oWYF2bc6igW+ZQtgrm8xq8to7qJ43hUUN1nlzgzm75PHhoK4pIyI+agHWpRUVX/W3ITtZPlZthD4DDmKOtrlCPcHD5F80PAZOCBNxqwFNUEUHLUUQk+0X4loabWRbX++pBjBk3pTCijmcWuXOxM7s8vMupNbIb2byqUZphh+mpasAw26qGWlO5vLvkAOA+8b4s2yUvrBKOq0IJ+uy1pYYSdOQWW77a0thf1JWwKP52uCeFlP3VRPkznxxywLyG3JLaw+iFk3B71xKz7WJG6qzXf1UeeY36ewlp1G/A2DdE82QVThh/lTPXxKe9wXPIVDvS+Qxl0TBOeMv9oTdbQyIrnAorJn+01l6FcaGlbrxsO1aqY2wOUOVWhvkd1M2Kd3mcXeoDWsYbt28xPxHkQse2y9tXe9NGnN+HHOGfv/LBM4/bA1qcxZcyNh6XOP59O5xocA3HgrV0UdUkoZtWlEAy30qAiO0wiFWfTPQUCznTX/ttPP/amiHeVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199021)(38100700002)(66476007)(31696002)(86362001)(8676002)(8936002)(6862004)(31686004)(316002)(5660300002)(6636002)(4326008)(54906003)(66946007)(66556008)(82960400001)(37006003)(41300700001)(478600001)(2906002)(6666004)(36756003)(6512007)(6486002)(6506007)(26005)(83380400001)(186003)(53546011)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEcxT3BrZDkyV0lqQnVPMTk3azY1M1k1WlQ2MXFraEhQdzZSQ2xhMXhuVXRM?=
 =?utf-8?B?QjJXdWcvOGQ1azl5TnBvTWdUc3ZXaTRIT011SlhKZEFaN0tOZXBMbWMxU3pW?=
 =?utf-8?B?Q3p4dnBwZGticjVwWkVVWjhMc2tyRUYrZHBta0Z1T1ptaGZ6MXRTcm9oTEI2?=
 =?utf-8?B?dk4rWTRtMCtDbEhJMEI0Z0l1dGYwM3Fjb2JEN081NytVZHlVb2tyZk54TnJr?=
 =?utf-8?B?TzcwcjBSSVdiNDVVR3NJYmk1MVJoeEVnRnpwQUlrcXpYdmthQ1dWUktHV2FK?=
 =?utf-8?B?STlvbmhuRFE4UlZsOWJrbFJQYUZDOVh4NjVtTUx2N1o0WGhqcVFVcFdibTRi?=
 =?utf-8?B?cVAzdXVwYnVMTW4rbkQrWVI0Wm9hZlNRV2V5NWRiR1JFbE41TTZmekdQNXI0?=
 =?utf-8?B?QVJ0dVg3bmtGQXRLRlUwcXpkQllVRTh1TCtGVnVUc1YyRnRidEZVdU5oZ3Vh?=
 =?utf-8?B?blRVZFRMYVVoem5tUlVJakZOZkVMd2JhazNhNHRSRFJFRjR0V0FOY2VzRy9m?=
 =?utf-8?B?Mm1pTEdBUGh2MTRnb3lINGFZbzZUZEU3cklTUndkUThpb0pkbnRxZkYzNmZo?=
 =?utf-8?B?VWF0RUpLanVxdGJJWXpMVUVCWGRscWt1bHlaK29FTlB3aUxmMVlkVnlaRnZC?=
 =?utf-8?B?c0V3aDlzakc0Rjhjb29TV2ovQnBVenpvL0FadmtBRS8yTmxZR20zZjRsbHFn?=
 =?utf-8?B?MWt6eU5kSU0vZnZhTGpTN0U1aXNDR1hHaElrdjhQYXlZdWRPaE5aaHdaVmZT?=
 =?utf-8?B?SURnd1NHZk5VZHR2MDArZ2dyVUhNdldkLzMzRDhjSzVVay93dEgxaGpybzlF?=
 =?utf-8?B?VmlEckdjcCtTcXRVYUhZSGxyeTBSNVJ5VUplTm1MZ2tTRnovV3Y5WXdjS0Uz?=
 =?utf-8?B?S1VYM3RsYkw4dFdCSGZyNnBKUVR3V3U1cTg0T0FCeExyanJPeGdvZC9TVjBo?=
 =?utf-8?B?UCtQSkJLenlrVmFJTVpJbm4zcXg0VDBxR2pnSmg4UEt5OWIrRUNsYTNkUi9R?=
 =?utf-8?B?UUxHMEJEMm5lWEp2VjBMQ3pac2VQTHB6ZU1SK3pkTUN2bkpKR0hjYWxjZCtI?=
 =?utf-8?B?S0RTQTE0TlpHS1ZoeFVicU02UitNbS9iQzRKUUY3NmVzb3AzOVorREFlTyt6?=
 =?utf-8?B?bHF2RE1QK25lN2JPVGFtc0NSMHVyNEZ3VnVReHQzeEFkcHVGQ0p4d0hyWmtY?=
 =?utf-8?B?TFNKUWtEVk5tMEVTdU5PZHJ3K0pnY3N1b2lDSVBGeGxNTEUyeElLb3hJb0Zk?=
 =?utf-8?B?UXBZaW0rMiswUUhQcTVCZTI0ZThIelYwVFRkcHF0WWsvS2MrK1B2SU1NcFd3?=
 =?utf-8?B?NUkrQzFRZnNzVHNHWHRRd21jeGREV2xQeVNzdjI5U0xUaXdrVnBaaEFFRUxF?=
 =?utf-8?B?UjRtTWpaWC9PMk1ZM2FoTDlMZVJodUJJYUIrRXN3bFBoMkowd1VieEdINE53?=
 =?utf-8?B?TncwVDRIVzZSSFozRzZQczJBcmt2RG1uMDJyRFVJLzFla0JhZVhZalBNZCtL?=
 =?utf-8?B?N2pQTHZvR3puR0hrSkNibmhiejlUN2xJeGxLbWZrbDQ3T1JPRFBGSk9CeEkx?=
 =?utf-8?B?VHc3ZEJHbVpGTEJWYTNobm1GVUxuVy9uSzNndHJUU0cwSjdKcDVVK2NYVk14?=
 =?utf-8?B?TFJic1JWeUVzN1BzTXd5WVFnMi9RZUxZK09yRzM5ZEQxYko3SlhsdFo2R2Zy?=
 =?utf-8?B?djBBRUk0VkY3QXppN0VPdHJjMDFPckcyS2xaK29jRlJqaUh1blp2cXRFNzJt?=
 =?utf-8?B?VHpwcDZ2K3F2WTlEY2JnT1IrS3FVcWRzMGVRK3hBWCsxWDdtNjY2WDRoeVZO?=
 =?utf-8?B?Rm02S1c1Sk16d3VzazFvemNBUE9BeXJBUG5yZWRwZXdsOEJZZ2xZVlJsaHdu?=
 =?utf-8?B?cjR0Y3NDUEVEaVN2S3Q3MHZhS0VTWXJFV2JtcVJBTFl3OTN6b01LT1c5UElT?=
 =?utf-8?B?UjR2bWlwUVlmdFZTbG5neDg1VmI2Y3BrMk9GZGN1WTVZVFBqZy9Cc0NKZ0xs?=
 =?utf-8?B?THhrRTJYV05zbjlMT245WmdpLzZ3TnRZMmw1M2xZQStTSEsrNW1ORjFvMFdC?=
 =?utf-8?B?WU5LeTRrdWJqNGc3ZnZmaUtKY08vamYwQU1sK3QwK3EwVzBSOGdZMDBPejdX?=
 =?utf-8?B?M2RGeXVTdEc0YVJsMkhFRlRTWVdSWlR2NnJ0YTFEV216TndvTnRDTXQ3R0l5?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f825e3c-a7bf-4488-e585-08db929cc726
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 14:37:05.7917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jfhgth26n4onaS9zuNklAsm8F9EFDoPJBD+8ZRWfaQ46hpxZU6Xhq5X2TdLgjWwI8ciIXXONOJ+OIJ8hTWvm3PikJlJpHWUAUhv8A/dFTIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690900639; x=1722436639;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XofRJ71veCvesLVaE/Svf8ol0QemT6f2+EIC+2BZ4WY=;
 b=UkP+ee6hNzqMsa0I+5l+gQdqqA2GknK4ApjEX/K5c/cwtZ5taJZo+JoS
 4RC8j3OYwmSSOo61xiaA/mGv64NQYkyXq/KV/Z11x7f4O49wzFfdvFE06
 M57YlCVapK0dlB2XG6J2lKAwmQhda5iEfIodCop5BI54VT/tdePX6A/Rp
 S5XKH3F48Rpipjh0hyM3ScHRJLODmeHOVanfH96ZexkpAvhoCBYbtUtEU
 mB7j9yLLdF4g7bbbPn0qMPuPsOC+wxS1t0XfunIaBhbrK9tO/8Bvu1gwm
 NWknqC1Gbc1HQoNsZx3WqlwBGpYSE07pCknsDuTNgwpQ6TiDo5KJIOG2S
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UkP+ee6h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] ice: make use of
 DECLARE_FLEX() in ice_switch.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Kees Cook <keescook@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/23 15:48, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Tue, 1 Aug 2023 13:19:23 +0200
> 
>> Use DECLARE_FLEX() macro for 1-elem flex array members of ice_switch.c
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_switch.c | 53 +++++----------------
>>   1 file changed, 12 insertions(+), 41 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
>> index a7afb612fe32..41679cb6b548 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>> @@ -1812,15 +1812,11 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
>>   			   enum ice_sw_lkup_type lkup_type,
>>   			   enum ice_adminq_opc opc)
>>   {
>> -	struct ice_aqc_alloc_free_res_elem *sw_buf;
>> +	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, sw_buf, elem, 1);
>> +	u16 buf_len = struct_size(sw_buf, elem, 1);
>>   	struct ice_aqc_res_elem *vsi_ele;
>> -	u16 buf_len;
>>   	int status;
>>   
>> -	buf_len = struct_size(sw_buf, elem, 1);
>> -	sw_buf = devm_kzalloc(ice_hw_to_dev(hw), buf_len, GFP_KERNEL);
>> -	if (!sw_buf)
>> -		return -ENOMEM;
>>   	sw_buf->num_elems = cpu_to_le16(1);
>>   
>>   	if (lkup_type == ICE_SW_LKUP_MAC ||
>> @@ -1840,8 +1836,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
>>   			sw_buf->res_type =
>>   				cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_PRUNE);
>>   	} else {
>> -		status = -EINVAL;
>> -		goto ice_aq_alloc_free_vsi_list_exit;
>> +		return -EINVAL;
>>   	}
>>   
>>   	if (opc == ice_aqc_opc_free_res)
> 
> bloat-o-meter results would be nice to have in the commitmsg.

I will do next time, perhaps you could tell me if I get the results 
right here:

./scripts/bloat-o-meter ice_switch.o{ld,}
add/remove: 2/2 grow/shrink: 3/5 up/down: 560/-483 (77)
Function                                     old     new   delta
ice_create_vsi_list_rule                       -     241    +241
ice_remove_vsi_list_rule                     139     270    +131
ice_add_adv_rule                            6047    6139     +92
ice_add_sw_recipe                           2892    2972     +80
__pfx_ice_create_vsi_list_rule                 -      16     +16
ice_alloc_recipe                             124     113     -11
__pfx_ice_aq_alloc_free_vsi_list              16       -     -16
ice_free_res_cntr                            185     155     -30
ice_alloc_res_cntr                           154     124     -30
ice_add_update_vsi_list                     1037     994     -43
ice_add_vlan_internal                       1027     953     -74
ice_aq_alloc_free_vsi_list                   279       -    -279
Total: Before=42183, After=42260, chg +0.18%

My guess here is that compiler did different decisions about what to 
inline where, what is biggest difference.
And biggest gain here is avoidance of heap allocs, perhaps that enables 
gcc to shuffle things a bit too.
Another guess is that b-o-m ignores heap bloat, so slight growth is 
expected.

Values reported for ice.ko are the same, with bigger base to compute the 
percent off.

 > [...]
 >
 > Thanks,
 > Olek

Thank you too, also for our initial talk about on the topic.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
