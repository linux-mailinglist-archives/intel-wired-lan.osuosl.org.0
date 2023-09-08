Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1087990D4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 22:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEF1C4136C;
	Fri,  8 Sep 2023 20:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEF1C4136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694203667;
	bh=D3dTELgFEtt6pe4xD0raIBJlari4oewCNyzaMT4Kgqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WGaUndgThqSn0JmH6C6yyhyj0Xl1na9qO4c/RPd2oFQPByssmGPrdndNW5b25iJzu
	 jZLd6rF6sqxA3zAHmfgPl96zzVBis7fdm91z4HoCv5P5TG+3w+irepUqYyvjPGePfD
	 j1T0TuQ3p+SwBVe40q/YmkxmB+tdnJPWzKkpnM7tePqQqzCDDSSCD/CrWrV1hGvXmu
	 9Lt3NMoV88E5P+6oqb1si3d5PzgRYMyNUvz4Yt7zkgLvv3sRy4ZL1a1YGMg5VAF41n
	 m+e/J8ZX51TsXZiO4v/OG2lA15YzF+Den15f1ZLetQ+ml4R1WFHT6uuGiK553cdY3V
	 iIawaSyyz2ozQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gj4yfDNLM12Y; Fri,  8 Sep 2023 20:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20438410DF;
	Fri,  8 Sep 2023 20:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20438410DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE0CB1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1E5140992
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1E5140992
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id amJzqT9dATJc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Sep 2023 20:07:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56E824097A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:07:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56E824097A
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357201294"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="357201294"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 13:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="885784755"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="885784755"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 13:07:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 13:07:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 13:07:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 13:07:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7RwmHUTgKIeHFkkedGCS6auKY8+Kle4L9zPxMHQJ3akWVDfDWNmh3V/GNfvCxv6ZA7k1VyPSiX4+/S1XY1GQvGNJzmshDeNGCcOmuxwzVdY8SWXoZrzR1Oqc2QgYzmccoQyDij28R0S2AEM1qAyT/Ocgbc3dPlMM65dTjqwyfyx488a52S7X1ostvek155KJjvXm+R3+2xBabXlu6SfQJyP3/2L5mYjepmFbrchlghu/LqQnLHFlxLfyWID8PML5ztX3n9euF4rE5ErDGOiSYxGbUWZoi5Lt9KYiQ7MhMti6NCL6ZkVa6E3HQ7RsNrhIXLKIe6Lc5Qy4Ph5ApnSUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uv0os8US0hK2Zy4k/rj33f+XuPdfDPccHeiPNfuQHNU=;
 b=ABFq66Pw7T3qPFP8dQRbZapLKEJ71jRnRjTCgxLbE/41PBNeCpBL9FuWjlvzA/qKFdKad7KCLtE0RZD7o/U5ysEFvuZq3Zkz3UUnkTFZtvlDG2shgpFJbOp6MFCXg6mUJoiMTyw9eUZbFJR1g684yTsor+cIFIQH47v0ZKtuHVf+ncqvbw1WOQrxt9eZSIbh8JsgziKyFbUHnaBE+0Fcd8IktWYW7/ZvtviISpIlLAOxZcWeygNwGstLJiMF3HBV+sCnonReI38z4mu5AkByl81DLM5L24+c2OQJjBfTSBkOmFxMxmOzacCXh5btdZHrmmggPOTNDK3BBusM4vJuUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ0PR11MB5868.namprd11.prod.outlook.com (2603:10b6:a03:42b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Fri, 8 Sep
 2023 20:07:33 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 20:07:33 +0000
Message-ID: <52be79df-f63f-5bd7-1c78-1b359decae81@intel.com>
Date: Fri, 8 Sep 2023 13:07:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Kamil Maziarz <kamil.maziarz@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Lobakin, Alexandr"
 <alexandr.lobakin@intel.com>
References: <20230907100049.138959-1-kamil.maziarz@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230907100049.138959-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: MW4PR04CA0276.namprd04.prod.outlook.com
 (2603:10b6:303:89::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ0PR11MB5868:EE_
X-MS-Office365-Filtering-Correlation-Id: 695f512b-1bc6-456e-1731-08dbb0a73cfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MuO5mZadgE+Wlm5Aa+hKVkiB0bIBp/AoNcrr+bIt8J06YiWsyd6jtmJmi4SlLnYytqXAECKNOKNpadS3AD3hngXIoV4Aectgszemv3087HZIwovOVJwvJwjxO6KPJR4JbBQDhjjJ8RmDgIjwlN5N+8GwKFfD//TV7gjrQEa+KPZ75NFoUaEFPh9PoYdPeXt8EF3RnPMf/pn5dkNoapaljCoh/XZwEpJhqem3Stn9+DL7NTzbtkjX2iBFq/PgVO7iPhHZgwfyAM//3MimLeCnM6q9UaNrnssb9WUIFQKyJDgC1YHOcKEiCiwz3xq4Eos87SD+aDaSZdQZTnXZamVhxAJFRPxBbCT/hu/4NelW0oPIENB++TfYvv83oFZfkV9noSqFc5XCgaamnlAz18+4xKsI2j7faBUAC0vs10cTlI4Je99eVW4I9ymlBz4MTSn6R43o9C26Dlj3pjuYJ6pQM4sbOB6gPydJO9gE6RLhAln/IvkvUjsKv/AAWazgP4Ti4fDMpISl90SiFEX6aAfeOWvn8cn8SgaTCnso8ZqMbC2KH5HpsgWY0NeVGfKAzRWTqDVL2uS8XLNNQ4fov9qeq82qMRaQfgnDK3FuNa7DuLPNp5lkKHVNE9Sqg6YSEZAyIHJBu3Rm6KSToIzC7/v+Rw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(39860400002)(136003)(366004)(1800799009)(186009)(451199024)(36756003)(31686004)(83380400001)(31696002)(4326008)(86362001)(41300700001)(8676002)(8936002)(6666004)(6486002)(26005)(53546011)(107886003)(2616005)(6506007)(6512007)(2906002)(66556008)(110136005)(316002)(5660300002)(478600001)(66476007)(6636002)(54906003)(38100700002)(82960400001)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHU2VmV3cHdsZ0FCeFlNOHd2ZFgxQ2tMQmZoRjNYUDRLazc2eCt4QnBZZGl0?=
 =?utf-8?B?ZDBLTC96QndURmpSWnNaZEJadnBGeVNBQlBPbklLeCt2ckpSOTBOWGdZTWkx?=
 =?utf-8?B?QmZiMnJmUzI0OUZadE5yWFhTSUozNWhxb2EyckJGRmFtMGtLc0krTDkwamoz?=
 =?utf-8?B?TVNkSHRjWlpIMVVoS0lJb1lEUXBoQkM3STFIS3V2QmdieEhuL0tnWDV0RE5w?=
 =?utf-8?B?QXRFbXR5UTdQZWNJTGVxdExZbVc0b2JJRTRlMmp1OHZONThVcEpJUFhkYTVx?=
 =?utf-8?B?TXhOczgzUkhITElqMFBTVWtpQ3NxU3JXeHVlc3hXWFdxNlowRERXRWZhYUNL?=
 =?utf-8?B?ckh3bDQwbkkzRXFRc1hDT08wMkZBaHhNREY4L2JzMUx3Nnl1L1Iwd3BLeitG?=
 =?utf-8?B?K21td21LTjhkbU4rMGhxazdTMkdyamRtTmhHQjZDdTlneHA1QlRlczlOUWhT?=
 =?utf-8?B?VTZ6UHNsVHYwbHRETFVKR0ZzVzFRZkdybW1iVmNoQllXbG15SkRnZy9GOVFk?=
 =?utf-8?B?em5za1hCQjBlSEx5SGRvUmZITlFJRHNUYncxOTY3d1FvbWxra1Q5bS9TSlhj?=
 =?utf-8?B?TkdiVUhMbEhUdzc4RXFnQkpaSW40YTBWR1I5Q2kyWGlQY2NBdjhkYUFWaE0z?=
 =?utf-8?B?bjdPYWM1aVdmWkx1TThJY1JaYUdvUlFKVTBoWlZaUFdPMjl4elU5SndEMXFm?=
 =?utf-8?B?ejNtSXJ0d2Urc016NkFDdUdnUk41S1JMV3hqVzlYWUx5a3J4dDZrWGd3WWRR?=
 =?utf-8?B?TitLVllQYURIT2xKYWVjc1RZMVpPNzBBOXJNNDRiNE1kNW5QNjlPUkQ0RzBo?=
 =?utf-8?B?dmpZNWRlNElycTA5RzEyNG5OL2luSjRYUWtaK243L0RWRTNHVDJtSFlBWlBm?=
 =?utf-8?B?ZWxZdHd6TE5Eb0dPYlk3ZXFpRUljVTVFeTFpUnp2eDUyY1kzK29mT091YkVm?=
 =?utf-8?B?Vnd2M2tHYU96U3k3dWxWYll5MzMzb3ZwUHBQZStIT3hUOWZtc0RsREZFQmI5?=
 =?utf-8?B?aDJZTnhYNnBOOEdyRFZ4K2hKZEgwd2p6Q3U5K0F4Tm5BMkJ1UDZNazlsOWxD?=
 =?utf-8?B?ZWR2NW5RUm5ocTZGblUxM2tHTHM3RlpSNFdVZ1ZqZ05kWStJeGwrVGN5YzBO?=
 =?utf-8?B?SXh5V3JFM0tsU0NQZ0pVKzFSVmpnSEVZUUVwNkNFbzNESHQ3ZVZDRGszaGZn?=
 =?utf-8?B?Q0RBTEg2dlErNTVCUmtEZ3JRU0p6RHhqd3drdGZzNUtkN21MbFcyU1BialRJ?=
 =?utf-8?B?YldlZHpYWmlZV2N3cktjL3Q0OVFDTVF1SnErZmVZWmlEbWFhWTFNM1drbHd6?=
 =?utf-8?B?dE41cE5ucU5taVpDMlM4TDNlYjl3L1l5Qk9sSFdPL3dUdFQvaGp1U2Z5bVNL?=
 =?utf-8?B?ZXFwNDVtMXZzQjNac0FGc1cvSkZHTGhJMWUzNUVKM1B6aERMbkZvSGY5M0Ji?=
 =?utf-8?B?czRqdC9DTjFCZjhFYXQ1UlNBeHVVc2Fod21RdGIzbkU5OGZjVEhxV0lWa09v?=
 =?utf-8?B?b2g5ZFJhRE5Ja0NmejM3Q1RpcWhDUEp1SU1wNFoxTGZ0M05LNVpHSm5VVWJ4?=
 =?utf-8?B?ZFR6RHdkeDQwdGdDZC92WEtmYkljeVoxSmZ1M1FadXNmdW5KTkZtamUzdWVF?=
 =?utf-8?B?VVNJSkVweHNiQXVVaDZ2Smd2SmJjZkh0Ty8yczhVN3hBRDhIQzFXMEFuN01Z?=
 =?utf-8?B?VVNlSE5VckNlbWVid2NteG5EbWxWNitUOWlRTisrTGVyNk5SWHhOejFKL3lo?=
 =?utf-8?B?d284VWZTTEtQajZORDIvb2JyYS94aG4wTlduSkxuNWN2UHN4ZmYvWjNrM3kw?=
 =?utf-8?B?Y3ZUdUFFSXZZRXREMnpZcy9kTjBFQXQ2VUVCSlR6NmtGNGZKbDBoYjQ0emJN?=
 =?utf-8?B?SWlKendhSlV3NlRpR01jOXNjL3h1UWhQTEtYTURlRnBoSTlVbERUUVlIN2lZ?=
 =?utf-8?B?dlBvdmt0UVZJUVlmQmN3QkIxYzh4QTdOVmVmNEFXdkJOeUlwb2FVQStGSnZX?=
 =?utf-8?B?TDhhTzJvYWx5WmY5L1h3MzNtV1lhakQ2ZVRIMW8wTmZQL2pSOEl5WUFMS1Zy?=
 =?utf-8?B?TkF0NXdOcDB6cmc5alQ3UndaOVVKQlQ2eFNNWVlSMUQ1eEFxb3R2UnhiR3lx?=
 =?utf-8?B?Nm1LRVlobUQwR1FTV2RISk9nWGR1RE4zZzRSV01Sei8rVUd0K2NHWWtIY2t2?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 695f512b-1bc6-456e-1731-08dbb0a73cfb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 20:07:33.4240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MacqbZTL7z3PhE5N9Jopi428jUiEIX0lMDqiVKulfYDn2uLRL4zH8Ff8TFpPTKYG1Kvzkl4d4PA4trZvMHFLYUJtAeeS8z514pOgVdHvhOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5868
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694203658; x=1725739658;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+xT8GcwlR072WbXJOvwmIM665wrU9klLCaTOX2OC1TY=;
 b=an+J0zWb9c6axZ4yV/p3k0BHZAnezRFEyfjriLBcWhw9oCAzNOBUHmiB
 gZ/ZIBJ5I0IyCe9BxGnxK3XQcuEyNRWb1/6DXJGgMN3A1mXFpXiniiz70
 2PnznvX9JPxgLCKqD5MJq0Gcc8D6VFLkDz2abe4ZjDxCnuLWJAmyDUfZr
 iR8RLNjcQzMgWz4/3WHNwfp2lkabEyTd02mLBgGecR149dzppnXGJ3ZHV
 7KaGXDm0dMWqRtH1LkfXsaIhvZNmPatBvDfBOuKVCwa4Vm2w4ZYSyGDI3
 JOYB3L8K95dkX/O4EzLyV16m5dO3SSr6Dmb1JSs6CGgE3nXvPSyfzlyWk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=an+J0zWb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Refactor parameters
 name in i40e_print_input_set
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 Antoni Czarnecki <antonix.czarnecki@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/7/2023 3:00 AM, Kamil Maziarz wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com
> 
> Change function parameter old/new in i40e_print_input_set.
> This change improves readability.

Carrying over comment that Olek made:

It makes no sense to send such patches as standalone. It should be 
either included in a bigger series or just don't bother. They just 
create more load on reviewers and maintainers with no positive output.

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Co-developed-by: Antoni Czarnecki <antonix.czarnecki@intel.com>


For future reference, matching signoff must be included and directly 
follow co-developed.

> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    | 35 ++++++++++---------
>   1 file changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index bd1321bf7e26..c86ad944b59d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -4190,49 +4190,50 @@ static u64 i40e_pit_index_to_mask(int pit_index)
>   /**
>    * i40e_print_input_set - Show changes between two input sets
>    * @vsi: the vsi being configured
> - * @old: the old input set
> - * @new: the new input set
> + * @old_input: the old input set
> + * @new_input: the new input set
>    *
>    * Print the difference between old and new input sets by showing which series
>    * of words are toggled on or off. Only displays the bits we actually support
>    * changing.
>    **/
> -static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
> +static void i40e_print_input_set(struct i40e_vsi *vsi,
> +				 u64 old_input, u64 new_input)
>   {
>   	struct i40e_pf *pf = vsi->back;
>   	bool old_value, new_value;
>   	int i;
>   
> -	old_value = !!(old & I40E_L3_SRC_MASK);
> -	new_value = !!(new & I40E_L3_SRC_MASK);
> +	old_value = !!(old_input & I40E_L3_SRC_MASK);
> +	new_value = !!(new_input & I40E_L3_SRC_MASK);
>   	if (old_value != new_value)
>   		netif_info(pf, drv, vsi->netdev, "L3 source address: %s -> %s\n",
>   			   old_value ? "ON" : "OFF",
>   			   new_value ? "ON" : "OFF");
>   
> -	old_value = !!(old & I40E_L3_DST_MASK);
> -	new_value = !!(new & I40E_L3_DST_MASK);
> +	old_value = !!(old_input & I40E_L3_DST_MASK);
> +	new_value = !!(new_input & I40E_L3_DST_MASK);
>   	if (old_value != new_value)
>   		netif_info(pf, drv, vsi->netdev, "L3 destination address: %s -> %s\n",
>   			   old_value ? "ON" : "OFF",
>   			   new_value ? "ON" : "OFF");
>   
> -	old_value = !!(old & I40E_L4_SRC_MASK);
> -	new_value = !!(new & I40E_L4_SRC_MASK);
> +	old_value = !!(old_input & I40E_L4_SRC_MASK);
> +	new_value = !!(new_input & I40E_L4_SRC_MASK);
>   	if (old_value != new_value)
>   		netif_info(pf, drv, vsi->netdev, "L4 source port: %s -> %s\n",
>   			   old_value ? "ON" : "OFF",
>   			   new_value ? "ON" : "OFF");
>   
> -	old_value = !!(old & I40E_L4_DST_MASK);
> -	new_value = !!(new & I40E_L4_DST_MASK);
> +	old_value = !!(old_input & I40E_L4_DST_MASK);
> +	new_value = !!(new_input & I40E_L4_DST_MASK);
>   	if (old_value != new_value)
>   		netif_info(pf, drv, vsi->netdev, "L4 destination port: %s -> %s\n",
>   			   old_value ? "ON" : "OFF",
>   			   new_value ? "ON" : "OFF");
>   
> -	old_value = !!(old & I40E_VERIFY_TAG_MASK);
> -	new_value = !!(new & I40E_VERIFY_TAG_MASK);
> +	old_value = !!(old_input & I40E_VERIFY_TAG_MASK);
> +	new_value = !!(new_input & I40E_VERIFY_TAG_MASK);
>   	if (old_value != new_value)
>   		netif_info(pf, drv, vsi->netdev, "SCTP verification tag: %s -> %s\n",
>   			   old_value ? "ON" : "OFF",
> @@ -4242,8 +4243,8 @@ static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
>   	for (i = 0; i < I40E_FLEX_INDEX_ENTRIES; i++) {
>   		u64 flex_mask = i40e_pit_index_to_mask(i);
>   
> -		old_value = !!(old & flex_mask);
> -		new_value = !!(new & flex_mask);
> +		old_value = !!(old_input & flex_mask);
> +		new_value = !!(new_input & flex_mask);
>   		if (old_value != new_value)
>   			netif_info(pf, drv, vsi->netdev, "FLEX index %d: %s -> %s\n",
>   				   i,
> @@ -4252,9 +4253,9 @@ static void i40e_print_input_set(struct i40e_vsi *vsi, u64 old, u64 new)
>   	}
>   
>   	netif_info(pf, drv, vsi->netdev, "  Current input set: %0llx\n",
> -		   old);
> +		   old_input);
>   	netif_info(pf, drv, vsi->netdev, "Requested input set: %0llx\n",
> -		   new);
> +		   new_input);
>   }
>   
>   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
