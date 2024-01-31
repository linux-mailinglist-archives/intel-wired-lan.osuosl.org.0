Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FD884461A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 18:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 611BD40465;
	Wed, 31 Jan 2024 17:26:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 611BD40465
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706722012;
	bh=JSlJE0HjOmMzr6QY0g1HVQT8eLQ/YCGnabI0yrD+VHA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZBcCBSUkcqGFwBDEmfYDx1rGeOzy4hS7n1fP8ZCNdR0cna7gBtKGRMOodBLne52ff
	 bmAFvWyAEDtLwaRot7WRxL+I8MdMFTcEuLRLc3LB799mxy6WjgsmMf2iQUG3g1uFGc
	 JLSpDegmsLJY1OpaXrSzdqVFMr2VObxfSLSGe3YKy7QqoHMU2AVydj+Da2GD3PjKvG
	 61/2MEb9+RD5e0PCvzZ2yA2wken4PJsVnf4RqIUe/hWcvU5gbz7HYS/8WwduY6VadI
	 C5kidPBIa7s1CZQtDliVG32TA2XOen0W52vrCbqJLUdfOkF8ycM04AYJxHYcEJOud/
	 dQxS/NqnWb8nQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_Zu0UuwxpLk; Wed, 31 Jan 2024 17:26:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF358401CC;
	Wed, 31 Jan 2024 17:26:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF358401CC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A88231BF2A3
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 17:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C7978438F
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 17:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C7978438F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id he0To1RJHVqr for <intel-wired-lan@osuosl.org>;
 Wed, 31 Jan 2024 17:26:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91DB284046
 for <intel-wired-lan@osuosl.org>; Wed, 31 Jan 2024 17:26:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91DB284046
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10306426"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10306426"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 09:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="4121052"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 09:26:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 09:26:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 09:26:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 09:26:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 09:26:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+I+JZQoEV/gfBjLlvYyFyxqgYV95cR2ufUHQFU1+PRnY+SgqxN3cBFJFM4NBDo/4I9LgolTXor8fyxIeJ8gmE524lhM7bxfpbuuWqkm1fR3uOBCzVSIB4GJtb3I5JQpVskZkCOlRNB83y5ypimClGlQh+8iwhO90wEe+mLBGnqFgyYZky6cqZxKLP+3PF2WxGtEgCEzLVCAwO7VnQJFl+6IQpkFSDZANvKY6F9QFaAjZwPF6QQM6TPWqrA5wQZRZi3H9dbSdaxzWJqxHVTtMd6TyW0buTLnvUuVCdg+OKYBWJn6yt9R6D9ArMz7nv2CS2InWtaJwD6Ei0ytPgF7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JSlJE0HjOmMzr6QY0g1HVQT8eLQ/YCGnabI0yrD+VHA=;
 b=mG+T5X/aSt7tLowXELqYSNddLW4ckKlSWt9ldMxr+giwI1uKQ6Fn9Pk8Zh8Y7RwkghannJL4xp9uZ0eiCqNPvvaNTlbBZmd28rVJ+gHzLrJdPiSVeGu9knR2l8qBHcMKqg8AFjMHiHvuwo8QXNo+QmlWZdP+ijLukNGVBoqQ70P7Ku4EXWlX9tbVoh4ih4BVyjpcjebocfI+aX4JpxYptqqSvefj3y4d5NfNiMlbIpCv6b+m4Jhtj4a062HRcUQIQ+U+LfnEIkJjmUBybNiQvjCFmssPxr29Q0K2IzrRIRBqW+knB+fbrPXQPevupUjvMdF6FeZgwyv+jBPM4o7zyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7775.namprd11.prod.outlook.com (2603:10b6:208:3f3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Wed, 31 Jan
 2024 17:26:38 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 17:26:38 +0000
Message-ID: <a2d44873-31ad-4a50-e849-2cc947a3544c@intel.com>
Date: Wed, 31 Jan 2024 09:26:35 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ivan Vecera <ivecera@redhat.com>, <intel-wired-lan@osuosl.org>
References: <20230726204351.3808746-1-aleksandr.loktionov@intel.com>
 <009c90e8-74ec-45d3-a61f-8701a7f6ffaf@redhat.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <009c90e8-74ec-45d3-a61f-8701a7f6ffaf@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0335.namprd04.prod.outlook.com
 (2603:10b6:303:8a::10) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7775:EE_
X-MS-Office365-Filtering-Correlation-Id: e9adcbca-df40-42b1-cfb5-08dc2281c832
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z0n6qrOKBB6xsgcXEUS5cABIT8qeM3XtdPF6gnnofIofh/cAbEZUeguqsPKK8J9kO3xBazEvE78KsihjRIIqYS2C77l7aEMMWoaLV3oU/3RG2AAHll/egJay8Rf2oVdQI+W9gNk31P2xy1zXRJbCR8RxT/oiolpX+NScMVwLYDtl5TPh49ZUyPsoZ9lqgNynAkrZvy3HxHyyKh5YXuEuXrE3SU87YiEG5q/rouISbmiMXf3Ry/b86vNELZ8+3vTitmm6Kh8l9lIoI5OKnzgv2jop+lRAbgVtMnEpd5km+7BCn6oP44oWvFbHpxkOjsIDJEiVXzLdBtu6Eb78/KZRJVkwbDG2Iqx0kbXWGjq63BQS+722SqzZh4b8q1JsmRg4wquuyJjo5w22ffhayvdXQW4D09lNaVt0qMfg9++xGD8IfFmF5QZXENyMQt+mbBQQ9JxMc9EdmEKdy8TGCSay1mb8SkZIC+gov1GmRfsSM4Ys3nMn+VoXNodHFfswer68qcdg3qUWSvZr81Nb1WYk/Yqx6Cvjt8slMQiaKxC0jDdBRRgF9oYr6HdfSK10VMeLgd7XmJJv129mGrMjSpAD3ojAEXf+aZvtEdiy+WQQnLzFX5ktV20SWCDYU498/wsAw/VBqphTATeaKEE1T27GrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(346002)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(31686004)(26005)(5660300002)(478600001)(6486002)(66946007)(66476007)(66556008)(2906002)(4744005)(83380400001)(53546011)(6666004)(6506007)(316002)(8676002)(8936002)(2616005)(6512007)(38100700002)(82960400001)(86362001)(41300700001)(31696002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEVhb2NKT0tlcHJLK0IrdE8zTFAzR2ptSGsyVFl3c2U1OU03R2M1clRmNGZ1?=
 =?utf-8?B?Nmx6NkRaQmtXcmxNTTk4RC9qYkpWUlNvMERDSDk1ZFRqWFNLMWZVdXpxMlVD?=
 =?utf-8?B?cXJuSFBXNXdhRDhDeEtzU2dPbWpTTjQwN3NMdjQ2VmI5bkJES0RNL1pZbWdM?=
 =?utf-8?B?SmFocW1veFZoYzlha1E3aE1SOUNHYURVdGtZSVlTZGZhbVpJckMxNURuU3RD?=
 =?utf-8?B?SURneHZtN1REa0FmL2dkM3g1L0dNcnZlZk1Md3YyUFBERnJkNDlNQUZvUWRs?=
 =?utf-8?B?bVUxUzhNZXpNR3pRT1pPSkplM2UwaWJZeFArQVhXU0dyemVLMVhNeENPOFZ2?=
 =?utf-8?B?R1N3STdsdWU2SkpnUFg3WS9SUXozTi9yMFN3eVIxL0kzbTBWMGI5MFZ5VTdp?=
 =?utf-8?B?WXJHRDVGNEVyK3NneHJoUHE4Y1JkbWJTZXM2T3ljME1KR2JQUG5MK2RJcG1l?=
 =?utf-8?B?TnBwN3RGeFRhZ1BtTm4rdnZMSEtFZXlsdko2S3pjMFFkMThGQjd2eE9lNXNo?=
 =?utf-8?B?SE1abWVUNm9EUzlIWkpHTUhjWHNvZEhJNHRISjl6OGRPVGJ3d0k0M0JlcUVU?=
 =?utf-8?B?aDUxMGs2dE1uQmxRKzBZRlo0T2VWL001YUdBMjg2Ri9oRWU4a1RGbVVWSHVD?=
 =?utf-8?B?em51bFE0SU96OHorQjR3ME01REY2NzVsMGNDU2lNS1dzWkhMbzROUEN3SmZT?=
 =?utf-8?B?ZnlkYjJVUzVZWWd3Ykh0S3JseDExZmREOHNOdElrVTZIa1F6ZlV4bGZLc096?=
 =?utf-8?B?dTFzYW85alF6blhiVzZSbzNOWWdvODFsZy9LMytXQlhlWUk4NzdzMUMvaisy?=
 =?utf-8?B?MGNzdlU0cVhRN3o0Z1hYTDgxU09ldXhTT0RiZGxLRHZlTXY3SlIyZVVwZWFz?=
 =?utf-8?B?eGJSVUlNVkdxN1pBZElhbUpYVEJrZmNwRE1TOFpHVVFLKy8zTnFHaGZuTHc2?=
 =?utf-8?B?bm1pK1h1dy9NR09VNmpUWkQySW1sT2FiYnZOdWV3QytYZU0xMjgzTFhvWjY4?=
 =?utf-8?B?U3JSTHJTSy9sem5JRERPWXZjRDVzck1uUDBLdW5Ud2tnaEIvNzJNSUJPNDBW?=
 =?utf-8?B?K01zaE9rdHg1aytuZll6WWZWU2M4QmNmZU1WbVhrY0pqb253OW1Ib3gyOCtp?=
 =?utf-8?B?ek96RllMQ2NTdTZUdGZXTFpEaExhOW1Gd1FDTThrZHFQcTFkVHRkWTBaVVhr?=
 =?utf-8?B?MjdxZzlmQjk2blB1eEoyYWMrKzlDRzFQcTNqNDlBS2VHa01jcUlRSFRiMnd0?=
 =?utf-8?B?aE1MUmwxbTBWN3YrU0kyRUY3UHJCeW5NMmFtUjFUY0pwNW9GK2MvblpJQWRq?=
 =?utf-8?B?YVVQdHkzOVd6VEtZOS9KL1RKK0t5dEFqbFgxSzBRMDRSQmV2aGhZUkxiSk1N?=
 =?utf-8?B?czhsQU91eThnQlU5bDZjMGY5a21HVjFBNFRiT1ZqUUJuQVEvMUZvYTZCcjdW?=
 =?utf-8?B?Z2wzQVJsVTZQV3MrWVdtN3dGVFhHNnNDQ0F6N1U2S2JEWkhycjQyTVJDOXFx?=
 =?utf-8?B?VEJXQklzMTJGb1J3NDVSM0EvYy9TeWJjbW56a0VWV2F3dHZ6UXBpMHhxKzI4?=
 =?utf-8?B?NW5rVzFuSVpHWVJQQXVwNis1cVZjS29JSVNpVTc4aUNHTTFwQXgwajhNRGVG?=
 =?utf-8?B?aXQrVktIbk9FaW5oNWxBSkNmZGJnYlplSVowdWh2czlvRHpxdkQzZEhGOGRp?=
 =?utf-8?B?ZlVOaVg2a25IZFg2bFBwcnFxWkZRK2x4cWRRd2EwR0xoUTVMU2YwQXVucHdQ?=
 =?utf-8?B?K3hTSmdwdW9QNlg4Mjc3M0dpbnRlMk1KdXdmclE0YWk0dC9xVmlEMUVvRmdV?=
 =?utf-8?B?aDJnNW13aFNSMytDMmhiUjFXd2EvZ1dTSDhVR0I4MUUrVC9rTWt5QWk1bmtr?=
 =?utf-8?B?NWhmZUxBQWdWR1gzVHEzMDQ5N1pVdmJKSVF0NDJ2RWFwdU1LUzdqS09oSXN4?=
 =?utf-8?B?bTFSY1JoTFkrR3N5WGtBdWtGUlFXdHlYQTBQNzFVSkhudUIvK0F1TEl5aEJY?=
 =?utf-8?B?WDVKeEl1NjBES3IxQUNCbjNQV2VHQ2MrRU5jYTUzODQyODZOb3djZjd5QkZz?=
 =?utf-8?B?S1dDRTJPOVp0S1J1NTRJVzMwWXJvL0lQalRuZ1JJWWcxZ1p2VVpRUmRIdUpL?=
 =?utf-8?B?YnhwNVlLTThPVHpOVjlaem1mL09XQ2R1Y2FoQnl1U2NFNWxnbVd0S25xY3Bl?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9adcbca-df40-42b1-cfb5-08dc2281c832
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 17:26:38.7332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wxGqdiJLNlbHIk39oru1GXPlbGXDIDQhU6iCBeasaz9k/79YEd89wNZ2hyY/eUiVcxXitVeUCLGsk3sBq1M+h/RQdcM/mOj46W4/kDf8wgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706722003; x=1738258003;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z/O066qnQHBxxOhoX9NTKXOC2UDs8DIxaiMSVwO0kS4=;
 b=aeNDm5NO3/z+C/OhbVGLNljIXCpALWxvDS7w+2Ou+7Oe9mXE5zeRmJ1j
 flay8UamWR1HRxoE5VIBTqpp5ejiplANZTFjWcFbN4X346W3lNG+0UUDw
 BHQEAo9O4Ja97XaBtp8yffUK5I/LHtfe57DH1kSBF8/97AQIu/8wUdTfv
 +wTwOfnxzTZPQcSTI9AA+fEv7Roku+RGdGKt0Vo7qp3L8fa5Jr6IDiJ7n
 Q77U48Xukz3voU5ymgGXACypYNCQftIWrsQfa+i952TVcJOVSU09UfS0y
 lcplmMDaujdUZxFZLN+5wKKCktAuYOo+MISXwKJ5tnvnosJ9o7Mj8OIIg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aeNDm5NO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix livelocks in
 i40e_reset_subtask()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/31/2024 12:08 AM, Ivan Vecera wrote:

> Tony, why this is marked in IWL patchwork as ChangesRequested? There 
> were no comments and the patch disappeared from dev-queue. Are you 
> planning to process it?

Hi Ivan,

Our validation found that issues still existed even with these patches 
applied. I thought there was a response stating that, but I'm not seeing 
it. :( Apologies for that.

Thanks,
Tony


> Thanks,
> Ivan
> 
