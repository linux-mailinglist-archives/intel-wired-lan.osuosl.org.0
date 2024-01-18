Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C40483217A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 23:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A31226F6CE;
	Thu, 18 Jan 2024 22:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A31226F6CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705616256;
	bh=RrDTkGXsrG5nl9d2sPv06lLnmWAikv0q56FT1Xy8LS4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f23HyQzyvqpmEMwDruSsqS6Z6mV3OcnkY14O57V1goNT9VZ5plI40yaF6Jj+rEw1V
	 DaGUbdBrhsa++eOPgernW+Mns7jgoRJBDeLtun0FpKX3a922cRkCljdy32l88ZURhP
	 A1podlz6BT+o4faQN551oCGDLVyfKDXutmXAm0c0dNHrR8vjG8Lo7w7ilrGdRbeXG5
	 Q8PK9cU2sGg1AyTIdezULW/hPRNT8gpcrAF+TpQxeYYDA38KqRMe3nX/W5kFKPlAD+
	 pcdWdds4sjAcKSbDCbl6iAHs32eh1fTZEMzDJvz6wHjtZolgiBZgm5cpzXiSrbI1Cq
	 RYfZYIWtKWlLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLn7Px37S_ro; Thu, 18 Jan 2024 22:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B017C6F5DA;
	Thu, 18 Jan 2024 22:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B017C6F5DA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB58F1BF20F
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DCC76F5DA
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DCC76F5DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3E8arsgdzyQ for <intel-wired-lan@osuosl.org>;
 Thu, 18 Jan 2024 22:17:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 499F560E83
 for <intel-wired-lan@osuosl.org>; Thu, 18 Jan 2024 22:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 499F560E83
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="399469042"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="399469042"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 14:17:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="1116081730"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="1116081730"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 14:17:28 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 14:17:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 14:17:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 14:17:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 14:17:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PF+FgQmBGlJWgRqLr5Jy2no6oVtRJPCtO+jW8vC+EqOkfjBsl7NwvAhBEYuQVbXLcUbNLzs+dBFWowrCNtlo4HaraaSriXWz+Xf3fW2PBIZSReY2+X2DtQYeblSJkx3624wNjBmi0ajFMIlHG4dngXoHIhc1nKI0M/DvDKgzO5VUyOI61oYgoyn9WmsBtcZVehoTG0BZbeGhN0DhaYKaGgr2JoQ1qIW7hkiH6fa5opQo9n5XfJ3qcG0HT07otioKQabbLYdXDIjproSxvN6nYYeoUqVMKi4IhVA0JgXD0X3OsUl8t/ok4wydrci/daibP+c7ezH1Ks9sx2qP/Ugn/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RrDTkGXsrG5nl9d2sPv06lLnmWAikv0q56FT1Xy8LS4=;
 b=SDxKzllgVGN/9bKdlcOnTe383JRVHz4jIYttmmMNZU+8EkJomucHdLyyjcPjNLWKAyGy7aAWctUsnmcxz0+5qS4+1D79m8k/529Kmmo8OEdA+8ykw4rVbjoUlBK7eaq/UECIfO1pfgEyXaNYBYlzMz5tsxzIAzVNZ6l/tJENEis56Un2NoVHSLXMyuj27B/F6iKKNSV5ONE4Hx+DvVyc0R+i9lOIFN92BVFm0j7/49cWJ8VQ6G/6coQQBgG1i8NGXNSu+jy7QCZjtlsGJGgyssLt7IJrQaMzXbAQuwBIQtSvlcEJe4NnVrBGg2B0lq9XBz+/BGX06JbIdFjn9Tu1Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 22:17:19 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 22:17:19 +0000
Message-ID: <31a0c669-e5a7-4313-a414-f35d5efe49cb@intel.com>
Date: Thu, 18 Jan 2024 14:17:17 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-9-yahui.cao@intel.com>
 <BN9PR11MB5276DFED75FE8F9372B7A3CE8C8BA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20231207144615.GK2692119@nvidia.com>
 <BN9PR11MB5276771D5FB2D3CDAC3A70348C8AA@BN9PR11MB5276.namprd11.prod.outlook.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <BN9PR11MB5276771D5FB2D3CDAC3A70348C8AA@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0044.namprd16.prod.outlook.com
 (2603:10b6:907:1::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4593:EE_
X-MS-Office365-Filtering-Correlation-Id: c9559634-13cf-4348-dd60-08dc18733c78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NQHFZYJpopymY7nV4YdereJdvcOL6x3yIhnzgZGM+pZwuOs9SC5ZO0h1psWGkpvPX5uxFyysBoTRIkP48lVU+p7yPyyOUlDQTeqhFle/6RxSRF8+a/pwOOZnb+OJZMNwAdOHzrnh1LDx3g1KcFIsog2ZA25EkyDQdfm4MyReAgPowdLLg6VLB/uXFey7zWsy8Z41EhaaKgTmmy1YYERcfecHpjEQcWBTHqTLCjdCydaI7gyxnKvq+UB/WkQwwVJAE5m0xE1efnm3WrfFygpMtVe3RQkTLFB4IWGjZs0fCRi2kLp5Ea58P0YWkRePomAkzVALDyxYBYwOwLG5oagEjvMAKLLz+tuZ/ZzWICLYJgdZ3M+ev60E1nYeWfwuCnDg4wqurI7yS8nIWxLCVC7ukSWO8bXzBUAQa0IRAHRB7EYyhrDhIUXh6crxtoC3zDfulPfksM50NoD31ZezSkKnUJ9r0oIQhjrGxcP//b+i9vBiTZW5qzuIrLhSxEzT64RyrpCHdJhlOQZU8E47Rmln2UGW9Z5GB2Mpqg/u56FuSFwZUvSmk7dV8Da9ShE2KeGlJOEpQ7fzLttqByCrNrmejHCC18wRYpFPhbOwdJJq2IaF0Amug5Pi2kqNpvVSL/pJKnujOm3XphR2QDGtOvAeMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(6506007)(6512007)(38100700002)(82960400001)(5660300002)(83380400001)(2906002)(66556008)(66946007)(6916009)(316002)(66476007)(26005)(8676002)(2616005)(8936002)(6486002)(53546011)(478600001)(41300700001)(86362001)(31696002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHByMlhJSWw2RnVuVkdBT3pveVRsbFNkY3FQaElkTTUvY2xKMkw3aUJjRlN1?=
 =?utf-8?B?ZG43NzhSTmo1aHZJQzF5VW03YjZRZ1VhVkJGZDF0TytUV1RkSzNwc2xKL05D?=
 =?utf-8?B?cnRpa3Jsam1GdUhmcjNHR1dSVTVRWldYTFZ3YUNWTE9OOUZkTjBUR2Yzb2Fz?=
 =?utf-8?B?VGVaaytTL3ZyMG9SeHlkZUFmMHJGWTRkT3NTMlZXQkREWUsyRWxkazJVS2Q1?=
 =?utf-8?B?Q3pySmRYNldGclVKQjJCOVpzNGF5dnQ1TmJOREkwb1ZyMURYTVFKOXVXbDA3?=
 =?utf-8?B?SEVVRmlmRGdLeXM0bFJHRWgxY1M4TmdNbzlxOHgyQnNwMmFnNmMwUTdMMHZJ?=
 =?utf-8?B?YUVqQUFMWXVEV0I3UG1GQytVd2NzTXQvM3EzQkhVa1ZxT1FmVldtbCt6Q3BC?=
 =?utf-8?B?RHFNMU5iNlNPcW1NWXFWanpDdEY2TktRZjlTNXl3TTRJWC9mOFJwTXF2V2s3?=
 =?utf-8?B?MjFzUDFrdzNRTWtVM2Rpc2sxQ2QwVjNyN3cvU3B0cCtFYmtyZzdMQW1PVWZX?=
 =?utf-8?B?dmtybDh0TVhsYjYwYUo2RUNobStnVDFvVmFLSkF3d2Z6T284VFQvVFVBQzhN?=
 =?utf-8?B?UG5uNkl3aUpkallaL1ZJeDZ1bFlaTm9uNWRSaXNvWm1YVlhBM0xDUlpNdGh2?=
 =?utf-8?B?UFp1Z1dxdHZhWlpCdm9KZjY4T2o3ODFHcStlZkQ1U3BhcEVqbS9tRFJrcVRT?=
 =?utf-8?B?OVhqdEJPOE5aMzEwRjRhekdhVGtPb2ZxeUxGYkl2Y2RZYnFCT3h4ZmMzWkxm?=
 =?utf-8?B?OGc5OGV4TzZPMmpRVmtocG03MVJpRFJsK21NWDdEeERZNGIwTVViWk80Sm1U?=
 =?utf-8?B?cmk5blVZekNMRTRXcXFTKzdBRXovcHdldlhQTHdVWmZ4Yk4vaExHUFFOM0Ix?=
 =?utf-8?B?TWsvWE55dFBEZEluMHpXYVJLMjBoelVxMG15ZU9DT1pOMDFLQWFMcGVDak5j?=
 =?utf-8?B?UUNVa2lGV0N5RElOelczQzB3NVkyMFpPMnJObHVYV2l2TEJRSnZlalNCN2ps?=
 =?utf-8?B?OWdWVjB3SnEyc0JxZ1d0SVVLVS81b28rM3BZbFN0QkE0aVFxUUdER2M2c3J5?=
 =?utf-8?B?Qm1mT2lRMDU5Q2dFTjMybjZmLzI3VkF5U2hpSWQrNXBtVUtGaTY4b3dtVm03?=
 =?utf-8?B?R3NVZjlxQ2t0Q1c0cDdmUTVlOGlXVU0xQk1uRENJYldrVEg4MlRCUXoxSGJi?=
 =?utf-8?B?c0RkQkRuRWt2UlVlS004bkhGU2VWK1BUbXUxVnVXTlZUL21RSmFsVWtXRXg0?=
 =?utf-8?B?V2t0cW5Lcnd6cUVsUEVXZjdDQlQ0OTVKR3JjeFNLZ1ovVHVWZkNqQWpVeFRy?=
 =?utf-8?B?VGRnTmY3QU9wemlGV29SdWxudkU4SWNKWlpGVlBwejR1ZXdvUnFuUW1xajFG?=
 =?utf-8?B?bng3RlQxV1dGS2RPK3B1TklHQmVsMU9HOVdPaDhJU0EwU0s5UkY4RWZ5M1Ux?=
 =?utf-8?B?ZmFIR0c0SmV2UnRCZGRGQWhYTjVCbThFOWVLY2tud0oyajY0aHVGVG1NcmFa?=
 =?utf-8?B?Z3FaV2NYNXVkSVc5dTJhckV3cWVMaDdjVGJtbk9ZbWRKQ3BPVGpVNmJVRG4z?=
 =?utf-8?B?Y3ZyRC9wUEVDbkZhek5ESjhlZ0Nqc0x2Z2s0VEwyWHQwZG9aOUVwaG84c084?=
 =?utf-8?B?UnUyMkZMZEZWTzRIUUJpOS9qZy9hZWhaT1dFTTRTN0l4TGxkVmdLaXcvSHBm?=
 =?utf-8?B?dVRsVXk5MHN3RE1sN0VJTVVQTXBYYS9jd1JVRmtzdTFuenRIQVhsQjN6cEtZ?=
 =?utf-8?B?UU1EcTFjejQ0VFB5MHBBVWpVTWFyQ2o4NUgvRVNodGdNZHNOYmkyQTF1cUpz?=
 =?utf-8?B?cThEeEZOVHdVSkgwRVQ2NjdJaEI2TWhrQW1yTU1mM3FpWFZpZFNTbk85MFNC?=
 =?utf-8?B?OTN6MW1FOW9SR1ZYZDFRbWVqSTRYRFNnVkUwWnN0dytGdk45Mk9HdXl0c1lN?=
 =?utf-8?B?T3RGdm9URm11WTRFZTNTYUhlTXdHS1ErS2xOcWNEQ0pNWW9yZC9oSlNMZUNv?=
 =?utf-8?B?QnpTeWNrclZBVjJ4T2l5d1JaNXBwTklrRm16UktzN1c3OFdkNE1Pd0NpRURu?=
 =?utf-8?B?Y3BHYVVwcDA1WFNlTm1MLzB1aElhL2ptbDhOckhHeWhiWnVnMC8xRXM1L0pX?=
 =?utf-8?B?SVBvbWNHZDltZFQ5NzFpZmRmcG4wT0tkS3VxemxHenlyRmZ5YWdLcUszWE13?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9559634-13cf-4348-dd60-08dc18733c78
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 22:17:19.5618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HD19DEGSTsj9QztUOOroizs4jsC5uVVKW5WQwgBlNCznjG3OMHzJzbwf66vpZXYit5eyOECkFWcrQkvf7S3tPz4wgyrOr3h1Z69YzY4b8kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705616249; x=1737152249;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3Vbwn16tt8ejMhaSTXY8Joe7c3rW7FqiUFUfemblv0U=;
 b=TnwGdkow3v1ue6GUeyQH73Co00bAmizWfCpxLPLMRs+6HyVai/WTTeTO
 7lOBPXygbu1REpsQVzVqUGOPCmutABUwB9Wz0l5cCdGI26tP8CNFSfv1l
 2G8Lh8GtUxwHZ+nlPDtLcAc7lfhlOJBSXFn+lutOHo187xii5QI93skVm
 kko8hbTwjj6f2gyBUjrYeJQfBgsNgKTqYSh1uE+Cg2ZkJfHLU1PwrJTAB
 fe4U/jVjjC8fzF9ZTxQLtJ8FTcNUGf18uLZIyhHF0r6JzX6I1JtNUxKQU
 toNtSrxAO68FGt8CTzXgO0yrtLkIx6i+8msAOlgqJqeK8nkVMskNmHuox
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TnwGdkow
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 08/12] ice: Save and load
 RX Queue head
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



On 12/7/2023 6:53 PM, Tian, Kevin wrote:
>> From: Jason Gunthorpe <jgg@nvidia.com>
>> Sent: Thursday, December 7, 2023 10:46 PM
>>
>> On Thu, Dec 07, 2023 at 07:55:17AM +0000, Tian, Kevin wrote:
>>>> From: Cao, Yahui <yahui.cao@intel.com>
>>>> Sent: Tuesday, November 21, 2023 10:51 AM
>>>>
>>>> +
>>>> +		/* Once RX Queue is enabled, network traffic may come in at
>>>> any
>>>> +		 * time. As a result, RX Queue head needs to be loaded
>>>> before
>>>> +		 * RX Queue is enabled.
>>>> +		 * For simplicity and integration, overwrite RX head just after
>>>> +		 * RX ring context is configured.
>>>> +		 */
>>>> +		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES)
>>>> {
>>>> +			ret = ice_migration_load_rx_head(vf, devstate);
>>>> +			if (ret) {
>>>> +				dev_err(dev, "VF %d failed to load rx head\n",
>>>> +					vf->vf_id);
>>>> +				goto out_clear_replay;
>>>> +			}
>>>> +		}
>>>> +
>>>
>>> Don't we have the same problem here as for TX head restore that the
>>> vfio migration protocol doesn't carry a way to tell whether the IOAS
>>> associated with the device has been restored then allowing RX DMA
>>> at this point might cause device error?
>>
>> Does this trigger a DMA?
> 
> looks yes from the comment
> 
>>
>>> @Jason, is it a common gap applying to all devices which include a
>>> receiving path from link? How is it handled in mlx migration
>>> driver?
>>
>> There should be no DMA until the device is placed in RUNNING. All
>> devices may instantly trigger DMA once placed in RUNNING.
>>
>> The VMM must ensure the entire environment is ready to go before
>> putting anything in RUNNING, including having setup the IOMMU.
>>
> 
> ah, yes. that is the right behavior.
> 
> so if there is no other way to block DMA before RUNNING is reached,
> here the RX queue should be left disabled until when transitioning 
> to RUNNING.
> 
> Yahui, can you double check?

I think this will require us to ensure that the Rx queue restoration
happens later. I'm looking at refactoring the approach to use an
internal representation of VF state instead of a series of virtchnl
messages, and this should allow us to avoid enabling the Rx queue until
after we're ready for DMA.
