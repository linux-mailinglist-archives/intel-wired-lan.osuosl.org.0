Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9123AB0FE5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 12:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86F88607FC;
	Fri,  9 May 2025 10:08:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eZ5XCEWcu9gf; Fri,  9 May 2025 10:08:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6528B60A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746785302;
	bh=mEHpHBveKQbor0yb2D5KjzUfz0IRi+CuoQic1/RZWA4=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XXEkAsuLXjZURFxa/c/MOPQ27DBEQzDP1e7G/fwxN4kd8oYJd/FoaE15zYgdgQQyP
	 vXx5BOh0mfx413eorWLOZgV4/rGfGECZKQ9yl8VwzY38TJuVPc0PmMYOyTlJXgqpyu
	 hG844tcMlHRPJZxIYdqDJIre2Qlv0ycHFmkvmVgawKEqM5pqAw6jPEJ1q4MELE+Ep7
	 z1zwK45hmmIoV33GQnd+ROIY98GZiEUeJGdWVgl6elWRxraFlnK1v1Q5LFX+gifMg9
	 SdHFuCeYWuDUKYdEb9CiIKdB8rF04Cffmhg0so7lJkAVEfPqmUipAiuXqZs0ZZryU5
	 A2QD+joCiM4Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6528B60A40;
	Fri,  9 May 2025 10:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6387815A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 10:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48D0D835C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 10:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JF3c9sKWe_rk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 10:08:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 565D783658
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 565D783658
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 565D783658
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 10:08:19 +0000 (UTC)
X-CSE-ConnectionGUID: ToQ4ItkbSBKFgRZ07Efrxw==
X-CSE-MsgGUID: 0rdLLwJDScaB5AaQwSpWtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73989938"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73989938"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:08:18 -0700
X-CSE-ConnectionGUID: /cMExbSDQIGeQjrsdXFvAg==
X-CSE-MsgGUID: UEe8gUR0TKSVceFNPkQ43Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="167508140"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:08:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 03:08:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 03:08:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 03:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WK60RC0cycP4bap7aQycNOiXbsrC9lonFGeQ9Dz1HDrEBXSnSn3Xb6s4UxdiRxpdKS2WEbT6P0VEchad6ftboSeENJaNdcEu0TjaCxq4lkkCaXP5N20WMOAf8DZHOzM95Tq0OZdrTw4NgzzrrrOdJoRfA7ke33BDuAYgyQGCt2I3H3cfwKaAY7T83eL+phYWHval15yHmrJ7AtXnmUBbzSIiJBhejUYQ4xqIN21Kg9yO5ouc2iCnP7D4LHKKQXYU+o01fTol3dI16cQIeeKMbSCgX0xdUy/TYD/teTq6DUxYTS25rNB2pr0NGLlLayJZu8Co3Wmn1SaUkF4z57mgWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEHpHBveKQbor0yb2D5KjzUfz0IRi+CuoQic1/RZWA4=;
 b=BY8J/zNsF+4LAkOISZpsB7lOwjkeTPFn7l+iEYT46MAbYRCf1dwLGjLnFIHlOGLXM35m5XnSt+Qi9NczzX7z97oXL394mMTZHVyGYMzS/RkbRxK/Bwa3TbPen2DX7yM4n5ejTXdenNQyH3A81dAYGBrBNIGm+B2/RADcOSfeCwt8LT0cvUqmudffMNSOpFwtvoiQk4fUmKQEyFhVt84bZjX83/qN735p5Z0hc/0yha7NE7M90QrNYT0i/AJn+Sf8lPnejougP+r4PSGDWFRX26n5IxisXx5Nxdbu9AgDABu3VjMEt/4fjGo8bOLtAwMG6072UYeH1p8pVL9QvTWv1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 SA0PR11MB4671.namprd11.prod.outlook.com (2603:10b6:806:9f::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.23; Fri, 9 May 2025 10:08:01 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Fri, 9 May 2025
 10:08:01 +0000
Date: Fri, 9 May 2025 12:07:50 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <przemyslaw.kitszel@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <netdev@vger.kernel.org>, <kernel-team@cloudflare.com>
Message-ID: <aB3T9gmOo37GWNKI@localhost.localdomain>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
 <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
 <aBsTO4_LZoNniFS5@localhost.localdomain>
 <cf46f385-0e85-4b71-baad-3b88b1d49376@cloudflare.com>
 <aBy_vW9AixQ4nREM@localhost.localdomain>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aBy_vW9AixQ4nREM@localhost.localdomain>
X-ClientProxiedBy: VIZP296CA0016.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:2a8::8) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|SA0PR11MB4671:EE_
X-MS-Office365-Filtering-Correlation-Id: 89161509-f67e-49da-f0d7-08dd8ee16190
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3HeP/XEY4SJ6lBejVAqNdrzC2EMe8N0BwX0cO2NcItb9015JPU50tdgrt7V9?=
 =?us-ascii?Q?6Mur6+pX7Fa9Wygdbn+2LH+7Bwz1EMjQGZoQPys6GVcp07rk2nNwKGHLrgPh?=
 =?us-ascii?Q?TeTaCt2Reyl7l7d5eirBHSuB1g9zw0TRn+CfZ0wAqDRVY9keQ6UIs/jV6A9V?=
 =?us-ascii?Q?bjenrtWcZKGckKiH7cuiRZZE6Gwcm3fPtmYwH7kOY8hC/1XjbHjQEMApZIjG?=
 =?us-ascii?Q?YI/lJ07UmaZ/zioURZ+efXFq/SMSOTD3VpRC4Yh4FKV0x//NiYyH3LoaK9KM?=
 =?us-ascii?Q?xGrOVRwIgaNdwc0QjtHjaYO9FV6EX/lsvtp/zd949N3Z9ttQQkAI1+XSX322?=
 =?us-ascii?Q?hyD9Iz2yq6sUOHQQWkd0llYBc8ZqCCDkWxDgxK478UTUVFkNuW/drdhT9npb?=
 =?us-ascii?Q?NM/hQPtaIu2M9wgb6eoIgD7IbYPAQ3350DxlOY2eNfmD/9uGXVGdS3MEbduS?=
 =?us-ascii?Q?h2jyWrLhwDz9mF9TorrCnNqbcWX3enNdVSr/mYgiCnRs2rg2dzJJL9Ov+vQh?=
 =?us-ascii?Q?OPEd2hldYw+VW2nNzEO0l5YNByzL8mC0fRSGj7xy4T8NPG0YNxORLb/H/rzj?=
 =?us-ascii?Q?3FOP3E3kbxHnjR3j2xRjVd/uxZ6w8+B0aGJVlRqHFB7zAM3oyr6LwApHtukn?=
 =?us-ascii?Q?sCC3OCEvcx7LnW1FiTSUZS5nBzC2g4zNFu+XKdf7WLPmS6wb+Z4JAgsx9G92?=
 =?us-ascii?Q?nJiBuhIFtYJWXgWdal9NKZQIvF1/+bvJV1NV6rmre7L0NAT72LannnxWsqNq?=
 =?us-ascii?Q?uwd1h8SzCfsZkaT5vzaaW6N+5T8mhAzjsoxrTp2G6lEhZUq9RE8XNmE/EV7D?=
 =?us-ascii?Q?44gBzFtATQfl7soPC1CUjl2NHcjBry8asIazw+52lvYUfHV4x56RTHdXlZdC?=
 =?us-ascii?Q?iKEgw9je68YXoIZ163q9Tx2//SyY/aKx8D0MVfr8vT91ChfO5IdH9+Z36fX4?=
 =?us-ascii?Q?+ydhJL1s7crhaOMqghusunfe5qkeVg8H6nKOeiNSpHFAkcKvTy7oi4aeQ06A?=
 =?us-ascii?Q?l+DSBxDYZ97yEgsFL95MnFQNhUhynMoRSMHsUIBB2y71SNiHxFDA/cyJTGV3?=
 =?us-ascii?Q?f5yTwe+fFiJmn/aJ9xLQv9pDyq7qqihhyUduV4p31j8HE1oP7a9Jv1ww9AoU?=
 =?us-ascii?Q?QJZUjasn8LxBMBLn0lLjjt5p4evpF8ywZuaPB1Yume7j2PKo+l1Qf1iIkY1O?=
 =?us-ascii?Q?82CMa0Mt+oFjGKxhqUbcxT7Zjt1FDPz8+FGaeKddhqiucq9dMLEAo/+CnqET?=
 =?us-ascii?Q?RiN4dDyxbmgoNZ9sh7T1Xw30gg7irveooEiPN22aXFtkw6ODIDRtXBSqAByg?=
 =?us-ascii?Q?I6qhSs7uranOMAK8b16nAVCZcqY+d8buXFC9mMlJFI5d2dF7jpLX67pQjYBs?=
 =?us-ascii?Q?uNR2MIhHaEl2pFrA8jfTMZbL/eLa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SBf4CTvYquw/A7/ujFU3vO0BXQ8WduFZTe5+RPreh+1Iz51h+E6DwZ8lK+pI?=
 =?us-ascii?Q?3EqF4AhjYxfI4QyeBBWOqT25mJhVAuu6/zQMEBrXhe+CXlPNpAR1e6te1DZX?=
 =?us-ascii?Q?BM8ivjpgDVR9XLhJR03ys8oa8LFdYluuaOsXRgx1H122P4yrj1M9UTDIZaXe?=
 =?us-ascii?Q?lyeiN2JQ9xrwawI1IzIPWGjaJuW1FgOWLBIBKv6JWQc7yvoqdgAS2DKN7z4j?=
 =?us-ascii?Q?ZVFlej6eTeUsigjOMkR0l1XZiZTVXNZeGWOKmBpp3zL5MFIgMA3uBqxjCdy5?=
 =?us-ascii?Q?66ppIYOzinhKlwpaWiVD9yopvvmq9WhT1mtRnjMlUmbOj7DPz0JCliVo+L86?=
 =?us-ascii?Q?5PtrFbGzg3bIK2+S27MzYndawjYab5QljZkp6+YcmMiuV2eJDFB25R1WPgTm?=
 =?us-ascii?Q?CbbEhf4VaBbVQcnqt3eUnzUz49lGSsCJto9XUA76LyG2E2QzRRYvEhmcPNjf?=
 =?us-ascii?Q?fYMoGLoqNL4EoASzdImXp5yvKAD31KyUOLB2iItKuQAeMZUvF079wbH4aFay?=
 =?us-ascii?Q?4eGoX7Id28CvrrV9tDV/glQq6QdqXUsQs2lm/5ZT90GQzCXWGKb1ElXhKOXx?=
 =?us-ascii?Q?gKSvy9pxEnDieJljIaYlWgrH+eSssSkKEaXhPTLJvc5emRUb5yIbnMshuz59?=
 =?us-ascii?Q?QZZ+pN0AuFRpj1uxaAGVU0lq6FAHPyDecFbdDT9qJ8YXobXbNNnW1JdZHE2b?=
 =?us-ascii?Q?rlviXxJuo947RAXYzzs5X/7e8djETn16wA91E34jksH7HSxH6KUrlrY0EjBY?=
 =?us-ascii?Q?7sZhoZOnl0Xh26aHmndNBpy0/QAxTJRihjTTehLc75HdmsgcGAacCLJ6dBKf?=
 =?us-ascii?Q?fVrC2WQbMYdsRmzAAW4GSPxc7nqHh4KKTQT1vPU/SrXCSIiYk1vWA7GtkU4o?=
 =?us-ascii?Q?FFOLlhe+hWd2OQ0MKCrO/L+ADfr+IpRfkWY2w9E+F4pjZZ+N+47Io3C8HKxb?=
 =?us-ascii?Q?etAFjeME26h15KPyuUy0+peWjgoC4SEavvbEhi2dJ98G5nXMdEiUZNV04Y9g?=
 =?us-ascii?Q?1FoO6Hl8B2ZDnSapShQe9qS+qt/onJqKFB1O8hui4ihUwYaYSxxN7hz6hMkV?=
 =?us-ascii?Q?ZPcI+ZeA1I91z8xvitkOTh6hV87qkKCQGRoCheRGkNsUHIIl0MpQoaGZwTuh?=
 =?us-ascii?Q?z9V9guNUV1uds0TlWaaVi1ylgYotVd/Sd5r1NczXtqJBIhJ7kB9x0YrfVuKG?=
 =?us-ascii?Q?+nOqnLhN1V6e8qmM6yjhs8WRxbKsFgLsYdxTIIzwBPIp1Qqb4yptCDmt2AJ5?=
 =?us-ascii?Q?9Yt6Rqld21qoxRvKqDKslKeSMk4GXPDfwIx0NK/5YKfQ73CbnzuKv87st3w+?=
 =?us-ascii?Q?t3TkeIX2JWZH/tMtvsljJ5+kuFDL2w/lrHvEzMx6LRYkS5MLA6hDO/FmHOMp?=
 =?us-ascii?Q?dRTvk6GMhxm4gGswLZcb3JggOlZuUNfW50wa3j37S0TuBRJvdfapBfUv5o8/?=
 =?us-ascii?Q?2s3vgsuCrlQlo8vnZVl2b4G5jq54KJLRMqy+p2CYWPo8pmxCoJInbbcW9i7n?=
 =?us-ascii?Q?qGIcozQhzs0r4dpDYfrWDq3ztMoGZF4pfg1nOni9qMcKPg7+Lb2TpUHnyBD9?=
 =?us-ascii?Q?QEONPq54j5bQyKNTN1deeGwl5WNhhgOIIvBIHmByhxY6TU6KwpyMSERxvnO1?=
 =?us-ascii?Q?zA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89161509-f67e-49da-f0d7-08dd8ee16190
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 10:08:01.3947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jAB1oC7zGTJKXfON8RZBFMbhVvW5k3zcpoxDMkyEbzQTt/Qmk6aSm9o/VhvQX7jvgyZHkoOQRYMhS+ZKoeBsKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746785299; x=1778321299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xFZmVc6Uu7nSeXfW6g7a9P3PFCoZ1Lxu0F45vpZBJKE=;
 b=UOzZWCLmujyFNS5uF/yvKB+uu0jHtW9PdEki4Kjra4k8vE3xKklXhGlq
 Uqrnlno2qUMaH8Ww7Gy4ay9hJDxtS2EiLhGJxAdrxUgwxHyCaX66gq/75
 XgWSthJeBEMIXMQ7EVofmeqEFj58fvBoAiXAVhNtWgXVKutCyGuOoDYLF
 +geqfuwVXId+CwLbhA+RfE3d0BuvjLKnp63aHbf94BQu1DFv9tFJttjln
 ifJcBLg+ovWVjwaVxC6xxMeztN//1Q25t6A70sIoyV+xrm8pf+993rilE
 7oNQClt1cEbL8ev5bD0k11giBC0GHdDVoLSGBetWQeSl3mGTXhp3KnPl2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UOzZWCLm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix XDP loading on
 machines with many CPUs
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

On Thu, May 08, 2025 at 04:29:17PM +0200, Michal Kubiak wrote:

[...]

> > 
> > Thanks for your patience while we worked through the testing differences
> > here today. Hope this helps and let me know if you have more questions.
> > 
> > 
> > Jesse
> > 
> 
> Thanks again for reporting this bug, as it seems to have exposed a serious flaw
> in the v1 of my fix.
> As a next step, I will send the v2 of the series directly to IWL, where
> (in the patch #3) I will extend the algorithm for removing VSI nodes (to remove
> all nodes related to a given VSI). This seems to help in my local testing.
> 
> Thanks,
> Michal
>

Hi Jesse,

I have just sent the v2 of the series which seems to pass my tests.
If you have the opportunity, please verify that it also works in your
environment.

The link: https://lore.kernel.org/netdev/20250509094233.197245-1-michal.kubiak@intel.com/T/#me89fd25db3e9c9101f4030af2c7ce8662686f3a1

Thanks,
Michal
