Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104177372A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 19:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A849E41771;
	Tue, 20 Jun 2023 17:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A849E41771
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687281750;
	bh=jxyBPLsvFV7tCs3mFTFaJkHSJ9u9Y4PdTM0fXoaHPFA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=svm0zBNYXevl2ix+2YtAMdy4jKAso32NOHtD8zP4zpJVI8vg9PtXdU11cJrQSZGDE
	 0lE9CIm5LzDAr2pF3WhoPowafZyYx0tyw3l0fAGgNIWaWnJl7JMuIfwleK5AACUhVj
	 UIUr5ApVtfRlY1aVMjJa7qd3CJr9KyJGaupwgf1tMWSFP0J/uh353uZwgRosUFwwmz
	 189JfiQtbyPAsTzcCWk8WFVcfWCQpDS4rNoXep2naCqf1q1KCcIu9op1YaM5PGwHbK
	 leJxHL17BjaH/hLhm5f8kAVGVOnH1cBf+BBXl12adhh6R474l2VwkaWIlN2QXX8yWh
	 iyEX6u9jaovyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwq0DaCcyC1S; Tue, 20 Jun 2023 17:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C2A941772;
	Tue, 20 Jun 2023 17:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C2A941772
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63A851BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B01382327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B01382327
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T_2d0D0b5Ewq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 17:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D35782312
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D35782312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 17:22:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="358797637"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="358797637"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="708370548"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="708370548"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 20 Jun 2023 10:22:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 10:22:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 10:22:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 10:22:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RY27cqL0hLvI9G07qfT/5gBFZoyXHCzdxyEqAyA2Ah5nkdj0BD0gowrCh2uxrrX7Yit1qv4/S+L++qwssoZhuWbaF7ZaF6Nfe/5fEc7kO699NRQcNJRZgt3Krp05ZwECe7z3ZomsbsuI5kP6+rGnqWRrJaroGNDg2TuN5hGKf4Zq2IqvTkCBDRCizeGbJ7klPQf8xB4X2tM2VTZgaCmR31+nDUOEgwBI98cUUtMx4O3jI8Jsum7uit8HsPtQj33QHKkNg8Q0dTTtXAACvxMuFVI8fw9HQJLTh6m4XkBBq/Fm1ZUvei1Y5byOv+bHqvjvR6OL73/L0T9wF42gdyCsJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IMzYdsQkAjOlWPV77zz7AVQTqRUd8yMFdj4rFoWhqxo=;
 b=muZMEIMJFyiDL/8cDPJjLXQHK10W8UUgh44ZNKEjbHWjr7tALxTp+IOvseJcJrCkrkcOLdivJMI+NFLwNyapF7KExugewagBQpC8kzz1nq6h+5gGGLJkqNLXVys+xx9As6X1cnNsL+VW3nvN1r7MEE/x+kX3sSj+TdiLgRcVZ/imHcmIYzWeLdkGrrXRjn8fmY5/m/SYm4QUDZmQNvZ943sXSE+r0l/mj/nfdEkrk/MaNBP6rd68w/I3RdobyD6dpr4dhO1wy0eU6yaiuoadkOlNtymiiOZH9V249WgoFPun16Ufwjw0ll/Ha3LlhClbmWa2OuG5rNOp5BtnrDmT/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.36; Tue, 20 Jun 2023 17:22:13 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 17:22:13 +0000
Date: Tue, 20 Jun 2023 19:22:01 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZJHgOXXHFjsOjlnA@boxer>
References: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
 <20230620095335.43504612@kernel.org>
Content-Disposition: inline
In-Reply-To: <20230620095335.43504612@kernel.org>
X-ClientProxiedBy: DB8P191CA0004.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7195:EE_
X-MS-Office365-Filtering-Correlation-Id: a85ff082-01da-4bfc-1e53-08db71b2e2f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hQniRmCGmxgXPa5rUC9zLFLXT4gcRb/cprplwvpQ5zEQwTtojRWOSwHQNPncIDa+MKCM5zXa8Jy8TghNvFnB9WXiYhgZafLomdZjbZQWqIanI2C9xvRSvSQMvnpKXvdZx7rJCHLmevTYzYyZnxx0wPxyjGbc8DWo93M2RxbUu+8dSvJlqpZipyFlR+8NfrV9GyEo/K75CfQ0pzf5T9f4PNuN2Mbigh9fSNSvD0bkafXJtkzNOkkVlWoRSbcDe2taqfO1hJf1bfTD09aAEDWxIhwQp4vHM3Xz/oSHO/Lp7erqKglULZKm+smJeOYbq5g4Z9yEEEuge6JXNJHPsI4Ia7hFodtQIkEOJF769oZsLQtDpStXRBM+hraV7P6XLLlKS0TE6FS6WN613mq0GLTQaqF3sqqbxxzRaAWbLer8YFBihUyrUCflhRuGynx3KOB6MlQcLtXQwBROuv0kl3v8jxt+OJ+GzVNzIcKagAu5jk+ne2QFcz1Q3hgOlY6wb0jru8aLl8FLMmBmGJY7HY42uyEH52ZZtGnRia3tTaoBViyF/1oxkD2Fbt7EromcDYIo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199021)(316002)(2906002)(8936002)(6916009)(4326008)(41300700001)(5660300002)(8676002)(44832011)(66476007)(66556008)(66946007)(478600001)(6666004)(6486002)(82960400001)(107886003)(9686003)(6512007)(6506007)(186003)(26005)(83380400001)(33716001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JwLzYetyt5CWT2L05OI2++JrstCQfEW/6RzAV3l+Brl82tl0ddZpBjv2fekx?=
 =?us-ascii?Q?DDjb1yZ53re8MP8hDUAsqAT7es2ckcnEyhFg7dIopMHwl11XOAAEdQUmhjGK?=
 =?us-ascii?Q?JcCO8VKPysKLzM1mbaQgmfByV3x1uszB78+ZUOsqaHnuFzPUpCFzmcfX9CxC?=
 =?us-ascii?Q?M2QbiS9rGVvb9Y0uWBTvB/0ZolTK+eNYavGYhxUlNmSskmjRXPUq1ziHcFx0?=
 =?us-ascii?Q?V1cIUQSrBca02AjZryfJOn5VsWlc1qcZZJjljvOH3NcgOh7CsOHjZa/6NyR/?=
 =?us-ascii?Q?WEcYeCQwr7XUcnmBxPzJdW+5MiopIp9d0XCYirkANTdiSAvnsQscWgGLXpVK?=
 =?us-ascii?Q?iGaXMtH5a8evyfw7MphCUVPccBT2IAKc4wFX+H+LgRyjB163XpKxfiGJHHvg?=
 =?us-ascii?Q?WlL9jV/fS+j9F7TO3mAIyVRqkXZ05LNlCGW0xfAD/kUIizeGZIMgUIilRmuV?=
 =?us-ascii?Q?5hEPSSp1Cx/AS7FZ25wCUuVRoIRUSBD5yMP9xY4mhS8CdqX5hXdCJy/fd6LU?=
 =?us-ascii?Q?cpKRrv8+gFIqGjT6oMlujWY3Udwi1aLYM0jD6CQDyFFOwIhgHuKRus6EbT9/?=
 =?us-ascii?Q?p0qrjBtP5c9sz6y2fy+VNPLMyWHQCVbl7OyyT9CKdcLNpfLBaT0VE6SEbw41?=
 =?us-ascii?Q?jddHn2FoJ8b/NFSs2j/g4g5rblRvLQI/2d2G3CSqwV7ZtjlWAlzRyQ2VJpfN?=
 =?us-ascii?Q?JKIjby1VkAD3RH85olO8waCCpUtz4BAV6TJQsaoKejeCVbiDddg6F+adBZKa?=
 =?us-ascii?Q?EdhSddp5uR8HJGIAhqFcRYIGVtMO1t2cZmRoFv4j74GifcX5k0lDqJqhUqMt?=
 =?us-ascii?Q?hTbKLl6lOpu+gwXsTAlk2iJduZ5yGhFqT3apiwMt/Q+E7/XHXe9Ifxf5ZMAD?=
 =?us-ascii?Q?/wj23VD+AhqH4+yAAQ2mFKCu6+ibjQTMRg3PSp4Eb2XWuj6RSctiKJZfDOEa?=
 =?us-ascii?Q?3HSkthJz73Rj6kX2itnosy8UCatM//DV8LGtKjI4H9xpsj3Kze/dRxb55sJi?=
 =?us-ascii?Q?RIERzV1XojgyPiiHHFt+fT8quBjXq6lj66cKlZUv1dAyvnnPITrcYmM8J1LQ?=
 =?us-ascii?Q?KvRiWLqDLkP1biiQnRhsGcNGI9Yv+TrBbsdnTXt/SSUueb73sFTk+SRIoV/I?=
 =?us-ascii?Q?dJ+AIVGUvkThei2unCexfYi0WDAJVAAMdfHeR2SIrKSgu5aRBLQ8jRDkiLhb?=
 =?us-ascii?Q?ZXXVBmqaI9k27O9DOk6xPMBekkwCJhBnrk23DWI3A2VMDz7ulC/T3NYeU78G?=
 =?us-ascii?Q?xumvCexWsWkMq0uwC2sQfvmtrwVqy8n44bGEPSvv1pFGodiDbo+N0meptDRl?=
 =?us-ascii?Q?UDE8d2lAagZabC2J637W5wbqA0u1mlJoujeGeTRACAlhoINHZcUyhQ1/ioQL?=
 =?us-ascii?Q?2TQBzeTHufHUOPzUeReYuj5xRsnlZRJfXWsXZ6z+Wy1Z0aZzSBOhFJmMVLq0?=
 =?us-ascii?Q?Lgfh2Q5W5hTdxB9ExgtKMFYcdNDIyEJZwQEKkJqzeu7FIZ7iLnmi0AqLqyFH?=
 =?us-ascii?Q?Y+RhQrlUaiDWsKN1SkwqrfveMhE1bm166ei1tJdYsidFo8BgU72UZyVCP08n?=
 =?us-ascii?Q?8IF3dhFl5cLg60uBgeKk1pf7yA3Q5botCOaYE1A2r9cu4o+FSuXhSjj5ID2C?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a85ff082-01da-4bfc-1e53-08db71b2e2f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 17:22:13.0179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Rp51Vb1cb7YxmnH3Km6DYevQo1X7JNvI5ujP1WlqEctZWTEv8TyQ8u7X/e3BoDAOTON7DPrwG98Un2Olne4D4ChhMEaZGmvdKM9tJOOXnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687281743; x=1718817743;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3siVsSuY82pvBt5CxMP5IyvXN6FhQlFjmRo1xwKtSiA=;
 b=l5VHTnNyKWJlVxajp1IQpe85jtX2v+aw1oOIMbjP2D7pkoWkfGXoIW5x
 vClvxxn/CgqDEAhNcLbPnhsv1m11F3xlbhGY8orhMVz2xVP31CGtzk3UY
 4NPMXMTh0q1jaqBGBpxVii5X+Mmmj9ey2k5P/xSZjYDkW4w3fpNIY2pE1
 nFvg9txvpBzgLKkrQt5c5qSBTGkw5+bwbsqNGAUTYCHlN6ObkBooc8rTJ
 6tyFMVvuNud19SFqYwsNC+/foA9ufTqmeOKp7PCb5yeQCe9RZawVx1WzZ
 dRF4nV7ylILYsH4xjPKBfJGQwW7sbYakCQLoz46LKBx6IaXA52GaY/FpF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l5VHTnNy
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

On Tue, Jun 20, 2023 at 09:53:35AM -0700, Jakub Kicinski wrote:
> On Tue, 20 Jun 2023 10:24:54 +0200 Maciej Fijalkowski wrote:
> > Error path from ice_probe() is missing ice_napi_del() calls, add it to
> > ice_deinit_eth() as ice_init_eth() was the one to add napi instances. It
> > is also a good habit to delete napis when removing driver and this also
> > addresses that. FWIW ice_napi_del() had no callsites.
> > 
> > Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> Is there user visible impact? I agree that it's a good habit, but
> since unregister cleans up NAPI instances automatically the patch
> is not necessarily a fix.

It's rather free_netdev() not unregistering per se, no? I sent this patch
as I found that cited commit didn't delete napis on ice_probe()'s error
path - I just saw that as a regression. 

But as you're saying when getting rid of netdev we actually do
netif_napi_del() - it seems redundant to do explicit napi delete on remove
path as it is supposed do free the netdev. Does it mean that many drivers
should be verified against that? Sorta tired so might be missing
something, pardon. If not, I'll send a v2 that just removes
ice_napi_del().
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
