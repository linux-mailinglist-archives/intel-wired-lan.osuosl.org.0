Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D387CC9EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D60C1821B9;
	Tue, 17 Oct 2023 17:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D60C1821B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563841;
	bh=AcJBjgwH1JTceIEkFOk89qEVdo1mXX6ddF8WAvmvkIw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AYP1AEi0wsLK1F1dVzOup6RcDbGkZJIuzoABxC1tLMwioGGZqdp380A0inX1o53Jf
	 e2ECwIQnQnVOoyPdU/ilZTTo0rEBFkAVIGW1pOecdim79BPDp9a2bbTkPC5eAlqRd9
	 hMfKSYMlTY0470r956l1WwyUmFROLYJOJD3wIH4plvuAsUuUv5ELBJHKy4GX9PmSqv
	 uoYFlXQm2/eum+4NpfF6Zs83ba02LA+jJNMKv/U4qPtVohlEIJywqEE6xItQ3Ql5cI
	 zNX/udJ8B/WPra3816t18jtb+jJaB6ljE/R2MjkWOmin5DYFaQ3LFQhNI6uA43O2t3
	 2hK03grxJesyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdKoc2qzSlie; Tue, 17 Oct 2023 17:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2B5B820EC;
	Tue, 17 Oct 2023 17:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2B5B820EC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83F251BF4DB
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63E7941D65
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63E7941D65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2R4J3SCfBWq5 for <intel-wired-lan@osuosl.org>;
 Tue, 17 Oct 2023 17:30:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D39C41C6A
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 17:30:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D39C41C6A
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="376211639"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="376211639"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 10:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="846905196"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="846905196"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 10:30:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:30:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 10:30:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 10:30:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 10:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQUDa0OjwaDsg4d9sle26NqDpMKPJSvTwurHy2AC3v0YopI443/E+rq4yd83i7fCCh2q5l9q9urtGIxy0sQvIGc0mo7rrZpSlJ/DDPb1wiwbwKYl8rpbd+c2BNcFcokzAF0Ty2Tosi5mMzAwBVaTRubJCI+9MXPFYrw1+FU6kM9IfACGYUJfPg0tAUiOP0HDiDW5jgclke6d1bU+hHYy11aES6thdE0Fj3kycjou9yWkZwq3fCaracA053Hp6uWQdbMVDqxIYBcfuTPuOA4bKBPbpIZMulWIgGakVkGKJFDJVqNQIHReuCrdPWFA68DpQRYbvS1lja4Ujm5vb6lSPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cTKx0ZgOpI6bV9KeFgpuJk31NghLnwWuSV3QEHtk2ls=;
 b=W/zi/I/IX0/G6THuQzIWmIk9STy6mGLbQXhTD1xo0JfOkqSrF9nflEknPpvJsTlGGqgdvyvFQ+whPyRveMjtZsNzBILWUnIz8j+XANzvl/o653IGPVRLuOByEtlZN98GTTPqK9MgzN5WxTNUj7WU/h/NWUY3aKVbv5HEcdArIIuQMA0pMYy7cBR6bMzSDArnaM3g00D9//FyV1Y/hDBbN9BoQiiwR2ZzycHVCkRJZENUFkciG3Nms/hpoBbIG/+6OEm0ou5JTs7dgfB5lunlr+Rk05IqyDGcExm1/DXlnoX27UjCLoql/nyfcAGnh33IDowIYKlDiv4phwF7bCl/rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8070.namprd11.prod.outlook.com (2603:10b6:8:12d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 17:30:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 17:30:30 +0000
Message-ID: <d9fb8ff7-8c5a-4185-a795-1a67928ff201@intel.com>
Date: Tue, 17 Oct 2023 10:30:29 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-2-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231016164849.45691-2-mschmidt@redhat.com>
X-ClientProxiedBy: MW4PR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:303:8e::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: a7e9eeb6-da28-4db9-8e05-08dbcf36c2c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7bgcuiRSx0oKW2d0nieJrQ+ilHzU7VX8NJ1H8uk+0xhAbNSt2PTEvQzDgyyhy2N0z31ixEllqiaKblGD7EFiS/VQYb9IDnNy9oZ+s72TAopEm14ygAZb31TDiZBr/7feEfosZChIx3uwau0cqHV4DFGSSmkPKofaP+60+OI1eC4IBY34cMbNGv7Tn1G0YEAH+g/7RSX+UXD9ACmlPEzsJxLY7N7g7/YRb9m/WpmD0KCFCAmDQzn6JFqL5pmf8r4XpcX3/x0DaEBXuyRIP98o6BYcAjCpefYC09R/T3YalJPqhvb8RWI7cyby4//G81iawgO8xQSZrAbK5Ywa2QVGketVn7VHmwznDLllfxH99wVupWwk+VV/I/LhnIYKiuqi7XEwHoGPeFBwczeSu1qCIrd41sKi0tp9mmQjZ1olpDXkWBxI+h5xvL8vwYeCU7sompK/nDZatREkGlx23037w3buubfLixWdaAFSI1AWpdXGToNpn+B+iHp+vRvmc6qJBpvaygKuChFZAfT32DNzQE2WmBA+LStUlpUEUaXGPEeB3idzV0wz0H18bWLyHnSwku6GHrROglUcS4D95aMwdUYDm3P3rVkwkE4vCTVJfT2LqHJcVVMyF4Kb31dPOq6LF/WaBXU1U5jOYZfIAxjSLw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(31686004)(478600001)(66476007)(66946007)(6486002)(66556008)(6916009)(86362001)(38100700002)(82960400001)(6512007)(26005)(2616005)(53546011)(5660300002)(6506007)(36756003)(41300700001)(31696002)(8936002)(2906002)(4744005)(8676002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEYwc001NWgyN0cza3E0RlRBaHVWRjZFbjRxZXN5ZENXbEwwMk5QSkRqaEZy?=
 =?utf-8?B?RWphUEpySUY3VStnZVF6ejEwUXFRUDNwNkw3eHZERVZhdDdTWFBESG1yWlMr?=
 =?utf-8?B?SUpDUEwxUWw4RVVBNEJkdE53VWdyazlnc1ZTZ0hKQkZNZGY2M3plQlZlYy9z?=
 =?utf-8?B?aUg0Qlozci9GcFFLcVNZMFlla21ESTBJb2Z0YWM5MXNXTnJyekhLUWd4ZXBQ?=
 =?utf-8?B?YkYyTGVkU2lxTTQ3UXJ5UnEwTkExQVozMWs2bzFlSE85RUJ6U2hhN3BMbW9y?=
 =?utf-8?B?UnEzM1orUGVZZFF0M2pCejROYitQL1ZaRGtwSEwrSHBXNFk0RGxpRFJtd0Rz?=
 =?utf-8?B?b2xWWXBsOHNFMmJYRVN5ak9Gek9DaXN5TXV5VnN3TENCNVJmZzkvdmdxbVl5?=
 =?utf-8?B?ekwvSU0rZHdsL2xkUU9ITllzNFNEZXdna0tuMlhGNDl0bS9VQ2ZyUWRYK0FN?=
 =?utf-8?B?ZnB6cUdQVTFJR2dldkZUc252WWx0eTI2VWZZTklBcUIvQVVETjVOWk1HaFht?=
 =?utf-8?B?T1krN0VkcG10YTRsRkloY0x4ejBBemtmZXF4akU0ZHBWOC8wWlVBMmJ2T1g2?=
 =?utf-8?B?bVVBV25oWFRJRkdERzRzeE5hM3JOaFZZQjFtcXo0UGN0TzZ3WEg3S0pvTzRN?=
 =?utf-8?B?c1VoNFc4S1lycGxZRVYrMWRzWXhKYWNRb3hORzBuOVAwTEowby9tVTVZcTVu?=
 =?utf-8?B?TXVOdTZmb2VUblBNUUk0WVdqM3RMVWFvRW1XWkdqWWk1ZWQ3V29ERytxM1dW?=
 =?utf-8?B?T2xEcGp0UmVmbFZoMHNyRGJlR0syYS9ldmp2NjlobER1TlR2d3ZvR1VIcGFD?=
 =?utf-8?B?OTc3dHFGUFNlY1A0bW9rTG1MREUyYzlacDVtQjRLZ0tmeW5VZHFSUWt2a3ky?=
 =?utf-8?B?TUZuYjlubVJwNmZYMk1QRHV5SEtQV0FQdFJwSXBETEtpMmhNdjB3bGFPR3Iw?=
 =?utf-8?B?aFZMT093S1lvMldtT1BEdERVZGl6KzNlUzV5TGoxcVRXdDU2c1dybUpIWWZw?=
 =?utf-8?B?RjJWZFgzNFJ5bExhUk1BUkpOZGNsUEJTVHVLZlpoNWhTUlM5SWQ5Y285UzF0?=
 =?utf-8?B?UWZOR2xrOGpXYXYzejJxS1c3ZWJ0ZGx3WUlXUG42am16ME4vRkJBWTBpNWxt?=
 =?utf-8?B?QlhKTXAvbUdrWlc2dERwc2lrM1U2OFVnSVMwRGZ2REU3SCs3VG0rR3IzNWV3?=
 =?utf-8?B?cmRjYXM4UUl6dFU0SzBkUitTbjZzR3V5YXB1cTViU3NPM0daYjhpNGovQXBh?=
 =?utf-8?B?RGZvSVQzQjVEMGdwSHVsMHJsMDFNbWFUMWZxSHdPY3ByTzJyQXdkWDlUczNB?=
 =?utf-8?B?cnhDZ3d6NzNyVFdzenZ0cHo4ZFdJc1BVVnNzeUFzazZIV1h1RGJXeVNRVktu?=
 =?utf-8?B?QVcxTWc5TGltSzAzdkJmK1cvVHpYL2pSTDlnSFlLNjlycnkzYUx4cmNjakg1?=
 =?utf-8?B?amZNdXZvSXg3L3VGM2pGWnRSTFpPMkMrbEludVMwUU1FN1d4cU1ZTkttTURp?=
 =?utf-8?B?aFFic1l0cHRpN1k4RktMdDVtOElGQ1hKN3h6TjdDRExvamdiTUtsZFVaZ1Bm?=
 =?utf-8?B?TEV5WnJqay9TeFRvVzB1UXFBVXFpT09KZVpvbzlSeDM4TTRUOWg2dkVRUCtW?=
 =?utf-8?B?UHFyZi9ZTFhXdTRldjZDUXlMbVRLanVhQ2M5Sm1SbWZJbVZ1SVFOdGZObDRJ?=
 =?utf-8?B?VGZYa1FwVHM4UWRrSGRSQVlFU3l5R3NYdE1BU1U2VXl5YmtBbDBWMGpRaHdy?=
 =?utf-8?B?Tks2REl6N0NXM0hXd2wzc3ZuT3NsT1pOQkYrOEtNM2kxQi83Z21TWnNlN0xs?=
 =?utf-8?B?clNXR3pnQWRpdiszV1dxYTdBaURreDhSWFNrMXBMV0U2aElhL2pVUUZndjFM?=
 =?utf-8?B?L1ZtNGxVc3gwWVJiWSs5eTYxQ3Vldk8vbW9GZVR5L3E0VDBpSTdoR0xNSVQz?=
 =?utf-8?B?K01WZEhiNmpoWG14UFFpRlBVUVVsbzRid0F5TFRLcXNMa3RxbW93NHVqczVt?=
 =?utf-8?B?VkREajUxTk9BMTBrbDlUdTZjcDJDTTJWZm5oQzNtRlJRNFdoMXFSMU04WURt?=
 =?utf-8?B?OFFuSHovaXY4UlE2bUlFU1V1WkdjWkFqMWFHTm9jbjArNXVMeXJNUGl5TGJT?=
 =?utf-8?B?ekJEaDdVcTA4VWZ5SXdWeWFDTVd6OTJUcVBoODNYeWcyRW4yQ0VmMDJxMEx0?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7e9eeb6-da28-4db9-8e05-08dbcf36c2c5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 17:30:30.7650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C5fw+XNE4c+/UHxl8VCQY1BIUb20YSjPDHE+TZOiBynplrkdy7tEJwHLoHJRqd0qSFDyoarTr/VbMpZD8nxvv8SzVj/Q+1o7zJ1GYCorRug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8070
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697563834; x=1729099834;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GJNTTrKXQ6f9tuDAOXx0zeoBSj5r9yXIRnh82+SOGqI=;
 b=Vnt72RSHhsko3ifqmQxPRvEfdRXXyaENzuPHU3b5M6USFIUEUmAnnZC4
 EaQpzGyVjG3j8n2B1KsuxKoFqNgLVE9EntXwk5shsAELr3hv86AM6ncqj
 8cb8Mhs57Db8Lg2BzkbL7ySTsIz18iWVrD3MUZae1sPOuLQQcYt0FRthz
 G9G7rwpNdq6+T921BEemfavcBx/NZ7pVEpPTfI6PiQ/l0xF8L/85qtYn+
 +y/pEDf04PtLr/wMq8PyxapHZo1dBMFFIeBZiE1J2XPZ72lwRrgSNY7RY
 gQclfDp34lSeeLY6w7mXTJbT4VcV5qbrtpsq/q27XpH9wOVKNDI78//tr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vnt72RSH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's
 own registered state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> The information whether a netdev has been registered is already present
> in the netdev itself. There's no need for a driver flag with the same
> meaning.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Thanks!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
