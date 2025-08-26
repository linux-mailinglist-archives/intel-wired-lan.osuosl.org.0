Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FA5B35A0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 12:25:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AD1A84CC5;
	Tue, 26 Aug 2025 10:24:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4gzuRlQGGQWU; Tue, 26 Aug 2025 10:24:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D51BC84DBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756203895;
	bh=xsUeOi3Mp5SHYAHLFMPJfoK4OjGDJ7EO9Nz7+XiYEgs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CdhgycgYQeaNF92cB3L6dovLXJHKWp+0uV0UlICYrVT/KZWT7QvFsNCPPZY6mP7QU
	 LCMgK47kP9Ry5VunaV12lAb0uYxPk9niwovYnopbDBnRwSwfpxzOt1IUUB1e4Oz/tr
	 LsibUDKN1iUOwB69/dBgs1S15lY3WPBwlb/VbxcYMvMI5Cu8PQRhFmUKBk41fWj8zk
	 gSBoYbrVDJswzubVGNjOpQbJvcH8H4RbsAVuW6XaD2KTIEp2fh2L9Vg4Aiazv8Tk76
	 HjLG/Xd4L3bSfiaOB7GjB6X7eo5yA5OSgmZcECTHJaWFRcR+8jldHfgdhKKC5iUwsF
	 weRjrsOTZllxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D51BC84DBA;
	Tue, 26 Aug 2025 10:24:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80D17114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 10:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6665D84CC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 10:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0jjeDTQmCig for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 10:24:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31FF184D24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31FF184D24
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31FF184D24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 10:24:52 +0000 (UTC)
X-CSE-ConnectionGUID: 0q2u+4AZR5a1azE7Oj9nog==
X-CSE-MsgGUID: kHQ+XeyDSquqOfPQzQc4kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58374486"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58374486"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 03:24:52 -0700
X-CSE-ConnectionGUID: pfRLlxw6SKygdngaqakJ7w==
X-CSE-MsgGUID: nOu91ZHHSQ+GMRJDk86COw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 03:24:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 03:24:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 03:24:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.47)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 03:24:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pIXJ9T+OOKEIYJ0LD1hZdgCL7DlD/mttt4D6erUuDjYHkLn+b4NYgkzDdnVZK4B3zZ5Z23FfdXXpWTUhsIqM3aF43LUwL0MeZFxjAJT7eTCQgcH4K/S9tYkqkHNrRE/hagUK/dmfgEdfXgTPfLXC0lofmXl2kIBgrqPCxbjitFEXzPeQi43K/hQzspNPzl9RYifcxLORMj1FL0x7/mJOT27TZdrehx0mPvuTRoxFaNhSx9jiAA0CqdUCQPILPXjThG1SPcfAqZrrV0Qr5jM7pxBMMB5tGgK4iDmTyNHDSLvaWjpA8Oa9WYrmB3jwp+vK7tZQBul3ZZr2/KHti7lCpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xsUeOi3Mp5SHYAHLFMPJfoK4OjGDJ7EO9Nz7+XiYEgs=;
 b=UpkF+s/QDTUbyKzjxwDNikGzBrKHHF6nrTD2o10kVXxxsaz6LaCApaS1BdrZDeh9iqHtSIok7meVAcylzf64MIIQw2BcXKaLuxCNpLOWBOPyuLYgxbO5dmVgvWqsWNOp4Maf5KrHhevN0s6S4nk7A/4m4uYXfYwe3zZBdYRMALGAL1mIQDNIh6Ey7Jz1v5wSkqJW3KSU0fCDnI1NnTIGmeHinJJXSqVj7HcSTaH5b3M/B5Cg8iB8CaAgu6aGbpIsgpnEadowh2+626ocRa2nJt0bmZ6j/n1GEa6/pWCXDBAkI/fWI27biR6kt8cZzSqOUhvFAUS7EACDUi3BWGOXXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.21; Tue, 26 Aug 2025 10:24:48 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%3]) with mapi id 15.20.9052.021; Tue, 26 Aug 2025
 10:24:48 +0000
Date: Tue, 26 Aug 2025 12:24:36 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
CC: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Christoph
 Petrausch" <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, kernel-team <kernel-team@cloudflare.com>
Message-ID: <aK2LZCedKkXuG1I_@localhost.localdomain>
References: <20250825-jk-ice-fix-rx-mem-leak-v2-1-5afbb654aebb@intel.com>
 <85c2fea0-686f-435a-a539-81491a316e46@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <85c2fea0-686f-435a-a539-81491a316e46@kernel.org>
X-ClientProxiedBy: WA0P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::24) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|DM4PR11MB6312:EE_
X-MS-Office365-Filtering-Correlation-Id: 42c31f52-5719-4987-1f71-08dde48ac8b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?98R0ex2JScACx9zvYP8ZnxzraIS7Mbz+XO3R4XIZNt9PBAAyDOZk6eZTYN5n?=
 =?us-ascii?Q?G0K4RcL9mb7bMmgQXkIU8mWiPRPUXgxOiDO2vduaOgNx5RRDPb54Y4DYg/MG?=
 =?us-ascii?Q?CRmE5bmeYbygn81ilpDyWPFsPDYwV4TeE1eEXYD5iW44o77FicZXszIP/UXZ?=
 =?us-ascii?Q?tp9Fu+RkyvwiofinaJM0yaJ2+DYaqd/KR6lHZIzPNgE+gf85E4ftfIu9qPMk?=
 =?us-ascii?Q?X38WCR1uw8Sy6qeKUmElTc8mpLT4/dA3ZhR3Co3NF8hFzGEhODAjv0y8EB47?=
 =?us-ascii?Q?uXtTeBoH6f0Qd41nNQWToSuxeI7RCMGAAoPIzXKuo0E195FsrH+gHcBHugMn?=
 =?us-ascii?Q?or9nH1s6WhkZAKePEmzewad+hEbht1EhAOOQ4j98WQqsX3RqBbP0QsiJYR/u?=
 =?us-ascii?Q?JlLfnC503KLvZ+RAfQEL3gvu0IZ6vrX9f4wwC3hwwwvtbFgRW8iOED8JIwHU?=
 =?us-ascii?Q?Vvu+M0wFRmMggRfT1FzecKTMfxtKGf2+92fqFxeCEgok+yFQYjjm7pQVtsk8?=
 =?us-ascii?Q?TylWiQDG8lEiVW5FFlnj4gJftQnsoVf8gRMwyqeIhihxIHNbGgsUG4cXgsCV?=
 =?us-ascii?Q?6bvsarC6+5fGpfhzbKndWNDYDTUB4sZ/i/Velw6X/koaMyLOdupmRTL0UTni?=
 =?us-ascii?Q?qwxCHeHCq5185N9wlxIqIWQg3JCRZM/BkZlQ/phPCnmNG8iXXk1Wp0yLaHfW?=
 =?us-ascii?Q?mwDg+xL9/hcRyFuctqfJDW4TfuxIE5dFXjpXRm1YOUSIM7Gugx2PsPNKt2NI?=
 =?us-ascii?Q?I6PD1V10q7ICXB1MUj9//ZDGJUX9NkFn4Z1zddz9DrmbwyrsapPBcWyiCu3x?=
 =?us-ascii?Q?OH3FFWcHVrdyqR/8VL75sOfxRGt4Xytn+UBW+/j3aBovFZxyiqMOUtQGGtwH?=
 =?us-ascii?Q?bRIPlUMJb8WJkevpXe8s+6CNTGwuZHLThHVkm0nRJZIhalTKFKfDdHl2lX8p?=
 =?us-ascii?Q?M5UMn6dE8Nqna73+x8/zXxdath98TvASEXLuYamr+2bBmxUrHnw5FwOKCtEu?=
 =?us-ascii?Q?lFMsbVmqUFiCgfocsAcsS0zZvyusZCz2h1/7OUlU1y8SOI4pNVJrwxfPIpBi?=
 =?us-ascii?Q?+xxfLWsE+qnxauyG+DTktJXDS9QqPFsvtlSUzJ0Rw98Un1lp/6SXOk11vAWz?=
 =?us-ascii?Q?CT1KEgGAgu2/OFQrebrICgpeDMwaJt2Q9UZMEZukVExq4+qbpgQjP6tUHNh/?=
 =?us-ascii?Q?0lZgX47wbkJaGSrkR0Q6irC+jzeLsegMPo5S97SybMU0D4coEUgOs3uqxz9t?=
 =?us-ascii?Q?genMKN6EW2lOP3hdonkmjpTKSrIWi1nCTJje0zbAd2sJZgES7TRXOfFW82t8?=
 =?us-ascii?Q?cV9vTBKk2J1oi7TwlslEoZb8xACcDYWDosR6pczshS5waJm4Z/LRdILGjBeY?=
 =?us-ascii?Q?rFljvnGtUZws1j3+DySIjETS3SQ0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4wnMQPNFeZkHS7pd0lmY02lqeuPkv1n7rMIpZVVtr4nIrOg1JwB66GaM6as6?=
 =?us-ascii?Q?nLiay8D8ZtejBg4dIttPJd5vTQf2XRlais6h/ptcrhGdCXaeLTD+1otAAGPp?=
 =?us-ascii?Q?HC4T07io4CFkFKpb43BN75kfbyTsB3wgWZIKLEjsCTULxx0rB24tmvI8Xdk2?=
 =?us-ascii?Q?5KYlyRa+G0OLpdNaxkiR3Q1s39lkTMP/LbvsYPrSWKmixFvQ3mKGC3k8RUyQ?=
 =?us-ascii?Q?9OZGoOLsF5crYQ0duZIotOns1DYZsB6R2AgknBjRLKkmsycFEuMQvpRqHLCT?=
 =?us-ascii?Q?/W5U+nBCuhBde7buQU9PvH/AMBEjZAHu4erEC3r3bWXrqguheYAOzH0xAWXQ?=
 =?us-ascii?Q?Y6kBtx6h1E/5qP+AWyPtuR6Q4jin0TWANtbp4ijn1qfasxO0JS9gkjhYr7Vb?=
 =?us-ascii?Q?I1j11AoMiKuPTvp3YUypre3so2x/y2ZuXATpQvaBSOP1pjc9f/pQKxFUnj+l?=
 =?us-ascii?Q?Q2T8TBOh5qHaysDOxxj0YnSSc+3ojPkpWP+AUr/4aacXzM/fhOkX/Pm7/uAl?=
 =?us-ascii?Q?e+4/SsdImdHgTyMeLE1AgqmxrlCFiaH71E3RnqUsIfcEt0OlVLUpb+ExzdLJ?=
 =?us-ascii?Q?jgVXd9jlkOuxIV2alRXZrzeu3vi9ysD/s/S/t4kPaDtRA+3iwZ92IURe69zC?=
 =?us-ascii?Q?bz3tsrKYU/ZHj14eid7pRxWW8K4QG4Ci+A58NUAni8NMarHN2G2HJteWNN1Q?=
 =?us-ascii?Q?Kc+rY4u7XDFnqnuCFnBdx/rW0NfL3ajh5NUfrhILVBbi0DZiJKJEyn2EmLFR?=
 =?us-ascii?Q?lx8aYQv6FvywqFZ6XK82BqsLleBSAe9t+ZkHs169k5CyED/KNKWaJzQmgi/X?=
 =?us-ascii?Q?K+zf8M9xDNX46ERlPiTESTGxwx+N7Ix4DBOoB1b5n4CgwOi/Zo0TzuzsViIe?=
 =?us-ascii?Q?c1Z355zoOnr5oPD7qktc2pznuKjUDVWf48Q8Sk3pt+t0YFfM5QWXIfaXwy9n?=
 =?us-ascii?Q?ADTec6zN3TIYaR3evMNzDkWc3H4VGiQkJ0rFQpbEUvQ76VzynrefjJh6Y859?=
 =?us-ascii?Q?eCDFW1mewbFeiDiWGcqd34s/4il7Xk8FJisKHxa3KG4n8PQIzUMwykMSB0bx?=
 =?us-ascii?Q?/2xuBC9eftLg0aSmJXvavf8QakV+yfuHs0Y4+hU9hc9zm7xGYXfDkewwfvXh?=
 =?us-ascii?Q?tEvT2InjzDyZBDLM3wPaIq0hBX29sY0k7vaBIOzS80aUswZ7SP4IW4NlO8AT?=
 =?us-ascii?Q?Kdr754g4QbqhCZX5ATx5vlxwVf36Muxs/DBC5NEm2e0j7txatZ5h7D/Pm4w1?=
 =?us-ascii?Q?JBf7M2Znx8cQUx5yCy4P2LJdZtCjOZv68B/jC1QOVEG5gSa5MkIth8iUIyz+?=
 =?us-ascii?Q?NckmU4b/NEjSU06iub+DJSHfwdZi52EnBHlaB+m5mZFs+J74J9+JrV2Qwkc2?=
 =?us-ascii?Q?4HQJiAR9jlHxJwkQbZBO+m6iTSVrNZ1Ud2MG4rCEDrL9FaF6Yf2uouhvV8QA?=
 =?us-ascii?Q?wVQKltLOZjorEk12740s5gg0dyopRTPuQU+tMvn6h0hAYcmLekgAId44h3fD?=
 =?us-ascii?Q?Rcymbk1IQ2+yBIt+j+0XpQY8HgBlhzuX+7tsvFKzokwTLOgHFYuaNStHSslc?=
 =?us-ascii?Q?Ah9CbL0a/guO/mWLN8dA1jofJI5ExSAd6jJgXvQKZHvGnUEBZEyyEEO/4bGI?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c31f52-5719-4987-1f71-08dde48ac8b1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 10:24:48.1446 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WtX8dYY2kYgeqyDwcUzy+NYuuCGXOvw5KlmtaoAVGu71sxLq/+hc9G2YNHHwdtOlw+8oyHAj5MLgjuchooTTdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6312
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756203893; x=1787739893;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=t7+dkdDQ3GmZKn17mf/7vr2jw3dq59rPAK5I6IDak6Y=;
 b=fwmNDbLyrDjdSNIDhvSkqC2x+kjga+gcIKwTp4GXg05j2ei0vgM5C4wk
 Yvr0YgH0lHhRIYTsbYANZ+ZvBFaAbk4U6lAtL1E4+ZD7jyXr5z6FpZbCK
 8eOtrueGLGWneLwcC0jdwAxC1E6TIVmU7XP/+VxIIwA1TPx42WIavfhMK
 xH83cQymvxVzn0Ng5yvDXqBsZcpZM8ytJW7kTFYmTbfQp/HwB7pAYEVYT
 GJ/h8erb3hFjP8Gq6zEVknpJNNYkl3r0N8hqqNjtUarNgRekhRbiylfFr
 DFqWKOUOM/FNnAdH7spbujW3yQykOMnuRfnWbwhamrJizESlxHLuGkdVu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fwmNDbLy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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

On Tue, Aug 26, 2025 at 10:35:30AM +0200, Jesper Dangaard Brouer wrote:
> 
> 
> On 26/08/2025 01.00, Jacob Keller wrote:
> > XDP_DROP performance has been tested for this version, thanks to work from
> > Michal Kubiak. The results are quite promising, with 3 versions being
> > compared:
> > 
> > * baseline net-next tree
> > * v1 applied
> > * v2 applied
> > 
> > Michal said:
> > 
> >    I run the XDP_DROP performance comparison tests on my setup in the way I
> >    usually do. I didn't have the pktgen configured on my link partner, but I
> >    used 6 instances of the xdpsock running in Tx-only mode to generate
> >    high-bandwith traffic. Also, I tried to replicate the conditions according
> >    to Jesper's description, making sure that all the traffic is directed to a
> >    single Rx queue and one CPU is 100% loaded.
> > 
> 
> Thank you for replicating the test setup.  Using xdpsock as a traffic
> generator is fine, as long as we make sure that the generator TX speeds
> exceeds the Device Under Test RX XDP_DROP speed.  It is also important
> for the test that packets hits a single RX queue and we verify one CPU is
> 100% load, as you describe.
> 
> As a reminder the pktgen kernel module comes with ready-to-use sample
> shell-scripts[1].
> 
>  [1] https://elixir.bootlin.com/linux/v6.16.3/source/samples/pktgen
> 

Thank you! I am aware of that and also use those scripts.
The xdpsock solution was just the quickest option for that specific
moment, so I decided not to change my link partner setup, (since I
successfully reproduced the performance drop in v1).

> > The performance hit from v1 is replicated, and shown to be gone in v2, with
> > our results showing even an increase compared to baseline instead of a
> > drop. I've included the relative packet per second deltas compared against
> > a baseline test with neither v1 or v2.
> > 
> 
> Thanks for also replicating the performance hit from v1 as I did in [2].
> 
> To Michal: What CPU did you use?
>  - I used CPU: AMD EPYC 9684X (with SRSO=IBPB)

In my test I used: Intel(R) Xeon(R) Platinum 8358 CPU @ 2.60GHz

> 
> One of the reasons that I saw a larger percentage drop is that this CPU
> doesn't have DDIO/DCA, which deliver the packet to L3 cache (and a L2
> cache-miss will obviously take less time than a full main memory cache-
> miss). (Details: Newer AMD CPUs will get something called PCIe TLP
> Processing Hints (TPH), which resembles DDIO).
> 
> Point is that I see some opportunities in driver to move some of the
> prefetches earlier. But we want to make sure it benefits both CPU types,
> and I can test on the AMD platform. (This CPU is a large part of our
> fleet so it makes sense for us to optimize this).
> 
> > baseline to v1, no-touch:
> >    -8,387,677 packets per second (17%) decrease.
> > 
> > baseline to v2, no-touch:
> >    +4,057,000 packets per second (8%) increase!
> > 
> > baseline to v1, read data:
> >    -411,709 packets per second (1%) decrease.
> > 
> > baseline to v2, read data:
> >    +4,331,857 packets per second (11%) increase!
> 
> Thanks for providing these numbers.
> I would also like to know the throughput PPS packet numbers before and
> after, as this allows me to calculate the nanosec difference. Using
> percentages are usually useful, but it can be misleading when dealing
> with XDP_DROP speeds, because a small nanosec change will get
> "magnified" too much.
> 

I was usually told to share the percentage data, because absolute numbers may
depend on various circumstances.
However, I understand your point regarding XDP_DROP. In such case it may
be justified. Please see my raw results (from xdp-bench summary) below:


net-next (main) (drop, no touch)
  Duration            : 105.7s
  Packets received    : 4,960,778,583
  Average packets/s   : 46,951,873
  Rx dropped          : 4,960,778,583


net-next (main) (drop, read data)
  Duration            : 94.5s
  Packets received    : 3,524,346,352
  Average packets/s   : 37,295,056
  Rx dropped          : 3,524,346,352


net-next (main+v1) (drop, no touch)
  Duration            : 122.5s
  Packets received    : 4,722,510,839
  Average packets/s   : 38,564,196
  Rx dropped          : 4,722,510,839


net-next (main+v1) (drop, read data)
  Duration            : 115.7s
  Packets received    : 4,265,991,147
  Average packets/s   : 36,883,347
  Rx dropped          : 4,265,991,147


net-next (main+v2) (drop, no touch)
  Duration            : 130.6s
  Packets received    : 6,664,104,907
  Average packets/s   : 51,008,873
  Rx dropped          : 6,664,104,907


net-next (main+v2) (drop, read data)
  Duration            : 143.6s
  Packets received    : 5,975,991,044
  Average packets/s   : 41,626,913
  Rx dropped          : 5,975,991,044


Thanks,
Michal

> > ---
> > Changes in v2:
> > - Only access shared info for fragmented frames
> > - Link to v1: https://lore.kernel.org/netdev/20250815204205.1407768-4-anthony.l.nguyen@intel.com/
> 
> [2] https://lore.kernel.org/netdev/6e2cbea1-8c70-4bfa-9ce4-1d07b545a705@kernel.org/
> 
> > ---
> >   drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
> >   drivers/net/ethernet/intel/ice/ice_txrx.c | 80 +++++++++++++------------------
> >   2 files changed, 34 insertions(+), 47 deletions(-)
> 
> Acked-by: Jesper Dangaard Brouer <hawk@kernel.org>
