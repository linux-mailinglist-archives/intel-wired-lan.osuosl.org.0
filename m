Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D393585576A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:42:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6471D82CC7;
	Wed, 14 Feb 2024 23:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmE41kpq3eGl; Wed, 14 Feb 2024 23:42:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E5482CE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707954144;
	bh=W36IR8SMm627+1f4kwA8T6Gc/9nRu1pod+ptUNiaWLs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T5lF1a+KwMk76vtPIjIZ+mzwXixhZPN4+0GFjxSXNM/oRd5sre0jnTrj4jKnnDDjA
	 7FxD20YzCfgQdv29Mh81/Kk4AyL2Q0/HnX1dHCMv8ae9PsYkoAU7/yT61GZ6nHoAJV
	 5hamyl0Vj4V8Zo4pqUYkydJOMa5iPmuxi1S9GbK29/iMp+rZsBZLeaBPivKY8tu3vF
	 +iomOsxAbxAC0rMUpIebWm8+gTPaByMJhe4H8KXCEgaC/NyFfgR+Rvk4eTKAc54Qt8
	 Tk+FBuXV2RvcPOmgBOI/Jl2OkwgVxF2Bb/OKV/Q16z6gDQhObYzR/fbTDMA377Crbg
	 K19v+opmi2RNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E5482CE4;
	Wed, 14 Feb 2024 23:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC06A1BF3C0
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D72C84190A
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkwwW--THn2M for <intel-wired-lan@osuosl.org>;
 Wed, 14 Feb 2024 23:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 830BF418AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 830BF418AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 830BF418AC
 for <intel-wired-lan@osuosl.org>; Wed, 14 Feb 2024 23:42:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="4992287"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="4992287"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:42:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3671394"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 15:42:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:42:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 15:42:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 15:42:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3DX6GVCYD2ruc0d5GPqP4/ZdkbKJ5sodheEoe8kMiST5otNgSiCXGKmrVyLvEIngrgNDxPR3YnVxSdSGj34SHYlrlKLWugOc6Fm77fC9wn4ObI1u+TZ9nD3cd5qc9nL63JNeeS9gJoNnIX6YUpeA154Kd0auJ2m/+fCw6nypRb2PDI+ReKqSfnwWnJGyVuSyd6ukPtVNbNV6hklC5/6oTBfaenci34O8AbiLORqvjlilKoZrD+sZAP8/GawH5EqKmQfg1PkGHhJDD+f8qXNU8LX0ENpPfRFRg+3QGCEizURlSupynZpPwY0NGq0zLbZK7XxwYvYsnofedmxk5eVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W36IR8SMm627+1f4kwA8T6Gc/9nRu1pod+ptUNiaWLs=;
 b=NZLYirPNtvQy44Ov704QHirIcpHLJ1UKgiYJ/N9wKXxlvgDr/lij0fsFRQSPD0U6MDanLOYmbdJGOcQeykddRD83DvkSvfLuG/v4LqwkpEzWeI1rHjICHlrhJosKSGLjw1nT6XAiYsHRe41TpcfLZZ+MyXJ2SOmQdpVhHOnYROIiNPwK5Fl8XUvBlOfPlKLcy2Vt41T+jniJTbS3EyKR+cBNGVLK/PZqFzS6VleUZwtV0CWt0LHl9bLheaR52DZDAk9LCmz8DOApP/xNYo5AJEMpRnNq9pJ2T22EmUknD5ga029OgJC3TFRwa+eVakjCBbOa4l3eEaSQCBUgXul3/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 23:42:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 23:42:17 +0000
Message-ID: <f1d22f31-48bd-4b2a-b841-8cef82fe65a0@intel.com>
Date: Wed, 14 Feb 2024 15:42:12 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20240212110307.12704-1-lukasz.plachno@intel.com>
 <20240212110307.12704-2-lukasz.plachno@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240212110307.12704-2-lukasz.plachno@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0287.namprd03.prod.outlook.com
 (2603:10b6:303:b5::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 047c610c-8c69-4737-46f4-08dc2db693e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4FTJAa+tNWW876NTHQT8u1hmaBJCAPYWHZWsHUA4Oop7w8J2F+7KZrTIVZc8DAVWjr3yxAi/mtxhuZbJf5jHOCi7u+iMBjhZpL4vb8MYWK8uBUjDLBCScVXUDc8ETpE4hcXKLyz7S5upwQnS6qKi4M42ClROQVs0Dk4WRhHy9mQXVHqbflH4mvtB+RCvNjJ7FqytG7uEXuXi+LFSfqirlnFwfbA17ntvWen53PXJ3DFXl2coqmo7WJqzFnI4Cy+p7sW9eBAbE01MqbbsME6iW1Fu7NndZ2EkmBpHEltiJXNnqVCUKwIbAKh+TfSI5L71Hz3mUDY5FcVZVsjYSRhz2KnpckLope0KBGf6jiZqD9M0O0CcgSlRD09owECwLnHEJqbt9et7LYWYWXJQMNYf+zmr/shukEpHMp8s71xNL1uwOMTIA8wHYg680i294n/81yH3iomYagCgsIzNAAribPmuaEUAOQ3+hPPFeL2qQpejYe4IeIrI8spGbleSawYQh0qyeM7tR6uwKaWB1PpivAGzmqqfwKvo6vtJSIkECnOhhSR+EcwARAwF7w+sMmBn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(2906002)(5660300002)(4744005)(38100700002)(6512007)(53546011)(6506007)(478600001)(6486002)(31696002)(86362001)(36756003)(41300700001)(26005)(2616005)(8936002)(8676002)(66946007)(66556008)(6666004)(66476007)(6916009)(316002)(82960400001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzVEb3loclVOVk1wSDdobm1zT0xwOVlJM2RiUWxqeS9MRkhTQlJOZEFIMkF0?=
 =?utf-8?B?cWdqWFlweGk1Rkw0RW1CdGhSeDBkTTYvMFQ3UGhxV2hySXdQMjdpemMwYTl6?=
 =?utf-8?B?M0J5QTV4TWFMcjJ1ZnkwVEx2VWhrWUxGemJhN1psOGRESWdOM21ma1FwZTdw?=
 =?utf-8?B?Zk9EZEtvY0ZjUjl4YmNLdnRPakhaTmdBbnFodGdNQWpQSHMxdlU5RVRoVzJr?=
 =?utf-8?B?RGwraFhCQ0docmZIZjRPQ3NKaW9URFcxa1hTVXB3cU00MHQ5Y2RyU0d6cGRV?=
 =?utf-8?B?Y3Bwb1pSNFpVMTRzRllUcEF6YXZSc0FJbXkzY0ZBQ1lRTFhyMTY0SU41OGJL?=
 =?utf-8?B?SUU1Z2dhL2FiVEF1U0FBQWJRbWMxTDR4dFltMGdNaTgwdHd4amtNL0ZxY0hs?=
 =?utf-8?B?VFp3a25rR1ZWb0JIdTVmaDBIdEl1d2tEZWxSNGtXQ0RIckxCanVrV1Jlay9u?=
 =?utf-8?B?YTE2dnZraHhQSUtyd3QvTHVWdlViYWtubC9WY1B4emFKaTdCdW9OT2QzaGpF?=
 =?utf-8?B?OXR6dm8rdVIzRzdWbWtpazdldlRNNnhSa2JlQ0s3S2t3VFBtTzkrUkFMWDBT?=
 =?utf-8?B?N2VqaHdOdTM5U3k1UkU0SVpLOTNyeStZbFZkSEZvSGFLdnlFZnJNZVJ4ek1G?=
 =?utf-8?B?NmxMUTduQStNSHdPWnVoUmk5V3hHYUdHNDl0ejVoWXZUcHQ5Ymg0V2IvZkRp?=
 =?utf-8?B?eDRUZmJBOElpQ1BnRE0wQ0F4VzJqdGxVVEtWZHN2QkowNzFUSmhLRG9mdlpt?=
 =?utf-8?B?S0t4NlJkUEpLSW4vR2RaRXk3QlJ2L3JvaytUcG4yU0JYZDhjV1lFcGE2cGts?=
 =?utf-8?B?clFyWUpKcS9IZDZhSjdXVUgxUitDM0g4ak5CZm5BNDBhYkhLTDVnOTZtTlJ2?=
 =?utf-8?B?YWRjaVphTW1uZy9YVk1sRS9tZlp6eTdrL0FzNlp2YVJmRjVpUCswUkYvaVJV?=
 =?utf-8?B?K1dDNHRvVFJnbmxlTm02cEExblZ6WDh1WVZRVTFyakw5TVplUXh3Mng0NlJJ?=
 =?utf-8?B?R2hHNjlJM1UrZGYzVW16Q0IrYVVWRldUc1VXNEhMYVEzYkhMRHVjbEE2YjBz?=
 =?utf-8?B?UnB3QlZKbDlEUHE4K0QvL1FyL3owWUZLWGxlQXJMUStuZ0ROR0RVTUtSYVdE?=
 =?utf-8?B?RGs1Mjd2eVY4ajlNd2hNSUVRb2dDRjJvVXQvMW1qaS83Qmd4TUVKbjVKOGRH?=
 =?utf-8?B?KzZxRWNvcld3MnhzUThsdzdsOHFHYUw0T295T3M4RWhXY0l3dGFRb1lEVTly?=
 =?utf-8?B?RDgvSzBIVXVJWWgrTnR6UG5tblcySE44dlI5UHFKQjVLY2ZMc0xNRGF2V2ww?=
 =?utf-8?B?andFYXR1Y2JCSXEwSzJZVlVrd2hQeHJWSHVSMWpHbDNEVVVpMEdPcmMxSXBt?=
 =?utf-8?B?VzRrbFFmZUF4cWovL0tCK1NUM0szaDA2bVMvRHhWZm10cHVjVnBOUDFNSWJE?=
 =?utf-8?B?dXFtWkZzNksxMm9wYXVzN0swVkszcW9rdXdVWFViQ0hsazJZc3Awa1B6V2Rw?=
 =?utf-8?B?eTQwVWgwdXZHclVRS29kNktZa0ZPbnRreFFGa3lRUG1qcWZlZ2hqSVNPOTkw?=
 =?utf-8?B?VzUwZ2tySktzU3cyeHhEZG9yRVlBRXhUVFlScjRYcU1GOWRoL3Vsd1RyUGc3?=
 =?utf-8?B?WWVwYU1oMXI3Ukg0MForU1F4R1drTEtzb2tOQyszRUZEK1JJY1FsQzJjNGFr?=
 =?utf-8?B?WVZnTUd6SkRlNEZGRjdnS2kwREFRTm5JN2JNMnBDQXhWYmpDZVUwRktVajh2?=
 =?utf-8?B?cXBFUkhMQlFkeE1HczJyWmFEN05MWFpoVThCRTQxMGNYd0pUMmkxNmU0U2RQ?=
 =?utf-8?B?N21zdzIyZXppTEQxemE5UkVaazJUdkhDS05XTmhvNkgwZ3MyTTZOcUZTZ0tS?=
 =?utf-8?B?NlhVSDd6WmVVUkVudlR4T1lrZVZtWXh5ellXdmpzelYxbGxxRk9MeUFLSkpq?=
 =?utf-8?B?WFRQeUNyQjIzNms2UlZGc2NuTEVhUS9qdUlyV2MwR0pBVFZSbFAyT1I1d3Jh?=
 =?utf-8?B?TW1uYTVTMkhoTTR5RmRuVDRMOVRtNGhrSDEvczR5N01GbGhzM0Y4eWl5VnBR?=
 =?utf-8?B?MXZlTFRUdGY3b28rQ0ZuL1VPV2ZjL3lpaWUzSUJhYXpxdng1WVczWWJrQkJn?=
 =?utf-8?B?OUF6c090c0cvQ3BhdnBhNDVUbTdmWElSbjhueU9jZC9vcU1ZcUE0RVVhNVN0?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 047c610c-8c69-4737-46f4-08dc2db693e3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 23:42:16.9459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5hZkDthV3EN8tHoP+e1PLU9tuMuXKkl8RTOzKk47zYO5bCMaAnbstRCzIAyLKCnQgZfNHE5TKmCkqSpgyPhXEQ8D6jEt7wYLTnmoQSWp8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707954140; x=1739490140;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EZU7M1n2S9lB9vAdL4KoODjMl4+ZEjK9Pr66LluI3Vw=;
 b=dewtF4nsovlddo+klezXsBoyXLDLu0IzODfCxRQQYXFybBSCcVu/Z6gw
 FfwXaXWjg85lKMhgdLnEpPNjwvd/hAjXqLhrvujIDElzHpvq2zELatfXa
 0MPuGiXfwdfEXztkH9BwscwPGGHfB7nC1FyS8B+rIptf1Y6q6sNhcq/Ec
 RSfkGIU3RAvPuDhiTofDtQLwH1tzdxbOKHjYSC9w4YmEfVihuSCKoltnt
 2k8kRxt0PTb62riW1BBvAPUzldbrAebogDhiLmw4hx5HH4KEfOra070Dl
 4GdnhkaSP5GKzXG5Dk2l+R6scNCEGU+leD4AmROc36Jv/kNjvLr0n81bq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dewtF4ns
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 1/2] ice: Remove
 unnecessary argument from ice_fdir_comp_rules()
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



On 2/12/2024 3:03 AM, Lukasz Plachno wrote:
> Passing v6 argument is unnecessary as flow_type is still
> analyzed inside the function.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>

Good cleanup.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
