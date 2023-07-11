Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF1B74FAD3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 00:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF7B6404C6;
	Tue, 11 Jul 2023 22:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF7B6404C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689113942;
	bh=aKTpdf2OUTwju2i54yMj1MuC4T8E5c5JYGTgT8N2CH8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=twDtMOErsY8VUBH4t9+vITPYnCy9EY3UK3xk+k4FaV2lWIl1dua9SmorllCuR+w3M
	 q+Z0+r+3LQY7g1rtd7EII4IhBQguilOShwAUBC8IoDu3Q78IBXEfWnJWI6GuUTxFGk
	 9OUAi3Ke5Mf1q0dyqoWAHgomJ4AJcRKxtWruRxqRYXIYrJ2MybTjZ5wqvHe/d6lnvR
	 AP6JkSvS3bxzbqDpXSN3rNxedq2Shyxuvd788/cEQbX1dKkQAq1w4IjMPcY09HRAU+
	 457AYyC+0RwazGuySOvg4wdBdCKKn2/TD1MkLx4quGz/qZp/rhf4VlnAVQ/XaMEt7s
	 X/eji9HUAwOrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id foPsAGlahfex; Tue, 11 Jul 2023 22:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54E10402C1;
	Tue, 11 Jul 2023 22:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54E10402C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EAD31BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 22:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1A93402C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 22:18:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1A93402C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dy6O628ZFSL9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 22:18:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A935A4023F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A935A4023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 22:18:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="364784601"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="364784601"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:18:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="715352028"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="715352028"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2023 15:18:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 15:18:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 15:18:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 15:18:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 15:18:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/2TDNqa80lrSSbdgF0QwcG/U6WFqseljYR7mQn+09Z0gUETzboywt7cGRR07HC0aLx59C3g9g/lgWQsmnbP/B6tGyKWutgqHK16UW0xALCOYR3dBojL9nGfZEvgBrW9RBMPvGkpHAOxiO+yDvdiQH02Yj0g6UfjtX8x5U6ha5Gb2EPY8Liwb8j16oks9aXQivI1EmhPJeFzKy7OnRnVgxTY2tW1+7Z5W6NLOXg2vcAxEyYzXMYbDiUkvXoeC1jny1FxpdGCSlTcFjxK0XpRIKo3czCKZCU3FIJRveckMHR17lEJf5eTL/sD6XBnwfYLP7SgTkhdIAasA8aODbm94g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWqIvCQNhvaGvGBG7gfsmTNRw4FCxf6QBtzk92G3Q30=;
 b=fuiHoo1p2MLp0UFgDC6f0jJzN7SS/GFqFdH93ATZcLsJMoFT6UzAdeqzq8jaUioWP6nedzayd/ygeymfDP3b/rcWNs7+xWq43qWxGfuqrKLBBoCZ/r3v/OjRwusmlgySKeIljc7W4MI38ZEmSiykGNPiRie6AVrxmXGG3+uN5gzBgnx09oUAnXxtE7V0/Q1g88VRUtcn9oQKI6j+jxu5m4ym6p5m3pYEcN1qTIfELKJlYE8jTvu2PfgIvxFBvuD7gMuWyxTyg6HtI+PZPl7tom4ODuIT0NLN6Xn3zTPKpihLasDbUuBalBcn8xISZfrP5OugxoU2gFBBCKgnAdzVxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB6216.namprd11.prod.outlook.com (2603:10b6:8:a8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.20; Tue, 11 Jul 2023 22:18:47 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 22:18:47 +0000
Message-ID: <55e0080d-4f37-4092-4987-a241cad3e2a4@intel.com>
Date: Wed, 12 Jul 2023 00:18:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230711122741.780900-1-jan.sokolowski@intel.com>
 <20230711122741.780900-2-jan.sokolowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230711122741.780900-2-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR2P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::10) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB6216:EE_
X-MS-Office365-Filtering-Correlation-Id: c30cb1c6-52c1-4911-dd84-08db825ccbe0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bzFbVMAeZqRgjQqdws0H7pBp9uA931riq3gl0DWGnFaJFTePqFUCSkp2pVDiXh+BijWPKOhQDXhO4Kwufg4rOeflXCcETKHd9kaIO+wXF2qFFusGAzzQyBKqIzVGcoL5kDn0ZJXJj0TDahF0nBuKPghd9PxOJu+8gPQI+nfU/+W5taQfEFEHvmEgMHUdd9qT653iiD4RTpsE833bkHA16nMPIuX2CEKQXe5RUAu6Tc64lYSRyzP9STLwOvox9F0JGw3H68wCCATyeRYAbPzV+2N4h5f8JdAtb1GsWGUriuaRVukQz1rojBDpEjxnmVFPutAhjEP8EpANzdeR6rz46+BmGm/xk90qOyYlqtVgfO09i/cXQwjzEKJWa8RFbmknSymIwpR1EoaMNqghWtuFhDpGOAu70eMXwmMzFfgXmKrWsA2Ww0L5hu4VYXF2ji4lAxjpsofyWBX+PJkzcEpxN4Q/SNL+LN4IC5nCd5lKdjOlo2lj/iT+iLPSLQtoHi6mWyZBEQoDhf754twNDzt3oj2K2hTYic9kVzbPvlR8sjg/bykarzs+Bx5vh8FHgVujtFkaozTBCNZ0UVYKhXIJZFMXdS5cIYeGrChYB/F52tNGrfSdJd1DtqrW16mBfac0K1DxtkHMKDvtfaCYXhFc0w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(396003)(39860400002)(346002)(451199021)(41300700001)(6486002)(6512007)(6666004)(38100700002)(36756003)(2906002)(316002)(82960400001)(83380400001)(66946007)(66556008)(66476007)(478600001)(31696002)(86362001)(2616005)(6506007)(8936002)(8676002)(186003)(31686004)(53546011)(5660300002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ek5acWxLMkhjeHM1RkhiNmROWmxEc1AxRzBlWGFMY0RQSXAwRktxUWY3TWJT?=
 =?utf-8?B?NzNvZDYwRnlrQ0ZvWXRWbjJRdzZxVngzc1A4ZkRGSGxhNTJFZHJXakFwZjMy?=
 =?utf-8?B?Q002SU9YeC9EUHBPWCszazY5aVNSeTgzN3pva2FDVEI1V2RvblRlMEdHZ29P?=
 =?utf-8?B?cmZOeC94QlA5dzhveEVyeWFUSkJ6QkNlMGlaMXg2WmZOeTNaTEtIOFhFVkVU?=
 =?utf-8?B?ZjF2a01JK2lqSUhGdEJweEtrcUNWc1NVZWhIZ00zbXNBOTRWdlhIMjZLVDky?=
 =?utf-8?B?T1YrMnNSbUtrOTlUNGFYcWE3UGp3ZzVFekFjN0dYa0tKbnJtYzhnNWd1SW5z?=
 =?utf-8?B?b1ByQnh4WGZkTVp2Y0RqcmZMcmp3RFl2THgwTEdyK1E2MFRra2dWTS96VHVV?=
 =?utf-8?B?OG5MV2E2eVNhMVd2MUZTaytEWStDVjRPMFdmY0hjZ1JVS1pFQ0dpTis2THl1?=
 =?utf-8?B?aWQ3K0FuVGhYZU1MZzY0WHJ2MXpuUE82ckdUNGxWVTdVdno4YmpTUmZBaDN1?=
 =?utf-8?B?eVRBWGZXaVZWNFd6MkhNaXFjcnhtcTlpajRVQ1lraGoyZXVJQ1ZZMS9wY3c3?=
 =?utf-8?B?dTEwZ2lLMWJsRm9SWVFqa0Rpc3FWNE42eHZWV0ovSDJmMU52TldkQWZxYm9a?=
 =?utf-8?B?OXJWQ2I3aTNNZ1hBRTVOQ2VjRE9zUWdrL0pNNHUrVXhpYi9hS1F1bm5xVTUw?=
 =?utf-8?B?ZW9UQW4ycWRHZGRWYWV2QVRyQ2plZ0xEaFVMUWJEMGdzL1NNYzB0RVlwbDlr?=
 =?utf-8?B?QUVhUkloSk40L0d3M0hvYVNubkhKY09oK3VNQ3UyMktDODRZcVYxUHFwNHhk?=
 =?utf-8?B?Njk1Z25OanlRSURDTTk2dFBlWGZCSXJoUHVLeXc0VHRyK2pNU3NtbXF0NDA2?=
 =?utf-8?B?dGlEMUdEbUlVcFFYaitoMTdNaGc0MVhrNXYxcExhNzFyK3pGRDVLTHZ6K1p6?=
 =?utf-8?B?MmVmdWhkZHBrWGZOMEtsUmZLTDVJdHJTcnR2Z2oyUndZOTFteHNTRkRoVU5G?=
 =?utf-8?B?NGg1VG5IUU5Qd0R5VTVkelJyVFhwZVYvREczRGFOL1NzZndlWmdxNDhyTmt2?=
 =?utf-8?B?RDBiNXc5VWxSZkwwaG1tbTVYUTZyVFpFRW9xRHhOaEYyT1lRbVlISDJkSDlH?=
 =?utf-8?B?ZEZiengxZlg4YXVvbXZncllxTmZYb015YVpiQWNkL1FINlI3M093RU54VzJO?=
 =?utf-8?B?bkhmNGdOUGJrdFIrOWJEa0NmTTZqNnEyM3ZQOFh1U0JtMHNEZm9JYmtnWURE?=
 =?utf-8?B?c2tnTE9YcjlVd2hTRElwb01xMExZK01VRWgyOHBoSW9iRys1akUvS3RVNlk1?=
 =?utf-8?B?dkJxdHdSMTloWDNlR1FDNFEzV3dwOEZjZ0pVUWFUYzI1UXNRanVsOVFES21j?=
 =?utf-8?B?aUl2cEpaVmpRR3lsaEdZUTJjZGtHYUZ5RkJONGRqRE4xUXhkTWRTZHdlOFhv?=
 =?utf-8?B?K0E3dFFlS2NxNWpuUUl3QldoeVNCODhqc1k1bmRuNzQzclhqSWpQalJLWXp5?=
 =?utf-8?B?RElCMmVCT0ozTFBpdktZblhLUzIxNUpwM3ZzVFpWTThGKzhrOTl2U25PVmNY?=
 =?utf-8?B?L3JkU3dBT2NoZlU3M0RrTUR2djV3cmYvS0FQYzdmaEd5NmtndXFzSDhMRlYv?=
 =?utf-8?B?dEZrT29OM25nR2lKN1gxWjhlSnlpVUlqLzBVUEJ6WFlkazhGUFNxSE55ODdR?=
 =?utf-8?B?RmdseWlzYkFmbFpNNElNdzVObWR4L0Y3VjMzcFdLd2pWQk1qR09WM2VqczAv?=
 =?utf-8?B?b1hBZEhMb3pxSWo5N2toakNIWktocjBOSkxucFdGRTQrWUtOcXErWDNMdndh?=
 =?utf-8?B?UTBuS0pqVzFiWDNuUXFHYVY4Kzl4UFJSS3pMMThUWTV4Q2xpNi93US8zWlV4?=
 =?utf-8?B?YitHOHo1a2hJS2xHY1YzeTZPNzBhWGd6YUtDYjVuNFB1N0JLbjZCZ09lMXhY?=
 =?utf-8?B?czVHdjVQSkt4bDlVL0l0OCtrOCtkQWcyTEhoZWxWZ01nY1IzWGZGN2psZ2hP?=
 =?utf-8?B?OEZoN0lIYUNzSmY3WnZJYUplZGRESFV4QUUrRmRObG12ckxxdy9lRjgwU1pS?=
 =?utf-8?B?TUN6YStjUmxvb2RzaStwL01ncEl2Wi9HUlFqTHI1WHh6eFBwSVpBL0twd3A0?=
 =?utf-8?B?R0xRYXVTcmFOeDBKejI4cTd1VFk2RVhoM01YUTBYVHdRY2dYMENFdzROcFJ3?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c30cb1c6-52c1-4911-dd84-08db825ccbe0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 22:18:47.6113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rrih9xkhA7tXPLfKAZVeflY/7Di/tAdSIcR9InB1Ptgbm1nvxXa/KNYWXnomHfDD7qMroW7Tecb3hUOswwDWTscCvnW2Ic7DA2b0KMKQygQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689113934; x=1720649934;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iDCwzHIBkPSxYFUulCQIhmWAyoVheYUsIQoFF0Zqwpc=;
 b=J5NnjB+oe1YUlzr06nF2vWDO4lnV9KPT/3HOmOboRR7Dwk46kCOfNt/S
 cawS6fCZiq3dFnnbB2rWzg19WwDhZW85DGIpYOOnBrxh3cemK5M5I2Rp4
 84fJsTBCbIShc0hOficvgCqlZS//Wbqv1RrZ54hTYeI8dEO3KhjWbyvZX
 +pW1qUcp3SkkokXMH5dmR9aMHhZ5+WRWCqHj4n5Fm4JuiXlHM+Yu5bYXd
 O0NQsQQycttgczFrjVGiHXOeqp2v3TzLoTakwHBYvMUCBEs7GGJ/7kDld
 8LCS42o9cwVMaE/TMUu3a4tjorjs7oI/7+2gIuNHcklss9w/J07q6MK57
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J5NnjB+o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: add FW load wait
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/11/23 14:27, Jan Sokolowski wrote:
> As some cards load FW from external sources, we have to wait
> to be sure that FW is ready before setting link up.
> 
> Add check and wait for FW readyness

s/readyness/readiness/

> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
>   drivers/net/ethernet/intel/ice/ice_main.c     | 41 +++++++++++++++++++
>   2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 20f40dfeb761..531cc2194741 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -335,6 +335,8 @@
>   #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
>   #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
>   #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
> +#define GL_MNG_FWSM				0x000B6134
> +#define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
>   #define GLNVM_FLA				0x000B6108
>   #define GLNVM_FLA_LOCKED_M			BIT(6)
>   #define GLNVM_GENS				0x000B6100
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e3245ee635b2..48991c6e94f5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4561,6 +4561,35 @@ static void ice_deinit_eth(struct ice_pf *pf)
>   	ice_decfg_netdev(vsi);
>   }
>   
> +/**
> + * ice_wait_for_fw - wait for full FW readiness
> + * @hw: pointer to the hardware structure
> + * @timeout: milliseconds that can elapse before timing out
> + */
> +static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
> +{
> +	int fw_loading_register;

perhaps drop '_register' part of the name

> +	u32 elapsed = 0;
> +
> +	if (timeout == 0)
> +		return 0;
> +
> +	while (elapsed < timeout) {
> +		fw_loading_register = (rd32(hw, GL_MNG_FWSM) &
> +				       GL_MNG_FWSM_FW_LOADING_M);
> +
> +		/* firmware was not yet loaded, we have to wait more */
> +		if (fw_loading_register) {
> +			elapsed += 100;
> +			msleep(100);
> +			continue;
> +		}
> +		return 0;
> +	}
> +
> +	return -EIO;
> +}
> +
>   static int ice_init_dev(struct ice_pf *pf)
>   {
>   	struct device *dev = ice_pf_to_dev(pf);
> @@ -4573,6 +4602,18 @@ static int ice_init_dev(struct ice_pf *pf)
>   		return err;
>   	}
>   
> +	/* Some cards require longer initialization times
> +	 * due to necessity of loading FW from an external source.
> +	 * This can take even half a minute.
> +	 */
> +	if (ice_is_pf_c827(hw)) {
> +		err = ice_wait_for_fw(hw, 30000);
> +		if (err) {
> +			dev_err(dev, "ice_wait_for_fw timed out");
> +			return err;
> +		}
> +	}
> +
>   	ice_init_feature_support(pf);
>   
>   	ice_request_fw(pf);

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
