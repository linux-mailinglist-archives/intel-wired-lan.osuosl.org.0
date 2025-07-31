Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB0B17460
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 17:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6186B41DE9;
	Thu, 31 Jul 2025 15:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NidH0wn1adcA; Thu, 31 Jul 2025 15:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D584F41D91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753977429;
	bh=DEKp2CxCj0aPvcb6nKLGVpdqE5MP43fRCmX38Q0nHQA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fz9ZDN/24hQhlX82AFOvqVrlDNfj2MaaQjJPu5f9uevCKoTpT9R99wpg+7HpQU1dd
	 YERHesO6yEiwYRaMbzyN/mNNvCsKxQRWnhAT4wIzmSQBgaUkaN+BHfKlK5MhAg9Ct0
	 jxQUzkOwVoqH0KsNMliR1LPIrgJxHg5WchBDVeorKitp/+4N86cvyirqiNsibiYxUL
	 XU5kb5IBcpY8nQZ0svKGnBDPUkpCW/3IEL+HF+OmdQVeXurZprvUymL4gP/F3sOoUx
	 SUJ7b6occs1q22gydvuCDpWXqUmhX8+JmwPVI5UypjQ5Uaq6lifdZhOq2QqdWZlFpm
	 JABmLPl6RxILA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D584F41D91;
	Thu, 31 Jul 2025 15:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C176168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 15:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 290D5846D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 15:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tw0Q_5EVdjox for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 15:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 66340846DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66340846DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 66340846DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 15:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: b/nwPiQBSB+BKnudIlDAuw==
X-CSE-MsgGUID: 0/nf34shQqaFH/aZ5VAh2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55374894"
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; d="scan'208";a="55374894"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 08:57:01 -0700
X-CSE-ConnectionGUID: 1nIIBKn4RRKgVix4lfbboQ==
X-CSE-MsgGUID: s5m5kac0Tr6eZwoPu9/qpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; d="scan'208";a="163013312"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 08:57:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 08:57:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 08:57:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.60)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 31 Jul 2025 08:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b3BdcbN3X3/60BD8LhvjDAkW1CR1ANLfwkCJacask+9QdSoak+32j01k41QvU8zFnUqgVoobi1D723EEwt2XJJ6s0rwcL5ETrTsPaiol+blpi9qQh+Yun4tLeQP3t5BDYu6F128X5t2Fk7kJ3RhAoRcsEgUhp2bvi33WWHpDdWtbHdV9EMTa2JbWuDqe+NrNEz1n53DJ/UZlvFmxOw6U8TfVRsVA9SEvwEHecNTr0xtI5PHEDQ1hZRYXUF66519Bwyez2QHBlh31GhV6MCfDTJUQejfdnn28/UMD+bNAWawdf4t/yFbUiqq0m1YqzQ88uNhrWss0IzfXfB85CszAEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DEKp2CxCj0aPvcb6nKLGVpdqE5MP43fRCmX38Q0nHQA=;
 b=KoffTteWzNTMFIrhn7Pyk1N5ejyTTZ2vkqowewjGDv7tbtq12hSyVZuwevBRIqQZ1lG6TpzHAi1nzjdzjXDNnBu0nw9J6B9tOFcTzrEVjSOzSrsY+Ecbsn0FWPgf7WwK9L3fe3M8VjyiZcmmwy0ery1v6qTNThpsehFRxpqTVVanGjjTvEOVYjEnZgT5ohbqjfcd0VH76/KtWnWPbyKyDDWrDEgusoIhGtYH7KG8zfkPdthWjRgJntGlnh0xmGzjJ/xs3e3yE5hT2IdUa+fkEZLogBfU2f+EwywrCVnJkKYZkN2rAnIUHpJNaXS1Lnsku8weaE3RF0Mh/12An7izuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 by PH0PR11MB4919.namprd11.prod.outlook.com (2603:10b6:510:34::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.12; Thu, 31 Jul
 2025 15:56:57 +0000
Received: from LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f]) by LV3PR11MB8673.namprd11.prod.outlook.com
 ([fe80::c098:1901:a40c:505f%4]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 15:56:57 +0000
Date: Thu, 31 Jul 2025 17:56:46 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>
Message-ID: <aIuSPt5BGOM-d9Kd@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
 <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
X-ClientProxiedBy: DB9PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::10) To LV3PR11MB8673.namprd11.prod.outlook.com
 (2603:10b6:408:21c::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8673:EE_|PH0PR11MB4919:EE_
X-MS-Office365-Filtering-Correlation-Id: f3f6b146-9c6d-456c-d583-08ddd04ae0cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rwq58GkdTMankncKtTRbiHFhJDIfZCU02CDzpmFRtx8efUfIz4IrcwEudvwS?=
 =?us-ascii?Q?OpjyWY4YnPNCUZdoYCqN4FnL6Fzek4gND7TAPNdHXdthq4Avgcb6ZhiHVjy6?=
 =?us-ascii?Q?Zs46bst09LInwsVTu8tTCVLLR2UJssmS90wjfBMUqxTDZg1Nx37kR5h9ceeO?=
 =?us-ascii?Q?olh5B7+949rtEcL2CNlyusQERMq92HyzJFtpJrPd3MeRTZ0FqmOl/M2TAaty?=
 =?us-ascii?Q?1fDx8ddAPnd63Ex9KLJYy3fNafoiWjQuvdxijDrj1IKAGh8fm4ipVkmOsjG6?=
 =?us-ascii?Q?IIgk9Ht64cSWIoOjq+KY8mLJ4KrTjkM/dHSrFMSGeEkVKgdE7K5SgAx+EXnv?=
 =?us-ascii?Q?2h3pD5cA9QQyAHcOrLvDEaYExmxP8lQLEbdy7rkOD/30ME4QqLkTVVYIWZpk?=
 =?us-ascii?Q?5oIvP3PShS3UfLmWQnX+uqg4EBNYGlPria+KJDY/yqN8+eEeDw4pJPNzpFey?=
 =?us-ascii?Q?c3KlHfjcV8HDL4XjR2TmBeK1dVKEP58lPE9lqQyRq8qPzaGGM3a4t0H66bEv?=
 =?us-ascii?Q?xx9JNffSi71lyT/ynUCAxhlveiyOapNmPKvylb/4Ck0OBouA3H0Kq2BORa54?=
 =?us-ascii?Q?QYZu86eGSxi40oAAAArwMrLGBYKjVyd4hvlx+v9tuBbDwhjuS1qnfeRZUo2o?=
 =?us-ascii?Q?yz2Sw/UFVnP2i6AlCs4YqQqxaKBp587YUa47Ix50EEbSuyLjzjfyfISXYoyn?=
 =?us-ascii?Q?zYlEqu+JEFwdjQH+Bu5EMssVr+psBqLcEpa6ACAiinaSNOUfQm7sqijAz057?=
 =?us-ascii?Q?CgQf5UVeYeUAzlCfxrqK+xDwEivmr+EmIPTZseSvtvX8WuIZ0Z2RKvIDehr7?=
 =?us-ascii?Q?oVAeCOcDGcFR7dF0PFzsXG52i+5cLoqg5k1k5mJLyTZBeHXbt+QRjw93lacl?=
 =?us-ascii?Q?Q2TV1zmETxqUSv4AtNPMc2BkuPOumlxKlh9To2Tn6P2hdTTVZd+g2AFek+Na?=
 =?us-ascii?Q?uwJwGnkmQjnbVZAQcBlbxPLe3dLntuPWvYExB1PolazHLk3Nhs49dzCKz2pQ?=
 =?us-ascii?Q?FQVl3MDiL/oyBH1xvuQ6y+UGGVCFLaEY3QuYdqZJlojUEKfQ1OERVQ2SWfM2?=
 =?us-ascii?Q?HMOzm4mlKiVnjvYnmmXrD8y0/Qs3h99nutvc92WzAVDVSOtkbIrf5EcSF7Mt?=
 =?us-ascii?Q?3OBN/19YCwmrorMGey8b1ZIUKR6ejSzY8wkPPGMaUV705S0VefZODfTFpPjD?=
 =?us-ascii?Q?9MFHMPmgTxnXcntjxU3SzctB4YQeRswaFo2Z2vE4q9nJiMsmthjvHWOLL2BZ?=
 =?us-ascii?Q?vxKmYN8y9jr4U3Y1Pkm0va6ZpmlrRD3P8BD8/DVvzXPHb4IEkgyCFkxcBD8/?=
 =?us-ascii?Q?LJi1CqYNW8QUrKdCH85wD0hWeCy5NWJhBJClwWmS9pJhI1JsvsLSkJP8mUaW?=
 =?us-ascii?Q?C66Dzt0NaaMMQ4+8hDxhtsJDeFCVDs4+8kkS7Pb9iMbK539b/4XxyPQ4MjXu?=
 =?us-ascii?Q?lIMxwyRyr1g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8673.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GMIEBRtHTzsuhB1yIrUVoai3hx8R1bzSkQ8Cjq/oiMIMIZCVf0tYD336adVk?=
 =?us-ascii?Q?vEi3g2Pb8QBaxlTEtxMVpIvujuzT7+IEPE7d842M84Xsw1E2LzzuDwtPxDis?=
 =?us-ascii?Q?CtyzC0yt0MBpu3M0c0pX1Jk3LrWGEd9+KqtsgoNe2Ee5pC4vte3GJAwJca+3?=
 =?us-ascii?Q?vtkIVE5FfTGlH29dIbTQCALPRoOO8ujqEcw+kYH2imfHTxR7KRWdRO/8nEX9?=
 =?us-ascii?Q?UbwSTvx4j7rPYCJpEZHEbNU5DIq8D6XBsf/FAqVjMDCMYv65KFp7Wv4hkkb4?=
 =?us-ascii?Q?AhkzKSQuaA6+/590QPlFwmlwg7ge9d6XIHlgM84bqSADHsTuu6TdawB6XdRJ?=
 =?us-ascii?Q?7G8F6UzKt3p3f+QnLoMiE1O2NTi45uuYAyG5CIE9HeADrQja2y6RGBrcQFkU?=
 =?us-ascii?Q?pp7OTGbi/6VhOeUHWbatZZiesQlqxXwzbU3yf03H/xHfImEqJeqneYlrlC4N?=
 =?us-ascii?Q?IihsX1J76xo+PDjSxnuODLcXS1iSCkk5+BahRNZUDR5sbRV2OIj6NEWjBG2Z?=
 =?us-ascii?Q?FLKGq32bmCFhjjSpmoraJK7IyKKIJ1FcJLd9PrFQKMcjW8HvhohvuzCuUyOC?=
 =?us-ascii?Q?kLytizA9UV9O/37Qzo1ScENvoV888bE3qjU4BJSUtdTuVwzlG8CbxHzIDnNw?=
 =?us-ascii?Q?asBoi4h2frJ1ke/rB6yIFmK4I7znb1XYq50up2xlkCV9rTxRioy8qTQXqkrT?=
 =?us-ascii?Q?GTV8RbZ5a0vdqUC5Op6GQ4wTDI8pZBNH7ktpadO1PeeeLmbHowrZoKEXYqBs?=
 =?us-ascii?Q?ME8Mn+rb2MbPRvhrAK065fJ9PhH7DRqCp4diXMo5+xobmb1UmjqCu+fGUHQC?=
 =?us-ascii?Q?enO27SF3z5ROD3ky8ixwHhJPWfxa+SwAIT/CvXe8GHnBX+2z1im0WT8Bt0U/?=
 =?us-ascii?Q?OrBE7/2xWycgEwSL7X//pmjeJr1DihdVIbVvDEvHhYcWuKNeYOwrr3y1tzwS?=
 =?us-ascii?Q?g3OwUsVeLsVc7BFSSDXx02rGogz5TCq1QTllkUKfAAhrzHOMFH3Z8ojXQsX0?=
 =?us-ascii?Q?b+J3GL1SWS6pMA/8fQvNChUzqh5i5x9mIihmtX5b5NG0dS1JAzlLnwMVmQLr?=
 =?us-ascii?Q?8aY6chR0FSSJSyuX1npBJnIACbn0tobT1SP60ipIMEOk54vhw52rRgq4boaZ?=
 =?us-ascii?Q?pXn2mjI8/oLMKiVtPuPcN5K6Aby5yden8Qjr3APm7RhkTdMVodQ283osFXK9?=
 =?us-ascii?Q?UieHdZPeuX3Y3qwyXvOCJ7Nz1qwoK7QLYNZwLJ2V3YfzZfI08wHmZJZUQgYm?=
 =?us-ascii?Q?D+tPBck6byq6L9fB731QEK1lxvF/wv2S8F5zcSzKhuFsbKn7sSj6i80ruPcY?=
 =?us-ascii?Q?pLZIGTjXg9+tqBIiWDkLnBipvUdah9e+jBYghLQbguAe5pKGicF6K2yevFWW?=
 =?us-ascii?Q?4slT166mQ5634AHvRK9NvSgBSEVws2gM7tJjgIMZgnzXc65UVBJWXc1Ei+m7?=
 =?us-ascii?Q?coTcQhL/3hXBwmb2PjwyungyOjGjxx0E5v1akFYaezdsh8J+U7Tf4hwze44K?=
 =?us-ascii?Q?JUjVFXzPFiFZxAiDxbHJSO0NQcy+ktRQzodsbGd0TMs8YrwQE6zhJ8OcPHX6?=
 =?us-ascii?Q?mliP4Y5TBml7LjhefVmWBvya9XZyMR8Vw3GTLUWyrVO+rbZoFUq+p69aths8?=
 =?us-ascii?Q?Jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f6b146-9c6d-456c-d583-08ddd04ae0cf
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8673.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 15:56:57.6373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Nczxk0KX0Xon9wPkETCowF2EyZvO8gie4mid07+a4aBqIBneR7PTByPBT4DYZjlWnw4Ml5rT9CIubpKwEqa4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753977427; x=1785513427;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2/RMVcYOOxeOoRrLFNnz2hhM/cZF/xsK/aVjUHxih0Y=;
 b=AzqxMUf1uNndRFA4jKjy/88FtRnHr6AKkbeIwCo26zUWcHrF0zD0D7lb
 olGlSbFs121IwLy6hW/j6UwtlyrSSAEw9K2XVDS4CNYXTnXKaKZGh9x1C
 mR02dYRk3q9LoEckmYuzMHdQB7zrCxcEMb7g/OItZTR5VRgzF3cRL3cPS
 kvHpKjUHP/ozkptQNWgZxXwG5yEjNJEqR71rbrfetmiFcZOB71xSH3x/F
 zAZWIZbEOxgyl14IXMw+cgACOk1b3BJaCwkhLOt5Hrwo5OE/tCw3y5IAe
 PjK0DkF69Po3J2Tj9EXIEqw+y3aEPBHwQ1Qx4SHfmDExR1leg67bewLBM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AzqxMUf1
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

On Mon, Jul 07, 2025 at 03:48:36PM -0700, Jacob Keller wrote:
> 
> 
> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> > @@ -1100,14 +994,10 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> >  	for (i = 0; i < post_xdp_frags; i++) {
> >  		buf = &rx_ring->rx_buf[idx];
> >  
> > -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> > -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > +		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> >  			*xdp_xmit |= verdict;
> > -		} else if (verdict & ICE_XDP_CONSUMED) {
> > +		else if (verdict & ICE_XDP_CONSUMED)
> >  			buf->pagecnt_bias++;
> 
> Why do we still keep pagecnt_bias++ here?

My mistake. You're right - as I checked, we never use pagecnt_bias after
applying this patch.
I will remove pagecnt_bias completely in v2.

Thanks,
Michal

