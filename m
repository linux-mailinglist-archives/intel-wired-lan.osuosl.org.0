Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EBA68E33F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 23:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1681417AA;
	Tue,  7 Feb 2023 22:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1681417AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675807642;
	bh=lpM/34+gMj30W/ky1i/cdHlyAOxyG48UiD5Xk6WhAfQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v2JmoaxmKyLPVckSXplPEt1MrDJFnUcu5t1SwW8TkNokNXwVdAgFBdW3U9xdsJvam
	 W6yoDageSOj+ac1C9dxnAe+1emLvCR44rncYV4DomVx/sr009cGmh8vhPE2Lnxm4/S
	 eArxh/3g+2n+huMEBfwGqHN600zU1ylIIk4DCi7/YzZP7UPYlQaNGboN8ehP3UZTcT
	 2UOdivdEqAoEVo/m0ZqB4UaWhgbipJ4qSB2VkmWo35bwPIKIaspwHw0DQwT21bIyfY
	 MS/cF/OBJ3aTeECbpk4/4cPah+/KTCocNVU2eXR5aKKt5xxjqlVCdiyVsxkgSOolOK
	 xIueCv/uKYGOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04Vw_t2nor8g; Tue,  7 Feb 2023 22:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9800541571;
	Tue,  7 Feb 2023 22:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9800541571
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4BAC1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 22:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A523A81E61
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 22:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A523A81E61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgvgjUD4s7mx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 22:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9661381E49
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9661381E49
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 22:07:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394234838"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="394234838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 14:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730614352"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="730614352"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 14:07:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 14:07:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 14:07:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 14:07:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 14:07:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wd15wH8gfuUcH6VJAL1VKe33MS2odpZ/iYk8HYHDkbWhrBq27T7/7eORdDZO5cbcWmP5ZlQXAhUjJb/k/e02DOrsyLH63jiGycnUhAgN/6UXC2Vc6npiFs9dxmNZBpJIlH5OGQX+RnxYDhKzgCozDWhilC0J+zjSHP/xDaTvWTpztqb4hf+gfM1n1yFzHN/0IJmvbtOyec1a4nz0Iuai5O2k5nZSruU/QRJPg8kBKFmd1r+/bs5dDkGINgnmjlVkXzzc582xNEW4fkH2TmzQT/SXhS+TRytf6NhI36CKsq6mPqLXOx/Ig73gY0V4IGYjUP1nvKaLvxV35rT8LmoYdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k07Su8GM9e1yOcvWWX/3fxgEPUMJcH6v7piY4lb7OPw=;
 b=mzP0BH/ybJn7DxJ9PNboDszjeanXSP9/lff+2VOKw8jsRpTHSqpqIDP3Y7CSLNPKu2GAZ5JCzV2Ni9KIRwdI89u7F8Xk9XSyWkR1Y3417SpEvOSTsovC7hBF/D993WFshzYvEY15erfCVIqM6YDILRCxWCFujGCRD+KQIySlekn+cVXettA2+sr7umbanEzlq8n6HYHMbkafgFAApv5a68M4BE8jr67JQijeBUkesyDyxy1eHanSKpgFvDGOJYdN53b6lYQmfzcYXaW/g85u7uHdY99rAjhLu10reaBWxYA55eJLC93azzJQ5hZ/7/QQ885WHf39WKPSCmRwncNuIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4693.namprd11.prod.outlook.com (2603:10b6:208:261::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 22:06:59 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.032; Tue, 7 Feb 2023
 22:06:59 +0000
Message-ID: <351d51d1-f904-d85e-957c-5b2426c16d39@intel.com>
Date: Tue, 7 Feb 2023 14:06:55 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <9a4bfdd2-14aa-33ed-3386-e4a80f03db7d@molgen.mpg.de>
 <766b645c-1719-755b-1c66-40a221072294@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <766b645c-1719-755b-1c66-40a221072294@intel.com>
X-ClientProxiedBy: BYAPR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN2PR11MB4693:EE_
X-MS-Office365-Filtering-Correlation-Id: f668fad5-6074-4284-34ce-08db0957a212
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x0CuaUUJkImrKwzUiqD9DYfvITcfAwNxPVH+dMjeeu/N5xMWsN0rcFdgU5PaoOkmFKsSFkdfL7Kn4iS0UzfEWjrAndPbb+POampZJqEt6ZwjkfHhXVOnwzI+ICCFiov3mWV1BJ9hVYCzM8FZUACmBwPHsOn8wEDZdkVDasUHqTu+yVE4ADmU1uezO1zP+rnBmxtZjIfGM3nAfuLMnR7sDfGHsJRTTRI3KkvL7WXSLj0QohSCzkstERAsKDafICaYJukN6EP3RaYYfHLT0aJKEJnMpHqpTQ0/VZeO3B7PR3960DN9Lorto+a3ZQyMsgrFIAerXWkxz/mpirNlRRXe0wPJFqqSRNr1B0eDJ4lBcmLiodrTNrmzG4tECJUBI0u8d50RzGlhXrEfxR/bFTFXaaos3zpPamwrwtqrsDUW2m825WB0kNL5YsHgIe7QXy0acE3mXNMh9V9WvkjFKBlzroEA/IEk7Fa9QB8ShZF78wfre3y301yTDdTe+9MNzKSM4Kt4b+Nrgh7oN/891MJcNN9WOiJPYyegckdtPgBEbWIsFzIVjQgULidIMWybbT2oXraDKYTPNyVNZFrNWKsagqMcG7j557JE4wL0X2y3ZV962Y8N3Odu7ZSuxt369HwlCmT9FoXXSEDfMSCjYURutDpkn5BAOUmTvPAFslgtWeIEIP5qbS0jXiOBBI4jKu7903AZAC4pxxU3RVuVb5bxolP7r1bjkEzas6Iau2kOUts=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199018)(316002)(110136005)(478600001)(53546011)(6506007)(4744005)(186003)(2616005)(6512007)(26005)(31696002)(31686004)(6486002)(36756003)(6666004)(5660300002)(86362001)(82960400001)(83380400001)(38100700002)(8676002)(2906002)(66946007)(4326008)(66556008)(66476007)(8936002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzVIR2h4bW9CZTkvcUtheFhQSzJVTlB6QTJENklTdmpCdnJiVHplaEZydllu?=
 =?utf-8?B?K09NR0ExN1lubDlScWtiZC9KUkJOT0ltZWNqZlcvUmtLcFU1YWsrYVdHRmYv?=
 =?utf-8?B?endpN3Mva3JKL05Ba3FvRHZtTXZEUFJpMGlnM081QUlEbmhtTVJUQXVJNFlV?=
 =?utf-8?B?YzZHditpc3RFdTAvUkVPY1NIYnQ5RGNxMnBGS2x0KzFQMTlKUTJ6OFY0SGRW?=
 =?utf-8?B?ODlxeCt1bUdxZmpSQzFwMlBNcGxsRG5XOFpQV1BvM0NCOEdxZ0w2cm5IdzFs?=
 =?utf-8?B?ZytCcFlnUHd3QW4rUFBkZ1pNdGppNlpEVTdYYS92K0xFMWd4TXB5WTBEZzRV?=
 =?utf-8?B?aERsWUdjUzEza0RvbHBrREZhWk5ya2dHTzRXLzlwRDVIV083NzU0OWFseXA3?=
 =?utf-8?B?WlRrbHIvYXZid1M1MTBIaTNUMTdDMnVVNmJTMFp6RDY0MERjRTZOMDR0azBP?=
 =?utf-8?B?TFo0OEt6aW5jOXVobU4wTHFqbFJHaUxRWTJGZEd6cGZibjMveW9PdTgwR3JS?=
 =?utf-8?B?YXUzV2ZENUpIUkNSVkZia2FZOG9ld09lOE5tSTBHcU1idmlSMHh6OGYwRk1z?=
 =?utf-8?B?Y1NvSHZrdnpMbWo4dHNZbktDcURmZ2RVQysrRGRjUjllNHlqM1pZaEEvcUtV?=
 =?utf-8?B?bmRhZUhsQkR6ODZqT3B0UlhhcmdjNnhKdGRtTHlNcUwvR2NrcmxDd1VrQmE0?=
 =?utf-8?B?WXJpQm5JU3B3RmZRYzFVMEY3dWhnZHQ5ZGJ6SWxPd0xVdm9iS1FkRkM2RFZE?=
 =?utf-8?B?WFRVeHZQM1pZejVLOHJldDhWR0lsaWVhM1RrZUthWHd0M1prR2NPbml5TGYw?=
 =?utf-8?B?ZERBcTlpb3RPalMyVUVCSUtWVUdyYm1rSU94ejRtcnoxMlBMaDBxQ09DeUds?=
 =?utf-8?B?cGg1YVJpd3M1eWgreGFKMUVCdW1tNnFmMnZLUkxuVFpoYnM4U05FL1dEUHM5?=
 =?utf-8?B?S3RCYloycDg5MmxQY1BhUlp6OXJEZnJ5YU81QXRJcm1uczIra1ZLbXdWa29w?=
 =?utf-8?B?ZXlCQmNCZzNkMmdPU0dTYUU5UDc2T2dzdDZCTWc0OVI4KzNOcDd1VjhzYWRj?=
 =?utf-8?B?NzlPMTU4MnhRZFBmREJzNERyZ0E4TVgwVUVUZHhGZHBMUm00MVBWYjBaTWNl?=
 =?utf-8?B?QTZ0ZzZFOWYrUDFQWGU4eVpac1VuVXBIeEpMRFlOSm4ySnBSdG5pZVlWRkdX?=
 =?utf-8?B?YXY4MHhLZzY2ZWY0cTNvanBySzdlWFlRQkUzNEZRS0FsbzF4OFJrUnZGdUZN?=
 =?utf-8?B?Q2VQRGhFb0c2dzVrWGk3Q1I4aTlKMWxLVVlTTDdSQVFkakkzOWhTdmFtUEJI?=
 =?utf-8?B?NkpjYWxla09DQ2JkdW8yQkRxK1VpSXRHeUZZQzdaSWYxS2hxenJNR1l5dllK?=
 =?utf-8?B?K2lLKzZHcEtOZVcrWkJsSHd5d2lMTmRvWE9uUjlMeTY3dks5cGxVSC9GT090?=
 =?utf-8?B?ejFVWU03aDJ6R1ZkcmlJTWp3cWtNajRhZEJYVVRBVTVFZXJ3bGp1ZVYyS0tE?=
 =?utf-8?B?SzZ5dUZJZHRpZHBkU1hLSTNuTFBRZFE2RHloaEROY3J2MTdFOG9JNVl0Tldy?=
 =?utf-8?B?NkZ2U0t4cTNtMU5vbTVVY29mN1lCYXBnSXhSbVBRT0tVbUZHOG40Tk05KzNh?=
 =?utf-8?B?Q2NzT0RYSUxuOUpHakE4ZkhwZVNnRzI5L0lVcjhuc0c5VjUrZ2Vta1lDVTRq?=
 =?utf-8?B?WnVvWVNxWCtKUE1Lb29mV0dINVM0QllEZ2ZLTlZFTWRFUHlITExWckdhdlcv?=
 =?utf-8?B?V3MwWHMrczliYlREc1l0TzhSTU85cWlFYS91MFBpdlNOTGx6aVhKcUdmSkxu?=
 =?utf-8?B?a1pOWEk2dWZqNUg2cHl1MzE1Y0djM1RybE9HU0dvV2ozVTY3TVlhVElHSk9q?=
 =?utf-8?B?SUFZQ2JyTEhiS01pM3JHWEZ0anlVWWFZU2RIZGkza05mOCtGRnNZczJlSkJD?=
 =?utf-8?B?QjZFT2Q5N1V3MmVPTW5tZU9lbi9lZEtmK0VvdHNTQkFsOXVEcUVUZ28xVHlk?=
 =?utf-8?B?VjZWUHdtN0pkbjcxRStRNlZuSGNDbFBiNlFYU2NwcUFubW1CenRSbUZJWWJs?=
 =?utf-8?B?NE5UR2E4aFN1WTlQalNkM21FMkhMaHhhVnVmaUUwQUdZN1NPVmR5bHlaSkpK?=
 =?utf-8?B?bnU3T3lwRUNKbTF5dDRMUVJmWnF0cWc4bldZU3p0azNobnpHdUpGTzlGdVND?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f668fad5-6074-4284-34ce-08db0957a212
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 22:06:59.1307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yynhLDjUiYjzdncIws29oltHdSHVL3/1sAi2258USMrrQGnqN4wJlHmGH6iZ+cUUGDOmVBIx1ZzJmU2wI8riBhg2vNme/OyGtNLQDbKkVAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4693
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675807635; x=1707343635;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yvV67cuESuW/fHPLdQ7Ys1okTJkw+P6sGrUwgT1xChM=;
 b=MMA78YRJ6n6BG8DJoEPJrd5nF3vPHybnNpAX5reF2wCHItQiK25Sum4X
 iOaoQxy14BSxLasSUDH+OndP/mWa/RjSIAh+SAUjJzh0HvM2/niBx+Q2v
 PmP0T17N3Bl/EOpl5N4po4XPQnws/oe6v4ZRDz8C+IFuMyRU8ddWOHHIZ
 xqn02uXoS7IgRD4TT5cxGWJ7r5gbLdgRBWbw4gt6RCzy6DE7UC7mCKD5e
 EXaknH5SOCE7QZ39cmKD6GB5WPc+g7+rsu/Zp25FQwZnc5tynKrhponbp
 W01qWz/olFzhX6qMERs1jApOcI8ANZbVMuTN5R0PmmdEQhEe96x+QPSUP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MMA78YRJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/7/2023 11:05 AM, Jesse Brandeburg wrote:
> On 2/6/2023 10:39 PM, Paul Menzel wrote:

...

>> Maybe also mention the new debug messages?
> 
> I don't think this is worth resending the patch unless Tony disagrees.
>

It wouldn't of hurt but, agree, probably not worth another version just 
for this.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
