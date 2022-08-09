Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0059758D5E4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 10:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3407A8195C;
	Tue,  9 Aug 2022 08:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3407A8195C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660035461;
	bh=yg1IyoMY+Hm/q86EdTAQOsVKBCrvck0I69Z2cX5HrkY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X3STuTL/mvQzt3A0bFOS1Pg9LyN01Mn29Z8E1q4eMOhDMkvLsz28PrdBF9u+2kTFy
	 cDKyU5tWNEzo+Rz3NLynueMjkde8uCy66vteYHb+snOosevamR0FncT8c7gkZr04i8
	 mF4sTfstDgYEuXXTBGOmABnUsLUB3g9TXFwgjuAomwooSMpuwB1Pp36HQLyxecEKSq
	 oLSK8d3o+SSqC/bk7OeTNLuNvBt/RZCsuGJoHGQAHHGGXmQDJ8LMPMd6QQcBIotBVa
	 YPGskbhNtjuVT1/LJ7qqG/6FzIgT5z8/hlXnQsNJBJN0v8j1puM8fTvboKkOFnQrnR
	 Vu2cmDqcAe/ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-_S8BrxsuLu; Tue,  9 Aug 2022 08:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EF61818D7;
	Tue,  9 Aug 2022 08:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EF61818D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A52A1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 08:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 538ED40549
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 08:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 538ED40549
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UIznqYNmKFsU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 08:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 718EB40283
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 718EB40283
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 08:57:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="289545020"
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="289545020"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 01:57:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="731063660"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 09 Aug 2022 01:57:33 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 01:57:33 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 01:57:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 01:57:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 01:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HHSwSmYjDK/aJOAkOxHG5m41whm6Z1vzOlFVnn6bm5Ky2dB8RY64itZvsvR1ckAJvkS3VkiaY+IvIbAhmDX/acQnrOnE48pj8WKWHxSQnuSxyPzFla6XBDYjbWpCacbGWZ81BMpyYwxn177NdpU9vkuBN28uF2i6q66vt32+AHy4Q+U+YMMo11CR2I54QyNcbju5pX26od5+Wev5S4lzn9M8HMOu4a1bzdVKMHFvZpxP6uwcD3+W9bTNMXyXrU6yz0MSBJrbKI2hpKtztSQXyL+OobmmJYU+eW0rDDnwU/ZQQs2qDBlWwBfEAZurrCj/YeilLdj0ruFTEp+R8HletQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ps0gLg/AP5X6adMLUG0INlJSYCzGipDUDz5sLpJZE6k=;
 b=WrmWMpa8N5PGXQicnKooDjH/iDEdEHZoDy3c9F5mirQ/GrxN5ygDsm7DysznJrodgkzq5F3yu8AifE/EC0h9KSIsHx63ZaklpxmIRQfJydQ6rhx10gpv/bX9lJfhWA4hoJ20sqY2ZL5XdqQgEyFc3EM/XwGqvvRH6lktpom4i8IGV9Uyb626oR0HR6bc+0DvbbONEp5eWuVkerNrn251gRa5Oz2lW9yj49Sar08TaTD+fV17+XakIlY2W2lazPHAdrcb02BcK5mNfzpG4uA5a4cFOEGR4dl6H9PpLXFlQwV0/On0rIHNYH/Q1O/2BFJKPj83fguO2v1VPPFvWtEYTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY4PR11MB1911.namprd11.prod.outlook.com (2603:10b6:903:123::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 9 Aug
 2022 08:57:31 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5876:103b:22ca:39b7]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5876:103b:22ca:39b7%4]) with mapi id 15.20.5504.019; Tue, 9 Aug 2022
 08:57:31 +0000
Date: Tue, 9 Aug 2022 10:57:25 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <YvIhdSIAAoddYAD/@boxer>
References: <20220808222251.1966306-1-david.m.ertman@intel.com>
Content-Disposition: inline
In-Reply-To: <20220808222251.1966306-1-david.m.ertman@intel.com>
X-ClientProxiedBy: AM6P193CA0082.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:88::23) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a509251-aa4d-41de-0dc7-08da79e53198
X-MS-TrafficTypeDiagnostic: CY4PR11MB1911:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NIqrCjAOOJ0q1L22CcLrmtZNWeWm8K4vSC6yc/jmn7aEgHB80hFouUpnaknFBzzgFNMPKRu8h3clytCeJ3ZcprNoRqdBJ9mHUkllw/Eqn/VDEwiHbheyTQiKJjGe+j19ELpYATB+n1OAMSfh+p58yHaMkre6TpbgXfkA8nzhZypMnkoXhEJ46JQTM+68MWpCCAB95BMiw5n9N0QychLCah1cuQ/5ju3sSAbKgS0dPZBojVUOV7EDzBQ1+cMcRUew2RT++7XbPn5iFObuYaGqZR1XZ0hwxmPerqFLDVAwmHLFyLbqirdij9WUtZTJhFggU+zW9rBJJljnFbByv6R2gma2ObZqdvskmQGKroDDqzds7AEAyI8QFCoxI6GdMV1hi57f1svMjo2DmDMvwNMc1ZS8/fDRDJOQ4AUBHb6vyW3GJDwxFy88vP2phE/k+SChz4iZAPyfx511cR7xKdgreEibpphBAmWKL/f4COvKcJ0wTSjuYDDiorCFw17iuPi2u26KA2fsf1axDpoBiDrR2ksb1Rt69JkIJWadDTthHDE/DnXGXOTQIbqCCadv6Ggc+qipZ3bkSioaH+hAclPs2jzlofM6ibsqsR7MYr91FrvE3KYIDtiuhZjguYXXHUAXay+qEVPtJpvyGHTAW8SE8WLqizHothPMbGE+EBzbJrduvV7f4GcfkCDPXSwyRigD5xzeEp5FpNXEr9PWBP6R5iL7VW5kVDy07Mslvb8TUgZ/Vk8LJpNUsjHlcS27DMtJsCsIhys1Dg+n5F/r5RYLEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(396003)(136003)(39860400002)(376002)(366004)(346002)(186003)(41300700001)(6862004)(8936002)(5660300002)(44832011)(83380400001)(4326008)(2906002)(86362001)(66556008)(66476007)(82960400001)(66946007)(38100700002)(6486002)(33716001)(6636002)(966005)(478600001)(316002)(6506007)(8676002)(6666004)(9686003)(26005)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xCWA/phH0BJcbQgkkXBEcGieMscufyIlDZw8jq0N6c0G0UfB4L5KOiwgo2t5?=
 =?us-ascii?Q?Y+iuRJId6wI1R+kZTtoO58uSlXa/b0NarmRmND2zOp+vqhK4ni5XNuPtjfjO?=
 =?us-ascii?Q?5t7g47VQlyv5ooFiUMxUzReHlmxumoou+6LO4ewwzLI+wNr4qcv6rdx0Ns9T?=
 =?us-ascii?Q?IiZfZ2jtbqKsQ0S5BDci/mtfn7+hvQpEihTtFkailEVNsoMgCu6jXriGjEiw?=
 =?us-ascii?Q?hgGPxouZhHl3RKxSE8KKNLlfjtXZyT79dXrF5Qe89JJUDcsx78Ka9F99rC1u?=
 =?us-ascii?Q?jhtHlDuzIYp0dBSwCmoiDpXajChwdyTT5k51yrOu14SCjBvHjqxCWt+aL9eZ?=
 =?us-ascii?Q?dOcfIvet7okJuKj5v+VSdGrkQskmdnkPgKfa1AWHfthAKxDiR2/4JKSDQB0b?=
 =?us-ascii?Q?u9QvMqxzcjDWEJNfrT4IndbYudHne0PyXx3+sgc7vdPPVr2gKJcyw5QbeYiQ?=
 =?us-ascii?Q?wgjtlMt7OvYCYrK4lFn53fOECHgEPxuOlsKz98BGtIHWJGcikorL8h7S7QZD?=
 =?us-ascii?Q?FfqOGCPAoC5mfmcVZVVzHX65iZQ+41UMKuZCs1PgQEPyj03uBNqSdwec7d/G?=
 =?us-ascii?Q?fEWIgl0JUBOQvrD3qEHWVzEYCen4s42TvxLoGiF27XiRNelaQwNkHJhaK3Ce?=
 =?us-ascii?Q?0J0KxZLYdl0d++cxQn52B6s8pg37tPd0glvanXTLJ0um/1EAh2ZcXd5sv+kT?=
 =?us-ascii?Q?+2MHXbImRxUUMyfam90o4HkFrbtgYA7oxpflkb0FEsi0LNw4Cy8Vb7uSViF+?=
 =?us-ascii?Q?paw6n9DZKPdBMZpIx2ykrCH+br3WlBY6oUxDzARJM7Y7458jatwA2gh37Ky7?=
 =?us-ascii?Q?pWluLoCgArwgUQSeNdn2Qf6XYz//a1qCo1zG3tXWlkA+dDS1uGHSGK2MZLvj?=
 =?us-ascii?Q?BHZyXIECB5zmS5Ntk2WQhTDOw7iWY1hbZJTl86ablkw26j3qdeNh2rPeY1N2?=
 =?us-ascii?Q?eDzepkdk8deKiZjcAPlNW8joGow08fPPR7HEt9b4cwa8gTMaKV1RXeAlwc+l?=
 =?us-ascii?Q?Vv0iiak3HD0k6bEOPVZmtJe0Sz666gwC2VAjHVqYh5JTAd0YBEba6rlUazoG?=
 =?us-ascii?Q?264o4A3t88njU+0hqgQpYftWdm47rCxgfiiR1XzV+Vr4UELMl0WfPcUNpQAY?=
 =?us-ascii?Q?D/vEXMPWxGOPVLnNupeK3Wi4CKaFHgivVEOAtP5fBreA4OOW4v22wrzl7wNy?=
 =?us-ascii?Q?IuV9UaaB1SL+vAnUCdjX7ODZU8uABsWhq37CCk23Kx57BLQe/PQZ2axVb4ji?=
 =?us-ascii?Q?ICwHvcaNp5IxjF/fg9wf9MGs8h5pQ9fiaf/y76B1fp7mTH6QlfTYIlp84WsE?=
 =?us-ascii?Q?BLrsIgb/ygzmCSfdiUCNokOBNzqMcApfVeothzF59TFfhd6PkUcggKgTNPYf?=
 =?us-ascii?Q?RoDvSyuB6aRCgD3y0PPqL0vJUo8h9182qcuUF3D+PLKNHu76tpBDnOM24I2c?=
 =?us-ascii?Q?kfv/7xpiwcpnbTB8gs5iYus38URixNcsGvnjFTmjtNLTG+1kFLdlDJ4elIre?=
 =?us-ascii?Q?ACYXbpj/e8BODGS94oqnvHq/CIJ9RhStgb3BV6jqzPj6h6w+5gIKCmo8XPMV?=
 =?us-ascii?Q?QE1+fPNSQONIYVWIwL0KSBQrjpmO/74EBMyhQsRcVgc6MLpDe8H/S36zgxy/?=
 =?us-ascii?Q?tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a509251-aa4d-41de-0dc7-08da79e53198
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2022 08:57:31.4273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cbd97nI4unnw0J9kV5vs96pHuHqK7Lk97HCrrDDeq3IDqm8sNbflfrl9u6zBHfBpVLanQXeIFaEmQpnnmB90LhiPAdXwmCAgSBxX7RsbQ8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1911
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660035454; x=1691571454;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Agmi0P/7N4tPUiHF6HjA2vxaZGbQAtDAdUBrDpAKa/0=;
 b=OshQ7o33hC1cJ1QG66pzLQNfB8Yrr3K+XqvnFhOKitYLgL1tojfTA9GV
 j04HGeqhcQq2NWuZRHQvOSk2xjW56nJNhv5zQzsOM6kpuQW0IP8ys50Fx
 /TPkY60kvgWVdmyYDKaC397rUzfZtXFHVlkFVB0tvKfhgTbc8xZoCIXiA
 ThJhl+/VK0Qcuuzjl4ppApETKHUv6Z97FeMQjXdv/Nd/wofRvIQV4Vbfn
 7o+h0bGDO9D44HriY1+UPTvl8iK/aYjU/buD8L6JUsJCwGZguchydlUh4
 SsRUT85wzw20ab0k5XYDFa24eJ+3Up0po80Ky9x2ROnF9anH05QWmyCi0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OshQ7o33
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Don't double unplug aux on
 peer initiated reset
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 08, 2022 at 03:22:51PM -0700, Dave Ertman wrote:
> In the IDC callback that is accessed when the aux drivers request a reset,
> the function to unplug the aux devices is called.  This function is also
> called in the ice_prepare_for_reset function.  This double call is causing

nit: double space after dot

> a NULL pointer dereference.

Can you include the splat related to this null ptr deref? it's always a
good practice.

> 
> The correct place to unplug the aux devices for a reset is in the
> prepare_for_reset function, as this is a common place for all reset flows.
> It also has built in protection from being called twice in a single reset
> instance before the aux devices are replugged.
> 
> Fixes: f9f5301e7e2d4 ("ice: Register auxiliary device to provide RDMA")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index eb40526ee179..9afcf030201e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2397,8 +2397,6 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
>  		return -EBUSY;
>  	}
>  
> -	ice_unplug_aux_dev(pf);
> -
>  	switch (reset) {
>  	case ICE_RESET_PFR:
>  		set_bit(ICE_PFR_REQ, pf->state);
> -- 
> 2.35.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
