Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 710949A47C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 22:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2C7980C25;
	Fri, 18 Oct 2024 20:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QYrc46F5bDai; Fri, 18 Oct 2024 20:21:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EEDB80C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729282919;
	bh=aQTlmIZSEh2dXiaF90UDrrX/Hqv2dxI7y8V/Upxpido=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O0ls+Azn7k1edDXF0VSwkkstbxKeOSEi1J4DF+0UpU5XSBvV/kgsXZgD6/1It9S6S
	 1W4PDDcTORjcF3jYHYc6GIPjmRDdsZaQK3Z98ZSEv18s75L6YUb3SUDog3ozA93a8s
	 zDmp74isLRpg4x3DD1NDoyj74UcJmtwZJRgyoo3S8mJiVH9wU7kZzK9jKHzlyD4jhD
	 9kDEGgDBxHZQLX4Q/QHu0reLmIXcgsnOkV0f+MBS+3koYdgMVZgOX/OMWbMLUts9/U
	 gKrczIMfHa9IJuQncQzzp17A144WsSQdWrM1mTo5NY+TmOGl6tYXl+QdeTaw0vLQyb
	 MxI2WY7YB8FvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EEDB80C28;
	Fri, 18 Oct 2024 20:21:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C04227D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A65D80ABB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:21:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InAiFkZiiF6V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 20:21:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A57D2805B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A57D2805B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A57D2805B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 20:21:55 +0000 (UTC)
X-CSE-ConnectionGUID: vHIpuenKRPeG0zTjg1Lspg==
X-CSE-MsgGUID: afs4o5RcQvaPqtrd2l3Lew==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="16446001"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="16446001"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:21:55 -0700
X-CSE-ConnectionGUID: zSlONJRpQVWjfnOZUkuZmw==
X-CSE-MsgGUID: ps4xvRscQZe5lcIZmh58Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="116423125"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 13:21:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 13:21:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 13:21:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 13:21:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 13:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CYcPGiyJeo4u8UfO3FeuiBTudBr2eTSgDHPdG6YDN2XcxNA7powc428+nuWbbl1B/yMDs1mPOThIP0BjY1HzuMKjR4c9k2aJU+62acQKws/ftaJx4haz079N7Mkdhnts08Mnn6DcPsQiQtZv2b09tIon8Edm+08VC8C3WxhqaxmHQ7Apqogw4mgQcAO3zl9/v6xGaqW/3smmuU2ZAr/ELjRIsAlE6abc8uH+u/Nn7lMlO1sOpdp1rRMb+lje9ayA8E8F8lquRBrJ3E7+B80HLqSaNS3AAlx770Rx0Pqe0E+0tSutDTaXXD4d/sGpwAH3DY1DNcDI8aMibwsEREn99g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aQTlmIZSEh2dXiaF90UDrrX/Hqv2dxI7y8V/Upxpido=;
 b=rcu6yvYLdP4WVo5j1RuI7DOG6Qf7nXTdI1TmKZq37rFIRCcamymQpgeGhJz4VO6S9fY3D+PoUBri0RVV0DGbouKRl5hmCF3RlF6xi7wkCUDmj7Dk5qhkbxH0ZyLePIyAHXdXdYSmxVtLdwxrWwuybm0fS6RWjD5yt3FRLF81eqwCit/Gq+MCJCXDe3KdhgHNODUn0SiYESQ0/vIFAMMYxJiRm3W2TX+QdCxUmDFnOYI49h9WbkD7n5PVBYkv6hTkoi76IIFr2lSrMqAVpKM1r+fE4N6NoBjlO52HVSAmadN3fx8CWVTFj5oBJtx8Oha1mEEesX14C9YSoaGJb7jARA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.24; Fri, 18 Oct
 2024 20:21:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.019; Fri, 18 Oct 2024
 20:21:49 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "ast@kernel.org"
 <ast@kernel.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "hawk@kernel.org" <hawk@kernel.org>, "john.fastabend@gmail.com"
 <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "vedang.patel@intel.com"
 <vedang.patel@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>,
 "andre.guedes@intel.com" <andre.guedes@intel.com>, "horms@kernel.org"
 <horms@kernel.org>, "sven.auhagen@voleatech.de" <sven.auhagen@voleatech.de>,
 "alexander.h.duyck@intel.com" <alexander.h.duyck@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [PATCH v2 net 0/4] Fix passing 0 to ERR_PTR in intel ether
 drivers
Thread-Index: AQHbIQRlim5qmqGro0iO2b2YsXnvc7KM9Itw
Date: Fri, 18 Oct 2024 20:21:49 +0000
Message-ID: <CO1PR11MB508971C28F81B97F3A555F95D6402@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
In-Reply-To: <20241018023734.1912166-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DS0PR11MB8718:EE_
x-ms-office365-filtering-correlation-id: 51f57a32-9dec-41d2-5a00-08dcefb27f03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UPrvGFwLvQATh5mQM+BnQGxQtiATUnu+AnA3giPtfB2PD9EWCcFeGEqlOXd8?=
 =?us-ascii?Q?j+1kfBZzc0WfsvUJfoEZ2EM05VPcqutQLZG0tgIBACyxPT8J6SoOu0GKQzaB?=
 =?us-ascii?Q?st2zhWixq/g9L/wIujuxxY6/+OsPqYHBwatUKvzNX6oav6FuvbCKyGq1VPfo?=
 =?us-ascii?Q?JeGRH8ZMcVr9irQyEsN2LgGDMlz1HF0Afw8A1jIuTfUBH4QEzDuEXO072Uqf?=
 =?us-ascii?Q?7OVuZov4SrUZOgtduBfOgXPlqR7EcS0Cd1LtAoqF4JcG9kRXKTpW+5mRma5p?=
 =?us-ascii?Q?vPGIlrZbZxIcFKHmuwOd+pQUeelS588rXyh4l6/qPco4zr8sU+DTxRAZBwYv?=
 =?us-ascii?Q?Lm/WJeKPEaavi5zEnBMhwMt5fIutjperGJzSn7tDBIPd2pt4l/L+CL1AYk9y?=
 =?us-ascii?Q?344eyaxe/PCeEY7dkprbzAsIUTZ8FADub64+XQpzDRB+HDprDzvkSFha/PKg?=
 =?us-ascii?Q?kI5Q5WuRfCkx/1gqW7S9oqk/cSdpziWbPTfCXeR42pMaSjW7srreckSYkNeK?=
 =?us-ascii?Q?mNZbjNPZQlVvBKW32U+Ec9NeYajpwDLgl0l5woT74riE6/e8tWvNRfqjhCml?=
 =?us-ascii?Q?yPvGAz8wbcFS7Wr6tWEiKPU30wkxYT5ZllEwuC7c7Yy9mC+o1p0Nz0xvCeAE?=
 =?us-ascii?Q?xauTSH9ZKlNZ7N8y5okmdL1LPhbSZ5r8FhRtzZG0GK4YWsNH4ynPW98e5hS2?=
 =?us-ascii?Q?GGKbD0rqbJizM5l/oXiH8sdbyUMfBgKLZXPQCtFLycQ1BSvsySY3bKy9I6K8?=
 =?us-ascii?Q?DqBbJeqsHQ3eB0ILwHFiP8Z644Z+ghQTKmbGTsdPyJ25YqVGXpFbS0vkKOSE?=
 =?us-ascii?Q?cOwDz90N+5tgW29I0x34O+VEV6Bz9lbl81QUteErci8b4y3KP/vCtWwOVNA4?=
 =?us-ascii?Q?0MNdFHDSWioKfHv9Lm4Y5cpscWSiWewiZsy0n2I9UiKiKv7W1hgPCAUdz2M9?=
 =?us-ascii?Q?hazaW5j37YuLzBkHNj6oI45mN2OhP0zHAB603s4zcrVdJuKnJTt0pCmABDfW?=
 =?us-ascii?Q?rPwVqDeraLW9WPppVxvHF9ZVyoA0EwoElJBYT6vrdkPIhxvG4scY2M7tJ24Z?=
 =?us-ascii?Q?7YWS3DtrWAOGkETzn/f9V6rNmGTko38pe1QqPotKztGL+IHQOxAA/9e8wyz4?=
 =?us-ascii?Q?buCnTHY/jpTNN04UU2h6eO5W0NtPCOHeeTQn/3Q5tDXBntxOACE+YnbWRsKz?=
 =?us-ascii?Q?nivPuRJizPkChcO7iTYY5FW6epMlMpx6tt3gzU65G9XN/iPLcJtOUwKuBxXn?=
 =?us-ascii?Q?ZdVPF4d3SHttaUB2EcJu3lk3yS9CKD5cBMy7DmCjdn9LE5wlycqM0nK7leT8?=
 =?us-ascii?Q?DP/n2xS7WzAjjV2QG8j3J8M+C/ARh/RxPKBW7MqC3T0yMuNSGxCIoEd/W4uf?=
 =?us-ascii?Q?5UEg09NYi2dQEnJECeQiueHiVQkf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u9PcRb0AQAjKwku2UhME3RPC7mGRUHL6T29idEEl3LdvU2zVxDNqAbnE2/Ww?=
 =?us-ascii?Q?fqQLugfzptNWDbdIkSLjhva7rWjq8EURIBvDD58U2lomKvLTg7yV17ZvcHw0?=
 =?us-ascii?Q?rwdRZL/CarAzXrmgenyasRrlLjydxH0giSfM7rZ6l4Bh4PN8rzMFoiR1ZWZ0?=
 =?us-ascii?Q?mgmvPrf5qImGOPc1d4EbxNwQwI1evu8tGirawZDDBbADvzKmAsBJ4WXp2FO8?=
 =?us-ascii?Q?3vYsilRJcvigJVCsmxAWjhUJtfpORroEU9nTCeeBzXq2P73TRdPxiGD6hCXq?=
 =?us-ascii?Q?vLZ4Nu+itswhGmTg35rk8m3PEpnIGAdB7+xI7xzOsBzywb0iD5Oc/9alL+eg?=
 =?us-ascii?Q?I7mOX8o6xQrO+A95y7oGg/BTPywAkZAyaKfqesMlVpyqiAgDFWwJ1ihccwuh?=
 =?us-ascii?Q?vOKHrp5uiHYLFSKQ0h04v1UwGYcpMDCxu2aszLrdHQ2nLmm9x+xb+swVQjvD?=
 =?us-ascii?Q?kMp8DGOxzq+SwKVau3i9xFQSIDTdIjDfSfTyCrZDovzdPH/oMyO/OEDi1bes?=
 =?us-ascii?Q?8LAGwWQ7qjpeFE3pjdu7AapZ/ugnCgc8YGE7SXxAEgh/tNePcn454eBmiCZI?=
 =?us-ascii?Q?ZEnHGQ9YoiHu1d3iNMp8URT1YGyX6rS/uw62JFPrjtvgbP70kbb3hO8MSMU1?=
 =?us-ascii?Q?ix0YjhLsZMSApMCUYlX9VcIdMVtSqSJj7KBbCfD6t+8fMbMSQguGVZx4KmQq?=
 =?us-ascii?Q?tKbsYMU2QBlnMcpBDT83BfPy+au7I27d9M8ja3r4U6ZXfTGYJHiggxrTZ2HN?=
 =?us-ascii?Q?nhUN1wIJj1NSL6OkgirQldjwztMgL2uGAcIBSy/QuxX/BpF2oabDrMqCCtSg?=
 =?us-ascii?Q?77KoC9K5xZ2oeh7nb4rbwUSM6p7qXfyQt+uFNhBrXbIFAkdFcLgdkGNRwG0j?=
 =?us-ascii?Q?/WQTBb1hjqcHuZkgMPkZe1MWRq+/jmts26bgV2BHaUUXlFvvHK0RLAEptN6s?=
 =?us-ascii?Q?7qWFHTJye7XPA4TzEGep95K9IfFzP6HeQFAwUceH4fvXygCiarJEgEmiXBJg?=
 =?us-ascii?Q?8AKDkI/G1LTaDM6i+8C/WqBlgbNZOY2LjJYqBwZlp0Y6Wg7hZuSlMld/isc4?=
 =?us-ascii?Q?hOgZpsgNfW10SZQvpV51/a749MNtDpjttPbcjx11eSqJgvpZPTx73OIWfTr7?=
 =?us-ascii?Q?bO3ePevr8zmE609Z+vvOfQCEuIislTACh1E9fj0Ud8kJdejkv7k/+Y8CwAf3?=
 =?us-ascii?Q?K5SlwUYP3Xkm6fMLt19NVSt+lsnh7Jnjkl/ZokOU0yWctEz/RBtAwt6vn0FN?=
 =?us-ascii?Q?xWD65F+2+JQqMuKYnnvEfdEap8Ce4UhNjl5ZBnefY+P8mVV8QibwimAjv8qM?=
 =?us-ascii?Q?dVoXqr7Ep07RhHtrxNVgm7YLAcITiZaFE8YpLCr7dyQvqhBjercC+/6aDN62?=
 =?us-ascii?Q?wWambhxdoZYqjsAu++nYpwbFwgEx5NPKEyS61fgKOZ/IHsEGHcYz4RP0m5hm?=
 =?us-ascii?Q?RjAsqj28zJ/laGaPcc2QS3UEcLzc0PJT8Z4VvLX1Z+/AeNJ/i/Fbvl7B92eK?=
 =?us-ascii?Q?L/V81TqLnu/u/U7DI+i1S21SJoA9KURobQoR4jK3tIIyqDupJo3eK6D3lrqo?=
 =?us-ascii?Q?UGeSaHEnvXDbq8/ZznOSbgnJALtjvtkb+uf90/m6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f57a32-9dec-41d2-5a00-08dcefb27f03
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 20:21:49.3795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gpM6cSXGE+xkvoxDex6XSeLd60aGJqvxsvRgkSm0jluzABE2VZaJsYZoInkYKXrh5CEeYc01Vogchts2oSUhlBQq1UhiT37eHteHG88piAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8718
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729282916; x=1760818916;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9dUjK6hnD4hefoNB1pr87dnomqJgMODf3Fn6gq3dVzs=;
 b=e0vA+eqC7MsFx/xxNcPaEuajq7sctaDmIyKX3ANCy32NxKcO4pBmGzVU
 hVWA23UCtLDmjDf7DW4NY43eXK+MMNF1E+KW476yeYGHz03Ewn8Y5qiET
 QZ627Eo+sh2idxIvheTTKy0yvQzgUgX21tQFglvsdjYoGuvAAGbptWCxe
 dIiYhQU0OioIjhwhO4x5WYZC6i6ya/MgSB/IGAY763b63woJ4yOYdHfup
 d6HQkoT7vXP37DbR2ATvz5iOs+d6CMDL9avfb87BMOEqckDY0laPhxuQZ
 DJzIYW9/P5xuE30D74UMHmjegJPpB9dKDUuW6DGiSxWWOijUNRV90HCW+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e0vA+eqC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net 0/4] Fix passing 0 to ERR_PTR
 in intel ether drivers
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



> -----Original Message-----
> From: Yue Haibing <yuehaibing@huawei.com>
> Sent: Thursday, October 17, 2024 7:38 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; ast@kernel.org; daniel@iogearbox.net;
> hawk@kernel.org; john.fastabend@gmail.com; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; vedang.patel@intel.com; Joseph, Jithu
> <jithu.joseph@intel.com>; andre.guedes@intel.com; horms@kernel.org; Kelle=
r,
> Jacob E <jacob.e.keller@intel.com>; sven.auhagen@voleatech.de;
> alexander.h.duyck@intel.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; bpf@vger.kernel.org; yuehaibing@huawei.com
> Subject: [PATCH v2 net 0/4] Fix passing 0 to ERR_PTR in intel ether drive=
rs
>=20
> Fixing sparse error in xdp run code by introducing new variable xdp_res
> instead of overloading this into the skb pointer as i40e drivers done
> in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
> commit ae4393dfd472 ("i40e: fix broken XDP support").
>=20
> v2: Fix this as i40e drivers done instead of return NULL in xdp run code
>=20

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Appreciate taking the time to fix all the cases.

> Yue Haibing (4):
>   igc: Fix passing 0 to ERR_PTR in igc_xdp_run_prog()
>   igb: Fix passing 0 to ERR_PTR in igb_run_xdp()
>   ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()
>   ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()
>=20
>  drivers/net/ethernet/intel/igb/igb_main.c     | 22 +++++++-----------
>  drivers/net/ethernet/intel/igc/igc_main.c     | 20 ++++++----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
>  4 files changed, 34 insertions(+), 54 deletions(-)
>=20
> --
> 2.34.1
>=20

