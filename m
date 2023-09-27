Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FD97B0C3E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 20:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B47E74224B;
	Wed, 27 Sep 2023 18:54:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B47E74224B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695840850;
	bh=LrmPtncZt5mlOYgKzzxEXf4bRW3E4xGfkyb5RCKqkkQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SqQcifNWxpgygzZ9YoBnelB+FqRpG1DyQyBlGIo8yloIADvr68ifBYv7ywLTJKx2+
	 jPeLao5jSsy5nLOOfXnwN6HlGUfsMCqaZWrwLUut2X+ef8VyJpBBWvZduEy3PXS2rj
	 zpgfJU+NaIT39GX/GUnciR2AvGbM3nlewcTQFmtiD5BhQdMoHhriLTzpBdTtKLDWPN
	 22lR88+HDyzfwpios3wozG17jvcan+B3LcapFH1PYgBsNYypK9XbgaefLvjbwRI/KW
	 XCzhM/fQGdeYD7l3Bl11yqHG9xIi86YchxoKmqDaSzf52iuzhXnL90xrZp5uZKU6Bl
	 8hbf+Rx2tEEUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JiWNgMtoLyz6; Wed, 27 Sep 2023 18:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41904424BF;
	Wed, 27 Sep 2023 18:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41904424BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED30D1BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1320414F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1320414F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 63L05FGHntha for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 18:54:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C67E40591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 18:54:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C67E40591
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="372254614"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="372254614"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 11:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="819549438"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="819549438"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 11:53:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 11:53:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 11:53:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 11:53:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g25VPdryDmz/gntLeQ2y7BjmvpU9XGhbw7nUKvx4gonq/yM1Ws3CRzoUETKenSES3L4QFQ1J6Y6RUExfcuFvrG/AlEpWdQ1o8cce83i30Q6p0jJtcST7hASIac/DEjlzU5Ybbm0Qufk3ds2EW6PUq9j2ZiKMHQYP6cLXLCD03wNKxDbjapR//P+qTc4pEUq0Jki1lOZbVvuC7xbqYFl3pZxybIOEWnsLVV0hNJepONllS/eZHll0O6qG8UocE0/qbWIBa1GD7oE7mZSqMbRrf5PEWLJdkMGwCGUKdfcYb427KbNdUMoT77bbDTB9Xb5pmYxCZPRabu08P2r2wfSEKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBbLLBh/DklYFzISpEUeL5rmBwgvOjXeJQYtNvC1JnE=;
 b=T3lloSXzpIty2fm7EtiT7+Jul6TWDzjdeeLmIus6QPbIxMij2ANOslzgEDAiaZhnPDsu46hRDxqtUkBOkK/T6Li/pJkQ33mKz2npH5hN/p3zhBRXq4GWkPOEqT9RdgZTM1LSkwb3Rr84EttIlqLATh6KOpYzk9WBzSn/QoS4VI4oFTEN2NAN/G0hhumWHqjZGRd/a6OrQs44O/Ink3xJ0/djFrNgpALi7+UvrndvQs7Gpp3LJH/FXKzrDFvPVU8W4DbAZ0yWTBYRDYiumWTMTs0pEBheL5MsgaUD4DV9HXZnusTKP6fqLiReReAmrLUMisFubUbUe5LpmkH0BZ+QaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 27 Sep
 2023 18:53:48 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf%5]) with mapi id 15.20.6813.017; Wed, 27 Sep 2023
 18:53:48 +0000
Message-ID: <12121654-ca48-c0b2-f914-460c018ce0d9@intel.com>
Date: Wed, 27 Sep 2023 11:53:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
 <202309120916.5313AE37C5@keescook>
 <5c59cc11-f6b3-3ac2-d26f-9470f57d7570@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <5c59cc11-f6b3-3ac2-d26f-9470f57d7570@intel.com>
X-ClientProxiedBy: MW4PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:303:8c::24) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7174:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f6ee07b-a311-4c00-3649-08dbbf8b1509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6GBGPQcTQmmefjH4lgggD/OtJFlRZh4r0t9bm+uNXefw91e3FiKTysPR313BQv550j2+uQm4V4uV6SYD0htONnRXbDLEPuEfzkRyjS54zp417q4e9UgJzhuYDm8IosqGjA+1SDVe9r+nQxZSIyo12cYuVcZ+YGt4NTSJ62/T/FEA4Gk2wxEpg3qeZXy/QuPyZbH3zyGOYZuuu65Ojl43SMCR4ydFmu0fTeMfKW8N6MA+8qkvRd5qDPyI/t6AkCEvFmVUx35fy2mL4um2vPtriT4YGIlnfi8lmCEUKH8aQ1v2258ZD8NUou+xqPnns9dZsgWqC83qp8gR3nM4yjopRRUUGAlUSX+xSeh06lOin/5Frw3PdkAkA6R9MLjpS5+2sY2d1qeWxkXO3q3np6hkbxNszoQoMBqwAHam2TT+kX4Ws4zEaujpiNeamBNMK/hsPK3m6yOanUAx4qDNziYJOXIR93aOLGe2SZUwYNjZ4cpzlcEPrazLsgDHRABtReTsqxqg4C7Ltx4rkASMpX7LeveDHcen2xUlAeHxHoh3Hln/7CIC2oLTTI4kSdkzYi6LUF0v/zi10yJS7DMd4Es0n1M7QxU3mwFcgTcs/6O5pocXCOYJJFH/oCkO9hsZCt0nh5y1Vbw5W0A5DttJgW/UaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(136003)(376002)(346002)(230922051799003)(1800799009)(186009)(451199024)(2616005)(107886003)(966005)(6486002)(82960400001)(6666004)(53546011)(6506007)(6512007)(37006003)(66476007)(54906003)(66946007)(66556008)(6636002)(316002)(86362001)(8936002)(26005)(4326008)(8676002)(6862004)(41300700001)(478600001)(36756003)(5660300002)(31686004)(31696002)(2906002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTJRVkxGQVlwRjRJbHNMSWk5ejB2MGlZSzRJOFdqSnNnWGZFYy9XNERQL214?=
 =?utf-8?B?WThPZVhzWEVVd215Wno1d1ZPTDJCZFRKU2RnYmRRUElYb1ZUYTdQbjMyWXpI?=
 =?utf-8?B?eTlScjJiRUhHcWE1dUZGbEQrbXNFRUFSZU1mL2kvekczU2pNRUtZTzR0cWo5?=
 =?utf-8?B?T2lXYnNiU3YxUXNDbDFRcnV4TXVTQWhVZ2J3OXlmQW1IYndjdGFpdnNzdGF3?=
 =?utf-8?B?MXNFQzVqbFB5MDBDNXZQeHVNSFE3eXp6dVZPS2VHNkhHUXpNNHIyNGVZSUt3?=
 =?utf-8?B?MkczZC9BTGltSnJ4N1dhUXFWbWF6SHM4YWU2Y1dteGZ1S0xXd1ZoMTBTZzBq?=
 =?utf-8?B?Y2dhY3FjZy9Pbzh5OG04NVBwWnZSdjJsS3BJZjdIUXdoOTEwWk1zazZlUSth?=
 =?utf-8?B?N1YrWXhmR29DTWx4TU9RMzZGNXNWeFRrUmZHNnVJT0R0NDRjMzlxNlNKUjBI?=
 =?utf-8?B?THR3STNMNzdnU2VuYlREREVTS1BnVXYrbVZtOW52clFvSDJraXhZWTkxUU1l?=
 =?utf-8?B?YTE1RzBiR3NTLy96Z3ZpYTNVcGRwemVVRkY4Mll0QkdNNDZheURtcmNQYk4z?=
 =?utf-8?B?cEMwaXc1eVAzb0drVjRrb0daUFRBR05xVUc1ekVETk9aYm93THRKZ3dxTDE2?=
 =?utf-8?B?MXk5K0VEUS9Fd040SmFzbEF4NGFJMC9MN3BjRnVnVkUyeEdiclZqY2J3MzY2?=
 =?utf-8?B?ME9EMzNQNHZERy9hZUpZcnA2ekY1Sy8vbHppcWlja1JUak45MEpMTEhZdFdo?=
 =?utf-8?B?b2kvcXU4MGlrdVBlbWw4WkttbSszdkc4Zm9JY1dLTE0rZ3NjYzVJNHpsd0Rn?=
 =?utf-8?B?Q1cwR2YvdHVIOTVWR2NqS1M0YWhaVis3dENocXpDUEtFUjRFUE9zaVI5ZWpo?=
 =?utf-8?B?Zjh1NEVWQVR2TTNXRFQwRGtraUZZenJXSE52QVJrQmZ2MEpvMkpiTGJ1dzZY?=
 =?utf-8?B?NHY4U0NFWG5sZDh2RWVxaUU5d01BbFRvM3dpemxlNHBHQkFXOHRUWUxTR0JC?=
 =?utf-8?B?UmI3YmhoT0lFZWErYkVlL3F1ZnVweEpUVWZ3aDNsdHlMaEYzeS92N3BEOGFy?=
 =?utf-8?B?WUNPdXFjbGJ2Qzd5eXFXc2MydFpSaXg4aUF3ellYOWZJS0dQMC9KNUFwMG9w?=
 =?utf-8?B?cmo4SzlqSUJtRmRaeXlBdVBEcXIveitac2NVSW02WmxIdU1xL21WZXJsMlgw?=
 =?utf-8?B?S0l4djhGbG9sMmhWM015cU9raG9FRElZeC9KeXVnQUpQbzJsVmwyM2NETDZL?=
 =?utf-8?B?OXVUQ1dMRGVTdWNIYjZCL1BIT29veEdERjBha1ZNZ21zMG1qTXVpQjFMT2cw?=
 =?utf-8?B?dDBvUUsrMFNoSnVSdGNlV3NUTmtRUFlKbU5ubk1OdFdWOFJFVE5Bd3l3VmFq?=
 =?utf-8?B?dHJaNU1xNExTSkp3TGNDR2FnK2xtNjlIb2QrM04zVW14OHRydEZSd1NTYyt1?=
 =?utf-8?B?RXZoR3RuY1ROMUkxc2RuV00zTUwrOUdJVFE5TmNMK21FNWt6bGhKYVB3NjNN?=
 =?utf-8?B?TzAzcVlyTko2U0MzYmppeWM0a3h4MjE2d2hMSVMzb0hKeWdhNmRqczRac2Y2?=
 =?utf-8?B?MEg0NmhmQ2VJc0JnazJtSUxMNGR3M21LNXNTRStqb2NjOFVvMlNKK1ZLMHBz?=
 =?utf-8?B?UUtYQVQzQ2wwKytsYWdLYllXOVFqekVBYTVnVitZY0d1VXA5QWhPYjVlUkgx?=
 =?utf-8?B?SkJlZ1I5b2J6SHdjZjhBa3FsRUFQTlRtbjFaZmwxczRjOEpNVVhBblROejJM?=
 =?utf-8?B?QytyQ2laT1dHZ2VZVnQ1TG9zWUNDQ25hdWhKQzMwWmRhQzVjOGJ2RlBEczl2?=
 =?utf-8?B?RjFLQk4rZUQycFhoTStHRHhZcTJHeUlqeURUbHBTbnZ5ZG95Y1cyaGRWVVNW?=
 =?utf-8?B?ZU15MjVsblNqWDQrYUZ5aTR0UU1PQnltUE9jK0hBUnNxNHVISUhIMzVUR2pa?=
 =?utf-8?B?dE5LWUJ0TWNteVJFUmVyeGZ1NFBhSUVTNW1iSVA4ZXlOcE5XajBYR0EwTlBH?=
 =?utf-8?B?MVNZemsrTWZCTUJzNE11UXZ0QmUxVXJTd1JSY2YrS0FocUJwWi9XTVFkTW42?=
 =?utf-8?B?U1NQVWgyek0zVVVyaEtVL083d0NNUWJVbFd1czlLMURWV1RLMXAza1Rkc1Bk?=
 =?utf-8?B?b1NSNldIajBMYTZSR3hud0VSUzQwSWZOOXpTN3hIV2p5L0s0MDZvSDBrQmsz?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f6ee07b-a311-4c00-3649-08dbbf8b1509
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2023 18:53:48.0052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AzhNbLaxlCcaxdGQXLxaAt190N4P6BsKbOjxM93kU0hMuMYZJBKmb04hcBAnBbs5eKcdKaw1GDaXTpjZ6iLxaeeNb2BsKgs/raLxLOrc7A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695840841; x=1727376841;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rEio5OUWkLWu70cdY/WqqWjIbwWKIHztNodo6ShExDw=;
 b=KxxxseHrG/dqoJPtZUOdDsh4oQYxBWl/HrjVy5IZa8rGAxPQLFlZDw/a
 65dxnEEQcS9FtAoiIqHGIrn2g/305Xxq2UCPJb03/yrNbaXdoxZIZCqhC
 ZXqI7mb7PAVEbENqDxXNHh2K0IRUKm7TuArb2TQX6QZmr8z2j8mZGB+SR
 11QCKP28v/UdIQjh9mGde2jCsoQGFYCy8DK/VKB7rtdujKWRDSBI7NSre
 pr+Ugs/owke15VUjWWT+AVjEJAUHY3+wLO86o1ml7MTzcAIhf8NzWqBlz
 VG0cn7ipfeFppFLC2PtQUamggXLCOFgSKXe2o9v6ex/eCI2AOIw3Zt1/m
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KxxxseHr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/7] introduce
 DEFINE_FLEX() macro
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Steven Zou <steven.zou@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, edumazet@google.com,
 David Laight <David.Laight@aculab.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub
 Kicinski <kuba@kernel.org>, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA5LzE5LzIwMjMgNDoxMCBBTSwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IE9uIDkvMTIv
MjMgMTg6MTYsIEtlZXMgQ29vayB3cm90ZToKPj4gT24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgMDc6
NTk6MzBBTSAtMDQwMCwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+Pj4gQWRkIERFRklORV9GTEVY
KCkgbWFjcm8sIHRoYXQgaGVscHMgb24tc3RhY2sgYWxsb2NhdGlvbiBvZiBzdHJ1Y3R1cmVzCj4+
PiB3aXRoIHRyYWlsaW5nIGZsZXggYXJyYXkgbWVtYmVyLgo+Pj4gRXhwb3NlIF9fc3RydWN0X3Np
emUoKSBtYWNybyB3aGljaCByZWFkcyBzaXplIG9mIGRhdGEgYWxsb2NhdGVkCj4+PiBieSBERUZJ
TkVfRkxFWCgpLgo+Pj4KPj4+IEFjY29tcGFueSBuZXcgbWFjcm9zIGludHJvZHVjdGlvbiB3aXRo
IGFjdHVhbCB1c2FnZSwKPj4+IGluIHRoZSBpY2UgZHJpdmVyIC0gaGVuY2UgdGFyZ2V0aW5nIGZv
ciBuZXRkZXYgdHJlZS4KPj4+Cj4+PiBPYnZpb3VzIGJlbmVmaXRzIGluY2x1ZGUgc2ltcGxlciBy
ZXN1bHRpbmcgY29kZSwgbGVzcyBoZWFwIHVzYWdlLAo+Pj4gbGVzcyBlcnJvciBjaGVja2luZy4g
TGVzcyBvYnZpb3VzIGlzIHRoZSBmYWN0IHRoYXQgY29tcGlsZXIgaGFzCj4+PiBtb3JlIHJvb20g
dG8gb3B0aW1pemUsIGFuZCBhcyBhIHdob2xlLCBldmVuIHdpdGggbW9yZSBzdHVmZiBvbiB0aGUg
Cj4+PiBzdGFjaywKPj4+IHdlIGVuZCB1cCB3aXRoIG92ZXJhbGwgYmV0dGVyIChzbWFsbGVyKSBy
ZXBvcnQgZnJvbSBibG9hdC1vLW1ldGVyOgo+Pj4gYWRkL3JlbW92ZTogOC82IGdyb3cvc2hyaW5r
OiA3LzE4IHVwL2Rvd246IDIyMTEvLTIyNzAgKC01OSkKPj4+IChpbmRpdmlkdWFsIHJlc3VsdHMg
aW4gZWFjaCBwYXRjaCkuCj4+Pgo+Pj4gdjU6IHNhbWUgYXMgdjQsIGp1c3Qgbm90IFJGQwo+Pj4g
djQ6IF9TdGF0aWNfYXNzZXJ0KCkgdG8gZW5zdXJlIGNvbXBpbGV0aW1lIGNvbnN0IGNvdW50IHBh
cmFtCj4+PiB2MzogdGlkeSB1cCAxc3QgcGF0Y2gKPj4+IHYyOiBLZWVzOiByZXVzaW5nIF9fc3Ry
dWN0X3NpemUoKSBpbnN0ZWFkIG9mIGRvdWJsaW5nIGl0IGFzIGEgbmV3IG1hY3JvCj4+Pgo+Pj4g
UHJ6ZW1layBLaXRzemVsICg3KToKPj4+IMKgwqAgb3ZlcmZsb3c6IGFkZCBERUZJTkVfRkxFWCgp
IGZvciBvbi1zdGFjayBhbGxvY3MKPj4+IMKgwqAgaWNlOiBpY2Vfc2NoZWRfcmVtb3ZlX2VsZW1z
OiByZXBsYWNlIDEgZWxlbSBhcnJheSBwYXJhbSBieSB1MzIKPj4+IMKgwqAgaWNlOiBkcm9wIHR3
byBwYXJhbXMgb2YgaWNlX2FxX21vdmVfc2NoZWRfZWxlbXMoKQo+Pj4gwqDCoCBpY2U6IG1ha2Ug
dXNlIG9mIERFRklORV9GTEVYKCkgaW4gaWNlX2RkcC5jCj4+PiDCoMKgIGljZTogbWFrZSB1c2Ug
b2YgREVGSU5FX0ZMRVgoKSBmb3Igc3RydWN0IGljZV9hcWNfYWRkX3R4X3FncnAKPj4+IMKgwqAg
aWNlOiBtYWtlIHVzZSBvZiBERUZJTkVfRkxFWCgpIGZvciBzdHJ1Y3QgaWNlX2FxY19kaXNfdHhx
X2l0ZW0KPj4+IMKgwqAgaWNlOiBtYWtlIHVzZSBvZiBERUZJTkVfRkxFWCgpIGluIGljZV9zd2l0
Y2guYwo+Pgo+PiBMb29rcyBnb29kIHRvIG1lISBGZWVsIGZyZWUgdG8gcGljayB1cCB2aWEgbmV0
ZGV2Lgo+Pgo+PiAtS2Vlcwo+Pgo+IAo+IFRoYW5rcyEKPiAKPiBQYXRjaHdvcmsgWzFdIHNheXMg
aXQncyAiQXdhaXRpbmcgVXBzdHJlYW0iLCB3aGljaCBpcyB0aGUgc2FtZSBmb3IgbW9zdCAKPiBv
ZiB0aGUgInRvOiBJV0wiIHBhdGNoZXMuIFRoYXQgbWVhbnMgaXQncyBkZWxlZ2F0ZWQgdG8gVG9u
eT8KCm5ldGRldiBtYWludGFpbmVycywKCkFzIHRoaXMgaGFzIG5vbi1JbnRlbCBjaGFuZ2VzIGFu
ZCBpcyBtYXJrZWQgZm9yICduZXQtbmV4dCcsIGRvIHlvdSB3YW50IAp0byB0YWtlIHRoaXMgb3Ig
cHJlZmVyIG1lIHRvIHRha2UgdmlhIElXTCBhbmQgc2VuZCBhcyBQUj8KClRoYW5rcywKVG9ueQoK
PiBCeSBhbnkgbWVhbnMsIG1pbmltaXppbmcgInVzYWdlIGV4YW1wbGVzIiB0byBqdXN0IGljZSBk
cml2ZXIgbWFrZXMgaXQgCj4gZWFzeSB0byBtZXJnZSB2aWEgVG9ueSdzIHRyZWUuCj4gCj4gWzFd
IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9uZXRkZXZicGYvcGF0Y2gv
MjAyMzA5MTIxMTU5MzcuMTY0NTcwNy0yLXByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20vCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
