Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF175B17501
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 18:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C38C427B2;
	Thu, 31 Jul 2025 16:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id klcj0UY9sbA6; Thu, 31 Jul 2025 16:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6164427B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753979613;
	bh=DOAGqjDikKVWMSqRcLSxoq0Ge59+Dhp1y9kw3xGMvIY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kj4nz40MJuvZb1j7JmyA2bHdY4KZHS0rHg433h8ywvn/Ar1Z+p7SjwTiNq+1kC4XY
	 VFWdXVW7VOb92pXK1jyQM+96MxcbC568HLVRm2TY1wxaTn/v6h9Avz55L5ikl445UH
	 cPAU2NWhtT+sIow6ya0DaPQZNunPzhPsS5DZa5Yj4s5WYAVjXr9nK3VGCVScaspc0y
	 Zdgz6MxiDhWXHeTxjoRY67nYxcnWmsackJpdHyi6o1eukkPHvW94d1Je22HutQtQG4
	 NTBQ4O7WxxEa1B7+PSzwZsRsMgIruSRXAGSFk1YVAYVGrElIzC3b3iV95gOhAgj64y
	 Gk/lcXqnc5OQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6164427B4;
	Thu, 31 Jul 2025 16:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD6DD168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2F4D40320
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQQx31BtXTMU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 16:33:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1CDD400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1CDD400E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1CDD400E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:33:31 +0000 (UTC)
X-CSE-ConnectionGUID: e3jhsr1CQzKkEpxUTser0Q==
X-CSE-MsgGUID: H3sRQ6rpTG+bK1Er9r/MKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56392785"
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; d="scan'208";a="56392785"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 09:33:23 -0700
X-CSE-ConnectionGUID: +vWykL8LQeyak+kpr2m/Mw==
X-CSE-MsgGUID: IH4vOmL/RBiZk5rFWoQkgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; d="scan'208";a="163019414"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 09:33:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 09:33:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 09:33:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 09:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n3U8+kl755W34DvOOCeb4Gvx2sdibWm6t721a45KZXRsI8WPaVK3alphbh3KjGgcCC/4mykedf8FNotlW+JtkaNi2LDIec5/u31sF3FhODqmnFwjDlmugoOhDQogEclsYmH/ZzGXP5wGfwgStOce5SXwCIohyZG/dJavObEJBMqI3nv5XwSHZHMjgo7KKBSzSg1GzL56heE4KZn77HIk/tHBJn2lZHAoEV1Q3bZTQGrreMNa+bAR8dxuPiHmCIxrY30npugPULLJfFrj64lY0CS0VZJ0pqwSVmvT0dny04KFNxdhw5xI0y5ttvVFx1w2n2r+An07I2FILtnm7l43Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DOAGqjDikKVWMSqRcLSxoq0Ge59+Dhp1y9kw3xGMvIY=;
 b=c4pND+de7Qh26PGrjgNq9ZdI6GAa9J06jXPBhbb/Z+pG8Xsf63Ve2yVGD29iJh9L/NsHgyVx7YI92kYkaj6c9rNM+5C+cYQs4IYNF2PaeapTOdyWhYwaHHh/uF8494db2j1dK5HpkhuI2AfUHdO0OhKiT0zsNFBulQR92gFQNUpgSnIqhEAgx9BmeXHSnpsosPmUh3ehZLu3d9Cra1BYnnJZDq0bFecabXxBXrIpmvN6n461ufyQ4FrZOPnjIEgcnSe1I2nTSRt/p4xrrOILRsSfIBnp0YJiePsGK63l5SfFkTF5HMnZ1eKt7oijSHui7XqptwbYYNLklqaFPPbsBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 by PH7PR11MB7075.namprd11.prod.outlook.com (2603:10b6:510:20e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Thu, 31 Jul
 2025 16:33:01 +0000
Received: from LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f]) by LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f%4]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 16:33:01 +0000
Date: Thu, 31 Jul 2025 18:32:43 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>
Message-ID: <aIuaq72FjtkEKRDr@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
 <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
 <aIuSPt5BGOM-d9Kd@localhost.localdomain>
 <2f53087a-3c71-4844-a5e7-9d01dae0d6e9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2f53087a-3c71-4844-a5e7-9d01dae0d6e9@intel.com>
X-ClientProxiedBy: JN3P275CA0148.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:ce::14)
 To LV3PR11MB8673.namprd11.prod.outlook.com
 (2603:10b6:408:21c::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8673:EE_|PH7PR11MB7075:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c5e2d61-f56c-4969-09fc-08ddd04fea99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?s2OLTAKgpK/i+mhZIpfihfdC9F4jBoPn59n+a0O94qwjekTMDokFLSfgL3G6?=
 =?us-ascii?Q?zibMm7p6CDQWhEQ5O5P1B+dddRLh0pcwZh/DwenmOuaRrKB98baCvsXjbehb?=
 =?us-ascii?Q?g9rkZaac3AvGm8uwBpKI+MFQ2Y3yee60cWF7ZqITo9YV3UdRfHDwI/aKoJy3?=
 =?us-ascii?Q?yDANZ3WkM5IIWmySgjqnD5OZf0qMZdzhmrJngo+vDjZGXVHOCVYLb0Foco1Z?=
 =?us-ascii?Q?cb6ZNcrwXU7ZBeHCEiyJ6f4L7QXgZ3JZJgR1gAwf6fzLuqRoxB7yGLMyo0tu?=
 =?us-ascii?Q?A7H0Gjd9bl1hh1nkbsKHSrqxUCwloglIjsxNURkN5jv5oWEG5UFjNVfN/bjf?=
 =?us-ascii?Q?UF40rbh9sfk/78ON/sj3vCOH8PzifdjbjdVx1sHdJhPn/KA0XhgHF/0lT7TH?=
 =?us-ascii?Q?UZg6TGmtGo4aRoPtG8k46M8RYpESR0jKjslaLWlDglP6keGQKhku0xk8LLrv?=
 =?us-ascii?Q?lA593c8T9/yJKY/swVRAhvzKPV3MAo7BWlXqTtzMqVcjCY403+/0nFS3+0t3?=
 =?us-ascii?Q?9nRhIxd+aVChom4PS8i7JQ1u2qV2hIcLGy4ApFAgq8MOqWuL+zq6uzINIJke?=
 =?us-ascii?Q?6GB/ZuQfhewYijSvv7/oSgoo34hFq170t7L4DrzZdC1+L8Kc2U35e2oU0Qti?=
 =?us-ascii?Q?mgUSIwidsS47GLqmc11xolBsyhvcEjtSfR9bdzK/kYpSmhsv3y2fKUTUzvV2?=
 =?us-ascii?Q?Ap2KVWqTk2gVaAOpWqLqMQjnXCS5nURfHgH8hmnxUOsoIwsgxT3c3dZzFw1m?=
 =?us-ascii?Q?doz6RT06Q+kg56/s08wpzj4X3uPy0hzqHCbj3mquAvtN8DVkryRRyO+WpD8n?=
 =?us-ascii?Q?e49RDU2auyzJW/1Q6DqasAbW529g2Appf4PMU4hlgmcObzKavdioceRJh/Dz?=
 =?us-ascii?Q?GtONbQvO0QIAhnM3W0TVS5ObWF2GeKZA826LKfy+ZMS6hKaQDwPOVVW1tPgH?=
 =?us-ascii?Q?aKEvqESKHYTivJoolNAKDfoj/tMBkZEDbfPlLo3sCj5DdpCERtG7KWWmtkcC?=
 =?us-ascii?Q?nDojwRKgZ7jv/M5jZjvpY8hof1ZebWK1GOIzwJEUcRMVoYOxyvEdpSXFVDph?=
 =?us-ascii?Q?xcU1qKT8l+40juij32b55zh0A3Uv/qyS+fCiEODdo7DwJ0D0/yuI2pPlqE3V?=
 =?us-ascii?Q?MBK1fphV1PxefnOCPmsR+8Lgh04UcqrL5Up/gWoYtuQW6oDzrdQGy94X11MK?=
 =?us-ascii?Q?LVa6jVZYhXM6XDPlK/zznfFijKdLzK2YB9vpY2awyMyfUgK6Ol/XxZT/cUts?=
 =?us-ascii?Q?ZHRSe9A/A947s+McPS7BV7NQMHjT4/sqoH+KEcpN58nq8FiqjTUT3ZjlV6oT?=
 =?us-ascii?Q?tbua+HXgw/bWlPs99FmDGxq09c8w8eIT+pPHS/SEHZr34bBo3uz7tg4rziaR?=
 =?us-ascii?Q?+tNa7F7MqFLyrpl3s4Kjpk4TJvnxgjyPzCimdTe/n2NCO0kjdmjDYKdXq4hT?=
 =?us-ascii?Q?Dr8aRiEz76Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8673.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tEBhyzfuHLZbSx+7oTh+E0wU+ephinXDKyqBoneropNN78766tBfciMd/nex?=
 =?us-ascii?Q?g79KCdMXogyi6PT9f7PTbXDUj/E9WswS1JcjDAkyYG8eSCiNPqE6y92FZlRZ?=
 =?us-ascii?Q?aWKzZOc13sVPkqn1/LgibNTEfAejXHKVKDr22EpNDDaKF3DZzy3PdVQVYs8w?=
 =?us-ascii?Q?Bi0Z+NphyzTArYFb9CyKSm41oQpfQ8VmysWSSvSx5X6jexpmH3yDODJ25HU+?=
 =?us-ascii?Q?wVH1FrAnfvBzT5VZttaZdjdKcn44Le9ctd9nCBq1nMtevUuw1BgVFFAnwZY0?=
 =?us-ascii?Q?4y2ncree99H8d4YKONE9P6e+HxqT3BNYZlkztDcFs+32aKIqKP2JKLUAb2s6?=
 =?us-ascii?Q?r8qUaJGwO23GUYzf9JNuZj+0n87YpT1/v7KWgysfDhl6+eEN3JwovCJb/PfN?=
 =?us-ascii?Q?44st4m5EIkPHyZ+BJwK+sajQ8EI65vNIByM27gooZdCUSpRqUEO9pG0zdEli?=
 =?us-ascii?Q?AI+tEtcGtK5WykkQufUJypp0DpnIhdLwDZCFLqLPIBQVEb0ZEh6Ut5ATI+66?=
 =?us-ascii?Q?etA1QxIoGVokwqEbbbSyUW8bl+1K81e3qJOzI/Qw8mC70WvN0y9evWWYC3Pv?=
 =?us-ascii?Q?IExxrZlad9wzC7vhbhVKT4m+R4Jf603r9vLgLCtySOhrmg//S3dVMF1usBGH?=
 =?us-ascii?Q?aPdcAFGE6C/IZS8jT+OCIU5H/m/62t3lfFhqJQ/gq6LS58TWnfngLPQVSyPP?=
 =?us-ascii?Q?vPH2FO05b6s4ZIrUpUqJ4hUR7tkPWfIhM4MKnhMH3n9m6fwrJW7t4DhhduMF?=
 =?us-ascii?Q?g6Yib3dHfF8dHrrlqK3Oh1cjaKWvLNzvZviLyvGhWClHFwVRg3G+rae3cUh2?=
 =?us-ascii?Q?j/+Q9i0bos4c0gBM23uX7ZL9mGD5CHWj6XUPygG/XYUeH78iJrdf+ucNWse4?=
 =?us-ascii?Q?zJwckLCpSe5SLDbwCnoeOBmj5ev8+Yr8jjepOnTTNKzGeG45mmj3WMzM1qbl?=
 =?us-ascii?Q?/w74dvFjwY+MUsjSLUDLrWfWVv1DV8FbUb+0Ewztkxm1xB0D3szVA5sLev3b?=
 =?us-ascii?Q?8Hxw25zQRU7wwkgKQyzRKB0sFHu7LvxlQeVGFl+JdcyanYkfNzVSinTpRScM?=
 =?us-ascii?Q?vCKvFHpbKZyo9jqkjhZvn47EK/XmkPCD+nTKjGuQlPpLBOjUx4DDLFToa2bc?=
 =?us-ascii?Q?WrfRdhvnfbUIhk933qCYnDLx7BncmW9xoPNhcA59IOzQhx27ntVa863i/arL?=
 =?us-ascii?Q?3ksU1LdDZpoTGF/L5EdxZvrJwvZvkFDgLJ5kShjNpHCtAAdsn1fT8G+n/SpA?=
 =?us-ascii?Q?Tl8t+LCJLu21L8MMnoUOVAE9mnsHQ88ye0fDFuVcJ04uvf0eAjOqo0CXL4Dr?=
 =?us-ascii?Q?kMhZGdR0CyOaHVatOQrcTQJeQuZ0cDoL2sOz3+FpsvC82fr+LOhprj4Jb+be?=
 =?us-ascii?Q?eRC9S8+ZLs5nEPhcbaPnEG7LgVr0MjFGq6lSOEMLyH5yMNiM0VkTdVHOkJ/5?=
 =?us-ascii?Q?1d+1YAiDbLQNiSV/nhoEyPGZNowyu/Z0d0UjctNYoUPVPK3huDUNN3UV5ic5?=
 =?us-ascii?Q?TvYqyLaeLv4ffBK+njotbSDGnQRPxnftmehTJhFmXg8I3RavcCgdIaSboCW0?=
 =?us-ascii?Q?rzQRTkdQEk+YZDlp+EsOsZ/vh3kySzrHr4NIoJOeYJWwA4ncEjVOX8DypTzA?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c5e2d61-f56c-4969-09fc-08ddd04fea99
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8673.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 16:33:01.7284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p7i0HNW4c+Z1kDeL+seTLViJOrsTRdQr9hYYAgXUHk0ctGGk1OiGUpTABMHxcFqdY9X7G1mw1wQDu9wgWy5VbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7075
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753979612; x=1785515612;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BbMztlehMxW7226RPrCryOlwIsLoYazDeosdh/YR91U=;
 b=SPazCWLeFj8qTJjFjqf/QGzNSJ59IFviP+KfTRkIF7/m11kTb5imTQA/
 IsGNzqj5RNd4D90EdKNndLE19YOZJMhf9iGtVRz0ON138wN2MzvE2Kszc
 Qz6JkVa9NJI6Vj4+rjHq7YaNKqcdiJ02r0oYfUP1wsb10iotgjfyy5HUW
 hY7M8hSiWeNcLBmc1yFKlnOA2gcZYMEMYn2Pe+IbiUWGQn5p6Z86pxCOq
 0dzWtKPsCdofsZTdlOBRDt57O+P9rRYbyxWMV1CWd5dWHmgNxec4Ky1DR
 m28oSWL+LhCQziX8f6L8SdJsX40MJY4IA8jUjN2XL+5MI/c53XNHwjRYc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SPazCWLe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: drop page splitting
 and recycling
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

On Thu, Jul 31, 2025 at 09:17:51AM -0700, Jacob Keller wrote:
> 
> 
> On 7/31/2025 8:56 AM, Michal Kubiak wrote:
> > On Mon, Jul 07, 2025 at 03:48:36PM -0700, Jacob Keller wrote:
> >>
> >>
> >> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> >>> @@ -1100,14 +994,10 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> >>>  	for (i = 0; i < post_xdp_frags; i++) {
> >>>  		buf = &rx_ring->rx_buf[idx];
> >>>  
> >>> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> >>> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> >>> +		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> >>>  			*xdp_xmit |= verdict;
> >>> -		} else if (verdict & ICE_XDP_CONSUMED) {
> >>> +		else if (verdict & ICE_XDP_CONSUMED)
> >>>  			buf->pagecnt_bias++;
> >>
> >> Why do we still keep pagecnt_bias++ here?
> > 
> > My mistake. You're right - as I checked, we never use pagecnt_bias after
> > applying this patch.
> > I will remove pagecnt_bias completely in v2.
> > 
> > Thanks,
> > Michal
> > 
> 
> I think Olek was also aware of this, but please make sure the v2 has
> fixed the errors with 9K MTU as well :D

Sure! I've already synced with Olek about the large MTU regression.
BTW, thanks for your report and detailed testing. TBH, I didn't run the
iperf with 9K MTU before. :)

Before sending the v2, I'll definitely test it the way you suggested.

