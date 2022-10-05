Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D605F52D4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 12:46:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6FDF60DF0;
	Wed,  5 Oct 2022 10:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6FDF60DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664966815;
	bh=54AHPqFi5g+N63SiDmLxhjAxobSR7BmZw9byPkgFGz4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eK0LneW59NLGTZy1DqoHdOmdzEc//Q9k3Tdw0MZ5DBSzAO+vp3sk+TGFSEQJRQ4Kr
	 fUrwZQyMub+JisV0q6KWft7BeCpucOOGLqCsKu+jFtoVFimPsiAil0EL4MWlmO7GYy
	 IA+mEPVGgBK4XZwBUPcjgWf/3cMDErHu/wfK+c1fDqh6NaSxKNOLrKdca/xGoSrgoj
	 AFDI8fqAKigaYgMqhx+CGsvSnlbkdFncJ4hUULeilaXPOFZwFQQT+jjpY8Mr2bDx8+
	 W+f7uOCP/8BuS6Ec+SgeU9+E6yrgbEgMDScV4ykJCKk3tODgR08RjF+RnK8kTSIZWU
	 b5X++znafgVKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id biDea2Pl-ETa; Wed,  5 Oct 2022 10:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89E6B6072A;
	Wed,  5 Oct 2022 10:46:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89E6B6072A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB7AE1BF361
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 10:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4FA981A2B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 10:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4FA981A2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mytj11SMiKYU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 10:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8F21819F6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8F21819F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 10:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="367247243"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="367247243"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 03:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="655130383"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="655130383"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 05 Oct 2022 03:46:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 03:46:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 03:46:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 03:46:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bndEb69a7tEbULy5bv/x+H4MYyE3kqei33KTyssugVqdUzOyHZeQWeSWvc/LQyIb7NuAzfSfb5MGprwX+h1zsOigJtZHY4EkTFqpD7TasyBTgbIY7dzIdrF7TfCz+501Ex6Csuwte+wWjXva8ieJNUMdSsB7MaWu73/JxnkZp6M3hXEY9k5VUsUUwJL3CNttUQyjpCHp/TvmW0FpBb9XwITjEfelAmGao4Tgc65IsnINmo4pTnixmIzPwZ1Qfko1HnS5Jci626StVsyFnEqIsyz511btSDBUwDm5XJ486T+nU+jboiaF5wah6DCMv2IKtmO/YKJJaReNHZa2/Wz6ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fLX/Abc6zSa2v8+1FZIA13J0tRFxvdvjuvV6bPqHdeo=;
 b=GDjHB5GnnHiChnowQ8kWHseCYAuqH57RWqIRSdUHQZiggzzgVpku0doX2c3ReCehdHX0p4ohiv2GFlV5dKNIccF8u1s4Hv/wQIIgmjcITgZbPu/TvPDRaaryoiY/HgR2KL1H3RV6kCTciVa2FLdVgp+qYyW3wIvaL4FrmiMei9wPnLaSnszhEUL8hYBWbTd1OQQlRrpQ//HRCTZjfDbw1gqpj12QBi4r3EJGdGHgDMhMt/j5XV/nXDqhNdoatZNMEQ+YA9ZKp1dYENtQCidy1vdDApSBkjxxt0+mXjJZKpxt3uzIp0nLiCgMwPvHlnqvZKOMUZvd1ABE+DgZ9c6LsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Wed, 5 Oct
 2022 10:46:43 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923%4]) with mapi id 15.20.5676.028; Wed, 5 Oct 2022
 10:46:43 +0000
Date: Wed, 5 Oct 2022 12:46:31 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <Yz1gh6ezOuc1tzH+@boxer>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-3-git-send-email-jdamato@fastly.com>
Content-Disposition: inline
In-Reply-To: <1664958703-4224-3-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: FR3P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::23) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MN2PR11MB4533:EE_
X-MS-Office365-Filtering-Correlation-Id: 60f2b6da-50c1-4e56-e3cd-08daa6bee4a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Un6hzknt1ttb9n7Y709wF6Dw6ESsj3a6bIazMUCebf1+eZRnlIbqYDTgY5Lpa7Gi2EzzAK4l+AVNvyncAorJkETj9zwGrXI7KIy3bdHlhjQ5eNUSFtWb76xZO/qx4ulz4PQp5Ak1o9KR9cibsfZpd6LSEu/3k12nRY/O4AV2YLhmEq7O77C2HVaZxKSNyMkHsG4Rm3HFupM1WRrpFJc9PBwwEnfRXGYY2PkfFNuZ1yHmrfzMxZyVcXlB4NKsK8aE6xRkQPxU+xmXPM1jmLxRaZQENblkdS1x+lMvkGbj7SmmDo7cHowzjn72r2mKWD+veFMCEIQiAjBzXWhDenh404qbKNtMw+5SB2OInWHd1ygQK/GWCU8I7bOgGCVkqmboZP5ZqZQ0JL6LQZGOpSM3vtfAwcMFgtSqadCuzNRthO1RopVFk8TuVXM9XHIXx0WLdfxyhv/J3duq5BVuP84H5rJn+olr6tOYBfxgpET95mp7An9mt1JqMWzPj2/UJUl9RRRto2vquKB6xRCRRndXhwTKo4SKoN08+J+sCSLWqlSf3xwaX1jJCj/0RXHC72eyQN8NymEsXKZcPMsYqrtSz8GGyYKBOtS1b6KCH61aE+XI1pIRX+kZQPi0sAgY95DOBwppw4Tix4w3VrcvhpngSQyVr4Ln7KZYPEVNMFun6SE/jvwBAZIit5aMYl2jKTxpQlp4tlCD2L1sGqfnGoyn9gd2Y0vZZf3gbg4xzr9biDA7t2DQA1b+0MlYhUuNTNZV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(136003)(346002)(376002)(366004)(396003)(451199015)(82960400001)(5660300002)(38100700002)(8936002)(86362001)(44832011)(6486002)(478600001)(6506007)(107886003)(6666004)(66946007)(66476007)(66556008)(8676002)(4326008)(316002)(6916009)(33716001)(2906002)(83380400001)(41300700001)(6512007)(26005)(9686003)(186003)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?txNfX9XbuKZmdwrst9wHsIMwongDEgRv8VGkGG0WRLzFg2pw/+LU+4Irisrv?=
 =?us-ascii?Q?pqw3vUqAA3wo9McdZVM+09sqnD5RKnIlsJxtxMX//Ew5LFhGZdaYZJLCz63V?=
 =?us-ascii?Q?WIgAEmL035cjLSZK7Z5afpNFn6+4nKoJOrnmKygfReP9jEa/6OIlUw7jGkQl?=
 =?us-ascii?Q?2oohZbs+1FQzGIa/rg+R9AP6IU7CEnhRhIfvRIARXIYFZ7MfrYVDDgahRqs5?=
 =?us-ascii?Q?/Yh50cPrgIccA7MIXqTKT1XG9cjC3o5gyAfWrk3pCUU35YY2Zb4/2cyIF+lb?=
 =?us-ascii?Q?MtXvajCacGN/VEPKsKGmtCnuedroQsWu/2kktzvY4JQhI3C/YmbWo3MdJ4wG?=
 =?us-ascii?Q?6ytQS5FFsTKRFlGPc14nXAdZwkuLkDqd7KxhrArQkR9Jrp98T1npCvL+M3Qj?=
 =?us-ascii?Q?k95msFqGv5U6utYw/lH+VTGIsq6P+6AZvyMjBXq09z8db7EEIp/T0wFZPW+i?=
 =?us-ascii?Q?bOrxBesUYK3IUsbjlYZRqkTPyH/T8ndSWaf0wNccECxXZIIh84cxBzOTk/Cm?=
 =?us-ascii?Q?c3I5fUaW84CB1svUhgu5ccZuGd7oEyYBV1xxcXTuVRzwrDhfxw5L33daZ+UT?=
 =?us-ascii?Q?jZKmVnRt1cVuWtFgJfvs7qfabyFYXV/lf3+EsJn3M17P4x3ZmEHtu9ZhMqaB?=
 =?us-ascii?Q?o4HjtC85DdUkQPkuM8PyQ2bpLn9CTxBSWsI8/Uzv8hIa0SZlH1LY55uLiwYK?=
 =?us-ascii?Q?P9Iip+UaG3o1XSlED9diTVA8mGhAHHLEhjRkREKeJzUfbfwbpt342Z0a7Eld?=
 =?us-ascii?Q?nMs5MpXHLmYyTH+A7TDJf/ISN0KW4gLD+QKVIq5bVrZUhYe6+Rxtorhq1mgr?=
 =?us-ascii?Q?fzea9zirWUr1VCqV7Ec3tyhLmO0/zjRaR4sD5P+lrvy8iwUZwQ0PEL9UzcER?=
 =?us-ascii?Q?F559NEv0ZO3xpcejB0XBgW637/DvKiPEyMpI3n3RpFTXzSBYMAo0QKAp0OyO?=
 =?us-ascii?Q?ywqHgiSTmuUEwJFN21UBCcu5evVwV54p6gmI1leUX7WHSgrcSt4po3tzmNE1?=
 =?us-ascii?Q?a/zrybilx7aOgWbceHBPz0+X6ZgKIa0CmekWF+cK1ON91mDyAxmExxT8kzd1?=
 =?us-ascii?Q?ZNaNjRI37CLb1EKRG1qGQV/LYld+TMIIx7ggXGG1nhRFFa/e8+JSB15cpn1b?=
 =?us-ascii?Q?a5A6dBn374Js7TH2XJcLzL9+6oozG+cpXHrDOi1sbJZPIrgk64yvBm2B6yJ9?=
 =?us-ascii?Q?NtwY/mCGmpZ+3xAg8uVXqr3xLm01PED3YOVPI4RJR0nSh+Abm7kDad2OmVTF?=
 =?us-ascii?Q?UvO7CeIOW+F9z3Xf0lq3OeXOXqdc3baKWIDGN8jgt+C9oStodrCX15GMu65w?=
 =?us-ascii?Q?gWr0nKoRLQj1MVgHFAOlIPXPIRIJ3AxO8Se4abwtMuB4IJTiiD8S2ycNczcD?=
 =?us-ascii?Q?b3P1+QtPXdIIRPcZrMbwMj6JVCqWF8DNbcpMVtjaKd25EjDJty0eh70wGyto?=
 =?us-ascii?Q?Bn7/x91I7UELVqso3kYFLKGTl9b4WM8pUr1Yo4NDcwpPEfb0jNWopupVjZOD?=
 =?us-ascii?Q?kzByzApr5SLYVHCcADrxhuNqyEKKoOmGAzrgWM/m4NGgJ05t7TxLYJov8KbI?=
 =?us-ascii?Q?9bAaQZnXxNOvMaL8ywUOdm2Q1o64CgC3wafCj/Gy75YrPCV9E+r91j/ABszO?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f2b6da-50c1-4e56-e3cd-08daa6bee4a9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 10:46:43.7620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: llNnu5YzgWCT4RQ36u0rNCHlHoyni8cYbSMyWBLFaUpQ0+ynG3510Ig+WPdDU1P46oD/FQMZOqJsUYMHD9O5Qt8mPdonmoHFynDhc6qcTAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664966806; x=1696502806;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RYUtdtmmPRTctyu84PzGkJVhqAJYY7+/K2EVcidneGc=;
 b=kKyFPrLuHkaXDyd0b7PU1xABNAXMtIThx4vmQBl6uhuuAiT6DG5o5Qcg
 agz6Spm4BozIHmDMdPNJcvUsRCl+goI/ec8pY592B0h/fmyl2YbfL5cve
 T/W9qfEnD1a77AoVBueeH6q4gR3Zp3cmkapf0rwygrkAfAdVzkbD9pRHS
 t4GgWhluqeOtuD+2AL+X7P8ug6ZXW3MfvqNIXrL0fJjkgmMZcAwwvd4Dn
 gILC51FmlUvsigL7u3EDENF40YnzlyLkXDQJoZRTqW0Mb0bJMgMlvHlxy
 TaimP+K/XLy0J89cQOCmX58huAsWosHMozrEc00nDjkXm3w/C2Fcp7wY9
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kKyFPrLu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue 2/3] i40e: i40e_clean_tx_irq
 returns work done
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 01:31:42AM -0700, Joe Damato wrote:
> Adjust i40e_clean_tx_irq to return the actual number of packets cleaned
> and adjust the logic in i40e_napi_poll to check this value.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 24 +++++++++++++-----------
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 12 ++++++------
>  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  2 +-
>  3 files changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index b97c95f..ed88309 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -924,10 +924,10 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
>   * @tx_ring: Tx ring to clean
>   * @napi_budget: Used to determine if we are in netpoll
>   *
> - * Returns true if there's any budget left (e.g. the clean is finished)
> + * Returns the number of packets cleaned
>   **/
> -static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> -			      struct i40e_ring *tx_ring, int napi_budget)
> +static int i40e_clean_tx_irq(struct i40e_vsi *vsi,
> +			     struct i40e_ring *tx_ring, int napi_budget)
>  {
>  	int i = tx_ring->next_to_clean;
>  	struct i40e_tx_buffer *tx_buf;
> @@ -1026,7 +1026,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
>  	i40e_arm_wb(tx_ring, vsi, budget);
>  
>  	if (ring_is_xdp(tx_ring))
> -		return !!budget;
> +		return total_packets;
>  
>  	/* notify netdev of completed buffers */
>  	netdev_tx_completed_queue(txring_txq(tx_ring),
> @@ -1048,7 +1048,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
>  		}
>  	}
>  
> -	return !!budget;
> +	return total_packets;
>  }
>  
>  /**
> @@ -2689,10 +2689,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  			       container_of(napi, struct i40e_q_vector, napi);
>  	struct i40e_vsi *vsi = q_vector->vsi;
>  	struct i40e_ring *ring;
> +	bool tx_clean_complete = true;
>  	bool clean_complete = true;
>  	bool arm_wb = false;
>  	int budget_per_ring;
>  	int work_done = 0;
> +	int tx_wd = 0;
>  
>  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
>  		napi_complete(napi);
> @@ -2703,12 +2705,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  	 * budget and be more aggressive about cleaning up the Tx descriptors.
>  	 */
>  	i40e_for_each_ring(ring, q_vector->tx) {
> -		bool wd = ring->xsk_pool ?
> -			  i40e_clean_xdp_tx_irq(vsi, ring) :
> -			  i40e_clean_tx_irq(vsi, ring, budget);
> +		tx_wd = ring->xsk_pool ?
> +			i40e_clean_xdp_tx_irq(vsi, ring) :
> +			i40e_clean_tx_irq(vsi, ring, budget);
>  
> -		if (!wd) {
> -			clean_complete = false;
> +		if (tx_wd >= budget) {
> +			tx_clean_complete = false;

This will break for AF_XDP Tx ZC. AF_XDP Tx ZC in intel drivers ignores
budget given by NAPI. If you look at i40e_xmit_zc():

func def:
static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)

callsite:
	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring));

we give free ring space as a budget and with your change we would be
returning the amount of processed tx descriptors which you will be
comparing against NAPI budget (64, unless you have busy poll enabled with
a different batch size). Say you start with empty ring and your HW rings
are sized to 1k but there was only 512 AF_XDP descriptors ready for Tx.
You produced all of them successfully to ring and you return 512 up to
i40e_napi_poll.

>  			continue;
>  		}
>  		arm_wb |= ring->arm_wb;
> @@ -2742,7 +2744,7 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  	}
>  
>  	/* If work not completed, return budget and polling will return */
> -	if (!clean_complete) {
> +	if (!clean_complete || !tx_clean_complete) {
>  		int cpu_id = smp_processor_id();
>  
>  		/* It is possible that the interrupt affinity has changed but,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 790aaeff..925682c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -531,9 +531,9 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
>   * @xdp_ring: XDP Tx ring
>   * @budget: NAPI budget
>   *
> - * Returns true if the work is finished.
> + * Returns number of packets cleaned
>   **/
> -static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> +static int i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  {
>  	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
>  	u32 nb_pkts, nb_processed = 0;
> @@ -541,7 +541,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  
>  	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
>  	if (!nb_pkts)
> -		return true;
> +		return 0;
>  
>  	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
>  		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> @@ -558,7 +558,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  
>  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
>  
> -	return nb_pkts < budget;
> +	return nb_pkts;
>  }
>  
>  /**
> @@ -582,9 +582,9 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
>   * @vsi: Current VSI
>   * @tx_ring: XDP Tx ring
>   *
> - * Returns true if cleanup/tranmission is done.
> + * Returns number of packets cleaned
>   **/
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
> +int i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
>  {
>  	struct xsk_buff_pool *bp = tx_ring->xsk_pool;
>  	u32 i, completed_frames, xsk_frames = 0;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index 821df24..4e810c2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -30,7 +30,7 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
>  bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
>  int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>  
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
> +int i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
>  int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
>  int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
>  void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> -- 
> 2.7.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
