Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C23473E051
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 15:16:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA4A40952;
	Mon, 26 Jun 2023 13:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA4A40952
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687785384;
	bh=K+9JOPWY2KRg4If+Q44g47RwcuzbSuHE0x3bhVy7CHI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uv3gcPl6pgt8zW8uKw0esQXETczIhODRpar1qWMDSzjK0QaOHUnNZnkctPidfgEQE
	 1twsuadoGV5d2Vofq11HZStH6h6lBxDoQHWbjExKRINtkBVCGHr63ZIaOfl+uIRMHm
	 E3PtrfWm+0mvj8cmnmmCRCrpiXYH215hgdV4VVYOPNeC2aZAhBotTy1ovlxfdRh9zm
	 oB+4xgDlvrAs4PFQtjb1DwFxKerk7zoPRzePQ/TcNHS9r0OlhbYE4xRocG/6zxBP+9
	 O/lZqwvFIbmOqHHo1viaO4TDJF0qsqNtHy6U8nZ384M+2tJjth2lOjJ5K/Sta5ZDF2
	 gFdBksUBxYVBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ec8zy80djJW; Mon, 26 Jun 2023 13:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A60CB40916;
	Mon, 26 Jun 2023 13:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A60CB40916
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE6301BF384
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 13:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95C5D40BEB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 13:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95C5D40BEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGkRY_T3zcz2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 13:16:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4771F40BE6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4771F40BE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 13:16:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="358758034"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="358758034"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="719352062"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="719352062"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jun 2023 06:16:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 06:16:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 06:16:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 06:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m46LmkX1tCpQKGeS8ojsanJUIyQ34Jj0kdL0y4DYgt2Vw5vscXKyAPaelYDGw8HBV3nSg8KdwmL9YRL1qg20tSdObDkArjddKEZglIbZAxxkt1UC+tRyaAknsBmGupDZ3/NTShlg9mmDBgdy/deyPoyAlz//jLONLJMqenJ9GWbtXdjCWFDIy2YZip8HtJ5rrvdOx0p+TruRjvoW1LUfVcNTZl8mrO63NaJ+FYUU8Zu4Xc0vDA18JZQtpX1f54BjB+IcwCKY++4zLY9o+6CPK/SBdAJU+y7LitiR89fvrvWbXCe0e3zDMc4dElPynUZb2/dHNWJfjzJLQEYQD6phOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQqiF/5Vp0jhzSnMBnzrAf2QWNZjB4H95zHwq+L4LVQ=;
 b=kVWT9hlC5Bxb1OE523AyZfpVghRaipJOxhGh6ZtLR7txMw8mZqxh6o1lm0XXmNIhqxkwJbqhldhUZQ+RiJ8NFGkXd7xKG9sI9g1+Vsa6Rsjte7OuG0k3iiMNQKt4F3ilEBynmAU7F2t8mtyPg8dQYC9VFUZXOIYBD63qVzcFSRBraEPMd7FAQYojy1CKk1+PkSOtcAr6+jEp+AycUEspGs8kjaiG2rMrhHmvEakTPSQX3JzHHwqBAseL3gOm8uI0xw/vtprtBYr5LyqKIdC+fBMh9yMkwTqkQFF2m+mc98yAbx4QYzifQx3Wb6f4oDHWZtCKmWx4eC0myy7VcG/gvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW4PR11MB6809.namprd11.prod.outlook.com (2603:10b6:303:1e9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Mon, 26 Jun
 2023 13:16:13 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 13:16:12 +0000
Date: Mon, 26 Jun 2023 15:16:00 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>
Message-ID: <ZJmPkNrxk4LkhPQ0@boxer>
References: <20230626113429.24519-1-florian.kauer@linutronix.de>
Content-Disposition: inline
In-Reply-To: <20230626113429.24519-1-florian.kauer@linutronix.de>
X-ClientProxiedBy: DU2PR04CA0176.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW4PR11MB6809:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c93080-3e80-47a9-da67-08db764783a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gesmmimJNjALL6nrZxjAWRjSTRdpUMZxyBvyah7tTx+FzNVvUhoSj3kVQPQrN8TUqpGR6I6mcUAOHAtPV7vteV1DiNURXLwyX80X1WgfZ70QwEQwx9RyCwuA9jxEuDxNkWYU0bD07HQ5d/aOX83UORtSjfmq/xBGCstk+QVJpQkodNFhxbC3cpcwGSrQykkOuOWz/O2cs45Qb55/dAg1C7bAEdwxYn0mai71USgRPOy/TUiz+v7jYmGgalYDFO9jMPuBk/yQkDtFL8GEb8Xae10q8OHUAJhVbp1JZuTOwGv4ykms0xincVsOAcxd+4bASaQ3txqMBHPrRtCgQhJ715D+8/ycBamN8JSbfhKd74226kZQGXKAIcjJGsypqJyHriVcl1NXciRK+j7V8+Sg4qXWV3/xUc1usWg2F3eJ/QM7jeflRst5K9ZTLuNxD1HDIyPMQM7W35aRUV0b5vv1THilFxLkunfUAsB9/S88yMta9dDPU+cAb7NvatNc5EnDdZ1C/nKxm1AWUiQUiTql1bxBj5LpxNeUVHs3cRKljZCmsQRsvvrkUQRXrTqo6OGo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(376002)(136003)(346002)(396003)(39860400002)(451199021)(478600001)(6666004)(6486002)(54906003)(83380400001)(26005)(6512007)(9686003)(6506007)(186003)(2906002)(5660300002)(44832011)(33716001)(38100700002)(4326008)(66946007)(82960400001)(316002)(86362001)(8936002)(8676002)(41300700001)(6916009)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?61qHctx2zoahLO6IGZYZuQPG33VOUhOvOyM0WrT7cSBNKWXpl17pF+dGzbQo?=
 =?us-ascii?Q?GecuafrXlfRzzqsfDRyGU6qxRIRyN29ViRCgXb1e5GnOCJuL8f0alLNeQTif?=
 =?us-ascii?Q?0nHUyJTk0DgvyOP2k2DwAlnq6hOgxOgOtF6zsLsEZ2EKIzUR3cIuFxQFWX/y?=
 =?us-ascii?Q?mQJUd3K6KfdxK73cutEx2golfAp+LGsVJ2hsDt5ANmoqZSgLU+l2H9z4OCKR?=
 =?us-ascii?Q?so8qriYhbqZ/b0INevC9agBdjqz7YJzMv4SP4Yv80iIKnpfOZCs6XWITGiZB?=
 =?us-ascii?Q?uKB/jryFvWjs4TdlACLTreCdzSJMDRe+tA24dhTMIv+kRibZeI+es8rBiYld?=
 =?us-ascii?Q?ZtStbDJeliajPR8H+ny3cZm6MNkwqNjNjTCBkKqtIbGC+9XxoJnZzg6EON8P?=
 =?us-ascii?Q?znuzx4Ky6GUxFYVMJAuvjogPq8e6Yf2oDNNCWIFb1NmpQwQ0/seJd/pULENT?=
 =?us-ascii?Q?YYvloSEJVawOD8QlAIpscmsJz/pndb3TPwbMYwoVy6pOwmko3t3mku9R9nw3?=
 =?us-ascii?Q?TkS1APzWNOsP3vdcG/xdfOasPFEVFbk89a45ikh3aT39Dia/mpNFpq/Smw+q?=
 =?us-ascii?Q?aY8nxuerIsr+358esjqdtnGe+PTlw27/4icEgWbxnGsP/56t4LI9XDVPukeC?=
 =?us-ascii?Q?vRsQ2PeZSpSj3QzQfuT4D0a+nRf61E11Xyc5YlEScIONMAH2yUa/DnCOANl+?=
 =?us-ascii?Q?vugEumH26AtrTRJZdIr8qpeOZ4c612d5LpMMXqCotp+AvP/8XyYLFuR5JWoX?=
 =?us-ascii?Q?NlJ307Cq+nQ43IaRdXS1uXWiAmmJHRkRpVgQRq3BXBZk0lCCuQ4Oh1j/tWaY?=
 =?us-ascii?Q?NSNCC5QpnBtoe/CcMCvnlKpE+ZgIY/zk3hIMjWQhG1e62igYqRL9ZQYNZrb8?=
 =?us-ascii?Q?2ZQBtiZT8A0RQ80eS8gDh9zJ/MASBlMrWKfFrPpIBQhkdzQu5l4axXGto3Ko?=
 =?us-ascii?Q?+QzL1/KVLg1QAVPY3Iz7Js2XURyo8gGEXPfq0Tsnwb/VRSHE4STYzLxSJt6n?=
 =?us-ascii?Q?XOiwY1WfK9cxeJlJYzV67tZFcKeKFxRzouYHUcC/My6brt7ZF/5XJMjAIbpi?=
 =?us-ascii?Q?kLDdppkG+G9YmI17P0SSOP9H5d1VUxSZVzdF0IzvUe8K48U2b1ItZrfJtK7p?=
 =?us-ascii?Q?D+Su/XXmPaHxzJSEhn7xmiJiaI8DnUzN6bEONDb//aEJxt+6RwIVYzfxh6YP?=
 =?us-ascii?Q?vix07lC1BYWfl+QrCfEtyPSVbbZau2tcq6oroIANUlgFHtE+ARNfO1a73YDb?=
 =?us-ascii?Q?g5mfHfJ0dmSL8dAl6tLieDeiEQbe5LVdHgsvXC2Qg+CBakR7O6iGtaEklKfm?=
 =?us-ascii?Q?s/lpkZZz9nA0vGLVGxooQxesosluirW6yo9+3W01HyHHdcvPTyn4axcVJP/z?=
 =?us-ascii?Q?DAveZdKoVwcJVfBl75pmgw1RsSJaQ2hsSUs6cj1CniWdSkq4GGE45fJq/zxt?=
 =?us-ascii?Q?OE1/GBB615C3VX4bFX0HITkpvyhp3le6hxba/+9uHLKwvaz/b+9DlWL5+C2W?=
 =?us-ascii?Q?Sv87h7PftSwu0emi3YCTVjJ9E4GqkW/zHIsje8P/m9Mf8y8hUxfFaokSU5uW?=
 =?us-ascii?Q?0nKR82dHu0DL2jw1BKMMiDxAGO9gYJIHoKlEEKw6Q1MWB1/6sZnsHI671Sf4?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c93080-3e80-47a9-da67-08db764783a1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2023 13:16:12.7728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dOtGxyS/aH9RD97G3RDyjtp4TSGGIbPljiy7i9IBhZq/f/iclJ54MG+AkDPIIL9GvDKoKcAgk9HKNYU5lQ/iLWAH8m3ol8QSGnRPDuj8d8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687785376; x=1719321376;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Erg+UMmfv2PljnL3C3VJz1/ujFtRh01qaT41kEErL+g=;
 b=VeL89XDfCQ5FtEdcIXiq0c7NK9zcvscS4Npkh5GIQ0+ME5gIsiq4fKUm
 IaAQq5YeM433Aq6mPJfpHLVbvwwOctDb9kUBOzL/75/RspUye0dYcrkoK
 Hqp/GaShv74I2KjwRxZdlIp+hQ2T5N+bX2l67I2heo34WJ2o1SIVBXOYb
 089lx+r+EJBt0xd5a6gE262oBerLfhNKY8Q/uLWScg//Q/DA4xr6em/EA
 UGwqnO6tMKmcyruG3882Zd+fmW03QGzZJZepwChQkoza+9Wt/6vaLM2es
 SMObofjaQ25yPFdxJK0j5HWfgdRixadkTq98ltFN/U5nDfb6bNf23lP19
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VeL89XDf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@lists.osuosl.org,
 kurt@linutronix.de, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 26, 2023 at 01:34:29PM +0200, Florian Kauer wrote:

Hi Florian,

> When the TX queue is used both by an application using
> AF_XDP with ZEROCOPY as well as a second non-XDP application
> generating high traffic, the queue pointers can get in
> an invalid state. Most importantly, it can happen that
> next_to_use points to an entry where next_to_watch != 0.

Although what you are fixing is clearly a bug, I don't follow the
paragraph above - what does it mean that next_to_watch is not 0? What is
the purpose of it within igc driver?

Another thing is that even though txq is shared between XSK ZC and normal
app it feels that a lot of unnecessary logic is executed for XSK ZC (when
running igc_clean_tx_irq()) but that's just a side comment to consider
implementing a separate routine for XSK ZC Tx cleaning.

> 
> However, the implementation assumes at several places
> that this is never the case, so if it does hold,
> bad things happen. In particular, within the loop inside
> of igc_clean_tx_irq(), next_to_clean can overtake next_to_use.
> Finally, this prevents any further transmission via
> this queue and it never gets unblocked or signaled.
> Secondly, if the queue is in this garbled state,
> the inner loop of igc_clean_tx_ring() will never terminate,
> completely hogging a CPU core.
> 
> The reason is that igc_xdp_xmit_zc() reads next_to_use
> before aquiring the lock, and writing it back
> (potentially unmodified) later. If it got modified
> before locking, the outdated next_to_use is written
> pointing to an entry that was already used elsewhere
> (and thus next_to_watch got written).
> 
> Fixes: 9acf59a752d4 ("igc: Enable TX via AF_XDP zero-copy")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Tested-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index eb4f0e562f60..2eff073ee771 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2791,7 +2791,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  	struct netdev_queue *nq = txring_txq(ring);
>  	union igc_adv_tx_desc *tx_desc = NULL;
>  	int cpu = smp_processor_id();
> -	u16 ntu = ring->next_to_use;
> +	u16 ntu;
>  	struct xdp_desc xdp_desc;
>  	u16 budget;

You are breaking RCT here.

>  
> @@ -2800,6 +2800,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  
>  	__netif_tx_lock(nq, cpu);
>  
> +	ntu = ring->next_to_use;
>  	budget = igc_desc_unused(ring);
>  
>  	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> -- 
> 2.39.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
