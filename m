Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE285F0046
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 00:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD30B41C63;
	Thu, 29 Sep 2022 22:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD30B41C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664490712;
	bh=cnpJuBfYzlBeDlf9QBUXEaL4PWsSBDzvEJ/mrB4WSWw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDemSTEY8Tg/KMUV3teXwmkU/TEILUY6LKKHZqRYC2JIUHBaWUzIpvqOOaIm+KCS1
	 Lobu/+dszvak6Os31mIlpy9pqgFb7iDZEA777I50+HbvGhTcLTU6tl/7h1smr45pDY
	 aBBYVhcviQbcFqMrczsYJBZJtzLG3LRFk4PdGd1PNU+hv9M/AbeQf8JVLwlSioOX1s
	 pZU/4I65BbMHYSKN9Cbr9qkEjSPR62XRfC74+okBXis0lGlCvW8TymnH3GgQqaqrhK
	 1XKDxf3ZIkS6FbuUJbhZKbySfUn8qxAweisswQhFqdTgwpoDhmf5ZgJWCSE4N/nEh0
	 Mql3Io7dXz3ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pb8qYEMB9HVR; Thu, 29 Sep 2022 22:31:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60D4C41C14;
	Thu, 29 Sep 2022 22:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60D4C41C14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9B4E1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9359611C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9359611C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WekfNhCpw87B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 22:31:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB9A60BDF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEB9A60BDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:31:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="281752908"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200"; d="scan'208";a="281752908"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 15:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="867579847"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200"; d="scan'208";a="867579847"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 29 Sep 2022 15:31:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 15:31:43 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 15:31:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 15:31:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 15:31:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dHW64clMuv9WODWkKlbHbCgGPkb1bCX/AgBolmhCchxUbNReGvwe5TeMkQvXRFxa5vrzlnWOcQXpvJxDQdVCvHosSfSCzKDlsI7bmlfejd7Y6xctWguc+D4PD6UJKs43vh+mlfKM2SleWmJc8PBGurg7qx1koQvje5JbnnVBWAcRoto06E93q1NIrYrcCxszk4GIOo4V+R+4HJqWJvjC/RwvQ2eUbjENfQeKXLpPGIKYa9KrDl5fSVIJZyDzGFuUQvuGmwivZ0KuvFcXIOI3TseB2EcBl5DmBN6e2dhK1eF/KJo68pYYnEv6rRT7jF8H3QM/yQYC8mJ43WopFcBNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uNoYnZn7dRoCFYF+Vt8zwAgSifO5KJfI1JKAeUkSYkQ=;
 b=eAqnKzBvmksjDGcm+h63s3xuGADkhH2/IsIKxYOQ/4JRqvj7sPtUvr9Q1czlWfntheZH7F016Bda83N7nU7dOBr4xZzVexwzrXBUcun8UbHvVIxWY1fQy/EhOHlr7Zsypw0G8jAzipfM2tiE1+H7sIxJ1tzk6NNUf9w8gMj+vumku0krPl7MkXNq5quj/dVcTGy4R8VjaOTUlO0b2O0jCsSvvQ0cdCjYjJq3sjpNJnFmoK/mYb+PqBRXp/cqVfFulUxp9OnM1l9sBlh2uLATby7stREZTUQXjY39VKZL60g54ZHCReJybXq9QTT/KaaO+j9ZHHnedGtmS2V5CTRlYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by LV2PR11MB6021.namprd11.prod.outlook.com (2603:10b6:408:17e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Thu, 29 Sep
 2022 22:31:41 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::b572:2e32:300b:d14a]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::b572:2e32:300b:d14a%3]) with mapi id 15.20.5654.026; Thu, 29 Sep 2022
 22:31:41 +0000
Date: Thu, 29 Sep 2022 15:31:37 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Message-ID: <YzYcyasuTqdPmbOb@iweiny-desk3>
References: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
Content-Disposition: inline
In-Reply-To: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
X-ClientProxiedBy: BYAPR02CA0036.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::49) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|LV2PR11MB6021:EE_
X-MS-Office365-Filtering-Correlation-Id: db829d74-f309-4aa2-0bab-08daa26a6188
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BaTP0QIU/Hv7jFyQjxxa6jyTT+dYRxuxp8Sq2YSsWtHh49gVcobHMIR5lBbXQq8YNOdE93el6nENDayL0XMuKtzVt/9NiDy5XEPtkqQ6Hw38MWiuNgCiAlvSfkb/rNFmU7+oJYib/AOyxWf/1nI6iaI06RuEpqfk5Xy4s57y4loc2syGpERY+9bet/j19oR7GoMM0vfufV7kZB8ZPqo96Wsu3T8IcHtPj6fVHKYvqjr2gw4Y1lM+vMkzz1LSgM1+R96EagHJRWViDuiEQ/5w8EmNNhzFB6XR+DKQzRpsr9MLYRn+xFepF/dNMTdvR2KFVQLngmfhgzNqw93g3Fq3v+IEmy0zs0N9NlB6FwfeBkbugLh3N/TnSjNj11fM0PogaTnAPBLyziD8wGxvLl+IzT/GZVhehREfbegDboGkI78zsnE194c/FH75jedFXCJGMT+8+k2Avhnq9rWVhe+BhywgtVn0MckcG53qGNZJ7wE86A1cQMYAAy2ERsBPIwHOdT38KE9AJpXyBfMXaAer5pbmXfFHnzea4mNstJqbzhJWxrIBvt2qx+mSHlRJYN02Mc2VZVtP/RWDkgZpCvvhIov1jKQ2kccf+M4Ptvoj0RocLjLuBAjlpxdmeZ6nXIt+OwdNqiWn7l7/TfwLT7j2h6OsL6bw7skDEeVZc90Jyl8xIyi66GHT4uwpU1zRO3dawRSUkmhWigLVvLg3BjGABA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6733.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(366004)(346002)(396003)(39860400002)(451199015)(26005)(6512007)(9686003)(33716001)(6666004)(316002)(82960400001)(6636002)(38100700002)(6486002)(86362001)(478600001)(6506007)(186003)(54906003)(8936002)(44832011)(83380400001)(5660300002)(2906002)(6862004)(66476007)(107886003)(41300700001)(4326008)(66946007)(66556008)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W4GYE3IJcEnA85LDDgFpPTjt82QzGnFNUj7xZHL4dfizpL3g9c7YhUPtPvBA?=
 =?us-ascii?Q?LPciu2PyVF0wOOKOYq6m9egGBPct31jKc7w9FH6jgzyyunbz5tFTxaqnswD1?=
 =?us-ascii?Q?tDdEcK+DaYnqQoJjjm/9KMP9opMmEfJAbvRzPVzbhkKJ5Voiw/+QTnfU3IYK?=
 =?us-ascii?Q?NGYs8VUkoQ7xv5BJL0Kj6uoMZoIicGYVkSTNcpeR9Sa3yJZsegXryVZiWOsE?=
 =?us-ascii?Q?2NyNGs1K/GBJnSuCn9H+4jvsL93BFmLYR+4Xy6dLa39Jh/u1F0JMrVSm1zSa?=
 =?us-ascii?Q?wOBycMuT69FMDmheI5l0/+2IcAXOdV2hUnFfIYnsjM5kgaU7awaFS2w6e40Y?=
 =?us-ascii?Q?Vpgw0d422ZTG75Xni7mooHIHyTszFSySraTprqG87bwZmalGaFwrwNvGsuGk?=
 =?us-ascii?Q?v9n03G2G+xlT/RWdDdPNJm4srsntD2imIOk3M/xvKCt/YxaN/5Er+KYVXMWJ?=
 =?us-ascii?Q?yGTCGSU7lxHw10hDOSxa5AMXioTXKkh68pVpmIQplKsk9JyZHJ7ctEFtNRNH?=
 =?us-ascii?Q?kL6TE1AXpt73Zp9lmC6MXESiJ3Iq3Xqta2DNs+3nkFUCyKTKk1M4LQWr8C1N?=
 =?us-ascii?Q?wJeI+WaV7ZXao2YZuazX+Mf0kTPN7uUCXG7dIEbqS9FojRkBPimj6PndtBep?=
 =?us-ascii?Q?66k+cRrtFJppQAlTdjc9fdy8m5taIPv9eZdbKq/qdGAGf0CWb/q0KVxZDrRz?=
 =?us-ascii?Q?RpJb9626LXZw5IpR3kwvCKIf3Np4DIq5tC2sT7IRQ9tkA81+4vAh3oSfMgWo?=
 =?us-ascii?Q?vrrDWJMUmOU/guENQFzMZzvKfcrtEdlxvN5XFO61ohbhGI1AgtrDE1gr9UeE?=
 =?us-ascii?Q?wT3tBGgYSfhCRtdlKzE8DvBW97QDp2zW72lBhJQSCXHGjM0y6DwBu9qxh9Vt?=
 =?us-ascii?Q?6PdbHvrFLQrV19OqDhrBggfzLuGKq9UtD8aaEP8sC9H+jGBBQDYYcFKShwOe?=
 =?us-ascii?Q?hJAT/Dc3KzvHB/tA8lNFKHUO8t91369uhV1IuRA4syz20fI7kuA/RSBbRnAw?=
 =?us-ascii?Q?Vq7vsni/Q1FrimmbHHu5Tw88GPPSRoyBzTj+ND8r03/4LeudEKUkOTsZI0DJ?=
 =?us-ascii?Q?JDH32WYtgSDKOx4abkhfOEDiOJkahgQt0Zt2fDfLLvvznpt+ArK+KXGLTlGU?=
 =?us-ascii?Q?WUsvdi7FoNNPhCsdUCO+HxACNMrG7JAss/uJ4xii2MA8QLZTulzOi2XEzpfZ?=
 =?us-ascii?Q?Ej23VKMhROk+YKVnm/8swxvMYEBsgTu3TETIhXgzIq4pp7OhUaKj7u5JQpti?=
 =?us-ascii?Q?+cR2h2W9qBDq6F7GlHdFJarMkKidow4Dihnlyde8HGcfpHgum1tUhnaS4bqn?=
 =?us-ascii?Q?xU3N/sH0TetUCUDltbjEbNYduv0dojTBrfp16oQAperuGVQunsprl1Fb6KWN?=
 =?us-ascii?Q?TX46i0z+AJRt1bZkx83uCub20M3eFHUqCFik0eUXImSXZd0ms/zj/Gow6fN2?=
 =?us-ascii?Q?KsSuiNDFwsuk/HGd/xHLg2XR+XNi3kfjzIhtXG78oj5E5tUP3HWrsh70xgrJ?=
 =?us-ascii?Q?lZchVcaZdLoJbZD8E+is0uKwvNfHfyT05JypkpZAwjwSo0oT739XuV2enHdg?=
 =?us-ascii?Q?WBr4BDhwCPqlRobRsidh+CaurG72Hl7JI2vKJqWO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db829d74-f309-4aa2-0bab-08daa26a6188
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 22:31:41.4447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6U5aWQcStf6IYILu1ClOUARZ5yVo8REDoVf220pfy+OjDVcc6X49oPQXssQ/ZIUDrsFCMFUv7gpe3S6/X7L5KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664490704; x=1696026704;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jt4COC2tiJpeUSedsUwuZGlHjDVE9271XYdi5pP+o4g=;
 b=dLeQXzxIUXG2eU75vGypaQ/Y/8b+ws3R4g+adBttvG9mC02g89TJvc4f
 3H540JsCR7nRXzuQgycbvCCJAmdJcupRyn/UVvgvy3z3Ke+js3OKwomvA
 rzLbzIzh6h++DQxORjNEmP/y3f7QMPzZoLLUXIypSoC1ZTVt74WNyYpiJ
 NJbfiKyHIjgVj2VFh7nxmBl9LPIn6/hayAgyZkr+WXCNC2rQ54kHrP4hf
 sVgpw2MeuY9sv7QnAyIz3lZr57MSGCkuk/dXYrj7fvNjhLB60hDTdazWk
 IaYMzBCu067efXMckF2kspyoVdyXTVPriNGy6LqezVPEZopuY+qwrgHho
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dLeQXzxI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH net-next 1/2] e1000: Remove
 unnecessary use of kmap_atomic()
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
Cc: "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 19, 2022 at 11:09:48AM -0700, Venkataramanan, Anirudh wrote:
> buffer_info->rxbuf.page accessed in e1000_clean_jumbo_rx_irq() is
> allocated using GFP_ATOMIC. Pages allocated with GFP_ATOMIC can't come from
> highmem and so there's no need to kmap() them. Just use page_address().
> 
> I don't have access to a 32-bit system so did some limited testing on
> qemu (qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit
> Debian 11.04 image.
> 
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Suggested-by: Ira Weiny <ira.weiny@intel.com>

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 23299fc..93e57b1 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -4229,8 +4229,6 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_adapter *adapter,
>  				 */
>  				p = buffer_info->rxbuf.page;
>  				if (length <= copybreak) {
> -					u8 *vaddr;
> -
>  					if (likely(!(netdev->features & NETIF_F_RXFCS)))
>  						length -= 4;
>  					skb = e1000_alloc_rx_skb(adapter,
> @@ -4238,10 +4236,9 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_adapter *adapter,
>  					if (!skb)
>  						break;
>  
> -					vaddr = kmap_atomic(p);
> -					memcpy(skb_tail_pointer(skb), vaddr,
> -					       length);
> -					kunmap_atomic(vaddr);
> +					memcpy(skb_tail_pointer(skb),
> +					       page_address(p), length);
> +
>  					/* re-use the page, so don't erase
>  					 * buffer_info->rxbuf.page
>  					 */
> -- 
> 2.37.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
