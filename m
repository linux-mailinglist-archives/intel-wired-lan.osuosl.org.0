Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1D589D2D5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 09:09:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81B72414CC;
	Tue,  9 Apr 2024 07:09:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yjjyT41ILxT; Tue,  9 Apr 2024 07:09:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A0A1414FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712646576;
	bh=w73RFJwQiElZIHaD5Eac6iM338qoX/PzCGwr+dlC+qY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9EOWLsLc9/vRbhgvFulA8A0fDnoig4M5mDDbqociZX7bcE6+ZWYbBpT/xbeklzVZ5
	 acfhlk/nqJgbzeCTs5lTawRpey4X0Fy6bXFVXQjnudjPlPTVOufvPdm6K1/ZG/wsI9
	 D7YvfdSDqXeYZ4QLZvFFpn/uhAYaCvlES6sdjQC9alngm2v/KVXkKnO4IMyKJT9rxG
	 djEg2lts9r+vsIPGdExVpdhFb6O+VcV2MB9n++2fAi23W5upM6qHkUxR7kdmPMPqXC
	 kjf+cs8qRoFrEO+7bvgP5E0rZCXJ6fGpHv+PGfNqBIoiqhjwYslqiyjdwzUbqFsYpW
	 zMi8Quoylk0Wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A0A1414FF;
	Tue,  9 Apr 2024 07:09:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0401BF2CA
 for <intel-wired-lan@osuosl.org>; Tue,  9 Apr 2024 07:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46DB881FA9
 for <intel-wired-lan@osuosl.org>; Tue,  9 Apr 2024 07:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKDZN1sfZ3yW for <intel-wired-lan@osuosl.org>;
 Tue,  9 Apr 2024 07:09:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2C0DB81971
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C0DB81971
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C0DB81971
 for <intel-wired-lan@osuosl.org>; Tue,  9 Apr 2024 07:09:31 +0000 (UTC)
X-CSE-ConnectionGUID: v2HPjNEHSqOSe4YxXaSe5g==
X-CSE-MsgGUID: urkpKGtCQ+WLqAeFkAo6Eg==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="30440837"
X-IronPort-AV: E=Sophos;i="6.07,188,1708416000"; d="scan'208";a="30440837"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 00:09:32 -0700
X-CSE-ConnectionGUID: ZjciB3m1RnujJV1moQtGgQ==
X-CSE-MsgGUID: u576iItOQrWQbjsxPEm3sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,188,1708416000"; d="scan'208";a="24875498"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 00:09:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 00:09:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 00:09:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 00:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nF1SzxWvUbZQt9mlnOyqXSQNqmAkHD2s0JcEIOhOgBB4Ib8PDnhkvabdadmxAChdknmbb2sj5FXH++E4JolwW20nHN2SzUSk8AO1Q/67yXdvu40T9d0QodTO2+uJisQTLzeKNKOZJV6gHKUEaU+0sA5sQE3PE083Vs125j8pQgctoL2uPLce0ROSbICiTlrjQeZEpliNMh1XLi7MV56bBEJ3V4G1vzJH9lK46p1vkJClXZsDSHoI6Ue/NA8SRHFVd9ojY859mLpzIkSbrN9kQa70uhcBcRvRik+Ihi4zfc1af5jfMjEMRfnBpP51tuP+e5NXDD8JQb/ON1yqNDgPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w73RFJwQiElZIHaD5Eac6iM338qoX/PzCGwr+dlC+qY=;
 b=MkJJ0REtqGu+5Ey1MXFAD75wL/cdr9GM9NzekB8ZGN508nYFq2tH+yCJqNdNC8Wa1+OXaThQvgeHIpSZGJvNle74fEGYVD8PPQr5qvCvC+d7cFIW3aB9vVGknZOgrciRrFwyphjqtqAf3JFfYSI0i/TonWP+8KHYZ5nFjLL22bOwU4wVj2W+rgLegd3Txy5ht/JkzpnuIEZGCHsC0g4gZDg6WXjTWMYqiFYau03pqBmdDT8IAmMgLgo8M0PU9HrOifVStk5mE15WXCqLgj+4zfrln/4PB014G07N4Fk35BgvwUSYXBx3oF8rSB1//aUybdKF1MkxVMOoJu8A6bRKfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by PH7PR11MB8598.namprd11.prod.outlook.com (2603:10b6:510:2fd::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 9 Apr
 2024 07:09:28 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7452.019; Tue, 9 Apr 2024
 07:09:28 +0000
Message-ID: <69febfa0-5bbd-412e-a6d5-906d341d72fa@intel.com>
Date: Tue, 9 Apr 2024 09:09:26 +0200
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240408230326.3327878-1-jacob.e.keller@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240408230326.3327878-1-jacob.e.keller@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0025.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::6) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|PH7PR11MB8598:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GFpI429E2fF3OrJkZ3k0epqRvvFY8rPM55yRc1xfDvB+dQW/3y1gWwYOnasayZhYLwcpNZprbCwU17wOIzmXclU66QvJWqgQgXGA9ye8hjOfxd9+OHj0oC2Y9uLkNtIXve2fOAXRuB77mqIPsruLqgdNmuPro3IJlZ3R1RKmhqI+LnaUb9FX3Cxxg9hCFY6E8IliKS7F3VGDwfURHxEPdU0uohc1oEW/LoNnRw+B9ccDVx3jNZf2TeKGA+dGuaAtUmRwy+YV4c1M/JCjSlcKV5Wv/7mJLjEziXSZY4DONb2yFTBabtmICOhhPFfX9Sprx2W5bMMTwouHVYxcqxz8V4PdYQWqoiVPowrfq033deQM5qoIQKIV1QEM8lppgWDwcVAPXMuXFj61DlYNZ7teOlHL5ZA9Rs7t8Z5mQrPiwMoq/ZZ/9L+ttsGaJK6xsr4Mi5g7lviNxd5UJwK4LQp59NW+E/7f0SRv+XimMycy6ochUsOfOMlLETIRBPunaMO40StZYFnMu2DWdnHys1C144x/59+HVCxzHNAKuYDjODQHd7FT4Fdj7b2/CMuL9wTcasYcrcXIpMnTsEeHYSpXNk6RnQ8wfkMjGR0Jvm7b8+b+aWKh/dK7iX9LYnTUYDu8dSEhyQXPe5BEGQuTIRALpfS4W2lwqrj/wMXvY+Y7DhU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzZYRzZxcVp1TVpVTUI3dUhFNmRCamFqTi8yWkVJelR2Mm12MHlCaVpudnA5?=
 =?utf-8?B?dFRVa3RSR0IzblVUR3FObkhacW1OVXJlb0pXZmV2UmllYlZFMVo5VjUwaGkv?=
 =?utf-8?B?MFB5MFNwWG90dmxOc2dPbUpGaDF4dnkwUjl2cm1YcUpYSmE4aFlCYWJFb1lL?=
 =?utf-8?B?UGtielhXeTM2dTlUQU53bzdxY1BndjZibzB3bVRrUEJiS05IbU04UmFzMCtu?=
 =?utf-8?B?eW0zVlU4N0NZL05RTXpJdk5QWmNzR0p1bnhERkxocFRwaWg5bzhjU3NaMURF?=
 =?utf-8?B?dkgyTXVqN3RiZnkrRG1mK3RSdWtuSEpwUWZoMUtDOWo0amFrbFZXNkFyVDBj?=
 =?utf-8?B?cHhodzZrUFhjVUE1Sm9CZkN4SzdQV3JXSnBzVGZOZ1ZNVFhpbFpJL0I1SXlI?=
 =?utf-8?B?S0ExRXZqWllsams3aEtETngrVWQzeXRQeW93b2pOOTcwblpVdCswZEphT0pI?=
 =?utf-8?B?MlN0NENaU2RIempQNVNqYWkwOGh0bkRPd1BTQkM2bUpjMStGSCt6Q0xlajVu?=
 =?utf-8?B?NjNHMXdIaEVMRit4UENhSXJKT3pSSWJvS3pvNHk2NXdpazNpYVRiT3NySVdI?=
 =?utf-8?B?bkl5cUIyVkU1eFpXQWtzRmRmV1VWdGtWTy81cmF5V0lsRW9kcU8vMHlwTFFL?=
 =?utf-8?B?YzNsZThZQ0RBTWs2aVNsSVFFRHZjUEhWNkFrNUtEaDQyd2RnejB6M2xyQ3hW?=
 =?utf-8?B?eGhLeXlDRmRhR3ExYWNFc0pRSGpFUUVNRzErLzZhcWpuM0ozR2Q2K2pzSjUw?=
 =?utf-8?B?Wk9mSWVXREVUWFlvdXYrZGRuNlBQeVMrT2JaelZNSEloQTNYY1QxTFhKU1hW?=
 =?utf-8?B?Vk5BMVNiZ01ZcFJiZlR4WmF0UDVlYk5uWTVRNThTckNaREZ0bndsOVM0Z2dR?=
 =?utf-8?B?UmJja21PdzM4bTFMRTBsT3pVRUQrUitXWFZMSXh2YkQ0b3hoL3RZSXpQNnE0?=
 =?utf-8?B?Z3RsM0FvMGtDNDcwUkc1ektZU3Z5cUV5djh5OWlZcUVxQWxxWFgrNGRCajZo?=
 =?utf-8?B?RGpsakY0UUdSYlRKd2o5UEwzOWs3MTZwRWM1eUIyakZXOVlDNmpzWSswMzFN?=
 =?utf-8?B?c2puVXFyNHNFVE5sK3RRcWtPODU5azBjQWZ1Rk9ZOW9GTFNWRk50a2hMV01W?=
 =?utf-8?B?MmxzMm5sYy9SaTJSUnpxbWRHenRNY1IzdlU4NlU3M0pEb01PWDN4aGNqaHh0?=
 =?utf-8?B?QU1SbVJFdzczcXg3K0s4ZFluUkhhOXFxSXlrTkhQOGo2YUhjMHQ3Q1FZWUJT?=
 =?utf-8?B?eGdoWW1icGg1bWF1Tmx2Q1Q2RVp2Q1JyQ0wvTGp6b1ZuYkM3SXNZUldlUjdj?=
 =?utf-8?B?bllRSmx4ODl1UjIwUGdaR25TR0hzUXlMblI2STJnZk5KTHkwODBURE5Jd2hL?=
 =?utf-8?B?cG5WWHNrak9Zc2JxeFpSWVpTcVVnd21rM1AzdFJrTHc1U0hPYmZwNFdja2dJ?=
 =?utf-8?B?MDlNWkp6WXZPMW1kc3laVGNDWkluVURsZ0E5cTlrUXhadFEwcUM0cVd2cWxV?=
 =?utf-8?B?NWNsN1lPemgwQjJvWWN4ZkZBQTRDY0wwRjlrZVIxRzFTNURpOURzQjRIN1N5?=
 =?utf-8?B?NjlkUVpkSVJZUXFCRmcvSUIwTEFNN04wME9XY1VzaHdnSmNHNkIrL0NoUHJO?=
 =?utf-8?B?Y0NicVE3UGRYa21OYXFyOVJhdkdLeUhMbWpOcmxsRHZZQ3k1Z1dQZXJnM1J2?=
 =?utf-8?B?N1p2a2ZMK3BkNGNiZmkranhNTHdjK1dqNTl2M0tjeklOMnpWTU1yTHc4c0h1?=
 =?utf-8?B?ZUlTVEhyT015L25BazJDTVBrMkkrMDVDMnhxanRZN1R3WnpEbFJJUVVhWWsx?=
 =?utf-8?B?bDBobGtxblkrWTVvUmdwdVVnQ09FQmRVa0szL2JrOGlObGF3eVNtNGlGTXNG?=
 =?utf-8?B?Z3MwRFZoNVBublVCWG5kVzBEakdESG1WNDBPeklmT3A2WDhKVVdWT1FrWktT?=
 =?utf-8?B?ZXJhcnU4OFpHaXIxS1VaTmRhR0hKQ1dFb3BLdXNWK0ZoRk5OREdnNllZV0Ft?=
 =?utf-8?B?L3puanZlTVV6WG1yYjgzQ0FYTlVrNW85MXZxbitsS1VQaTc4QTRuaW44NE8z?=
 =?utf-8?B?VkRDNEFxeGcybWM0QUdockZ2RGZOSVlqK3FSWXEwZlJDY1hib3MwUGIwZlZt?=
 =?utf-8?B?c0RHVWsyNFgxNHk3V3d3SzY4MWNBTytWcVg4TWNpbEtPRGJ4ODZTNGQ1bkFl?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb20fcec-f23d-4e15-6174-08dc5863ff3b
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 07:09:28.8884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NHWA2ZyIOEtPmv7Or/urct73USE2KP9GG98nAeV9Ig9lCLxvTKRUq2f9GljT7kCNbCyJ+hjtwaZ77cjIVGxytvWcCmmeWD8A8X2+Rpi1qoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712646572; x=1744182572;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8vMF+TqSUoYa0mhX8SX2GeW8cERvTGOS+lplInFEG6M=;
 b=kXFIfrBgekdg3aB2uh4v83ngtT1EABJHSH0CBzKfoiJC3dOAoWfVLjQj
 NK3rQxg8pecrz1qtxaIK5Atf5ivt8p+5LC/14HxF4NO+KAp5WN7PVjBtx
 iS9IvBlA3OsE67aDKWTEnllAxq2G6t5/Whe7uM9pgDLnxisqqJrtLzHQX
 pumSi8XRKC7UyhhPzEq9c9z2YUok6tuycBlyEY92sU5cHTomLdaH5nHf6
 UT9ZtTSbRezTfKdcCycvgu/KBZ7IefEjdSGpsTkos9ixkKZrev8l98ciu
 gj7GKsyiPdfHa+5SfXXLPiIQX29bfESAZDJgMDW0dgn9eaF1vm9/USuS0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kXFIfrBg
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG and VF lock
 dependency in ice_reset_vf()
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



On 4/9/2024 1:03 AM, Jacob Keller wrote:
> 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over
> aggregate"), the ice driver has acquired the LAG mutex in ice_reset_vf().
> The commit placed this lock acquisition just prior to the acquisition of
> the VF configuration lock.
> 
> If ice_reset_vf() acquires the configuration lock via the ICE_VF_RESET_LOCK
> flag, this could deadlock with ice_vc_cfg_qs_msg() because it always
> acquires the locks in the order of the VF configuration lock and then the
> LAG mutex.
> 
> Lockdep reports this violation almost immediately on creating and then
> removing 2 VF:
> 
> ======================================================
> WARNING: possible circular locking dependency detected
> 6.8.0-rc6 #54 Tainted: G        W  O
> ------------------------------------------------------
> kworker/60:3/6771 is trying to acquire lock:
> ff40d43e099380a0 (&vf->cfg_lock){+.+.}-{3:3}, at: ice_reset_vf+0x22f/0x4d0 [ice]
> 
> but task is already holding lock:
> ff40d43ea1961210 (&pf->lag_mutex){+.+.}-{3:3}, at: ice_reset_vf+0xb7/0x4d0 [ice]
> 
> which lock already depends on the new lock.
> 
> the existing dependency chain (in reverse order) is:
> 
> -> #1 (&pf->lag_mutex){+.+.}-{3:3}:
>         __lock_acquire+0x4f8/0xb40
>         lock_acquire+0xd4/0x2d0
>         __mutex_lock+0x9b/0xbf0
>         ice_vc_cfg_qs_msg+0x45/0x690 [ice]
>         ice_vc_process_vf_msg+0x4f5/0x870 [ice]
>         __ice_clean_ctrlq+0x2b5/0x600 [ice]
>         ice_service_task+0x2c9/0x480 [ice]
>         process_one_work+0x1e9/0x4d0
>         worker_thread+0x1e1/0x3d0
>         kthread+0x104/0x140
>         ret_from_fork+0x31/0x50
>         ret_from_fork_asm+0x1b/0x30
> 
> -> #0 (&vf->cfg_lock){+.+.}-{3:3}:
>         check_prev_add+0xe2/0xc50
>         validate_chain+0x558/0x800
>         __lock_acquire+0x4f8/0xb40
>         lock_acquire+0xd4/0x2d0
>         __mutex_lock+0x9b/0xbf0
>         ice_reset_vf+0x22f/0x4d0 [ice]
>         ice_process_vflr_event+0x98/0xd0 [ice]
>         ice_service_task+0x1cc/0x480 [ice]
>         process_one_work+0x1e9/0x4d0
>         worker_thread+0x1e1/0x3d0
>         kthread+0x104/0x140
>         ret_from_fork+0x31/0x50
>         ret_from_fork_asm+0x1b/0x30
> 
> other info that might help us debug this:
>   Possible unsafe locking scenario:
>         CPU0                    CPU1
>         ----                    ----
>    lock(&pf->lag_mutex);
>                                 lock(&vf->cfg_lock);
>                                 lock(&pf->lag_mutex);
>    lock(&vf->cfg_lock);
> 
>   *** DEADLOCK ***
> 4 locks held by kworker/60:3/6771:
>   #0: ff40d43e05428b38 ((wq_completion)ice){+.+.}-{0:0}, at: process_one_work+0x176/0x4d0
>   #1: ff50d06e05197e58 ((work_completion)(&pf->serv_task)){+.+.}-{0:0}, at: process_one_work+0x176/0x4d0
>   #2: ff40d43ea1960e50 (&pf->vfs.table_lock){+.+.}-{3:3}, at: ice_process_vflr_event+0x48/0xd0 [ice]
>   #3: ff40d43ea1961210 (&pf->lag_mutex){+.+.}-{3:3}, at: ice_reset_vf+0xb7/0x4d0 [ice]
> 
> stack backtrace:
> CPU: 60 PID: 6771 Comm: kworker/60:3 Tainted: G        W  O       6.8.0-rc6 #54
> Hardware name:
> Workqueue: ice ice_service_task [ice]
> Call Trace:
>   <TASK>
>   dump_stack_lvl+0x4a/0x80
>   check_noncircular+0x12d/0x150
>   check_prev_add+0xe2/0xc50
>   ? save_trace+0x59/0x230
>   ? add_chain_cache+0x109/0x450
>   validate_chain+0x558/0x800
>   __lock_acquire+0x4f8/0xb40
>   ? lockdep_hardirqs_on+0x7d/0x100
>   lock_acquire+0xd4/0x2d0
>   ? ice_reset_vf+0x22f/0x4d0 [ice]
>   ? lock_is_held_type+0xc7/0x120
>   __mutex_lock+0x9b/0xbf0
>   ? ice_reset_vf+0x22f/0x4d0 [ice]
>   ? ice_reset_vf+0x22f/0x4d0 [ice]
>   ? rcu_is_watching+0x11/0x50
>   ? ice_reset_vf+0x22f/0x4d0 [ice]
>   ice_reset_vf+0x22f/0x4d0 [ice]
>   ? process_one_work+0x176/0x4d0
>   ice_process_vflr_event+0x98/0xd0 [ice]
>   ice_service_task+0x1cc/0x480 [ice]
>   process_one_work+0x1e9/0x4d0
>   worker_thread+0x1e1/0x3d0
>   ? __pfx_worker_thread+0x10/0x10
>   kthread+0x104/0x140
>   ? __pfx_kthread+0x10/0x10
>   ret_from_fork+0x31/0x50
>   ? __pfx_kthread+0x10/0x10
>   ret_from_fork_asm+0x1b/0x30
>   </TASK>
> 
> To avoid deadlock, we must acquire the LAG mutex only after acquiring the
> VF configuration lock. Fix the ice_reset_vf() to acquire the LAG mutex only
> after we either acquire or check that the VF configuration lock is held.
> 
> Fixes: 9f74a3dfcf83 ("ice: Fix VF Reset paths when interface in a failed over aggregate")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 21d26e19338a..d10a4be965b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -856,6 +856,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   		return 0;
>   	}
>   
> +	if (flags & ICE_VF_RESET_LOCK)
> +		mutex_lock(&vf->cfg_lock);
> +	else
> +		lockdep_assert_held(&vf->cfg_lock);
> +
>   	lag = pf->lag;
>   	mutex_lock(&pf->lag_mutex);
>   	if (lag && lag->bonded && lag->primary) {
> @@ -867,11 +872,6 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   			act_prt = ICE_LAG_INVALID_PORT;
>   	}
>   
> -	if (flags & ICE_VF_RESET_LOCK)
> -		mutex_lock(&vf->cfg_lock);
> -	else
> -		lockdep_assert_held(&vf->cfg_lock);
> -
>   	if (ice_is_vf_disabled(vf)) {
>   		vsi = ice_get_vf_vsi(vf);
>   		if (!vsi) {
> @@ -956,14 +956,14 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   	ice_mbx_clear_malvf(&vf->mbx_info);
>   
>   out_unlock:
> -	if (flags & ICE_VF_RESET_LOCK)
> -		mutex_unlock(&vf->cfg_lock);
> -
>   	if (lag && lag->bonded && lag->primary &&
>   	    act_prt != ICE_LAG_INVALID_PORT)
>   		ice_lag_move_vf_nodes_cfg(lag, pri_prt, act_prt);
>   	mutex_unlock(&pf->lag_mutex);
>   
> +	if (flags & ICE_VF_RESET_LOCK)
> +		mutex_unlock(&vf->cfg_lock);
> +
>   	return err;
>   }
>   
> 
> base-commit: 3ca3256cde596573d060eda8c477996435c6d63f

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
