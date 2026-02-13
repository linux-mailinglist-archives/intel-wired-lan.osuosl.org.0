Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABh4FQf9jmmOGwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 11:29:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7313514D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 11:29:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B49E260793;
	Fri, 13 Feb 2026 10:29:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfZ_fowywjO4; Fri, 13 Feb 2026 10:29:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16E556079D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770978564;
	bh=izxdQUF3SxV0eRPkRYQ9Vz6MYnmKdsBhkzGTHOZIY44=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kGLnDxs/vvqfei9cnRAB4+2yqk63jP1Ly4x09IC+5v8wOxe/RbPKtqVt58a64Oz/g
	 YBF0CAVrcNb5AWq6j+3g0Y3JDRkmCX1ihREvA5RHx5dRXKxi/WA09Wk1mEp8Y6HZ3U
	 poOnLOIWUXPLvSABg7fg3NqaG0+2AdY9G+p71gimnEEIhillP/VrsQDqDJEbkADee4
	 4HdPeXXjPgsMUkfbSny51csneeXa3Q6mab8ulaT5cR28TsV9dONyQiBz1W7o4Sfjt1
	 fdV20+zhAc0zqsktsNjnMw0kz0vTfPh01yJKrNoGDxr+xamT54kP7pYAGEfbL9upe+
	 r402ECujknWHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16E556079D;
	Fri, 13 Feb 2026 10:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43030EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2736441AFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gRmYHhbpmbQE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 10:29:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2801340BE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2801340BE0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2801340BE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 10:29:20 +0000 (UTC)
X-CSE-ConnectionGUID: TkNPRmO0Ry6POSSxP6CjjA==
X-CSE-MsgGUID: 1Oe6F0T9SNierAM+x0aiWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="94799544"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="94799544"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:29:20 -0800
X-CSE-ConnectionGUID: NUvJU/TtRAKY3S2YyALF/A==
X-CSE-MsgGUID: MgJHDsXlTiS5zNai0gdW7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212131785"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:29:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 02:29:19 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 02:29:19 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 02:29:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UrYrL6fRGK8AaIXez74CKnSOKJ+m52/uzvqY6wy6M91BR6AqPUannbOLjXHevwRhhG8z/AH3hCqY4L/gJ3luIHOMlpwx3mCxD6BjhJTRvEqBd/I6Ul8mimcAeUUc8SHT3yiZj9qt2KZhkmjF29Djtl2KI7UURKs+auWie+g7F7dkzwCXtx74M3ZByxK8QPWK5mk8USQHbM20Wy898lqWQon7KwXMaD2LcGkRFWULtdVWv8aKNe+ChtMe/lhv1LTahefFpWpQNXNKeQESRtMVyLAgSXoKckjByzcVVxvFbm8UTTkTlFs9z2YWcht0iOIjShXR+fy8vnOEgptS7tZG9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izxdQUF3SxV0eRPkRYQ9Vz6MYnmKdsBhkzGTHOZIY44=;
 b=Ptiathv86l+DCCTu0evN7nnAc7y6qPh/F3dHsSgT/48FUFclR5rEj2UViSkh395gZfWDD+tLEZWn4Oxmd75cqwPPxb8qcshkqc6BxJuW7VLN35acbMKxN/0svWCkO6zUZjK8PV5e4H1W/a7Gm4EDHZFseSB9N+qsxn4QZhmMoR5s1brKwxqRSg21GHVLOkSTI5wtN2cXKdtWf4XI3fjQJvrPQ1LqBJEY300HLaX+EgJicjDN0xLHuG6a6ZFPPK4Dz15yomNzRBropXEyxE0uWejXA8ZZRufW7mQbPgaIAJ8iaopOvvju5CAei+WLk8YhamDxckQyf9LNSULNomY1QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7880.namprd11.prod.outlook.com (2603:10b6:8:f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 10:29:11 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 10:29:11 +0000
Message-ID: <0f76a71d-fae5-4b1e-a693-8c55d91be977@intel.com>
Date: Fri, 13 Feb 2026 11:29:05 +0100
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
CC: <ivecera@redhat.com>, <aleksandr.loktionov@intel.com>,
 <shaojijie@huawei.com>, Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20260207102245.812795-1-poros@redhat.com>
 <20260211191855.1532226-1-poros@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260211191855.1532226-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0085.eurprd04.prod.outlook.com
 (2603:10a6:10:232::30) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7880:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d239892-3320-4526-67ca-08de6aeaba2a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0Urd1diSHlKVGRES2Mvb2N1bHFMcUdiaVJJVjlpSUlZTVhDc2pPclFyT2xG?=
 =?utf-8?B?SHh3Nm5mSkRyUzdJNG1Iakx2bGFabU1ySzU3L3NVVFBUcDdocDVZdmpveGNI?=
 =?utf-8?B?a1l2TTJjZWdYR01qYm5LeUVqVVltQnZ3RXhWQUpXM1JyTWdHU0pSSjRDa2hh?=
 =?utf-8?B?MVIvUisxQzdabTMwc2R5K0FmQUZvazBaZVVJQ1hIMlhSeHkvVUFlZ29panpx?=
 =?utf-8?B?VXNUUDBNaysvT2U5TEpyaExxQ0pVRmNkVSsvRmJaL09KOUNKV0EyY2pQN211?=
 =?utf-8?B?TDB6VWpsa2hweU5HQ0I0aldYeVFERUZkRGZBSVAyeVNsRE0wMzhQeTB4cHdz?=
 =?utf-8?B?WC9uUjByWFZxZkZyNGJwczBGRHBkbCtyY2V4VjVXNFJHTHdkWjdIZkJvL3FX?=
 =?utf-8?B?VXRZdk1UREh4dUlzMjhYRFhuMkVyREJHSmVqOVBaV0IzR0RBeTBOcjlQK1lm?=
 =?utf-8?B?WmdJbGdRWUdoZEoxSDI3SVdSN3FHaXd2QWxhWFJocWhDcnYwOWNqVlZYamh4?=
 =?utf-8?B?WjMzYU5tdHpqa2NwZTBqTjZJZng1UGpncW0zYnNpaEU4S1FWbk56OG83MldG?=
 =?utf-8?B?SFpKb25iZ0J3YjgxemcwVnptaHRFMExIYkJmYUtYZWxoWGJ1ZE9EdGh3VWtK?=
 =?utf-8?B?VVIzL1pxbkNFQ3hSWEsxMFdXWmk0aHZBVHJwSkZPemNySkVxTWJmSFB6ME1X?=
 =?utf-8?B?enpyMWlVN2t4N1p3WWhrWkJBN3hhZXoweS83VkJJOHB4MkhNeC9ycU5jc1gx?=
 =?utf-8?B?ckJ5cXY3T1dOK1BQalRML0NtV1g0VmJGZ3EzYkR4RXB1cVVXRGxNcEFlMTRV?=
 =?utf-8?B?YUV1MlRYb0lQV0t6WlRBR0hyMGZwWnJXTEtuQmpTTXpPVVg5WW96d1VodDh1?=
 =?utf-8?B?b3NEYkI2endsWlNtSVZFMmUxT2EwWFEzaGFpRUZPd21JbHJOdERvTGVBZ1JO?=
 =?utf-8?B?SENZMkJSbmpkQkxWZG5ua1hkUXdWbHVsM3dUbDljTkN4QVc2Y0xNQ1g5NWZV?=
 =?utf-8?B?ZlEyaGRkU0JNTVVZd2J6dVBoUzF1NEdWVzRtaGZXUUVxZUF1S1hFTkNqMUdW?=
 =?utf-8?B?RlZybmxIcG1IY3k0aHF4MVVYTEoxNTRmTmg5M0Z2bCs3S0tQdkc1VWNtRFVp?=
 =?utf-8?B?b24zUkpFd3d3K01WUkhKdXJjRjRhV0EzTU1MRFZHdE5yNk83L0NlLzZFMmgr?=
 =?utf-8?B?ZlNnMlFQdGJQRVVOaDJHK1p4KzZadFltL0VFOHdjOHJMOEExeTUvT0hmNGxI?=
 =?utf-8?B?U0R6TTJSeTNCVTlVQ3E2ZWszWm1rc1ZNdjhpbVVLZFBqeGhZT2wrNWJ0cENX?=
 =?utf-8?B?ZDhCalBPNHl6ZkpCOEFBRWhlWitYb0pPQy8zOExuK1g3TWxOL1lxeWtBMlRE?=
 =?utf-8?B?TEdVNTAwVmdpRlFNai9ZSnprMWpvUlA1OUtGRDR6a0NydWlMVTBzUmpnbDFq?=
 =?utf-8?B?L3dVQTFpNXhuaENIdEszZnZRejRJOHRac0RJa2pTdmluUzNweDZGT0Rya2N5?=
 =?utf-8?B?NzFtMis5NFVQc1BOaHdnRGhESEdvL2Q5UEEvMDBycXRCNUM3bDdJeWduQjhz?=
 =?utf-8?B?aFlUbHVGNXNBeWJSalNJV0VPZHZabHRJcmtNRVZCcDV6WkVtYW12UWdYdXRa?=
 =?utf-8?B?Q1k4amhZZFRtNXVSc3cvcmEzUXp1NDk2WWdacytRNmtFemhuZW4rdlFnLzJa?=
 =?utf-8?B?VzlDcVlCYTdKTkxUUmdmaWE5VGdXNk9UTGh4VHBmNWJnL2JwdDh5OUpFV2sw?=
 =?utf-8?B?R0ZzTnB1Y09WLytTSFJ0VHpEMDJrSW5aVUpWWWlkeVNaRzZTSTNraUN2bmcx?=
 =?utf-8?B?bnh0WE9ZdkxsMDJWUGFRT2FYTGk5R1Y5bDZKN2RvZlBtTTJUSDhJTENJaVc5?=
 =?utf-8?B?S0FMb2pRUTJXVll0Z1NHbDlYVVNRSkxkVytJY3hzWXoydkI4aVZuckFiZXVp?=
 =?utf-8?B?eEpPd1BBc0dDdXNzNHJCaFovVFBzemxYUTZZRTVteGpMdW9CSjNVK3V1ZHJr?=
 =?utf-8?B?dGRuek5XWVlYbkpnMlI5dlJpNGk0QWNFYldUMWswU3lBZXpwTmpuR2RyOFdw?=
 =?utf-8?B?R1VFZnRjblJDbDNSTlFqL2tmQUFmVFdaOUdIM05TVlFzNDAvdzhka01qRWt5?=
 =?utf-8?Q?08Ug=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUowUWxGTmRSZ0ZZd2VpcDhOckdsYnQrWUVkMG1yeFRlYlZjVEt5cE9aaHo5?=
 =?utf-8?B?Y2FOQ2NkeGdLT2pKR1Ewenc1MjNiQ0RlQ1JyS2xmdFNrOElUVUhDNFUyN0RC?=
 =?utf-8?B?cDk4S0Zod3N6MVlVQ0JqS1BLVSt0Rmx5VXA5NFVOR0hhckpIOVNQeFJqMmFx?=
 =?utf-8?B?WHRkNGQrWFY1T3llcWRBcDd1eWpZcEtZcWF5c1Q2ZXFPM3VPbkpOWmJMcEto?=
 =?utf-8?B?MEVlVEZnd3NtdmZzTjlBTW9FZ3pWellleUhQdkYvVC83T0U3c05uY2h3a3Az?=
 =?utf-8?B?S043dFMrUUl5amNZazFLSmtVY0lGTzMvbEd3bVhsYmF4QVZwbXpNdDdzb0Iy?=
 =?utf-8?B?cGFHUGovVXBkbGpDMWIrQlpES25mRTlwWnRzbCtsUWc4alErTUJ4TkZ1cDJD?=
 =?utf-8?B?cFkxd2tSNG8vVVZETWNKbGlXVlAyVDNOc1RhUS93NUYwY3pmRHZFOURvNVVI?=
 =?utf-8?B?cHRwQnArdkJoVGJHQVo2bnJkM0QvYjNhaHFjUHhJUFplMlhqVVZyU3VXS2lj?=
 =?utf-8?B?NThTUEhDRGwybWhLL1NPdXhqcXJGNXhRZ3VUUUdsbjUzQmI1WnUvU01aZTNl?=
 =?utf-8?B?SWFYWGMzL0VFK1RHQ2FZT2E5ZmRyME5sRHVURnQ3d0V4bUJnUUFmdklJT0ZR?=
 =?utf-8?B?WHdKYzBzeXMrWjJVM0Nra3dFWVFqL01mM0gxZzU0TlNWSjVzMnVJM1hLRmtC?=
 =?utf-8?B?R1ZZa2UxTXRJMURHNWZQaFdlZUtpZE0wM0djUXl0UVFRemxGVm8rTGMxRTVY?=
 =?utf-8?B?TVlreTAvYzZqRVJFUXJPMDNWNGdpSG0rdFk1bnROeVN1bHRJOUUzb1QyT0pP?=
 =?utf-8?B?VU9YaWFxY2NxMEZiYjVmT1ZWT2tRMG5keWQvNGdNa3dKSGR0Z0hidUhhY0Zk?=
 =?utf-8?B?WGxGU3M1NVFsMU5zTnN2M0F4b0Y5ekwrWngvTEdjSGZpL2NMYVdFMkpGdXFx?=
 =?utf-8?B?TC9WZmFUODRvVHMvTWp4ek80ajlteS80L0JtTFpWTVErdjJKU1YzeTJkbkFC?=
 =?utf-8?B?Z3VaWGZXQXozUHNhNlNHbTVuNUpjR0NZM3FkVW9qM3NDVmpVOHFsQXVtMnZu?=
 =?utf-8?B?MlBIcEJpUXdtdUxUUmUzUEZuM09TRDJ5ZitlamIwTDlBWGUraWVLdTRLVHhD?=
 =?utf-8?B?VkV2eUp5YnIraHAweEdYNERmNGlOVElrZlJLZWx2aFlqbUR6azl2MzZSS1ZV?=
 =?utf-8?B?WnNCWDRKVVlCSEpUZU5jbkhZL0hqaW9NemVVejlSWFlvV01iWmZ3dUIyOEJE?=
 =?utf-8?B?R2huQmQ4VUd3R2FwYTRsQzNxZ1NCa2hCVkphWVk0dDZLd0NpN0poN0xxRUtL?=
 =?utf-8?B?VGdOdHlkdThsdXp1VHF5WVhMUkJLTUhFeStKZ1BOWjlGbkhONTZEanNjNUpQ?=
 =?utf-8?B?SVZmVk5yZUtWSDBET3VNSFBqZERFMDVQQXBjWnhlc2MrOVZRSUV0R3dqckpZ?=
 =?utf-8?B?S2VwU25pekd1UWw2MkFtUXFBUEpxaGhqeXUwb3RzQXZXK2NDNDk4S2Jta1Jz?=
 =?utf-8?B?cWpiZ2NBMTJKU05DTjlmTnc1YlpUZ2hjbVRDZ2Y4V0F4cmFFNkNUalJFWFlX?=
 =?utf-8?B?WmJuNDQ4YXB4bzRMeVVMYmRvUDI0R2VZdktabm1EVEl6b0dYaGV5Z29zc2ZV?=
 =?utf-8?B?YzlPVDVZZkxqWWJRc0JyREJyd0pJbzZraXFrR3JoQVVqZkQ3R3lzTHRpUFdo?=
 =?utf-8?B?eDVVSWJlMmRMYitwSzNDMDZoS0tYSDk2cUdIZzkvRVdJV0dqSXRUT3ZOd0I2?=
 =?utf-8?B?VHV6RUZyaG5lQmlEQWFQQS9RTndEV1htci9WVmliWkx2aTd2ZlV6OG0ybWFq?=
 =?utf-8?B?VnhVUlh6ZVNVY1pmSGdUcEpVS2RVMGJwMTQ2N01DdlRhcERSRzd3RDBHcUxi?=
 =?utf-8?B?UnBWc1Z5OFdsOWxWaGFTblZDbnNMQWZyUFNjcTVGYTdCSjRmbWk1QlROejNw?=
 =?utf-8?B?cUEvZ05pdDZKY3FXbHdiRWlMWVFueFE1YUJXTnd0a000SXU5Wk03NEdZSlRi?=
 =?utf-8?B?OUlHKzRINWNhdXlsSElyVURiMGQ1dFAyYW5ya0ZITmlPWnY2dXJSRXZyYlJp?=
 =?utf-8?B?UDUrS3JJYkhWTExwT1B3T0M5ZkVTZ2kwWUVwYmdwdFU4cUF4V0JzTHdWOUt6?=
 =?utf-8?B?NmNlOFZvMkhuc1VNR0hHTXdEdHFXMGJQWkp6dnk5Qy9kc1lrOWVMeFozdGNa?=
 =?utf-8?B?SzJyZnd0RTNjOE16Y2xIby9oM1kxYWZxS1JYMFZsZ2g5KzRSaXBxOWw4M1BR?=
 =?utf-8?B?ak9UcW11c0NreXROdWhYa2VJSG1VSGkzM0RzQVMwRW9CSU9lMXNqMndOK3p4?=
 =?utf-8?B?OHZYcjFIc09Ncm14Q1Zzb1dCZ2hETjZuWTdQenNkQjF5ZnhRVWlxVUJDMTRv?=
 =?utf-8?Q?eUm1J8TGNBazEuQQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d239892-3320-4526-67ca-08de6aeaba2a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 10:29:11.3382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pgWAU/FM7GrXqrUc5vv9wXSNyLdY1wZDvuMIfpu7/xtvt+z5C6+71hOOHd0q46S9OUAgE4itNzeEUXc1v7Y8hpZz7Ivf4LXs98lgXXGrDCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7880
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770978562; x=1802514562;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N7d2Whu5E31QIGr6DyrsfuLYjLx4pp37XVCRuYvH25A=;
 b=eNRLCcJyXgc5CP1S0Jyj9YlMtQ2AvoBPks/mZO53D9jAOL6dgK7ebpJ+
 3x+A+lq2iib+YRCZzgTEmhD/e4X7FxzUgTPEljqimz9JMv+R+MCyxZvX9
 MElc6wPW8IArk9tLgRLsiogLaaSynL+67g4HbfIWQ5+EoHto6vkQqSlf1
 n8+EkSjFv/Hk6YauZGAyKCgdfWH6hdm3OMV44uIHVzrNxSoGItiMuwjZc
 QhcgVL3M4J07UuOba4opce+9ditr2lwPwLEhRXq5W+mdW1or7Nz9E8OHl
 IRzQKQP3M/Uhwi0sFibEIi73I98Jnsn/WbcbRLjYHnpMnkq8Mte8QHnfl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eNRLCcJy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: fix incorrect reset
 handling in callbacks
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:shaojijie@huawei.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sdf@fomichev.me,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1FE7313514D
X-Rspamd-Action: no action

On 2/11/26 20:18, Petr Oros wrote:
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().
> 
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
> commit c2ed2403f12c ("iavf: Wait for reset in callbacks which trigger
> it") to fix a race condition where adding an interface to bonding
> immediately after MTU or ring parameter change failed because the
> interface was still in __RESETTING state. The same commit also added
> waiting in iavf_set_priv_flags(), which was later removed by commit
> 53844673d555 ("iavf: kill "legacy-rx" for good").
> 
> Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF has
> enough time to complete the VF reset when changing channel count, and to
> return correct error codes to userspace.
> 
> Commit ef490bbb2267 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked NAPI
> variants (napi_enable_locked, napi_disable_locked) that need the netdev
> instance lock.
> 
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations") and commit 2bcf4772e45a ("net: ethtool: try to
> protect all callback with netdev instance lock") started holding the
> netdev instance lock during ndo and ethtool callbacks for drivers with
> net_shaper_ops.
> 
> Finally, commit 120f28a6f314 ("iavf: get rid of the crit lock")
> replaced the driver's crit_lock with netdev_lock in reset_task, causing
> incorrect behavior: the callback holds netdev_lock and waits for
> reset_task, but reset_task needs the same lock:
> 
>    Thread 1 (callback)               Thread 2 (reset_task)
>    -------------------               ---------------------
>    netdev_lock()                     [blocked on workqueue]
>    ndo_change_mtu() or ethtool op
>      iavf_schedule_reset()
>      iavf_wait_for_reset()           iavf_reset_task()
>        waiting...                      netdev_lock() <- blocked
> 
> This does not strictly deadlock because iavf_wait_for_reset() uses
> wait_event_interruptible_timeout() with a 5-second timeout. The wait
> eventually times out, the callback returns an error to userspace, and
> after the lock is released reset_task completes the reset. This leads to
> incorrect behavior: userspace sees an error even though the configuration
> change silently takes effect after the timeout.
> 
> Fix this by extracting the reset logic from iavf_reset_task() into a new
> iavf_reset_step() function that expects netdev_lock to be already held.
> The three callbacks now call iavf_reset_step() directly instead of
> scheduling the work and waiting, performing the reset synchronously in
> the caller's context which already holds netdev_lock. This eliminates
> both the incorrect error reporting and the need for
> iavf_wait_for_reset(), which is removed along with the now-unused
> reset_waitqueue.
> 
> The workqueue-based iavf_reset_task() becomes a thin wrapper that
> acquires netdev_lock and calls iavf_reset_step(), preserving its use
> for PF-initiated resets.
> 
> The callbacks may block for several seconds while iavf_reset_step()
> polls hardware registers, but this is acceptable since netdev_lock is a
> per-device mutex and only serializes operations on the same interface.
> 
> v3:
> - Remove netif_running() guard from iavf_set_channels(). Unlike
>    set_ringparam where descriptor counts are picked up by iavf_open()
>    directly, num_req_queues is only consumed during
>    iavf_reinit_interrupt_scheme() in the reset path. Skipping the reset
>    on a down device would silently discard the channel count change.
> - Remove dead reset_waitqueue code (struct field, init, and all
>    wake_up calls) since iavf_wait_for_reset() was the only consumer.
> 
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf.h        |  3 +-
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 19 ++---
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 77 ++++++-------------
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 -
>   4 files changed, 31 insertions(+), 69 deletions(-)
> 

thank you for improving on your v2,
next time please post as top-level (instead of In-reply-to), to get more
traction earlier

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
