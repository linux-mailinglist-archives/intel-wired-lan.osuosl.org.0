Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAD4AAFD04
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 16:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5758B4002C;
	Thu,  8 May 2025 14:29:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwVP5u4LdJ_2; Thu,  8 May 2025 14:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60F1840547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746714589;
	bh=XoO4Y4FuQGckd47lvnMrlmYtOWZoDayqYKVa6tpHAjA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ISDzzlBFUv97iFqBDx4ZJSexPEU6zlkNHzQh4013IewZMirdJFMXHW0hvIqDVDjqD
	 uJgB5xdgih3O2CzZz6wkuKcriEi1iuHtzbF9EzOnKpCLVw0PQ5nIvgMI8YX5N67//v
	 FdFnLX0oajEQW4cLFRR2hKledYpzppPUs/C5sD7qZPtYmkfq77SNGhYUho7+n+HSev
	 SEWeqbTvJEPcVKglMu4prRjPwajiN7nmJzrzATYu2gUx+Cho9Iyeu+1x1adH+vcVKe
	 fjiycLiAxcgWw4viPGjPi5XUbf22AcDXNonmxgH3nZ/PhzaZF0XPccYomvPGI37JEE
	 ZdaiAsSS+sYoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60F1840547;
	Thu,  8 May 2025 14:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0FAB439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2374811A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4qeqbe-28Pt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 14:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CE01F811DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE01F811DA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE01F811DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:29:46 +0000 (UTC)
X-CSE-ConnectionGUID: 0LqE1KavRsSBnF72Z3GkCw==
X-CSE-MsgGUID: dnBzuYPmRDOnJP5MQ3jp1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52310492"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="52310492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:29:38 -0700
X-CSE-ConnectionGUID: BNjf6C3RTzqsxAX2H7sUFA==
X-CSE-MsgGUID: 66sCKC4LTi2x3B2R8q8rOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136705057"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:29:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 07:29:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 07:29:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 07:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uAUcFslG/ga0xJyM5BK0zmFpHEcomGBb6tVgGkOPdZlbF6j8RKBi3gZo6nn60p52VGpRpCzPdEWdV0glndmEnQwvkjPsQFTxb7L5wwHHep9U+eEPtqaPw+Wu33f7TfdHp5QSm9vq5u+lodpsuL8QwK6Cd7UIv0/u2SDhR77L064zihmHU1oNiTBxvTuB9UqNh2xXyCd3tpgd58W+PqqvxKUHWVUXeFKrDnbWq8nh7F3pT63+URx/Kri2H69CRPoOf1Z8oYc8I90sr0tApsuaIztKz0c4GVezqPZapnQ+w9/wNhf5qCPRcxUrCC/wznMWpZCijjwJLs7ZcW7KIBdpXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XoO4Y4FuQGckd47lvnMrlmYtOWZoDayqYKVa6tpHAjA=;
 b=AkoNs/1tkaeSpNfkCnrko97GXJ7fS9t1d1jJb7Bnhzw1QLxCvfIUy9j5xaSlKDgdLMItGHxfGB9B/B00GXrD32fORBi/cIdixQZrv1wy7m5gfOwZ8WECs1ELhdHRlr0v4rU+qa0XEVg38JfNsVt4ojtg1M0uBFd97352zhdmUKC3Ifd3O52g6IkyOhq3ec87M1UTkLoDOJ0TjAI9iVVjikUoobV5yPF9blZ+US7wuPU4Ix6j978BrJpJQbiJRDn/trmWDJ2Qfp/IilygAiBXb4kdIasMW59I1KphLl7xa8AD0SSKu6qDszoOEsAuoUWl5cKGf3h5+DibVfF5sgSWVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.26; Thu, 8 May 2025 14:29:29 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Thu, 8 May 2025
 14:29:29 +0000
Date: Thu, 8 May 2025 16:29:17 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <przemyslaw.kitszel@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <netdev@vger.kernel.org>, <kernel-team@cloudflare.com>
Message-ID: <aBy_vW9AixQ4nREM@localhost.localdomain>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
 <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
 <aBsTO4_LZoNniFS5@localhost.localdomain>
 <cf46f385-0e85-4b71-baad-3b88b1d49376@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cf46f385-0e85-4b71-baad-3b88b1d49376@cloudflare.com>
X-ClientProxiedBy: VI1PR0102CA0107.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::48) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|SA0PR11MB4718:EE_
X-MS-Office365-Filtering-Correlation-Id: 17ffd46a-1eca-41ae-d651-08dd8e3cbe13
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9/G83XSmhxB2UiPoWrng/ehcgRaUMEkg26+hcJmt0OkamyFY+iUviCsENGAD?=
 =?us-ascii?Q?NsAK5N9X6SzBPPtc25xIMj1qkdMnphExej39gUO1+k2bn8eGFyPtiihpx0Ps?=
 =?us-ascii?Q?Zca4BzY33aF9FXMAKiIvNPw5n7678P6NUU4jAt4dPrbcfJXh0sGISUfQAekJ?=
 =?us-ascii?Q?zavQsE0KD3GkMJbIW0mYNA/8ZeWJBOP2tZd0vxSujyZ+aoB9h87zeJZDPni/?=
 =?us-ascii?Q?8qThSqTX4hcaYT7eE9ZBR+hIRHLZ0FMu45Ro0GsKjYQNB5I3jwBRwQcIVPhd?=
 =?us-ascii?Q?E2c1y+xDDTGZ+zX856EEvBie2GgRRZ4wF4rJw0w1UG1Oo5BamVpS96dtkFno?=
 =?us-ascii?Q?w14xw5lNvinqcfqI9KKHwZHoy6babYlg1jS1FybX4SwYD3idupbxwAFWV07C?=
 =?us-ascii?Q?IxUXDYxnZJY2mn0yrU7Bdq0ggynlsPNyy6hW0TEGNaAFiP52JSI3G3n/THoN?=
 =?us-ascii?Q?958xxbXUjRiZ3XH8WE5HrG2FmKqJZCEzQeT6T3rfFaR7PO2w4XPO5ahDbUp+?=
 =?us-ascii?Q?OIoUC0PdTY9PcYUTPhzA1C7f0vW9iK8YxZKYcGEFbibBrqI5meAXxDvsrecA?=
 =?us-ascii?Q?nxkqhFz0M2CTYvxfI0T50vaICsC8lnD9VS6XKT1mFL7UVSVnugP9ZnntJ0nr?=
 =?us-ascii?Q?m9JzUtxIR8n7T063uYyYwod+u7hxFZPTqM7kajmp5jCT17naVVFrbfCBPd88?=
 =?us-ascii?Q?Ey7Te5afq8WKmcjl5BmOm5HBDUirWV7Y8L0OJoqO6bxbwjGdWA/HFnmFGOQx?=
 =?us-ascii?Q?+lMk0/OzcutGhESAn1SAto1p2g81KkU/IHJB6Qt0YZUzpxAKIQWHilveYjb7?=
 =?us-ascii?Q?qWa8J0R/XNEC1h5HvBhd8HX2IoP4DsY7f38vWBbcA+8NpWa9hGtQYHeaUtn2?=
 =?us-ascii?Q?/IhhRkhNJwuv2Haa5PinAuNu+c+Fe3Xz69fMVB5XJZCA+6cKbRFcNq+ItVEe?=
 =?us-ascii?Q?6jQ2M+c7wDYcZ40TTI/zysuG63Bl0WyudK+ve12m98RwZO0YzfoBRivvMqjF?=
 =?us-ascii?Q?lexEwi4mD7/YByOPkdfp5x8X+T8BF4fa24NZ6/upVoc9irHZ0ny9b+BhRzXQ?=
 =?us-ascii?Q?LxQNsz3y/YdSK9817CHGQpC2ypaN5AImmiRUcALLT52G+0isDOBQBh53Sisl?=
 =?us-ascii?Q?SvFAgnyqo/G/3qyJH2j4zuavzR2zG9qr6lXMjvwOrR4t3rVi/KrCcBBzLwZ7?=
 =?us-ascii?Q?B7Fcv4KTlvIlVYNLj7dpfYgFfdxAnZHYSMpS+Ri3R5jVKlbZEo5kJDLe916n?=
 =?us-ascii?Q?Y3Y7TU/n7sxK4TYbZwUKNVPgycn5XzImfPrgRNx9kDU5uX1re1WZ0cxSXjO1?=
 =?us-ascii?Q?1uqYxzgW7jJUFFNp3J5ToixRh78nFM+WvvpgX+qoqh+NThKZduH0zqC06iqb?=
 =?us-ascii?Q?QK/lkFMcqTDUdSeWe5LFASBgLV6coUzx2489hvormnU+/XkUbg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CYni6N0Q52pMFB82gz1XAwjPzjyohi7lD/Av8Dcrrj4V9HP5d2+zLy5eCv3a?=
 =?us-ascii?Q?BhQUMKm0w3vx4hPYhOaV587nW8f6rvybEqc/RupjdG3QnEG7rERRmUMMZpp/?=
 =?us-ascii?Q?+B+uFphIDXhs3zM39AtBaOZoodkgAodH/uxR58pgDVsE+zaZF/K6Q3EYpvDm?=
 =?us-ascii?Q?cjaziP96Aep2oTJf/BBlWuJE/cBLZIIoNnAdqJcaWhs3EkBic7oS5O/AJ70k?=
 =?us-ascii?Q?XDgjrse33XHAHH8MrOkXL3R0qV7oGUtFDRUZ+AYZobT9vN/jZtEIsQPshmvF?=
 =?us-ascii?Q?TApWU2tchRtA0xueDBiR+xM5mQRSPSGAQX6SIENKqzYPSZgyOPDmD/i+L9xP?=
 =?us-ascii?Q?GHAXI6tHx31PShwkWJpcMuxuoIivxy+8G0Tkl4TFS/02OMFvMG7kobFh92Bl?=
 =?us-ascii?Q?9NA/oQ2T0Wjf/ucG3k5NVmjnK15vb06sNVpDeKJ3skh8kT/Dtx2yoLbFHMnw?=
 =?us-ascii?Q?dcJUSF2vfvzepVCn0192gJkFYtBgTJAMBgmBwLgYDDHsKoYStni+geblBAWK?=
 =?us-ascii?Q?Cgvls4Wx5vr4lBgSVu15bqnQ+KNRW4zqFra5Y0vN0aAZjY+rSk3VHq3oVQ5V?=
 =?us-ascii?Q?cbDLtM5oh0OzPVWv7R6VMB8B+/NFabQsBDha7gEcQ4nB8pS9Z3M2MEAEvRj1?=
 =?us-ascii?Q?/6HZkBe63DCJDiFjHD0g3sIQq3Yx9TGkdj7iNVcEbdx73qkmlqI+YPehjfvP?=
 =?us-ascii?Q?zBJEDtcs9KWrUGJeYvlmp2JbG5jkPRGKQAQinHGtaK9L2l6ixHknkCJ3y7Or?=
 =?us-ascii?Q?/rq5F6MAUOOV1dBl2JYMC8/qCRdhNbY2kTW9caCK02Iu1H4k02RXLllE52hV?=
 =?us-ascii?Q?VTwSTv43okDhT7fUnMGo+UyJi2d4/x/q6KxbaXAPQje6vTIwuoFoT7M0/kmH?=
 =?us-ascii?Q?y4YJRogAtvZNuK3HLzfelnuNurcbp3ma/DpjjRwbydDHVq8TIsKCZj7jgAvB?=
 =?us-ascii?Q?JPYXUh9AYN8hriH9uH2pm2WDSmrE6v6TD/QvK/mWJAGYNsXM4g8km4O5F1km?=
 =?us-ascii?Q?qLDn+RaD9zDTJS1F8sOunwPt7A4++f7m4uI451zNu47IljJz1uzs1UeqqQPN?=
 =?us-ascii?Q?PtdBqSXGkdNO5DKNTGYpE3iRH2QfZJRCGlH+RPRWaUq7RlBHoi38jAxn+BBp?=
 =?us-ascii?Q?PNcRU2EcjhjfIWYulpjIB+gNYCuNozCseX8lgMbUX28sq9vv/ULShymk0wFk?=
 =?us-ascii?Q?KmI/wWIP4C7PgKtIxqX75Eb2hhbdFl9eDo06c9PW+JM0TX2p86ZsKjuDcyFA?=
 =?us-ascii?Q?uZkfDFiXXAud3hNdDN3mGZZsHw7I/POdmjPHQ1+ugLgn1mBfIezQdLb9caJC?=
 =?us-ascii?Q?jycoi1sjeP+8U9L+PYoH3j0iK4xqTn/579TQe2raIOiklH2UScq5OFcGYjA+?=
 =?us-ascii?Q?mRm7SpKFkWt5OPKPvQJGggPSBPIALMVPsjbes81VHCj3rYvr9822UrRyFVoN?=
 =?us-ascii?Q?ge2ZMvC6QpIlSXLgVlO0NodPrPwRe0wuJuVQwyD7vjvBeDHaDnZptxGuFxrh?=
 =?us-ascii?Q?+xSoO7rJ6xtJlUQ9EjpSf6M1jYIrAO0mGbcehkPmQQF1Bad9aSEVlXjbbmlE?=
 =?us-ascii?Q?wg79y60uDHVA6hPDGhN3oHYkRnroB4ZLjRnfPhNUmeL/7gl4gx30RAeMOKC+?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17ffd46a-1eca-41ae-d651-08dd8e3cbe13
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 14:29:29.6533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V7G7VcTYGYsi9hGEP7mBOOWt1dVkyE3EUmahUEVXHHqCCvcgyhCMSNAwkkeko5/hUk9cijhApisu8K9HnELwNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746714587; x=1778250587;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/P5Dg0jRrFF/UB++D4rZKboGGJi6fKbh9uo0QzVxmCQ=;
 b=UGigSc5IK5MwhL+iND0hCFnMr3uL+6BlEOm3TxctjISChRcBFbmUo9LH
 oNO1Nvp00KFaTFRhI63wtZDyf8N/jpl6TpFfN20lts9n5GAgufelOwQl9
 dLcaZzydY30MXW92KMF1zTaXkSkQdv83dBIeqYptqzsl2T/cO2UKZRQjj
 RXp3fKwURMDEIdxGq0PmiZPS6LsZeO3ZZ5OlqSAF+Hz8hJ+otSr72hBUD
 Iy9yj7YeOd/ETqgCj9yZ7VI8KNa88MEoRnrbIR1pFzuSQ5GgfVxF4NZEU
 7AHOzRtOBWk+Vk6IxMznpd5lW/pHaDTpd5plLq8Jq65Ac1ufxo+wNapQX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UGigSc5I
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

On Wed, May 07, 2025 at 10:51:47PM -0700, Jesse Brandeburg wrote:
> On 5/7/25 1:00 AM, Michal Kubiak wrote:
> > On Tue, May 06, 2025 at 10:31:59PM -0700, Jesse Brandeburg wrote:
> > > On 4/22/25 8:36 AM, Michal Kubiak wrote:
> > > > Hi,
> > > > 
> > > > Some of our customers have reported a crash problem when trying to load
> > > > the XDP program on machines with a large number of CPU cores. After
> > > > extensive debugging, it became clear that the root cause of the problem
> > > > lies in the Tx scheduler implementation, which does not seem to be able
> > > > to handle the creation of a large number of Tx queues (even though this
> > > > number does not exceed the number of available queues reported by the
> > > > FW).
> > > > This series addresses this problem.
> > > 
> > > Hi Michal,
> > > 
> > > Unfortunately this version of the series seems to reintroduce the original
> > > problem error: -22.
> > Hi Jesse,
> > 
> > Thanks for testing and reporting!
> > 
> > I will take a look at the problem and try to reproduce it locally. I would also
> > have a few questions inline.
> > 
> > First, was your original problem not the failure with error: -5? Or did you have
> > both (-5 and -22), depending on the scenario/environment?
> > I am asking because it seems that these two errors occurred at different
> > initialization stages of the tx scheduler. Of course, the series
> > was intended to address both of these issues.
> 
> 
> We had a few issues to work through, I believe the original problem we had
> was -22 (just confirmed) with more than 320 CPUs.
> 

OK. In fact, there were a few problems in the Tx scheduler
implementation, and the error code was dependent on the queue number.
Just different part of the scheduler code was a bottleneck, and the
error could be returned from different functions.

> > > I double checked the patches, they looked like they were applied in our test
> > > version 2025.5.8 build which contained a 6.12.26 kernel with this series
> > > applied (all 3)
> > > 
> > > Our setup is saying max 252 combined queues, but running 384 CPUs by
> > > default, loads an XDP program, then reduces the number of queues using
> > > ethtool, to 192. After that we get the error -22 and link is down.
> > > 
> > To be honest, I did not test the scenario in which the number of queues is
> > reduced while the XDP program is running. This is the first thing I will check.
> 
> Cool, I hope it will help your repro, but see below.
> 

I can now confirm that this is the problematic scenario. I have successfully
reproduced it locally with both the draft and current versions of my series.
Also, if I reverse the order of the calls (change the queue number first,
and then load the XDP program), I do not have a problem.
The good news is that I seem to have already found the root cause of the problem
and have a draft fix that appears to work.

During debugging, I realized that the flow of rebuilding the Tx scheduler tree
in case of an `ethtool -L` call is different from adding XDP Tx queues
(when the program is loaded).
When the `ethtool -L` command is called, the VSI is rebuilt including
the Tx scheduler. This means that all the scheduler nodes associated with the VSI
are removed and added again.
The point of my series was to create a way to add additional "VSI support nodes"
(if needed) to handle the high number of Tx queues. Although I modified
the algorithm for adding nodes, I did not touch the function for removing them.
As a result, some extra "VSI support nodes" were still present in the tree when
the VSI was rebuilt, so there was no room to add those nodes again after
the VSI was restarted with a different queue number.

> > Can you please confirm that you did that step on both the current
> > and the draft version of the series?
> > It would also be interesting to check what happens if the queue number is reduced
> > before loading the XDP program.
> 
> We noticed we had a difference in the testing of draft and current. We have
> a patch against the kernel that was helping us work around this issue, which
> looked like this:
> 
> [...] 
> 
> The module parameter helped us limit the number of vectors, which allowed
> our machines to finish booting before your new patches were available.
> 
> The failure of the new patch was when this value was set to 252, and the
> "draft" patch also fails in this configuration (this is new info from today)
> 
> 
> > > The original version you had sent us was working fine when we tested it, so
> > > the problem seems to be between those two versions. I suppose it could be
> So the problem is also related to the inital number of queues the driver
> starts with. When we
> > > possible (but unlikely because I used git to apply the patches) that there
> > > was something wrong with the source code, but I sincerely doubt it as the
> > > patches had applied cleanly.
> The reason it worked fine was we tested "draft" (and now the new patches
> too) with the module parameter set to 384 queues (with 384 CPUs), or letting
> it default to 128 queues, both worked with the new and old series. 252 seems
> to be some magic failure causing number with both patches, we don't know
> why.
>

During my work on the series, I had a similar observation about some "magic"
limits that changed the behavior (e.g. the error code).
I think it is because increasing the queue count can cause a step change in
the capacity of the Tx scheduler tree.
For example, if the current VSI nodes in the tree are already full, adding just
one more Tx queue triggers the insertion of another "VSI support node" that can
handle 512 more Tx queues.
I guess for 384 queues you could have more (almost empty) VSI support nodes in
the tree which could handle more queues after calling `ethtool -L`. So in such
a case the problem of not freeing some nodes might be masked.

> 
> Thanks for your patience while we worked through the testing differences
> here today. Hope this helps and let me know if you have more questions.
> 
> 
> Jesse
> 

Thanks again for reporting this bug, as it seems to have exposed a serious flaw
in the v1 of my fix.
As a next step, I will send the v2 of the series directly to IWL, where
(in the patch #3) I will extend the algorithm for removing VSI nodes (to remove
all nodes related to a given VSI). This seems to help in my local testing.

Thanks,
Michal

