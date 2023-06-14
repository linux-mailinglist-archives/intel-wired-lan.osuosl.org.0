Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E5172F701
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 09:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BBD9817B3;
	Wed, 14 Jun 2023 07:54:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BBD9817B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686729241;
	bh=zQiyvO49S3Grwn+LbuvhEFhqdTA+fUEFojInkO3Fa6g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XtOJG66sMsfyfAcGr1KvrHBKPniiNNrJoMx0kIa5rSHqQii1/+ZKmAzXArmLEpqUA
	 Axbms6K6ng9xoHOpaqmAJLECTk2An2LwYUZiSWgFlK9bw1DF2e1krKP5oq/i1oNC4l
	 enMcRDQoFVsyqcxmf3SrU0oE10geuOBC3IKgq8lqqaX1ROEXWiYI+lQpjlSVO4AWBv
	 Yr8+5sJpW+7KrB6RQAWGjOFSkZ0M6gFYsWfJlu+XnhxyaJgUm8R7jkNnQ3DTTOJSdo
	 DJmHPq6p4YeuL6JPg2P9EkZyi7zrtlBE2HJiLHeE8eGKo8DhmJYW7Yj3gGZEO+ivs2
	 p/1VNBcjndHkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6sPh-0l_U4OV; Wed, 14 Jun 2023 07:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39FEB81468;
	Wed, 14 Jun 2023 07:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39FEB81468
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC5771BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 07:53:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A91B261110
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 07:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A91B261110
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwsknU1h8wgc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 07:53:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8AF9605E8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8AF9605E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 07:53:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348208835"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="348208835"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 00:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715097180"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="715097180"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jun 2023 00:53:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 00:53:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 00:53:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 00:53:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 00:53:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7Kg4Pk87g5jzyna+vedchsB1KnqMcU5Ykwu+1q7eYf26RIttTEg8ZZVVK5MjyuBkNYoLnu5GfKZq3Pjjj53GKiQxt4ik6YR2K4yTXZMe9WjFsflFxDILDNtE0HJ4s8bNx9/qVteBuvT8+YmXwAZu37QZVLjBQTpF25W+09WUreG09sD2LTjKL/iwoKWcj4BwwifFFTym3TkXPGnfpNJFMoT3/ZT32X7LjUbR/I/J0l9V9Sv0oQAmJtf3sOiwuizIa2antqyHl9Hci0Lj5tdVDBv65SBZc6tI+N7Dfl2Km0RQzsP78LrN00S85Abqsy8ACKqz0WMWmbJNU6jdwJFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IpXSn5DuJkrputUZD+iRHMXs69/XwPRY0pmdEWJEV/w=;
 b=DKidtVWMWnbD7D6wTQAIngz4Uvs6COJK5se03c7B5/MLXCaOquBo4ZkZRzoK7px9Ps6p7dCNWsaCp1q6Z/fP711wYrK2DQZtvshQ37dLBKik261G7GszCRtYt+Qwnl1e7miKzIR98geBxWMXtIThYfPi5fS58fRC8yw1AOe6Gvq5zQfmbon7RiVZO7ZDyBd9PeAMVA89MYBOxX4qymcfcNT6kA8SjNOkv5l9YUZewSkUYrxCJTvffTcm8q0xcw7LAVsvLVUMr0FTEBHbQ+OkS6o9sc3c+741KJiIbesHfkCDqDA+azaf3hwgO7wzOazrJcUrz6Z2pd3oBjc8YZtidQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW6PR11MB8440.namprd11.prod.outlook.com (2603:10b6:303:242::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Wed, 14 Jun
 2023 07:53:44 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Wed, 14 Jun 2023
 07:53:44 +0000
Message-ID: <005f2cf9-1285-72b5-b73a-4f51ca352758@intel.com>
Date: Wed, 14 Jun 2023 09:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230612231021.39409-1-pavan.kumar.linga@intel.com>
 <20230612231021.39409-7-pavan.kumar.linga@intel.com>
Content-Language: en-US
In-Reply-To: <20230612231021.39409-7-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: ZR0P278CA0053.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::22) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW6PR11MB8440:EE_
X-MS-Office365-Filtering-Correlation-Id: feeaed1e-bee8-4794-b6d0-08db6cac79d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ekQEFme8CRD4NAysVYIMqXPJW0fdSearyKq+U/Qr6mTmH6f2K6hcja8Ptk7JkYCDsSRDd1+hXTJuw5bdd/GdCQyMI5av6TsMO/MaNsCv/qnGKuR6K4cQrP7D3ZNFSXUWJ/x2i/cUQrBuliwpT26RFX2Hj9RHXRbrbFVp92t02x9nHNYfoIaWCWpNBJG/w5Dgi6N6ewt5epXYmxnPbw775yo/dizprdg/GKpeNhr/04ggR21i55EitNn7sslRW1jv1/dYh/FoE9ny+ga7gi0gam9H1FGijhAhOdnyJYS3ElUMNxySnB9Uc6Lp2rr1zIUlnYKuXxHAtUDr8Sp5FHHSv+rkaaow3oQekMXiR2LCIqer0W2CcdzMdMAbLCJgf13b8XIStK3Ug1/egGk7jd/D36j8ucZ8YfdYb/zHy9JGG4JPquvkaECmue549BJrydeXjqyZ1mwz7B1lpS7oE0/gX7cje5e7A79f0/QyC6o0GNCXuvbOTYCoMdGlmNF2d+Uqhe4OPxURo69eXwBv2W/jhyR3/jp7vulzRagMZItXVig04qtU8ilxcSOhf+tbpqg3OEv+prCPtQCRj/N68jN7YDXxKne7eQ43/lDjQH1EiWESf7QBINeUJa5eKWoYYLCi4IycMBRZCsKCtKa0H2psLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199021)(8676002)(8936002)(2906002)(30864003)(5660300002)(316002)(66476007)(66556008)(66946007)(82960400001)(4326008)(31686004)(38100700002)(83380400001)(66899021)(54906003)(41300700001)(2616005)(36756003)(478600001)(186003)(53546011)(6512007)(6506007)(26005)(107886003)(6666004)(6486002)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3RMdGFBdzhvZGtXWUdpVC9kU0tzTDBxdjJzUG4rSExvSnFabmszdnN0YlVQ?=
 =?utf-8?B?TlYvYUkrL3c4UDc3ZXJPdVNwaE8zWVdsZ0gwV2RrUWV2Y0tTVG1tNkY1MHFT?=
 =?utf-8?B?ajZwUkFvYmdXRThML0t6SjM2Q2lWQkJGWDBwMnljNUV6VnV3NkJYVnVUaVJh?=
 =?utf-8?B?dFB0ZVphYkF6QVQ3S0Q1OVZTbDVNa0oyeHJoTmhLM1VtMUQ4QnZWMWoveUhJ?=
 =?utf-8?B?UEwxbHBha3ZnVDFFUi80blIyY0tlZDJBNHNybWJ0SUxseWZjYjNFZTgvVW95?=
 =?utf-8?B?b053S0UrQitoS25hY1ZPMFkydGJwR3hCOWFGNG1WcGRuWmY2UlZOa01xRmVy?=
 =?utf-8?B?QnRMNHQ2cHBLODM1UXhIMDJQaGZPZEdxYTlqcUhRT0I3RE1BQXJLajVNajVH?=
 =?utf-8?B?TFFiQUpoQmFhS0EvZkZlb0FXUjMvWFI4WTZkZFNEbGV6RW83ODhGWWlmMUxy?=
 =?utf-8?B?SEVOYk5aK1JYM3d6M1dLcVpScU9UdllHZC94bzIyNmpyNjA4SHlHbHlBbXBN?=
 =?utf-8?B?VzZjUC9DRklwaGlQVzRSMG5KQTM0NTArVVprNmg2bjR6d0EybEtsbVQ2emlP?=
 =?utf-8?B?a1NRcGVYWFZ1UENoWjZUWFhuaE85bjdQTGxOd2pIM1R0cjRvZEFtMWJEQ0dT?=
 =?utf-8?B?RGZvaVdqbEp2UTFmUUY1bDh4bS8xNU1zMlBNZFBYV2hsUytBcS95eEtOZnF0?=
 =?utf-8?B?SVNzRi8zMTkyQUpYaXQ1blRXbUl6TndaTXE1NFhOdG9IblViY2VpODY0L2ZZ?=
 =?utf-8?B?bG1adFdLWVhhVEN3QWZCMmxjd09BVWF5UUZ2WndSYnBUb093VUtkVnlUZFl3?=
 =?utf-8?B?Y050YWpNckJQdlhLSitNM3hucVJFZEJNUjI3K0V6cUtSL0hROW9YVVROS2Jv?=
 =?utf-8?B?NFY1Ym14ZVNtdlV6SEdsSkNueGNBUHg5TDh2VHU5eGRNZVl3L3JDOVhqT0Qz?=
 =?utf-8?B?clBPeVVPRjl2bGRUQlowb0xTN2JkYkJZZUpEOS9odk1iTXZkNjh4MmhDdTF0?=
 =?utf-8?B?USt3dzJIK1JNSmhMd1g5ZjBmYTN6REU5VDFMOTRFbFZySUNja3VOMzNjZlFM?=
 =?utf-8?B?WVJaTlZ2eUY4R3JLTnBvMUh3QzhlYjN3RGt2aVVjVXFJR29tNXJYTGtjaUp2?=
 =?utf-8?B?V1ZSSStQbDFxQkMxNUhjOHc1d2ZSdjQrL2k4eUloVUk2cWIxZHNNTHArbUFG?=
 =?utf-8?B?MjNrRE9ockFlelQzdGkwSGJrS0l6UzUrWUE0T3JjMmZ2SXc5MEFVZXRQUUdr?=
 =?utf-8?B?c0Z4clJVVzBMeHpOZnRhU3YvVGRHOEpQbnd3ejZBdEdhR1dQdWVndlhYREkw?=
 =?utf-8?B?Ri85Wjl5K1hERm1melBUdU5yVlZNbWtHNHFiWlNpR2UrY2dyQkYxMmF1bjdI?=
 =?utf-8?B?V2I4MUo2SCtmYko3dzFvVE9rU2ZTakJCemdSYVlhT2FLTVN0REtwby9rMHY1?=
 =?utf-8?B?d3JubkhXWmFHZTZPUVl1L0RieTJqdWNTYm1tcHhCTWlDRkhDcGRIa09VTTNl?=
 =?utf-8?B?WlBmaG4xYllhaU4raWVtL1UzQitLdXZNUzcvR1Y0TStSVlNjcmZYU3VuTHVL?=
 =?utf-8?B?QldsSUQ2YWRKVEJja21FeEFjM0F0dlVHYTlTcElnMWR4eWptelhYYzMvLyta?=
 =?utf-8?B?RmxxZFNORG5hVlZmWmxSYm0wNjYwMHNIaFZkT3FSUUdpTjZsNldDcGMzelFC?=
 =?utf-8?B?RzY4WVlBSGw1N0YwVEtZaTJhTjRrdmY1eTJMRUIwc0lwaHY1b2ZFcm14MFJB?=
 =?utf-8?B?WlNZMk5aRWpmVzArNEtVZlpWbnQvQzZPWWtKWXh0eGZRMUE4VnJTclRNWUNp?=
 =?utf-8?B?eWtrNVI0WlZlN0dCZU1CaDJEYk9MWm5helF4MnJ6NkNUbm96UGhqQjNmbmJY?=
 =?utf-8?B?K3IwdUYvMmhoZmRWd3EyRjhmZDRHY2VWVFlTY2R2SjFDZU9SZmp2RDV0Q2RM?=
 =?utf-8?B?K2s5QURENloxQ1Q4b1E1VDZscVlDWjdKc1QzSzhlY1BlbVYzR1VXZFVOV3J1?=
 =?utf-8?B?d3VaSHdEZzhKeVJDSWkxdWNxVEFWSG1MVkdRa2MyekpicVRORGprenpDZWZR?=
 =?utf-8?B?dUJ2WVJIdm9CWkRHUUhlUkh6dVlkalRYcVhlN1VSRkJGZ3U4Y3dwM0ZNWDZq?=
 =?utf-8?B?b1k3U1dyTDlndms1S01WWDRHMUNLeEN2Y3lnY2YrV09QSlB5d2RsMUVITENK?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: feeaed1e-bee8-4794-b6d0-08db6cac79d2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 07:53:44.0064 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fn3nalrkPqqAgw7vlG3b0fVziRk1yW/qQ5fNxOIB62G0YLU1KveSaAieym1iknIzSkCRC2igC1GgDb3PDvhHU5yRxDgGHkBKG23eItNsEMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686729229; x=1718265229;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ciyEg1FWqgqutOrNhmhNkyOHz7W66FVRuenvchZD6GA=;
 b=bDdD8r97xtJVrs/JQezy22H7iHYnwcD7Hoef6vpPd+lv20XBoyQYjcJ6
 FG3p8MRqQr+I7ej+P1RTX5Cog+wesFpmNx/JE97Wa3/5nvHNJDbJzVYJP
 YdJ8ZW/4f1dY+rK3vmsh2e181kYl9T7FkWOJLH33v6NjGzEO+CHUBF8Cu
 chYyvetA2byWpTsq5yAFJNSpJGs+1JePtE4zbU6uwyQb7rimaJjJDMWv7
 Q1y5zW0EsDVNU/dqNcAjr0AheT7Dbiqep3Yo4pRBlNZQh6NxoQ85AcH4W
 q9iCluDJFrqyAC4CDIzEgfwNXShxtphGnGeARefn50uKy4+Dx3ufw2DG4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bDdD8r97
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 06/15] idpf: continue
 expanding init task
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
Cc: Willem de Bruijn <willemb@google.com>,
 Phani Burra <phani.r.burra@intel.com>,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/13/23 01:10, Pavan Kumar Linga wrote:
> Add the virtchnl support to request the packet types. Parse the responses
> received from CP and based on the protocol headers, populate the packet
> type structure with necessary information. Initialize the MAC address
> and add the virtchnl support to add and del MAC address.
> 

Subject line of "idpf: continue expanding init task" does not really say 
anything, esp for 800+ lines of code. Note that "idpf_init_task()" has 
received less than 2% of that new code ;)

> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>

You could post your Sign-off after all the tags when sending the patch 
on your own.

> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  37 ++
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 184 ++++++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 112 ++++
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 497 ++++++++++++++++++
>   4 files changed, 825 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index ac55a5cf85b7..59d57aa57a9f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -22,6 +22,7 @@ struct idpf_vport_max_q;
>   
>   /* Default Mailbox settings */
>   #define IDPF_DFLT_MBX_BUF_SIZE		SZ_4K
> +#define IDPF_NUM_FILTERS_PER_MSG	20
>   #define IDPF_NUM_DFLT_MBX_Q		2	/* includes both TX and RX */
>   #define IDPF_DFLT_MBX_Q_LEN		64
>   #define IDPF_DFLT_MBX_ID		-1
> @@ -38,6 +39,13 @@ struct idpf_vport_max_q;
>   #define IDPF_VIRTCHNL_VERSION_MAJOR VIRTCHNL2_VERSION_MAJOR_2
>   #define IDPF_VIRTCHNL_VERSION_MINOR VIRTCHNL2_VERSION_MINOR_0
>   
> +struct idpf_mac_filter {
> +	struct list_head list;
> +	u8 macaddr[ETH_ALEN];
> +	bool remove;		/* filter needs to be removed */
> +	bool add;		/* filter needs to be added */
> +};
> +
>   enum idpf_state {
>   	__IDPF_STARTUP,
>   	__IDPF_VER_CHECK,
> @@ -141,6 +149,12 @@ struct idpf_dev_ops {
>   	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
>   	STATE(IDPF_VC_DEALLOC_VECTORS)		\
>   	STATE(IDPF_VC_DEALLOC_VECTORS_ERR)	\
> +	STATE(IDPF_VC_ADD_MAC_ADDR)		\
> +	STATE(IDPF_VC_ADD_MAC_ADDR_ERR)		\
> +	STATE(IDPF_VC_DEL_MAC_ADDR)		\
> +	STATE(IDPF_VC_DEL_MAC_ADDR_ERR)		\
> +	STATE(IDPF_VC_GET_PTYPE_INFO)		\
> +	STATE(IDPF_VC_GET_PTYPE_INFO_ERR)	\
>   	STATE(IDPF_VC_NBITS)
>   
>   #define IDPF_GEN_ENUM(ENUM) ENUM,
> @@ -152,6 +166,19 @@ enum idpf_vport_vc_state {
>   
>   extern const char * const idpf_vport_vc_state_str[];
>   
> +/**
> + * enum idpf_vport_flags - vport flags
> + * @IDPF_VPORT_ADD_MAC_REQ: Asynchronous add ether address in flight
> + * @IDPF_VPORT_DEL_MAC_REQ: Asynchronous delete ether address in flight
> + * @IDPF_VPORT_FLAGS_NBITS: Must be last
> + */
> +enum idpf_vport_flags {
> +	/* Asynchronous add/del ether address in flight */
> +	IDPF_VPORT_ADD_MAC_REQ,
> +	IDPF_VPORT_DEL_MAC_REQ,
> +	IDPF_VPORT_FLAGS_NBITS,
> +};
> +
>   enum idpf_vport_state {
>   	__IDPF_VPORT_DOWN,
>   	__IDPF_VPORT_UP,
> @@ -181,13 +208,16 @@ struct idpf_vport {
>   	u32 bufq_size[IDPF_MAX_BUFQS_PER_RXQ_GRP];
>   	int num_rxq_grp;
>   	u32 rxq_model;
> +	struct idpf_rx_ptype_decoded rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
>   
>   	struct idpf_adapter *adapter;
>   	struct net_device *netdev;
> +	DECLARE_BITMAP(flags, IDPF_VPORT_FLAGS_NBITS);
>   	u16 vport_type;
>   	u32 vport_id;
>   	u16 idx;		/* software index in adapter vports struct */
>   	bool default_vport;
> +	bool base_rxd;
>   
>   	u16 max_mtu;
>   	u8 default_mac_addr[ETH_ALEN];
> @@ -204,6 +234,9 @@ struct idpf_vport {
>   	struct mutex stop_mutex;
>   	/* lock to protect virtchnl buffer */
>   	struct mutex vc_buf_lock;
> +
> +	/* lock to protect mac filters */
> +	spinlock_t mac_filter_list_lock;
>   };
>   
>   /* User defined configuration values for each vport */
> @@ -212,6 +245,7 @@ struct idpf_vport_user_config_data {
>   	u32 num_req_rx_qs; /* user requested RX queues through ethtool */
>   	u32 num_req_txq_desc; /* user requested TX queue descriptors through ethtool */
>   	u32 num_req_rxq_desc; /* user requested RX queue descriptors through ethtool */
> +	struct list_head mac_filter_list;
>   };
>   
>   /**
> @@ -467,6 +501,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter);
>   int idpf_intr_req(struct idpf_adapter *adapter);
>   void idpf_intr_rel(struct idpf_adapter *adapter);
>   int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
> +int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
>   int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
>   int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
>   void idpf_deinit_task(struct idpf_adapter *adapter);
> @@ -481,9 +516,11 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
>   			    struct idpf_vport_max_q *max_q);
>   void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
>   			       struct idpf_vport_max_q *max_q);
> +int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async);
>   void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
>   u32 idpf_get_vport_id(struct idpf_vport *vport);
>   int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
>   			       struct idpf_vport_max_q *max_q);
> +int idpf_check_supported_desc_ids(struct idpf_vport *vport);
>   
>   #endif /* !_IDPF_H_ */
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index cb36602fefdb..7b1229ed82e3 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -293,6 +293,154 @@ int idpf_intr_req(struct idpf_adapter *adapter)
>   	return err;
>   }
>   
> +/**
> + * idpf_find_mac_filter - Search filter list for specific mac filter
> + * @vport: main vport structure
> + * @macaddr: the MAC address
> + *
> + * Returns ptr to the filter object or NULL. Must be called while holding the
> + * mac_filter_list_lock.
> + **/
> +static struct idpf_mac_filter *idpf_find_mac_filter(struct idpf_vport *vport,
> +						    const u8 *macaddr)
> +{
> +	struct idpf_vport_user_config_data *config_data;
> +	struct idpf_adapter *adapter = vport->adapter;
> +	struct idpf_mac_filter *f;
> +
> +	if (!macaddr)
> +		return NULL;
> +
> +	config_data = &adapter->vport_config[vport->idx]->user_config;
> +
> +	list_for_each_entry(f, &config_data->mac_filter_list, list) {
> +		if (ether_addr_equal(macaddr, f->macaddr))
> +			return f;
> +	}
> +
> +	return NULL;
> +}
> +
> +/**
> + * __idpf_add_mac_filter - Add mac filter helper function
> + * @vport: main vport struct
> + * @macaddr: address to add
> + *
> + * Takes mac_filter_list_lock spinlock to add new filter to list.
> + */
> +static int __idpf_add_mac_filter(struct idpf_vport *vport, const u8 *macaddr)
> +{
> +	struct idpf_vport_config *vport_config;
> +	struct idpf_mac_filter *f = NULL;

Please avoid 0-init for variables that are going to be overwritten in a 
moment

> +
> +	vport_config = vport->adapter->vport_config[vport->idx];
> +	spin_lock_bh(&vport->mac_filter_list_lock);
> +
> +	f = idpf_find_mac_filter(vport, macaddr);
> +	if (f) {
> +		f->remove = false;
> +		spin_unlock_bh(&vport->mac_filter_list_lock);
> +
> +		return 0;
> +	}
> +
> +	f = kzalloc(sizeof(*f), GFP_ATOMIC);
> +	if (!f) {
> +		spin_unlock_bh(&vport->mac_filter_list_lock);
> +
> +		return -ENOMEM;
> +	}
> +
> +	ether_addr_copy(f->macaddr, macaddr);
> +	list_add_tail(&f->list, &vport_config->user_config.mac_filter_list);
> +	f->add = true;
> +
> +	spin_unlock_bh(&vport->mac_filter_list_lock);
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_add_mac_filter - Add a mac filter to the filter list
> + * @vport: main vport structure
> + * @macaddr: the MAC address
> + * @async: Don't wait for return message
> + *
> + * Returns 0 on success or error on failure. If interface is up, we'll also
> + * send the virtchnl message to tell hardware about the filter.
> + **/
> +static int idpf_add_mac_filter(struct idpf_vport *vport,
> +			       const u8 *macaddr, bool async)
> +{
> +	int err;
> +
> +	err = __idpf_add_mac_filter(vport, macaddr);
> +	if (err)
> +		return err;
> +
> +	if (vport->state == __IDPF_VPORT_UP)
> +		err = idpf_add_del_mac_filters(vport, true, async);
> +
> +	return err;
> +}
> +
> +/**
> + * idpf_deinit_mac_addr - deinitialize mac address for vport
> + * @vport: main vport structure
> + */
> +static void idpf_deinit_mac_addr(struct idpf_vport *vport)
> +{
> +	struct idpf_mac_filter *f;
> +
> +	spin_lock_bh(&vport->mac_filter_list_lock);
> +
> +	f = idpf_find_mac_filter(vport, vport->default_mac_addr);
> +	if (f) {
> +		list_del(&f->list);
> +		kfree(f);
> +	}
> +
> +	spin_unlock_bh(&vport->mac_filter_list_lock);
> +}
> +
> +/**
> + * idpf_init_mac_addr - initialize mac address for vport
> + * @vport: main vport structure
> + * @netdev: pointer to netdev struct associated with this vport
> + */
> +static int idpf_init_mac_addr(struct idpf_vport *vport,
> +			      struct net_device *netdev)
> +{
> +	struct idpf_adapter *adapter = vport->adapter;
> +	int err;
> +
> +	if (is_valid_ether_addr(vport->default_mac_addr)) {
> +		eth_hw_addr_set(netdev, vport->default_mac_addr);
> +		ether_addr_copy(netdev->perm_addr, vport->default_mac_addr);
> +
> +		return idpf_add_mac_filter(vport, vport->default_mac_addr, false);
> +	}
> +
> +	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
> +			     VIRTCHNL2_CAP_MACFILTER)) {
> +		dev_err(&adapter->pdev->dev,
> +			"MAC address is not provided and capability is not set\n");
> +
> +		return -EINVAL;
> +	}
> +
> +	eth_hw_addr_random(netdev);
> +	err = idpf_add_mac_filter(vport, netdev->dev_addr, false);
> +	if (err)
> +		return err;
> +
> +	dev_info(&adapter->pdev->dev, "Invalid MAC address %pM, using random %pM\n",
> +		 vport->default_mac_addr, netdev->dev_addr);

This log looks like some old code left after refactoring (and is 
incorrect now).

> +	ether_addr_copy(vport->default_mac_addr, netdev->dev_addr);
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_cfg_netdev - Allocate, configure and register a netdev
>    * @vport: main vport structure
> @@ -308,6 +456,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
>   	struct idpf_netdev_priv *np;
>   	struct net_device *netdev;
>   	u16 idx = vport->idx;
> +	int err;
>   
>   	vport_config = adapter->vport_config[idx];
>   
> @@ -320,7 +469,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
>   		np->vport = vport;
>   		vport->netdev = netdev;
>   
> -		return 0;
> +		return idpf_init_mac_addr(vport, netdev);
>   	}
>   
>   	netdev = alloc_etherdev_mqs(sizeof(struct idpf_netdev_priv),
> @@ -333,6 +482,14 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
>   	np = netdev_priv(netdev);
>   	np->vport = vport;
>   
> +	err = idpf_init_mac_addr(vport, netdev);
> +	if (err) {
> +		free_netdev(vport->netdev);
> +		vport->netdev = NULL;
> +
> +		return err;
> +	}
> +
>   	/* setup watchdog timeout value to be 5 second */
>   	netdev->watchdog_timeo = 5 * HZ;
>   
> @@ -498,15 +655,15 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
>   	struct idpf_adapter *adapter = vport->adapter;
>   	unsigned int i = vport->idx;
>   
> +	idpf_deinit_mac_addr(vport);
> +
>   	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
>   		idpf_decfg_netdev(vport);
>   
>   	if (adapter->netdevs[i]) {
> -		struct idpf_netdev_priv *np;
> +		struct idpf_netdev_priv *np = netdev_priv(adapter->netdevs[i]);
>   
> -		np = netdev_priv(adapter->netdevs[i]);
> -		if (np)
> -			np->vport = NULL;
> +		np->vport = NULL;

this part looks like it could have been done "final way" in the commit 
that was introducing it. Aka "avoid trashing".

>   	}
>   
>   	idpf_vport_rel(vport);
> @@ -615,6 +772,7 @@ void idpf_service_task(struct work_struct *work)
>    */
>   void idpf_init_task(struct work_struct *work)
>   {
> +	struct idpf_vport_config *vport_config;
>   	struct idpf_vport_max_q max_q;
>   	struct idpf_adapter *adapter;
>   	u16 num_default_vports = 0;
> @@ -659,14 +817,28 @@ void idpf_init_task(struct work_struct *work)
>   	mutex_unlock(&adapter->sw_mutex);
>   
>   	index = vport->idx;
> +	vport_config = adapter->vport_config[index];
>   
>   	init_waitqueue_head(&vport->vchnl_wq);
>   
>   	mutex_init(&vport->vc_buf_lock);
> +	spin_lock_init(&vport->mac_filter_list_lock);
> +
> +	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
> +
> +	err = idpf_check_supported_desc_ids(vport);
> +	if (err) {
> +		dev_err(&pdev->dev, "failed to get required descriptor ids\n");
> +		goto cfg_netdev_err;
> +	}
>   
>   	if (idpf_cfg_netdev(vport))
>   		goto cfg_netdev_err;
>   
> +	err = idpf_send_get_rx_ptype_msg(vport);
> +	if (err)
> +		goto handle_err;
> +
>   	mutex_lock(&adapter->sw_mutex);
>   
>   	/* Spawn and return 'idpf_init_task' work queue until all the
> @@ -698,6 +870,8 @@ void idpf_init_task(struct work_struct *work)
>   
>   	return;
>   
> +handle_err:
> +	idpf_decfg_netdev(vport);
>   cfg_netdev_err:
>   	idpf_vport_rel(vport);
>   	adapter->vports[index] = NULL;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index 7c962c3c6be5..bfceb765aa41 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -9,6 +9,10 @@
>   
>   #define IDPF_MIN_TXQ_COMPLQ_DESC		256
>   
> +#define MIN_SUPPORT_TXDID (\
> +	VIRTCHNL2_TXDID_FLEX_FLOW_SCHED |\
> +	VIRTCHNL2_TXDID_FLEX_TSO_CTX)
> +
>   #define IDPF_DFLT_SINGLEQ_TX_Q_GROUPS		1
>   #define IDPF_DFLT_SINGLEQ_RX_Q_GROUPS		1
>   #define IDPF_DFLT_SINGLEQ_TXQ_PER_GROUP		4
> @@ -51,8 +55,116 @@
>   #define IDPF_PACKET_HDR_PAD	\
>   	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
>   
> +#define IDPF_RX_MAX_PTYPE_PROTO_IDS    32
> +#define IDPF_RX_MAX_PTYPE_SZ	(sizeof(struct virtchnl2_ptype) + \
> +				 (sizeof(u16) * IDPF_RX_MAX_PTYPE_PROTO_IDS))
> +#define IDPF_RX_PTYPE_HDR_SZ	sizeof(struct virtchnl2_get_ptype_info)
> +#define IDPF_RX_MAX_PTYPES_PER_BUF	\
> +	DIV_ROUND_DOWN_ULL((IDPF_DFLT_MBX_BUF_SIZE - IDPF_RX_PTYPE_HDR_SZ), \
> +			   IDPF_RX_MAX_PTYPE_SZ)
> +
> +#define IDPF_GET_PTYPE_SIZE(p) struct_size((p), proto_id, (p)->proto_id_count)
> +
> +#define IDPF_TUN_IP_GRE (\
> +	IDPF_PTYPE_TUNNEL_IP |\
> +	IDPF_PTYPE_TUNNEL_IP_GRENAT)
> +
> +#define IDPF_TUN_IP_GRE_MAC (\
> +	IDPF_TUN_IP_GRE |\
> +	IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC)
> +
> +#define IDPF_RX_MAX_PTYPE	1024
> +#define IDPF_RX_MAX_BASE_PTYPE	256
> +#define IDPF_INVALID_PTYPE_ID	0xFFFF
>   #define IDPF_INT_NAME_STR_LEN   (IFNAMSIZ + 16)
>   
> +/* Packet type non-ip values */
> +enum idpf_rx_ptype_l2 {
> +	IDPF_RX_PTYPE_L2_RESERVED	= 0,
> +	IDPF_RX_PTYPE_L2_MAC_PAY2	= 1,
> +	IDPF_RX_PTYPE_L2_TIMESYNC_PAY2	= 2,
> +	IDPF_RX_PTYPE_L2_FIP_PAY2	= 3,
> +	IDPF_RX_PTYPE_L2_OUI_PAY2	= 4,
> +	IDPF_RX_PTYPE_L2_MACCNTRL_PAY2	= 5,
> +	IDPF_RX_PTYPE_L2_LLDP_PAY2	= 6,
> +	IDPF_RX_PTYPE_L2_ECP_PAY2	= 7,
> +	IDPF_RX_PTYPE_L2_EVB_PAY2	= 8,
> +	IDPF_RX_PTYPE_L2_QCN_PAY2	= 9,
> +	IDPF_RX_PTYPE_L2_EAPOL_PAY2	= 10,
> +	IDPF_RX_PTYPE_L2_ARP		= 11,
> +};
> +
> +enum idpf_rx_ptype_outer_ip {
> +	IDPF_RX_PTYPE_OUTER_L2	= 0,
> +	IDPF_RX_PTYPE_OUTER_IP	= 1,
> +};
> +
> +enum idpf_rx_ptype_outer_ip_ver {
> +	IDPF_RX_PTYPE_OUTER_NONE	= 0,
> +	IDPF_RX_PTYPE_OUTER_IPV4	= 1,
> +	IDPF_RX_PTYPE_OUTER_IPV6	= 2,
> +};
> +
> +enum idpf_rx_ptype_outer_fragmented {
> +	IDPF_RX_PTYPE_NOT_FRAG	= 0,
> +	IDPF_RX_PTYPE_FRAG	= 1,
> +};
> +
> +enum idpf_rx_ptype_tunnel_type {
> +	IDPF_RX_PTYPE_TUNNEL_NONE		= 0,
> +	IDPF_RX_PTYPE_TUNNEL_IP_IP		= 1,
> +	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
> +	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
> +	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
> +};
> +
> +enum idpf_rx_ptype_tunnel_end_prot {
> +	IDPF_RX_PTYPE_TUNNEL_END_NONE	= 0,
> +	IDPF_RX_PTYPE_TUNNEL_END_IPV4	= 1,
> +	IDPF_RX_PTYPE_TUNNEL_END_IPV6	= 2,
> +};
> +
> +enum idpf_rx_ptype_inner_prot {
> +	IDPF_RX_PTYPE_INNER_PROT_NONE		= 0,
> +	IDPF_RX_PTYPE_INNER_PROT_UDP		= 1,
> +	IDPF_RX_PTYPE_INNER_PROT_TCP		= 2,
> +	IDPF_RX_PTYPE_INNER_PROT_SCTP		= 3,
> +	IDPF_RX_PTYPE_INNER_PROT_ICMP		= 4,
> +	IDPF_RX_PTYPE_INNER_PROT_TIMESYNC	= 5,
> +};
> +
> +enum idpf_rx_ptype_payload_layer {
> +	IDPF_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
> +	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
> +	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
> +	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
> +};
> +
> +enum idpf_tunnel_state {
> +	IDPF_PTYPE_TUNNEL_IP                    = BIT(0),
> +	IDPF_PTYPE_TUNNEL_IP_GRENAT             = BIT(1),
> +	IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC         = BIT(2),
> +};
> +
> +struct idpf_ptype_state {
> +	bool outer_ip;
> +	bool outer_frag;
> +	u8 tunnel_state;
> +};
> +
> +struct idpf_rx_ptype_decoded {
> +	u32 ptype:10;
> +	u32 known:1;
> +	u32 outer_ip:1;
> +	u32 outer_ip_ver:2;
> +	u32 outer_frag:1;
> +	u32 tunnel_type:3;
> +	u32 tunnel_end_prot:2;
> +	u32 tunnel_end_frag:1;
> +	u32 inner_prot:4;
> +	u32 payload_layer:3;
> +};
> +
>   struct idpf_intr_reg {
>   	void __iomem *dyn_ctl;
>   	u32 dyn_ctl_intena_m;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index e9b5fa2f8ff4..9429f466e1d4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -161,10 +161,15 @@ static int idpf_find_vport(struct idpf_adapter *adapter,
>   	case VIRTCHNL2_OP_CREATE_VPORT:
>   	case VIRTCHNL2_OP_ALLOC_VECTORS:
>   	case VIRTCHNL2_OP_DEALLOC_VECTORS:
> +	case VIRTCHNL2_OP_GET_PTYPE_INFO:
>   		goto free_vc_msg;
>   	case VIRTCHNL2_OP_DESTROY_VPORT:
>   		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
>   		break;
> +	case VIRTCHNL2_OP_ADD_MAC_ADDR:
> +	case VIRTCHNL2_OP_DEL_MAC_ADDR:
> +		v_id = le32_to_cpu(((struct virtchnl2_mac_addr_list *)vc_msg)->vport_id);
> +		break;
>   	default:
>   		no_op = true;
>   		break;
> @@ -371,6 +376,51 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
>   					   IDPF_VC_DEALLOC_VECTORS,
>   					   IDPF_VC_DEALLOC_VECTORS_ERR);
>   			break;
> +		case VIRTCHNL2_OP_GET_PTYPE_INFO:
> +			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
> +					   IDPF_VC_GET_PTYPE_INFO,
> +					   IDPF_VC_GET_PTYPE_INFO_ERR);
> +			break;
> +		case VIRTCHNL2_OP_ADD_MAC_ADDR:
> +			if (test_and_clear_bit(IDPF_VPORT_ADD_MAC_REQ,
> +					       vport->flags)) {
> +				/* Message was sent asynchronously. We don't
> +				 * normally print errors here, instead
> +				 * prefer to handle errors in the function
> +				 * calling wait_for_event. However, if
> +				 * asynchronous, the context in which the
> +				 * message was sent is lost. We can't really do
> +				 * anything about at it this point, but we
> +				 * should at a minimum indicate that it looks
> +				 * like something went wrong. Also don't bother
> +				 * setting ERR bit or waking vchnl_wq since no
> +				 * one will be waiting to read the async
> +				 * message.
> +				 */
> +				if (ctlq_msg.cookie.mbx.chnl_retval)
> +					dev_err(&adapter->pdev->dev, "Failed to add MAC address: %d\n",
> +						ctlq_msg.cookie.mbx.chnl_retval);
> +				break;
> +			}
> +			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
> +					   IDPF_VC_ADD_MAC_ADDR,
> +					   IDPF_VC_ADD_MAC_ADDR_ERR);
> +			break;
> +		case VIRTCHNL2_OP_DEL_MAC_ADDR:
> +			if (test_and_clear_bit(IDPF_VPORT_DEL_MAC_REQ,
> +					       vport->flags)) {
> +				/* Message was sent asynchronously like the
> +				 * VIRTCHNL2_OP_ADD_MAC_ADDR
> +				 */
> +				if (ctlq_msg.cookie.mbx.chnl_retval)
> +					dev_err(&adapter->pdev->dev, "Failed to delete MAC address: %d\n",
> +						ctlq_msg.cookie.mbx.chnl_retval);
> +				break;
> +			}
> +			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
> +					   IDPF_VC_DEL_MAC_ADDR,
> +					   IDPF_VC_DEL_MAC_ADDR_ERR);
> +			break;
>   		default:
>   			dev_warn(&adapter->pdev->dev,
>   				 "Unhandled virtchnl response %d\n",
> @@ -823,6 +873,45 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
>   	return err;
>   }
>   
> +/**
> + * idpf_check_supported_desc_ids - Verify we have required descriptor support
> + * @vport: virtual port structure
> + *
> + * Return 0 on success, error on failure
> + */
> +int idpf_check_supported_desc_ids(struct idpf_vport *vport)
> +{
> +	struct idpf_adapter *adapter = vport->adapter;
> +	struct virtchnl2_create_vport *vport_msg;
> +	u64 rx_desc_ids, tx_desc_ids;
> +
> +	vport_msg = (struct virtchnl2_create_vport *)
> +				adapter->vport_params_recvd[vport->idx];

all cases in the code use struct virtchnl2_create_vport, perhaps you 
could refactor code to have it typed, instead of void **

> +
> +	rx_desc_ids = le64_to_cpu(vport_msg->rx_desc_ids);
> +	tx_desc_ids = le64_to_cpu(vport_msg->tx_desc_ids);
> +
> +	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
> +		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M)) {
> +			dev_info(&adapter->pdev->dev, "Minimum RX descriptor support not provided, using the default\n");
> +			vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
> +		}
> +	} else {
> +		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M))
> +			vport->base_rxd = true;
> +	}
> +
> +	if (vport->txq_model != VIRTCHNL2_QUEUE_MODEL_SPLIT)
> +		return 0;
> +
> +	if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
> +		dev_info(&adapter->pdev->dev, "Minimum TX descriptor support not provided, using the default\n");
> +		vport_msg->tx_desc_ids = cpu_to_le64(MIN_SUPPORT_TXDID);
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_send_destroy_vport_msg - Send virtchnl destroy vport message
>    * @vport: virtual port data structure
> @@ -947,6 +1036,275 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
>   	return err;
>   }
>   
> +/**
> + * idpf_fill_ptype_lookup - Fill L3 specific fields in ptype lookup table
> + * @ptype: ptype lookup table
> + * @pstate: state machine for ptype lookup table
> + * @ipv4: ipv4 or ipv6
> + * @frag: fragmentation allowed
> + *
> + */
> +static void idpf_fill_ptype_lookup(struct idpf_rx_ptype_decoded *ptype,
> +				   struct idpf_ptype_state *pstate,
> +				   bool ipv4, bool frag)
> +{
> +	if (!pstate->outer_ip || !pstate->outer_frag) {
> +		ptype->outer_ip = IDPF_RX_PTYPE_OUTER_IP;
> +		pstate->outer_ip = true;
> +
> +		if (ipv4)
> +			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV4;
> +		else
> +			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV6;
> +
> +		if (frag) {
> +			ptype->outer_frag = IDPF_RX_PTYPE_FRAG;
> +			pstate->outer_frag = true;
> +		}
> +	} else {
> +		ptype->tunnel_type = IDPF_RX_PTYPE_TUNNEL_IP_IP;
> +		pstate->tunnel_state = IDPF_PTYPE_TUNNEL_IP;
> +
> +		if (ipv4)
> +			ptype->tunnel_end_prot =
> +					IDPF_RX_PTYPE_TUNNEL_END_IPV4;
> +		else
> +			ptype->tunnel_end_prot =
> +					IDPF_RX_PTYPE_TUNNEL_END_IPV6;
> +
> +		if (frag)
> +			ptype->tunnel_end_frag = IDPF_RX_PTYPE_FRAG;
> +	}
> +}
> +
> +/**
> + * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
> + * @vport: virtual port data structure
> + *
> + * Returns 0 on success, negative on failure.
> + */
> +int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
> +{
> +	struct idpf_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
> +	struct virtchnl2_get_ptype_info *get_ptype_info, *ptype_info;
> +	int max_ptype, ptypes_recvd = 0, len, ptype_offset;
> +	struct idpf_adapter *adapter = vport->adapter;
> +	int err = 0, i, j, k = 0;
> +	u16 next_ptype_id = 0;
> +
> +	if (idpf_is_queue_model_split(vport->rxq_model))
> +		max_ptype = IDPF_RX_MAX_PTYPE;
> +	else
> +		max_ptype = IDPF_RX_MAX_BASE_PTYPE;
> +
> +	memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
> +
> +	len = sizeof(struct virtchnl2_get_ptype_info);
> +	get_ptype_info = kzalloc(len, GFP_KERNEL);
> +	if (!get_ptype_info)
> +		return -ENOMEM;

please move appropriate variables onto the stack, to avoid whole fuss 
about alloc+error check for them, esp given this func is so long

> +
> +	while (next_ptype_id < max_ptype) {
> +		get_ptype_info->start_ptype_id = cpu_to_le16(next_ptype_id);
> +
> +		if ((next_ptype_id + IDPF_RX_MAX_PTYPES_PER_BUF) > max_ptype)
> +			get_ptype_info->num_ptypes =
> +				cpu_to_le16(max_ptype - next_ptype_id);
> +		else
> +			get_ptype_info->num_ptypes =
> +				cpu_to_le16(IDPF_RX_MAX_PTYPES_PER_BUF);
> +
> +		mutex_lock(&adapter->vc_buf_lock);

who will benefit from releasing and acquiring the lock in each while 
loop step?

> +
> +		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
> +				       len, (u8 *)get_ptype_info);
> +		if (err)
> +			goto get_ptype_rel;
> +
> +		err = idpf_wait_for_event(adapter, NULL, IDPF_VC_GET_PTYPE_INFO,
> +					  IDPF_VC_GET_PTYPE_INFO_ERR);
> +		if (err)
> +			goto get_ptype_rel;
> +
> +		ptype_info = kmemdup(adapter->vc_msg, IDPF_DFLT_MBX_BUF_SIZE,
> +				     GFP_KERNEL);
> +		if (!ptype_info) {
> +			err = -ENOMEM;
> +			goto get_ptype_rel;
> +		}
> +
> +		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
> +		if (ptypes_recvd > max_ptype) {
> +			err = -EINVAL;
> +			goto ptype_rel;
> +		}
> +
> +		next_ptype_id = le16_to_cpu(get_ptype_info->start_ptype_id) +
> +				le16_to_cpu(get_ptype_info->num_ptypes);
> +
> +		ptype_offset = IDPF_RX_PTYPE_HDR_SZ;
> +
> +		for (i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
> +			struct idpf_ptype_state pstate = { };
> +			struct virtchnl2_ptype *ptype;
> +			u16 id;
> +
> +			ptype = (struct virtchnl2_ptype *)
> +					((u8 *)ptype_info + ptype_offset);
> +
> +			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
> +			if (ptype_offset > IDPF_DFLT_MBX_BUF_SIZE) {
> +				err = -EINVAL;
> +				goto ptype_rel;
> +			}
> +
> +			/* 0xFFFF indicates end of ptypes */
> +			if (le16_to_cpu(ptype->ptype_id_10) ==
> +							IDPF_INVALID_PTYPE_ID) {
> +				err = 0;
> +				goto ptype_rel;
> +			}
> +
> +			if (idpf_is_queue_model_split(vport->rxq_model))
> +				k = le16_to_cpu(ptype->ptype_id_10);
> +			else
> +				k = ptype->ptype_id_8;
> +
> +			if (ptype->proto_id_count)
> +				ptype_lkup[k].known = 1;
> +
> +			for (j = 0; j < ptype->proto_id_count; j++) {
> +				id = le16_to_cpu(ptype->proto_id[j]);
> +				switch (id) {
> +				case VIRTCHNL2_PROTO_HDR_GRE:
> +					if (pstate.tunnel_state ==
> +							IDPF_PTYPE_TUNNEL_IP) {
> +						ptype_lkup[k].tunnel_type =
> +						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT;
> +						pstate.tunnel_state |=
> +						IDPF_PTYPE_TUNNEL_IP_GRENAT;
> +					}
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_MAC:
> +					ptype_lkup[k].outer_ip =
> +						IDPF_RX_PTYPE_OUTER_L2;
> +					if (pstate.tunnel_state ==
> +							IDPF_TUN_IP_GRE) {
> +						ptype_lkup[k].tunnel_type =
> +						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC;
> +						pstate.tunnel_state |=
> +						IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
> +					}
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV4:
> +					idpf_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, true,
> +							       false);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV6:
> +					idpf_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, false,
> +							       false);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV4_FRAG:
> +					idpf_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, true,
> +							       true);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_IPV6_FRAG:
> +					idpf_fill_ptype_lookup(&ptype_lkup[k],
> +							       &pstate, false,
> +							       true);
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_UDP:
> +					ptype_lkup[k].inner_prot =
> +					IDPF_RX_PTYPE_INNER_PROT_UDP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_TCP:
> +					ptype_lkup[k].inner_prot =
> +					IDPF_RX_PTYPE_INNER_PROT_TCP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_SCTP:
> +					ptype_lkup[k].inner_prot =
> +					IDPF_RX_PTYPE_INNER_PROT_SCTP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_ICMP:
> +					ptype_lkup[k].inner_prot =
> +					IDPF_RX_PTYPE_INNER_PROT_ICMP;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_PAY:
> +					ptype_lkup[k].payload_layer =
> +						IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2;
> +					break;
> +				case VIRTCHNL2_PROTO_HDR_ICMPV6:
> +				case VIRTCHNL2_PROTO_HDR_IPV6_EH:
> +				case VIRTCHNL2_PROTO_HDR_PRE_MAC:
> +				case VIRTCHNL2_PROTO_HDR_POST_MAC:
> +				case VIRTCHNL2_PROTO_HDR_ETHERTYPE:
> +				case VIRTCHNL2_PROTO_HDR_SVLAN:
> +				case VIRTCHNL2_PROTO_HDR_CVLAN:
> +				case VIRTCHNL2_PROTO_HDR_MPLS:
> +				case VIRTCHNL2_PROTO_HDR_MMPLS:
> +				case VIRTCHNL2_PROTO_HDR_PTP:
> +				case VIRTCHNL2_PROTO_HDR_CTRL:
> +				case VIRTCHNL2_PROTO_HDR_LLDP:
> +				case VIRTCHNL2_PROTO_HDR_ARP:
> +				case VIRTCHNL2_PROTO_HDR_ECP:
> +				case VIRTCHNL2_PROTO_HDR_EAPOL:
> +				case VIRTCHNL2_PROTO_HDR_PPPOD:
> +				case VIRTCHNL2_PROTO_HDR_PPPOE:
> +				case VIRTCHNL2_PROTO_HDR_IGMP:
> +				case VIRTCHNL2_PROTO_HDR_AH:
> +				case VIRTCHNL2_PROTO_HDR_ESP:
> +				case VIRTCHNL2_PROTO_HDR_IKE:
> +				case VIRTCHNL2_PROTO_HDR_NATT_KEEP:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV2:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL:
> +				case VIRTCHNL2_PROTO_HDR_L2TPV3:
> +				case VIRTCHNL2_PROTO_HDR_GTP:
> +				case VIRTCHNL2_PROTO_HDR_GTP_EH:
> +				case VIRTCHNL2_PROTO_HDR_GTPCV2:
> +				case VIRTCHNL2_PROTO_HDR_GTPC_TEID:
> +				case VIRTCHNL2_PROTO_HDR_GTPU:
> +				case VIRTCHNL2_PROTO_HDR_GTPU_UL:
> +				case VIRTCHNL2_PROTO_HDR_GTPU_DL:
> +				case VIRTCHNL2_PROTO_HDR_ECPRI:
> +				case VIRTCHNL2_PROTO_HDR_VRRP:
> +				case VIRTCHNL2_PROTO_HDR_OSPF:
> +				case VIRTCHNL2_PROTO_HDR_TUN:
> +				case VIRTCHNL2_PROTO_HDR_NVGRE:
> +				case VIRTCHNL2_PROTO_HDR_VXLAN:
> +				case VIRTCHNL2_PROTO_HDR_VXLAN_GPE:
> +				case VIRTCHNL2_PROTO_HDR_GENEVE:
> +				case VIRTCHNL2_PROTO_HDR_NSH:
> +				case VIRTCHNL2_PROTO_HDR_QUIC:
> +				case VIRTCHNL2_PROTO_HDR_PFCP:
> +				case VIRTCHNL2_PROTO_HDR_PFCP_NODE:
> +				case VIRTCHNL2_PROTO_HDR_PFCP_SESSION:
> +				case VIRTCHNL2_PROTO_HDR_RTP:
> +				case VIRTCHNL2_PROTO_HDR_NO_PROTO:
> +					continue;

althouhg technically correct, this continue looks odd here

> +				default:
> +					break;
> +				}
> +			}
> +		}
> +		mutex_unlock(&adapter->vc_buf_lock);
> +		kfree(ptype_info);
> +	}
> +	kfree(get_ptype_info);
> +
> +	return 0;
> +
> +ptype_rel:
> +	kfree(ptype_info);
> +get_ptype_rel:
> +	kfree(get_ptype_info);
> +	mutex_unlock(&adapter->vc_buf_lock);
> +
> +	return err;

this function will benefit from single exit patch

> +}
> +
>   /**
>    * idpf_find_ctlq - Given a type and id, find ctlq info
>    * @hw: hardware struct
> @@ -1394,3 +1752,142 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>   
>   	return le32_to_cpu(vport_msg->vport_id);
>   }
> +
> +/**
> + * idpf_add_del_mac_filters - Add/del mac filters
> + * @vport: virtual port data structure
> + * @add: Add or delete flag
> + * @async: Don't wait for return message
> + *
> + * Returns 0 on success, error on failure.
> + **/
> +int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async)
> +{
> +	struct idpf_vport_user_config_data *user_config;
> +	struct virtchnl2_mac_addr_list *ma_list = NULL;
> +	struct idpf_adapter *adapter = vport->adapter;
> +	struct pci_dev *pdev = adapter->pdev;
> +	enum idpf_vport_vc_state vc, vc_err;
> +	struct virtchnl2_mac_addr *mac_addr;
> +	struct idpf_mac_filter *f, *tmp;
> +	u32 num_msgs, total_filters = 0;
> +	enum idpf_vport_flags mac_flag;
> +	int i = 0, k = 0, err = 0;

it's C11 already, please reduce scope of loop counters

> +	u32 vop;
> +
> +	user_config = &adapter->vport_config[vport->idx]->user_config;
> +	spin_lock_bh(&vport->mac_filter_list_lock);
> +
> +	/* Find the number of newly added filters */
> +	list_for_each_entry(f, &user_config->mac_filter_list, list) {
> +		if (add && f->add)
> +			total_filters++;
> +		else if (!add && f->remove)
> +			total_filters++;
> +	}
> +
> +	if (!total_filters) {
> +		spin_unlock_bh(&vport->mac_filter_list_lock);
> +
> +		return 0;
> +	}
> +
> +	/* Fill all the new filters into virtchannel message */
> +	mac_addr = kcalloc(total_filters, sizeof(struct virtchnl2_mac_addr),
> +			   GFP_ATOMIC);
> +	if (!mac_addr) {
> +		err = -ENOMEM;
> +		spin_unlock_bh(&vport->mac_filter_list_lock);
> +		goto error;
> +	}
> +
> +	list_for_each_entry_safe(f, tmp, &user_config->mac_filter_list, list) {
> +		if (add && f->add) {
> +			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			i++;
> +			f->add = false;
> +			if (i == total_filters)
> +				break;
> +		}
> +		if (!add && f->remove) {
> +			ether_addr_copy(mac_addr[i].addr, f->macaddr);
> +			i++;
> +			f->remove = false;
> +			if (i == total_filters)
> +				break;
> +		}
> +	}
> +
> +	spin_unlock_bh(&vport->mac_filter_list_lock);
> +
> +	if (add) {
> +		vop = VIRTCHNL2_OP_ADD_MAC_ADDR;
> +		vc = IDPF_VC_ADD_MAC_ADDR;
> +		vc_err = IDPF_VC_ADD_MAC_ADDR_ERR;
> +		mac_flag = IDPF_VPORT_ADD_MAC_REQ;
> +	} else {
> +		vop = VIRTCHNL2_OP_DEL_MAC_ADDR;
> +		vc = IDPF_VC_DEL_MAC_ADDR;
> +		vc_err = IDPF_VC_DEL_MAC_ADDR_ERR;
> +		mac_flag = IDPF_VPORT_DEL_MAC_REQ;
> +	}
> +
> +	/* Chunk up the filters into multiple messages to avoid
> +	 * sending a control queue message buffer that is too large
> +	 */
> +	num_msgs = DIV_ROUND_UP(total_filters, IDPF_NUM_FILTERS_PER_MSG);
> +
> +	if (!async)
> +		mutex_lock(&vport->vc_buf_lock);
> +
> +	for (i = 0, k = 0; i < num_msgs; i++) {
> +		u32 entries_size, buf_size, num_entries;
> +
> +		num_entries = min_t(u32, total_filters, IDPF_NUM_FILTERS_PER_MSG);
> +		entries_size = sizeof(struct virtchnl2_mac_addr) * num_entries;
> +		buf_size = struct_size(ma_list, mac_addr_list, num_entries);
> +
> +		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
> +			kfree(ma_list);
> +			ma_list = kzalloc(buf_size, GFP_ATOMIC);
> +			if (!ma_list) {
> +				err = -ENOMEM;
> +				goto list_prep_error;
> +			}
> +		} else {
> +			memset(ma_list, 0, buf_size);
> +		}
> +
> +		ma_list->vport_id = cpu_to_le32(vport->vport_id);
> +		ma_list->num_mac_addr = cpu_to_le16(num_entries);
> +		memcpy(ma_list->mac_addr_list, &mac_addr[k], entries_size);
> +
> +		if (async)
> +			set_bit(mac_flag, vport->flags);
> +
> +		err = idpf_send_mb_msg(adapter, vop, buf_size, (u8 *)ma_list);
> +		if (err)
> +			goto mbx_error;
> +
> +		if (!async) {
> +			err = idpf_wait_for_event(adapter, vport, vc, vc_err);
> +			if (err)
> +				goto mbx_error;
> +		}
> +
> +		k += num_entries;
> +		total_filters -= num_entries;
> +	}
> +
> +mbx_error:
> +	if (!async)
> +		mutex_unlock(&vport->vc_buf_lock);
> +	kfree(ma_list);
> +list_prep_error:
> +	kfree(mac_addr);
> +error:
> +	if (err)
> +		dev_err(&pdev->dev, "Failed to add or del mac filters %d", err);
> +
> +	return err;
> +}

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
