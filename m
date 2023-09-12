Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E779DB90
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 00:05:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B60AF81F5D;
	Tue, 12 Sep 2023 22:05:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B60AF81F5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694556341;
	bh=QIuJ04MtcTu6hDx9PTl94ukMcXOitIB6GoD+0fGkfp4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HiVmTlIDHnEAjO3Smba/oxH7VLH4yrwGEXQzAv5NZjpn9XcYpXTkNAdECjZediFVn
	 W3vwaL84/58A74alVt8RAM0IrzAUZsQjQRJg6sS+t8oidcSIRDeP25Ci1mno3nFr0T
	 zo3HioIFoE2bfTJF6tpV2BQljk1YkEVUowVru3Fbd+O/GOyeYAsYZ5UpmiaienENPX
	 w8/D3s0iV0yOBLGZB1wJt6dc0gxz43muCEqqr2fG6VAZ8otj3Mw39864iHVOsJqeX7
	 uahpbdLuRapDneyJeX+9qSXgGbZh1A0b+kTFyOLNbj984GItJ95U3k0anQHwvHql8j
	 fM3AQTIfeQuDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ie-2Wgt5IzZJ; Tue, 12 Sep 2023 22:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E99481C81;
	Tue, 12 Sep 2023 22:05:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E99481C81
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 532DD1BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 22:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2EDFD60C33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 22:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EDFD60C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAqVoNJDdgto for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 22:05:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1143D60B1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 22:05:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1143D60B1F
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442526990"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="442526990"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 15:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="737238562"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="737238562"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 15:05:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 15:05:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 15:05:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 15:05:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGfGeABtX8u7wO5Ht5ZtTWdY7NEmtCL99CTx1QJWWbWUedjcCaRQkJO3ulnLxrIVjnVoNpeRRb3tvnPtYummYXVXyZzQki2tGZdWzffRvPqW7favVmWHo6b/L4xp1xRfHsunw9auDHGFfdHHYRcgp7ygfkIXaFOMxs5gRH3U7eVPvq85glDZUOM/d9ShMXiqx39LnPPxgirVnPSIX9t5p3vy0/Khsp8aMZTAVltqmL047S/ge/CUMI8QwRkWOPPGSN15DlL3YWEWuV+umAFoFR0/xm0nytXSYmGApxBJGoe7nD+RQh993yC0Z7uaWWcSoJpK8+HV+unvgbJxy6Sbgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qb7w/hJ7UGyn26I/Y+4wCFwmwTw/wArS4qWGcUl5Cck=;
 b=AyzOOSBVDkf0KBmVlk6y/lqLPXrBOtSX7MQCVohH9qvR++frS4ZoUR8rCcB9MD0VWj4DMc0CljbgTrBidlPAzXop4dN4heyt3sdjxD8TuW/f1wGT/0me7uW/Aw4M5SJQVxsnEyAe8AwKuN9O6C+pP8X+HQHeA1USmyyGeozYJww45nrHY8QM6Roq55eUYwxWyjc9QWEV6MWvMjhqcE/qAko1mFRFl8ZX7JABCZEOKk2Llsq7KjCGOBvlM6KJqDtKqmd0X5Tw77UIInkKw7C3glBLWFRpYXT7vsxdEtuegiy2tdF/gRaMKO/sEE3iTiq93qVLTZg7/exIjLwj/L2z6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB5504.namprd11.prod.outlook.com (2603:10b6:5:39d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Tue, 12 Sep
 2023 22:05:28 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 22:05:28 +0000
Message-ID: <b0160964-6512-dcfd-a3b4-2eabaab00633@intel.com>
Date: Tue, 12 Sep 2023 15:05:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20230908085925.423883-1-mateusz.palczewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230908085925.423883-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: MW4PR04CA0301.namprd04.prod.outlook.com
 (2603:10b6:303:82::6) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB5504:EE_
X-MS-Office365-Filtering-Correlation-Id: 096cac9d-9450-4312-51c8-08dbb3dc5fc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: emWYmNCxpfxyrgkcSmtnYWgkSyv0KbEn9T5qszlcAkt9+0OGLnoWEA04Pz6eUcX1XMm8qacIAt6aXDz4ylDTWsbsWHo/LxmO8PhbUnEM15zHMfZG5GiLaympJcM57L1k0h5QFN5V1qTLU+ZekNVkvEYqOxvDoF2U+msMmxJ4xi00Fy0a4BJc73GcLY3lDmW4j+sL3Zndh48QHvXHxfa6q5YJBocFPVn3ycGlp81F6ooUaMvn5WdaSeLct272J8BmcEej0H0KNFKx0gDnO5ogri0Q+Eb6wQrEjdqvBy44iAvp/RWVg9Yp3lM6rezYeetie/VzxqcBAjEywfpC1yXg2+RLPH+zmAuUvEUqlGVT9wlwSxHUItIdV/q2hrZ2/DniDbyJGehrXvkTTZbWB8z8PMcuMrRHnXNs/9remFoh6VNZdtwtiGBsonAogRui6L3URNE1xxIKbShaQwuwGeZbbQLwYj3QVuww+ykaj9xuKh1z7YWO96y445bMhq387x/gVBiQ0/E1enbA9FDnuaVG+jNZ/UDWr6wQlezgglBB1NS9NsHRY/EmhP/PwzSfcDrZ5x/8obVSCb8PXCih3a3iYNQUrxQya+20cdfo6vTFs/OFVldwS7qoRtP29WVcgMDUFD/uDba3A/4M/PcwmGCbeA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(376002)(396003)(366004)(451199024)(1800799009)(186009)(6512007)(53546011)(66476007)(6506007)(66946007)(6486002)(26005)(2616005)(41300700001)(66556008)(316002)(5660300002)(8936002)(38100700002)(478600001)(110136005)(82960400001)(83380400001)(31686004)(8676002)(6666004)(36756003)(2906002)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0FLOHJHcnluVi8xVlp4NllSbU5yRFNOeHZmY0tDcU5SWFVPQTY1ZTh4YWNL?=
 =?utf-8?B?NmdRR2MwVFlxWjh0ZDZBaTBOU2RsK1dpaFNuTjUybWJ1N2daYkJLZkFvSC9Y?=
 =?utf-8?B?SEZrM0F5Tlp6MzFYVzBGMm85c3NrdlJIRVdrSjZCOTlXNGR1MGVKVy82QW04?=
 =?utf-8?B?RmFlbk1hUUp1dVF4U1BCU2NPVHB2SW1XT1hHNWprUzFya0tvNFJOL3dBZTBH?=
 =?utf-8?B?dnM0N3BwRUhCTWN2QysyMTZQNDV1Qlg3R1VrTG04OXNhTGZyTGtncmRNZUVW?=
 =?utf-8?B?UG5ZVmtFbjQxeUZQOEtRZWJ2VXorYlQzb3JEZWNjK0x3SjFhTjFpS3ByQUc3?=
 =?utf-8?B?WTJXR25ObmFrU1d6ZjR6cW1zMGdVUGtNTnA1bVBxdVR2Qmd6T1pmRmZyNVBh?=
 =?utf-8?B?YVRPZ3NrUlRmSk9kNkx1SjZKYjFKUzBZd3NtYmZJRUZWaHBVMWZLM2Zram1T?=
 =?utf-8?B?bnpqdjhxb3F0YTRhMEJ4WGZSTHYyUC9jL2l4ZytwWk5IS2ZYN2VBaWRKQ2pK?=
 =?utf-8?B?ZDJscmQ3OWwwRWY0Q2Z2eDhpY2h2OER0WDJOZ09pU040WVVMRCtBckJhcTM4?=
 =?utf-8?B?dTVMWTBOVzY3ZCtMZXhvbXZ4OGY4aGwrRjVwL0VTdjRwbTZXQ3p3cGpDb01E?=
 =?utf-8?B?QS9GNUJkTitKUXorK1B3L1lTTmhTOVRHZ3Z2Y3kyUVNFYUgrZFdmUVhWYTFn?=
 =?utf-8?B?aVFNZ1dsUUIrWldRNjEzc0VxdTVXbWlrZ3dqRFAreGFnTHZ1SVBUSSt4cUNV?=
 =?utf-8?B?M1h2bnhEaHdSR2JJNnU5eXJvdkxDK1NvNFE1cllxY0NKV3dvTkNtMEJPNTdO?=
 =?utf-8?B?Y1daMWI0QnRsV0k1SGs2ZDNjT1BxdGhFQW5nL3FvdFJhakNybjVUSDFyNncx?=
 =?utf-8?B?TktTNVptSVQ3TkNzdjhjS0JCeEx0dEljSk9vb3oxZW5vTVI1NlptTHlGK1l3?=
 =?utf-8?B?a0JRSVhhVEZUT2FueTdwN3BjbjcrOTVNYmhBb2dZMXE1VVZidUIvU3J2K0s3?=
 =?utf-8?B?eEJibU0zL21jM28xbnozOC8rU1dxckRqWWtISUpONGRrTkc4UzBqOXBZczd4?=
 =?utf-8?B?Y1J2eUVWLytYdlZ3N1ZMQkFyY3ZxaVFaTWx1QmdiVFE0SnhYRDV3R2F1VVNx?=
 =?utf-8?B?MVIzL3U4Y0d0cSthejEzL2RRU0QvN083aFVYYkxHRjRaWTU0WGEzajlCcGhQ?=
 =?utf-8?B?T05aYUlJYjRvejNXaXFIaEk2ejVyOTl1QjNBRzRiMTUzM0ZscjhqVjd6a1R2?=
 =?utf-8?B?ckdpaTRTRjh5YjJNTkRYMDdnZkkyTW5ZUE9oSldRL0lTc1B3azkxS3U5ekFx?=
 =?utf-8?B?YkptQ29OZU54WnB0TGoyNktTRVMvbVZOK0tjbmErTjA5OTNod2Z1Vk5DdFc4?=
 =?utf-8?B?ZWlYY0FIT0drNGlPVVBGalU2SEpEWkcvaGZOUDVmSjJ1NDBtcFQxTlNyQVJP?=
 =?utf-8?B?OGxCdjNoclBONmtWVU1yNS9kM0VmUXNSOVcyL0g5bmYyR2NOQ2J3UjJMeWVC?=
 =?utf-8?B?S0EzSFZQcWpoWXZIZ0dyQTFCQzBrUElRejJETEpQUlhxWDJmQkgzRmo4eUp3?=
 =?utf-8?B?ZE9Pckp6NUVPSktDWE5UNmJUcC9TMTlxdW9zUUdYWVQ4M2NBM2EwV0U4NWsr?=
 =?utf-8?B?Y1lrNzJ1VVBRVjJaUGE1TW9FV0NDNkJ2Y1RFb0F0ajBHbjhEZ2F6ckdwcGp4?=
 =?utf-8?B?WTMrajMwTTRweGdSRzZZQndoa2NxY1hhaDI3NkRXaU9KS3dzZGprUEtCTjdD?=
 =?utf-8?B?R2xsem9KdVB6NGt5blhSUkd4RW50cEZXUHhyVTc0allDQ2Z6WkJyZHdXemRk?=
 =?utf-8?B?WTQzL1k5MnBtRFZwbk02Ly9GbVRoTUkxZ2wyMEdSeEhxalUxNlZ6UTdlcmkz?=
 =?utf-8?B?VmtYM2V4cGFJMEw4aFBDNE82clcwTlFSbDhlWDdlei9yekQxWHpDS1pEV0hQ?=
 =?utf-8?B?aEMxYWM4VlB5YTdxMm1tcVNpUGF4THNDK21VMllZNGY0YVVSSEdwYUZsUnlF?=
 =?utf-8?B?MzhYbk5RNW5NV2szT1drem8vRzRRVzBQZWpEb0dRY0RPWFBtcFhNbTNuSlBP?=
 =?utf-8?B?bGQ2WkUwRDJxR2pqY3pHNzJSSUlXbnVtQjFVZTJGYkJiblBPK0t5T2o5SEZi?=
 =?utf-8?B?RE45by9LQUYwcUdqOTVxTng3RkVpL3lxQTlzOWNYeHgwVU1MUTY3bHltbVNp?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 096cac9d-9450-4312-51c8-08dbb3dc5fc5
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 22:05:28.6060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YB9HMJFR5nlbcf647NSbjdpqsMXQJw8WWI0ta94DKOuSUtGH1vFJEK12R6NuPdhZ0leiDaTb9yJOukQ5MNS08DYALzOCLhtAi466G+PJD7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694556332; x=1726092332;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0ZUsOcAm9bQfX3x/ZvHZ/0yOIa/c0jZ4V1GcdTG/TPY=;
 b=LT2HZPCccMuyMn/bLXa+U47fhrVBskua0GWRemAYcFb8YReE9gV/Mi1g
 BXRUnRrLlDZApKkYwTM9Z5WvBEHb29RtpD/sJnjcoA3jVazOQfHg5JYF2
 555PqNk6wXIBLTIN98dzvqftreGEinDB+P8nXJCNYwEUjmxnBpu6SpUNv
 KMM/2v1jGToD4qtIB0qRCEnRPe5AAokXYX/OVhv234GUUg7gsTg6drzor
 /7h7idNYZrVF4nBKqdy6PYoC0folqFDmm2HvAUceAqLC1M1h4ttE8Z7ik
 qnA8CA5llSJdVDQwJ8wK+uPPDaC0Z6+TXYmr93BQMHUvDCD/Dr6sevrIP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LT2HZPCc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix call trace when
 rebuild fails
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



On 9/8/2023 1:59 AM, Mateusz Palczewski wrote:
> In case rebuild fails trying to restart or unload a driver lead to call
> trace.
> 
>      [  128.876458] BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
>      [  128.884417] PGD 33510d067 P4D 0
>      [  128.887776] Oops: 0000 [#1] SMP NOPTI
>      [  128.891571] CPU: 6 PID: 2141 Comm: ethtool Kdump: loaded Not tainted 4.18.0-372.34.1.el8_6.ice.2117361.repr.x86_64 #1
>      [  128.902308] Hardware name: ACCTON BRIGHTONCITY/BRIGHTONCITY, BIOS IDVLCRB1.86B.0021.D40.2112020610 12/02/2021
>      [  128.912351] RIP: 0010:ice_vsi_setup_tx_rings+0x26/0x80 [ice]
>      [  128.918163] Code: 00 0f 1f 00 0f 1f 44 00 00 41 54 55 53 66 83 bf da 03 00 00 00 48 89 fb 0f 84 c9 38 05 00 48 8b 47 28 41 bc 08 00 00 00 31 ed <48> 8b 38 48 85 ff 75 21 eb 3d 0f b7 93 da 03 00 00 83 c5 01 39 ea
>      [  128.937060] RSP: 0018:ff78a8b908183a10 EFLAGS: 00010246
>      [  128.942417] RAX: 0000000000000000 RBX: ff4a4174c104e818 RCX: 0000000000000a50
>      [  128.949683] RDX: 0000000000000a4f RSI: 641269b8ad24144d RDI: ff4a4174c104e818
>      [  128.956946] RBP: 0000000000000000 R08: 0000000080000000 R09: ff4a4173241b9b30
>      [  128.964208] R10: ff4a4173241b9b30 R11: 0000000000000000 R12: 0000000000000008
>      [  128.971475] R13: ff4a417570650180 R14: 0000000000000001 R15: 0000000000000001
>      [  128.978741] FS:  00007f18a268e740(0000) GS:ff4a41823ff80000(0000) knlGS:0000000000000000
>      [  128.986961] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>      [  128.992837] CR2: 0000000000000000 CR3: 0000000109e8e003 CR4: 0000000000771ee0
>      [  129.000103] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>      [  129.007368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>      [  129.014635] PKRU: 55555554
>      [  129.017473] Call Trace:
>      [  129.020054]  ice_vsi_open+0x29/0x120 [ice]
>      [  129.024292]  ice_vsi_recfg_qs+0xaa/0x110 [ice]
>      [  129.028874]  ice_set_channels+0x18d/0x3d0 [ice]
>      [  129.033549]  ethnl_set_channels+0x3a1/0x410
>      [  129.037865]  genl_family_rcv_msg_doit.isra.17+0x113/0x150
>      [  129.043394]  genl_family_rcv_msg+0xb7/0x170
>      [  129.047708]  ? channels_fill_reply+0x1a0/0x1a0
>      [  129.052282]  genl_rcv_msg+0x47/0xa0
>      [  129.055901]  ? genl_family_rcv_msg+0x170/0x170
> 
> Fix this by setting ICE_RESET_FAILED when rebuild fails and
> clearing number of qs when rings are free.

What's the situation leading to the call trace? Do you know why we are 
failing rebuild?

> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v2: Add dev_err message about rebuild fail
> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c  | 7 +++++++
>   drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>   2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 0054d7e64ec3..09190457113a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -321,6 +321,9 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
>   
>   	dev = ice_pf_to_dev(pf);
>   
> +	vsi->num_txq = 0;
> +	vsi->num_rxq = 0;
> +
>   	bitmap_free(vsi->af_xdp_zc_qps);
>   	vsi->af_xdp_zc_qps = NULL;
>   	/* free the ring and vector containers */
> @@ -3157,6 +3160,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>   	struct ice_coalesce_stored *coalesce;
>   	int ret, prev_txq, prev_rxq;
>   	int prev_num_q_vectors = 0;
> +	struct device *dev;
>   	struct ice_pf *pf;
>   
>   	if (!vsi)
> @@ -3166,6 +3170,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>   	params.flags = vsi_flags;
>   
>   	pf = vsi->back;
> +	dev = ice_pf_to_dev(pf);
>   	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
>   		return -EINVAL;
>   
> @@ -3206,6 +3211,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>   	ice_vsi_decfg(vsi);
>   err_vsi_cfg:
>   	kfree(coalesce);
> +	set_bit(ICE_RESET_FAILED, pf->state);
> +	dev_err(dev, "Rebuild failed, unload and reload driver\n");

How is this reproduced? How common is it? Forcing reload seems pretty 
disruptive.

Also, no need for a local var; use ice_pf_to_dev() in the call.

>   	return ret;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index b40dfe6ae321..becf7f0fcd4c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4232,7 +4232,7 @@ static void ice_deinit_fdir(struct ice_pf *pf)
>   {
>   	struct ice_vsi *vsi = ice_get_ctrl_vsi(pf);
>   
> -	if (!vsi)
> +	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
>   		return;
>   
>   	ice_vsi_manage_fdir(vsi, false);
> @@ -4746,7 +4746,7 @@ static void ice_deinit_pf_sw(struct ice_pf *pf)
>   {
>   	struct ice_vsi *vsi = ice_get_main_vsi(pf);
>   
> -	if (!vsi)
> +	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
>   		return;
>   
>   	ice_vsi_release(vsi);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
