Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F404E818410
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 10:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0B2A41B23;
	Tue, 19 Dec 2023 09:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0B2A41B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702976730;
	bh=CRFpKEbsZeJApiN7uLeJOVQOmZ20zaUX0enKE+apdBg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZW3lE4cYfvuGhxV9no7c/gaLgYNaXGfoHnTdqwLUa3bA87MMIYfQS+Uo1oB7IzxNw
	 GNsl3bVn82HP8XLxHd7koH1d8NfUTmu1T3wjEUHVr2vC38+lb73hnKVjFfNnGfOsMC
	 gj2hAUdCsK6KU72ubYEPaS8CthXWkpVdeQBG34UH8sLrCYKakKcFZY/VvTE2V/2qIn
	 59eD8iLEuuuC7+x+EiowSL5G8a5ht07KpY6xnQom2Ww3TSntzOtCNcKB/pxUAd6xd0
	 bOsrpGk/UFZaq1i0jBxco6Hc8Mlpz06echnDtB6brHi/Bh44IBYFe2jyNfkxs2NEwQ
	 lgOExXywsYzBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PbS4mCJKaUAA; Tue, 19 Dec 2023 09:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49A8C41BA5;
	Tue, 19 Dec 2023 09:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49A8C41BA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEC291BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 09:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C22F260E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 09:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C22F260E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfgTuoyWRasd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 09:05:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1D2D608D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 09:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1D2D608D8
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="394505929"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="394505929"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 01:05:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="775898203"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="775898203"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 01:05:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 01:05:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 01:05:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 01:05:19 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 01:05:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a0WtA3uRWJ8jBbwSOsIPq9VrHu8GFgezpzIMM84fH6dlNXai8Tw+rB1upuAuRPsgdqZ0FnYiRWBwGRkifRn0G6WecDfX0aTB14drFC+ZkQIyrPwR3uaBqb8CnQQhXYGPv2r8f8/kKE9um36HkVPmXFggi3+kNFlV6jl9+HYULnfQqIBVx78tlmyavlB6RpXXwrc3XgNK4TjvyithzFZJVLbUi7cqJsQBXiaFGkqpBSwFxBXd13iZqqWU6ONaErzJBRu8RkGApTFtzIs9656Xn+aHq/WGGYKQuPYmRamqjwQqZDcn4dv2kpPiX2GsXO2op4ifOEN2rCYnSShccWulGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BREcSzc3MKRVDJ+bC4+dO70XQhKChlREy0u5bKPuhLI=;
 b=nPgiJb/sU3q7DAtd6ZecHapQuVavBAww42YtsVAgrNGGQ7vG3gdKETy7eFj45tebYYmMyOg2Q+/35w79xI18R3WXDcRJ1ZuxfBpuDX4+b5CKRcz0MubZxRdqrqBcmk8gM+j1W6np1cACJducFAY9WhWcI6Br2/t1WDh4ynQ0ex6Nd2Cv9SPGA+7Uw7x3eBN0JEn9U4ePdeN6js4u6q/svGCyVX6DKBn9scTcIiY6ZjK7X+2GQihL/+bx5vRDzSTLpjPDL+BzCPvdvcRCIfwIS27CeQ6fXOmiEkUVBNxXRtxpYOTMFrKyZ8JdK0Ot58KRk+stQLxhyaoGZpMBdrGGZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 09:05:10 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2%4]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 09:05:10 +0000
Message-ID: <978883c1-ffaa-413f-87f9-1956108f0d60@intel.com>
Date: Tue, 19 Dec 2023 10:04:02 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Potapenko <glider@google.com>, Yury Norov <yury.norov@gmail.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
 <20231215084924.40b47a7e@kernel.org>
 <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
 <1eb475bb-d2ba-4cf3-a2ce-36263b61b5ff@intel.com>
 <ZYBr98sd+XzSfy9v@yury-ThinkPad>
 <CAG_fn=XOguL_++vJk2kFQoxu1msLzFBB5sJiD8Jxr4oUZ7qZ7g@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAG_fn=XOguL_++vJk2kFQoxu1msLzFBB5sJiD8Jxr4oUZ7qZ7g@mail.gmail.com>
X-ClientProxiedBy: DUZPR01CA0089.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::12) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY8PR11MB7108:EE_
X-MS-Office365-Filtering-Correlation-Id: b5d9c09c-6949-4f46-2932-08dc00719a19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdvOzQOZck+2QBa7Re8yXQQzxKUb9cNWmiyEJzryT4hv+UZhJade85ci/n6i3d2pF9Av+6IAb/OLOaUeOJGF+jbmylj7XdNFSWJRNe6iExqT5GezzD9AUDf6ZWwTU35+I3lSKEneVbvtykW3tuHcKkUW+IZoj/+uK4Xx7YkFhwadQHwz5ppoO8YmjqblkPk5llKMcLsCL+QRemQ4vhiTugNikRfTm+xbVmHgNk6OkFwRiZUNmrSYEEk4Gd8FcgmyA/Xaod0C+bLfCrQBc61Bk9VQZVD7TQJgZb2dSw8Ox6wWWZCMyYapfYKSagWph2+wRYQbGNH+1mHbZ4D43XB0fXyIHlY17cfVkbG8JXBSqfEMNioSiXc5OXihWARziZWSpd1w4AtnhDAcsCANMoUmSNTjUf/KKUbADNbb9UNsrmnuZlhhRPmL5ZasqzGGZJUYs78jvwYdlOiYIY/7S4L6quAZu2frNmOg4qTB1b7glu/8HrZViIZVj5swiPNumYx6Y+kYgb2XPGXtBXdqO0+LdWWtgOaXyAGkqbSV6Ym3S/BBkJ0mqMdh5d6kAma5yqpNvOYw50thVUugTIcEu5nRf+eAZLZo+expOydckOLi/WzaykdSqK51AcVdfCifWi2ONK7C+BP4I0AF6x5kAWiHvA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(8676002)(5660300002)(2906002)(38100700002)(4326008)(8936002)(6506007)(7416002)(6512007)(6666004)(53546011)(316002)(83380400001)(66556008)(110136005)(66946007)(54906003)(66476007)(478600001)(82960400001)(41300700001)(6486002)(966005)(31686004)(26005)(2616005)(86362001)(31696002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFE1SGMrajloT2JWcFBvKzduM2pEYkt6SXRacWducFdOZWFSbGpyNjJTc1pO?=
 =?utf-8?B?eVBxKytKeWx4eHNBS2thS1NvOUNaY001L2R1bFpYdUg4R3BBR25rRWx2TExQ?=
 =?utf-8?B?VXVEckZ3MW1iS0ZUbFNIYVF0cUxZaHJIS3dzcWY1YWNmcUtFSWUrdnhObENq?=
 =?utf-8?B?aUtyL2tzZUR5Mjh5Ulo3SkhmYVU5QWNnbkFSeWtxVitoZEtxK0lROGJjSWwr?=
 =?utf-8?B?RFhGZFFUZ1NmTmwxK0RVQ0puckowWkh1N1VJRzlvMG9IcG5oNW54bm9mMU1k?=
 =?utf-8?B?bythNHBTWlEzdzhXa1R2dERXMmV5UGpHR29hSTJacmVVMlYzZlVkL3RpYTd3?=
 =?utf-8?B?LzB3eHgxS2xZUitwcDJVK29RMVRUNmxWRmRxWjVzRlJjdm9hc3JPbFg1enEv?=
 =?utf-8?B?aDNaYkFMdzVMQ2tHUTdmVTVkRTIwQnkzYmoveWVZNElQdnk4cm5XeWJwVWxa?=
 =?utf-8?B?MmM5VWRYUFFmNlpUSjdvVXRBQndNcFU1NTRNcXRMSTZKbkNxZ3ZDM2pTTUZm?=
 =?utf-8?B?RURIRlJ0RlZDVlpMMXRlamV2Vzl2aDg0TjUxcndBTEVLN0hZNE55Wmt5OFpl?=
 =?utf-8?B?MXVNLzVUVGJCOERncGkzSWVxS3h6dFJOZHpIdU1EbllpdEYxQWlQdDMwUkdK?=
 =?utf-8?B?SXB0VkIrS3hNU3JuMXVxMFNSeWFhNjhGS3lvb1pXUzliNFpnZ1NwaGFKT0ts?=
 =?utf-8?B?YUlOVXRGeVA2T3F5UVFheDlDNjd0TjVtOUx6bFl4K1MwQmxJMTE2UW53aDNY?=
 =?utf-8?B?b25qamZta1o0ODRUQVR3Zk1aT242L3BncVE2ZERVajBMVG9SMUdLQVVlNkdC?=
 =?utf-8?B?TVBhQS8wSmd3OHNHMzZydWJjc0VUdnBKL0crREVuZEM0dXZXRHloWDAvaC9y?=
 =?utf-8?B?WmlLSzZ1SGV4WU4vK05iUHlpUG9LdXRRekNFTGRvQzhWV2RONEhNekNVTnhS?=
 =?utf-8?B?bDQ3RHdCREZYRGdSVElOZ3RpdVY1eWNKQWdKRE83VWFYZXpIaWpDSWhOajM2?=
 =?utf-8?B?bnI4QnNnb1JCdmVMZjZwektoYm42a1FnYUZiVzZpVHExTXZmbjdoZFRBeDNk?=
 =?utf-8?B?a0F3MzdKcGJ6Y3JpZGpEZ0FhVTZHL1RCdWJ2dS81SmFUMHd5eFFCRkdYaHFZ?=
 =?utf-8?B?WjlYV1BBVzJaRnppV0l1dEdSeFQwdWp0ZXV5Q3doWW1QcXl1SG5iazg4Snlj?=
 =?utf-8?B?TjkyaVRMMmtIK2drQXpqeituM25EK1VqTUVheXBodUJuQ0FhYUlVY2h4OUph?=
 =?utf-8?B?aDJoVktkMGhZZkhWSlhCSUJmMG16cFFQdjVMS2lxbUZ1ZWNJVHlvNFhXcWR4?=
 =?utf-8?B?SEVOeGQ5aWQ4cW5ZUS9RTmkrNmEwLzVhY1hkK1VyMDhZV0tWUFoxZGV4aXRM?=
 =?utf-8?B?N3RmVnRQVzdwaUFCY0hPc0JiSGpSMnRKdy9IZUJsQkx4SkpkSktqU0NFUVV5?=
 =?utf-8?B?YVl2N0o0Y1JRbk12N01kZUM2TWI2MnRPSVNLZm52QUU2QTB0UHVkWGVVQS8y?=
 =?utf-8?B?Q3lBWlMvVmR6b2taeHQvZCtsLzliRTlGZmpIRTljWUpGc3p4TkM5VE5VenRz?=
 =?utf-8?B?ZmhnSWorRi9aYmJTLzA5QWNsenNabEtsK3NZRHVUK3lWU2t0MzlHTlhadTBt?=
 =?utf-8?B?emdHMzNVUG9La0Y5N3ZFdERmSFZQN1ZOSEE4dWFzVWJXenpUQmViUmdPSEdX?=
 =?utf-8?B?aERLblU0NG5kcFdtQWFVN012RWE5Y3pHVWZhS1dlKzlpNHViV2ZxV2hkUlk3?=
 =?utf-8?B?VE5uakE1MTZBTUoxd1VtWC9PbjY0Y1lVajV0K04zN0xxVVRoSU41U094MUhp?=
 =?utf-8?B?a3pIZG95NUthcW51MUJ4aW9obFdxVk94STNaNTZWRmFNbDQ3SzM0TEExZWFR?=
 =?utf-8?B?cE02eVhSQUc1cVBwM21vckpmc2tlMUVJRS9vM2l5Q1NQQXV5WXBGeG9JQ01Z?=
 =?utf-8?B?UnUxUHdmNWg2OFBHL2RKR3VUTGtzck9PNWNkZWZuYmRFY29FQjZEa2NGZkd5?=
 =?utf-8?B?RG9XUnZxTEcrVFg2YnJLUWlOWTNTREJCYmR3bTNiNU5uNG5oRmNCVlhCTCth?=
 =?utf-8?B?L3J4b1hHNXNlMVVlVUdOU0dldnRqbWRhVkdaK2UxaEtGTTgyOWdUNEJyZE51?=
 =?utf-8?B?dVVWMWVqYVgvbWdXSnk2VUwwZ0VxY0t5dnVORWs0R0N0WFpEQ2hmeSs1SzZa?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d9c09c-6949-4f46-2932-08dc00719a19
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 09:05:09.9569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zEYlSeaUQd+/9ViNmTgMDqeVZGKRftBrjtSU9DLD/cqgeDc24po1WHxI7XtbIWv0xFpzL7cKC70s3lJJb+1bnjbL+Xy/i97P9FZnb71bLxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702976722; x=1734512722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3OHQqVQhvfKq6mDFNnKV423VfWo/hCaRbxBex1Ge2Ck=;
 b=igkl+lfdE2C9byKonmghLVNufUAHYEu+V8j6V1hEAsPilIx/qrgH5jVW
 WNUANoZzDrgQVYNjMQ7zsmR1N3yDDIvsShV7XT/C1E8+C0yxGH2b8/dGe
 0lDEvZkYF97lI+sVMWTQ7Wqk/ii1i5NP0JO/2d+i7/Ui31OpZuS7ocNNm
 eK0/Ux4UYE+PE3UlpBI1qS5xkSZObozSVjrq5a8JaMu542nTrYCoQDTGl
 2p4d0Cr1jfuADW46LB4kGMHp75smdVd6n4nkeg9I6wLLYE1lUNa/vEC59
 Ame/hvFtBYGEqCIdmVJ/YZ4sdWWs9rg/CBKM7FhMpDwEp5ullqFTd48xW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=igkl+lfd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIFBvdGFwZW5rbyA8Z2xpZGVyQGdvb2dsZS5jb20+CkRhdGU6IE1vbiwg
MTggRGVjIDIwMjMgMTc6MTY6MDkgKzAxMDAKCj4gT24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgNDo1
N+KAr1BNIFl1cnkgTm9yb3YgPHl1cnkubm9yb3ZAZ21haWwuY29tPiB3cm90ZToKPj4KPj4gKyBB
bGV4YW5kZXIgUG90YXBlbmtvCj4+Cj4+IE9uIE1vbiwgRGVjIDE4LCAyMDIzIGF0IDAxOjQ3OjAx
UE0gKzAxMDAsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgoKWy4uLl0KCj4+PiBIZXkgWXVyeSwK
Pj4+Cj4+PiBHaXZlbiB0aGF0IFBGQ1Agd2lsbCBiZSByZXNlbnQgaW4gdGhlIG5leHQgd2luZG93
Li4uCj4+Pgo+Pj4gWW91ciAiYm95cyIgdHJlZSBpcyBpbiBmYWN0IHNlbGYtY29udGFpbmVkIC0t
IHRob3NlIGFyZSBtb3N0bHkKPj4+IG9wdGltaXphdGlvbnMgYW5kIGNsZWFudXBzLCBhbmQgZm9y
IHRoZSBuZXcgQVBJIC0tIGJpdG1hcF97cmVhZCx3cml0ZX0oKQo+Pj4gLS0gaXQgaGFzIGludGVy
bmFsIHVzZXJzIChhZnRlciAiYml0bWFwOiBtYWtlIGJpdG1hcF97Z2V0LHNldH1fdmFsdWU4KCkK
Pj4+IHVzZSBiaXRtYXBfe3JlYWQsd3JpdGV9KCkiKS4gSU9XLCBJIGRvbid0IHNlZSBhIHJlYXNv
biBmb3Igbm90IG1lcmdpbmcKPj4+IGl0IGludG8geW91ciBtYWluIGZvci1uZXh0IHRyZWUgKHRo
aXMgd2VlayA6cCkuCj4+PiBXaGF0IGRvIHlvdSB0aGluaz8KPj4KPj4gSSB0aGluayB0aGF0IHRo
ZXJlJ3MgYWxyZWFkeSBlbm91Z2ggbWVzcyB3aXRoIHRoaXMgcGF0Y2guIEFsZXhhbmRlcgo+PiBz
dWJtaXR0ZWQgbmV3IHZlcnNpb24gb2YgaGlzIE1URSBzZXJpZXMgdG9nZXRoZXIgd2l0aCB0aGUg
cGF0Y2guCj4gCj4gWWVhaCwgc29ycnkgYWJvdXQgdGhhdC4gQmVjYXVzZSB0aGUgTVRFIHBhcnQg
b2YgdGhlIHBhdGNoZXMgd2FzIHN0aWxsCj4gYXdhaXRpbmcgcmV2aWV3LCBJIHRob3VnaHQgaXQg
d291bGQgYmUgYmV0dGVyIHRvIGxhbmQgdGhlIGJpdG1hcCBBUEkKPiBzZXBhcmF0ZWx5LCBidXQg
YXMgeW91IHBvaW50ZWQgb3V0IHRoZXJlIHNob3VsZCBiZSBhdCBsZWFzdCBvbmUgdXNlcgo+IGZv
ciBpdCwgd2hpY2ggaXQgd291bGRuJ3QgaGF2ZSBpbiB0aGF0IGNhc2UuCj4gCj4gSSBkb24ndCBo
YXZlIGEgc3Ryb25nIHByZWZlcmVuY2UgYWJvdXQgd2hldGhlciB0byBzdWJtaXQgdGhlIHBhdGNo
ZXMKPiBiZWZvcmUgb3IgYWZ0ZXIgdGhlIGVuZCBvZiB5ZWFyIC0gaW4gZmFjdCBJIGRvbid0IHRo
aW5rIHRoZXkgYXJlCj4gdXJnZW50IGVub3VnaCwgYW5kIHdlJ2QgYmV0dGVyIHBvc3Rwb25lIHRo
ZW0gdGlsbCBKYW51YXJ5Lgo+IAo+IFNvIHVubGVzcyBBbGV4YW5kZXIgaGFzIHVyZ2VudCBmaXhl
cyBkZXBlbmRpbmcgb24gbXkgYml0bWFwIHBhdGNoZXMsCj4gSSdkIHN1Z2dlc3Qgd2FpdGluZyB0
aWxsIHRoZXkgYXJlIHRha2VuIHZpYSB0aGUgYXJtNjQgdHJlZS4KCk5vLCBub3RoaW5nIHVyZ2Vu
dC4gU291bmRzIGdvb2QsIG5vIG5lZWQgdG8gcnVzaCBhdCB0aGUgZW5kIG9mIHRoZSBkZXYKY3lj
bGUuCgo+IAo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL1pYdGNpYXhUS0ZCaXVpJTJG
WEB5dXJ5LVRoaW5rUGFkL1QvCj4+Cj4+IE5vdyB5b3UncmUgYXNraW5nIG1lIHRvIG1lcmdlIGl0
IHNlcGFyYXRlbHkuIEkgZG9uJ3Qgd2FudCB0byB1bmRlcmN1dAo+PiBhcm02NCBmb2xrcy4KPj4K
Pj4gQ2FuIHlvdSBndXlzIGRlY2lkZSB3aGF0IHlvdSB3YW50PyBJZiB5b3Ugd2FudCB0byBtb3Zl
Cj4+IGJpdG1hcF9yZWFkL3dyaXRlKCkgd2l0aCBteSBicmFuY2gsIEkgbmVlZCB0byBzZW5kIGl0
IGluIC1uZXh0IGZvcgo+PiB0ZXN0aW5nIEFTQVAuIEFuZCBmb3IgdGhhdCwgYXMgSSBhbHJlYWR5
IHNhaWQsIEkgbmVlZCBhdCBsZWFzdCBvbmUKPj4gYWN0aXZlIHVzZXIgaW4gY3VycmVudCBrZXJu
ZWwgdHJlZS4gKFllcywgYml0bWFwX2dldF92YWx1ZTgoKSBjb3VudHMuKQo+Pgo+PiBJZiB5b3Ug
d2FudCB0byBtb3ZlIGl0IHRoaXMgd2F5LCBwbGVhc2UgcmVzZW5kIGFsbCB0aGUgcGF0Y2hlcwo+
PiB0b2dldGhlci4KClsuLi5dCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
