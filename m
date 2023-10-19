Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C53E7D04E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 00:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FD8B41AC0;
	Thu, 19 Oct 2023 22:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FD8B41AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697754883;
	bh=Xs2MRVTurn3dLKGddg32SecHvDJnuxn8O+LRRHgcmLw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XpuvufafZqErmvwDDnAswP6l28UshZDPqnEzerLks0S+UcTMedetnumjcRcYxJR1x
	 8s0ljfM7KyT1oGtHpK9zfdlDWVBep/oWr41GheSPLlAkbBlibd3bcR8eZ3nUMT21hK
	 J5VJuDBq6Ozfy5a1fkuEyu2GJz8w+OR/FcsTapS4a1GIFZjXsn9qi61C+RfPUllpUu
	 XeZo5dY2Aa6yENQRgSxQDRFEMZb0OdnbfYzfZfuTd7yiOMvg32fXfCLOxa3YBdPQio
	 Aqr/yGfpg8706/HraYUUO+b1tfA6OX7Eb3VCNLpDmmLHuKjTUV5Ujl2pN3qlC1vU9V
	 1hQnpjM1jZbhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPnRM0xjcFKf; Thu, 19 Oct 2023 22:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF7BB408C9;
	Thu, 19 Oct 2023 22:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF7BB408C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6927A1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 22:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A443408C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 22:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A443408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XmnQTh9tpuI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 22:34:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 083C4401A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 22:34:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 083C4401A4
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="376762914"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="376762914"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 15:34:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="792176302"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="792176302"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 15:34:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 15:34:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 15:34:26 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 15:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mUZUkPGtU9PGmfkXjG4I2zOCPIyWoVy01c42rwSdl6BtzcQEhMVdwBW1OEYvIFObWukPaZe8BJo+WQp355XuEeCNJig9zI099MHHQNoaw/dl6GDhorWT7AMr1Up3Kky9W9VLyETbjjTsfNY4subFaPmPWuz4zwlXLSqJS8ijzWo8hWLf4Gj6N2yDI48um61eJ0Sx12pN9FS/itoGNDHqbIDYSWLt3/3jflnZ5GEOPkh4KPooNafpfvJqPxOwAsF7dWWKbAEywWdiXPJdb26WFP5Sb6CWX+8FIRaMeQtWeLUT1Sk9h04aycYbj28GQFmqAjHfAnT0r9ifhpbNKEtLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qpu+Adru4LRSDOljY1F5Lrv55zOEm++gfzoXJm5f9vc=;
 b=QKEslR8yqz5C8DsMECSotdGzNz7RNDqlzLm+YT0ziTo72kywBzPwxcSXY5oC8o87Wbt7SeTVpitkAj/91l7SFp2SdmZ+KbN7wMAgEXldAxTVimhiR1cG0L6+MdZwJevUl5+9tK/mT8Kb075/1X2RgtAZFjHYA13PQd5Pf2EScRM4QeNmLFD0mX+lDASAQ0m+8EfcicxP4SISyrlBN7/2JNeExzvpjxFIyw+OYm0rL8iFlb5yidBPRcMML+/99V3oDG5WEEnWWd0fpK/BBJAHzB0yvshwp0ddkParHFt9hDNMIor6TEOjkzWTS2tFyotOah54EetgOEr6GdJt/UDXEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN9PR11MB5356.namprd11.prod.outlook.com (2603:10b6:408:11d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 22:34:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 22:34:17 +0000
Message-ID: <0a94de85-1e83-405b-bae8-559e0b64f9c1@intel.com>
Date: Thu, 19 Oct 2023 15:34:15 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>
References: <20231018112621.463893-1-ivecera@redhat.com>
 <4bedad2b-cdf6-471e-a8bd-51ba3564aa6a@intel.com>
 <b0bd5678-44cd-47ca-aeb5-33735100dbdb@intel.com>
 <CAAVpwAu9KmuHFOGXWd9b2hgxeXfs6_Dy7APuwZhHzqiE0hNFqA@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CAAVpwAu9KmuHFOGXWd9b2hgxeXfs6_Dy7APuwZhHzqiE0hNFqA@mail.gmail.com>
X-ClientProxiedBy: MW4P222CA0007.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BN9PR11MB5356:EE_
X-MS-Office365-Filtering-Correlation-Id: d8ca049d-60b5-400a-d763-08dbd0f38751
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hH7YHm19tYMe4bOsqCa8XVEjCkfHsC5LVDd962yms0EokQaXY6Ivi6j0T+65E5YQhn/VpJuaw+9JlE3eXjLzgY3MCKnh5X55W0tJhf/gqCdQPOacgceAyj/5E/eLwLXBDVyAFd6NejC7xgOOQfFZ/8AgzRMmG5xovYByDKnsMHpWy3ieSkFexAVadn/vgti5uGGGoweUBEZpbvU8snd0Jg4+W+mJ9wUsxfHm9gQIYGxUwSpY8SLcvF1RlZJOxc34VAkBdXzjdxU32kasMJk7zQN4HYQS6woZ41CwRvD4R6kYSo89GUTQ4VaeoVcSwVviB4oz83tSzFJPGlP+oiHBZLVQHbFJ2RVq4LiytZDw53KfVcJy+GW9avy1E1V5fP4BxM09fWmVe9Ik/ZvghJV9eJbeKzF5Gxu+OgSXWirupenZeLb+h1MBJQ/tzicS/IGAOE8dVa1c7UXSqdme9h3pZcueheUEwsJqzYi59L2CnS4sHGK17zjkEx2ESxtku+oTeQbK+ZIpfjH3hOUHFE28bxqlaom8h79ayfvgcUfJddtARHKvVQMJmPnzrauguf0np5+O28M8dahN+TKmJeYEW9Bw6pS4ddRYBZlPwXNxhqdINGxQIolMoItSdEKczxWeIbO1qPeK0dauzxPulYAUnQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(376002)(346002)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(4326008)(66556008)(8936002)(66946007)(54906003)(66476007)(82960400001)(41300700001)(316002)(6916009)(8676002)(31696002)(86362001)(36756003)(6486002)(5660300002)(2906002)(66574015)(83380400001)(38100700002)(53546011)(6512007)(478600001)(2616005)(6506007)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZE16aHhKa0g0OWlqL2xuTFYyTmVsbUkxcEIvbnF4ZU12NG0wcmxqN24xMFpG?=
 =?utf-8?B?MC9UbytzT3VQU0dGTCtVaUMwSjFJTGRQYmY1dnVCWHl6OXkvRU5iNkhucmdC?=
 =?utf-8?B?VjJiOEg4SkRGeS9LWHVnUEt6WUtBNW40TTB1Y0YrVTkzRGY3Vm9hZE9aSWlS?=
 =?utf-8?B?Z09pbkZhNDh0YnZoK1VYWmVOckZtczI1QXI2U1VCZVpKSFM5Mm45MWlVTGNU?=
 =?utf-8?B?TDMzQVJwTzBqQ3puV1g1TGdyZ2wwcWRPb2hGLzBVcmhuZlBSTEErQzBRU2F1?=
 =?utf-8?B?bVA5blhFWUt0ZkVxSU5UTzB0bW9sMjAxU0NNNUVjN25ITnQxanlKUUtHNC82?=
 =?utf-8?B?bUlwbGxabzlXeGpmdW5vZGxPYUtGazIyMEJndnNrcnVOdytCb3FWTkgzZnIz?=
 =?utf-8?B?Qit3S1Y0SlNvN2cyRmJJQTJIcDl6LzlkaS9HVFR1MTRSVmVyc0cyS1dkWS9C?=
 =?utf-8?B?ejhyK3BNVHJsb1V4ck5XV3J3WGNUd2oxcDAxL3NIVnFaK29OQWFZc2o5TVNG?=
 =?utf-8?B?bzRiZTRFOEtiT3dqdWFXYVBZTXZrNDdQSE9kRjA4ZjlhRmtlS1dpQnJJb1c4?=
 =?utf-8?B?aGhqRXcrcHdZRjJmYkhydWp4UjVzU0FISmhRZnZxcEdoak5ENmZ3YTJvWW44?=
 =?utf-8?B?Ull6ZFZkbnBid2tzamhwTEhySU8zSmFmQWl6WFVNSjJwQmZ1czhNT1p1dlB4?=
 =?utf-8?B?K05VMGk5Nkp1RFZxUHlhYmMwN29TbFdac0ZaaXIxdjJURUFGdHFqSVcxU014?=
 =?utf-8?B?dndzaWJ0RCsrVDdlMzNNVkxQSC9lSURSR2k3NVhjZFhqL0p6YnlVaENwdTRO?=
 =?utf-8?B?MlNjZm9ZRk44UnJFYjhoem4zL3VZSzhCaUcvdmdpWnZ1Qm9SY0QzWU9vZ3Bt?=
 =?utf-8?B?aUlVOHZUWm9qNjlxYkx3L1BQV0gvaTJSVnVkVWVRUytxSHpiZHFDMGhQNlcw?=
 =?utf-8?B?Zy9JdmViTStWUzNqaGdNM0dmRjE5OWtZM2Y1VitPYlNKM2xkZ3lxQ0FOOEtN?=
 =?utf-8?B?K2ZUWjRDMDllUWdVaDZwbndjMVdwMmN0QWs2KytPVHZpVnFORHpWTEJPUVo2?=
 =?utf-8?B?U2piVXdkWjJLQXFDZDFVKzM4anYyQ20yYWE4ZFBxZUMvektoTHY1TjYwejV2?=
 =?utf-8?B?aXYxRW93aHhkeXBsWHNSM3V0ak5QV1BYZmdxNHNXcUdsY0Q3US94ckhuK2Q4?=
 =?utf-8?B?VXpKclVaZmZaLzU1V3RnWHIrcW5qc0xtTHEvVzhvSUlxVnQ0R2REM0p4a3Vp?=
 =?utf-8?B?ODNURHNqWnp5UWNXVGozaWFLd3E2UWZYbW5YdVFJV1pSOHRsdUFTZTF0emEy?=
 =?utf-8?B?TkIraEZvNGU0REp0VmVnWUs1Z283QXpOQjc2d0RBWHlzNVZiSkFRYTNaYkx6?=
 =?utf-8?B?ZDh3MU8yR0Y0Qm9vYlgxajBzM2Q1NGlRSEJXUDZIWEhHTnduaWVTRzJMVVJx?=
 =?utf-8?B?Y1E4MFV5NWx6T3Z6SldiaTU5NDEvTDFkc2g5TjlWK3Q4d25zd0ZMVUFCSGg5?=
 =?utf-8?B?cnNadi9FTDRkc0xDS2RMUnV3Q2hwVWl3eklOQjVOQUUvbEpVdThXSWRrN1hu?=
 =?utf-8?B?Ym9iaWZ1RHJhRldzTjlpc1Y4ZXlkdVpVRDE5OCt1cE15YVljOGpaL1FsajNi?=
 =?utf-8?B?cm5VWmNpcXpoY0ozL0ZDQTh2MzFLTHdSQ3UvS2RVeUlZcUVtWXVpZmkxSEp0?=
 =?utf-8?B?OTFXbmRnTDlDZktmUURSd0VoY1hpbDFDTmFxY0FoRHJuYkhISkk1TkJDUExu?=
 =?utf-8?B?azFwdE92STZ5ak9WeC9Ga2RiSnhnL3VYbUlRZElIUE5OTFQ2WldiK3k3RmhY?=
 =?utf-8?B?dm9aM2srVHRXUFZ0OE1UaDlYZ3Vmb2hQSlQ1SkxuaURiUElidXo5bzNBMkhD?=
 =?utf-8?B?V1o2czBJTGdJSWl4Ykt2TGdYWWkzckxEaVZ5c2hGNG9MSDQ0R2krckQrSkZC?=
 =?utf-8?B?enhja2JmWHBwMGZoWFdzbmVqQnJVR2l5bVRCaE1tRlllK2FtWmZCelVmMDQ4?=
 =?utf-8?B?WFdMck9aS0NlS095NlNVTTVBWDdBVWFsMXpYQkxUMWpTcTZyVEZjUnBaWmda?=
 =?utf-8?B?UitvclhzMjF0cmJkZTFjcHh5cjIxZ3ZtL0ZVbXBnVG85dDZ6NUtZM1dnazZ3?=
 =?utf-8?B?ZE5QV2VIMHlycHkzOXZ1YnNGSVhxUjUzVmtrRWt4ZGNrdkM4c0hzQWVsWXVj?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ca049d-60b5-400a-d763-08dbd0f38751
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 22:34:17.0181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJbg8+qI0vyADqAAI0QDArstRZ3aEeAPCcRvjyN0fv/J26gt8yFeS2Amjc8KPVBZvRT4S8ADcCQalpbkZnTcBiJpfkJDtO2EB/bAlURNag8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697754875; x=1729290875;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A0XFem5vMm4y02z4YMXpyVI5b9YO00nsiF2ixiblVQM=;
 b=PiKwonSqzd3/tVeivhULdZDJn84dcdkAi8n+Himpk8cMc0bbYyKHTDZF
 OmEl4qJMd3GT33MMYDrtzkgRiNuzhwnZMf7YPi6qy/XoqPmCWUwFitALq
 6l4wgSyT7mvvxTjuc6mWY3fE199/joubW+KNcOOA4+aDp1AqtmBc82xYX
 tWRs9QN6rzH6zbTeJfw3LhZiSk3cYVxboBWIPlFtXvzXFQanL88iFDfLt
 fN6pXI7GjQKE3Jxan6YNCn+nIzyusZcbapkoD9EHJom4vBC4jVZITraom
 y0vBOoXyT2/rMaOwmE18bp/IHbGnT0ryMNd06k6JschmwGn2UclIbR9sk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PiKwonSq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric
 Dumazet <edumazet@google.com>, netdev <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8xOS8yMDIzIDEyOjQ4IFBNLCBJdmFuIFZlY2VyYSB3cm90ZToKPiBEbmUgxI10IDE5
LiAxMC4gMjAyMyAyMToyNCB1xb5pdmF0ZWwgSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBp
bnRlbC5jb20+Cj4gbmFwc2FsOgo+IAo+Pgo+Pgo+PiBPbiAxMC8xOC8yMDIzIDU6MzAgQU0sIFBy
emVtZWsgS2l0c3plbCB3cm90ZToKPj4+IE9uIDEwLzE4LzIzIDEzOjI2LCBJdmFuIFZlY2VyYSB3
cm90ZToKPj4+PiBDb21taXQgYzg3YzkzOGY2MmQ4ZjEgKCJpNDBlOiBBZGQgVkYgVkxBTiBwcnVu
aW5nIikgYWRkZWQgbmV3Cj4+Pj4gUEYgZmxhZyBJNDBFX0ZMQUdfVkZfVkxBTl9QUlVOSU5HIGJ1
dCBpdHMgdmFsdWUgY29sbGlkZXMgd2l0aAo+Pj4+IGV4aXN0aW5nIEk0MEVfRkxBR19UT1RBTF9Q
T1JUX1NIVVRET1dOX0VOQUJMRUQgZmxhZy4KPj4+Pgo+Pj4+IE1vdmUgdGhlIGFmZmVjdGVkIGZs
YWcgYXQgdGhlIGVuZCBvZiB0aGUgZmxhZ3MgYW5kIGZpeCBpdHMgdmFsdWUuCj4+Pj4KPj4+PiBD
YzogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPgo+Pj4+
IFNpZ25lZC1vZmYtYnk6IEl2YW4gVmVjZXJhIDxpdmVjZXJhQHJlZGhhdC5jb20+Cj4+Pj4gLS0t
Cj4+Pj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaCB8IDIgKy0KPj4+
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Cj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oCj4+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+PiBpbmRleCA2ZTMx
MGE1Mzk0Njc4Mi4uNTViYjBiNTMxMGQ1YjQgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGUuaAo+Pj4+IEBAIC01ODAsNyArNTgwLDYgQEAgc3RydWN0IGk0MGVf
cGYgewo+Pj4+ICAgI2RlZmluZSBJNDBFX0ZMQUdfRElTQUJMRV9GV19MTERQICAgICAgICAgIEJJ
VCgyNCkKPj4+PiAgICNkZWZpbmUgSTQwRV9GTEFHX1JTX0ZFQyAgICAgICAgICAgICAgICAgICBC
SVQoMjUpCj4+Pj4gICAjZGVmaW5lIEk0MEVfRkxBR19CQVNFX1JfRkVDICAgICAgICAgICAgICAg
ICAgICAgICBCSVQoMjYpCj4+Pj4gLSNkZWZpbmUgSTQwRV9GTEFHX1ZGX1ZMQU5fUFJVTklORyAg
ICAgICAgICAgQklUKDI3KQo+Pj4+ICAgLyogVE9UQUxfUE9SVF9TSFVURE9XTgo+Pj4+ICAgICog
QWxsb3dzIHRvIHBoeXNpY2FsbHkgZGlzYWJsZSB0aGUgbGluayBvbiB0aGUgTklDJ3MgcG9ydC4K
Pj4+PiAgICAqIElmIGVuYWJsZWQsIChhZnRlciBsaW5rIGRvd24gcmVxdWVzdCBmcm9tIHRoZSBP
UykKPj4+PiBAQCAtNjAzLDYgKzYwMiw3IEBAIHN0cnVjdCBpNDBlX3BmIHsKPj4+Cj4+PiBzdWNo
IG1pc3Rha2UgaGFwcGVuZWQgb25seSBiZWNhdXNlIGxpc3Qgb2YgZmxhZ3MgaXMgZGlzcGVyc2Vk
IHNvIG11Y2ggOi8KPj4KPj4gQmV0dGVyIHlldCBpZiB3ZSBkaWRuJ3QgaGFyZC1jb2RlIHRoZSBi
aXRzLCBhbmQgaW5zdGVhZCBkZWZpbmVkIHRoZW0gdmlhCj4+IGFuIGVudW1lcmF0aW9uIHNvIHRo
YXQgaXRzIG5vdCBwb3NzaWJsZSA6RCBUaGVzZSBhcmVuJ3QgZXZlbiBBQkkgc28KPj4gdGhlcmUn
cyBub3QgYSBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSByaXNrIGVpdGhlci4KPj4KPj4gVGhhbmtz
LAo+PiBKYWtlCj4+Cj4gCj4gSGkgSmFrZSwKPiBJIGhhdmUgYmVlbiBwcmVwYXJpbmcgYW5vdGhl
ciBzZXJpZXMgZm9yIGl3bC1uZXh0IHRoYXQgY292ZXJzIHRoaXMKPiBjb252ZXJzaW9uLiBJIHdp
bGwgc3VibWl0IGl0IHRvbW9ycm93IG9yIG9uIHRoZSB3ZWVrZW5kLgo+IAo+IEl2YW4KPiAKCkdy
ZWF0LCB0aGFua3MhCgotSmFrZQoKPj4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
