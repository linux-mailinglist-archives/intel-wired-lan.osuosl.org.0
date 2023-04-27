Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8766F0E4E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 00:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1FAB83F27;
	Thu, 27 Apr 2023 22:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FAB83F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682634207;
	bh=WLVS5no3P5V+BU2ZiS5uLlk8LpkPW2i7giiGGTlwLwk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qzPO5Kd7m5HAa3Vej6htyyzxxe2Nlg8CWChtx54E3Sfa61ZGxzH31+kbX3YcDXnn2
	 mB6CRct+TOfMon1x4A//SWioqDAATY01QPxwdzsOz01Q6dsgVcxjtelvVEOJrOO5CR
	 s1ZSSMsEjrNf3bsNZHfwjEfs7v7A1wBs0JOCE6eEKF9GjDwEyqadizdQbvgvC5e1Bd
	 1xzjVCTx/ySXXtxrKV+QvY1fSXNOuHfg0dWT5dvGfadlVm2vHeiwOG3b7mhBGtI3dP
	 rMd8s8wHfXAVCDng+Ku8xPEEa+EfWNo/oOhRzda4ZX76L1RJ2Zcf/w54w7RDbtqZfy
	 AcO05mDqj+Ygw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cORMdKm2eBZh; Thu, 27 Apr 2023 22:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAF6F83D21;
	Thu, 27 Apr 2023 22:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAF6F83D21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C16921BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 22:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96A6F4086D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 22:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A6F4086D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbUFX31bzWpL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 22:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29022405AA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29022405AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 22:23:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="410643101"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="410643101"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="644872909"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="644872909"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 27 Apr 2023 15:23:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 15:23:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 15:23:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 15:23:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 15:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nI2N/hs0QjZCauSt6MUrw4IeSLHhDTB9sq4GP/9mkC7A/b2edqjVHIDx8UMw9gjShSBNX2dGDCwuIChuF+2+2PXNH0kM4VolGRHFo9r2OXU36n8kNILhDDpJaOFEnHY2S6QhoGGKSL8oZzLyG/JiIx+QEPO5HlMOiFR7gUJvqVF1VgQdG3kaMLKHFBB1UGEvRucW+yAhDL/Zl4CrwhZInpXSCyajCfOYwhIoCpBeZ/ru14NsqnPC0KKHGf8DUNb8czB3NyiKuHp3wjgiR/wKwhY4b/qFSRYKWh54Dz+GpgImt+cypZPv54zv8ZeWdcdFXDuiiNuBogm37KDlirIRCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tt1iQv3Ms7xaCqxClzjULaoNfyL70w7Acrctbm9EZBk=;
 b=gOZjX6FQ75mIaIAQYPH/2zMAvZCnl6UYrXjGYxvcVPgDNeyc00qy7U2JbME/+rigE7TaxMOTEKgAxjiKF8CFPvi8SY8zCHuI8QffHKKtRHWkpcyiP4T5RzFb/OiC84G+/ML9cv6DLe0RPMQRioQDAjCN2wMo8DYPwhDHVJPl+e0x7HZUBLR9rZXk0aFxk/GHpxdqeMt+ToJaGdb9JaSoxOpBdaF0olsJNvNc12yh5gRMuNli3QVR3vEdSqJMohdMFqWmovMzYyW+MpB4SI+iCoKvMNS3IhurnDSymzCHr4YXR0jJN6dUT3NPCJu1bt9cXQwMi15iBc2jNTDadh2p6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 22:23:16 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c59:d19c:6c65:f4d6]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c59:d19c:6c65:f4d6%6]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 22:23:15 +0000
Message-ID: <965fa809-6cdd-7050-1516-72cc33713972@intel.com>
Date: Thu, 27 Apr 2023 15:23:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
References: <20230427020917.12029-1-emil.s.tantilov@intel.com>
 <20230426194623.5b922067@kernel.org>
 <97f635bf-a793-7d10-9a5e-2847816dda1d@intel.com>
 <20230426202907.2e07f031@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230426202907.2e07f031@kernel.org>
X-ClientProxiedBy: SJ0PR13CA0101.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::16) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|MW5PR11MB5788:EE_
X-MS-Office365-Filtering-Correlation-Id: fdcd4194-f80a-40ae-02f2-08db476dfed4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dcDZPQ5nZ8VWjcpZrhCTw8PbGkgF5kPHmibs5D7KgBxZrDjriIvdspfIB+k1/7+6TUk8wiBsqQZjz+EFn5urT+ckgdacyEN+EtSfy92s2+hpfmEBvC/h1NCQ0qX3LoWReIeZuhRGLK5fKt2LeLTIWc42L/8JZbs70XxoTb7IF9YMsqEcdb2gn4vlcdjBTMcbqpLBH4xMFjmUeVsbpjPTuX3RA8R62evW2QCgSd2e20GlbTIm0q3CsTkR0ODK+NiCB6KhiJvvPeLshyoRkyEMSksAbFzEOiMyBQrfsXyonybFU5SbSYkz5lZThtfDLMMAFq2evCS/mMNazh3QDavBLzDE4H1E+HU/Yg2Jr30UtJ5YW2VlISu014hXYJnnZQSoMGSZ85QtDJ+nZo9heTZQyu3gg9mMQXDv6z3VwszC0U5HpU4DgtJlX6o0HbOwAKAUY7Dw3y245JvIG2ahJyZSCdpxGbURnFNEwJP+2KxT5YivILebcev6yAKRiJ1LEjfmL4PiMTa4OaNFOfoZso8OsFQKn1bka2aD0WqmoMDhjnRkFehdJLLvsP0Ibw9grMl/GpQkIWykBOGc+29cav8TZJY77rkOjRSuTVI3OH6rHxmUU3O0/Y/OLQ7AlES9hpEJhQQYPv1DAHkemeWzvzgVxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(53546011)(186003)(6512007)(26005)(6506007)(66899021)(2616005)(83380400001)(31686004)(110136005)(66476007)(66946007)(6636002)(44832011)(66556008)(82960400001)(7416002)(5660300002)(38100700002)(316002)(41300700001)(4326008)(2906002)(31696002)(478600001)(8936002)(6666004)(8676002)(86362001)(36756003)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHU3bVhwVkE4RmlWYlEzOTl3YVNPNXFHemljcW5DTDFVZUtZQ2doQnQvb3Rl?=
 =?utf-8?B?M1NTZThwOTNOSXk3MWQ5TjMwTlptK0s1RkRSNGs0RmpSYjVWQ1NObFlFZlMy?=
 =?utf-8?B?US9JcTBtUlZ2dTNYOWFoY1FRL040czVKNHFSQ21ubzRPbVlqU3V0eis2d003?=
 =?utf-8?B?Y0x5c2pHQzhvR2xrcTRPU0o0Q1VOMjhOQ1NFNGFXcHlSNzlJRzg2dEJ3Mlhn?=
 =?utf-8?B?SytGVzB0WVRMenZzT2J5ZnMrRGt5ZFV5dmZIQ0FoSGsyMFIvRS92QjJUMklU?=
 =?utf-8?B?TVJLM1ltT2FqbXluWS9McG9uR1pTNURGTGdqREFWSG5WMEtQMGYxdmN6czdk?=
 =?utf-8?B?N1RVRWZzdkNZdTlrbzBtd3FXK1pHZlgzK3V1Q3VLQkFXMTBDSm5CSkU4M2hR?=
 =?utf-8?B?UTNaTy9QUFhaK01TT2NCSTc4WllFbU5uc0htRTg1Y2R3SkVqZUV5cFFYTUlM?=
 =?utf-8?B?MkZzV3EyS0VhMWh1ZFFEMEhxK2RDaUxVVlBhZnRJM0tnUmM0VDVxZ2VSdEY4?=
 =?utf-8?B?ZHpUbGxXQ3pyV3NtK2RpWlAvb0wrR05zWElkVm9hK0c4UEFhWnpJTEtQNm9O?=
 =?utf-8?B?b0xhQ05sbHV2UUNhMXpZYVloT3hPeUIzRmdrRjJ3cFJRK0hmN0J2UGtlelBC?=
 =?utf-8?B?SFM1WEhZYk5IdDZ0eTkvbTJwS0FOK3Fnb3BmQ1JJQk1xTG1HQ0pib2NOZXRY?=
 =?utf-8?B?Y0dpMURVU1dVWEtYUnRaSDQ1N1c1TktXbzluLzJUOTRnOXUxYU5BSm9vY3ln?=
 =?utf-8?B?WkY1Rzdoa3NWMDdKV0dmL05LdnJqemZDS29aa2FLTjBmVGsyMkxiRW5IOGR4?=
 =?utf-8?B?MDU5OHRmZ3EwZ0g3RXo4M1JoWlVEY2VvTUw5RTRlVENRRlY3Ny9MbFF1NGdr?=
 =?utf-8?B?Z1haNzd6Rk1YZ1VvLzNuYUVFL3IrRXdMSlhxRlAyMVhZRkszc2hJVDFXaGcx?=
 =?utf-8?B?NTlpRnQ5ditIb2JPT01qU3g5aHk2aCttOVBxNEVzRDhISEp0M0dPN2tGbXR5?=
 =?utf-8?B?OHFkaVhwRjRZM2piM29pWlhNcmsrS2czMnFBMVJFYi9IMEp4bkVxekpBazA3?=
 =?utf-8?B?Si9TRFJPelVWOWt4eGR6azZvWUtBM0hPSFNoSndINTdWVlh2cVlLUll6VEta?=
 =?utf-8?B?bU16MVJSckxLRjhpT0FvMFJZSXo4OHhSRmw3dHZrWVRMejN0WG8zY3NhdElu?=
 =?utf-8?B?T1lLQWQ3SSs2ZUhqNE1HQW1sKzZ1Y05XemZiT2hFMXZTeEF0QkJMTDNKQ0VX?=
 =?utf-8?B?bWhqd3BrZTlwNWsvblpUNldTVFdnWUlSZTVqRlk0S1F2K1NHU1U4THZmTXk3?=
 =?utf-8?B?U2VRMjhybVNkZW0yc21MVWZEbnpKTlJtdXR4SnQ3K1M1dXJuZEYzS21PNnVR?=
 =?utf-8?B?emtxUkVnUytyR1VWTjE4b3BEemZ1OE44ako5T0VkclBERkRYWGE2UTBLMlVB?=
 =?utf-8?B?elE5K1FQN3FhNjB3cWk4Z1EyS1JiYTVWeC9HSm9ZMkUvZWNuSUx5RTRtWGdv?=
 =?utf-8?B?all6RGExbVI2djUrc0ZZSFk5NDlTZmkzL28yeGhkR1pLa2I5UnJ3TnhxQWYv?=
 =?utf-8?B?RVJGelRFajZqMnU3U2tZRUdpVFl6aW1RY2s3bzBaK01JZGg1amRSSjRDK1Mz?=
 =?utf-8?B?Y0ZCcWFQckhiOGJVbi9VeGJpN3NMcW0wRngzeVJQMnZsMkw4bE9JMWEzQlpo?=
 =?utf-8?B?V2trdW5VTXhzbm42ZU1vN2d3dHB5dmNWRlE0Z3VOaDlNUE1MSWkwZmFMSnU1?=
 =?utf-8?B?YUsvTEJSZ01DMXZ1VjJiYk9aRzZOcGNjdGpEcWRpZERHMVczZEMwR3NKTDl3?=
 =?utf-8?B?dmdEVEdnZEZUNTRuNzJlRjVGTkF6WXdzYytseXMyRE1ObE1kZmhNMTE5MDVZ?=
 =?utf-8?B?NzZQMWZjaEtRQkxKRnhuczJubUkxY29SMy9wVVUwQVExSWo4RFhiQzYwczl1?=
 =?utf-8?B?Vi8vT0xYRnlMWnRQTGJDNk5oanZNSFFGZlZnT3JlTzNVYkdLRG1uamxUdjJl?=
 =?utf-8?B?NWRIZzZ5SWgvSzdSOWdPeEFkL3Z5Vm5mU3habDRxcHA4R3ZPWUFOS3Z0eStq?=
 =?utf-8?B?TFlQQWt2WjRzS0V1SXJmY2ZoeTI4T01xTUFMbjgxYXdHMFJwR003Z0dFWWgy?=
 =?utf-8?B?UFZHMUVMeE5KSzdIN3dZa3FmSkJqUVhnVnBQTFo3SFg0L3NZSDA2bUtsRUpi?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fdcd4194-f80a-40ae-02f2-08db476dfed4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 22:23:15.7747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DK4Ujjes9x6gQlk9uo+x9lo7Qjghg05J8mUS1U+n14sn9AUA/dZ5a5V23HsKUZXAfwkDywBglbGmKYfjBF2PYmQ+gFVL9h6E9+lS3VhvQ9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682634199; x=1714170199;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tt1iQv3Ms7xaCqxClzjULaoNfyL70w7Acrctbm9EZBk=;
 b=Y9qeJjZN1dRZxILsOopKnvAkP2ww2GD0dZQiH+cTge7Xw4a+X5KIbCc2
 e443lt0N0MmK69QienjmtBbbcPUOmed8XR7uhPP+d5eRtJvdJhhxigPsF
 BzcejNKxRPdpGhsrOQ8SF3t/GaSsSTd/dVBhIStYIVPiXmWS0yUu3pblg
 LEfxYZoI2/NCcrV/wbYnrm/zFW8l+nNGoMxPgxu/6EQD6vkG7iOjgCU0E
 M73DljaCUlK/J5QZyY6c2W8K0RHEatzy6GXqfu2KrDTNiqosQbQlFfNOO
 5Bv1MAUHqNi1CgIwgfT+dvI4dYM40NWivTJeeErEmm0d5faVc1vVhl6rN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y9qeJjZN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 shailendra.bhatnagar@intel.com, netdev@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, simon.horman@corigine.com,
 intel-wired-lan@lists.osuosl.org, phani.r.burra@intel.com, decot@google.com,
 davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8yNi8yMDIzIDg6MjkgUE0sIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IE9uIFdlZCwgMjYg
QXByIDIwMjMgMTk6NTU6MDYgLTA3MDAgVGFudGlsb3YsIEVtaWwgUyB3cm90ZToKPj4gVGhlIHYz
IHNlcmllcyBhcmUgcHJpbWFyaWx5IGZvciByZXZpZXcgb24gSVdMICh0byBpbnRlbC13aXJlZC1s
YW4sCj4+IG5ldGRldiBjYy1lZCkgYXMgZm9sbG93IHVwIGZvciB0aGUgZmVlZGJhY2sgd2UgcmVj
ZWl2ZWQgb24gdjIuCj4KPiBXZWxsLCB5b3UgcHV0IG5ldC1uZXh0IGluIHRoZSBzdWJqZWN0LgoK
V2UgdHJpZWQgdG8gY29udmV5IGludGVudCB2aWEgdGhlIFRvOiBhbmQgQ0M6IGxpc3RzLCBidXQg
dGhpcyByZXZpZXcgaXMKY29udGludWluZyBhY3Jvc3MgbXVsdGlwbGUgbWVyZ2Ugd2luZG93cyBh
bmQgd2UgcHJldmlvdXNseSBoYWQgYmVlbgpzZW5kaW5nIHdpdGggbmV0LW5leHQgaW4gdGhlIFN1
YmplY3QgYW5kIGhhZCBjb250aW51ZWQgaW4gdGhhdCB2ZWluLCBzbwp3ZSBpbnRlbmRlZCB0byBj
b252ZXkgdGhlICJyZXF1ZXN0IGZvciBjb250aW51ZWQgcmV2aWV3IiB2aWEgdGhlCmhlYWRlcnMs
IGJ1dCBkaWRuJ3QgbWVhbiB0byB2aW9sYXRlIHRoZSAibmV0LW5leHQgaXMgY2xvc2VkISBEb24n
dCBzZW5kCnBhdGNoZXMgd2l0aCB0aGUgU3ViamVjdCBuZXQtbmV4dCEiIHJ1bGUuCgpJIHJldmll
d2VkIHRoZXNlIHBhdGNoZXMgYnV0IGRpZG4ndCBibG9jayBFbWlsIGZyb20gc2VuZGluZyB2MyAo
cmlnaHQKbm93IHZzIHdhaXRpbmcgdW50aWwgbmV0LW5leHQgb3BlbnMpLgoKZnJvbSB0aGUgb3Ro
ZXIgcmVwbHk6Cj4gUkZDIHBhdGNoZXMgc2VudCBmb3IgcmV2aWV3IG9ubHkgYXJlIG9idmlvdXNs
eSB3ZWxjb21lIGF0IGFueSB0aW1lLgoKSW4gdGhlIHBhc3QsIHdlIGhhZCBkZXZlbG9wZWQgYW4g
YWxsZXJneSB0byB1c2luZyBSRkMgd2hlbiB3ZSB3YW50CmNvbW1lbnRzIGJhY2sgYXMgdGhlIHBh
dGNoZXMgaGFkIHNvbWV0aW1lcyBiZWVuIGlnbm9yZWQgd2hlbiBSRkMgYW5kCnRoZW4gaGVhdmls
eSBjb21tZW50ZWQgdXBvbi9yZWplY3RlZCBhcyBhICJyZWFsIHN1Ym1pdHRhbCIuIFRoaXMgbWF5
IG5vdApiZSB0aGUgY2FzZSBhbnltb3JlLCBhbmQgaWYgc28sIHdlIG5lZWQgdG8gYWRqdXN0IG91
ciBleHBlY3RhdGlvbnMgYW5kCndvdWxkIGJlIGdsYWQgdG8gZG8gc28uIEluIHRoaXMgY2FzZSwg
aXQgZGlkbuKAmXQgZmVlbCByaWdodCB0byBzd2l0Y2ggYQpzZXJpZXMgZnJvbSDigJxpbi1yZXZp
ZXfigJ0gdG8gUkZDIG9uIHYzLgoKPiBKZXNzZSwgZG9lcyBpdCBzb3VuZCB3b3JrYWJsZSB0byB5
b3U/IFdoYXQgZG8geW91IGhhdmUgaW4gbWluZCBpbiB0ZXJtcwo+IG9mIHRoZSBwcm9jZXNzIGxv
bmcgdGVybSBpZi9vbmNlIHRoaXMgZHJpdmVyIGdldHMgbWVyZ2VkPwoKU29ycnkgZm9yIHRoZSB0
aHJhc2ggb24gdGhpcyBvbmUuCgpXZSBoYXZlIGEgcHJvcG9zYWwgYnkgZG9pbmcgdGhlc2UgdHdv
IHRoaW5ncyBpbiB0aGUgZnV0dXJlOgoxKSB0bzogaW50ZWwtd2lyZWQtbGFuLCBjYzogbmV0ZGV2
IHVudGlsIHdlJ3ZlIGFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMKMikgdXNlIFtpd2wtbmV4dCBd
IG9yIFtpd2wtbmV0XSBpbiB0aGUgU3ViamVjdDogd2hlbiByZXZpZXdpbmcgb24KaW50ZWwtd2ly
ZWQtbGFuLCBhbmQgY2M6bmV0ZGV2LCB0byBtYWtlIGNsZWFyIHRoZSBpbnRlbnQgaW4gYm90aCBo
ZWFkZXJzCmFuZCBTdWJqZWN0IGxpbmUuCgpUaGVyZSBhcmUgdHdvIGRpc2N1c3Npb25zIGhlcmUK
MSkgd2UgY2FuIHNvbHZlIHRoZSAibmV0LW5leHQgc3ViamVjdCIgdnMgY2M6bmV0ZGV2IHZpYSBt
eSBwcm9wb3NhbAphYm92ZSwgd291bGQgYXBwcmVjaWF0ZSB5b3VyIGZlZWRiYWNrLgoyKSBMb25n
IHRlcm0sIHRoaXMgZHJpdmVyIHdpbGwgam9pbiB0aGUgIm5vcm1hbCBmbG93IiBvZiBpbmRpdmlk
dWFsCnBhdGNoIHNlcmllcyB0aGF0IGFyZSBzZW50IHRvIGludGVsLXdpcmVkLWxhbiBhbmQgY2M6
bmV0ZGV2LCBidXQgSSdkCmxpa2UgdGhvc2UgdGhhdCBhcmUgc2VudCBmcm9tIEludGVsIG5vbi1t
YWludGFpbmVycyB0byBhbHdheXMgdXNlCltpd2wtbmV4dF0sIFtpd2wtbmV0XSwgYW5kIFRvbnkg
b3IgSSB3aWxsIHByb3ZpZGUgc2VyaWVzIHRvOgptYWludGFpbmVycywgY2M6bmV0ZGV2IHdpdGgg
dGhlIFN1YmplY3Q6IFtuZXQtbmV4dF0gb3IgW25ldF0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
