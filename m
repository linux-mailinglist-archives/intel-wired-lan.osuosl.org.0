Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDC3786063
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 21:13:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79AC081491;
	Wed, 23 Aug 2023 19:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79AC081491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692818037;
	bh=nqk4I94A1VyOBuSr/KMohM9wmXut3miX0cdYFSd+uhM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nPFI20UDOv1RbRBC/K3dsRpRYUkOl2zWepSqcpF/mtMW9criI9InSvnG6SWzvx2q/
	 zCf6IhAk9tUB9D4Xu+g6w7c10DDSwjrmgEudG6A1d0EiHvi9i8kKF9zGEgcvId8C4T
	 d7/ta0a3gAcm654ny1XWaqlqatIYxdYNUq18aV0pmmmdpL4L89OR88gwDA8WACqVoj
	 2AFFDVGKQQfnJR2yPWQUqppm7T74VSsuWnfOxAddwAxayk4kZ+L8exvCqrxajEoJR7
	 0QCD7tw+H/276+zBdHhlGXBLvthR2jaiFhLOnqQZ8Orh0HOZlT/fjtkqb+O810AP+e
	 polYmHdnk25Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbchcIUKN3FX; Wed, 23 Aug 2023 19:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3594E8135E;
	Wed, 23 Aug 2023 19:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3594E8135E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E33021BF340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAA148130A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAA148130A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DCF6iHzb94aN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 19:13:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31748812EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 19:13:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31748812EF
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="359235484"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; 
 d="scan'208,217";a="359235484"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802249903"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; 
 d="scan'208,217";a="802249903"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 12:13:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:13:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:13:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:13:39 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:13:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6+ZO//FQdTWPhvq0uGpoNQKSDAQpEwFFbnMM8ncO4+6uCAuKPClc10I71yvSvfvPXgBAlbisWzuZhrJ5sF0+rkjGIiP0E/Clk7CtTdDC+pI0+gMeNdN7jrhqTpNjHGQ68/ObPIWZFU38npRVDXVxz2mD1LzQ+PBZdQLcUhrL/b9MNnH5GZxMNuaysvWFxr2vAWXxzFpD4U29WXWsHOh4sLrv2jyTJCuTxySt8s+2qaa5zGlSIDHVA9PiXXILnNF4dWxZwMY8gvjDLkf3FqjaJdQf8/2AhuQ5S+VLXNDT7XoMZVOmoYaJqg7MvqVbf81GhMB4C5hnVGK/IaOvG+qoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uT8kmkce4nZdd1byIdwZF2MqLMfYX00LCFN4k8JCDtE=;
 b=T5byReW17/Wn3gdXDBXkxwR9DVMxQwPKUXfpBKEz+Mq4qsKsKTyfZHYgJTqfzrEa1kMRiD3qjH6AQhe9DMdLV77+FyzRDcj7lGDAz9MFviq5xT3sxKnsoq4O0I1ncBH5Tkj4I0oY9wZWVDxrQ3ETvWuqRch/2qKPMSPJ2BkILYA/BU099YjcQOodsiGLSabeTTydwC+r1fuLL79SiG9ZpR6fcY85nM5CbD0eThd7lhtsOBa+BmkyZInIJq/HHZcijcJr5/w/L/QuXGhRLeeMtbhGh6h1CDgSIKlNn0jHG44OW/C2yfRyyl18wc42gcyKO7/LI/cuL09R5aDL+gvT/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 19:13:36 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::4536:8199:4bbf:131f%7]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 19:13:36 +0000
Message-ID: <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
Date: Wed, 23 Aug 2023 12:13:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <ZOTVkXWCLY88YfjV@nanopsycho>
X-ClientProxiedBy: SJ0PR03CA0183.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::8) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|PH0PR11MB5951:EE_
X-MS-Office365-Filtering-Correlation-Id: bd5b4df6-d5e5-466c-b6c9-08dba40d0d19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0bn8ZXr2TBhz2GuzSmWP/U82FpPmL1PVzvlXSI2ycbKTsUbW6B5QWMwhxJwc1NE50pP0x81DsJh9X21ikvWy7kquxGbBXIjAjJxbGdmW7nRzTXDTlRK3Fl5XU2XjvLmEE+Ntt8WK+uVcOORCIG1O2Za2mo7Wv2nAVZpu98ErcmAIp2FsHO5oENkZ+4VFVvFXnpTR+lH9lVnCcazYukfg6agxvO4VEi5QBs0mKDBtrRy52poEQLUNCzM/xSaX1rUDs1N3Xzp2eTlBX8NKWEDPEd2kKVn37TocHkp5tsmuEjSnt049+e3E6QzwZsF5DcXeCBlYNwYcqfO+LSfl7JVVDTOgimAYnT+OnmYbXEsEiIjXWS9k+KAR+vr2SPiudjYBiovY7DGqCqhfZZTihX/89DMaPJjTDkJVLQ1Wm6JnJWw2BQdT5zct+QP4J3u43cp31MeMxQfPXWleJe/mj+I3Pdb+HRDxK4naVlYaGKSjRckH5bDym6tmUQKTP6iJHMkgvwOP0MqFngAYHjopQUQI9KMO7NyfuNKry19R5vdodn5m+tVAIQ4cLueodolnHMd9TufbKK3LAducow/dIdOtXxpwv4Np32UnCBiENEkq2M1AzOrlsZ1HU1QHD8/Yt2y6usjCtOFLPzf9+ruc/rPirA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(66476007)(66946007)(6512007)(316002)(66556008)(82960400001)(110136005)(8676002)(8936002)(107886003)(2616005)(4326008)(36756003)(41300700001)(478600001)(38100700002)(6506007)(53546011)(6486002)(2906002)(31686004)(31696002)(86362001)(5660300002)(26005)(33964004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnZib1IrRklPME96Q1VRb1RFT0dPZ3B6UHdDQjNNZzFza2FIazJxYlZCSldu?=
 =?utf-8?B?RmxUWFJEclRWR0dMLzYyb045ZlYvYnNld01DSGJYNm1mL1lQaGE3RlZkbzJU?=
 =?utf-8?B?L3dJc1RvTks2RzJDVXJlNnVGQzArRjRMNW1LQTNpNm5kNUhsQllySTN1VjZt?=
 =?utf-8?B?ZzY0VVMvT0dvUGJiTjdoeHpOaDAvM2lVM0ZvUVByN0JZQVFDS2haUzNXTDlr?=
 =?utf-8?B?Y1h2SVgweUk1WnByMWRJM3BsZzlqWkhKeG85T1cyT0FzMnJsL1p1V2FZemYz?=
 =?utf-8?B?YkVVL3VnS2V5TDF3b3FoSGpDOVpjN1RpeHJZUU04dGF0NDgwV01NUHdHOStF?=
 =?utf-8?B?SUFsN2gvZ20zcXZ5dm91ZGxvUlBRMllNUE5uVzNldjhqN1E4SjhTZ1Azckg3?=
 =?utf-8?B?WE9Va0dCa1NMVFMvZklGbm1mMFZBT0FJWW9WTGJPRW1kdGp0T0MzNlFkZW14?=
 =?utf-8?B?Kzc3UFpneU90VDZDc1Vod2dteExHU0RWNDlqblhTVW5JQmRuSm1yRFZRaERo?=
 =?utf-8?B?MnBKUzV5RkdHcGdUOFVualZwakJET3kwc0xLbEdrbkE0OWxEUFBjTGpxa2N1?=
 =?utf-8?B?WkpZZzIzYThqVUptZHMzTnZQRTFyRDQwdTM0SWNrYjZCRUhEdTRnSlVwZG1L?=
 =?utf-8?B?UVd1V2hWQkRDMExDVktZRis2QU84a3FIMURIcVF0djkzTXJ1OHRIaEdVMWMz?=
 =?utf-8?B?QTh3ejlvTVdydFNtOVBpOTM3VGw3ajFGZEJWOThmQjJQSzNBK0hLU1dvSkpL?=
 =?utf-8?B?SGNTN1hxY09BUGRNVDN0THdIRnNvaXJ1T1F3U2dMd0o2VmFwTVVKMWpubUZ2?=
 =?utf-8?B?bGdzUlZOTXFPZ2crdUd2RTJabVlSc0cxSmpZRWgzVEtYVEt3K003VmIxQ21q?=
 =?utf-8?B?dWVBVHRoZ1d5bFJ1eUN4eVZWZmVnc0pYc0R5a0tjK3BFSFhuT1FrRjFwVWdv?=
 =?utf-8?B?ZC9HYkFWcEVMNFdselcyTmtOa2RiaTR1eVFlTmNXRW55S0ZqK1MvSk5CcERV?=
 =?utf-8?B?UDJNNzZBcDZrdnkvbWxhbW9NdkY2TFdqajMzcG82K2s2SDNXU2dJb0NoOFo5?=
 =?utf-8?B?blpRTTkwSldZRzJ0a2pWak1ERVUrZ0pQcHNFSys2TFRXN2ExRnZEVjB5Skd3?=
 =?utf-8?B?dTRtWnB6enFqUzBpcHJmODloWkF2TUhiZmNhVXN1WEVlVVRkVlR3ZUR4cHBH?=
 =?utf-8?B?RWdmY2l1elBEdmV3NUdYa1Evem5oS2NRRHpVLy9Mcng2WmFYL0svMk5xVHpY?=
 =?utf-8?B?U1FUcG43RU90RW9ONGNXM1RGNmVhcWlrNUVtOVJTWDdjQTJORTBZYXY3UDIx?=
 =?utf-8?B?a3Y2NFpIRWpCTFpCcGo5OEVBdzhhMkcreTlVc05NZ3JwNE9ZMW1XYjBPK3lV?=
 =?utf-8?B?QXNXZ1RtUmwzdnZZTjZGR1YzRHUyQy9LaU4rbkdodWsyZG1jQzZFMC9uWDFR?=
 =?utf-8?B?UHE5RDZTREZUWDdYVmhMZHoya1MxRlYzWUpkY1Rta0MwSXZtNGVpdjJLT3ZH?=
 =?utf-8?B?L0NTWTRLK2FVbnRpR2twZ3V5dEVtb3NiYXZqOHI2NGVLVzZzbkhkdVkwcTl0?=
 =?utf-8?B?Y1ZXQ2NmTWdTYUxCS2htWkxzOUZhY1JadzRUMFVKaVZNSFc4TFc0UWt2dHIw?=
 =?utf-8?B?R2RqanNXbktSVGxtYU5ZTzlpVElHdjhNR3NYTW1JTmZKSWxrdHVrdnF0ZWdz?=
 =?utf-8?B?bzVBTTZNSi9hR3JtV0kzbUZZYjZkMGtWd01jL0JIdU5Ra2lBbDRlejBhVGZ4?=
 =?utf-8?B?dmg3OWwyWXJwZEN4eUhnR3dHdFFjYXY3K2d1RGFiZjRJTzROSTFsek9LTHps?=
 =?utf-8?B?eUg1cmFadG13bUJGdndLNHhYNm5sK1gwYjlkZGx5T3dDUWp2cG15MlhpYW9L?=
 =?utf-8?B?M0dwdXdSUldacDZKcnd2QkpTSkxBN25QQzk3RmpYckZDMFJCV2tIeW5mYkpm?=
 =?utf-8?B?ZUFCV2tkMUMwWXFjcUd2aU9MZGt4S01JK1BWTDZIWXl5cWFVMGxZNW51c0Rq?=
 =?utf-8?B?Yzk3bks2SXM4S2pMcmJyVHg1OFJ4M2NLZjI5a1FodFNVVENDajZLY3JDc2xk?=
 =?utf-8?B?dlUrZ1JndS8vdkY1bmpLSEhsSi9mMXZSZXlzQnB1NXY3dEhnTm0xUFUvMzN3?=
 =?utf-8?Q?tQIK0zfKWG/SyhwcAD7jm5fb4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd5b4df6-d5e5-466c-b6c9-08dba40d0d19
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:13:36.5687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jleoo+Usrrrv4n3g9mPDxXO3XFth9sjltN91UiFIJGAiXs5/H8zRreGWPOAIIFtSXTabZ6GNAPex+Q4dIJh0fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692818029; x=1724354029;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=JRt4QVX6DdyrubqvufZF+VjX6vPaQ2AfFGGh6NHrCic=;
 b=JKoecKxxrPmk/Miveq+7s3TGimU99KU4egy/BK6Nwj2vtrzfqnuN0bC1
 MyQZO+MykGJWVvnD4o2IVtCoXiwHGS7zC4pdQZqa5VfRIufiE8heAICpS
 8vnWb2asAKnCcJSz5LCZ1Eib1fpKgpzpzKbXSXla1CZC8S1Nw6iJP71Ng
 bIFVcYofex1Nwh6Gxwa7tS9eg6iDJDSlK/0yY0ihcLLsjgNhwBnTiBdrA
 eT8B1EQBvEAdy+rF/qWxKi8s5oyqqZsuU4EXgdnZUW5Y9PZcI7Nv7Z4LC
 hEda/4Yx0Nq+XUadFfan7dBLKQc4/e729pnjiVHcZ9XKiwcNi0QQW+2Ev
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JKoecKxx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: multipart/mixed; boundary="===============0698787710343587326=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0698787710343587326==
Content-Type: multipart/alternative;
	boundary="------------UfMOm2gAyMHIrbnZ0LJqh003"
Content-Language: en-US

--------------UfMOm2gAyMHIrbnZ0LJqh003
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 8/22/2023 8:34 AM, Jiri Pirko wrote:
> Tue, Aug 22, 2023 at 05:12:55PM CEST,kuba@kernel.org  wrote:
>> On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
>>> NACK! Port function is there to configure the VF/SF from the eswitch
>>> side. Yet you use it for the configureation of the actual VF, which is
>>> clear misuse. Please don't
>> Stating where they are supposed to configure the rate would be helpful.
> TC?

Our implementation is an extension to this commit 42c2eb6b1f43 ice: 
Implement devlink-rate API).

We are setting the Tx max & share rates of individual queues in a VF 
using the devlink rate API.

Here we are using DEVLINK_PORT_FLAVOUR_VIRTUAL as the attribute for the 
port to distinguish it from being eswitch.

--------------UfMOm2gAyMHIrbnZ0LJqh003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/22/2023 8:34 AM, Jiri Pirko wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ZOTVkXWCLY88YfjV@nanopsycho">
      <pre class="moz-quote-pre" wrap="">Tue, Aug 22, 2023 at 05:12:55PM CEST, <a class="moz-txt-link-abbreviated" href="mailto:kuba@kernel.org">kuba@kernel.org</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">NACK! Port function is there to configure the VF/SF from the eswitch
side. Yet you use it for the configureation of the actual VF, which is
clear misuse. Please don't
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Stating where they are supposed to configure the rate would be helpful.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
TC?</pre>
    </blockquote>
    <span><span class="ui-provider en bra brb brc brd bre brf brg brh
        bri brj brk brl brm brn bro brp brq brr brs brt bru brv brw brx
        bry brz bsa bsb bsc bsd bse bsf bsg bsh" dir="ltr">
        <p style="margin-bottom: 1em;">Our implementation is an
          extension to this commit 42c2eb6b1f43 ice: Implement
          devlink-rate API).</p>
        <p style="margin-bottom: 1em;">We are setting the Tx max &amp;
          share rates of individual queues in a VF using the devlink
          rate API.</p>
        <p style="margin-bottom: 1em;">Here we are using
          DEVLINK_PORT_FLAVOUR_VIRTUAL as the attribute for the port to
          distinguish it from being eswitch. <br>
        </p>
      </span></span>
    <blockquote type="cite" cite="mid:ZOTVkXWCLY88YfjV@nanopsycho">
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------UfMOm2gAyMHIrbnZ0LJqh003--

--===============0698787710343587326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0698787710343587326==--
