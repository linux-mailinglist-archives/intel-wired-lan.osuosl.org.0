Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF573825C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 13:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79DCC61108;
	Wed, 21 Jun 2023 11:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79DCC61108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687347839;
	bh=j2O+Q1MY84f+wTawpZDux9ALwTb7qx9nGe7/4VRhSRo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tSAyimc8PHqvxh1g5mMkaeMvZbkjZ6jXlb9bgTgkxR1O094n1de0WZd12qi1wSGbw
	 ti7IZm7rgXM4qasnKpXIlBdzMbF9ZzdezuLUE0GPBJeYAgyRQnE2DBRKihwuVT3cYU
	 70vE11OM0GJOdD+NFaexzM7ez+U/9jh0qnmk0QyjGWcepNfyS79pmXMVPtM7AdgF8p
	 X+xlRFpar1DQHOA3E7L1xiriHXkoTGK9sfG/8TrohMcPiL0gRrANF9hJOXSKpqelIO
	 mFBEQLC6Gv8GW5ASjYZxNaOaOV0IFPdxxendgr/gz/wt+rlWOaKOlHlIbs1dcMu0+E
	 kFqcQCy9OC9bQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3UAE7o3vVlm; Wed, 21 Jun 2023 11:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A76C60E11;
	Wed, 21 Jun 2023 11:43:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A76C60E11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EEF41BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31DB94085F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31DB94085F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eh0PLVm4cdrR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 11:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C191D40264
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C191D40264
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:43:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="446524901"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="446524901"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 04:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="744146584"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="744146584"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2023 04:43:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 04:43:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 04:43:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 04:43:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 04:43:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a38gd8SK3PDlme6I1WqPJjCnInemLz0eIIcfQ4kbFdQWaZmfsjf3nqsmRGx72OwkiWc6SNX9BK6TNNaKBej8FZKkWksyWdgCZv5um49JaboToJeZuxpC7i7fnH2a5r8MikS5hVDM2mcAal1XVwUeSRE65PE2tZfcdnk3JHMboG0YPar9WaeO8tGTp94wE9tg5ME7YjG4pPn7Dc67UfbdDVilKPX4Wl/YHiWpqZlPL0vrqYTu/m9l0qLjV8d23R03b2zvFxlPZuhEL5Nrw8u5vRrR5K2zJs5nl06y9xybilUMwSA9hjF9DuNT9nTXJGG0Y8D98J8pe10Im2F3L4XZ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pzqThOgPOyuphdLJ170v6qSj+T33XIiywNKoyi+veY8=;
 b=GUeSw3yrwL2fn3mc3Q5iQdJ6tS6Ft58sS8CKVAX62hBbyb34LLKzB2Bm64zL6Ss6anZJfxbg3bWZUq1N4M/rHpkE19mGRnxlMqSOCrjw9YSSdCRQLHONGeJp8GYmk4Sxu0nec1W/Eu/8+ycBMuMg3s7ge0o+nJjJeVDPsRlBG/RYlvHoZj1SRbTI7Fe64DfblbVgRn2idVyxMjjrsT/InzVGkuHL2OlODWXl30p6PKRvc1xFASFVcHD0m4df8bHoJNKg8EN8j6pPW9oNnUwNcIGiQDpAaDoCCyT4slEf7QuBxTWw4D9ZCoOZSDXJAn3keIM0rFQu79VBtTHmvtoJVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH8PR11MB7989.namprd11.prod.outlook.com (2603:10b6:510:258::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 11:43:46 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 11:43:46 +0000
Date: Wed, 21 Jun 2023 13:43:33 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZJLiZTl8oeBHqKWd@boxer>
References: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
 <20230620095335.43504612@kernel.org> <ZJHgOXXHFjsOjlnA@boxer>
 <20230620104911.001a7a4a@kernel.org>
Content-Disposition: inline
In-Reply-To: <20230620104911.001a7a4a@kernel.org>
X-ClientProxiedBy: FR2P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH8PR11MB7989:EE_
X-MS-Office365-Filtering-Correlation-Id: a39e93f0-7027-4889-ea32-08db724cc5f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lE+jw6joRMDi8M6+dsOnSbnGHEcPvszgyoMcI771a81uwH3NzQgwozrco37NkdeKtpsMo6yUW6wClW5CN0DgcX18C0vR98vXpE3yb1vEBA2pCPByom17OORAm89tMhVs1EjhKjJsGkex9rtkVnyEddqbMFsFU7MkfLFW8VvBxNE7G8kErz5kpqJwWGDp5+k3ZiIcc6Bypyz7NI1HNuWDdykim6ULDGOPI3YPSLS65HU1E8e/e4iaxOK544A6yOyXK8ic0Ut+hn2e8H9LhmVuEby7ExpgTbDWpxBWvD5yZ3AMrRPeHhzGlBfYda9JRdO1vXmQvAnYT7Szpph2wNRFBuL45gPTzh//OiOC9p5u7UnfEJbS2gF0n46u+AxtSx533Q5cQckq6nE/g0OCAIUSMLdE71XsrJHSrgg5oOx4T5YI+crXZX98tPm6CQApzpUkbJzlnzPDQPVqZYk7X2K1nS2tWgf0jLzYQbPXcO0C+uivkfMbgFclkCEc++n6mU0Bpa5afgEmacABENLCf9S2yEgyxrdfkoW2ShFCzlM9PgfAIluqcQVdcmfMZkQ+UINQfrE1jxe5HatNDDKH3iqgDzNcGNTSCULxcznHmgBwGRo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(346002)(366004)(136003)(376002)(39860400002)(451199021)(6666004)(6486002)(478600001)(83380400001)(26005)(9686003)(186003)(86362001)(38100700002)(107886003)(33716001)(6512007)(6506007)(82960400001)(8676002)(5660300002)(8936002)(316002)(2906002)(41300700001)(4326008)(6916009)(66556008)(66946007)(66476007)(44832011)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NCBZthaqcqnGzSkgkde5btBj4dr6I6uN/bB6fxp5Rm4Ofc5uD7Wr3LXioztS?=
 =?us-ascii?Q?enknW8fzF+J+8GEeu8oPNlTN21Aloav80VH1WQEpAcp17lwRuznAZKe8Lh76?=
 =?us-ascii?Q?BiokdfrOlCNbmN5ut6CcWX6dXgYd3mUuiiYNgJnPHcNLqtxdAfvbQca4SUo8?=
 =?us-ascii?Q?6GtaWrYyy9+il8rJkbQY62S77iABZuv2OwklWIpYPO0w1Y2pmqDw44qhOl4+?=
 =?us-ascii?Q?2y3uw73JoIhuU3y+9XaLkUJyd7xO6v2XxIfeT/8WJZ08FJ00UAvEOEYHzDZR?=
 =?us-ascii?Q?o2sqZ4BLnv6n1N+2gtsw/sM9STEbSbh2bvi69qBbTLmypqIV/JlDeb5WiTYe?=
 =?us-ascii?Q?DNtfysVbRFCOzJptFx9ukdHDxPcJCVUXNVc6lGe2eRdWU3X7y8gRsjRNxp7E?=
 =?us-ascii?Q?ee502wNFcVnPMDJ9A6EmofGj3AocPFvOyj2dhjDWXwitlqx5mKkyKbq/HcC3?=
 =?us-ascii?Q?yTJdBbXGNb+gHhTIzkmTyrMjbp5+PKZGoOBNiRkG1EpbdZyw+e4nilj+62Tf?=
 =?us-ascii?Q?7HrXm+UuGQYzAPYhG2aKtNTb7qXrL9cVp9RkTzuRXOGRLzXmFyJPjmMblKHj?=
 =?us-ascii?Q?uVtQO8BIaWQwxAnqpVkzCGKFoOn5aPjjgv3ZZ5UpDbqdKbw9ILQhKzqs4XZa?=
 =?us-ascii?Q?3DEWvxeTEehWWf/Gs7Zj8ATw/7b6OUDpSKFNqhHhg7mZK52sT9ms77S7v56t?=
 =?us-ascii?Q?df3d0ce6cAtKHGEBfhkB2tFEueyoxiNM24JtdZJMoRq9uPZr4xQO/s6M+Nui?=
 =?us-ascii?Q?BbdBiK6fKp/whOiIr95bat2oOrAnMm+yH+hOmEFp9uqQ2Aa5YcltqFqwOsgu?=
 =?us-ascii?Q?UcaRi+5HEDjjgsfsgOGR+AiMCJtbA0RQeJ6w+Fm2yzafItq+NE4+HHBKSu53?=
 =?us-ascii?Q?mWcWSpA9iegokwqFH4RZ/sb5rRIotjWNqQGZCsZAOMYuI1PYKZ2IYw2cdLOd?=
 =?us-ascii?Q?bSFZ6SLATzLQkhUjBb9nKDFUlkGiaGxdUs69Q99bCS6w75rMV7QvQGHgw9+N?=
 =?us-ascii?Q?Mxlr5G07F+TsOnC6CnuoKR/HDKKd4mimWTlV81CksfIYWlJ+vEo5LrKGPH6v?=
 =?us-ascii?Q?WZ/PmZ3CGnvGm0cTKsEuxYTLQObe6OnE2EqxJxiFFCiHuMjYEU2QOXz4Js3w?=
 =?us-ascii?Q?zDEoP0vL73qEp2sOBR/aqRH6dS07TPFuGp5Q7zJclMEVhrrtrs74cGZGCbkz?=
 =?us-ascii?Q?CUmAMU+KdcuYmptrPFdhtMlQj9/U8VHJyj6OKb95TATcI5O+pjgeEbQ/VqH8?=
 =?us-ascii?Q?/YpteG/sFqBiUwrMGAv2wL5NClUrd4Gj+932Xc9m461cuBhdKtm6j4aS8t5M?=
 =?us-ascii?Q?pakPMqniVkRUyfKFm2mUTMSx/zf/4G/9jN4jhwkdgWWbyqkQCcPmp1sBprDP?=
 =?us-ascii?Q?Q9lnXBaR6a8nSv1k3D4jFTQV7siN2dMSSzoMs07ipO3iA2fOGdwCeN2HgvI7?=
 =?us-ascii?Q?OUYVfkg9YCnHTxaq6NwhkIPuhGb9q+8qW9LhvOGfNMa0DeaWlrsE8wPdBHZ+?=
 =?us-ascii?Q?/q3cWmZmVGVD8c5sC+9VyTwvgEDVal0ad5saYVh6oTHzBWsgX7webZGTvnnZ?=
 =?us-ascii?Q?Z++J41aYIloS0Ax26qezrM6IDqfI+iGXEPNgRhJeYviSt/hoDdcyCw5RHgLf?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a39e93f0-7027-4889-ea32-08db724cc5f0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 11:43:46.8516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6NgmOkI0vF+U5noKzTmIVfxcR2hRqSE/tJ+y0P/AVSt28SWG108Q+dWtsU18aeMULb46Lq4x0pKAa36KTLakh9g1AXLpZQVY4ODv0TmU76w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7989
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687347831; x=1718883831;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YedHb34fdR5B6cOPmb4yAeFVTA/U3qrdjbqMvzQ0Vqk=;
 b=mJ1a5vZumobn9ZTn9ozIAbhFRCl7Iq73+BVMbWOd68cCqiTf5Wub3qZZ
 Wwog993ZNoKUyEVFiptL60h1+4Vkki4PWUHITNRjWKmxee9LZuuBSb5yt
 a9dUOH2I9x0hU5YEVvYw46Zu6zWUgWBuJzVayOD8kegIOxbTlqhuebfSV
 aew3d2Uc/N3dA+nqS2GEHabKTeN4nX7TEzZqnE9WKrRFW9+EZDQX55xX6
 dSskKDbqyFnhyIHoBMHqzzbBIeDJjHC1OIMfqB4m7odIRxV/t23mafWsj
 BSpc0RteuTJiD9mn4xikIWbbLn4v5zEuEcpsd07vPdoaF2ZjNrCBQ8eoG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJ1a5vZu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing napi deletion
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
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 michal.swiatkowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 20, 2023 at 10:49:11AM -0700, Jakub Kicinski wrote:
> On Tue, 20 Jun 2023 19:22:01 +0200 Maciej Fijalkowski wrote:
> > On Tue, Jun 20, 2023 at 09:53:35AM -0700, Jakub Kicinski wrote:
> > > Is there user visible impact? I agree that it's a good habit, but
> > > since unregister cleans up NAPI instances automatically the patch
> > > is not necessarily a fix.  
> > 
> > It's rather free_netdev() not unregistering per se, no? I sent this patch
> > as I found that cited commit didn't delete napis on ice_probe()'s error
> > path - I just saw that as a regression. 
> > 
> > But as you're saying when getting rid of netdev we actually do
> > netif_napi_del() - it seems redundant to do explicit napi delete on remove
> > path as it is supposed do free the netdev. Does it mean that many drivers
> > should be verified against that? Sorta tired so might be missing
> > something, pardon. If not, I'll send a v2 that just removes
> > ice_napi_del().
> 
> I personally prefer to keep track of my resources, so I avoid devm_*
> and delete NAPI instances by hand. It's up to the author and/or
> maintainer of the driver in question.

Hmm I am not a fan of devm either but I didn't mean that in my response at
all.

There are quite a few drivers that do this:

net/core/dev.c:
void free_netdev(struct net_device *dev)
{
	(...)
	list_for_each_entry_safe(p, n, &dev->napi_list, dev_list)
		netif_napi_del(p);
	(...)
}

static inline void netif_napi_del(struct napi_struct *napi)
{
	__netif_napi_del(napi);
	synchronize_net();
}

drivers/net/ethernet/xxxcorp/xxx/xxx_main.c:
static void xxx_remove(struct pci_dev *pdev)
{
	// retrieve net_device and napi_struct ptrs

	netif_napi_del(napi); // redundant, covered below
	(...)
	free_netdev(netdev);
	(...)
}

I believe this is what you were referring to originally and I said that
after a short drivers audit there is a bunch going via flow shown
above...plus my patch was trying to introduce that :)

Although in such case __netif_napi_del() will exit early as
NAPI_STATE_LISTED bit was cleared, if driver holds multiple napi instances
we will be going unnecessarily via synchronize_net() calls.

> 
> My only real ask is to no route this via net and drop the Fixes tag.
> Whether you prefer to keep the patch as is or drop ice_napi_del() --
> up to you.

I'll go through -next and remove ice_napi_del(), given the above
explanation what I meant previously.

> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
