Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJquJiDJ8Wn+kQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:02:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661C49178F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 11:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37DFC84326;
	Wed, 29 Apr 2026 09:02:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0TqdGrUKCZNQ; Wed, 29 Apr 2026 09:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A96384322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777453332;
	bh=he/nndZb+X0VzGUs2nnmmES0s3fvRZL10jYQAQ+VG6I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kJrUp+RqFTMIN884w1laaGKxPqwISf7kbSh+o3koMrCIWs5ZbEhh0PZcPtE267N9m
	 TyWEobg0hqDxFRkJV+NsFPKRRySidugx+9/wY2yGfue3uxa5Ae91z2r/G9qntBGqvA
	 N+Y7B8EQJHQfc1EKCoqgisW7pr23jdoPIKMXiZlOfwB1dgwM63N9VRvVPKNNDjOgvW
	 dsx+10+dNWlca0zr8HsxBNM2OsCPQfexzAJYSuxMkZvGEhUtHLfkla0tKf5hs1B94t
	 Zid48UYlRg5TYkCrl038ltIJDjgtYUMJMnPvW6RBdshQCqXPzpNfHqi2ygYPanUQSO
	 UdDs49kFF/BYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A96384322;
	Wed, 29 Apr 2026 09:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF3D9231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B444441FE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FA6KDc03Apt4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 09:02:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 487E84033E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 487E84033E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 487E84033E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 09:02:06 +0000 (UTC)
X-CSE-ConnectionGUID: C+K7xba4RlOwBf06a0uUPQ==
X-CSE-MsgGUID: q+bSJ7gPSeO5nR7BwuSKyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103832435"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103832435"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:02:06 -0700
X-CSE-ConnectionGUID: V4+L/8U6SOavoALdVLyiTg==
X-CSE-MsgGUID: vuMzaUW+TvCdrg7EqX8rpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="229860861"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:02:05 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:02:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 02:02:05 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 02:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dRRpOfbbWnKrWwFYG9D0qYOVEIdx98aUApplXWCm42C4F9Gkq78/vWN33lwkLHaPbqEJW1es/BUasa/naMJX6kKdNgu8RBFQNGUwFWu+QAdvAvtzAvackgPNQwqqcDvDnU9G6mMmHOQs1GAb9lzOeL5EFxDfc5C4cBrNtLtvRsfivpp1ev1W1iTIP6DZwAL8H5G/Vj/vZ4lU7x9b3+TjtLdrfqdWDx4a5zhyyxpyA2YnloF9iFfnjV3JAyKVt9x1/4ztWPxXvLlVZixIXWoCr7BGgYdHuzIaNIPhLXjdTAKbWYIeur6oEug1hQ5A1DmDCtuRypesi/itNIxWtbV9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=he/nndZb+X0VzGUs2nnmmES0s3fvRZL10jYQAQ+VG6I=;
 b=T43AP+2R9iQoWUhnnZcx/3gr2qCbpM9JacNe/dj/GfI/htFncguc30N/bD78Muy4GGoAgyEkskmBFZ3kFFpV0EqxSNZJ/7zhkh181nhq537WJt45JHddSO3SKNBfrsOf5eOqqnzaMr8HyP6gErqeERmJE828KzKZiW+mgc6UuGxFu3ZFmO5eeXgPjiV4Krg6RMygLfUWCLJCXyVxldsIJrb1mUy4PWSJwHNo7fOiX58ZkB6jqwHD4bRnqbygpTnrhFbf5Vl5WR8iJ0PkjFYl06Qbw4qhSmxgfrpOO+oUlVT9WPsThbKTtizQZZFY716YcIXeiCB7+PUn75fX2P222g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB4885.namprd11.prod.outlook.com (2603:10b6:510:35::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Wed, 29 Apr
 2026 09:01:59 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 09:01:59 +0000
Message-ID: <b0a706e1-2494-40b4-836f-f5d32c6b0fef@intel.com>
Date: Wed, 29 Apr 2026 11:01:46 +0200
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <error27@gmail.com>
CC: Jakub Raczynski <j.raczynski@samsung.com>, <netdev@vger.kernel.org>,
 <kuba@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <kernel-janitors@vger.kernel.org>
References: <CGME20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931@eucas1p1.samsung.com>
 <20260428103653.3539239-1-j.raczynski@samsung.com>
 <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
 <afDL02Z4QV6G0UxF@stanley.mountain>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <afDL02Z4QV6G0UxF@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0245.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB4885:EE_
X-MS-Office365-Filtering-Correlation-Id: 99dae4f0-e241-45ca-36d9-08dea5cdf865
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: puf1aZfzvL00BqbfFmXZ2io5ujlXKMjN4xjWA4D1T1RzpXeKsjxBxzv2gn3mik1glvo95cDwYtyTNpNv5WgVEwL3Le08odp11wHhoAhIHmVeFHFMIsj+oGk5+E+onERNYFRM+UEOh0zbqov4OW5OlRQvLFdxIiAk1TLmae8xf5sK3x8bPoIwChs7GF4QQppwqXv912m9K2yDIIZwXYSQ76cVs9D1ygd9rUQp6L3yIXI1aCHR3nmZX4/c6hioTJNXSWLk/9LMImtqezYFVjfFvglgbuxavTA+EB4wrU83JlgkbQdR0iIyu56oD+pBfJSTPPsi/gFKv50mMt8CdLcVhycCveMxvr5iQkzU5ITP1nEWl3K1RwCcQZWfOMoUMJca4KEEPGEqb91JFlPzgoSKhKwOEzIVZ2U16EaoTZonZXJMRaPpiYKftQrzzlXdwHLypIGt4LOEIijOgd68QxDzpersVVI/2oeivIT3giiW3AQjEWWYLyx/BGr61yXk9041TJnRXFWITcOex0p0wGk+3fBSI/t6Wg/Hd2a101xc+F+Epr3IAHWYCdeJ68CF1WyVvWAJzrJ+nNj/2l74LQb1nbpv+PbRSLIfS7ud6ZiLRvUEiyXdEXc7xa2TKpdsbEzdW6GyYoH7+/6BhTQf49EPbruli8IXco+sV5/uB9a172JlLDPZObINwi00PMvUFJQQRaqivocmY6DmdZBWekHEcs0OxSho2+I7s/z34x2Nqws=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bytNbGZOMG1tb0hsdDdMZXZJSEN6Z2ZZbzFVY3VMQStCcWsrY0hISTAvMzh5?=
 =?utf-8?B?N1RtdlBDWVNoaDJXTXFhekNhWmxDYUtWMWNMOTNuendOd0RKckhPME5GMlBx?=
 =?utf-8?B?dFNrb1BheFg2UTZuQnNuZHVsbzdMblJQdEg3VVZaekZjaHd1R3JxWVRySnJ5?=
 =?utf-8?B?R3d6Y3hFT0dNbFYzVk1EUEJGVTJXQnFOOTY0eUhFSXB1ZFo3YldEZS9XVXVT?=
 =?utf-8?B?VjdxcmFyK2xwU2t2QS9TZmFGRVJJRDlnb3FoOWxXeHhqQlFyZk1sZ3ozZ3Rl?=
 =?utf-8?B?ZjFyaC9HOFJKdzYxQkl2OW9tdFRTSEpOWllpaFBydjdaK1VtUDNNTzNYM1NE?=
 =?utf-8?B?dStvVzZPbkVNc1ZPcng4OXJDa0ZqSjE1ajBrYXR0ME9nQzgwd25SdnVBQU53?=
 =?utf-8?B?TUtwSk5HOEtjRE80N25GM2F5d0t4MUY4YVl5dVlZRUFQdzhqQlo3Y3d6aDR3?=
 =?utf-8?B?M25yRmh6ci8zNVRqaTdVOTM1RHByVUJQN0RRVUNrSVFjOHJZdHBpNm4zbnBU?=
 =?utf-8?B?TmlES1BzMVQrZU00RWZNdTVSWTFHODExTXhjVjMrL1QzSmpZZEFFeWhua1Q3?=
 =?utf-8?B?MkJmL0QxYnBQQ3dqTG9QR2J5cktiUU1NZDltRXRPVURFc2x5OCsrbXNXREVX?=
 =?utf-8?B?YWlKNi8vYjBUMlhabnlJMElEQzJFUk90NnZ0VndqYmdTVC9sR240dVVTVmp4?=
 =?utf-8?B?ZmRaaU1Pb3hxRGNlSzNRTHNxVmdHbTBkUFR2Z3hMc1RxZFRDUFVkblROU09h?=
 =?utf-8?B?MmE1SFEyQVIyVzRPcjFYcXpHTG5kK2I0T0YwdFljVlBzaHIwY3NWYXQyMmdI?=
 =?utf-8?B?eUwycXIwU3dwUkdEVXFCYmlqTGhjMHBSUGFUR2hRWjJzdFUrNlcvdDVRUGZL?=
 =?utf-8?B?bjNERkJzLytkMDZJQ0xJZGtrSWhFTnVxdWx0Ym9pMTY2a3hBOHBRK2lON291?=
 =?utf-8?B?M0srTDl3R2dEVzk0cXFhdjFPQjFUeHQyRWdSUnhKdzllZzV3R3R1eDdKR0N3?=
 =?utf-8?B?RVJVeFZwVUtCeC84WUZ2T2RmR216RVNpYk1NT2MyaUxSVEJwSFZ4eSs4QW9P?=
 =?utf-8?B?ZmI1QXZ1M1V5YTlOSU5ybVB6SzNpUjB0WkJHY0FxUFdBZW9oY3lqa2d0WjVn?=
 =?utf-8?B?QVVKbHR6VkxWR2V1a1B2K1JGRFNYWjcyMGVOZUZiYS9YRVRRWWkrcmJYTUps?=
 =?utf-8?B?S2hnN2FWeC82S2pPaVpubW9qVjB6ZzFqNjVNZTJ2UFQwWWdVSmlrT1VkMTQ4?=
 =?utf-8?B?N1VyWjUzSHo5c3N0b0FyaExqRHMrSW4rVDd1SXpjWUw1WTBpc1FuUVREaGNN?=
 =?utf-8?B?WDBVcDVUUDg1Q25KUFZkbGlIK2xHMDlHN0VRSDNFQ0hnbnU0bzUxQmxOaGE5?=
 =?utf-8?B?Y0RnOXgyVWcxK2JEWENJcENSRzI3QlNVSXVjWktvVjZFU1Q3WWhqdHJReUVJ?=
 =?utf-8?B?Vi9zQUl5d3pmNFNaMmt5S2hDd21nWWt3LzdMK0xJNlMwSmtmbmtCR2lkbE5Y?=
 =?utf-8?B?Vk5PMFdHaHhqbEQwRktraXhSYW5ZN1ZoeVh3SWlMTmlTWVdIREc1QkhuOGkz?=
 =?utf-8?B?OUM4VG0xMUJXWjZlV2x4SXZRUWhsWDFzaTk1R3hKdGJNTGxIUyt3d2ludCt6?=
 =?utf-8?B?RXBWVzV2Y2VuN2NNRG9lcUROQWZRN01sNnRJNlNjeDRDSHdQTjIwZ09OYytV?=
 =?utf-8?B?d2J2Sy9TRG9rbU9JL2N1ZmJjaVRxYkJ3Y1huQ3N2eVJmS2lEdVNXOUhaUlRr?=
 =?utf-8?B?alByRkhUM3o1T2wxRDhUblFya1pOS1RPalN6OFN2Snlzb0xqUkJnTHN5bDl0?=
 =?utf-8?B?RGV2Y0ZMTFZTcWhTTmplZUVTUzZBcTh4V2dJV2MxZFZXVVBMU1R4djBWdTlQ?=
 =?utf-8?B?UkFoUzRMemNEMExtVDR3Ri9EWkdQTVdEcDlXcmdodDRJcHptejdTdjlDcFM3?=
 =?utf-8?B?OHhvVmJxWUdlVnF5NXMwWWF6QnZHY3lQK2ZpZFRXbDZ2cFN4VFJ0ajNJYUxo?=
 =?utf-8?B?TDRyRDQrSGU2QVZFNG11ZEdxcS9pZ2EzS3BsSTAxSlU1bXpLNWswTE5WNlBT?=
 =?utf-8?B?M0VuYkJucFhFSTA2a0U3L1JZd0R1MmYzRkFzckdobysrbkpXbWo3Y1N0VzA4?=
 =?utf-8?B?by8xVE1HV3dUUnVLSEdra1BINUhUbGh2WkltZ1JrcXNqa1JyUWJmYUMyZWV0?=
 =?utf-8?B?KzlkSjlQajFGTGpHMFJhOEMxZWZCcjNQNEw4eE1WWkR3VCtWS1hIMkRCM25K?=
 =?utf-8?B?MlVUMHk5OEFVK01lNWc1TFF6RXNIZEtNTGxrQ2p6UzkxTW9kcWJpd3p5b0RZ?=
 =?utf-8?B?RThGcWk4MUMyZHcwWUJGYlZwbGp3ekJYN3ZMREZOVCsxM3ZyaWZmSlAzejB0?=
 =?utf-8?Q?rBCTPp7G7/uLbJKA=3D?=
X-Exchange-RoutingPolicyChecked: hrPnE0tAutWRdx3m7AaTORYewZce5pCGUNJHRZl6yejb6HC9p9a9RbeqVpFffn54nrwoplbxqBRZ3wehQvq1uxcEEkYyNtScPfuuHeCOhcniDJerOdjGbqNO2Cy7RmA9Kln3yb2R7QGBSygOi4j6r6tCAuMB5bk6Wvpx2YNVyWRcpmdKulOr77pGHQv7azCYu+kSbrgifrICZellYrluIdjMIA9kJgFKnXvmdN7ICJTqLwKyyfCFWYPHGl6EPNcH8wYstsuAc1ysA8lfjaKVdQ5q00cGGdh/8aifLd8EPF/zLch5Mo6kGrBG+7NaxYcmcq98grcrlNxGzGhwKte/rg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 99dae4f0-e241-45ca-36d9-08dea5cdf865
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 09:01:58.9819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FitR0FUtWEvQl5O+ZgTCa6M7hVTRHxIPnO16Wq3qvWWdiCSQZuH/t1iCt8EOWDMj5tUOK2KRio2ocHaO43ioJ0JBnX0WA4fsj4iaKVLqljY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4885
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777453327; x=1808989327;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nMarTOXCsp7aDNihnPFRFLPXTnH4a+yg18qUp/WZPCU=;
 b=HLWGvI3+0YXHufM/Wge+pK3IcpPqyyjXII1rzyqyTTiq2ih7U+pWqlDk
 PuR/OVTKknEeD3xVcMcRBPk4CGVu5sU8nf7f432BMvzMUHi21XkOzIbVr
 GYd2LtO1iUrM159xkfYviJEN3xxLRddrOxbv0PvD+Kry/ptGaZE3T1z/S
 Px2zUoK6jAhKEXVYFIbwIfOJVPcq4JUi9IYEHXb3YAGRXCqf/dLfUKerp
 bkNUtVUpwNTTjTUqvy6n4Gfl2xe/zDVLn7Q2HFJ1Ee0cVbsh6FWetnqa9
 G8uUKvBg6ZOJH62On7AXmerQULyHgBbgCmA6rSH3gvYIs5z3VpDM++l9a
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HLWGvI3+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] net/intel: Replace manual
 array size calculation with ARRAY_SIZE
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
X-Rspamd-Queue-Id: 3661C49178F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:error27@gmail.com,m:j.raczynski@samsung.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]

On 4/28/26 17:01, Dan Carpenter wrote:
> On Tue, Apr 28, 2026 at 04:06:48PM +0200, Przemek Kitszel wrote:
>> On 4/28/26 12:36, Jakub Raczynski wrote:
>>> There are still places in the code where manual calculation of array size
>>> exist, but it is good to enforce usage of single macro through the whole
>>> code as it makes code bit more readable.
>>> While at it, beautify condition surrounding it by reversing check and remove
>>> unnecessary casting.
>>>
>>> Signed-off-by: Jakub Raczynski <j.raczynski@samsung.com>
>>> Reviewed-by: Dan Carpenter <error27@gmail.com>
>>
>> thank you,
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>
>> (next time use "iwl-next" in the title, no need to repost just for that)
>>
> 
> Which sub directories go through iwl-next?  I was trying to update
> my script

Thank you for all the patches so far you have provided and willingness 
to continue.

F:	Documentation/networking/device_drivers/ethernet/intel/
F:	drivers/net/ethernet/intel/
F:	drivers/net/ethernet/intel/*/
F:	include/linux/avf/virtchnl.h
F:	include/linux/net/intel/*/

Perhaps instead of you managing your script, and everybody else doing
the same, there could be some extension added to MAINTAINERS file to
encode the prefix?

In our case, the prefix itself is a message for net maintainers:
iwl or iwl-next means the patch will go first via our tree, and be sent
later as a PR for net/net-next.

Without the prefix it requires guessing what was the submitter intent.
Most patches that go through IWL receive additional round of testing on
real HW too, thanks to our VAL.
Patches that go straight to net are just merged faster.
As intel ethernet maintainer, I want our code tested more, instead of
merged faster (in most cases).

> 
>>>
>>>    drivers/net/ethernet/intel/i40e/i40e_adminq.h | 2 +-
>>>    drivers/net/ethernet/intel/iavf/iavf_adminq.h | 2 +-
>>>    2 files changed, 2 insertions(+), 2 deletions(-)
> 
> but look at these file names. There is no "iwl" anywhere in
> the names!  :(
> 
> regards,
> dan carpenter
> 

