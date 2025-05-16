Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C06AB9A0D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 12:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D21C2417E8;
	Fri, 16 May 2025 10:24:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_Qtl1PP4zQZ; Fri, 16 May 2025 10:24:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A99A417E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747391063;
	bh=2NfENYMqc7erhfplUKOXKZt2R42bbYchO124LsyURaY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fk3qbhZtNaI/D6RoCAld2gfQ0jRZuZY/priiTGohDQWBJQUyyzMgrJINr7m3bs2dC
	 /djotdk0z8sCZeXLsHl1phddmrA+IuRSWKGV/5IlUGk3dWOBIaFZYAaUuLJA2B5tYx
	 dlEN/Ia9yoqANzSqJfqNtESvE65Uk1zzpSBTe2/QmpZZBbjiYUg4LA2SIOcvOe1DJU
	 f7oSgoUMAANBJUr14xDq+7mqGz2d57Tr4cCMuK/HNCjQKQvN0JqcIflFRPi2tksYYp
	 I6EbqNbceP6pv44DwUQGAgYcpUig62h6MOPrM7RARGIUJG/OcU1pxw517vcaGa1l7T
	 dUFvp7CcVxPJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A99A417E5;
	Fri, 16 May 2025 10:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 884A01AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 10:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78FA4417E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 10:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9Rtq3p3AP5N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 10:24:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B2386417ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2386417ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2386417ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 10:24:20 +0000 (UTC)
X-CSE-ConnectionGUID: mgPx6cW/Rtmr7PBFPmTf1Q==
X-CSE-MsgGUID: 1z7uvNESS4mDVb1+uYIIRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49427410"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49427410"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 03:24:20 -0700
X-CSE-ConnectionGUID: 7oikdu23Qa2iq3D4mOWExA==
X-CSE-MsgGUID: Y1FV4baVS5CHfH6+o6dH5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143543222"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 03:24:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 03:24:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 03:24:19 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 03:24:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sq8sgVYjny3hxVii1SpZjqNS5L8isB6woYMATfVVzo4odwwNrEDSvDlXknMfFUals8rv+o7+t4CuxiZZaPHFtAo3d3Xx4lgh/1jVZWRc/Kip5hNU+R0pcwSvrB0TXH608l9VxfAcHIA5/Zi88gIfEP58ipXhzq4h3+jK47aLZDbxbs9STLRN+PtM/6vPyECfKVwKJ3qwjXq6hfxTSO5i3l4NJ07jD1Kz7yZZFdenou9a3FV3+xuQExo/rDScBkP8rZxRm2Su3mg83EurrNQnX3YskihuNrHx2bC4Ac6scFAyrvV1qCU18E64frVzwYn2/b7+Pv+GK41ud5GmorTBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2NfENYMqc7erhfplUKOXKZt2R42bbYchO124LsyURaY=;
 b=jys6Cy3aYqXy05ZUTHHkI2w2PU3cN2znZ7vhNSzEPITgcJoAeOy01S8H4/YC28NqLJeDlpHslX9HwtGRqXCWPScSsEA1LN2HJhCIMh+r5+1oZuLxTVJxXtwEQwIuFSwutDFYTpzKqEntqe+JftG6q3OALAhzkR/q9sMNMv+EdX/7+/M+g+WebISvXKqXFCCWCoYoetj/i0ZIQGNg9uQ16AQF82Zce/oINqYEoqAvy4ANlVFMLoyngfl+ZvdU3ltvU3xVmehE4/LIEUnZ1ZtmORTe5syOI6SZDYWaVmRXnJaA3MNGTWj/37DcFn3fvvs5CUzI15oPQ2ijr19ubxyEaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 SA3PR11MB8022.namprd11.prod.outlook.com (2603:10b6:806:2fe::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Fri, 16 May
 2025 10:24:16 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Fri, 16 May 2025
 10:24:15 +0000
Date: Fri, 16 May 2025 12:24:04 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <przemyslaw.kitszel@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <netdev@vger.kernel.org>, <kernel-team@cloudflare.com>
Message-ID: <aCcSRKNE4pwsTCro@localhost.localdomain>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <1f726c87-c39e-4818-bc92-295ec1acf106@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1f726c87-c39e-4818-bc92-295ec1acf106@cloudflare.com>
X-ClientProxiedBy: VI1P191CA0010.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::18) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|SA3PR11MB8022:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f2c754b-30c4-424b-9b19-08dd9463cf2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LC9mTiD0VmtTL5NiVkg3ilyG6659HwAvtpbq+LA8ITMsaf0M7YGnfVTaiPqe?=
 =?us-ascii?Q?nGRH2SdQsduUomF0mWgu+6BIoX/MvvEoTkqoxUffIGppAKWu/d4rBZKB+L1T?=
 =?us-ascii?Q?HGA1crlTWj33Vs4Mpg+XHT6OOR/vka/3cJ6Ll0KHwSWMvc93l/PJ3N+nfjx4?=
 =?us-ascii?Q?gRxjvU+F+A0dsGstJYxpMugc7TgAGARWsyybCwORR5TNOW2zheT3BIPak2EO?=
 =?us-ascii?Q?u3iSLh5zLuTvxG3sIFqR7pGSfyQ/1A49cvUOfr8n02h1gfMrVlpZDuJwYzvr?=
 =?us-ascii?Q?js9D4ddU+0iwGXJuff7vb1cXzRr0d8v2Jnrz52v1pXKMCzh+9OPI1/aYrmFF?=
 =?us-ascii?Q?lsD9zwwn6RH6xsKXgaBcNnat9s5YSZqZEjNwoy+VoHhr+8zMUz6ioZsE4u7t?=
 =?us-ascii?Q?KBmEP4eftC13ZXqXNe2JCio9xThQ/T/WkHMwCFS3Id9YTJteMX7gtVHahFvd?=
 =?us-ascii?Q?V/0IoPJwZXPAmIm6NBHgBuH4sF30HHf0464mtchiRb7EWBa+M5roV8B+HlNM?=
 =?us-ascii?Q?1lHsDHuovjPehQ0316dB3G5r57ZVrWcMabYsHBzCBgfQfjq7sFg21f70AdIY?=
 =?us-ascii?Q?MeYdRkSp1sHY97sbDWlCUaNPcE8Vhvs3ATu/cN1WdkZ38TWOu+m6KManXiAq?=
 =?us-ascii?Q?sgbRA7FVIrGhHpR5rDrmFOSg1gZVqMNGPSndXV1CiRIQMP7h5IV6vHvLNW4B?=
 =?us-ascii?Q?Hp1hV/JIYN3kHLUntAUjqf+ZjRcyJQoyy6eO87CAE5tfhwteCvZRBLW/hSSA?=
 =?us-ascii?Q?PykBe7Nagb7+JSlHP4TJ/DG2KQ7FbyXs+eqB0cXB80fWUkX0gTjdEiWMAJ+C?=
 =?us-ascii?Q?qpsjlVOmnP0he4NzEdyiCYjnwasqNKTbYj6355PHtU75qhjiIM8ItkMg2/pI?=
 =?us-ascii?Q?LpaM4bf8NUxNXlbQSBCkYqaIB/lHNDaleKfGonTLvCx1BrJwsm6TmGlywKkc?=
 =?us-ascii?Q?syerH5PKsP86lyhW7IWKYJNUJ9qWWPsldYfMU2jBbGLY1WNAtr2ofjRXNw05?=
 =?us-ascii?Q?GTSXdcF1kuOX4IKEyLLs9pHJOW0zN26BkQvR3QkPyVtIKt9seMGcR+43ech1?=
 =?us-ascii?Q?XBi7EEzkTHHzq9lEdeWJrP1Y3on8LULbn+gUpeBqPqPm/kx9rGFapZsrRW2U?=
 =?us-ascii?Q?zVCMBN3UrV/Q6yzb5pHdaWRBsuLBT/vTVOc7p2TZHmxBjdgamNDYWyA93CPh?=
 =?us-ascii?Q?Aq1jVWhtFyXvcpR+2TsBVw6NBQKZxj3WEctazBVWDzv60be3Gx4i3RIlxSFH?=
 =?us-ascii?Q?Reu3+zFcOhd98DrVVGj9+/o9+2miZrpcPU+aFL3Mb+dhgzYP4pz2mke8TOGp?=
 =?us-ascii?Q?xEKys/WbGDxEsy6uA2AfgfFTNARnnpz3vgIE5mHvgCpcd8jCJvXvviEoTSjO?=
 =?us-ascii?Q?2fio91fdM+/8JNiVtoChiUJkGGLzd/LgHiPLaSJuz2dHnXT10w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vF1Ie3ywLR7LFOKJxmgGv4N9bVVdmiwtdqzlwuIT8u0CeINvkL/x4A9mZIGs?=
 =?us-ascii?Q?3DxXXUP/5t0gd6COf+e7GKcL6nub07/0OTlO2RuBiSBByATnp3oOsh1O27xO?=
 =?us-ascii?Q?vb3gOCLK7dsiNRvFmoxSzp3Rodm6C31K12DWuPLruGgs3n2OVk2CyVYDsvWe?=
 =?us-ascii?Q?v3ZsKBvcGFhUe9xR16+V3i9aPey7tDty3seaAHfq5A+ImS2/cc7IVPZhN1fg?=
 =?us-ascii?Q?LR7GvpVk+TxelIwzjWTZWweWiPCRG7J0aL72qYisYjoTbN4FHGK1/2pzs1+W?=
 =?us-ascii?Q?NnDJVTDqnQFt2em5x4JCUY9DoeuLzJreqmUgGry6TVAxZOLeDlNmQjOmhiA2?=
 =?us-ascii?Q?xUQ781ixFiw29wCok/Sby90eF8QkpA2wEZ1qda24xCw0hWBdWueARgTqEmVI?=
 =?us-ascii?Q?g+Fr2GcEb98yNWlZt5t08F4+xk0vnRmwzYKj02QlaAy8qVI3TJvbSBiyH9Hm?=
 =?us-ascii?Q?RjmypBFix9IluvVg1WV7vvsF1navobg9XNML0QA6ejv+nqzmkotjrrOGXive?=
 =?us-ascii?Q?5wWFIg7LZ/jyww8QZJBM0KVlNNREj7H2p1IFA1MK9tUDLVzgO3IdJVsP/FaI?=
 =?us-ascii?Q?IRbP+DLr/L1u9MxsCLByCOayjxU7RJ9LtVjYxBuYCl37b/ANL3GC4kIXwi4J?=
 =?us-ascii?Q?1I4TeeQAcg9+xKmqUMKsIyGssl3YIk+1GOVXzcmhsvrogY57GrCa3yqQTJVU?=
 =?us-ascii?Q?5m81AICnzDjwXSkqM1EEICDANj3BaKgeABmp/4A8pw9ubXPgXbXDd2P3qUHU?=
 =?us-ascii?Q?v6cT1CzPGaYOMZ3d1AZeqT+qxxhQkLw60R5PODIAb/SNydFWtnn+bSVOujfN?=
 =?us-ascii?Q?Y8vittVEqkWmM2qssvW5F54N2OrzSuEfwpO3sM6ADo4SNRaTyWl6rAB8Ooit?=
 =?us-ascii?Q?2+hKg1hMPBL5YIW2VCSeUF4EfgcGlexh296akW7wDg9J5Gx92lcmoidSLEzs?=
 =?us-ascii?Q?dv8j/PjR8vZ/wpc3rvK/Q3IrWYK0IHcHpGbQWFku8Sg3CMC0dtEo2/TBBt6/?=
 =?us-ascii?Q?2zEz8CsW1ekLVuM5Hq9iBwjuEP9o+URfcuX2USFY6cAarTscaVxKzzh4Nc1h?=
 =?us-ascii?Q?3ZIqk9UebnFYZCob2q9egyiI3WU9vGSzYbgq/3PcIt9istwtrEsPVS6KJvFa?=
 =?us-ascii?Q?QvGgzmlX9LhMZ4yjc0QYKPIso1POh0w1E+Bao+307+XfugFxlCr3MNyHY2Dw?=
 =?us-ascii?Q?BhcPDTaMCPj2wvV2TZ2rNEayK/v12f/M+fEiWy4QRod1eoxk4KqCZo/WHY52?=
 =?us-ascii?Q?HLCO7uEUzykTndek9M7ggdwGHnyj6sXO0aU5/UI6+B+H5+hV0F9nqs6hu0cO?=
 =?us-ascii?Q?6BrlBTC7KcV5JMjO0XN21v1GAKOqHyHiqMtIymPYntZkhy7jMngAdP4wwewo?=
 =?us-ascii?Q?Ro1fG3gyCKAQNHh5x3BbtcgW6B6x7OTwwMApGcwUhULtSfn+O1lLIYObB4w2?=
 =?us-ascii?Q?auzIOE8QoeqMyLj0t1tzIiA9ov3vmnAQdHbhscvuxpvlrbx7bb82s5CjRG9D?=
 =?us-ascii?Q?YzFifC7w07vJJ2KsLjpATHEpoN+JJEXwuDHvQNJ382eMDT8ioUtNrwgnJQTc?=
 =?us-ascii?Q?EloTObW8jnVItabRGYSLsqrZmBcqq6FW5hl4i0VRbE6bgmSJP52wdXoJoe7x?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2c754b-30c4-424b-9b19-08dd9463cf2d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 10:24:15.8125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lUrT+0YsO6GcQq21bW3fTc2VGksk5tQXG6A5iixivBJT8KG93kJ2ZeY5+A1Q3PtVT5ACc1g8qHYenGZ5alD9nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747391060; x=1778927060;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jA70LXvliNvwdmzrgl/2FPPoFFCBzal2MJOWkC3pDK4=;
 b=X8D4VlBfbCv6iOsDP3OyGSPR+Lp8jaAbExtHoRsdd1aZW2JvY0BlvZpR
 DoFW9+B3SxGX3BqPfFIWIL1f7UQ+avSrLW6rzjpQzAHdiRaa3r3U2zK2h
 hQsLlCDH7d8fgKGby20lARa1uGfJz+wNGS75nwUND9vA24LMZS6pbS7Jj
 vusdf0tOvcnmoDGKu5IG+g+BqZwO0zUU/H2FDEW0eg7HE+Pj6EPXtTYxn
 6Xde36DawHqxUKzJnvSeN+pEscwL1SxnnEY05Q6McjvRinXPeEGvRDf8P
 vhNmJwi6C9avkCW9rRaQQSAsW7tXypZ71CmfOZZB+I/3GPFxyrl2xBc6s
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X8D4VlBf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 0/3] Fix XDP loading on
 machines with many CPUs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

On Thu, May 15, 2025 at 03:43:24PM -0700, Jesse Brandeburg wrote:
> On 5/13/25 3:55 AM, Michal Kubiak wrote:
> > Hi,
> > 
> > Some of our customers have reported a crash problem when trying to load
> > the XDP program on machines with a large number of CPU cores. After
> > extensive debugging, it became clear that the root cause of the problem
> > lies in the Tx scheduler implementation, which does not seem to be able
> > to handle the creation of a large number of Tx queues (even though this
> > number does not exceed the number of available queues reported by the
> > FW).
> > This series addresses this problem.
> 
> This new v3 series passes all of our tests. Thanks Michal (and Intel) for
> the work on the patch, and thanks to the hardware team here at Cloudflare
> for testing!
> 
> For the series:
> 
> Tested-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> 
> 

Hi Jesse,

I am pleased to know that the issue has been resolved in your environment
as well!
Thank you all for your thorough testing. Please do not hesitate to let me
know if you have any further concerns.

Thanks,
Michal

