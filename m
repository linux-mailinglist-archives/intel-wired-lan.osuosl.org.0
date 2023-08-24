Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC3E787959
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58B0F4168B;
	Thu, 24 Aug 2023 20:30:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58B0F4168B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692909054;
	bh=37SjegzxbzGXLj20sGSqF5SCKKGec3vYkVVH+j69ZMs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ORp3hzG7eI/a0tz/uau2Q/+gACFKgEEO07ROFQjMiTiifSonADPZl02NT3Cc/31Sc
	 d5Yp2pcDg4Dvl+wMifyKLn5Cj6wasvrmMGsqFLYe+nShzXxAz1RFOWq+Vpu/5t1ile
	 C7EaiLc51mBoIuPjDvP9uqWIMOq0dyfS6T8uI/sqcSHCR7CZ/9/9b0v0lB3ygkk97a
	 KkdR+N2VFiVoIgB2RF87zJsS6Rw+aIrEO2VGkCVQxc2i3IJEynmMXT7Cp55LA0C2hL
	 jV9cga6V0LVvMJe7AkdNQrs1ZYD9s4KIUwC/S5P0K8F2eRDRJigrHpeKjxdP1SabRr
	 EA6ZEvQI5QctA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Fo_Zukf0mla; Thu, 24 Aug 2023 20:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2ABC04058D;
	Thu, 24 Aug 2023 20:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ABC04058D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF2871BF27E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85C0140AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85C0140AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DFyMuk5LWvmL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:30:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BCFF4058D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:30:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BCFF4058D
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="440900466"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="440900466"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737201416"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737201416"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 13:28:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:28:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:28:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:28:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaNtB7nXmtF9sKvmsv56ZXCUfjDmQKgdfFvHCMNzC30qqPjuuP7SrspVIWxwLUsW5tFNmowW3l6RZQ8DqR37KGvTtsJaZkG1e8BEaJTSnY5htBIEftHuuYVmSskOjClaxH1GhdUSn1Ih5xTy4+GUv0+Lsuzf+c+QT4fF8z8cmca/IgKZmsicvojjbPzJMsoPkFjytNJXHseMCa2ZASazXqqL+4DnmQ155am5gse7UbJaNb+7iuRdB/N7/ms/7T36TheSuNRL1b4vW+2YOE0wPY70YRvYcm89bFdyqOPp4U915dwx0KR2tWOp+yCT/TWglv74An1HTAWJhgZyrL9J0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hvypZR9LyaPS9epKwl6SIQV4tZVw/wPJO+YqAzu6sBI=;
 b=F+ETJjpyZrxcDIwBTUVdXo7XhxzakW3/pTXQBK72AmuwtW42MNjjyR7o7ckVBneyxsMzoX9CauHn42ZKLmMW0dI9tAACkipf9yEj39viFxqvQ5VAxMRhrcH/eCvGlejvBJvfTEAkQVIanOto2v1lALxJ5boi0sZrjEJoZhMtlAQZfAQRX1HbUGzlP2n3rnX+MZ28Hu1jgZvQ7jf//Q2hb+G969zrbXa82ODt5DrGCAbHooKXFLCKrHdhR4ELiLFzLgSlDorCjj1J2nIRUjj4RsJtPMDxFm9UFqtOwxvk/pi3VUcWBB0vWqQaCJEFmQv5H1LhApXaqyB73cch76LkfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:28:35 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:28:35 +0000
Message-ID: <96ca2206-67c0-e524-979c-3ccb2470814e@intel.com>
Date: Thu, 24 Aug 2023 14:28:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
 <091272c2-4759-a5ae-403f-a967dbbed760@intel.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <091272c2-4759-a5ae-403f-a967dbbed760@intel.com>
X-ClientProxiedBy: FR2P281CA0142.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::8) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA2PR11MB5052:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cd2b4de-53e4-45d2-5717-08dba4e0b110
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qdbe9H7TyyNqk4U5vowOxHUoXYT0h9JlRop5BuHz6yCQ7HQisFcHSvTm8CfWlODzqYMDpfEzD91CitLRCgMiwAJiHLxUtFBvs2qQ+C7VBtI/5GLPf6PrBe+m0cZ1JunYT0yzw/HGM04CEh8O4O7WBWM9rVqjy6TpHNg22nxRIytD/tF+BPdoM4ortGZpErl/tqOp1rVtGV3pGu7pgyxAWZkbPML7uGGlFYdm8/uR/bl6Yn0AUbupghVsk397IfKN0nA90zlCXCDYmYk07E8I4luUXKYRFusGPPze1l3cI7d2esTIz2W419LLzYL4lKnSgJBTJUsFLL2nxkT2SRfOrNEN+exjTsAbkmwUx6/9EmBamd3nWF5MYTTZtmdPdajTvYDHHiT4lo5eSGJbh4LwBv8rCx0xk9RuLW1g3DOdNVclQT1aQlKPRI4+u/GJ9uLtYSQXIEaS4zYLXtdZh3Jx7lJF8tZysjMUIe3iVl4gOt7fNYkedZHxbltW0bterFTNLQa1ohofVerOe+XLwbxogl87l7zSxeX+YX2sdXRa1aijssAIAOSJ5VC1GLaBaemtKZYLjEa0cXJscduH9LSKh957iQJ3ymMgsoJyuM+qHVHhQWMLdVSnc+q3bfSSW0DYE68p14Pxn7JDHvrd0k7P8w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(396003)(376002)(136003)(186009)(1800799009)(451199024)(66946007)(26005)(83380400001)(6512007)(53546011)(2616005)(41300700001)(66556008)(66476007)(54906003)(37006003)(2906002)(6636002)(316002)(5660300002)(44832011)(8936002)(4326008)(8676002)(6862004)(478600001)(6486002)(6506007)(6666004)(82960400001)(31696002)(86362001)(38100700002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVBIMUc4OXZYNllVTUdyM3ZoYzcxdXY0aGZQQmZUa3BmTTFSWVlhV0c0Rkp0?=
 =?utf-8?B?akNRdnJCaENxV3lETll2a0E3d2twZFNOSUhjOWJOSHpTZTZBUHRxWnVaWE5K?=
 =?utf-8?B?czNPdG01NnFkc25ieUU0RlhQcG5XdEMwc3ZWcWhrU0hXckJ0eTdHMnFRdmhD?=
 =?utf-8?B?YmJWeVlaYkphczNjM0Q1YkpESmVhM1RJQ2ZqUkwxZzZHVHdRUERQYzNXSFlC?=
 =?utf-8?B?U29ZelBKTmRHZWRpdlZDdHQxYzM2L0p1Y0VIODlVbjVVWXJWRXRyVjJreG1q?=
 =?utf-8?B?NmlUVEJVWU84ZnBlMWdScm5idzRNd05JOVZmaHBsZHBmLzBMbzRFT1ZPc0hV?=
 =?utf-8?B?U1Jad1MvRXRBb215RXNxMmkvdGNsRlJFRThDakFDRWtWVmdtdWpaN3A5V2oz?=
 =?utf-8?B?dlFLU2ZORzhScWVLNHgxRkpiSHlOVklpQU9NREpPdHJPcmQ5VndzWlRzOWho?=
 =?utf-8?B?b0VFSUdpa3dSb1lEMmtBZlM2Y3ZIUjdsQ0ZMSW1EWlkvU1ptSm1QOVd4T2pZ?=
 =?utf-8?B?R1MyMHZjQWlUaS9uWUJialR0ZEFiVTdld1Q5Y2crSjNrdklTWENvZnZWb2xM?=
 =?utf-8?B?K3dDNVFHMVFUNi9USStrWTlFem5nNzNBWldLWVN4a0pXTUx5Qys1b245RDc4?=
 =?utf-8?B?aGFTZEU5Y2UxelhmRDlWMlNEdHRGWDBtODluNmVQR01vc2FyZm8rSHB0QThx?=
 =?utf-8?B?K2IwMW1PcXBYZEFkTmxZajhMRjI5NFNVcDFTTzNVcGllQ2lvVjg5MENjbVlN?=
 =?utf-8?B?Zm0vWWl0Y0htVFlmQnlvUzNoakRUWi84QXdEekg4bmRmbkpycVBiRFFIM2xn?=
 =?utf-8?B?eXBkMXhXQ1hiQks5RkcxNlFHR3krWkRkS3BEeXE0OHlMdTREbU5FU0h5eXlR?=
 =?utf-8?B?NU05Mit1N1hhZHhOTWdiWXNIbkxGMVJGUGZLUnc3dGV1RUk3TEdIRDhnVG5r?=
 =?utf-8?B?WFNPbWJPaE90TXpFMHdiOGtPOHVubUREcHQxMUM1NEExV2xCTWNTTVYrVnZO?=
 =?utf-8?B?UVFrMnRuR0FSL2E4aHJ4b2xDTU85dkthTmJmVDh1TjN5cGRvRkNXMVdPdU16?=
 =?utf-8?B?dVVlTVNxbGtQQVhmUnNOdStRSG95eFh3bWVSU0ExODJDcDR3S0ZUQ0NyQ2pv?=
 =?utf-8?B?bllaWVoxSU91MnVNbEJJaXFoYzZscGQxR2tid3hzREpmeGI3SnhMTmlJTHBi?=
 =?utf-8?B?cUE4TGV0M2FBaVpLeGNnL1gxUEpNYWZVNWlOMG81bXNodFd4Yk8vbjN0Y3NW?=
 =?utf-8?B?QTRhQkZRcnR5NmZaUTFQbWVjcUhiS0loUTR5U1JNKzk3L1BZejZQTXRucVEz?=
 =?utf-8?B?dGVTYjIyWGV2S3pTNjcraVNXSEFyZ1V2eUtKZmE4amwwbTM3Y2tyODZpcnJS?=
 =?utf-8?B?UTFtQlBSaENrYllaME9iVSthWUs5NUNoY0FIdldqSnI1Zkx0NE4zdmFsK0dU?=
 =?utf-8?B?SlREOXdRMStBQ2VyU29HU0l2ZHl0Q2JiYnB3QWliY1hGTUw5QTZaUEFxQi96?=
 =?utf-8?B?bUZLSWI0WG85Mkg5b0l0eWxxL1hmSytmUmpoamFzNlZxQVZ4Zk9CUEJkc3ZV?=
 =?utf-8?B?M3VDdlMvcU5jcEZrUGVEc0hPODI5eURESnRLUVhLVFJ2T2JRRHRldkdycjBr?=
 =?utf-8?B?Q2VpU0gzVFg2ai9DcmZWS1BCZ3pPd080WitUYTJLdFZLK2RCS2luSlNiU3lw?=
 =?utf-8?B?S2xqWCttWlJNSGRWa3JRekhxU0lFTFEwZi85ejJLcHJsa3BRVHpkU2JzNzlQ?=
 =?utf-8?B?anp1YVJXYlV2WDZzdlBpNUJhSzhqWVlZcVRKdGpYNTFmaVE0N1cwUUNZcDM1?=
 =?utf-8?B?VzV1eS9zT1VoR3hVQTdWVjZmWFZnUzg5NXAyckVyYXBFVjJaVGhuL2NVOTBp?=
 =?utf-8?B?eWh4OThWbHhxS2lPakxQUndKL0pkU1MvREx5S3JHNUs5TUVvM2oyQXQxT2Rx?=
 =?utf-8?B?MzZsTjVQTXZrNWxaMkZiVHA4OCtPYjE1WlEwYkp5VnpkczBGbGgyNGhlU3Z2?=
 =?utf-8?B?aEpFMFNnQkJsN3FnQmwreW5RcWVZaXJFM3dBSUJDZDJZT015UzNGLzVwaFda?=
 =?utf-8?B?aE9GTUFSY3VzdU45NmQyQk9OZVBhWER4ZDYrMFdLckNCUzk2azRnRmxBSHZJ?=
 =?utf-8?B?aEFjRUZNTEJKdkJQbDlxQTZNTC9MZ3lpQ0VoNEdYRG9xeXJqd1VrN0RPQWhq?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cd2b4de-53e4-45d2-5717-08dba4e0b110
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 20:28:35.6598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S6SBUwq+3fOMZaAe440LrtqW3Qt1xo0Hs3ee6U7BwBTGz9aYvJWHSgM8hZf13avTMTuKKOJFwBnkcaI7mAFbYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909046; x=1724445046;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZTyrwetWFQBicnK/emHSHKgVhfTRO+uEl32x+Ep+MS0=;
 b=J6vJmld3t08MWr1M/SS7U0Rq3IAMrWuER4kyqxEn+cspPXw3b9Terh1O
 KBZpwJOA99HXri9jacddBhRLmnpEfJX7xEyUp0cJWXKwaGsOBy/RCCB4i
 T2AG02miIp3RF4N3qz6VZwti1KYr1L6PwUZQk4Hvsrdo6tTqMLCHDY006
 yUwfjzBurtWg+4IdSBp9UhvbccCvY1iqivm0YwXbRLOfGRRELKWEpsLgI
 Wy+z8Sil1MaUfSsPhytjvTfWIAIYjjkKIEN6maWKx1p7qAE5XHyXpPCx6
 ulTtkQhrVPYjjLPgpYFWhSTx6KB+LlPSbKvGVet3/rMjzElxbLtWTCLGd
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J6vJmld3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDgtMjQgMTQ6MDEsIFByemVtZWsgS2l0c3plbCB3cm90ZToKPiBPbiA4LzI0LzIz
IDE3OjQ2LCBBaG1lZCBaYWtpIHdyb3RlOgo+Pgo+PiBPbiAyMDIzLTA4LTI0IDA4OjQ5LCBBbGV4
YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4+IEZyb206IEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50
ZWwuY29tPgo+Pj4gRGF0ZTogVGh1LCAyNCBBdWcgMjAyMyAwNjoyMzozNyAtMDYwMAo+Pj4KPj4+
PiBGcm9tOiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4KPj4+Pgo+Pj4+
IFRoZSBpQVZGIHR4cnggaG90cGF0aCBjb2RlIGhhcyBzZXZlcmFsIGZ1bmN0aW9ucyB0aGF0IGFy
ZSBtYXJrZWQgYXMKPj4+PiAic3RhdGljIGlubGluZSIgaW4gdGhlIGlhdmZfdHhyeC5jIGZpbGUu
IFRoaXMgdXNlIG9mIGlubGluZSBpcyBmcm93bmVkCj4+Pj4gdXBvbiBpbiB0aGUgbmV0ZGV2IGNv
bW11bml0eSBhbmQgZXhwbGljaXRseSBtYXJrZWQgYXMgc29tZXRoaW5nIHRvIAo+Pj4+IGF2b2lk
Cj4+Pj4gaW4gdGhlIExpbnV4IGNvZGluZy1zdHlsZSBkb2N1bWVudCAoc2VjdGlvbiAxNSkuCj4+
Pj4KPj4+PiBFdmVuIHRob3VnaCB0aGVzZSBmdW5jdGlvbnMgYXJlIG9ubHkgdXNlZCBvbmNlLCBp
dCBpcyBleHBlY3RlZCB0aGF0IAo+Pj4+IEdDQwo+Pj4+IGlzIHNtYXJ0IGVub3VnaCB0byBkZWNp
ZGUgd2hlbiB0byBwZXJmb3JtIGZ1bmN0aW9uIGlubGluaW5nIHdoZXJlCj4+Pj4gYXBwcm9wcmlh
dGUgd2l0aG91dCB0aGUgImhpbnQiLgo+Pj4gVGhlIGNvbXBpbGVycyBzb21ldGltZXMgZG8gdW5l
eHBlY3RlZCB0aGluZ3MuIEkgd291bGRuJ3QgYmxpbmRseSBob3BlLgo+Pj4gVGhpcyBtZWFucywg
SSdkIGxpa2UgdG8gaGF2ZSBzb21lIG9iamRpZmYgb3IgYXQgbGVhc3QgYmxvYXQtby1tZXRlcgo+
Pj4gb3V0cHV0IGhlcmUgdG8gcHJvdmUgdGhpcyBjb21taXQgZG9lc24ndCBodXJ0Lgo+Pj4gSWYg
dGhlcmUgYXJlIGNoYW5nZXMgaW4gdGhlIG9iamVjdCBjb2RlIC0tIHRoZW4gc29tZSBwZXJmIHRl
c3RzIGFzIAo+Pj4gd2VsbC4KPj4KPj4gT0ssIEkgd2lsbCBhZGQgYSBibG9hdC1vLW1ldGVyIGlu
IHYyCj4+Cj4+Cj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVkLnph
a2lAaW50ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl90eHJ4LmMgfCA0MyAKPj4+PiArKysrKysrKysrLS0tLS0tLS0tLS0KPj4+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4+Pj4K
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4
cnguYyAKPj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMK
Pj4+PiBpbmRleCA4YzVmNjA5NmIwMDIuLjU2MmRhZmI4OWYxZCAxMDA2NDQKPj4+PiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdHhyeC5jCj4+Pj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYwo+Pj4+IEBAIC03LDggKzcs
NyBAQAo+Pj4+IMKgICNpbmNsdWRlICJpYXZmX3RyYWNlLmgiCj4+Pj4gwqAgI2luY2x1ZGUgImlh
dmZfcHJvdG90eXBlLmgiCj4+Pj4gLXN0YXRpYyBpbmxpbmUgX19sZTY0IGJ1aWxkX2N0b2IodTMy
IHRkX2NtZCwgdTMyIHRkX29mZnNldCwgCj4+Pj4gdW5zaWduZWQgaW50IHNpemUsCj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgdGRfdGFnKQo+Pj4+ICtzdGF0aWMgX19s
ZTY0IGJ1aWxkX2N0b2IodTMyIHRkX2NtZCwgdTMyIHRkX29mZnNldCwgdW5zaWduZWQgaW50IAo+
Pj4+IHNpemUsIHUzMiB0ZF90YWcpCj4+Pj4gwqAgewo+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIGNw
dV90b19sZTY0KElBVkZfVFhfREVTQ19EVFlQRV9EQVRBIHwKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAoKHU2NCl0ZF9jbWTCoCA8PCBJQVZGX1RYRF9RVzFfQ01EX1NISUZU
KSB8Cj4+Pj4gQEAgLTM3MCw4ICszNjksNyBAQCBzdGF0aWMgdm9pZCBpYXZmX2VuYWJsZV93Yl9v
bl9pdHIoc3RydWN0IAo+Pj4+IGlhdmZfdnNpICp2c2ksCj4+Pj4gwqDCoMKgwqDCoCBxX3ZlY3Rv
ci0+YXJtX3diX3N0YXRlID0gdHJ1ZTsKPj4+PiDCoCB9Cj4+Pj4gLXN0YXRpYyBpbmxpbmUgYm9v
bCBpYXZmX2NvbnRhaW5lcl9pc19yeChzdHJ1Y3QgaWF2Zl9xX3ZlY3RvciAKPj4+PiAqcV92ZWN0
b3IsCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
YXZmX3JpbmdfY29udGFpbmVyICpyYykKPj4+PiArc3RhdGljIGJvb2wgaWF2Zl9jb250YWluZXJf
aXNfcngoc3RydWN0IGlhdmZfcV92ZWN0b3IgKnFfdmVjdG9yLCAKPj4+PiBzdHJ1Y3QgaWF2Zl9y
aW5nX2NvbnRhaW5lciAqcmMpCj4+PiBPdmVyIDgwIGNoYXJzLCBhcyB3ZWxsIGFzIGluIGEgY291
cGxlIG9mIG90aGVyIHBsYWNlcyBiZWxvdywgcGxlYXNlCj4+PiByZWNoZWNrIHRoZSBwYXRjaCAo
eW91J3JlIHRyeWluZyB0byBmaXggY2hlY2twYXRjaCBpc3N1ZXMgYW5kIGF0IHRoZQo+Pj4gc2Ft
ZSB0aW1lIGludHJvZHVjaW5nIG5ldz8gOkQpLgo+Pgo+PiDCoMKgLi9zY3JpcHRzL2NoZWNrcGF0
Y2gucGwgLS1zdHJpY3Qgbm90IHNob3dpbmcgYW55IGVycm9ycy4gTm8gaWRlYSB3aHkuIAo+Cj4g
SSdtIHVzaW5nIHRoaXMgdGhhbmtzIHRvIE1hcmNpbjoKPiAuL3NjcmlwdHMvY2hlY2twYXRjaC5w
bCAtLXNob3ctdHlwZXMgLS1jb2Rlc3BlbGwgLS1tYWlsYmFjayAtLWlnbm9yZSAKPiBMT05HX0xJ
TkVfU1RSSU5HIC0tbWF4LWxpbmUtbGVuZ3RoPTgwIC0tcGF0Y2ggJDEKCnllcCwgdGhhdCBpcyBk
b2luZyBpdC4gSSBndWVzcyAic3RyaWN0IiBpcyBub3QgdGhhdCBzdHJpY3QgYWZ0ZXIgYWxsIDop
CgpUaGFua3MsCgpBaG1lZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
