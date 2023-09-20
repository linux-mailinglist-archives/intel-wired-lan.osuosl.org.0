Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF787A8FDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 01:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81AE483BEA;
	Wed, 20 Sep 2023 23:31:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81AE483BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695252719;
	bh=06uJ6EqVHyJdLwRKBEA0e3yssthBMj4BBpa43Ule6Zc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SWywswdHnABirIyqLmdfcgvTIj/JDxAvdggLDQAC0QLmPIY2sh0yJDYVEZ08+UHBe
	 xelIN31RK1EHDLhVlc3y5Nbhj2PzVzecY05ONMiycMQnxEyUphDuOCSqAvXWC+HHEX
	 AmXysBsb9cT0KDTIvwATNrmJj1zWTPoFwOX8XNEgfEOXY9oSK6QRYHANA7BPPhpE/4
	 FlqFmrjTogZJ2I3aJl0vREYw9P+MDUUeyNwbNQiiCv8FbNbgnKSvOkc80YI2v8lJpa
	 HVLw756qIruvrmLNCnvyo7N0PsEPllOXUz39wduT97JOnJmxi3PTVfx9SCfVhMSpQf
	 jlov6XpKoxXZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2axsUTiAfZJ5; Wed, 20 Sep 2023 23:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF5A838B6;
	Wed, 20 Sep 2023 23:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EF5A838B6
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9329D1BF3EF
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77A58403C0
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77A58403C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qeYQo-KT_M8 for <intel-wired-lan@osuosl.org>;
 Wed, 20 Sep 2023 23:31:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F8E4400CE
 for <intel-wired-lan@osuosl.org>; Wed, 20 Sep 2023 23:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F8E4400CE
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379248333"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="379248333"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 16:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870568667"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870568667"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 16:31:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 16:31:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 16:31:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 16:31:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 16:31:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqrRR0DSzyQGu0oBcM229lrZ50JLer8UY/otIk7TYlwDQ3HqDU1hkKdN9jeO2oJtywlgtXBUzA4Q3sVTgaYBYYn8QgMfakAMGAPD/JzZKqEY7vraodgCD8sCUrjhh7UI9vXOSBDGzj7P/+K1nyQJNSW+RCNwk2muyeSQjgrNesQz/iHzWCfJxbJka32LwGgmtKNwUz3iygpY0c+4Zh8bTidOS5HDg2GAIkDmpPuKrIU4gYMuy6oCxcV5ZiQix5SaUz/KmezAj/uwDmnsmEeqnh2zHyvHCyF7svwhInYAElf9KEgC295HNY/Zi/ddE9cWbtnJnLI7tjnJuZAOcBXuHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1yYoENl3Dz3exkzodPDkHiblLB/KfwADyi+w0gopRTw=;
 b=io5I8PrvCXO8he1eI0Bs7MkejL2XF8/zrnXIZ/PewavVPYMQUzE3G32GKieNy3pNldsybiCnPTExhUZ7mYhmrxAcwwjBqbFpsliy2qlQw+YSjh4GS7BSJ1DbbNjHI/cbL3FivDNp2+brvUeETGWTY8idb7gOWB2GwgUV4yMj/bUf4R62D6mYyOOGkBrh8Ihb/ZS2WO967u8X23ecqp+lITJrhGCm2nJISnKT1oFof80S5wu/pbQYbSzMTcv1+Cl1y7t92l7ZQblSxWy4AgdoCXtHOcKxUaYA7RrNbv6KPxAJ5p2uv/9F2rrh2oB5937vgnXCODc8AtAm9sTOeqJMww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB5924.namprd11.prod.outlook.com (2603:10b6:806:23b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Wed, 20 Sep
 2023 23:31:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 23:31:30 +0000
Message-ID: <f05c2a5b-d434-5edc-828f-4b87049d01fe@intel.com>
Date: Wed, 20 Sep 2023 16:31:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
X-ClientProxiedBy: MW4PR03CA0100.namprd03.prod.outlook.com
 (2603:10b6:303:b7::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB5924:EE_
X-MS-Office365-Filtering-Correlation-Id: a1a85bab-0261-400b-5774-08dbba31b790
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jGWqXMtrxfo4CDmTSvDribyic0kefkdfnFtpUfqeJ3MUU9GDXaFf2qBw2DHIQX4QS2UPyJi+R9VsRCKa+qveT3UoHzdcf2Iu17YVDaY38d0zf0YhOIZrzyFDKNp7GT2iaXwmA9nC49WXdx2fzszqBXSUbWFYbB0KfVw16jhDtmg63A3/m5gig/q9ga1Fgges54GYoJrvvkIDMBI7dwnkGJq3dgwnJTEKWC7Z4GTN1PoXCC6HjxzwgbpRJqhzZgE8ewBGcXe5k/EukCjanCnWSi2UgoPXbFu53lYHGHQs9v3m3F6pHUq77WP2ycdiVpM5mXU+eW+3oXiUMuFzNjodrP7PGJeB5OnSQ/mp0qd8Jq3xdEbo6P2sRimKrAApXyRV58dhNkF5sBxU0JiEy4D9vquVZxzk/NNleaoHmIXnk5AOkxAw+bx74Gk+Fr5OjCszwocwVM2WgRthodeTClUJf6QZ3o3NSItd3r9glM7RthLJci9i9/DV4zoe8ty3tZC0lTFvaXdQWgPfQRtBe56AUCW+f6xQVzdIi7B4XpQufy3yJ3LcND8ugmQOxZibrNpwAYZ181GBV66m6WQC5ScAVkAkVkPsybFkxNcMBlUqa7nPndisAfs1+oujmG9hGwXKSK1BGUZcGQSEO1DXaoPaCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(366004)(39860400002)(346002)(1800799009)(451199024)(186009)(36756003)(26005)(41300700001)(83380400001)(6916009)(316002)(6486002)(66946007)(53546011)(6506007)(6512007)(966005)(8936002)(6666004)(478600001)(8676002)(2616005)(2906002)(31696002)(86362001)(82960400001)(38100700002)(5660300002)(66476007)(66556008)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG1PbzVvTG5IcjNRNktRd0x3WWlNenlHN0JSejAyRWJtQW9DMWd5ZmpOU1Z1?=
 =?utf-8?B?amdueXN3MjlaUjVqcnNpRTlWMEVrbk1NZmxCQ3hYeS95d2p4NnRDVURqK2Vu?=
 =?utf-8?B?NTd2ZGdpRnN4NmxNZGVjWHc5bm9rQWc5MDBwYjhHaktBOFBrS0JNRXlBMjJn?=
 =?utf-8?B?SmVFRlAzN1FBRXlGYkhscVB6ZWl0V0t0cmhOemZmWTc3WEd0WjIyZ1R4UEs0?=
 =?utf-8?B?aGhCM0oxZGF6RnJSZFI5K2tmVGtPMFlDdzl6dWxzNTdzWTMwRTc1OS95bXlV?=
 =?utf-8?B?bExHc2Qwd2NjaGtXRE5uSUg4Skc3WHlVejM0L1kyaUNObXFsdUJLT1BXeTVX?=
 =?utf-8?B?MU9HZGNDR0VEV0NTT2ZRNGhrZlgwa1BlMUUxZ3diV3BHN0xDcWJZNmVkV2lD?=
 =?utf-8?B?bHkrYzBBNThNaUNZVXFLOW1zRHF1YWpDbUhtayt1NnduTUJRRGhlTWhjdHpv?=
 =?utf-8?B?ZXJ0akV4bUtLMDJUVVFnV2pwdEZnWHVjeHFNTlluQkk1dnNNc0M3NWZJYTd2?=
 =?utf-8?B?aW45SjhTZFRpQ3VBZUJDU1dpNnpZbHJTVDk3c1JJem5rL3RIdmtMVkZGSXk2?=
 =?utf-8?B?cklTS2VscUZEcjRlVmsrTUpTeG5OUThFOTZDMkkvMXR2OGVpUEhQc2tpUDA1?=
 =?utf-8?B?bG05Qm9UNExXcTA2ZmJ1dW9tWVpKYUZ0SHd3eSsrem54ekFXclVKVzVwS2Ez?=
 =?utf-8?B?cGlvV3lTYXQ4K1l1NHBxZWRIS0NYK05BRjNBY0RzUWd1N3N2TnVLOHdkQmhX?=
 =?utf-8?B?eDJ6R0xrRnc0L0dIaEZ1MkhhTjRMckdybWJMLy9BZWIwR0lIa0hsNlczT05X?=
 =?utf-8?B?YUVqcnZOb0NhcWswMFFLWDQ4cGQyNjBLWmU1OTdIZjVTQWN5K05STlBONVR1?=
 =?utf-8?B?K0pkTkFvek80MGgvUk1CVUVWdXVIQjRYUUJoZC9pelkyTFNVTE5CYlh0WkJx?=
 =?utf-8?B?d1FIODZSNm9wenpDYnNvRzdHZkJVejUwdTFFZWVXbGhYbFF3QUs0bVdFYjhF?=
 =?utf-8?B?a1RUU0RxMys0aisyMnFWRGFxTE1Va2lPZmh3M01PbGtIakZjRXdFajA1NUM3?=
 =?utf-8?B?OXRFcGxqWi9XeFZXeHIybHJJNkRpYUIrM2FpWWtrV1VWMk9EVUNvS0YwQkFh?=
 =?utf-8?B?TkhMSURwVFEyQ244c2w4d3YzZHMwWlNXWThxanFJcmlnS0N4Y1JIRVBNRjFF?=
 =?utf-8?B?bGVFYUwwR2E2dGVhNFVzSTU2TktFR3krUkU2Z2liQVRtYmE5d2pXVk9ielc0?=
 =?utf-8?B?bEdpU0g4VE9wNk50OW81dTZFYzdBY2Y4V2JDb3dPeml1cUVBRVBpdURGNWdX?=
 =?utf-8?B?L1A4MGRKSVBrWWZ3RmZiZEluQzI3R1BtMCtpQWhKaUFkdVhBbnEzUzMyUmRK?=
 =?utf-8?B?MkI3N2dvV29ndERGa3d0QXJmT2lPN0JJZWUxQjN4RXhMOWpGRHZic1J0RmFY?=
 =?utf-8?B?WWJVRDJrblE1TFZRdEZMQ2VZSWg1S3k4UGFYNDdGK3ZaeU5vMmVwNlZ1Z21h?=
 =?utf-8?B?L2FhNFNpMGdNZVFCVGpNV0YwVXhXZHBKMktNck1kRG9hZWhUdmpSNTF0YVhE?=
 =?utf-8?B?dFQ5QmNKNWR5RVNkL3dEU1FwMStLa0J6Sm5lVjdpd0tHZlRSbFhQSUFLeHpo?=
 =?utf-8?B?Sng3WUdOZWxjSHR1ajdEVTliWXhubnI0MUlDWThMLy9ncDM0MTJNbHVuY0Vu?=
 =?utf-8?B?RUZ3WEpsNVVaZ0lGRG5PNXR6Vm9lQVZPQndETmxlaFZQL3JEOVRBQWVhU05O?=
 =?utf-8?B?dTk4VCtXM2NLZFo0a3c4MUIvMHNrbGdoMjJQamJmZm50QnNlUFYxK3dTOXhx?=
 =?utf-8?B?Yk1USW9ZTjRDajgvd1BxVGVQUCt6ZmJXZ3FMeWRlOWdyUVdQMjdhdnYrbnJx?=
 =?utf-8?B?ZUhOZjRMTncvNVJtL2hrenYrKzM1YW9NVW9nWkt4dEY5TVYzRGxSeTFGcU5u?=
 =?utf-8?B?NEhiWG80dlJmU3VOOTNsYjlkSnFyYW93WFluamllZUdjRExQUEQ4T1UwMkxv?=
 =?utf-8?B?SnFmQ21MNDR0bTRHL0kwVjVCdUdBQ3RDcjA0dG9qR2hxcXl5OTRlZWhUSGl0?=
 =?utf-8?B?WVpRaHo4ZVhFWGEwRHMrSzZxZHFJek9MZGJXKzlIWGx1M0N1V29CV3Vwa3lj?=
 =?utf-8?B?UUtmcDFRUmlYMXNqVUNwak9hZk5lU0gxV1RQRHNSckNJUDEvZUtNeUJIRUVS?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1a85bab-0261-400b-5774-08dbba31b790
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 23:31:29.9601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jSVEjsLitWyXRgZiLiAUd3vWb8Rg9lCrssnZAyQyagHsiX4IfM/us0ROkZcnIZGokPzBZcPIbh2bszidV8dF3fDDbXlimaY3z/5SjkhCmwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5924
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695252711; x=1726788711;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Fi2k6XYNYJnBALJkT6MdeXDq5rqYpUU8EKnlDUYLrbQ=;
 b=NAvw3I7s0fmVS0cdm1vfNEfz2fgxevuRjNoxxVQAUJ1W5t7PiETjHKM9
 rcsdY0Z4J75CXugg72QXGOBQ5IopFlB7ACXIP+5b7+bKVh4qVsHU2OHhZ
 HhHGDAO6HBmWyvZJLwDaeHjf577sMzxU+2cU3X9SUUcpjbDM8V14MRIC+
 E2NzDPGSyJTJRlEAtGDU5u1zVrLMaYjQgdHh06V2jnTlOLFs9bpiABJKK
 nJEI8b1v7C93I0++4NJpXvdQozQQYqj3tFsIjB8wAuvwW2pwFD94i9nOQ
 QFG14C+ekMV5ewhbqGM93N8f0OwB/Rniepyq0V+CYr+d/IUiN2Qe5POgz
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NAvw3I7s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] net/intel: fix link-time
 undefined reference errors
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



On 9/20/2023 11:07 AM, Alexander Lobakin wrote:
> Recently, several link-time issues were spotted in the ethernet/intel/
> folder thanks to Kbuild bots and linux-next.
> The fixes are pretty straightforward, just some stubs and CONFIG_*
> guards, so resolve all of them in one shot and unbreak randconfig
> builds.
> 
> Alexander Lobakin (3):
>   ice: fix undefined references to ice_is_*() when
>     !CONFIG_PTP_1588_CLOCK
>   ice: fix undefined references from DPLL code when
>     !CONFIG_PTP_1588_CLOCK
>   idpf: fix undefined reference to tcp_gro_complete() when !CONFIG_INET
> 
>  drivers/net/ethernet/intel/ice/Makefile     |  5 ++---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |  3 +++
>  4 files changed, 34 insertions(+), 7 deletions(-)
> 
> ---
> Directly to netdev/net-next, build bots are not happy and the next
> linux-next is approaching :s

I had alternative fixes for ice at:

https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/

that are slightly more invasive but bring things in line with changes I
had proposed earlier before the DPLL code got merged. See:

https://lore.kernel.org/intel-wired-lan/20230919233435.518620-1-jacob.e.keller@intel.com/

I'd obviously prefer my version of the ice changes, but I understand if
we prefer a simple more 'obvious' fix be merged now. I can spin my
changes again to cleanup/refactor in a follow up if necessary.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
