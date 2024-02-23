Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A605C861533
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 16:07:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C7D441CA8;
	Fri, 23 Feb 2024 15:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZC1eNdtjAK0Z; Fri, 23 Feb 2024 15:07:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DB2241C9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708700874;
	bh=x4fZtZAGvb6zmcDEtlKYFgqUQ/sxqbTOje1KsB0CXZ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NQTJTc/0aYMVht12PdDE0j3l9eAdCq074jtSAtPstZ9hRiFl3nmVJOCBebDZB2stq
	 mNvNpk3NtNXe7HVVRrIE7Feh54CwoVZTGloE0p1wGp8+rsNhWCXfwg+9eNfs5k1yFM
	 xEbQCfU6ggY28VehYnOMvcYQ/l/sHg/oyj5m/3GAmpqddurETFbHd7rhuiym/idEbP
	 63ft170yZBV86dwQ7zG7csCXjI0xPepOiVND/G1NDMtHD3BaotH8GZLj9jKXamBvLX
	 ggkc1pypieb1TrlZq9OVXrEiiOUAYKXKObM4NOoGfDTntNCL/3DgJCx3h2vpf8kQ27
	 A38NYYGj19nwQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DB2241C9F;
	Fri, 23 Feb 2024 15:07:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4DB1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 15:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75F834184D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 15:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4m92T3ulCBmt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 15:07:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0924C41EAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0924C41EAD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0924C41EAD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 15:07:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="2887624"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="2887624"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 07:03:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="10592207"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2024 07:03:27 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 07:03:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 07:03:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 23 Feb 2024 07:03:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 23 Feb 2024 07:03:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLHbJYW7aGVwLx9rZCjnj1Ter3qZAOASgOReZmblvXzIOcHdQ83UiAmmlLuTczJwmgF45fF50wudjsRdNmfHIEXvgjPhTbhYBuB51Ad8EXwIMmMeS01h5TxH2fAQfMxQlfRdC0EYTfsZVGC56LI2EloOnPxxK2wzNBF/6E+9vm93Pgh+/Xo5WwZ6eBvnzJf6oGXwoHJU/LdvW0Tpi3GoWzo7YrDBQo229Z1NnUCrPVVyrmkSQcZTejp4gLfNinn7dYAbHlO6Dw0ZPRU3qaSvVTCmMH7VXBQfkBGvMfGTC3Zj/6JQFzXRSofyKTkKhgUJ+jOXp/UpCKbyT740GRCq+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x4fZtZAGvb6zmcDEtlKYFgqUQ/sxqbTOje1KsB0CXZ8=;
 b=kPYZNYfDfJVKyjq5NMqTtFid5D4xRTa46JfxYQf6kIa/T8lNNE8RrFz+pt+pMgNI/My6q+qkIiXmTLNsLvTMG00G49FBwNw8LQKbkqDOoyWOFAtMYg6gmeR9A/1Tlpk4xiMTtyJ/uRkd4+/6VmMy9Ml1RWgvNqCL+akKHxPmrt/ZKva9iE6mXMsA53fcdrPU67yymeoB8JSOhZ14AINpA6kaK4m+8slYRNsTp+Dz5wB28ZzloJN9XvB4DNLzoASYLiqHWVdgM5PJMRdQB2ASB6aTTlHvEWvmv3ufJ5A8w1ra01RalxjBT8vzM2aFthRY5fJaMv0RQJEjq80cvVmW7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.10; Fri, 23 Feb 2024 15:03:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7339.009; Fri, 23 Feb 2024
 15:03:08 +0000
Date: Fri, 23 Feb 2024 16:03:02 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Zdizphq09RItsiaA@boxer>
References: <20240222145025.722515-1-maciej.fijalkowski@intel.com>
 <20240222145025.722515-3-maciej.fijalkowski@intel.com>
 <b50229cb-e3b0-44f8-9725-6592b74dfebf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b50229cb-e3b0-44f8-9725-6592b74dfebf@intel.com>
X-ClientProxiedBy: DUZP191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CO1PR11MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: be49e20a-76a4-4aea-2921-08dc34808b5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: biyB+/7sR4N3OmPrV7WA4ad4wktQHwJGNibZvxnxyY4IP4W83cBE/VvFeeaR9K7EitKE7RX1HmrDD3LmGccjGeF0Kjvrv41HCCa+89RE4EeVWQWRd74WUj5lysmNiGuaP351aJ4rXNuqlbv9Q7bLLHlQ2aWKjX0Py7GkP4NHH1+ZfCadXw8AN9LgyGY9TIuJrWytclDz1kDV2WoziH0p9z2GbFT4AUZMMo9+5HGHLOiEU3a9YYsuq+aHDr6w+KVP9yOBM6TuRPfE1XYtSYZ3QNAmESA6So29dsR2aCwt0EGSzRTVZ/sg1vqISLiVToyenAK/UCL7bEinieDFXNqorNuwCcB6x5VKLCmZeU+hNCXMi/tZRNaY2uM+qJ8VGrlUT3mFnUDalp34E/sVdFWNPa/bVJRJPxqtv1VpXL/byMzBe9kpzvsJAqNhn5QmhfCz3lEZBNwQYFRJfIdbIlkzdsiPWt3ObtgGvAb6fPnEWi4nnygezsumSTw8XdUc040wi2+gjOKL2wU3BrvRqICwlQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ux8s7akDyikwUhBGx2MIqbF0j3j8XmJw33joDvv0u99lGEBjnZocTiMcqYvQ?=
 =?us-ascii?Q?++1TmzD79JTFhlYKzDq3sGKyjCQEIetM0CHvrBgI1AY9akwUeEfJns5QG98D?=
 =?us-ascii?Q?WyThvAaj6L5xQeUQ4vz39U196nEmXMUOohsajIKKvzic/waj10sLN9YxLur2?=
 =?us-ascii?Q?jEiUZssLuDeUGuM2rrl0imwmWDq00RMCjTK+9UdNHUj0BK/qt8ydMhWTWe/i?=
 =?us-ascii?Q?k0pU7+xJ4NRu7AeCRRf1tRSEKGTXJ+KwUU3atqTA6s+vkFFbtZ5GD5cLT2To?=
 =?us-ascii?Q?zCB2T8FCkunSR8Yj6aRxAsXhQe3hL738Ffn4yaPH6pO5NlBQLupasl9urfzy?=
 =?us-ascii?Q?2JiUP1SSo2cieBRDSgvfVg8xFInTRyBNQCYY6v5+dpRTdVtfWUjBVNFsCIpr?=
 =?us-ascii?Q?n97/P0Sc5/vPXrmxpOfXkuQFarjgsuXG/KEoRB1PtewD5sf6HWrE7jTIbF89?=
 =?us-ascii?Q?3IJF6z09d5uH40/8Z9ns8lNlTLNmIXThR8fF0UdhYv3AZ4kKvSVxi2vz2Tnf?=
 =?us-ascii?Q?KjUwji+ObaveLEYjt8qNOLWq6VSTSlX9tFOo7aRCfQqCrRrQiuJh3Ct9BMlF?=
 =?us-ascii?Q?AcTmd3REEP5j/JmZmpago9O4kNpFJDrAwPrfpS02t4r34uAudd2dcmlMMRsB?=
 =?us-ascii?Q?2WRcK87ygOJ1C0By2PaKSyf6fM6gxFEeGyp23QlXztNIHmsxz6lnL+dFVe6k?=
 =?us-ascii?Q?cFgkGs2kMncKaDUGgOCxQxwiW0KvRByphbNxAmx+8d6oF6RAQDvIJgobqlj2?=
 =?us-ascii?Q?tK42GJ/95sFzeFC7QepjIPOXjeWlEbPqO7yqWYPTzZqNOILvJJGFu01QkeJO?=
 =?us-ascii?Q?XMvMRU38VZnazSa9hxbtS5xGluOp+/47Xeh/wCz9NMsRVyvxqCo5xQAYC6jU?=
 =?us-ascii?Q?uaFUTFsNWnSZdp1Vn/Uej7FqAze0H0ApyMN1KFx2jAQ+q9AQizESTCbNNX+3?=
 =?us-ascii?Q?p7aigAcqUaaaQv5R6n4zkYxWi9YTCbs1TFIWK11eHVUPUHHjxD4EC1+mgUeY?=
 =?us-ascii?Q?FFdUnXsamp5Kb6uSj1aIVIsXGNT3OWVz7RxqHqxmLpmADG9SxWtIRBk8W3pR?=
 =?us-ascii?Q?UnS1t2faqb3HaD4+pmoVUIMpsEq+9xjXcHQ/9HxQMUI5MkkdMfusOQdnjfo9?=
 =?us-ascii?Q?AgjG6knN6uSgS30pAclQlH9PWGNFqR2s7MJFMxu4AaiJMTimEjq209HNR5Wv?=
 =?us-ascii?Q?a1y4QjKpa2bA0fa49gjKEINbcf+Ujfg7pdphrukTdPwA7I1ndbCVnOXNcFs6?=
 =?us-ascii?Q?8oEKUx6cDspPtz+6/XrXpKb2+dCqBEwqGWJjzGVRXSQchm8k/LhWgJkSSPsr?=
 =?us-ascii?Q?Ns+2sz6oJkbs+eDvB3zqDr87GNKJ+0bZ4OopUGwxgfSAS7sDVr2GhMYHIYQH?=
 =?us-ascii?Q?Tnt2zpA8MUupDwtyZoM6ZHf6hA9cz/4nCL8kPD8tJ4qS53eEpjP9Opl2I8i3?=
 =?us-ascii?Q?MU1AoB+BgND/PClmjYPVJk0T14I/DPpGdWVsi3vIIbFap0iHMW2Cdc2rw78+?=
 =?us-ascii?Q?aoo6dQ1MyQlE5Vd8NgY/gXlkLH0ICmCml2+RJdZI3xMxbapkWunXhOKaCeIp?=
 =?us-ascii?Q?nKd0y+EjVFdQ233JtSaBctJyjXnVlpJzwLoSUhz40b6xEMdzghAtQ8mUVmIV?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be49e20a-76a4-4aea-2921-08dc34808b5a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 15:03:08.0261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 43lKxMDnyQeNQiEeFqFVy+wJUR1EHhfCYSQQK0ed/hq5JTxOshOBWOcYqO2ym261tcdRALhGBc2cpYBLADH9sZK3wLoz0DWtYxZ1KIeDeIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5188
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708700870; x=1740236870;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dvNIxq+9nJRQlYMWSqyFXj67GRLzWiG5YRwgf/B/ruY=;
 b=lqf3ylBrRcU8h0oW5yM8NhNAEYp1S8ppWOeon0SzKQZHqMTR20fjumrP
 KmeLADKpsFZ2Y3Ekgu7SncVplx6IBGF73IvhZSTNgqTzDh8OK8KH58dr2
 FW3PX2esPE8IhH4LUiWqfiREg+J6TiRUwn7tJpQhzXvsBp9uCQ8c/iJxA
 d5lT2Bka45nkk09BZVuUG7VqdHEqRAAtGD7d58OR4QKc+gQio8ydhOuev
 z/3iPJR3GAGU1EtGc4ZVPhADBcG1fsh3LT7v5iUfx7DzuWU1rYW9P0K1w
 /xDT7mTH0O/RBz2X5AJMMos2vqPXS7wMDwQ3frfHSJPoZdO82nevjzwW9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lqf3ylBr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: avoid unnecessary
 devm_ usage
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 23, 2024 at 08:45:20AM +0100, Przemek Kitszel wrote:
> On 2/22/24 15:50, Maciej Fijalkowski wrote:
> > 1. pcaps are free'd right after AQ routines are done, no need for
> >     devm_'s
> > 2. a test frame for loopback test in ethtool -t is destroyed at the end
> >     of the test so we don't need devm_ here either.
> > 
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_common.c  | 23 +++++++++-----------
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c |  4 ++--
> >   2 files changed, 12 insertions(+), 15 deletions(-)
> > 
> 
> nice, thank you!
> 
> BTW, we are committed to using Scope Based Resource Management [1] even
> in the OOT driver, so you could consider that for future IWL submissions
> :)

Thanks for reminding me about this, will do that.

> 
> [1] https://lwn.net/Articles/934679/
> 
> 
> I'm also happy with this as-is too, so:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
