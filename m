Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F33A3708A90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 23:29:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A7D581F0F;
	Thu, 18 May 2023 21:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A7D581F0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684445356;
	bh=FNyV0XijXAgbDROUOxoXAgH/Hv3MPzKqN6qpWqcN+78=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x6dYVpEvzkuevEuzcOrrdP+vCrkQtBwOx9mZ2TV3UGsKQ/u1gbaCl/Gr/5WdGtVl3
	 qF3fgdIG6fPyy7gHknRjCWrfNsvpP2KmaNjI8AHVURB4UC3OQkJNYXUzjj+4W6B468
	 WiP9WrHQh10135x7pipvNaXcg6b21wjX3yF87kSgir5guOdmHv6GHo0ak+GkvVoS2j
	 FmDcLfFaLd6fI6xqrdMGxUpkx3U2N8Uwy0+hGF+3cgrvBYp03hZc9AnPQtCagQao4P
	 +uPK1pQWq81Y2ITogJ3br5BwDV9ERx2wOaTFhpCYmI2igL59OQNbgheeuprAZnfKZR
	 pTrnTb1iKoUIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1itOa_DGSqpC; Thu, 18 May 2023 21:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42BCB81EA1;
	Thu, 18 May 2023 21:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42BCB81EA1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6F21BF319
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 21:29:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B3B681E40
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 21:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B3B681E40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UHD7pOSTJiJl for <intel-wired-lan@osuosl.org>;
 Thu, 18 May 2023 21:29:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 387C781F30
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 387C781F30
 for <intel-wired-lan@osuosl.org>; Thu, 18 May 2023 21:29:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="438547071"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="438547071"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 14:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="826538378"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="826538378"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 18 May 2023 14:29:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 14:29:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 14:29:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 14:29:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 14:29:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fimJbHpwOWGcc0cau6ku9NIfkB+KLlHnf6DRPbBbLlSHW8roCfzya1nEpO/r4Ni8eeG2ZKQW/MyGrgHKOSQPzidPYzQG0yzrDzA5fORFfqN6m2hYS5OcMtvrHdIy9BkvVq8HM/yyNkJFnH0Q33HHj2yXHVICdThdBe/yxcvRyrlUvtvciErRGG10AL3EN4p6bzvRkQgBzej4lnTO+uDmmL6FBw+7tfnVZSd0DqnYHKjH+5jz4Lf4/0GEoHH4tPwA0mN0EZzUzfjoHDASwLcWu+KdKY+bpXv4f3AhQxQ5lnt4jv9VlYw5sXR4g/CMdD5gb1HAkP1FQq+DpWYgAf1nLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xptz+1a5HhuTuVF+Ty1ZD8wvxQyhWmiExQ2mGlee9iw=;
 b=VjaKqF26cGQtZECfdXePppjIJbAqtk4NYN0kdbxvk5iFju/92677bvGxgTIYtFpk3bRYnV/31bKNFKxvZqNMJtvE+UJGTFD5ykR0hQaU4vorhNF9jcCEwc0rXKJy1u4t12qD0qPOa261iSkv+gp3oG2RwhMHAbJHpFyGK7Y5vuRFB+AinK3H1lwFvD5aKdaszg1w/WUYPXLpHwoU6RUNQ3cS/uBsf3u6w/55Fae9K/qptITWRXkxBDI58SikoVbFf+2EH1xJHAFVxl0gko5QAOeiMgBJL4qMTI1+BFaJOQMUIOxdSeDoQGkvpUiBClhoYg4UlH9LppVAuuD3w97AxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN6PR11MB8104.namprd11.prod.outlook.com (2603:10b6:208:46c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.35; Thu, 18 May
 2023 21:28:59 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::27fc:4cc8:6fea:1584]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::27fc:4cc8:6fea:1584%6]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 21:28:59 +0000
Message-ID: <e6e668ac-8175-ea5c-25c2-65bcfa60eca6@intel.com>
Date: Thu, 18 May 2023 14:28:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-5-kamil.maziarz@intel.com>
 <73793dcb-c47e-41c0-e34c-a9de5258d385@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <73793dcb-c47e-41c0-e34c-a9de5258d385@intel.com>
X-ClientProxiedBy: BYAPR08CA0003.namprd08.prod.outlook.com
 (2603:10b6:a03:100::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN6PR11MB8104:EE_
X-MS-Office365-Filtering-Correlation-Id: 421bfb2d-d754-4fba-33ec-08db57e6e4e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95OwL1bBKrwn8a85vlK0mwzFyChHakWly5+MyEfmRXlDZRTLdStwHfibjDrHIlw/6hLS1CrVI1cRzv6+Mb0M0J1AbSNp9ywc9vvEXw/GoiAzxAN22HgezcU9nXVBG5jF5Ut4jeyn1MDHRrsiq9MLc6W7ElJVy2oKNKKTQuVJky3s8GYmgQ7q/qsXtmgZHymyHAMqNP9rKVJrCiaUklZ0NEnJVUACCtkE99wJ776EczTHZM5hS35HJH5PQcol3HYla47dR0vsDUXbNBHmnDJOzg5DqnD6ZL45Tthzw9giujwwWfYdb/M9r3g3MTXcapVVZkfYTi2W/RfeQq6Ig3RQQrUTZ5am92s4KVdV6Nu4p4VKbJM53qZ4vkTxSyYZFFrcgZcfoUt+p7/DifBqYqEctnTmHMA3Sg6rkpmOlDiFSpqoNEsQu670Sjw5PXUx3ox24m7GhpEGPNQpLCedU/ivZLfykw+JL+gNaxLtMwjP1jd/Ko4yR1BMjdqFE4+EgQYBoeNIPjxznT7yjGk5OrMGEsa41jJQPJCMMVhdaZnwV8bAEZpXVpJQohiYH0AvnGB6aSCOJRzzUyWA+9e/bNQFDPcXGi0Q6T0UdzjwACwGe3IUdwIjhlF6rffSgS5jE4AOlBpNC1BiG2fjLnS0L1qRpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199021)(36756003)(6916009)(66556008)(478600001)(66476007)(66946007)(316002)(8676002)(41300700001)(6486002)(8936002)(2906002)(5660300002)(31696002)(86362001)(2616005)(38100700002)(6506007)(53546011)(6512007)(26005)(82960400001)(83380400001)(186003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnZUUVJ2bVhRU1M0TzhPT2h0dlRUbG1FT2RBV2hXa2pidysrVDZYaytVeVNL?=
 =?utf-8?B?cUxvV2tDcVJRSitmdDdRdC9RUUhHeXdMdGJGSkFiemxPc0FxSG9qMnJHdjF5?=
 =?utf-8?B?Nm5YMVZsMGdna21WZkQydkhnUGw0TXRxTE44RGp1RmJlTm5PRmRPeHFEWDVH?=
 =?utf-8?B?bXczYmZySmw0YlRPemdWeXIxMHg4Wlo0TTdJa1B4TTBNNFdLYzJPcllOZ1R2?=
 =?utf-8?B?NmZyU251WFdYNnpxbGtyU091WmlaN0NSQ3Fya0NlT1hFV2xkamU4S3FsekRF?=
 =?utf-8?B?VVNYaFFDYjc0L0xlTDFPU1NCK1FZd2FZZDdzNndXM0dWYzJrS0tXUzRaVVRK?=
 =?utf-8?B?NTE0c3c2QmtBN2lZUllUQ2g5dXp0bE9Zc3lqVFgwQlRiUEY0WERDR3crc0po?=
 =?utf-8?B?bjN3M1o4YzN3NG9QV3JGRjlnbkVLWGJKKzdlWDJvY1NsM2xzMnhBMGlJVGZG?=
 =?utf-8?B?cE9YbWlQTXpNcnVsU3RQM3BpM1k5c3JmMElpYXVGUklESlA4b0RGZ2ZNeFFN?=
 =?utf-8?B?aXkzOXljemRRNHJEdW4wZXRaVDdiNkZuLytUM2E2SmhEZUVjL3AreVA3V3Na?=
 =?utf-8?B?SlgzNDROREVjTjRJS28vNVR0R0J1RVQ3UUZ6STVhaGZXY2ZYS3ZwdlB3MFFK?=
 =?utf-8?B?RGJzRDJYRjJpZ0lvZ2k1cXh1YVhEWHA2bmYzTndqTG1YdHo0ek5paGdFbzdV?=
 =?utf-8?B?VEpyZWY2NUZMRjY2VHF2Wi9JTFBOMjBWNWJWUWRheTg4b00yNDZFeHVjSE9s?=
 =?utf-8?B?YzJCaWlMVXQ2VWg4WXJOMkc0UVN6emgrVERWeTUyRUhDanlCTTFTS0RtM2Vk?=
 =?utf-8?B?ZnNlNi9aRXBscXI1R04vWU1pdWVkUWJTR0hhZEQ5TGRYMUxTakUySzdaRWsx?=
 =?utf-8?B?L1haQVBLNzJycnhLL3VVMGlwTjd4M0hxOTlMR1k1R2lRM1BCU3M5TWRRNm0r?=
 =?utf-8?B?SW1jdnZ1c2FkSTNteFkyc202SENyNjhkVFdwK2p1SUFVYXNSUGRrUkUreHdw?=
 =?utf-8?B?TTJCMkNDTXN6ZlFCMVA5M0xoN1RwU0FGcndzQVRMbXFzT3pSSEpycmdGTjJz?=
 =?utf-8?B?SW5uUklXWnBNNXFnSUxnNU1CdmtZNHIyZTZFUkV2NW5oSS9RK3pkWWxXYzJE?=
 =?utf-8?B?UmZIcHlJcEVSZ0VOajZCSlFCSlFvOUtIMzhlU2htc09nblFISnFEYnk4S09L?=
 =?utf-8?B?T1JjWVZNNUphOXo1OEkraGtldFVqUDh6RDhOUFlLSWFFamR1N05jemZ6ZVQ3?=
 =?utf-8?B?cVdhWlNFT2tNZU4vL3FoTTJURTg2ejJWSVpFWEJXVDQ0ZlpaUkQ1VmJ6MXpR?=
 =?utf-8?B?MDg0a1BMbnRLaVo4RjR1V2oxaDNIbkgwT0dnNWpvRGsxdlRqMzhFdFBGV2JX?=
 =?utf-8?B?TmVLUnJpRDMxMmZZZFkyNDdYQm1oY3cvMUtnTDRYdHBJVjVLWkZXZ25aQzQ4?=
 =?utf-8?B?azllZFFSTXk2YlM0cVZUZEd4eTRHSDMza3RITUlVZEVyT1M1Y3o0UW1ZdFRD?=
 =?utf-8?B?NUpRT3Q1dEtwVzQ4Tk11RzhzOUptRkkrcVVYNENqaWVDVkc2d05QRXpwbFdw?=
 =?utf-8?B?UVpqcFk0YlgyY0l5cGZWQW1IMDJQbW51S1lmNTdpayt6U2JDb2hJbXhOMS9z?=
 =?utf-8?B?YTVTM05JejZUNS9CTkxFKzg5YlovNmRocmNQS0N3eHRPUmJtVW0xdDdLalBN?=
 =?utf-8?B?dnJEV2hmeDQ3T0d6S2VJS0hFcnp3aE52MXBZSGhYQThrUm5iTThJMjJ1bUR6?=
 =?utf-8?B?a1cyY3BUVTMvdGQvbnNkOWFVbXNZeHMwRUo5dmVSTCtqK0ViVHgwbm9XYnpF?=
 =?utf-8?B?SzI1OGt4S3c4L1Z5cWo3bkRwdXBSZ3hsK0lxaEw3MktsZkpsQmVKWFRBWVZ5?=
 =?utf-8?B?T0hMM2pJdThEOWdreE9ncXNqTmxUNTRuRkkrais3cW5kY3NsSGMwUGFDNUpp?=
 =?utf-8?B?aDZiSmNPMXNUM2VwUWtnNDkzdTBwZ285WVMvMnYrVE9DVWpWTGVkbWFUckpJ?=
 =?utf-8?B?QVdKb2MwUWZWbHUzTGYzSHowKzhPV2g2VGpJR3M4R3N6c0ZsWC9ZeTErbVBO?=
 =?utf-8?B?VTlPTXRPZXhsaDB4THE0a2doblFkSkx1UXYwMlpndXRWbXJLVkFSRGxZcHVO?=
 =?utf-8?B?N2VrRnEwUGY5WkhVL3ROYjlkMEYzbXdEbXEvT3VOa2paUFFLeFVOVzhZV0dY?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 421bfb2d-d754-4fba-33ec-08db57e6e4e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 21:28:59.8347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6JHJNEOmOBl8InunKhjvZEE/5ZfNwXgDQ7kiQUCyB/LTaRUxXBATcWnrmVcVafJ+saf7mOn9tZ7VbP75qjJ94it0K+cs1DPi/ROYg2lCYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684445349; x=1715981349;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HNUF+V/WDcLaEEq6sGdzTz087n6ANJ5l1OOIxPa02Ug=;
 b=ISHeRojlMDN0oKfPGZ8r7yD43tf6Q1inH7U5T5V6VL+LX981XwSOk6AI
 Xs9dx/VCQfegT+rLyJprgEy0X4BeJ2c0GWWkfwaupYx4nlsqs+LUOyujy
 SQWnvPG/UNeHUKHgWg5Ys4Epr92jylL/jglOPJ1+Go+zN4KXDHd5Y5uFj
 3ZNxEfhciV0if4Y9/w55pyuKqIAYcR28JDRLB2gi1yIgnbmqevSVJCfz4
 13pikWRqQ6JdcE3ezCal2xx/46P+E382vF7A841TGcLqG/hP8fJB1vrd5
 qJmPvL4FUvyPH0PbMINHLTf3ManHeV2g0WTs+Wsom2O3vVo7Gl25l34jf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISHeRojl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 4/4] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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



On 4/19/2023 11:42 AM, Jacob Keller wrote:
> 
> 
> On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
>> From: Marcin Szycik <marcin.szycik@linux.intel.com>
>>
>> This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.
>>
>> Netdev is no longer being detached during reset, so this fix can be
>> reverted.
>>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> 
> With the other fixes, this is good.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
>> ---
>> v2: no changes
>> ---
>> v3: no changes
>> ---
>>  drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
>>  1 file changed, 1 insertion(+), 15 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 8dd488158961..8f13685ed2fe 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -2988,6 +2988,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>>  	iavf_free_queues(adapter);
>>  	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
>>  	iavf_shutdown_adminq(&adapter->hw);
>> +	adapter->netdev->flags &= ~IFF_UP;

Wait. We must not modify netdev->flags like this. Please do not restore
this part of the commit. Perhaps a new commit message with a partial
revert explanation. Modification of the netdev flags like this is incorrect.

See the original commit message which said:

    Also replace the hacky manipulation with IFF_UP flag by device close
    that clears properly both IFF_UP and __LINK_STATE_START flags.
    In these case iavf_close() does not do anything because the adapter
    state is already __IAVF_DOWN.

NAK this change as-is.

It may be no longer required to perform the other parts of the patch,
but I do not accept re-adding the incorrect IFF_UP modification.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
