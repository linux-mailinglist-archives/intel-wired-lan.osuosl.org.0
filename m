Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B29A3BD95
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 12:58:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3635785BDF;
	Wed, 19 Feb 2025 11:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DR2Iq1ZeOHPF; Wed, 19 Feb 2025 11:58:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DAF288363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739966326;
	bh=ZGO9m2kslZIym0XnyMoGnXLkqe7WdaKMiBsvPRSjGC0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ct9KMsXyhFlBRiwa6FrtxtWcKYGdb+fN3eiImk81apmnfonlU10NZwlYDrVtm8xw5
	 GrMKQt6qxh6A/bMIe72Vr3drZSZB6P/p9GEbRi9Bqu9G3mQxt25FNH/dhZ9HY7bp6R
	 Wz0WSENv24JftTY8+D5n2KENoZqN+W2mxOOg/1W677Ei3laESFGMVh9FwWDNOk2Y4C
	 M0DcXTPnlgoWq1pWKeGIqA3DYIeXMyMAXygDVmXCGzSya9qTWJIohySbVAlTxIW2qO
	 fTKlnKXTA4n6cH1NYu5qdg1cJvc9HedQplDer8BDOhwAEbDzWIOf0K7aixRIYGIcn0
	 swv9gQTOWvo4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DAF288363;
	Wed, 19 Feb 2025 11:58:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AF52C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 11:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F05785BEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 11:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ez3_VZQEB-QP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 11:58:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D419888314
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D419888314
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D419888314
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 11:58:40 +0000 (UTC)
X-CSE-ConnectionGUID: USjw5dh1TzetkJUp7dZYmA==
X-CSE-MsgGUID: lEj8xETcR7aN59NNuY7Rfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40412606"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="40412606"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 03:58:40 -0800
X-CSE-ConnectionGUID: IWCYJZ2ERemro6K3XJaXrQ==
X-CSE-MsgGUID: sruBSkwVT5ud6iGwownppg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114558528"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 03:58:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 03:58:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 03:58:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 03:58:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o6imV1sNRbLqaNyoSIBcAkmBdWiQ9BKLEawux0MkiWwpBfXd27ZFSwz4WDS4r9pfTjwL7np0ynNW4mXsNefhiRrzt8IC4OPnSLOqI7FdXgC175DLZnMc/THwme4r06laK++i1xDlkdFyaQRLNSc0H9onZsz6BCzHbFTzhMh2uA7Vgz1qaIdn1EghJEDc+VrfAmQxYo+rNVfzCUdSWirkMuQ+USpk1I+rckQKweNzUhQUhniZLdz9e6CfARbv035OZJaEZNywLnDg6AJ++7iZ7TWWeTVBUbmN3SkUYIaYs5FWxsl1v2uIryO1eK5yG73SHDegfvsHsE4QA5KuUuDAJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGO9m2kslZIym0XnyMoGnXLkqe7WdaKMiBsvPRSjGC0=;
 b=EJfb4zNZgDFu/ppigKBc8CODfuZ+7h/kTO0AwIzXIEEygDp4qAfc1I9oTtiqOSbCWpq3CDDxKwi3ctL282blDNp6f/VsRyRh7QkiyPYFXUKLkFNgDKW96Bc92BN6UCPeK/gAYmUaPyM+v1F0vugOPQi5mSex6P78IjnZ9Rof8uOUa5eKIdex7yLGR4K/+Gao9dg4ElGSXqobjRX8lvtjLdTUle07m26QcBQ3gRcRhlj/zvKYSFdWzIcP44IhAHEewaZAbXRbxXMDL8aWzBdb2JMg1eaTMp1pV+9NSz3iwLrpzcvbcVCfvUKRaO4QcniV5JtxnpCSl2ATJpW+7w/Vog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 11:58:10 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.8445.013; Wed, 19 Feb 2025
 11:58:10 +0000
Date: Wed, 19 Feb 2025 12:58:00 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller"
 <davem@davemloft.net>
Message-ID: <Z7XHSGstLAiHWovx@lzaremba-mobl.ger.corp.intel.com>
References: <20241209140856.277801-1-larysa.zaremba@intel.com>
 <PH0PR11MB5013488226F0A48B91CA7E1A96102@PH0PR11MB5013.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <PH0PR11MB5013488226F0A48B91CA7E1A96102@PH0PR11MB5013.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR08CA0262.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::35) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CO1PR11MB4818:EE_
X-MS-Office365-Filtering-Correlation-Id: 91647432-638c-46cd-ea0a-08dd50dcae0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UP7Iw3GbzI2CZLLl6/eQ02d9W3wQit7NV8/FH9w8QKlin0YNyaefDdkkq32K?=
 =?us-ascii?Q?GvW3GH0ysE6mx5bfb3OGGa8el5IbixnvmiaHPUpc+y98of430cuEHP2V8e25?=
 =?us-ascii?Q?WsejBcztFV5yQ+VraYqdIxL9U9UMR57dvz3H5GqT0KU7955Nw5zFxIOw52RN?=
 =?us-ascii?Q?omGC4N1sq2pLWdE1t0wB1SO85RW9IlrpcOI2zf7z/DwK9fbRfetVGrBEDw0a?=
 =?us-ascii?Q?Yi1APvLQTZxf3wYv70ixMcWZZgfd5nPTv4scmUo80MgQsFDcdnFGDpVMwmBy?=
 =?us-ascii?Q?tgyA0NlebqxqUzhHYOmYppOzM6qMGbvpeLLXCTRFpPlf09HTZ5KNe4TTKU3d?=
 =?us-ascii?Q?sEdAFEtB7sXNLyrPKRVZ2E5LyT1lH47E6VrRVIuNKXn1n6adNa5AAAX807oi?=
 =?us-ascii?Q?zgXoV/ur4TAaEUkUBjXR6WkfZQSiW8QbSwarYv0vc6Kyp8d/qYDuDluBFQgV?=
 =?us-ascii?Q?E+wUXnkk8p2wmdWH6qlJL6y4TnzCzsXM/R0CTB2OhxA6iOv4a3WCvlPRLI49?=
 =?us-ascii?Q?mOwiuUn9cc1qb4YVbaMRoFuWdPg2q6VWSAmhY3lmS7ld9iDh/pNAy1eIG08G?=
 =?us-ascii?Q?lyvCh+u1sVdaa/iTWV6MQu59RR4oEHvNUVzEcsfuqnxoGQ8fX+Mdgscd3E8N?=
 =?us-ascii?Q?FuRYT2wHizLtqQAzcmBK3f6nIkzudBToQctxueyvNYQWduFsJTaIdQ436Gkc?=
 =?us-ascii?Q?znJzRfL2JMLgy0+kSU7AifZoLQaVUx23r8YBkhcvtmZRej6evUHoFvja7O2y?=
 =?us-ascii?Q?KNzHnKL0YJ0LC3pKdCFTtmBlRW9Vk8a59o1Arn3nPxmAMyTc4JZZas5fJREC?=
 =?us-ascii?Q?2O05vmLcAgiZIpAR+jypa/WvWjGoyUdTSPD3zdNH29+96h2jq0cuZDk5yXgU?=
 =?us-ascii?Q?Fb8v0ZP2ka2jFfUgwYda10iO2mBOHeYyL3pw7uxMC2cE5T0bHSdUGxp5bQML?=
 =?us-ascii?Q?KxrZ+YMsSNRt4V6yyHHN8kisUSDPfpbKWZtSV9OjVn/jeP5OkQYqedUA8DEE?=
 =?us-ascii?Q?7B7n+uNw+Ih8SPnmPVkazjeaz16tJYL7c+9N19YTU/J+3vjPmlR5iZUJMS/9?=
 =?us-ascii?Q?ULoJcK3Btt4pjqdLGL+iwmbDkCINmofbhQQqW7RgNVqIBEQ1br61MtacLeYV?=
 =?us-ascii?Q?bHH258QlMJ4VDTdz27neeSbFg3IPd14y3Mfw4kfv2T1sC4WW/yiQmwn7bS0B?=
 =?us-ascii?Q?0TmJROzfGotKr2KqFXFGIjBlRR4y0aOVBG8w7aSRFcWWt6y38+6dYeeOCO+q?=
 =?us-ascii?Q?iIxIebx++Qb5zlyHPdkLzmSgWa8F0U1MZkRdMv0MDFSrnWPX7TWeVm4tt0f6?=
 =?us-ascii?Q?TaBNKSE38jM9EHpgFG9MGpuAiWr5f3pHY43fpbwiPMGePA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C/xOfcNpS2f+xgQiy3AdaXMCuYSUWvT+3u+bfS8A+tQxvS/9PLNPZ7/wT2Xk?=
 =?us-ascii?Q?9p5nem/dq0HhTm5cuZgw2dpRG040350lUjTjq83gP+eauuFzaamPUGmU4VHC?=
 =?us-ascii?Q?UOXUrxBWTdzd7YU7nOphBjQs1zL8F8J2u2TVHu6VOmYaD7f6VXO0fPmzFecS?=
 =?us-ascii?Q?1sbMUtIYnTnl7sfqh1t7VmDiScQVcNaCRuWTAzHEpKkpC2FHj/+prWtNpcJ/?=
 =?us-ascii?Q?C6WnQ4m8rbuiPctvvYdWqjIDkmoqdJucZKoslZcTmTL4FS3zg6bM4KJiiPTU?=
 =?us-ascii?Q?ChtWKKfTf/j/lxLN1vBmXyvk0FGT2GuOjLKr5W8ckBz6B+Pn0G0k8L0G4vhI?=
 =?us-ascii?Q?Nm4pbWdSgrKSaX8D4zpAVmgf3bUrY5q8ZlYGJOPdik7/pcCIPja3O/rfLlLq?=
 =?us-ascii?Q?axFGgU+7FJU5gM/+Wbz52IJcvAifwZ7G0kQzacULCbSk8P/2TSG/uYCQdMnA?=
 =?us-ascii?Q?x6rYGLCDYUYFjRFhi1lZpzDWDJnivBsBZCZOOAcV6f0RHEv/g/WlqbNPx6MU?=
 =?us-ascii?Q?CrceCwT9siNqj1eO7uvfHj40Ayy7KWdKKULED/+8lqw8TPEX8jjcGJBZY3hc?=
 =?us-ascii?Q?xsxTuUqRf56y3/yaBoyitCaLGTwqR89qo/FPdsbiS7uyWMMtAI3cLdIzx/Dg?=
 =?us-ascii?Q?cEN/xwGnP9XE62u7952OlEFIAVEQCEAWW7XWDANXwWDnv8iDPl7b3YLkHMPo?=
 =?us-ascii?Q?sZ8GBVDBydnF346S6vX2WJIMJ2QboRjwr1sk5jmqWxMfRKLg7VLENZJoLyWR?=
 =?us-ascii?Q?cDBGKrsNKCKi8OgRFAltZki4H1sPQPJbpNU3kSclJfiBc2wjs11XDiaj/rYc?=
 =?us-ascii?Q?sKQLEnihsn5rCLz6pl9nkCxOv5IUmwYh7XmIuIJ6P5y7yH4bY4utKis1a2Xs?=
 =?us-ascii?Q?5V8cBQENEGtK+wOzVl5pHmGrVa6FmXVp8rbtuHiU9AmuV2EwGuGbUDSHzY7k?=
 =?us-ascii?Q?pzG+MoNjIs3CXBS0kG1FhJ+HISdZ1QHdbvIzlUtEEhW4ekdhLr+80FCwfzdr?=
 =?us-ascii?Q?/KE94t9I8HjGMndSLq+vyNuqT9MORXZxfZHQ/8VwVDQ1T78QIdxcilblu7ia?=
 =?us-ascii?Q?gch0PjjQQB9PPjlA9FU4q3X5l2SNq7+1tgB1TgNxlMh1L1NaCgqsusbPaL3Q?=
 =?us-ascii?Q?i4xjekEpP3FtuCegyaaWzp2lTIhjjyp6R2MqhMR8Dz4uYATnLgIZiajJEDch?=
 =?us-ascii?Q?0z7RYuBXkzLriHGrsiRXGKCJWqksXmLn/h78E4E637VLTsDFQBKt/5Nzi14G?=
 =?us-ascii?Q?aa9lo1DQHa1xVUAYQhLsPP8homLUzBgJaFvwWLqpFNUAt0qISdDDQKe2puCc?=
 =?us-ascii?Q?i56ayDJmauRHu82dbvRqT2ENltWsYLfWnr/UNwpNlqnmEIuWxmIvzRKQmqnN?=
 =?us-ascii?Q?pkBQPytw7AbEegQy1InEItWWR0RjUNH3AWDj/895EZQkrWjsab+pp3KybuO4?=
 =?us-ascii?Q?CPUX9NPan5tpQ4Ltm9EjGewhN6igvrWK8/SzdS3m/4Hfu3V6keikCq4/11OV?=
 =?us-ascii?Q?8TSIUkZ137LDQ5kj4Xc3Q4GHl23vLbEjU7a5UQw2uJmdWu/DIoMMpsdz643q?=
 =?us-ascii?Q?IdoRRmiN9glK1NkVVcSDDiToyPacZbs3lkM6JAwoU5xJLf3wffrysfvnYjzB?=
 =?us-ascii?Q?2Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91647432-638c-46cd-ea0a-08dd50dcae0e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 11:58:10.0789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqs3zzefRdUEsLJtXLLpIdaNuq2wMJuxUjUQFaf1R9vMs0h7R186ICzH/njqKI+8dzdh6MIho2sNFEB0igpKQ+l5PNi1dVWf1xOzZcjmSu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739966321; x=1771502321;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YWVSbluTzraWqcctHaLXcTB9nh/SeguxiGzUG7hSsoM=;
 b=EuFv7VwDS4ItX5ZEeO4Jnz+++pDYnLxhK+NARm9FGGEI6Hr5a1P2wRG9
 tFZsNoEsVc/Su13MN8ITjd8PmiEgDRghcKnzWbGS1o+uISEjCKMolS6Kb
 G8c5G7IDYNaMObggOwRg/1k8xh6jrrr01VIIrPKAwZKdKfR5i4Fwu4gpr
 uvx+6dnZOFPRn4GMJwb6vXs5sOMqhv09SVHt1Eqfx32VFOnJ1Pw/fakmJ
 xkl4jo8IJVYxY1CHkbuac7vrEIdbd3E+d11mk7RxwFs8Qm6q+SIVz+Rq1
 9NrUz4/IJksjGUpG/Oa1EKNPB72bK1iLmhDlr6Wzu8WX9azR8QJykxavm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EuFv7VwD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
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

On Mon, Jan 06, 2025 at 08:51:40AM +0100, Buvaneswaran, Sujai wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Larysa Zaremba
> > Sent: Monday, December 9, 2024 7:39 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> > lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> > Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> > Eric Dumazet <edumazet@google.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Jakub Kicinski <kuba@kernel.org>;
> > Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> > Subject: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure destination
> > override for switchdev
> > 
> > After switchdev is enabled and disabled later, LLDP packets sending stops,
> > despite working perfectly fine before and during switchdev state.
> > To reproduce (creating/destroying VF is what triggers the reconfiguration):
> > 
> > devlink dev eswitch set pci/<address> mode switchdev echo '2' >
> > /sys/class/net/<ifname>/device/sriov_numvfs
> > echo '0' > /sys/class/net/<ifname>/device/sriov_numvfs
> > 
> > This happens because LLDP relies on the destination override functionality.
> > It needs to 1) set a flag in the descriptor, 2) set the VSI permission to make it
> > valid. The permissions are set when the PF VSI is first configured, but
> > switchdev then enables it for the uplink VSI (which is always the PF) once
> > more when configured and disables when deconfigured, which leads to
> > software-generated LLDP packets being blocked.
> > 
> > Do not modify the destination override permissions when configuring
> > switchdev, as the enabled state is the default configuration that is never
> > modified.
> > 
> > Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 ------
> >  drivers/net/ethernet/intel/ice/ice_lib.c     | 18 ------------------
> >  drivers/net/ethernet/intel/ice/ice_lib.h     |  4 ----
> >  3 files changed, 28 deletions(-)
> > 
> Hi,
> 
> Observing below call trace while creating VFs in Switchdev mode with this patch in net-queue.
> 
> [  +0.000188] ice 0000:b1:00.0: Enabling 1 VFs with 17 vectors and 16 queues per VF
> [  +0.000062] list_add corruption. next->prev should be prev (ff1d7c830300c6f0), but was ff282828ff282828. (next=ff1d7c5367d61330).
> [  +0.000015] ------------[ cut here ]------------
> [  +0.000001] kernel BUG at lib/list_debug.c:29!
> [  +0.000007] Oops: invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
> [  +0.000004] CPU: 81 UID: 0 PID: 2758 Comm: bash Kdump: loaded Not tainted 6.13.0-rc3+ #1
> [  +0.000003] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS 1.3.8 08/31/2021
> [  +0.000002] RIP: 0010:__list_add_valid_or_report+0x61/0xa0
> [  +0.000008] Code: c7 c7 a8 97 b2 8f e8 7e e4 af ff 0f 0b 48 c7 c7 d0 97 b2 8f e8 70 e4 af ff 0f 0b 4c 89 c1 48 c7 c7 f8 97 b2 8f e8 5f e4 af ff <0f> 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 50 98 b2 8f e8 48 e4 af
> [  +0.000002] RSP: 0018:ff5ebf3d22093d20 EFLAGS: 00010246
> [  +0.000003] RAX: 0000000000000075 RBX: ff1d7c54143a1330 RCX: 0000000000000000
> [  +0.000002] RDX: 0000000000000000 RSI: ff1d7c81f06a0bc0 RDI: ff1d7c81f06a0bc0
> [  +0.000001] RBP: ff1d7c83030097d8 R08: 0000000000000000 R09: ff5ebf3d22093bd8
> [  +0.000002] R10: ff5ebf3d22093bd0 R11: ffffffff901debc8 R12: ff1d7c5367d61330
> [  +0.000001] R13: ff1d7c830300c6f0 R14: 0000000000000000 R15: 0000000000000000
> [  +0.000002] FS:  00007fea5e4e4740(0000) GS:ff1d7c81f0680000(0000) knlGS:0000000000000000
> [  +0.000002] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  +0.000001] CR2: 0000562ef57c7608 CR3: 000000019037c002 CR4: 0000000000773ef0
> [  +0.000002] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  +0.000001] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  +0.000001] PKRU: 55555554
> [  +0.000002] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000002]  ? die+0x37/0x90
> [  +0.000007]  ? do_trap+0xdd/0x100
> [  +0.000004]  ? __list_add_valid_or_report+0x61/0xa0
> [  +0.000003]  ? do_error_trap+0x65/0x80
> [  +0.000002]  ? __list_add_valid_or_report+0x61/0xa0
> [  +0.000003]  ? exc_invalid_op+0x52/0x70
> [  +0.000005]  ? __list_add_valid_or_report+0x61/0xa0
> [  +0.000002]  ? asm_exc_invalid_op+0x1a/0x20
> [  +0.000007]  ? __list_add_valid_or_report+0x61/0xa0
> [  +0.000005]  ice_mbx_init_vf_info+0x3c/0x60 [ice]
> [  +0.000076]  ice_initialize_vf_entry+0x99/0xa0 [ice]
> 
> Regards,
> Sujai B
> 

Hello,
the problem was addressed by another patch [0] and is not related to this
change.

[0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250211174322.603652-1-marcin.szycik@linux.intel.com/
