Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKBKBugHeWmPugEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 19:46:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A357994D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 19:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DD4481176;
	Tue, 27 Jan 2026 18:45:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mEtcHxz-s1yG; Tue, 27 Jan 2026 18:45:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE30D81183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769539556;
	bh=eiidJiIBAMTz41sdCNPXcejvO0QcXWHScMmWXpfO/VE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8+xc+sF008EMVNb4SeKJah+bLxH8S5an1dw7uBPnALTFW2oWrS4iDcPoYdwZFHBwo
	 om4sP+/pIOnsN2+VIhIzNPnFZ+tLlybwcKZacpvh4keWnJf6gdQuJe+8I8Xjy5Qa39
	 PCr47hUn+Ar4G+YL2J7LOcZhudDF4wQv0FWoQupR7YzH8QnmzK5IKEaiyQV5wkXhvz
	 Klfg7UaeYKGWD8omAtzGwH7LXAnEYwzVQYmlyESeS+/tQQA8nwO5AzlgTQhOW+or9Z
	 b5zmCNKIh3fd4sIYtgfw1PUCcww6Z1Xh8YrWv6VMyxSLAga1JR+6uyvjyKx/Vd/u/T
	 rJH+czfuhafwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE30D81183;
	Tue, 27 Jan 2026 18:45:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3483E160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22D8281168
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:45:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebKf6e7MyfaR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 18:45:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 240F68115C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240F68115C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 240F68115C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:45:53 +0000 (UTC)
X-CSE-ConnectionGUID: Rb35alqJQOCoVJfq/rL5qw==
X-CSE-MsgGUID: kF55qyccQlezGIMrvYlmuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81375822"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="81375822"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 10:45:52 -0800
X-CSE-ConnectionGUID: bOEHfYSAREuITMK1fkz8Pw==
X-CSE-MsgGUID: YPrQsFYRQsa9YnBjlFiHVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="207288742"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 10:45:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 10:45:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 10:45:51 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 10:45:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPajyjE6W7Q4RPrey/W+DIdkbW/7a73HpGahREFJdO3lkaCc05NaVUAQ19sUudDHmKbBYe3t0t/FBj9Ig4rvvvuDBiGNq8w4iWQu5S4HnEv+G0Dd8S4m1vxZMl/g2hbxtSb9zBw4cM0Qn79Zn9sWLDj55ISrkz2cGPuWPbt2ShLu13xczTwi23wZAkrJG+C3hHaJs19YYkgFEk2upNr4Waxrr58JV8dPnestg1DfvsigLYgpvLpd/WzjkGjRS1s7lY+rIGuXtMtJTMfN7y9avDiinItW+7CYJ65zfn2Wku31dnSA4m4xaGbZULBjA4cZoPNfqnbf7rhI7lfAvnUH7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiidJiIBAMTz41sdCNPXcejvO0QcXWHScMmWXpfO/VE=;
 b=XO3WopWAT3T4l1L6AOxp9NG/kOdqaT6UByrcs4OHTk3UkrqdCLPAG1UrLaSE2m5DErTj4vOsfXrJxsFNE6JU6lgdLQC7M2cwkrVjchwXFGjGXWOlKA9H7tRDlHCe9VoYAFkZpS2H8D0Cv7ryrm+FxSqseAyphDKy2DhwV7aeqbFahw9ek+s0V6rM0Q6OR5B9WXoEfjBaX5e1HzhwIjpENi4GWFRVTV++Y98jVUipdDwIXkKjgCxgTUc0R/pQy9e10zz6pHwOivBzoP5lnpfnVLF9bsrQViqeDl9lEt9yoNC/+GQysxU3fIrqd55Qhcq+XH4QXmQA6JWY5ijGtkdbKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 18:45:49 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 18:45:48 +0000
Message-ID: <e899d90f-2d29-422f-8690-3763e7a7cc87@intel.com>
Date: Tue, 27 Jan 2026 10:45:46 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Slepecki <jakub.slepecki@intel.com>, <przemyslaw.kitszel@intel.com>, 
 <aleksandr.loktionov@intel.com>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <michal.swiatkowski@linux.intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
 <20260120103440.892326-4-jakub.slepecki@intel.com>
 <73cfe48b-cb57-4698-8166-c3cc587a45d2@intel.com>
 <f41330d8-f686-4e04-844e-86c37351ad74@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <f41330d8-f686-4e04-844e-86c37351ad74@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0135.namprd04.prod.outlook.com
 (2603:10b6:303:84::20) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 3acfd6e2-7b47-4b2e-d004-08de5dd449d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VTBjY1B1RWNkL3lQbHRmeFlza3c1bGdXaWh5S05qYkhLV1NEVEN3VmFwMCtm?=
 =?utf-8?B?ZWR4Tk0xcXI2ZERkb0FTS3R2UnVRUWJPakJnTDJuRXMwYlI2VGxhWStvQlUy?=
 =?utf-8?B?ck4yTVRUeDliUTBiZmVCSXBTZ09rWHZEVGhYejE4MUNLNkNNbFcva2c2SE0w?=
 =?utf-8?B?K2xtaUhyLzVRSENPS1N0NVRtZmN6Z1ZBS2lTNmRYQzJ1LzlLNXF0b25LYlQ2?=
 =?utf-8?B?cTIvMGFjZUt6Q1p5ZER1WFhQcCtmQ01FWDRKcjBpUjRIZ3lVc0tsV1ZIaEEy?=
 =?utf-8?B?MUJibk5MWW1mN2RPc0lybEUyQXVKQ0N4NXpNRFRoUnFkR1BlYnE0a1RlZlB6?=
 =?utf-8?B?RDlHbHhQd09BRzRMTWZJTGJTOC81U1Bra0lTRC9wd0dkbjBPTnExUlpkUUJt?=
 =?utf-8?B?cDF3MldJUFI2UmhMeGJicVJDaFNhVU9SSWNsUHRVQm5HSW1sdHBMcHh1MFVK?=
 =?utf-8?B?WjZYMUMxek9UdGJVelRPQjVPazdkcEQ5SFN4bHdTc3owNmI1UkM2d3l5TUxC?=
 =?utf-8?B?OEJoRzdVOGEwdTgwY3FqMlBOVVFERmJxc3k3a21QREFHRHRsZUNNd2UxNDRM?=
 =?utf-8?B?cGhpYXN2cXBVeFBLWTFKQUlMczEycEh3YzkyL0hKUkx0UzQxTi80NFI1bTNF?=
 =?utf-8?B?RmF1RHJURjRpNmUvT1pEam9IOW9EbnpzK012ZS8rRGZHT01nQ0VkWjBWbENQ?=
 =?utf-8?B?bVRPd1AxRmU4OUlEOWtjODg1cmdVOHkrSnN4L0R1Y1dBT0FoZWFnQW5Bd0V1?=
 =?utf-8?B?NXRLcXIycTd5NkU3SXI2Z0JKb3F1SDVZSmNkMGd0cVYxNDFzeHFaSmdMWm5s?=
 =?utf-8?B?dUszNUpncmZtV2xEdUFLbFQwZ1RDdzFUTXRHL20wMStZRmtaNzZzd3BGY0dP?=
 =?utf-8?B?MjM2VTZLTVFPcHA1RWhkYjloWnZqZ01OSm5hVTlUckhoSkZjRHRCQ2s3M1Vk?=
 =?utf-8?B?YkZXYzVKOCs3L0x1MVl5U1ZGais2d1IzQWlvMVpaVCtPdUVIUm1NTHF3S2da?=
 =?utf-8?B?YkNEaXEyZjFlYXRQSldTcnp2MlAyVUVaTnhGNFJpblJkR1JiSGlNZ3dwUFlI?=
 =?utf-8?B?YWxwQldCdVNCUzVVMWpoSXJMZlhaS2tzSCtHQzdtY2lCNW1CMit3bm1qNWNq?=
 =?utf-8?B?VlUyc3F0eEJLalNRRGdCMjRONGVzQTY2bTVSRDkwQW5lNXpVeGo0V0RHK25J?=
 =?utf-8?B?NFpPd0puY3o3MDMvMExOajVuQ3ZaejB4S2JNSVlJL3dYdUtCOXllT0RnM1pM?=
 =?utf-8?B?Mlp4VGt5TVlQYVpiUmtWcHFzaDlnTUtMZ2wyUWFWeW5yRWN4b0J1QU5waTZo?=
 =?utf-8?B?WFJWcnhyMEF5VjEza25sQWlTM05zbS92R0FpVDRVWlFxTzdsbmhVWkFGSzh2?=
 =?utf-8?B?WXkrdjdqVzlhVjBQYUdXNkNhNW5aRW5Kc3JJdWZIQWFGRElJU3pucTZoV3hN?=
 =?utf-8?B?RmU2N1dJeHNiMkhFK1dyVzI2THp3bGdmVzJxSGNCeFB0dXZydnNWTktuZ1F2?=
 =?utf-8?B?MGp1WTBoUTJqTzJLdkltT2NMTlB6Q0o1cGZwUFhZUzJNM1NBQ1RYck1YdWhp?=
 =?utf-8?B?WTlpemhwWVJLUmNmUXd3Nkd2bTQzeFBkY2lib0FGalJMVnNESTA4eXdpWHpo?=
 =?utf-8?B?eE95OXBrWFYyR3AvM2E5U1ZwYlhzUDRCbm5lSWV2NDc5NUkvSHJxZjF0RFZ2?=
 =?utf-8?B?a2c4QUYvTXRHQTN2cG9JVU8zZ09wV0FiSE5EY2V3UWFOcGlMUEdBL2JuYS9E?=
 =?utf-8?B?U2E5OHhVVEtSSkE0aTFoR1MySmNlSFQ2VmpJMUZoRnJBbm03OHRKZitFbHhT?=
 =?utf-8?B?S0tDWHA3WUhIcE5vRWRORVpVNktCWUtIWUVTWDVoSmhSc3FpMWFHTS9kamJx?=
 =?utf-8?B?UjRzbHhaMFRlN0ZFczJqRy95TCtmenJsdWZUdmtaUi9ieXRiMTYxYWh4SnR0?=
 =?utf-8?B?cUFNZlZGZ2JiUU1qQ09UZlF5VE90SXFQNjlwQWdVTkVMTnVCYjdGejg0TzRr?=
 =?utf-8?B?UFN6eERoNTk4TGJqeUUyMVdYQ1dXc1JaSWd3aDJVWWdreWJLY213WWFCZE1R?=
 =?utf-8?B?WVkvT1RQOG81SDgzckVNZC9HcDhueFVoRm9oc3BFcnZGem5xZGlOZVVLa1Ro?=
 =?utf-8?Q?29tw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFFwTGo0RnVMVDdmaHFsRUZGM1Z2ZkF0a2x6UjBoQitHUDdZcXZVSnQ3Snpq?=
 =?utf-8?B?Z3RWQ1hEdVlYWnFmVmtvemZOV0g1dUx3UHR3TGNIcFREL3FXaDE2aXhnTWta?=
 =?utf-8?B?Yy8zQzF0OUN3K1M2S1l5SzZsOWtHenUyL2FWQjBwNmMyOHdmWmErSUp5OVdX?=
 =?utf-8?B?N1Q2OTJxSW1uOE9nSU1RaXRvbE5JT3Vjcmp4VHpZdWRyakhrMSt2K2tic0ha?=
 =?utf-8?B?cGRuSjR2dDRPbzY5L1QvS1JDanU4T0FTNXFoR1FhaGFLcERuOVhsQVhjTm5x?=
 =?utf-8?B?b0ZXcjYvMkdXdnBHT05WR0lHczhmVUJ1UjNIV0lRdEp4UFNWR3BaYU5UM2Vr?=
 =?utf-8?B?NmtlUEhHck41OEJRbUQ0SlNwTFY1YzZrOCtza3hGK3VrWjJOVXkydFlGYlJj?=
 =?utf-8?B?MnlFT3A3S2lXRjlEdlhYbjJxQUpnWUlqTE1FemxoRXRiVVJNanNjM2MzRjR6?=
 =?utf-8?B?VlNjWXFvSUNLU0UxZEgyRkVZMHhFZytlMTk3T3QvcU1DazZOVmVxbCtmb294?=
 =?utf-8?B?T0pPNml4eGtvUi9lTjZMTTRuMUF6SmVIK2puK0hzbXNkU3JYUjc1K3dHUTdW?=
 =?utf-8?B?L3ZzL3NKS05Oa0QxQXJMY0xOdTllUjNyOWRIR1RBSXRGY3hhYXYxQm5NemFC?=
 =?utf-8?B?dWtvVCtTeDNwejBoMlRRdHpWWTdTZXE1MXdxbldacDUwa1pKQVVkSkduRE54?=
 =?utf-8?B?NGFMRzRwaUVKeHB0cWhkN1huY3VFUDRRL2xlSUhPaHZmRnBwWEFLRldOMStj?=
 =?utf-8?B?ME9tZEpLZ2dKUzRaMlNuOHY3Wk4zQ2FxS3lhSzNwcUplVExlVUNUTzNiOEVS?=
 =?utf-8?B?V1RtSlB0dUtncFByOUd0a1Nob3RnUVc2aTJPSFBMaWVDdkpCUHorVGg4emVP?=
 =?utf-8?B?bXhZazJRc2JQTTN6NGs0VWU5eFBQZ3F1clJiN0RlWlozWXo0S1lsdjgyMVF3?=
 =?utf-8?B?MlkxV0Z3bU1rc3I2QUFqUytkS2pKelRXOEc2WjRBd1UvMEJvYXlqbk85dXJP?=
 =?utf-8?B?eGdLaTVyZ0hROXdoWmhXYVdTNlhIek8rTjRhVFZHV0RuVWZBNmdaKzJXTTlO?=
 =?utf-8?B?ZVpWZ01ZSFQzNnd1QkJVRU1sK0NWSDd6dDdKNnhjOVBLTTJ0b3ozK3l0bHha?=
 =?utf-8?B?L1pCNXc1a3lDYndia2Z5RkdXMkxOUW1sWWI4a2RKekZoWVlJZ3lQWnppdTJR?=
 =?utf-8?B?ajFxaWZqUGZRN0w4Qng2SnhkZmVuTW5pSFpZQWJFV0hpTWlqQkRnRHpHd2hm?=
 =?utf-8?B?UW1qRE83cGExRmdHaWxxUGRRdjJiVnJYMVZFQU96ZHEwMS9RemNCQkI4UmtQ?=
 =?utf-8?B?ZUg4S1c0elJtZVdsWDY2Z2NiNUNVYmJ6Y1VxTzcrSlkxKzhQeHhOQi8wb2xt?=
 =?utf-8?B?V2JXVlRCeC9IdWZqa3FkSEhRc2h0OFdSRzlmTTRxWXVndXFYR21NaCs5UEtL?=
 =?utf-8?B?bzlhOXZmU1BuZjYzU0pBaVYrODNLRlN6aVp0M1BwUXBJZWFjWVdkMkp1ck9s?=
 =?utf-8?B?OFhxajF6TzR5czl2d0VUaGwwWllSVG9DSEZmb1RtOHAzNFFjTzAxTjhHK0tJ?=
 =?utf-8?B?OVlZcUlsMjdZaGNhanJxL2xwTlpoTXdOai9zMlNnTERibS9XcVN5b2RJcDFa?=
 =?utf-8?B?SVhhd29qMXYzdDViRE51ZG1mWGtZcit4RkdKb0VJS1dWYlhjdXJCazN1cUx6?=
 =?utf-8?B?NE01bExIOXV2aE43aitpaHFBV3VDZExQQmg0ZE1sN1hrelNhNC93WEwvVHZ2?=
 =?utf-8?B?bmplT1lPVEFkMHRGSzVqdmtmZ0Jlb2ZMK3JDMWt5STFseUUxQTY2TXhEbTcz?=
 =?utf-8?B?OHFiWEdCclM5dzdlUWZSK0JJbyt0ZFdlZ05XcUNlSmg5ZENCc0hDOGRaN2Zo?=
 =?utf-8?B?YStDaG4vcWlyVlJxbzZRSXZEWjROazZXcUsxL2hySjQ4UzNzaTJPcHI1cURq?=
 =?utf-8?B?QTIvSzJiZUV4STNQMVhRdEh6RnhPVnNSbUt0a01STGFOZlZadjhTR3BEQkhD?=
 =?utf-8?B?Z1FmMFFaK1V5VzgzbFpVV2tXZDk0TlJFQ0ZWWWtnVWhrc1Vvam1mbExaSHA0?=
 =?utf-8?B?OHBSNEFWVFMrVzZrdVhtcHh6Rm56K0ZaaGhsZllySTVVQ1FxV254R3RxSEgv?=
 =?utf-8?B?c1NKWUF6N0dlL080bjdNQkhYQklrQmdJQ1BXWFFsNXdGT0xjR1V2SXZiMmU5?=
 =?utf-8?B?dG1MNzJURGtRc2REdUgrcEFsZUpZcEQ4KzA1NzZiVGNOTXIwVlJ1dEVxMFFr?=
 =?utf-8?B?cXN6akp3ZEVURWhHMzVEY3NrWWVpaTRzcEhwSTJ0ZjVFenlHNCtlZEVmT1ZP?=
 =?utf-8?B?VktJak1jZ2xCYTE0Q05SMWg2VGgxNnlZaXhuTXNQSStlRmQzQlA5NlpHSVNy?=
 =?utf-8?Q?feUqhm7q8XTtb+Rs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3acfd6e2-7b47-4b2e-d004-08de5dd449d6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 18:45:48.7819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o0O09b9Jmcswo1Po3spJrM5VufLoy3edTYotCBJjvf3pkyKItiTNMdyzUZZ8KJojXVNIOcc+VZZKAoj2i2V7fIdZf+4ZHRuObsCFDy6FOX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769539554; x=1801075554;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zSYItfvS1pWasjndU0bkqu7M57zeLINsucuC+o7IrvU=;
 b=UTaHEO940byfsyHvD3p7cxzsuLnVnw7AlgJAZq+wP4TuenwjOv/9APzU
 wT9SOIcJyexM70gICCkaaXTd2IzS8+cfsa36zVs/sWrk60AkR8k7euLbe
 eGPoNcw3etJiwjx3uU1fodl0FY3Hi2Y3IFdDL0T6PGE7/w/H2tnFQ9IaX
 D7N+zebUBP0vawr7E4d08d8RV45JK0JrzB1lXktz+RSy0IBXQiQtmm3xx
 7uPkaNAdaPdcJfcQb9XBPf9PFd7ZCH4WDP+VdhgzSAzSC86ydbFmet7Tv
 S0PWHe2GjSRUu48k529vLkfaTPoWlkvFC28kf4t6SzU07PO4lBFzTAK/L
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UTaHEO94
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/8] ice: do not check for
 zero mac when creating mac filters
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:michal.swiatkowski@linux.intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: 5A357994D4
X-Rspamd-Action: no action



On 1/27/2026 2:31 AM, Jakub Slepecki wrote:
> On 2026-01-27 0:21, Tony Nguyen wrote:
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/ 
>>> net/ethernet/intel/ice/ice_switch.c
>>> index 0275e2910c6b..04e5d653efce 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>>> @@ -3648,7 +3648,7 @@ int ice_add_mac(struct ice_hw *hw, struct 
>>> list_head *m_list)
>>>           u16 hw_vsi_id;
>>>           err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
>>> -        if (err || is_zero_ether_addr(addr))
>>
>> This is introduced in the previous patch; it would be better to remove 
>> it in the original patch.
> 
> Previous patch moves it from
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ 
> ethernet/intel/ice/ice_switch.c
> index 84848f0123e7..0275e2910c6b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3634,17 +3660,19 @@ int ice_add_mac(struct ice_hw *hw, struct 
> list_head *m_list)
>           if (m_list_itr->fltr_info.src_id != ICE_SRC_ID_VSI)
>               return -EINVAL;
>           m_list_itr->fltr_info.src = hw_vsi_id;
> -        if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
> -            is_zero_ether_addr(add))
>               return -EINVAL;
> ...
> 
> here, as a call to is_zero_ether_addr(), to the chunk right above, in
> 
> @@ -3614,16 +3637,19 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 
> vlan_id, u16 vsi_handle)
>   int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   {
>       struct ice_fltr_list_entry *m_list_itr;
> -    int status = 0;
> +    int err;
> 
>       if (!m_list || !hw)
>           return -EINVAL;
> 
>       list_for_each_entry(m_list_itr, m_list, list_entry) {
> -        u8 *add = &m_list_itr->fltr_info.l_data.mac.mac_addr[0];
> +        u8 addr[ETH_ALEN];
>           u16 vsi_handle;
>           u16 hw_vsi_id;
> 
> +        err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
> +        if (err || is_zero_ether_addr(addr))
> +            return -EINVAL;
> ...
> 
> here, same call.

I see now, I mixed up the hunks/functions. I'm ok with this being by itself.

> 
> The intention of the previous patch is to allow adding mac,vlan filters.
> Check is removed separately to make it visible.  Alternative is hiding
> it somewhere in two active chunks and in a long commit message.  I think
> this fits well into "separate each logical change into a separate patch."
> 
>> Also, AI Review says:
>>
>> The is_zero_ether_addr(addr) check was removed in line 3651, relying 
>> on the claim that ice_fltr_mac_address() performs this validation. 
>> However, the helper function only extracts the MAC address and 
>> validates the lookup type—it does NOT validate against zero addresses.
> 
> Removal is a result of internal discussion about ice_add_mac() and
> ice_fltr_mac_address() using zero addresses to mark errors.  Reading
> through the comments now does not make me convinced it's the best way.
> As long as errors are reported via int returns, I think the zero address
> check can act as a sanity check.  AFAIK, all calls that may result in
> ice_add_mac() currently are guarded by is_valid_ether_addr().
> 
> As for the phrasing in the commit message.  That's my mistake and if the
> patch remains, I'll correct this.  This version of this patch should
> not say "previously assumed zero-address cases."
> 
> I'd prefer to remove this patch in v4.

Sounds good.

Thanks,
Tony

