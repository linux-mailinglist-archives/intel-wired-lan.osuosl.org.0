Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D61FEA5CC06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 18:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9347260B51;
	Tue, 11 Mar 2025 17:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K9fqr9Sjif07; Tue, 11 Mar 2025 17:23:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C70A60B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741713784;
	bh=RiVmKomMr7l7R84PFso7qE0j6Z0a2xkgglIhgwczGd4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=txIR87vv6EgJKi9274XiHZQJU8QIlzPQIhnIiNQcdfKcC/Qrl4YdASvKgFatv/Sw6
	 0A6I7i7hlhfIkLvqsmwM6Sbmdnk6j1W46qzEOrvaav8cptvtHWI8Opm3osZajiMPpr
	 +NbAsTRv+t9q5Zupr12YDGfOXc7zP056d3zbrRbDA3HpsiQmRQczFa3jmkcCfFrPPb
	 APrDGnXs+N6RRCqC7mqeZBPHDX56al6f/OM2SsVXMRA5tfPukJGeTS1Ofw46V6aoHU
	 2I/kmo99QAcsS4+Qz2rrHDH52iQmQP8JJ9zv98Q/jfV/X0tlyUoyBuYxh6vm+X2FUo
	 /O3Z8ceyclD5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C70A60B9A;
	Tue, 11 Mar 2025 17:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 04D1D1DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E748481136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1SJM9i5QseJ0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 17:23:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 889528114C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 889528114C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 889528114C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 17:23:00 +0000 (UTC)
X-CSE-ConnectionGUID: N/zE1m3RTIGb/NH/T8fvAw==
X-CSE-MsgGUID: GgBEIcyUR3G7vFDSh7ihyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45549447"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45549447"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:22:52 -0700
X-CSE-ConnectionGUID: xeyqVvluTq2b7BQsczpBEQ==
X-CSE-MsgGUID: WZFMO3OtR02cuIFTmRpq9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120895126"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 10:22:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 10:22:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 10:22:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 10:22:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qbr0ou7pvkA4eldwS0LPNxUwRgYXFl25JFnHn/JWitvuav/XWrqd9Ye5ThRlSAkwFDgP1Ux555bFRxiwrWSuNDEEazgJbvuxUQFK3WLWAesQG9AJTbjIosubqy89mX0M3zWGMXsyh5c4VC5TGnzqTTtTFVWPGS3WBcp4/VGB/FZB7YDuWs7bBHK8p9T6h4Fn4Odfs5nmYLooLTenYB65G6bhfte3IXHvGRrymRkZJW3w64J7A5E0z5YesI4xSh5whJrYskvZ3XmquuXg//KKRfb90SaxT4J6Gzn7oeAEQbEepkOclC9yYdqRfdwExxyD5Flh29kdHK+a0Ib6ICzbJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiVmKomMr7l7R84PFso7qE0j6Z0a2xkgglIhgwczGd4=;
 b=qVNNmo38loQr2UW1hibhCevvse0BPcCe7HQV0GG8d0ow8pAq5MnegnM9U/hduW1W5zojcyfyoQDCqIYJ8rknzpEIzwJKBDKaAfW5o2b/1AfGIhD51rK8gwpIbqVWfqSvDAoh32gELv2dyrAwdLJAEKSCz7YJEGFs0MiyKrYBGsClu2MwTDADVKgCdL1ExJ+lrLMNt8TwZ7xEWWjn63rKfL8kwicpYTXBuI5gJLheNGC6011lMK+Kguy/b91//8gkCgmZVDFfFr63JaMWLhjH8IZESbEarNq4S48E1p9V9Wdif/RrADy8U5B5VM7GfpEdVjuKMYL1kN0KzqEapDsqsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB7432.namprd11.prod.outlook.com (2603:10b6:510:272::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 17:22:13 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 17:22:13 +0000
Message-ID: <049ed5bc-5ee8-4fb3-944f-bd2a2116ba21@intel.com>
Date: Tue, 11 Mar 2025 18:22:06 +0100
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-2-aleksander.lobakin@intel.com>
 <CAHS8izNnNJZsEXwZ07zhpn8AjxhGGcm9vyt8uFos1rVvn66qsQ@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CAHS8izNnNJZsEXwZ07zhpn8AjxhGGcm9vyt8uFos1rVvn66qsQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI0P293CA0002.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB7432:EE_
X-MS-Office365-Filtering-Correlation-Id: dc0fdde7-2c63-4eee-1d3a-08dd60c14358
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RkRHWThiYmsraDhEK1FsTEdmN29TaC80dml5WEdBb1NibEZ2c2J0b3JQc09D?=
 =?utf-8?B?bWdqMlBydWc0cnlWMG5UbThTK0UvQzB5ekpxaENxWjJOeDlFRlMzelNreU9x?=
 =?utf-8?B?eGRBd2I0RUtoT2ZIc3c1WFV6czFpaCt6RVRNQWRlS0dhdjRSRGxmU2YrZHpL?=
 =?utf-8?B?SXZDTWJYUmx4dU1PUnZGSmdJbnAvUko5NUpubE01Um9BSkp6MEN5QnRXWFlJ?=
 =?utf-8?B?S0tPaVpUVStycXRJRnA1cS8zKzMvaGJMWFRmVGhEV1VBYTc5R3U5KzdieVMr?=
 =?utf-8?B?MnJkUU9wQ2xyMzVMQy9wWDhRdmdrTVI2bHMwT2VqOElNM21STlZPNWU5eldP?=
 =?utf-8?B?cjBUTWdrZVQrRWtmTVFtWGFkR0oxK21qTjI2UGxHNzF1RW95VTdsR1IzRWs1?=
 =?utf-8?B?RWNsRXZXR0Q1b0xLR09ENHNFRkRPTWliWlYvT2srOHl3Y1BLRTZZT2kyVjFO?=
 =?utf-8?B?U2hmU1NqaXczWTlBSlFEZVBaejhORkxBanBQTVNkRkErZGcyMW5RTFNScVVo?=
 =?utf-8?B?eTBwSmhMYXFtYzRrbWFodXl5aDJnc3c3ODZDYVRjeWlkTmFPa1l1dlcwaUtK?=
 =?utf-8?B?QlcvVUFyTVRWcEYrdk83U01wdUdRVVR5QldrdFRBTWt6SUd1WWZpcWhiWTVS?=
 =?utf-8?B?Z2V2WTZsK3BuY3BjRENPZjg2dndtdjJiNDNGaHc0aTRUV3JubDIveEd3QVAv?=
 =?utf-8?B?cnlza25qNVg0aER2QWNZbWhLMkc2WElCRUZVQVZaQ04xZnV5Q05SYVJuSlpL?=
 =?utf-8?B?ZGNTUXpIb016SDVWUVh2b0o0eU8zbXBDM200Z0gvWmxQWFUxanFSWGQ4cVRU?=
 =?utf-8?B?dTl1YWtrSUdKREZXdTVELzFFWWwzYjZyc2hlQ2hIbitISjZBY3BYV04wZnZi?=
 =?utf-8?B?UUZSSmJYenM2TEJNNXROelY4YnpNcnNVckRjckFRY3FHdDMxUC9FSlV2ZS9i?=
 =?utf-8?B?cjJCRXVvbVg5cGVkRE1uWkIrYU1RbGFXZVQyTm4xL0QrVnVyTjdLMUY4aGlq?=
 =?utf-8?B?SGlNU0F6R2llTm9PT2NaUCtWYm41TGZhcXg0VWdMVWk1UlRKUnFWRWo5TEZ4?=
 =?utf-8?B?WXJQM1B5djdpTnBQVnZpbkJ3VUhjQXVuZkI0THIvQmJuNTNXOVBHUFNGeVVp?=
 =?utf-8?B?dENtdnYyTS9UZDIxMW1UTDlsSmIzZTg2WWVzT1JudkNyVm56WnJOUDQweFh0?=
 =?utf-8?B?cmdSV3ZKZ2twZmFDbzk5RGlzWlVnaHJhQmRBWTR2ckRWYnVES0FrSjRBY1R0?=
 =?utf-8?B?OFk3a09RS2xuNkZIL0QvYldyVTNOblBnQkdJL3ZtY3B2QUUwNUlIUVJHd0Vn?=
 =?utf-8?B?bG1KZ0dxWThsZFJ2MDJVclJTeUJUdTlhTDduS0wvejRFQVNJUXBJOEEydTcz?=
 =?utf-8?B?RTQ5ektTK2d0NUtRS1VIc1BhdEFBSmlHdGw3Z01RdHpRWUVXelYvSVovSHln?=
 =?utf-8?B?bzNJdVFpbjc4ZkQxNUZSMVJtc0c2REM3YVdiN0xmSVNvZEIzYUJUQVdJNGRt?=
 =?utf-8?B?THdqVVlZYXE2a1NUZlFLS3Z6ZHhwY0V1WGtnMGZFSUpnczM3bUJ0ZzdlR3pW?=
 =?utf-8?B?VjlkL0VLVjBQcWpkNStIMmRkaGxBVEZBRFU4b1Y3VTNNbVVlN0cydEFGa3dP?=
 =?utf-8?B?MmtFdkVPY2YzVGp3a01TTkQ1M1RidXZuYUtuUmNVSW9kRlgwYkczUERoR1o5?=
 =?utf-8?B?M3lqTlhtTFM4MWc1b09kTnpwcnd6ZjdHZWhBOStqclR4ZlZiZ1Q2QjlwbUNU?=
 =?utf-8?B?TUZzQnVFdWdQbjJkTjJqVXkrT0c0dkNCbHhjMUpjTllJaWZnWWZWVFI1Z3lh?=
 =?utf-8?B?RlZKRXZBRzFlRVhHY20yVjFyTS9GTDhsQkY5UmJQejJ1SlR0NGtMbC9lSlB4?=
 =?utf-8?Q?fA0LCGVmMksWH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2hrMXBVa2VqaWIrRm9xZXdsdVp3aGtqd1k4aGJORTZqOExhOS9jajhDYXNn?=
 =?utf-8?B?cGIxaXdsR3FXYTNna3V6Sk5QZXlqZ1ZwQjluSXplT1BMeEhTcWRBaXM1TmFJ?=
 =?utf-8?B?dE8wYTRyeHBmTXlCeUhDV2lmRUl0UVp3bnF1VldmaDhkR1lFQ3FLaWNpNFI3?=
 =?utf-8?B?NjEvanVtQ0VlUTh0eHVsM1hlRC9xVkJ3dHRES2V0OERkUzhoMGxFUEZIWHFX?=
 =?utf-8?B?RTZrSkU1V3d2UEZ6eUUyNFBxKzg2dW9FUnRIN3BJdlY1S2pkOXlyZWZHd3Q3?=
 =?utf-8?B?ZHZ1UFFIbFU1aVl3VTlFSWZ4NXVnOEs5a2JEa3BPSy85YzlzZG9oV056bUkz?=
 =?utf-8?B?eW00djNlWHpPeDFLRU4rSDEzK0ZUN3UxVFdBS0V4WC9xUmh6V1RMS1E0NDRo?=
 =?utf-8?B?TjFFUVBINVlqQUplZXIvYnZzcXIwT0U5L0FZQXRWaEhmTjI5ZExYbTRsMTNS?=
 =?utf-8?B?VDRDK1FhL05MLzRQNXBYQ1o0d1dQU041dytTQWJ4ODA5K2NLZy96dTl0aTgx?=
 =?utf-8?B?U3liQmh5Y2NmTjVIU2p4OVZEZVdsVFVZY0RPMnFhN3FOb3k5R3hmcm1TbGZi?=
 =?utf-8?B?cnJibTVkazBxSkREczJtbS9vZThObjYxaThSRy9VZWJPQnJYd2I4aVErSlVq?=
 =?utf-8?B?RHp6YjY3Nm14cllqMG1qN24ySzcvTzl4bE9Qc29nb0puQng0SUlMOEdiMGJt?=
 =?utf-8?B?VnJlWFJpRkluMTFHTCtZZC9Mc0VQUXNHWkdRVDNobkpVVnJ3ayswQU9ESG16?=
 =?utf-8?B?ejNGMndRMDNqeTRrZG9pMzNHVk5kRWhDMzE5Nk1SRTZ4bUwyTXdUL1RTRlBC?=
 =?utf-8?B?Q2dTYS9Qem55U1ZkVHBEcEYyQWVuQ2NLR3JKM0lMSkdycDFUdWJ0RG1JdVBw?=
 =?utf-8?B?ZGsvUkZwMUY3eU05R0NDTG1CQWd0WHJDaUpvRVArUkJSbUNyay95U3NCb2VQ?=
 =?utf-8?B?aDhOSzlLaENDaGZOeG8zYkh4VklMdmNQNnVMaXpNMTQ2N1NBV3o3d2JDUFNx?=
 =?utf-8?B?dE9IalJlT3pvRE9xOXdhQkJBOGNFSlNTY2Y2cjJOK21jbjQydmpBY1lLM1NF?=
 =?utf-8?B?ajJjSlUvdTNicmtwZXljaXBkSUZRQjBUdmJxMTdsN01KZjljSHJUbDkrbWRX?=
 =?utf-8?B?SzFwOVBrQm8rNGN4UU1WTnJZQ0FzUUJ1TVpnOHdFbGxGd3o1QXRhVmkrcVky?=
 =?utf-8?B?b1pqbXQ4L3p0aGhHMUVkR3p6bGNPM204dDhVc1dxV04wV0VtNXZpZ2psa2hy?=
 =?utf-8?B?UmJjbTVja0ppa1B3KzAvU0src1Q3djFWeHVjbXlFU1BxcTBjTTVJYWFwdktM?=
 =?utf-8?B?YTBuV3JiTXNoMHc3S3Zqc3BjWWJJRFVyOGVNcEM5S3p5NjlLcHBoMnhTYzcx?=
 =?utf-8?B?bTIwLzRBS051NDVuQTBGb1pDN0tFOGMvWitYNFlXMWhlRldJZFBmMWFkS0F2?=
 =?utf-8?B?MVpFakRjMnJJV1cwT3NEbE1YQVF5U1gyMUlqK0twcEF1UXpzWmM2TlR0QmR5?=
 =?utf-8?B?TWF0UnByZVZNSTl0NFAzS2lRRGhBbzgzTjc2U2phZEp4M21qWWR0bm9ZTWh5?=
 =?utf-8?B?bHhDNGx3RThETjFTNjNIbW8xQ2VnZ3ZVdDlQdHVaOHhldVREUGo2QS9QNlVy?=
 =?utf-8?B?RmJrK1oxdUl6RE1Db0hUdFlPdGlkQXVVUGRvdDRGNU5UVDhhMVpzN2hyQlNk?=
 =?utf-8?B?ZDI0MlVGd1FRMUdiT1J5OFFJamk3QUxwUWlqMUR1UUlNenkzVFVFMHhMWWNH?=
 =?utf-8?B?UzRuYTJUWFo1WkpVUkZ2b3lqR3BxZnhVZnhLUVp1NW01WDNDM3ZhZmY0M01j?=
 =?utf-8?B?K21QVHRVQUpDWG00WG9xcWYxcXhQL3lZNk5OaFozNDBPNmZhaG90azFjK2JX?=
 =?utf-8?B?R20rNzZNWllybVQwM3hvbTluWnRkeDhBZUN5QWcwZGs3S3lJbTdCa05PRis3?=
 =?utf-8?B?Tyt5QnpLd2FZSnRmUmFzc0U2UVkyT2ZkckZlNEwyWG5ISFlwZXVzTTZCUytI?=
 =?utf-8?B?c2UyeVUrVitTbllrNGFxT0RYdVlBZy9zYWxqQVlrb3RkVm03M295dDlRb1Av?=
 =?utf-8?B?K1hNcXdFK3R4ZG51QXZ4ODhsYS90SFZnZTAvdkZLT0liUHF3ZTVrazZweHRN?=
 =?utf-8?B?S0tXbmtvYkJqT0duaU9XRjNET0tDYkdIdUdIUHZENGFLblpxZHpzdkdwdFU3?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0fdde7-2c63-4eee-1d3a-08dd60c14358
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 17:22:13.4334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCtGbBTR/oRDQODjVRl4B9/Acix8E6adlzcjGLR5OAL57NgBddzZ2to4uYDXhz3yBMzCIUfwhq+PXVzEVkmaYIf/co6VPxs/dd3eW/YZPIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7432
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741713780; x=1773249780;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YgUeJwkOz4AVv3SMcxEF5Ee4jRX0XjlyyPEggQPeE44=;
 b=A3IIutz/NQbCZrtGisn8XetS5RGmR7OOKR0Kcu4GjnAqxiKlmTytKdR5
 utRtmmcCQuO2TyZ1kHpu1BqoLfsH6JGTrEVd78jjmBiKgPJtgOgHkZlfF
 nSBwr+69ZtqSSRbvEVJLBoiS7QXthP/eZ37iLuo++2C9zKNkxSkHI9bp2
 fq7q0XmpVxI+BrQ/Pcz34kIDDDE5ODuam8qOMqTwI5y/ryg/em0b71Ons
 C+LmwobYnEl3IktSwr1FM9IXfBKGe1O8giGBJZnnVQhm1eJflKwsWgNFG
 YvDrIMnKsuxdlEriWpYRNKgMaVWnuAV5UIGVA0bgce5HNKhnscUCDXJXQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A3IIutz/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/16] libeth: convert to
 netmem
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

From: Mina Almasry <almasrymina@google.com>
Date: Wed, 5 Mar 2025 16:13:32 -0800

> On Wed, Mar 5, 2025 at 8:23 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> Back when the libeth Rx core was initially written, devmem was a draft
>> and netmem_ref didn't exist in the mainline. Now that it's here, make
>> libeth MP-agnostic before introducing any new code or any new library
>> users.

[...]

>>         /* Very rare, but possible case. The most common reason:
>>          * the last fragment contained FCS only, which was then
>>          * stripped by the HW.
>>          */
>>         if (unlikely(!len)) {
>> -               libeth_rx_recycle_slow(page);
>> +               libeth_rx_recycle_slow(netmem);
> 
> I think before this patch this would have expanded to:
> 
> page_pool_put_full_page(pool, page, true);
> 
> But now I think it expands to:
> 
> page_pool_put_full_netmem(netmem_get_pp(netmem), netmem, false);
> 
> Is the switch from true to false intentional? Is this a slow path so
> it doesn't matter?

Intentional. unlikely() means it's slowpath already. libeth_rx_recycle()
is inline, while _slow() is not. I don't want slowpath to be inlined.
While I was originally writing the code changed here, I didn't pay much
attention to that, but since then I altered my approach and now try to
put anything slow out of line to not waste object code.

Also, some time ago I changed PP's approach to decide whether it can
recycle buffers directly or not. Previously, if that `allow_direct` was
false, it was always falling back to ptr_ring, but now if `allow_direct`
is false, it still checks whether it can be recycled directly.

[...]

>> @@ -3122,16 +3122,20 @@ static u32 idpf_rx_hsplit_wa(const struct libeth_fqe *hdr,
>>                              struct libeth_fqe *buf, u32 data_len)
>>  {
>>         u32 copy = data_len <= L1_CACHE_BYTES ? data_len : ETH_HLEN;
>> +       struct page *hdr_page, *buf_page;
>>         const void *src;
>>         void *dst;
>>
>> -       if (!libeth_rx_sync_for_cpu(buf, copy))
>> +       if (unlikely(netmem_is_net_iov(buf->netmem)) ||
>> +           !libeth_rx_sync_for_cpu(buf, copy))
>>                 return 0;
>>
> 
> I could not immediately understand why you need a netmem_is_net_iov
> check here. libeth_rx_sync_for_cpu will delegate to
> page_pool_dma_sync_netmem_for_cpu which should do the right thing
> regardless of whether the netmem is a page or net_iov, right? Is this
> to save some cycles?

If the payload buffer is net_iov, the kernel doesn't have access to it.
This means, this W/A can't be performed (see memcpy() below the check).
That's why I exit early explicitly.
libeth_rx_sync_for_cpu() returns false only if the size is zero.

netmem_is_net_iov() is under unlikely() here, because when using devmem,
you explicitly configure flow steering, so that only TCP/UDP/whatever
frames will land on this queue. Such frames are split correctly by
idpf's HW.
I need this WA because let's say unfortunately this HW places the whole
frame to the payload buffer when it's not TCP/UDP/... (see the comment
above this function).
For example, it even does so for ICMP, although HW is fully aware of the
ICMP format. If I was a HW designer of this NIC, I'd instead try putting
the whole frame to the header buffer, not the payload one. And in
general, do header split for all known packet types, not just TCP/UDP/..
But meh... A different story.

> 
> --
> Thanks,
> Mina

Thanks!
Olek
