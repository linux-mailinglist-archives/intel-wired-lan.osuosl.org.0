Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 129EBA564ED
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:17:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE8258443E;
	Fri,  7 Mar 2025 10:17:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ESw2mEErFJZa; Fri,  7 Mar 2025 10:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1585B841B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741342647;
	bh=BbWxpcs7PiP2hjIUQZdl+C+94ogdb7MfF8PTlj00jZU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fHsknbrf2PjRtCXzWNJIGHR2mDv0jc4Jh/7GwyV+mIqXyEev7qvdggiEiyWCX5hwm
	 ILuNkWqztMbn15nZi1BG4O2e8R+mIu8SQ7UuofJIkslpLgCwz+Ox56xvaXTeHfnuKz
	 PQsIKpf3s+PsbI+p+HAPJ2LdyCAxkvnl9zsZbIhe0sNeAnK4/nM5ta4iUbFMG5Lli4
	 6HvIrN+/usnczOgNbJEV/JZ48geFDFvubEPZTAlFob0hwlklvPNjBUqFRbKQVIbJWZ
	 zGHAGS8ceLOXqI0/HZBohrHGpb8rmtMv6kM983xV5yZeQO2oId/7yCWhiSbcSSck1S
	 VrUuFLB/t+I1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1585B841B8;
	Fri,  7 Mar 2025 10:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EDD191C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D028641395
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5im-v89dupWW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:17:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E16ED41281
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E16ED41281
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E16ED41281
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:17:23 +0000 (UTC)
X-CSE-ConnectionGUID: xyATXJY2QUybqI19oskzDA==
X-CSE-MsgGUID: v5Hpr1DsQBqqlqW1DYPVUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42299118"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="42299118"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:17:23 -0800
X-CSE-ConnectionGUID: X9/2JmSlShqz+eDKgtettQ==
X-CSE-MsgGUID: KjZ1fiNzTOqOsnkrkqbJzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119214625"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:17:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 02:17:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 02:17:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 02:17:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bFqw2LSdc8gTxRlf1hv08MQkuAQ4KnRo7tG3aVGB/peoDQzQ3gkKTlwLZ22zvQj7IwFSO/fQhShdDucjvFZpI5btUA+JsAMCNBTz/9Ujc4fx9i7hYpZ5ogYIBb2vSAwJL5ryCaQV+14W6x0zsxB5x15ZLlMdjMoQhR7exao2aEuQ4sxFzvznbqsQ4/2f8QKeWz6+ByZeOxlpA1noKZeuO6JawTxTX1oHglj8SpeFoTshT7SMTvD84BSPHXssCfMbYzuq77V/RqETLaESHtkh9iQa44sXRKuXligV7q7nHequnbUfopLKMsR/oIce5JBbq8UMke7qjdv8ZmtJEi3Exg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BbWxpcs7PiP2hjIUQZdl+C+94ogdb7MfF8PTlj00jZU=;
 b=CipsJpSYFMkMcIWph5i8bRgnF73fLFizFNrqWNu2rJsdWcUe46X4cCU2HSpDQc82CKrB3hJtAAsZELfgbncKsshuzKE2ZW+2iY0+4XzeLhXLx89iLIk4Xos5USpbYJ9UC92Zal1cg7mH9xUqZKLGzr5wzVfKSlnoyVj5+pLwTrVwsqN+GkvOP0q0/ykCfL6XTRjPi1ohAOrIJ9wetg8uZdssz+2HzssPzEJso6tzveAyhyF8gRJXEVv2Qt5i3XCqtRvbX0Iy/+5wr8JHFa5qZCINPqS+Hrow5FsYqkEQM/YBdYbDSwH2MEmm5zsd3Lj2pd4CZoPVT3mDiDLH2pjnww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.19; Fri, 7 Mar 2025 10:17:18 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 10:17:18 +0000
Date: Fri, 7 Mar 2025 11:17:11 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <Z8rHp046ELv2wrac@boxer>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-6-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250305162132.1106080-6-aleksander.lobakin@intel.com>
X-ClientProxiedBy: VI1PR02CA0060.eurprd02.prod.outlook.com
 (2603:10a6:802:14::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY5PR11MB6163:EE_
X-MS-Office365-Filtering-Correlation-Id: f2e208ae-11b5-4979-5d54-08dd5d613dd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6taZbRr/xABrk6cZeFbosPfDnc/znpaxDDxIMDamk/QK3cicxTGoXThjagv4?=
 =?us-ascii?Q?a2Vl+6f0AyTCRqfaVuw0jpGAATJGXSHj9JVzEycKYeodjxKKkbCMmz0176de?=
 =?us-ascii?Q?InutowFNO2MjpPMzf+g9x257Lo//0yScUxiF461i4mRtz6HPE80W+5J45gBb?=
 =?us-ascii?Q?b3DbIAIxcQuUX89UbdAxIWUUn9GYPTWsCoS7YD8D18sgObAKKz9BSkhlACuB?=
 =?us-ascii?Q?D13Q0qrytQ3OdVE4BIZ7iBReY6r/oXq2LpgMgn0Yrda3RfcidpHDG/BRTl6w?=
 =?us-ascii?Q?5fkcM/3CADHZhOrEdmRUs3/cjzIrKgI0C56tbjY6eCtO7bLruGoOQC6l3vst?=
 =?us-ascii?Q?k72ye47hFeAEao10GuJ9BXvj6h8F0N11IuFD+i5Q82sTbTdk80c+n3qRszcn?=
 =?us-ascii?Q?MDTaM9+d6bii0LhUOjtVRhcRM9ixqmSHswNl4sABo6fDqnBKt4Wq8bm6Ttj+?=
 =?us-ascii?Q?Dw7bILqR7JmZ9BfTuk/xAfidxX+lo4jBRi1quRh4ulRhUp+hUaA+ZJ689cU3?=
 =?us-ascii?Q?PB0fyyOnCN6Luopjngf35+egZk1RzlqzJ5fPSf2FA78xam8pcSVXatHoh3N4?=
 =?us-ascii?Q?9YhoewH9lAECbLSMu12VVPk4Gr6Dem792Xr/9kgkNSbyhE2KC0JpAi3d+14b?=
 =?us-ascii?Q?89VIt09hcFLfeC3bdW40TaJlh4rCSQwfa+rL+IPlXapevHCtMLpo98NqgCzf?=
 =?us-ascii?Q?Uqdz5t3oYtu83/D5022m82PjxTlxxK48xAmkrTVHGFkegWHtf5n9yq4FALhz?=
 =?us-ascii?Q?ss2Su3jkAY1BULYJt2904e2CZO7t+FJX+s7P8wDYw/mVSVsxcdKLn4Pu75PM?=
 =?us-ascii?Q?qMyasHEhG+e647YV84XhCFtja+kkNi9uxD5v9ZbAb1ua/hpy9KhrPb5EwjAz?=
 =?us-ascii?Q?miMwbZX93NvJ2UKhfKsAjSdXAiJ6bkLN7XFzHUwA2VNMpRhdIjbfXjAyrDOc?=
 =?us-ascii?Q?3ppQWTa7/gB83r9g0BUfgkR2Oa5GJaIu+jOO6qRNQUbe40V9RulWq7NnlUHm?=
 =?us-ascii?Q?LLLcTIs/ptGsg3vKsPBvjKCdpqYFLss8M1LSwvrToO26e0Epa5SeeeicTs/z?=
 =?us-ascii?Q?D1WOoxsSqe/bPX9YrALAp+yT8Fke6I+ALNDAyEW29XVCB37PsXflY3tSJQXW?=
 =?us-ascii?Q?U1IbY8t1jb9UvpQidnrAGuF+swF2T4ZFG+ieeIh1P+u26LkrWE8uRQX+JcL1?=
 =?us-ascii?Q?R7E7wwk0ctE8aN7DTtz+cBI7loqX7ppbUps5atsi/vz/qZdpHlaDEPW4LGzt?=
 =?us-ascii?Q?+6izi7vD3Op3xEht9EjSAsL+n2xDebPMJ3CV0wOcfkmSbgdBh7YhpD5902OB?=
 =?us-ascii?Q?M67uscEO1AmzfzbKmXcjW1uQI2D5KrSh6eUt3Uc/iuSWJz2ds5sGdiEGEefj?=
 =?us-ascii?Q?Wnm+vyvMIlZ/n4FTiJH7Lk4cHg/E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dolS2nS9cE8JHLxPgJKL00lrce8lmrtLosJDSNXhJgwtUGDnvmk7Yy39+vg7?=
 =?us-ascii?Q?bEb2Sfi6cMcdGl9pNBiAkXr1BjPRYMbFXcPhi1CnRE7K56DWLGUc0Mbly9Dq?=
 =?us-ascii?Q?63bdnUWR1j7kEC9vmv/XB1QEpeaNnxwbrEDp7RWzlsr5QRzY3cyJi7muzV7w?=
 =?us-ascii?Q?3cChUlcGzqeF3bZB7+3mn9oqwimX3k2l19RbouXVX9pl5lcvLwFeugJ9nAVM?=
 =?us-ascii?Q?Xd5JxOHuC66bgHWSz2xmFfqyJ/8WR1jO+gilcccNDYwUsLY2OGjWLjxBmcyn?=
 =?us-ascii?Q?VGFgt9VE7AhusH/5oEO7IRShs/eZv6hKWuxI+qhJVj3dQEZYL9dJmQ4YjogQ?=
 =?us-ascii?Q?ht7iicX4wv1CxrXNxFNli3zPtP1/mWkXMWdZa0nT16GRDWuEMBv+mzZr7Wyu?=
 =?us-ascii?Q?p4FXGzQ0l9Mr6rC9vYEEZXM/9pFL3/UvaPnAEjYkuFPRb+ZDPsyKDcqIcM/p?=
 =?us-ascii?Q?4obWXA6H7rDuvApP9iE5tCNZxI445oTObweWW71b6VDgXq20pYEb1Uf4BAnw?=
 =?us-ascii?Q?80HFsGmd3+5ER6FMyQe2zt+o8gj4/UmVWW6R/2p/QBzzRL67R9Sm1CX2d4mn?=
 =?us-ascii?Q?9JTp+qxbY8aUmAHfC32DDtOkWJkMG/LGOq5bLdd9s9KF8iCPkFMSqw/DW8Lv?=
 =?us-ascii?Q?rRBwBXmvSDja3Xk87IT2JoxgC9taDqjvNUp1mnLLECbhGcoNoH2cc/d0S1K2?=
 =?us-ascii?Q?UISPkhCDp0Q/UdiswI11qGuEpKgtChPWswjd9ajJa+0XEwGXTaxli/cpF4vd?=
 =?us-ascii?Q?nKwijOl0hWx3HATozeAfg8iBF78JFr0v3CldZtftSsW5yOesysd6RQX8FD/G?=
 =?us-ascii?Q?caeJQ0LNVYLEsYiux9wiwRaVZW1cly99drRzFYxHaSWr2r7tYPW1f+v2H4Qw?=
 =?us-ascii?Q?vHJevqzfOn3w4Z4vrrT9bAIIGfcuz+IlvU3HNZ8z54Klwn9fQi4mdKzJUEbM?=
 =?us-ascii?Q?lzx7RONI1hDhj0j+5XG6kLRhAe6H/TX5nehm5BLYvmboq6AWWetGGBlSMlr8?=
 =?us-ascii?Q?eitI1zxXDHYxTYKlrvuCjzHCJBuj4FhbMD4+QFL782O+I4ffn8LxCbvheofG?=
 =?us-ascii?Q?34JjUy5oCWQYOSih3h0pDFECpNZJgqhJ/b76Qu+a6oWiAj2yQe+K8Km+KKPV?=
 =?us-ascii?Q?DpBcPBIm1bQaNsU4+BAY1YLdo/g74w0jbpQybd4VslW4rvuvtCkZkEBEqI4E?=
 =?us-ascii?Q?e+dfZwthhnMLUre+zWhwVx5CkSLgYOPC7tnqvrcrm9qnPWa5sKPwqOF8R2kE?=
 =?us-ascii?Q?Ml97Lj01f6kcm7D6qWDyhCle8zyKjOZNI+AGqciiCqpIG4opjQGHGTyigaFC?=
 =?us-ascii?Q?ACqIutdCjoxeUtfsCI0wkWiNS4sRGh3B4B+qElQfKG8gRpK3oaRSqCn3o53z?=
 =?us-ascii?Q?Z1kwb3iTc8LPj9oxdvdGZSZIjNkJFUELpXTuq830qVFoDTHQQ6OWpLVY6p3T?=
 =?us-ascii?Q?SrnaAZ95wVreZXiHBpFHijgz6JVe1luepWfbHbHqinwTl8sDOrzSIJUuU4sq?=
 =?us-ascii?Q?aMAGgY44olsZxIgFH39J92aGJi3/YI7b8FqdsfPp6tlkbcNUGcVSt9IICvo6?=
 =?us-ascii?Q?a2V97XjR74g274qBUXt7DnKtSLDCN5njjj/GF8X2jkpChoMC4J01Zp1sX2LV?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2e208ae-11b5-4979-5d54-08dd5d613dd7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 10:17:18.8355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SjOBGwLigk1qiiE/OPwRfWUUVZC50v7uKYsDfRXmWVd9oXBqLU7lMJ6Yqo4AcRPNq5aqrg4N4ot9sCxeDEnckbo8s7XPWqwDr4u8UfxVKRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741342644; x=1772878644;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=USbouJxURg+a1XqfgWQPvmIFe7BtjUbF8sic1FaJ5jI=;
 b=K7D9EAk8euBgrQG/M0EGDP5LD3lntWC1CkSJQa8yA1ZYvwyXVlQsjrzZ
 BXGs4nbb38Do/aIJaXv6YHaXsfXxhRdnxHp65KXPhmvErZuIfLxZW6QVl
 cqziTZg+D9/ASUqEgmz61Fhy9PjsgiJt8dHX7cj6NvYHL+WrY4i+/W+Z+
 GvQGmT14AUBfP8tYAvNCgcyqFxPtWr+ZsmCpy8bERRp1kBGTqwPK7ILWv
 2WnNwIgPU2VgvrUvm7Uf+RofZucRATHfXmNCeS0IDNuSPdann3rHHMs9y
 vsqKlz9uH82pbNim/+x9ZAr18Fdb2EwReBvLee4MYQEbRhPFYP5DGRMN7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K7D9EAk8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/16] idpf: fix Rx
 descriptor ready check barrier in splitq
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

On Wed, Mar 05, 2025 at 05:21:21PM +0100, Alexander Lobakin wrote:
> No idea what the current barrier position was meant for. At that point,
> nothing is read from the descriptor, only the pointer to the actual one
> is fetched.
> The correct barrier usage here is after the generation check, so that
> only the first qword is read if the descriptor is not yet ready and we
> need to stop polling. Debatable on coherent DMA as the Rx descriptor
> size is <= cacheline size, but anyway, the current barrier position
> only makes the codegen worse.

Makes sense:
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

But you know the process... :P fixes should go to -net.

> 
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 6254806c2072..c15833928ea1 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3232,18 +3232,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>  		/* get the Rx desc from Rx queue based on 'next_to_clean' */
>  		rx_desc = &rxq->rx[ntc].flex_adv_nic_3_wb;
>  
> -		/* This memory barrier is needed to keep us from reading
> -		 * any other fields out of the rx_desc
> -		 */
> -		dma_rmb();
> -
>  		/* if the descriptor isn't done, no work yet to do */
>  		gen_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
>  				       VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M);
> -
>  		if (idpf_queue_has(GEN_CHK, rxq) != gen_id)
>  			break;
>  
> +		dma_rmb();
> +
>  		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
>  				  rx_desc->rxdid_ucast);
>  		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
> -- 
> 2.48.1
> 
