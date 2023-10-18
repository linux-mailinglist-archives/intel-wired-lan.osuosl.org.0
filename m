Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 107257CE9F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 23:29:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 075DC831F1;
	Wed, 18 Oct 2023 21:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 075DC831F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697664557;
	bh=wY80Dsf07XVNmE5oCfLMg12XqZTOiUry0nuK5gXTtAk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CTRno7SlbGGq6Jht7ayod1Ds5WJl4MA+fF6HmFgMv3kBdwEJlOm5xyjcjRWMJsOZA
	 kigNt500jTff7PA8ceTEZG5TtH4m/gnqnW6bK4ytUDh+2YYC8/JRSHsoLV5/kgACnL
	 xZujdA3ckFU9/n+fSG4uoYSDNtnrR+rPJ10Isp7646nMqLBAKmN4hk2mz5t6PoOW8i
	 PO6wxZIBhTaY6Rd45wwyK4rCqxdliMxdTarRp1op/dZWUuBYyNw/U00MKLgdM6SOeB
	 6B/Khuuq3gXnjzNVYdOKoUUEGLg0ylUcbSo0uwjz0oOkOyg2vhqmwnDWYrDjtcAvZs
	 ObN3NbblNrZYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7TZwrUHCZ0a; Wed, 18 Oct 2023 21:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BF39831EF;
	Wed, 18 Oct 2023 21:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BF39831EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 768481BF39F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:29:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CE60831EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:29:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CE60831EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4-KSH1WU_jA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 21:29:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9866C83443
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9866C83443
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="4707591"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="4707591"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 14:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1003957479"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="1003957479"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 14:28:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 14:28:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 14:28:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 14:28:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 14:28:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldWqyEueWkY8GOv3ojrQeGF0xtth9HNUay+davxh1QuesnkATtTn00vs6VFOBpLv2FJ/s5rexllD0YFHyveNwcvJ56WP5Ib16TJLHgz0mArTOTE+10rWfNqcrbMhxzrFFIga2Miomo1NoHj2btjRtarzqsbSktk8m+G6eDu69BJcwsehfRE2u1c3YdUHh+UIMhzr8J7cBfxc0VvECmqJ9tm0/36dJv7Dom0/xbb21Ht7IqZAUL0mgl28ooweoIIXFEo9rOqkN1SwVATqZEdQdnzazqOS9XyGyL9dJaBvsjetWEd7Ow6KcRTh7VTdWPOgZPVTxRQf1UI1VehPT5CH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AcTWbPDOJkybGdaqgKlex/suzyD9GVVNimoJQiR940Q=;
 b=cW+lM0SHs3TzAwJWfX5x9cgIVh2eAM9M8/lWic8VLearPK4uOvnJrbRfR+tNbfYJe9WIM1VRklY2eWxh8wAjujBtI4ak1KfswBEwYa5yRFZjZotuaDmTmzAO3+J/tILHp4874iBM6qOs1Wy2hoz3mTP+96pxn4Z8AWREprjMh0N0+bPDSRJGK31De1BharsVTkfy773hSQwLnng3n7PAvhmROaAnSOZDPo0TyNAQZRzbylag09vR1yzcLxpvL7qpXBgKvHGg+bJ9PZ4hl4XrCwc7+Ou2rTmXsJihIiW+xgOT6Tz/pzWdSzEZy/qk7BCMKxM80hMYLgEtJCg5wzPgIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 21:28:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 21:28:53 +0000
Message-ID: <acf0b2db-c254-4537-97d3-14cce1ad4e39@intel.com>
Date: Wed, 18 Oct 2023 14:28:51 -0700
User-Agent: Mozilla Thunderbird
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231018123558.552453-1-ivecera@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231018123558.552453-1-ivecera@redhat.com>
X-ClientProxiedBy: MW2PR16CA0061.namprd16.prod.outlook.com
 (2603:10b6:907:1::38) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: 007632fd-9c45-4ff1-bf19-08dbd0213a42
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w+cAGuD5Q7Bn5NkCR/wJwFIEU3ZBGpQm4oZFNoScT5MYgJJVZS/sqlzxnL/WFek4cW/7ky9CW65wfyHYMxF0A55+u3a4jbF26TIz8G7IO36KqqWMJM/XBkv5b4ocuNd1SXGLpZmt6f7YAyFj85RNyS+ms6tirnTfLKLgR2fyUGetIkV5xZzmrySl0NUGznN6G3a6uCPQikkdgpmnyFoNVuVMU2f+g+phPM7xyNRISmglsLGlA7J2+nfeYxdQo3wLlz3dQsqOy8+3yPcN4brrxNBf07WunA+gJm8+TmFS1+nX6WTqeTIDiCr2rUhoRPCmfmooKLGWIb0KTLnJ9hXF/un7xhnzFXRmU4mycWxnHCPimEORMogH3gW5Sg38GTlrJ1+yBcSfig9mjBCtbUY8AyouKsmG0MDEpyDN9Ax8u1ARRqJBSPDBvmk+WbCnCaHJtJ6IXH3/HVv3HAppB2p434YeMwr0WNPoUEECDj1ITnnsdWhBVm8Eyt9SNObQa5MkOvLsDz9Q9SL8M6Y/eIXzQyHGwXRtj2F/8KdZ4T1VCiEdEjuMePCuwEwLusbCsSRafXr5c40DoVeAIm6ikJXT/Qr2GD6sgJl+bfEMA8xt731agEVQwKfUeA0BCt9kb4yV8iYPhQx6WEHPNqsc8I7cwg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39860400002)(346002)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(31686004)(54906003)(316002)(66946007)(478600001)(6486002)(66556008)(66476007)(82960400001)(83380400001)(5660300002)(38100700002)(6512007)(53546011)(6506007)(31696002)(36756003)(86362001)(2616005)(26005)(4326008)(7416002)(8936002)(41300700001)(8676002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2krT21tcnRuLy96d3ZlaWVkaXU5cStXaWRsSnd3S0lQMm5tR0o1WDh0YXA1?=
 =?utf-8?B?aDZzSGdmL2hVNGsvMldPQ1RjOC9pMUpYb1RFWVBvS2lKQkt2a0s0Qk0ydnF1?=
 =?utf-8?B?NlpubVYrNkVCWXMyQ2wxNVVFV0xpNmtjb2d4aGtwd0ZhSFowMXJVWDdYQzhI?=
 =?utf-8?B?SXR1WE10SkU5cWpRZTBqWmxUc3NBdC9WOGlsRGU1ei9XalkzVm9xOVgvd2hC?=
 =?utf-8?B?MUs3VGVWNjBCcXk2SFU5VkxmVHNlazg0TkxkQ1dWT2hhMUgxTWZ1OHRnQjU5?=
 =?utf-8?B?L0puZkRvR25GQ0p4M3dNa1gydHJhZitKazJCdTE2VEYzdS9EQWdCellhSi9I?=
 =?utf-8?B?UHpaN1VCY3A5dkJQK2NkWnZxdjZTZWZUOU1Zb2t2UVg4YjI2RnZVZHJrQWZJ?=
 =?utf-8?B?RHZhZXdCaVpmT0VUSDFLWmZldVhBNklYdlE4ZTVIdmE0YjZlNjRIR2hVcThE?=
 =?utf-8?B?NDd6YnRJWnd1N0VHOXcwV2tGU2pPYmNKRm03ZzU3d0FTMFFjU25CREJCQUZN?=
 =?utf-8?B?SmMzbnVOQlJBdFdvUWpVYThsZlZ4bWZqb2NhdERiK1hTWDBUZXFQM0h3bFQ2?=
 =?utf-8?B?aXlwVXFzaWJnbVg1NXNHdDdYaHhIbEsxa2RTeE50aEVORHdZUkc3L0Q1RGJw?=
 =?utf-8?B?eE9vRDM0Nk9XWEd6NVB0ZnlENkV4ZmtPSSt4ckFaVHd5c1cyME9adk5hbXFT?=
 =?utf-8?B?WW9oNlFKd25lc0dZTHVJcDYyMFpHRDlYS3NyTnpGVjM2MklQT1Y0WGVSZjNr?=
 =?utf-8?B?bE50Yy9ZMnpyV3c5Wm1Vdmh0R25XZTRjcVNzc0t6Z0FhRnJCM3pHNnNJMFJV?=
 =?utf-8?B?d3huaDNjWjE3dEFTUFhEcFhPb0tZQm5pUzFtempnYmlrcEd5TFZIakxNNmJB?=
 =?utf-8?B?YjFSSFNVNVdZaWR1TnMzMzY0SFBvSkcxeGNjYW1uS1A5K3hLR2pXWWEwSVV1?=
 =?utf-8?B?NW5BOTU1VEZ3THlUYW1TQVR2czJFSXJwTTduSEMwaVdWTW5lNUxIOFRZOGt0?=
 =?utf-8?B?b29udGtoaDdBWHpDR0d1QXplczhRRkJ4NXlsanRnUCtlb1Q3V0F4Q2srdFRp?=
 =?utf-8?B?dEI0VFZxVE5ucjZzWk9DUWxFcGxITnBjMVFBSm0wZkNNd3hUNWJ3dXNSSHpx?=
 =?utf-8?B?eml5UDVKdlRVeHRyZXhsOXNSZ21EUm9RaXJuRzVqS3p1NmpCOHF2cSt5OHE2?=
 =?utf-8?B?Z3d2aG51OEJoK2x2OVlzRTFtQ1p4cjhONnhncHdnOEowWDFYYWE2SUpyU1FP?=
 =?utf-8?B?K2JzNkhja2hJUm96UWR6L0ErOU5GQmN1UlNReTI3NTlyT2RUVjg5Q3ZXL1JL?=
 =?utf-8?B?cXd0L3o1YlR6bGJ5TjNZT1A4LzFaaGpZZUNpb0Ewb01UdG5QQ2F3bUw5Q1hx?=
 =?utf-8?B?Vk5PM2hHOWtBeVBPRTR3T1o3N3R2czdDMjJ3NkZib2dCZUlZaXhXMkZ4MHhS?=
 =?utf-8?B?blYyT0c5LytJR2FXMWM3b05IeC9NRktMbEFxNUFCbnlMK2Nkb2dmMDBPT3Jv?=
 =?utf-8?B?cHN4RFpnQXdPMXRFbW1YcndadUJ6aDk3a3ZFclJlSnRMVHVQQjZjTGpHMVM2?=
 =?utf-8?B?QWNlU3BiOHZqSEc1TDBvdlR4eFYyRVh3SldNcVdTa0RGT0xZazBIRk9pd2ZT?=
 =?utf-8?B?cjFMeWpQRFoxckpNdkFVdzdhLzBuZ3JDV2toeHd5RE42ZWFHL2YvZUlvK0o5?=
 =?utf-8?B?Rlp6WEg1WkFWanJNZDVHV0tFVFBwT2Qza2Iwb29KK1JzRE9FdWlIRGZodmtk?=
 =?utf-8?B?MEZKcXRXZ1pyNXRhMGt6NEV0bUR0UEJCSmtVRzlpcWUvZTNpdzVSYUIySldO?=
 =?utf-8?B?eW9GSFp4cDJDRGVXTVExaDF1V1JRQXV0eHI5TC84dEVTZFU0dXloRVFmaUhB?=
 =?utf-8?B?dDgxOU9MeWlrZGJLTUZJN1BxYVphOTJubUJYTk1pWHk0d0l0SG5NdXJpcDhy?=
 =?utf-8?B?RjE2b2IydmdDem85SGFnQlgrWEl0TjlESXJhRFcrNmQxN1VaYzRmSXFmQ3N4?=
 =?utf-8?B?eUw4ZGtSbjZnS1IrWGgvMWNxbXFONUc1YW4wVElhaGhId2ducEJFWGZMWlRL?=
 =?utf-8?B?bHhReGZoZUR6Z2FReDhaeXlYem9zZWkvMVJDMHpLNklZK0NkNWtKeUNYUjBW?=
 =?utf-8?B?WkZEbWM2MVpGdFQ3NHBTaitHL2hGRHNaaEJEZURIN0cyTmxlTHZrUjhRV205?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 007632fd-9c45-4ff1-bf19-08dbd0213a42
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 21:28:53.4354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPAW78Z5HMC5Rq98DeOgzlN9mh6WYmh6h0lXvPb4YhmZ2n3UVcEHXQD9D/2AE25cWsQF737ukiP+2w+0xDPTnUGvE/UygcWcOWrK7Ul+xyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697664547; x=1729200547;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c3vZH+t+Ksy0i3FaLg+mu+1zqhSZWx4eXQQ3WBoffjg=;
 b=VEe5UUlP/aJ0j+cPj67jiNMV5IHgvSvZVNrzygZTEVEmJoidHvwn0e/T
 MFf29kg1YWxfhW3PQ7r+VFzzPZ/OZYwexwHiM4BqcJ8LvGWbeanDDmKxc
 QT0oVunMPmnpYbAAAtu9lJIUDvvUyq1xCgx5coc8T05s06yOhMlbg1zTW
 5XXxssVoyk9X3w8HuWGcqWdqpPz/DBh9PxKcWUApJQBzh2rDYhoIP3iib
 YMOifhLCi3V9uQ4RizHyJ0IfOBF4IMiymFIfjmty+yAd8uLlVEP1In5KQ
 bA+LAxSB+TL5tTGzjZu1eB4v7x1aaUVEW+aOM3NCaQuibtFnNBTM6SVax
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VEe5UUlP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Align devlink info
 versions with ice driver and add docs
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
Cc: Jiri Pirko <jiri@resnulli.us>, Jonathan Corbet <corbet@lwn.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, Jesse
 Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/18/2023 5:35 AM, Ivan Vecera wrote:
> Align devlink info versions with ice driver so change 'fw.mgmt'
> version to be 2-digit version [major.minor], add 'fw.mgmt.build'
> that reports mgmt firmware build number and use '"fw.psid.api'
> for NVM format version instead of incorrect '"fw.psid'.
> Additionally add missing i40e devlink documentation.
> 
> Fixes: 5a423552e0d9 ("i40e: Add handler for devlink .info_get")
> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---

Great, thanks for cleaning this up.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

I'm happy for this to go straight to net-next without queuing in
iwl-next since the relevant i40e series also just merged there last
weekend :)

Thanks,
Jake

>  Documentation/networking/devlink/i40e.rst     | 59 +++++++++++++++++++
>  Documentation/networking/devlink/index.rst    |  1 +
>  .../net/ethernet/intel/i40e/i40e_devlink.c    | 18 +++++-
>  3 files changed, 75 insertions(+), 3 deletions(-)
>  create mode 100644 Documentation/networking/devlink/i40e.rst
> 
> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
> new file mode 100644
> index 000000000000..d3cb5bb5197e
> --- /dev/null
> +++ b/Documentation/networking/devlink/i40e.rst
> @@ -0,0 +1,59 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +====================
> +i40e devlink support
> +====================
> +
> +This document describes the devlink features implemented by the ``i40e``
> +device driver.
> +
> +Info versions
> +=============
> +
> +The ``i40e`` driver reports the following versions
> +
> +.. list-table:: devlink info versions implemented
> +    :widths: 5 5 5 90
> +
> +    * - Name
> +      - Type
> +      - Example
> +      - Description
> +    * - ``board.id``
> +      - fixed
> +      - K15190-000
> +      - The Product Board Assembly (PBA) identifier of the board.
> +    * - ``fw.mgmt``
> +      - running
> +      - 9.130
> +      - 2-digit version number of the management firmware that controls the
> +        PHY, link, etc.
> +    * - ``fw.mgmt.api``
> +      - running
> +      - 1.15
> +      - 2-digit version number of the API exported over the AdminQ by the
> +        management firmware. Used by the driver to identify what commands
> +        are supported.
> +    * - ``fw.mgmt.build``
> +      - running
> +      - 73618
> +      - Build number of the source for the management firmware.
> +    * - ``fw.undi``
> +      - running
> +      - 1.3429.0
> +      - Version of the Option ROM containing the UEFI driver. The version is
> +        reported in ``major.minor.patch`` format. The major version is
> +        incremented whenever a major breaking change occurs, or when the
> +        minor version would overflow. The minor version is incremented for
> +        non-breaking changes and reset to 1 when the major version is
> +        incremented. The patch version is normally 0 but is incremented when
> +        a fix is delivered as a patch against an older base Option ROM.
> +    * - ``fw.psid.api``
> +      - running
> +      - 9.30
> +      - Version defining the format of the flash contents.
> +    * - ``fw.bundle_id``
> +      - running
> +      - 0x8000e5f3
> +      - Unique identifier of the firmware image file that was loaded onto
> +        the device. Also referred to as the EETRACK identifier of the NVM.
> diff --git a/Documentation/networking/devlink/index.rst b/Documentation/networking/devlink/index.rst
> index b49749e2b9a6..2b78060aaa58 100644
> --- a/Documentation/networking/devlink/index.rst
> +++ b/Documentation/networking/devlink/index.rst
> @@ -52,6 +52,7 @@ parameters, info versions, and other features it supports.
>     bnxt
>     etas_es58x
>     hns3
> +   i40e
>     ionic
>     ice
>     mlx4
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index 9168ade8da47..74bc111b4849 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -18,8 +18,14 @@ static void i40e_info_fw_mgmt(struct i40e_hw *hw, char *buf, size_t len)
>  {
>  	struct i40e_adminq_info *aq = &hw->aq;
>  
> -	snprintf(buf, len, "%u.%u.%05d",
> -		 aq->fw_maj_ver, aq->fw_min_ver, aq->fw_build);
> +	snprintf(buf, len, "%u.%u", aq->fw_maj_ver, aq->fw_min_ver);
> +}
> +
> +static void i40e_info_fw_mgmt_build(struct i40e_hw *hw, char *buf, size_t len)
> +{
> +	struct i40e_adminq_info *aq = &hw->aq;
> +
> +	snprintf(buf, len, "%05d", aq->fw_build);
>  }
>  
>  static void i40e_info_fw_api(struct i40e_hw *hw, char *buf, size_t len)
> @@ -77,6 +83,12 @@ static int i40e_devlink_info_get(struct devlink *dl,
>  	if (err)
>  		return err;
>  
> +	i40e_info_fw_mgmt_build(hw, buf, sizeof(buf));
> +	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
> +				    "fw.mgmt.build", buf);
> +	if (err)
> +		return err;
> +
>  	i40e_info_fw_api(hw, buf, sizeof(buf));
>  	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
>  				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT_API,
> @@ -86,7 +98,7 @@ static int i40e_devlink_info_get(struct devlink *dl,
>  
>  	i40e_info_nvm_ver(hw, buf, sizeof(buf));
>  	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
> -				    DEVLINK_INFO_VERSION_GENERIC_FW_PSID, buf);
> +				    "fw.psid.api", buf);
>  	if (err)
>  		return err;
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
