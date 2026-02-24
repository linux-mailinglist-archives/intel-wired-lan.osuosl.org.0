Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDLgHMyqnWmgQwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:42:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEC2187E69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 14:42:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF5A83B6A;
	Tue, 24 Feb 2026 13:42:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wz2MBRKmrt5U; Tue, 24 Feb 2026 13:42:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F44182978
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771940553;
	bh=8iUMWMuDRXtwGT+emuzSYbh6kZscK/5w73tSfA2vpMk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NZcZIkaTRdCi7OSH97pBjTJl967OFcjyYfFjVduskOuKUnSbxyj1311l5nkIe+g/U
	 4L9q45wymzorhWNgJNAKf53Sxj6irPS0iulOb/h8Vx2VJXuewu5HjzYptgyJ8suMnq
	 X+JEdhnmMYgrYcABZQ9PauusTZc98uAL8HfRWFCy1WupFDJ3aP7tWJl6bKYW56BIIq
	 +1vtA8ywBJDWMx4bsHGemmXSZZ0/JuRx9Kx/aSR3IENMxvBNJtwkXbx6jUdp93KpWJ
	 KRjf+SjLdGYaUAcCUOz869KFtyDhc0Gj/SwIKbsOcYCi0AT88j9jRmzLBfO26CrcKa
	 iT+YswSRgjaIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F44182978;
	Tue, 24 Feb 2026 13:42:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F01861B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5F5A406A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:42:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HBSBoXiXV7_e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 13:42:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 291A740690
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 291A740690
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 291A740690
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 13:42:31 +0000 (UTC)
X-CSE-ConnectionGUID: VUG1nUmtRBade9dAE09qYQ==
X-CSE-MsgGUID: GpZhcxiHRf6d501j5RijbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72828060"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72828060"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:35:22 -0800
X-CSE-ConnectionGUID: Pyq5ByKRRamEPNM5EOPyNg==
X-CSE-MsgGUID: A/XffYswSfqm75VJ8x90Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219381684"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:34:20 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:34:20 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 05:34:20 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.9) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 05:34:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UpI/ntodmSwyiX3K7vhpVxuzWallTVbj2Kl7S+88ONJ6NmlhHrQthikb0JXxBYSoNgGCUskFNvNEiJcmorEujPODH6lNrvzcoWwbe9K87dR0J5AArhWxWNs4PFW8Ryu4FJFV/qKJ6uG3XFH6syl6oOOKIFtblI2YHYYokiDE/+LVo98gSwFc7l2lSJ5DfNskPN270JXRUoi7vRq7fzhIG6LOH7+kd9vj8W2jv09Inrqx1gNPT8W5tzLvQYS5MQ82O/d2K+Semc3+NwEV3awE3Wk5IlHgDT6ox8P4PeCwDIHmgmmG9GxJ+3mFw3rlMiuSbsoWeTDABDGMajsqkG8UNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8iUMWMuDRXtwGT+emuzSYbh6kZscK/5w73tSfA2vpMk=;
 b=Dup6OOgxkleYSU+uLwKCHMsvpqk4BgVD+UvdIHY3cEgkQ3zT6yK2T2MTBfCPsMJ/zSPoIOHD2EPA7GdHOb1uGJTPl3a9V/sA1jVxweFVmMiyWvDQG/Bzv5ZlwxKFFbGsmaGvJdNVLz8JBD+xMnGyRU35mjlCPo6ouz8t3Ff7ouuwRtrTzxSkVu8wic0MFuO4clbSj/eAqeBkAq4PSzWrWPYR7hMdpyn8ItgWTbI6m7jp/Je9lXkzlUzNUlX7ZNrHl5xx+0rgKo3C0WwrkhnnuZgqUQi4EPaZOvOUUdKwTTj+z2ygEDwzegjZKJ0winKqA76oeR1ASR60D9YvkqvwVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.22; Tue, 24 Feb 2026 13:34:17 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 13:34:17 +0000
Message-ID: <23a68212-6231-438a-8e08-5f39dc56b295@intel.com>
Date: Tue, 24 Feb 2026 15:34:06 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, Simon Horman <horms@kernel.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
References: <20260131163037.88108-1-kohei@enjuk.jp>
 <20260131163037.88108-2-kohei@enjuk.jp>
 <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0006.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::16) To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|DM4PR11MB6336:EE_
X-MS-Office365-Filtering-Correlation-Id: 4286061c-693a-43a7-cd5c-08de73a9688a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUhOWlZlMWZFR3d5bVNJSHp4ZVhYcUJEV21nN0IyWmNtU0Rhay9sZG50T2JK?=
 =?utf-8?B?cVlKUFRJWWJScVl4OUNwcFJjZjZLWUNXYnVxQ25BZWYvb1dBdWlUVzk1eW0v?=
 =?utf-8?B?M01iN0JjK0ZNZlFISGNVdXArRnF0QkNOdUp6di9tRndDd0xucmVzb1BYdm1r?=
 =?utf-8?B?SzZaZFZNNExrbDJMT3NaRnFkelZndnFXOGQ0YVFxRFFINmFEOEtrdUVJSW1s?=
 =?utf-8?B?ajZIbVV6RlZmUnpaUDNtWVJVRzByRnVDNHZySUxlTUVndThoRHZ0TFhCQTV4?=
 =?utf-8?B?bVZFUmg1UElRL3BsakJaK3RYZGhpTVZQTTE5N1U1Y0QwWTFCWXovc1dhOFpX?=
 =?utf-8?B?NkcvRmVzQmYyK0hlT3FXbXR2UGtRSlhRRWtkSnVJaVIxM2FaU1VROVl6cGRk?=
 =?utf-8?B?UjdxaWgvcGFpelUyQTN0S01MajBaaFB5cERJdzJjTVE5YWMzZ0UwamFTakJo?=
 =?utf-8?B?ZlFZM1ZvSmQ5UTltZjJ0ZVBiMC81dXJDbUtSclVuZFB3cXJQNzkyQmY0SlQ1?=
 =?utf-8?B?M04rQ0JpZ2VvYUJUMHVMTlpQV1MrYm4xQUU5WEFna09pZ2hNUEdYYUxCSlJq?=
 =?utf-8?B?QjNPRmtDY3BMcHBDWnZDU3hjMGkwcWRrK2R5MldIQ21FSWgzNjU1MFByY3Rt?=
 =?utf-8?B?Z3hwQVUyekR3cExXbHFhV3FpSnZYQmxXU0NGSGlkc2JJd1lZQURyVEJCWUti?=
 =?utf-8?B?c2ExL0RVdHVRYW41cUt0c1Z2REpUL1dSMUFXNnhZZW04azk2dXBGaGF5UEp3?=
 =?utf-8?B?MUJIZjZvcDJYdjl1bVc5Vnh5amtzQUNmZXBNcUV0cEhvUHFWNmxUTFBjNFZH?=
 =?utf-8?B?WU5aUlMyc1dUZ1h5b25URnpGcjFTd0w2akxxb1VZTzJjdXFwaWptaXEyZ2ta?=
 =?utf-8?B?c0JYU0tXZ0N4QW1zS2NTMmlkMjFtTmVaL09qT25KdFloOHA3SVZZZGhJSW1p?=
 =?utf-8?B?U1VIeGRZTkE2QmR6RzZhOHRRb1YxaTNlNlExR29HZ3RmL2NXRDVLM3kySFZZ?=
 =?utf-8?B?OTlxVE9PK1FTWm0ramFQbjJOTUc0WlArTFlKT0IzaVphWlc1a3ArdjFhbnA2?=
 =?utf-8?B?Mmt6SUhMOGNESHJwSm5sbW5JWVUzM25QWHNIN0RxdGtFbmhrZGxBa3BTVnVz?=
 =?utf-8?B?QzFwaXEybXYyQy9sN1FXeHFCNVdiTmdGV2k0UDE4ZzVLYWo5N3d1YkxJRWRN?=
 =?utf-8?B?aFl6WDlhM1kzTXFRSkJnOUR0bDIvWUV6OWtiRG9NTEF5bXdhVFQyNFJoTERa?=
 =?utf-8?B?RDJGNWJ2WENWVjY3QStOR2tNTHJsRmFxSWRaNi8vWDY5NUhCbWdPVDlzRS9T?=
 =?utf-8?B?VHZHWnhnb091SnJZV3FMUE5jZW9yQWZvdEZkTThleExYWldDNGgwQk01ZVpt?=
 =?utf-8?B?VXBlbmpBTzJmRjR4M2RENXVudER0NnZtVElKREhCUGdNOEZqWFYvM01FaEdQ?=
 =?utf-8?B?WU9seTcyZFdnYyt6WC94OVEyMTlSdzFJeHZSUjFQeFlkLzZ2ZHBvOGNSV3pU?=
 =?utf-8?B?eGtwY0hZODlIdGNWNy96N3hZQm9Yd3R0VDk2bE1nWmFXYTk2Q1crSnNacXBV?=
 =?utf-8?B?K0hQYzAxOWJCY0xTczViRDFkZkxVVDZnMnljWW5VVTNjbGY2V0FEUWpHMXNQ?=
 =?utf-8?B?Vi9mR3djVWNtQlZ0VWk0bFlWTVQxMk9BeEhUTkxmYy83VXowREh0WndMNTZt?=
 =?utf-8?B?TE1EY1FhYlgzQkJFcGtZYjducEVyL29Td0c1NTZrQmxFTkprRE9yNG5yNi9y?=
 =?utf-8?B?RTN3S3E0RnFQdHlqZHRJMWs0MXZwNjljQ0oyTXk5M0tod0M0ckxML1NERlBN?=
 =?utf-8?B?N29qQ3ZydmdLR2srbWIzcy9IV2c3RFVucjRMUmZscDd5ODlHNmYyaVFaZWhp?=
 =?utf-8?B?aWVlZ1BNbWRnZDhkRGR5VXhmSVJzSWpxZlkvOFRDN2ZWVjdRdGxETFc1UVkw?=
 =?utf-8?B?emg4N3QrNmtPaFBFeHZVRjVidDYyeTdvaEpneUlHMXhCdjZjNEw4MFJ6blBE?=
 =?utf-8?B?R1psT0NMcmZUeWdSWGZTNmZJWXp4TzJVRVd2dlhwRUFtSEdVNEt6bnRoUmEz?=
 =?utf-8?B?MkFTc2VWUW1scUl3VDZqSzRObGhJRlZ3OE0vZVJUaTdSa2o0UE5jekVtd3RY?=
 =?utf-8?Q?bM9E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjhUanlVOWRlZXBGZVhteTZHcGdWdVJYVnkwRFcvWHdTVytBUzVMd0R0cS8x?=
 =?utf-8?B?UzNZQjM2UzlZQVl0b3FZRlJoNmtoSnRCM2t1RWlreHBmWXRpOWlSbThmbXl6?=
 =?utf-8?B?U05sZUFkU2xram8vdVRiUyt3dDQ2YnBDa214L2VacW1QV0RvTkk0RzgvNFVS?=
 =?utf-8?B?cFNwb2RkRnJMWTlVT2pEa05wUW5jM3lQQ1h6YTlQYWZET1R3Q2JreXl5UVF5?=
 =?utf-8?B?b1N3by91N1RhbDgrb3F6VmUzM25ySGNDb2ZpZ2pFcmNJSTl1RnMyOHBiUVNv?=
 =?utf-8?B?KzQ2QTFWTHZtV1EyazgzSVZyWnEvc1NQZHVXQ3p1RE1SdkR6TDBqbW1CQ3hJ?=
 =?utf-8?B?SnZ1aWxYYysvZ2F1NW9GM2xVU3NZNXcrSHkvY3NxZWdhbENScDM1Z3p6MldK?=
 =?utf-8?B?a3g1U1RTa3hzSDFZZS9HUG5zWFdsa1hENkNIakNBdjdBb1hJUzdKTHdwc3dY?=
 =?utf-8?B?bkNjNW9NdFNaVFQ5aWdVVFFvb0drNmkvSldiOUpvNlNYSkZKSmNDZVAvU3RB?=
 =?utf-8?B?aW1hMlQ4U3VlTG5NQ3hLOHlHZGgxOEdIMmJkanZ5R3VtSTVHS29NYWlWa1Na?=
 =?utf-8?B?dExubHlvNFlxOEpQTXl5N3ZtSWhxa1Q0c3AvNGJPUFRoVUpmZFNZL0xTWDZx?=
 =?utf-8?B?dEVDRWd4OHk2bkJaZmRqR1FIMzV5WERFaHEzSE5aREZaaTRDUUE3aGxsRThI?=
 =?utf-8?B?alROY1dJV3ZYZEl6SUorcmJYdkQ4SjI3RFZRWWR5dDl2cG1lcnEzTVFheE9u?=
 =?utf-8?B?YXpEREkrL1dTSnJOSGUzZFRlTXJxQ09wSDAwZW54QmZuSXByOFl3UjQrMXZR?=
 =?utf-8?B?SDhUM3lwWEFpUWpUN3ppZ3krRGh3V3hCLzNqcjlrZjI3QnBqZVhOdlNrUHBF?=
 =?utf-8?B?Q2pCWkFSVUdRV3QwN0NyZFpoZGZ5eDVxdGcrQlF1MWtoYjUvL1RJU2ZUTXZX?=
 =?utf-8?B?UTZXaitTUldhellXR0E1aklSd1BoaE5WejIrZWFYSncyYWpvdWNmL2xFR1dj?=
 =?utf-8?B?aWtKZklQUzY4NkxiL2FITGU0YTV1SW5NSDFITW0rY2lMMWJoSlNVQkNiK0ZM?=
 =?utf-8?B?WHFLb3BkdDlWZytkUEFFY0dKMWh1ckNZbzFwQ2VUVXRwaHZ1OG1xWDNEOG9a?=
 =?utf-8?B?U0ZSM3dad0RyZUp1bXQ5TE5TTnJwMkRoeFpSbE5ZVmdqNnBreEpFdXZ6aEcr?=
 =?utf-8?B?ZGlKZnZkQ0hvN0V3ejJqZHQwV1NEdTByNy9ZTUtIL1VqbHhVTjQ0QnRGSWNp?=
 =?utf-8?B?eGJNaVJ1bFpzSHN5SERlVnhzanBwMmJTNkZuRXEvL2FZWjhhdW1TUCtUdmYw?=
 =?utf-8?B?b2w0K0JnVGZrZi9tenFnV0l3M2REZlRmQk5neVRUT0ZsNzI5Mll1Z2FkaVpR?=
 =?utf-8?B?Z2dEc3RPZkRMdE1xeElNNE85eWQvUTc0WXJ1elVSQzRhWFJ1YUZ3eGJBdFhS?=
 =?utf-8?B?L25NdVNjUVc3WUdmM2VzeEh2NGtidVlQLzZsTTZ1NG9jVEUwOFVhWUFZS3A1?=
 =?utf-8?B?cTRmTWR0dkpiQWJNUllCQms0c1hJYWZWVGU5b2k2QUw1V1VZVmo1NDd3TUFa?=
 =?utf-8?B?QXpleGxTMUFYV2R1bXlhVVBTOEpwQjlTZi9uQ1cyT1hNYkIwNTJwVG5TVHNk?=
 =?utf-8?B?ZEJJSkcrdEI4M3VaaldyRUk4a2I3MDBxZXRRREltVjl0Y1JCazJCNUQ3VmRw?=
 =?utf-8?B?TlBoR2sxY0UxR3JMZjhrSTBzWURwa1lXeDRsUTZGTEY2dktMZytzZGFzd3d2?=
 =?utf-8?B?NEJJTUVQMTdjREsrZjVvdDRMaFF3L0ZQRXRXZitPa3lCYmVoanZQTDhUbjA3?=
 =?utf-8?B?a2hKcnQzeDVVb3RSRlZ1VHNMcGtIVlFlb1YwSnpZUDJ0SlhTRnJrWEczZ2Qy?=
 =?utf-8?B?elJ1NnlSaXJRRXlNd0JMZ3dxV2g2MXJPd0I3aHdzOVdrbW5BMWc1N2IxYS9Z?=
 =?utf-8?B?WWRGMHcwbWJ4RjN5c3RqbFJSaTlPVkR4MUNVdjdZdkl6MFVyVVdFcHVmTEFR?=
 =?utf-8?B?L3lGOEl0Tm9CQ1FyZTk4ZFR0eW9wWXJFQjJiZjUyVCt0MFJYd2J5RnBMZVBi?=
 =?utf-8?B?dEYvMmdHQnpud3RuZ3N2alhHL3hCcklOZWlYcmk0TTU4VkM3V1cyWGVMTk5l?=
 =?utf-8?B?QmJFaGpUOUZFTVh1UDlaZmJMd254Z0NjOGxGOVRQWjZ3cVJ0SlB4WEJybWZG?=
 =?utf-8?B?UVY1VkIva1ErVGNVSHJQcnE2S2R3R016OW1LZnFIRXBva2hWL0w2VUVDc3A0?=
 =?utf-8?B?cVpCU2hrbzF1MkFIZ1V6T1Jaa04ycXFBTHRaeHlOUS9KcVgyMVoreEgvM2hG?=
 =?utf-8?B?ZDcxYTc4TWl4cjV2eXczSlFsQWQxcVV1c2FWei85RlQ5b0JFdmUvZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4286061c-693a-43a7-cd5c-08de73a9688a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 13:34:17.5015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: crXYuydLLQxKNqeuvnK29bQ1dlGt1r11fdqpvKfv0IRNfxtH/Q0rM4+UsuynGOY7hAuIGQPXla+xrKkWMPAzgF5YPfl19eqHrKybeKwR6Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771940551; x=1803476551;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Un6qPQJG7mx/h4W2lABfCBIC70WIQCyVIdtvg9K8+YI=;
 b=gOfhohIVF3lUYJQUhLciugBYh1clWToutwjifN/yh5NNs0vWaG9hpeEB
 s3Xu65JGRrDiqP71AbK+oMGl5euVNpht3cjGqh9bgOApFWd8BjXHM3WoA
 4r5Y2r/gpFAMVKbIqPap6WJ070MIKMUA1ZOMgfDPNxu1NeU319fyF+lN/
 3qJfQgRWHyAL031ZEFCSXoQmIT/ZPwdU/RrurafX4B/25CoqlZK8ybIg2
 W3PGqbgQBGCvxIs444RRm6IlLbbMyT1eYuEjYY51fLRtB/vyHtsUI2O9s
 2S28Cfwmm+k5PEjjeGJCfXwnyV8rYxTvHP5xRP3pIC5AS9l5UTJ9F1L/p
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gOfhohIV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS
 key get/set support
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:vitaly.lifshits@intel.com,m:horms@kernel.org,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.937];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: CBEC2187E69
X-Rspamd-Action: no action



On 02/02/2026 9:59, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kohei Enju <kohei@enjuk.jp>
>> Sent: Saturday, January 31, 2026 5:30 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Lifshits, Vitaly
>> <vitaly.lifshits@intel.com>; Simon Horman <horms@kernel.org>;
>> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
>> kohei.enju@gmail.com; Kohei Enju <kohei@enjuk.jp>
>> Subject: [PATCH v2 iwl-next 1/3] igc: prepare for RSS key get/set
>> support
>>
>> Store the RSS key inside struct igc_adapter and introduce the
>> igc_write_rss_key() helper function. This allows the driver to program
>> the RSSRK registers using a persistent RSS key, instead of using a
>> stack-local buffer in igc_setup_mrqc().
>>
>> This is a preparation patch for adding RSS key get/set support in
>> subsequent changes, and no functional change is intended in this
>> patch.
>>
>> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h         |  3 +++
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 20
>> ++++++++++++++++++++
>>   drivers/net/ethernet/intel/igc/igc_main.c    |  8 ++++----
>>   3 files changed, 27 insertions(+), 4 deletions(-)
>>

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
