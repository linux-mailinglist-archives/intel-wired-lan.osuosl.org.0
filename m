Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C518C716142
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 15:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B3344094C;
	Tue, 30 May 2023 13:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B3344094C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685452475;
	bh=Zq9JBAQPiQ8I+ZxWNAFdbdkDCFbDa/+meMDygrg96q4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qTnXlzkphrM7+e+b+/koXQcv49pUAHtqCmVaMxvAQ5eiDjzYDaMc1DpjXXTOOy1wF
	 szo3udTAKxo0eAwrlLzpcBrDul7k8t8+G2ibzwFCGL6MV0o4v27cdo+oZnWjmCHrOO
	 MkvZ10OINQGXs+LJzdohIxLURGg0rgh4yGxOsiUQ9l/qoij7AS/2/0MyR9u+EUSCtf
	 UzIM7amHngJqi1O9TDuGDi1f6iah9X7lNCaumMPnWsTL/IY2FaETdSRLf/+Vf80gjW
	 q+1JBf2rAK8lWf2yTIhO9mtd6zu8qv6Pf1ve2i3oq+1ZXxFLJrhoP8LHLzTcn9NceQ
	 6mglq+H/aGChA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHSSMD-86t4A; Tue, 30 May 2023 13:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4985440204;
	Tue, 30 May 2023 13:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4985440204
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75DCD1BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 13:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 570EF40204
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 13:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 570EF40204
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgygWDoZnBxd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 13:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B9E5400F1
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B9E5400F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 13:14:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="441267119"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="441267119"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 06:13:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="830753547"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="830753547"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 30 May 2023 06:13:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 06:13:46 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 06:13:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 06:13:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 06:13:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HPRjT/ULdQSuSwkb3S/XfMUpojP9SK81Ls/smAStMC/+YHn8/U58tfUlE1yiRlqiOSBPPh6qvnxxMWi6vuDacC7tzVa/lnLYgscnJXE1a/OeWm/Q9RnDpVe+8PEcFpKsh5EFg6Im+AMDqLcbp0X/uK3nUC7qcISbUrx6l3/CClETvoPjJE5kLCdGE6Bhdjximl9kJ/LmRaH/oRgh+MV/dNU0aNQXziS5VGldYkoKb78FLQTXA0NAhL6T4WSRIwmNR8lcLIFXsqOjnA6QTuq92IEKflPt5zm6u/8Btxm0sRmSn3hCxTWYVRNS7ARQEbonG8SkwpcgJAW/z3Hy2xAnjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gujPJ2aXr6HjPrkuR9t+jzE7I1LMR6boYJbGxCp2tKI=;
 b=T/NeSdIivyrMTnZpNprRk8WXqmvR0A3bnac8OliUbFec6OhIVKxQ1Lw/p4Fo//xWU+m0kkdFXkS0hmEOo2D71BojHzcXpB02SK2qEf+hbEdxoWcLnRHHpQqf6yYdd6ihZSX7FOTm5ikZXi3IkCS7nV3uU/7LGhnEPcNL4TYXWoc2RELLe6AB8qWWOKKUARdl3qfmtG2Dy1zPnXw5qzZA5m7dAHIuWWSKj88bR8iehSz68RHh+QZm8gkg7dkLmWvEQmQZuGJ4fZVH1nyl5Hr5rKo2afi9S0i6GNGUem3dAQFC51hytL8MOcgKyOxnyRYkCnwW7v/HBo8Sfm5gCXbpHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB6800.namprd11.prod.outlook.com (2603:10b6:806:260::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 13:13:43 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 13:13:43 +0000
Message-ID: <f9f6ef1e-8acb-5bca-3cc6-16698363870d@intel.com>
Date: Tue, 30 May 2023 15:12:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-7-aleksander.lobakin@intel.com>
 <20230526205410.3f849071@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230526205410.3f849071@kernel.org>
X-ClientProxiedBy: FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::22) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB6800:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bfb5f00-9280-457d-e336-08db610fb0cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FglMvhGrUGYsAggmXisBPjnQlnaayomIJ9tLGYjHRTrsa3gsTOHNrN9Gccu+3HrnAvkgsiw5SFylTxa96CJ3wGKynEN/Hc2AxIcIT4d8sVikeeGzgAEyKKZUBoSKSKh7IVpAtYAL9v9AUkhiozUVPMwYL6YFX2AOgIRTOoovHAPb+BR7/rLDPR5gJ2NDC+Xk7L7GaBw88lU39Gbs59qCTa/FdqbW8OJgQUnT3xUik9INPnthJ9UQ5JReeox7GRWVUSWQ2fC+1NjsfbKzfat+J7+scVCQyfV5s1wjkTQRgqO0kX/6lv0ab1yVUe9nohllKSlYfkNDxRb2cWrm+kL79kq43ry63afXWgtLBd0ZXmtLAmj0d8NJ7gtNHg5YJNiy8fqgyU5sR1OS5+WysNkvO5fyu3jslGS+Zd6m04VRmLv/FvaShXHtlBat8LQgO7UZDzpqy2e4wLQ5l197tihGPvF3FZSRG/03ngVoyQ/sorCH7Xk7rl1hjCF3PdjBWCVhmgINEsR992Mz7zmLVNPOGLoAEUlX4eQ35+DDiMxCbxZYabe67RL3DbjXfNPe+BtukOlzCb4UkcH68EYT5fMaSHB6YtXbp/OFOS5wLjXINdxiyzP2hzhsQZPQgo9CQCUyOA8EZvZAPrBec6noZihZEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(366004)(39860400002)(346002)(451199021)(2906002)(186003)(31686004)(6506007)(6512007)(2616005)(5660300002)(478600001)(54906003)(8676002)(82960400001)(8936002)(26005)(38100700002)(6486002)(31696002)(41300700001)(86362001)(316002)(66946007)(7416002)(36756003)(66556008)(66476007)(4326008)(6916009)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2xVdGZTQk5XNlpyeTBzTzdRS0pLOG1EZHRWRGozZDltYWlxcmZ5amNTZlUv?=
 =?utf-8?B?d3dKbHk5SjloWTBpMEMwZGhuRDhOc25sU2psZUMra2d5b1prK2V0ampWS0J1?=
 =?utf-8?B?cUVEeUN6TnZpSlZDZVIzalhxV1V1MzFiMmszUS84eEZsa29WUDgrK0ZCYndT?=
 =?utf-8?B?dmtOb1RLUDVzNytGSGt3YWhJbXArU1M2emNWdHY5UnNmRjF3SXcrSGxMd1Ix?=
 =?utf-8?B?d0xHOTl0MDF2WS9KRnFzNVYxZHRKcDhPZUFTTjN2eUQ4QlZwdmg1amJWbEl5?=
 =?utf-8?B?Q0h3eCtkNE5sYU5nNmlqV0JyU3JoVmFYRnpiS3VBVmZ3QlJPNktRelc1cHlP?=
 =?utf-8?B?U25iOVB6WmQxV0c2VHYvdTBDR3A0dWFxMjV6VWxKVWJtaHhOdGY5QmlzcVBk?=
 =?utf-8?B?SnpGUVZ1ZlpXdHZFS0Y4Q0o3SUs4Z1R4eEVQNFFRMXFNV1lWL2hJT2gvNDU3?=
 =?utf-8?B?VjJzOHcrbTVkWEtFT3NEODRKVXZiTUlSeXNzUEIwMHljRU1wVGJQNStDSjZz?=
 =?utf-8?B?U2l6UmI5Vm9yRWh2eEprMFU5T1IzWXJnZG1iVDVFSTEveE1XWS9Bck5HZ0Rp?=
 =?utf-8?B?cnNzMitBRjdJWE92cG9QZnhVV2ZLWmd0UGdEOTdnZE5CeWRkYmY1NmtsTGIx?=
 =?utf-8?B?a0QranBKTFdHNERoenZmUERNR2hyZmtMM01WSFpGVnZEY3dhZU5qQUlYcVJt?=
 =?utf-8?B?dWFqZW9VU1FZei8rMFhLNGlSUS84dE13OFlDOXNnSUVyVUdjSy9idElmTGt4?=
 =?utf-8?B?dGcyUVM2Y0xzSVhnSVhjOE5vMUc5YmhranhLQVJXUVN2MkNiRmF1Wi9WTFpa?=
 =?utf-8?B?akJjVWF4UU01ZWhQbU9IbjlldVl0aUJaQjdlclhPRTdETXFKQU5HcFFRMTlO?=
 =?utf-8?B?SnRJd082Tys4aW1VUTBoeWw1RW9zUklaSjhYaWR4WGg1L25FY0FSbEpWWWZy?=
 =?utf-8?B?NWZKR1NLNDYwTVZ1RmQzRGIvbUNHaVVlWml6Y3pYT3BpZHJhRnVOZnpZUTFz?=
 =?utf-8?B?bEovM2JJNnpTNXVibnp3d3l2UTZJN2N3Qm5IM1kwNTFnUlFRWmRVbkJkckU5?=
 =?utf-8?B?SHFrc2EwcEoyTy8zeXFuUWZpcU5YenhKNTFISGJqd1hrZE9WVUNTWis5aURS?=
 =?utf-8?B?LzB2RnBkNm1PVFh0c0VHSUZRc3pJRmFPcWNvb0NJd3ZKeTdTYXZZR3hzQVRC?=
 =?utf-8?B?TFpUYlZtcUVCUkswWTVwa013RFVpYUI3Zlh5S0NCSi85NlFYUGd4Vys2SG84?=
 =?utf-8?B?ZzZrNlRrbmUxTFVndVEvMGNpV0FqWG9VRHIzeHl0dDlaclVWQWNYVjRRL0x2?=
 =?utf-8?B?YW5NV1ZRKzBCeGF2TmdGZGZlY2cwOWw2VHZ4VW1GQkszWE9POFgyVTVXSDIx?=
 =?utf-8?B?UmROYm9oNnNtSG1FTVNob1htZ1NWRDJyaHFKYndJeFlSZ0d6SmhFMzJlK1dL?=
 =?utf-8?B?U3lscERwMVVhbW85V0dBS0YrNktzOTJzR3Jzc2RzdjBjZGwzb09XNlRmUWwz?=
 =?utf-8?B?T0ExNVZhQ2VVNVgwQnRTWVZiaEgyRXdrdkNOR0YwU2dYaklqUXVlYmRDQUN1?=
 =?utf-8?B?bjkxb0l4cHdCc283QzgxUUhNN3BnR242WkJPK21BcGRmUWNzNk5VNVdzYStl?=
 =?utf-8?B?NTBPMjUwQmRaSkRMQ1k2UVMwWStDbXFZSVJDWW4vSTh3ZDZna3NPN1o2OS81?=
 =?utf-8?B?aU9vT0FTbENwb2g3TDV0bW54eVVmQWhaSXdnaWovdkhkbm85YWczYU0waVhY?=
 =?utf-8?B?U2lqM3V5Q0hFcnVYb1BwcFhNZmxlcmxNREtXeGJIWURoaXljZHNZOHNMWXEr?=
 =?utf-8?B?R0lNUldocFpheEczcXlPZ21HQ1hub01vamMvd3JQOEs3TUhHbWJkaFlDaTdV?=
 =?utf-8?B?RUhvUWp3ZUxhR2NLQVZhQllsdkVGZitGTk43WlVuWXdlMnBYMU5lQUdVWFRW?=
 =?utf-8?B?SDFqNVhvM242WitQVEhiUGY2Wkt2WjlDWVQ4QTRhTmdON3BOV3VZMEhQV0lO?=
 =?utf-8?B?ZlR2M1Myb254Q29QRWxvUUZDZ3dvVHh2cSthbWZmYWtPVkhwdnA4SFFpclBl?=
 =?utf-8?B?TlorcFpPaUExM2t0RkhPUzhDSHlGTlJqV2k3QStlemtnQWdpd1V1ajFLaHAy?=
 =?utf-8?B?Y0dmZFgxKzBsSTFMditBdmJabEtIR2NCM2lJNGFyWUl5WUdLeHlQbk5PamhY?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bfb5f00-9280-457d-e336-08db610fb0cf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 13:13:43.2360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tUZJJ8RkBJ9z87HtpytGklB3n2UsJF3uotQAokUTFXmMX0pXd2V+f4U/GHyLAvz/AEZeLrE7uP+XeXE3+Lz9NjGzZ2piq6zTN7DLp6+H2l8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685452468; x=1716988468;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a/d3T/7DfpqhtIPBGjpCNhvHt8MOhEow+NbwIid6ZZ0=;
 b=J39FeXv2SjvecsH5PBP/vc14ceKLvAJds6spqORibrI8D+Hd5rHb+ZAN
 dFvU0mAp8nmB31dvAeWUXiJpg1X6+o9ekb1+8q8EG2xolq70NIouhW3r9
 /hJGm1YXpTrSE0owIGr5zOBt6MgivzPGG/Cs0+sb1DmLQ5VMu9U9FLgbF
 ZxhI58ZPwiXW4of/JGdxdlYDNMbBkD/hg2S7Wlj0vdAWtFfrAMVPfx9X5
 WSpCaFA43yv+vqlxpG5O1x5PpgZriJfs5A8cFz99XHKwKf+36isvnmip3
 SoQ3qGuBFJ0ZHGVbKUAU66Wcu+IIzQjw92spimixtobaoJWtCdLki1JQw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J39FeXv2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/12] net: skbuff: don't
 include <net/page_pool.h> into <linux/skbuff.h>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 26 May 2023 20:54:10 -0700

> On Thu, 25 May 2023 14:57:40 +0200 Alexander Lobakin wrote:
>> Currently, touching <net/page_pool.h> triggers a rebuild of more than
>> a half of the kernel. That's because it's included in <linux/skbuff.h>.
>>
>> In 6a5bcd84e886 ("page_pool: Allow drivers to hint on SKB recycling"),
>> Matteo included it to be able to call a couple functions defined there.
>> Then, in 57f05bc2ab24 ("page_pool: keep pp info as long as page pool
>> owns the page") one of the calls was removed, so only one left.
>> It's call to page_pool_return_skb_page() in napi_frag_unref(). The
>> function is external and doesn't have any dependencies. Having include
>> of very niche page_pool.h only for that looks like an overkill.
>> Instead, move the declaration of that function to skbuff.h itself, with
>> a small comment that it's a special guest and should not be touched.
>> Now, after a few include fixes in the drivers, touching page_pool.h
>> only triggers rebuilding of the drivers using it and a couple core
>> networking files.
> 
> drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c
> 
> came in the meantime, and did not bother including page_pool.h.

Hah, I saw it coming, but thought they did include it :D
Will fix in a bit, thanks for noticing!

Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
