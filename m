Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DXtCtqQ3WkLfwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 02:56:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD573F4AC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 02:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12A0F427F0;
	Tue, 14 Apr 2026 00:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3GD7Vo4HDCJ; Tue, 14 Apr 2026 00:56:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63D11427F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776128215;
	bh=vDFfSxrQH1I/PxxoiPaIgzvTBoNY8H7q7H6LmfPNTKg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mWwbRsrmiz4MxeHW7porBI/OxIZY24qrtcCIAX/rIrKERkmvuzqi3+4H89/90BDrc
	 cOIfwbQL6Z3RtRbMk/tq/Rg76t6fcrGkwVdOzj4lJAOe6EZsM3hHUC4jVy8wvAeDGv
	 U9Bd6Hv/IV89s/CS+zQm/UB1zJ5b6MDdjt5rqxctoRhtyM1b+bXUb95yxsw9fbPVJm
	 SHuDVeyLmbdv5yR9bTedi0aPx+63UQ6MfE29Kz+dvnxS9A4/wKMYSAugu2cAUA5xsg
	 xAFBO45wKymywnvzNoYDzwTkd5M/On8CHD3hHVZ87tQenZtZtNphxlqFxMwwEimP2r
	 SI8JyQAYWLpOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63D11427F1;
	Tue, 14 Apr 2026 00:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47919375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2297784948
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27aBQy0lODnJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 00:56:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 568D484947
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 568D484947
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 568D484947
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 00:56:52 +0000 (UTC)
X-CSE-ConnectionGUID: HWIDww8bSJSkqQDtbhSHcw==
X-CSE-MsgGUID: Jm5YvWTrRJW/iLXZ/HKCLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="88521392"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="88521392"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 17:56:51 -0700
X-CSE-ConnectionGUID: 9qIkfx7USWaRhxn1sdCpjg==
X-CSE-MsgGUID: bfQ9j23ORraP8vanfU8nLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="229879396"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 17:56:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 17:56:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 17:56:50 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 17:56:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i4+PqmCQqKsKFUjwCsHaQdGtCHp8Zb/o2V41QumuhHO3Lri1yKR+TX8Z7tcT50UWe2qB9cPBDO/lyXGNqGx+qj42oehK8aZ9/kKQb0NKdzL0Ydad+qkIr5QM5ING6qFA66sa52xIQ+wsTC3L+tSLu+YkqeoxVJLyWK0RJdYC8k+1aEc7trX9E/d6xlBfgo3I1/mNbVWJpGUG2PvPVEFzItcgeGKUBP5KrwcZDVGRo60Is01Zg/lYNS6tFOT66w5lMvTkK3X9fS0kQe6RoMhDRw0SQLur0rbxLirs8rEub/jn9vEQVYrsBz+36XYSgAtCFzezmLbUYVrZDZDSjXbtsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDFfSxrQH1I/PxxoiPaIgzvTBoNY8H7q7H6LmfPNTKg=;
 b=h3MYqudCVaWRiFk+A71lGhY1ry8rMlsPTuHsECkKR+wkGk8suqjzkQ0nLgu4OPyOw1UXA86iZdAnl3x8hP1EPriGs7snpd9Q8mf/h1fnSob+UUuHEmybwbu++RWSBIYLaTrEUHLAX8BOlhvUsvrjy/gPt7RWGT6U1RR8yWgbm8DAB7AyiextjyU7QZOFmNQVn+NAuyviL56b3zxWZj4VHxZyhOA1U/xsFVmOqK4wU2V8bJQsDBP+sCgbp/TqhNEjuk5fw14cyKkLwYacu5KSabQ+gDzvO24IKxrAvlrBwNIM1muaHcHw8rISIwz/+wSTs8egN4dXQJEV0JkdxrU8tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA2PR11MB4842.namprd11.prod.outlook.com (2603:10b6:806:f8::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.41; Tue, 14 Apr 2026 00:56:48 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 00:56:48 +0000
Message-ID: <704b3b28-cd38-4672-975a-52a36250e793@intel.com>
Date: Mon, 13 Apr 2026 17:56:45 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>
References: <20260408131154.2661818-1-aleksandr.loktionov@intel.com>
 <20260408131154.2661818-2-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260408131154.2661818-2-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0030.namprd02.prod.outlook.com
 (2603:10b6:303:16d::18) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA2PR11MB4842:EE_
X-MS-Office365-Filtering-Correlation-Id: aef0b9ec-3260-4aae-5f42-08de99c0b4e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Na33OKEZXt9ID32vhDbkM+in2yPIIPB2ToLfgdfYqKz24JWUTIqa9jym95B/eL7m+TcSiogON+vrzfbuz8mux2Vxq6TlwYGSNU2uwAwicGPlj4ytBP3zfRvTojAO0EGYwkBKEN3sofinlCot93lwvLJW2ZkyfCS/9uzxCUuT5osA/WldJVJmVcX59L801qujZNQQD9pMSlmafaeyvYhC1WzE7BErwRaWwqEudnFX8pScSP36sZish/RUkwf+ZJ/EPE6U0UH9S79TlshaQQ08XxuGcRl+ZjYLV1TOYF2KWgJSrqPmziaquMd+RUWrmRI2vu7ArqzX68kxOpANEtE5cKuzhnj3Oq87SnfN1dwheS0KKZVLBREIVqUQeDuiEqeUlY3wYloajfH+p1qijtv5Y7sa5rP8IfDszGbANodUlFwmMzEPRVMJHLcUmTNNMGEgm2vkmVIlTxB3i4ySv6zCfzFNIxWyucb8d5tew5aPlSUMl10hI6tL4CZ1wq3IM5fcOEI2TWIFhKklhmd/84Sy37PpNxRlSxGUn+LAQADpeiEjJ4PkQKFc1BggqAIBFDN6FHKxoQjbI3xvyg3HR9HDH7+prW32J0NVkjyw+xDvwsyOUfUAcimI9TPtajypk0kzxalsiLYkxkqMRUyW+/79ha7W6wdEVfMlj1jXOO70+mWOmIYBwe0HwHUM2o/aUxq2TrZ42+0OAbYuqKNCghp0fl7sPLJcr2IO1DkZhLywaVQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nkw5RjZOclVhaks2N21QYmwzZDNJMlh0dlp0OUV0R0VvQ1BvcWdMWklwWEdH?=
 =?utf-8?B?U1dRcldTc1VTRFN4NDZwNHRqYzlxdXBoWjU1TUM3UDJpUVpBZzZSWWoyTjJN?=
 =?utf-8?B?Vm8xd2FCeVlhcXJtc3NCNStJa0ZrRXJKaUZ0eXMweDFIdGtlWEJ6YjI2OFB5?=
 =?utf-8?B?SS9USXFodHBlcWpHN1VHZkpRWG9ZZzg3ZFpFc2gvRGRVNUh0dEo4TW9rczhB?=
 =?utf-8?B?blMzU0lDNE9NdGtrUVFvR1NKSlBxczhtVTQyRy9yaGtWaHZuMDQydmpPM2Rq?=
 =?utf-8?B?Z1VudWVHM2FwU29HVXB4UjJCS3pyQ1l5a1hsSXRIK3l1RWovL0s5VThlRjRx?=
 =?utf-8?B?VVdmZmpDcUMrY0xlQUNpbjd1b1dwanBUQVRmTi9FRVVkWmdTTS9hbkVVcVhy?=
 =?utf-8?B?Nkp3Z2JDaWorczdESk81TGNpTlRtak1UK3JINkdBRWoxM0o1SWRrdFY1cXpP?=
 =?utf-8?B?RGgrdWZhVy8xYjdYWElCZmFEcm85Tlk0TzFLVlNWMkJ0UjRTeGJwVHA5dWJp?=
 =?utf-8?B?MGt4ZUc3STE4UnNUdWxLb05zNkdaSHhSajhIdXp0YkZrTjM0eXIxb3ozZ1Az?=
 =?utf-8?B?SHBQZ2RkT0x1VjNDYmhzZVlwdGJFT0Z2c00wMU40TGJwQmluZVk1Q2syMTl1?=
 =?utf-8?B?OHd3RVVTYThvc3JURW5wVVlka2dMUExFdWcvaFl6YmNYTjhaalEyMGF5Tkhs?=
 =?utf-8?B?REh6MGpiUlhuK29EcTd3M1VBTWtZN3BCM3BOMVZ6b1BocVNNdXFmeXc0b21a?=
 =?utf-8?B?SEFDZWRqQ0F2TW1WSjRDdVd5c2ROVGQwWkxqMlMzMEFjYWlRYlMycmcvUnFF?=
 =?utf-8?B?RUNSRWxsMU1ETVZSZ2pDQzZBaFAzcFRRdzRER1FhSDE4b01ZRHd0dE42dHFz?=
 =?utf-8?B?TTUzaUYvRmM1TXlvM3NVWG1WdnRwYTRjUnRsRXMzZDBFSG10RkdBbmJMdWt2?=
 =?utf-8?B?RnN0SUdZalpaaWxBT0p5cXJLOG5UbTZUVnFINUZSRXVSM0FYLzdqNzNuTmIr?=
 =?utf-8?B?R0cyZEh5dm9qZ1dVUjBFZWdVaGgvcGRVd3cwMFFOZE1qSUNRQ1ljdkpMb050?=
 =?utf-8?B?dkE2MkNwOStjSWROZXJPak1IeXFDM0RLemRhbkl6RTlBTlppTjl1MVBsTG43?=
 =?utf-8?B?amhOSzd6aWt5TU53VERSRGMwZDlVMFQ3K1lMM05lTmlKNFpNTGdkcUtnUEJF?=
 =?utf-8?B?aE1jYUYySElJUFVONktPL3orTGl0QmxkbStLYUIwSDA0MTFyc1lFNUNCWTBE?=
 =?utf-8?B?WHJQSUY1WjRXNWd4UmpEemppeVhDbTRvSmdtc3NyMDhmSG9yTDBEVDRLNHc2?=
 =?utf-8?B?MGc2UGo5YVd2RDJ3b2FvQkh3bURaL0JGMSsyRnZaaytScTB1VFM1aVdzcjQ4?=
 =?utf-8?B?bktmTXB4cjQ0dHhsd1dva0RFS3c1RURHMEhQL0xpNnlMcUQzRUZ0L0ZWcG85?=
 =?utf-8?B?bHp4ZWFBQ1BWcUpxSFRqczFKRFh4aE9BRWY5aXRDanRBRldBR0tqZzJrUFRq?=
 =?utf-8?B?UGZjeFhTZXpmZDkzQzNvWkxUOXYrcjd6VUNqMFJpYkk0WC9UZVNtYU4yeHA2?=
 =?utf-8?B?RVJQcDFMc2hlOWJaNFRja1hzY1hiNVpuNExUVlFhTnFwUXlzUWQrQkF2MFhW?=
 =?utf-8?B?aTdOMSt4d2J2bU82L0ZXMzlycExVclY1OUYrYkxyMldVQnpVM0ZTL2o1c0dH?=
 =?utf-8?B?SDNtUVhBWUp4cnpGKy9NV200UmNsK0dyZ1ZxQUE5Q3Bhd2VIR0l3N0tLYXhV?=
 =?utf-8?B?d2U3WFAyS1VpVHBFTEVRejJFb2VlTW4wQjBFZnJBY2kxc3p3MDkyMlB6NUl0?=
 =?utf-8?B?Z2pJTlRsc3g0cmZBcm5VT2YrYXdvRmY0bE1rQ2Vwb3oxaVE1RlgrKzRLN1pm?=
 =?utf-8?B?UitCM2lvcktwbkpwZSsrdHVsQmlPRUFhSFZzV2lNdmJjUVE0NTh1UnFMVFI4?=
 =?utf-8?B?dmdtbXRMS0IyUzZ4djRyUEdDN2t6TzlETGVnK3JDbnlxWEc1cDNrZndtak9T?=
 =?utf-8?B?MXczbzFDUFVXMXR5SEZGbE02RlkxR2FVa3lqcUhiUmhFVGpYRnp1SkZBWUJo?=
 =?utf-8?B?K3VsM2hQajVQcFpCckZDUkNWdTVqSnAzQ3YzcGl4UkFEZVpFZVpPSVhUK2pt?=
 =?utf-8?B?VnYvWU8rcmE4anBqaDFlRU01Yzg1TlRiZFVWR3NRdTNoSXU0K01LVkZ1SW51?=
 =?utf-8?B?eWRIYURNREFweEtBZjBmUHlrOFdlRWVsdE1EbDBKSDE0TVFJanBlbFpYVFFM?=
 =?utf-8?B?bnlFQStBYTZuT25iTkRJZTE3azgveEtSKyt5ZDAzWmVaNkVDWGF1eVJLRkU5?=
 =?utf-8?B?eCtzUnNwVGt4VzhldXNjbWtXeGdEYkltQlJVSlg3ME5xczUwSEk2QT09?=
X-Exchange-RoutingPolicyChecked: NtCWXX1dpovncrvtU2X2vELINNVdcNtXNeb0Gxr+Q3NazUzdXkj+eir4Yee0d2TYZ179pQC+qCP1OXzW27+7vfp5JTtIRSAW9t4I9bPmgsFnuL3ae7ckdPRHA/semHd+ZCEAlaOtkZESiZbZsM14RaaC9vA2myScQik7ZQUw4YEawVk+ba3l3n/pSNXAfi7HAeLDBNLL+U7ezO/vKyNhgYWDmdNo5IRG/wWCt6NqngjE0+XKO1K5opSFvvYUfPOoq7vvqkMHygxJQGhUBNSINQolwjv1yYoXdaTAr93zo9jUZT1bEL0zFYmeGCFEzh1gn0hcJqvYMUh8Zu1hLeQEuw==
X-MS-Exchange-CrossTenant-Network-Message-Id: aef0b9ec-3260-4aae-5f42-08de99c0b4e0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 00:56:48.2380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CGB6HI465HJBLr8xAtHWL6jxANcHyamIZMqn2FsJaaa8quUeit54DZuH1/XisDWZ0D7K/T1eywdXmxwHMXgQeopEoojySa5YmKJlYOr7U5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776128212; x=1807664212;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IxvSXHlszfChJIEYOmY6d/XU4AZprPJg8ZtEQAl3dpY=;
 b=aflS2YB515qtgGCOcF5JTf5xH1KxaeRKlKg7ES83AkSL+8OTuCMRHKH9
 Uc3FPhqETTcPdRP5HXrF6xerKV+qt78Xx92DEVczxYhA4GF2Rg8fI80CZ
 0IMml3zm1AsD0GsrEduAxp+/PKhTZumaxsv7JIU1WsPemoANmfuESirbu
 5US9KFQL2wJ97zFlpjWDYgSSUhyD3WMm5wrzSTj2R4KFGcd9uk6gR/26P
 TR/vQJt6TKnFQWziqQuN+T++qp4FeJkVjozDYtpfyYIPo1hnzGnuWqx0e
 /I5YKZVaj50E9zJhGV9MZuJnpp0a9QfVKaH02I7x9bigjIQfL4PnXaZn1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aflS2YB5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/6] ixgbe: fix SWFW
 semaphore timeout for X550 family
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 6DD573F4AC5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/2026 6:11 AM, Aleksandr Loktionov wrote:
> According to FW documentation, the most time-consuming FW operation is
> Shadow RAM (SR) dump which takes up to 3.2 seconds.  For X550 family
> devices the module-update FW command can take over 4.5 s.  The default
> semaphore loop runs 200 iterations with a 5 ms sleep each, giving a
> maximum wait of 1 s -- not "200 ms" as previously stated in error.
> This is insufficient for X550 family FW update operations and causes
> spurious EBUSY failures.
> 
> Extend the SW/FW semaphore timeout from 1 s to 5 s (1000 iterations x
> 5 ms) for all three X550 variants: ixgbe_mac_X550, ixgbe_mac_X550EM_x,
> and ixgbe_mac_x550em_a.  All three share the same FW and exhibit the
> same worst-case latency.  Use three explicit mac.type comparisons rather
> than a range check so future MAC additions are not inadvertently
> captured.
> 
> The timeout variable is set immediately before the loop so the intent
> is clear, with an inline comment stating the resulting maximum delay.
> 
> Suggested-by: Soumen Karmakar <soumen.karmakar@intel.com>
> Cc: stable@vger.kernel.org
> Suggested-by: Marta Plantykow <marta.a.plantykow@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Squash with 0015 (X550EM extension); fix commit message ("200ms" was
>    wrong, actual default is 1 s); replace >= / <= range check with three
>    explicit mac.type == comparisons per Tony Nguyen.
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> index e67e2fe..a3c8f51 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> @@ -577,6 +577,15 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
>  
>  	swmask |= swi2c_mask;
>  	fwmask |= swi2c_mask << 2;
> +	/* Extend to 5 s (1000 x 5 ms) for X550 family; default is 1 s
> +	 * (200 x 5 ms).  FW SR-dump takes up to 3.2 s; module-update up
> +	 * to 4.5 s.
> +	 */
> +	if (hw->mac.type == ixgbe_mac_X550 ||
> +	    hw->mac.type == ixgbe_mac_X550EM_x ||
> +	    hw->mac.type == ixgbe_mac_x550em_a)
> +		timeout = 1000;
> +

Typically, I would request and prefer if we would refactor timeout loops
like this to use read_poll_timeout() instead of open coding the loop
like we do here. The current loop is somewhat complicated so I can
understand it might be tricky to refactor.

The issue with open coded loops like this is that usleep_range has
variable length waiting time, so we sleep for anywhere between 5 and 6
milliseconds in this case. This makes the total amount of time waiting
cap at 6 seconds and not the expected 5, with the actual amount of time
waiting being variable based on when the usleep_range wakes up.

Perhaps this specific loop is a bit more complicated and not worth the
effort to refactor to read_poll_timeout, but its something I've been
trying to get us to cleanup (both inside Intel drivers and in other
places in the kernel) when modifying such open-coded timeout loops.

Since this loop body is a bit more complicated (it has to take and
release the semaphore to check the condition) I can accept it doesn't
make sense to modify it here for net.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

>  	for (i = 0; i < timeout; i++) {
>  		/* SW NVM semaphore bit is used for access to all
>  		 * SW_FW_SYNC bits (not just NVM)

