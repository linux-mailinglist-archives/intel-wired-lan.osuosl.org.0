Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABAAB1B7F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 18:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B369A41A46;
	Tue,  5 Aug 2025 16:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pS293nl038u1; Tue,  5 Aug 2025 16:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27EC341A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754410101;
	bh=TGMQFnfAfXBKO83bnCSTE2CM5UJIt1Sdbz5boqVT3oo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vWFIX+0nYKspc5EM03/w1s53NyLSnSqtrW2fWWqDhYhiOV8Peqg5T5MgGpd+H2B/D
	 qurSIMra3ct8YoAiBQl/wYhRWOzi6xAjFh+kPx3LOuZYsBAc/afIiaN1rmg/r5uJ7k
	 0a00p0ucemAhs5R99T/rJaMpD0mhrVf0Ah/QbQsFKlD78uPACKTLkGRVbLO3vk3A57
	 AO4yHByRZzE+MZwVRS/ZU+FsVSHcP+vHxsxyhfK5Xcy15tWocIWCab2WVeso9Mgovk
	 zC84VErG5euYSBwaS1qrAFUJ7Wpk4xrUIavGaYn12zRFvH2jG1ZeVVlaiFl2yqmvCN
	 4BthQp+8ru9GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27EC341A55;
	Tue,  5 Aug 2025 16:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B63C1A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 16:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F117340396
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 16:08:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMOrnzRHNGjS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 16:08:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F0544017B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F0544017B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F0544017B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 16:08:18 +0000 (UTC)
X-CSE-ConnectionGUID: vj38u5kuRAKMjNscp2dixw==
X-CSE-MsgGUID: lyCE8k6ySQmOH+D3GCutRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56794821"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56794821"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 09:08:16 -0700
X-CSE-ConnectionGUID: 9r61GYk0TYiy0kda9iEK4w==
X-CSE-MsgGUID: cNi4qRINRBGNImxFGQ+08Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168779632"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 09:08:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 09:08:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 09:08:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 09:08:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VGFkL1MWLYMXIAsEZpuybJEm32Y/IWYnd3g38M7J2hlQ5/vz54At5dDo0vyaroibwAAq7tuvThDn+KyfP151Zb9VMw/mr87DeeRBJ32Si8oTPkezmoiv5uLwLJmGdHa9js9wUx+HCUDF07Ol5MjeRjC/+vbDUtNnauYwvGNjoAW27nVdG1zA3b0CTekFGSA3ZVEuEP5q1DQbKOIiZ26o+RTRv+YGNubii9aYRJjg7fPVmdBllvzH6K0xENEqMQT+zc7YtlaTSb+mwu1zRqhoz5FEp13IRu6fBOBda7VDv8XVwgXvZEZfZiris+DvTU2YBj6JnwClb7aQXSdYgyqFXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGMQFnfAfXBKO83bnCSTE2CM5UJIt1Sdbz5boqVT3oo=;
 b=uY62cUYLvIGiGD3hbUvsgn6PP64D+yMV2CetK2v8CagBXCqo/HCALoPDUFa/7n2EJ+2HsXQxGT7VIWGIh4tbB1JUu8isEy1zyVB8ni1cWfpCoQ64TPcpO7QLXv/f5keFuW1I/IqVWOrh6eHQcq0mQE+0AVRvw9JuXUh4/wuAQL282+aYDIygZOkkTaDhobH8UHlNv3VRFI1FlvprwvyGG6CPI5HmYUtIJB2yaBSu5ls6lxt49k0a79Lgk6IIkRc1asikWm8m8SWoQUG3/z/rdPaFkITYYLeBNxllCbAQo0gjhGcYGJk2n6ki8cMPXLbkGwK+RNugKRpv+dK9wCwkzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA1PR11MB6567.namprd11.prod.outlook.com (2603:10b6:806:252::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Tue, 5 Aug
 2025 16:07:56 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 16:07:55 +0000
Message-ID: <c12daae8-fb56-41aa-9d5c-1bb1a17457d5@intel.com>
Date: Tue, 5 Aug 2025 18:06:57 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <bpf@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-14-aleksander.lobakin@intel.com>
 <20250801153023.087c940c@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250801153023.087c940c@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0058.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::35) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA1PR11MB6567:EE_
X-MS-Office365-Filtering-Correlation-Id: 4657bbce-c389-44ec-3915-08ddd43a3d24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anpxeDFYLzMyRzhRRm9NUm9vNnc4em5TeEh3N0ZqdWhNWTFGZTlpVjM1L2Y5?=
 =?utf-8?B?T21NcGNQanRja25YcENiRVpZVFlEVHRITnpBcmR1aTBOSnRDZGlYV3BOQURq?=
 =?utf-8?B?SUhCUDdhV1plcysveHVqZHloYnQ3QmEwQkxuNVdtVEpNd0RhVUhlQzZrMXJU?=
 =?utf-8?B?V1pGVDZxNHFmQjlZcEw1S0VVYllNM0lrV2xaNmcyZ0FkNEJuUEZqbkJFMWtC?=
 =?utf-8?B?N3RRL3F3VWNweFVISmh4bjQ1T3ZxajNMYUo5K3ZhajgyMjNMZ0dqLzJLeVJL?=
 =?utf-8?B?UkxETnJ5TFoyT3A1U3ZpZUFxZmRBZm1YVS8yeExobVp6UUZVbi9sbnRZcGhk?=
 =?utf-8?B?a2JwcHBRQjJieHIxTWNtOGNOM3luK1JiSEhzRnFtMUd6enpQenQ5RDl1T1NL?=
 =?utf-8?B?anNYK0lnYlk1eEc4bkR4Qnl3RnBtQTNnY2xJZE1yRzBKdUUvQmx4S1drVkZ4?=
 =?utf-8?B?NCtESnRzbWtNQVgwUy9RY0ZZVVdZSjdrNXZYb0d2eU5aMXhaZlJId3BsN0ZY?=
 =?utf-8?B?Q1lTZkdudnJlMURUNU9FWVl0aEt0Uk1VUWM0UjNHQ1kwdHRtbTk3M3IxYklr?=
 =?utf-8?B?OWRZRnlMT0lPbjloNkh6SE01TU9ZaWpoVVBvdnlpUVozWkhMVGNJUXRtTCs0?=
 =?utf-8?B?QjAzT1JSd29DUFhadlJNeUVZZk5HVUFpYm1sNWcyaHZweEhrY1ZMazhDbXlG?=
 =?utf-8?B?WitQVGpFR3B3cCtPQ2VsUG9lTC9VOGJBWE93aVRCNDFuZmNIS05STllVdk83?=
 =?utf-8?B?Q3FrazEvQkdLeWNOaWNWYkpVWDFOSm9RYWdMWG1wcWg1Mk5INUFZUlFGTXVU?=
 =?utf-8?B?Ny9wZVN2T29mVGEwaWx4ZVd4a3RDTTFGSjFtd2E1c3cvZVhpOGs5VXgwNjd0?=
 =?utf-8?B?YXhqbTdNSmtMSkVKR3VoZzNEdUFoQmxSc1Q0WFY3a2RqTjM0dmxOZ09kSDBX?=
 =?utf-8?B?SFFlM0VaWGNWMUNmWms4QUZMclBYOExQTWliazhWa1BVV1pSRnYxR0pTOGM3?=
 =?utf-8?B?Mm0yV3NQeThNZTE3NTZkQlNnV2JYQzBOUFBmbXVzL1NJYmNlbGNHNVc0bS8v?=
 =?utf-8?B?WFhkSEU4YXVWTzdhekdTeCtVdUFUN1hXTVk5UERmZVpLV2FES29uOUpRUEEz?=
 =?utf-8?B?MGVyUkEzWitLUEZpYU12WWdWU0NPUldxNWJyWGEwWVR2d0FXS25MSlB0WDVO?=
 =?utf-8?B?M3dhV2dXZjlNUnFEb1hXaE9rMkd1NVJNNFZKelFraGlKR2VpS29ac20rWU44?=
 =?utf-8?B?NjVsOExBOTJWclYxZStRMWVCMzdPYURuaUhvL3NIV0l1REhQeUpBeVFNcEtS?=
 =?utf-8?B?bnRBS1VFNDU3aTR4OTV4YzlMSFVQUkRlN0RrZE9PUXl0VEpkQzRnMFNFc0Fz?=
 =?utf-8?B?RFh0VXFwUDF3N05ETkNVNE40M1cvNVhYVy9Mc0gwNlc1N0hXaERqSzlJMVZQ?=
 =?utf-8?B?eDkwakxKSmt0TXpLZmZBMm43UnV0U0U4N0ppYnJVQVJ5OVgrRkd6dWF2YWFl?=
 =?utf-8?B?UVdzcHgvV21VM1VEam9ISDlxRXc2NWVOdnUyK0RHZ1dWZnpiTDYrcjJLS2hZ?=
 =?utf-8?B?TGtDKzhlZFZPdkViOEs1aHg4V0F6cHBqa0VxNUloUVRTbDFyM3JFT1JNa1Bz?=
 =?utf-8?B?dnV1ajEwR09tVzZsTTZJaWVaZnBObXR5bjRRMXNtVkhSWXZnM2d0eDlVNURs?=
 =?utf-8?B?NjF6ejFmZldNallSSlgwNzgxeDBYY2JTMGhndW9PS0lZdjJYZVVkWURTcXlH?=
 =?utf-8?B?K2tXbjlhZFA5VzJXdnUwcXBqdnZ3eEtOdkRBOWlCOWVMNEpEVC9SbUJ5RWVN?=
 =?utf-8?B?ZWtaK0tsc1JJYnZscXpZK0dEcG5HN3UxVURWRlNnTkk3cXVDdVRvclRFQWZj?=
 =?utf-8?B?cmRaVDU1VVB4UjJqUlVqdmNFdHdyeUpvOG1Ob3BiTGhoRlRDYUJwM2ZQYmht?=
 =?utf-8?Q?XnZJaqK/gGM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0VhUDUvYk5iajVoMlI1dEpuYXJQRVNhU3N6UlhMZy8rSXY1WTcxOGNKcHph?=
 =?utf-8?B?RW1QYUpRRENBeW9LR1prR21ucXVNeTdDbi9uYWVwRkIzNjRsQi9QVzkyZmYw?=
 =?utf-8?B?YUpuNlB0ZkovN1ZLRm8xenZXaFZJMHQ4WmlyK3N1OWM1SUJDZitOeTl3MlJF?=
 =?utf-8?B?K0dIZUF5VGR0U0YyWlhsNGIyVHNXQTNnUHpBbGkyQ1VLNlpNcHlnNUF5UDhS?=
 =?utf-8?B?WDZJWE1uZXhQWDROWXU5OUhKRnlyeGcwTW4rT3BpazQyYkcxR2FXcDVLbVZP?=
 =?utf-8?B?N2VQV1R3aDVac3NVaW8wWTBqNzI5SjloM1pBUGFYSGlCNXJzcE1Zb3FXRlNN?=
 =?utf-8?B?TXo4TWNZMUd3MWMrNHlwZFFhR1dMU0ZuQVc2azNJakxmRTIzN2NTUk4rUFFT?=
 =?utf-8?B?TDkyUm04bkxZOG5DbDVoQ1Y0OE5xZzNneFBFdEpJQm95STBHWFVhd013Qjh5?=
 =?utf-8?B?b2V1dXdjc3RXRkRsem9XTmRGUkNFdG1GMkdkM3loc3FsUEVrOWZpb2lKbWVH?=
 =?utf-8?B?UDc3KzNoSkRYdmE0SG1TNk9tQjl5eG5Sa00yZVF1aE5FTytOSEpWY0NQQUJn?=
 =?utf-8?B?eHhKZUdsNFhpR2lvL2NMVzdqcUMvelI0MVZRTUJLdm1YUGdvZWRPTWNQaksz?=
 =?utf-8?B?NkxHczIvOUpHTU1iYklYbS8wYVhFTGF3Qm4yWGkrNXU5ZG5jQW5MMklpTDhK?=
 =?utf-8?B?N2ZnVjB5RGJZQjRTdUh2bERlSk1vKzZaVDJaZHZpbHBjQ0FPQUo2UHB3TVE3?=
 =?utf-8?B?ai9BWFVGRDd5TEZoM3J0d2dXdE4zRjZrKzJOUHhESWFUajRJTDYranBHdzZC?=
 =?utf-8?B?RE1VMlI0cnFYMXZKMFB1UW5BakIvUVRoVS9SMTlwU2RPUnoxUi9HRlIzdTAw?=
 =?utf-8?B?UXBrLzFabHJaaS9EZy9OUXBxWFRXV0dmbWkzaUpqejdqUzRqSytqblpQNHNX?=
 =?utf-8?B?bzlMckVqT0pjT3VVYjFJZUk0ZDgvN3JWdUxYMUVSK2hWZXM5QVVTR2VpU1kx?=
 =?utf-8?B?ZXl3SytKWGk5bnoxMDUvdWRhbnFkeHFLNjhQV3RzQXR3Y0ZZYjUyU05ueXlu?=
 =?utf-8?B?RVQrblVrOWwrTzhlampIRzB6eUxxWE5SZGwwanpzYTYyemYzY25VUDdaWWFk?=
 =?utf-8?B?Y3dkbjQ2Z05ZYjZIUURxRmgyY2hLNTI1SU1TTW53WHpNTkY1ZGdoU3hwOVNG?=
 =?utf-8?B?QXY3VFpnTXo3RVU5TERRd0FFMlFUaElXQUlNREdBMmhWaHd3ZXoyUW40M2U0?=
 =?utf-8?B?cStGYW1ZOGx2Zm5rd3owTGwrQUVRd01BVnpQR3ZSenc0ZXI1OXBPN210USsz?=
 =?utf-8?B?bFF5K1BMNTJNcGNlZjFKTEpQVFFab1NCNVpOd3g0YWxzNGFhRlpZdUhwSzZM?=
 =?utf-8?B?ZS9nZXRGVTRYNDhBWjBaQTJQc3pVb1BCVnBDNmJ0TGtzeHpXZk1QcCtheWVY?=
 =?utf-8?B?c3pSVmVrL01ycWV1VGhZYVp2NUVLNDZ0akFocEFnNUpRWm9MdjE5L2x6MmVC?=
 =?utf-8?B?d1hiZjRRQUsvMzJocU1xVlFXRUc4VXlaak9UZjFqYTNDazZGK3MxMTFockpL?=
 =?utf-8?B?SEVqclJDT2ozN2NwV3hXSXZnNVErUTBsRFBzc2UvVzNFR1VvZlJDSkF6L2F4?=
 =?utf-8?B?U1dob1FNRFJmbVpjREpmQjVHajVEaTR0MFRnek52SWphN0lhUVZyYjVQaGV3?=
 =?utf-8?B?c1p1OXk4WEE0eWxycW9QZkw2N1NONWFhY1ZCVDQwNXl5T0hYTTJtUXM4ZG5Q?=
 =?utf-8?B?NEVQeG00WXhKM2V5N2V6aGZ4dUdES0hRSDlRVTBFWVZVdDJMZjIreXIvV3ZD?=
 =?utf-8?B?SjRFMUtJSDgxaUxwcjNMb3hyYnVsRDF6NUxGQlR0Q2VrYndxZFc3NENrWjRC?=
 =?utf-8?B?SXlva0p4T290eUxhSmpxd1BaMTBMa3hLYWt4N0Q0OU16MmFYM2VxUGg1dENq?=
 =?utf-8?B?WGRLdEl4SjJGMlJUbGEreGVpZnJrMVBNbXgrY1piVGZ0ZGg0UExWc0dCY0Ft?=
 =?utf-8?B?a3BIVExZekpRZEpYdTJzV3YwRXlLZ3pldzJLQnMrTW5uRDg4MEpGYWtmL2I3?=
 =?utf-8?B?cUV0OVRmeGJtb2xsUUZSQXByMDBtUXRwQVg3Nk43NUlzMUFlRlA0RXFPV21L?=
 =?utf-8?B?M1czcHBNeC9wOUw2eUdiQTd4V1lnQytHVDQ2MEtWS2VXNXpSZGlRV3JCQmJI?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4657bbce-c389-44ec-3915-08ddd43a3d24
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 16:07:55.8552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0YgR5k7HZEb3wD39iAehOtiYitIhcukQ9mXD2jn/BxaVmuUcNFcfbElrG8MSdftxDRLl9Ge2B0iw6F/qFOU2Nh9Wj+64ycMDqJFaOFhFVFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6567
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754410098; x=1785946098;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VI50QOLs9BbjPF4sZw+xyfuZYkdHlJcDhd1huZzleZs=;
 b=X7Mo/AqgkH4U9lgeIKb24J1iWBHkT6BK2lkX10O7fAGSo1ZBFRMBncIv
 cZexxuqR6f2cWLerTni6zp1Bs+3tVFnPOTCD5rCk+3QK409AvPXH7q7Jm
 wHyd9dX1cJaHMqfC/7VdYObzHf+U6CX74QOfsGMCravznXwMQMwxVu4rv
 YU63Nd57UJi8/XI4YT6w/NWWkNwgcoX+oZNSgZv9Tqg3HYBRfFcQbmRPz
 ay5BDdFBLi17602EuynvYxoW3P56HFoo1odrI26lZJBpd0l7D4HOY6ldM
 ZAG3yzztMVOr1HeatWBY1mbO9Wq4xq6co2IuWihlpzn3csWJnAwPW7wAQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X7Mo/Aqg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 13/18] idpf: prepare
 structures to support XDP
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

From: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 1 Aug 2025 15:30:23 -0700

> On Wed, 30 Jul 2025 18:07:12 +0200 Alexander Lobakin wrote:
>> Note that "other count" in Ethtool will now also include XDP Tx queues.
> 
> Erm, what? You mean other channels? Channels are interrupts, 
> not queues.

Ooops. I had a strong impression that "channels" mean "queues"...
I think I really need to sit and re-read the Ethtool documentation
carefully.

Apologies, I'll drop this in the next rev. XDPSQs in idpf don't use
interrupts, so they shouldn't be counted here.

Thanks,
Olek
