Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB22567652
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 20:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D6CC60F4A;
	Tue,  5 Jul 2022 18:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D6CC60F4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657045348;
	bh=3ySDoOpf3HIt789ZxlBjzVavb4m9blynHZk7tWsR2J8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4apu4vW9jNRTk4c7ct50isSz2U4HKEB74gvw8ZhK3SAWXNp8X/bFZyU35jQnvBfXz
	 DJsbfK/SR6rHknBG6+9KTmdkwRcAahL61p7qVzjRBI1dTzScRluumeVBRZQQvs/LSQ
	 4r3ozxOVefMqHImFhFoj5OPCiHxofblkuLMk7mkMiB/KjYuWzX3LVUSuHZ7uoTFeub
	 +RRQHtHudxd1N4Fv8C8Dr+tqwjjtMR9MBJvGy1NikG/tF6tABeS/b6ApuNV95G7YHE
	 ktwZ0wwN0u4n0QqopXpO0wgzyIlg94dV5srmB/VG37CZtyrA/y2w/S6/Dc/GIz94O/
	 ZocbzcFvuf50A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nv6rHiSPye81; Tue,  5 Jul 2022 18:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A01460F33;
	Tue,  5 Jul 2022 18:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A01460F33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA1E51BF591
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 18:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81FB160F33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 18:22:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81FB160F33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cL8XFaOL_Ahq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 18:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD92260B02
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD92260B02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 18:22:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="308978671"
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="308978671"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 11:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="769750827"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 05 Jul 2022 11:22:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 11:22:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 11:22:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 11:22:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 11:22:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqG7FgE7Teq2dqUEaIyEMJ72s/cUfhn+8lBpBHrA7b9d6repzh9zq1uUnwIu+Atf4Es4bc2AjvPMDT7j+lPHbpBNKYDdiE5HqVtGtnxO4+rBq913+84jRxx6wsRk9KM9UBFdQ3m49hoXhNF3rZBDdKnwgurCkFfPC04VVhXa09UqW0mh2yE1VuUhTsm7fPvFfYdZh9SjcbfV1IPE4z/bU53QV9LC8KSr+ROyXMseRHdc0MUoOkeTxCkncY3hFN0VKSNsAUDrJOTCbOLF1L1+laDZmLCk2+Jtjg8w9SgBJ9of5Vu847poapl+14Bj97D3iav9ZgOFUBzX5yij10S1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKEgrhQfLL27TPI3NBy2qLjWj1+7HLvcvlI3BXVLyac=;
 b=hLgRe0QUNEdEIEvl4PeqSd/DzQkAS38m4lgpjA7tl7xPXdg2p2edAxfhalDhsRqYQhg/gRkZ3nPSNXumFjJ7IUapdrg7mLcpiCKFIWl6LMzboc8U1gGCJLfBmjUyuW9JwAM+Bi+h1NMJOgLFKd5xE6YwQJJbzdTCc0ms3paf4bMZWmBdpPtF1nNgPUx4Q8ntw69oDtVomjpnzMap3SmHt0F1eoYbB9RZWyKxqOroCgRsNi5gs358YWcrdjYXJBMX5ScFahL6PZpuq9ST33eQiUGNM5xcpcXlfNsHTm1c0QP4JYkt95KWdvDOA0fPrOP3JxC9K64UtSOsL6z2qgeiwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6311.namprd11.prod.outlook.com (2603:10b6:8:a6::21) by
 CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Tue, 5 Jul 2022 18:22:09 +0000
Received: from DM4PR11MB6311.namprd11.prod.outlook.com
 ([fe80::f188:57e2:349e:51da]) by DM4PR11MB6311.namprd11.prod.outlook.com
 ([fe80::f188:57e2:349e:51da%7]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 18:22:08 +0000
Date: Tue, 5 Jul 2022 11:21:59 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Message-ID: <YsSBR5nJovFMHGcB@iweiny-desk3>
References: <20220704140129.6463-1-fmdefrancesco@gmail.com>
Content-Disposition: inline
In-Reply-To: <20220704140129.6463-1-fmdefrancesco@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::6) To DM4PR11MB6311.namprd11.prod.outlook.com
 (2603:10b6:8:a6::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d933dc5-8c89-4b51-c902-08da5eb3458b
X-MS-TrafficTypeDiagnostic: CH0PR11MB5444:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3tj4T7UJS3+jPHIbeAPfb2NtX8fum9ry+qaJd76yIhkAZ7MdzTnAj3lP/vnahJBvqnJ8p5Cwm4ENMdGcd6HzjrDXXjU5gLiuL4CWGYf0O8jwIjCnCrWPVSj0vLMrpK7Ixbk6i1hR586G67zm4yqOjgbXUiwOSZuhaiMeuOalkRzndY1UVso2XE6FZvoKYwyScTNuBTxaoBqfllYZwBMMzJ2GQvPHvHU8gIgTLmReE+mzSY14qK9q9v8B4jJd9riCQPfKtzY2kU4UL/yYQzGLfXFZct2rZsZx236kmdD8jVqtspSf14/jFuqqlcRvXT7Sxh41ZpUVvRfdRSaPwm/LYDBM6ED3BqlUrIcX0cWPThvRh15gytyWEqQzmpuopXf3gGrdTj3x41KTzTw8vcOeeBNqgvlGPVDbObYO2wwa7OTGla/Sn2cYcGm+2V1g7+Z0SuEZqw0Vo5p+n3S/ec6+kkkOReMJJ5V0LVudt8CtZ1aOlVPwfhZycaAwGizh0uL/brVaUdaOf0gYNJAXFN0s6p2q/N/8fEFnoH04R//a87mAZ+fKFfrj24TMJdBJDy00ue7ZQkoudDXvo/KNZQyZTl/V7Ao3smce2De8jctwLhDndFIdufpQmYmQSEoVV0L8TlU76GoiC7r9Vb7XF9Zx/qaajWfFkYNciwC4W+cASk1x4+i/cZbJn1FdwvsVzhXuRBNqZZFBHHzxJIb5GfIZYluFNY0mtKfnvhwZmUf76LJkesjbAu1dQVt1Bj4D5pBv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6311.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(396003)(39860400002)(136003)(346002)(376002)(6506007)(9686003)(66556008)(66476007)(8676002)(4326008)(6512007)(66946007)(38100700002)(7416002)(5660300002)(2906002)(86362001)(44832011)(82960400001)(8936002)(33716001)(478600001)(6486002)(41300700001)(6666004)(83380400001)(54906003)(6916009)(316002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EIYyKp/A0C5lOkLEzgtBLLRZ6f7wlFtk1qUdKIZaLaE/av2ZrAA+LFLeXMoq?=
 =?us-ascii?Q?U34evaYna43DuAWz22tipT+FAUVz2s9bsn+l8w/1bvUHjmJRcj5tfry+rLfy?=
 =?us-ascii?Q?0aBgdC4bo3GpQ17iQU6FHfJDTuAdixotGOGLzPUOaNqDE56lcAnHSM/Am5Rv?=
 =?us-ascii?Q?4lDbcvZO4rMGa0LkfvIAttKfSHEo6U2JYqA2dbmGRCqlKRQtMW52H1gtr8XP?=
 =?us-ascii?Q?83lwNCaL2bWPMSWqXiNqpHwAXlegL1scCnbdOdOh/24S+jd1RilIlOtrHB88?=
 =?us-ascii?Q?DBsJzCHaKTGK47DLfml34P76cnuwZDxy1rtxCuPGNn5H+Q2X9F2Ai3byEiGS?=
 =?us-ascii?Q?vOcmj2beqq3Q4w4Dk1rUXRmG/JwgBYVaD2BrJkpCcBzLPzccnTQ7oYv3mqvl?=
 =?us-ascii?Q?QLKMoUYjkja+hygf54/vQ4c8yE9iR7AvG2Z3RPFdeBz5AthmL1aiJm3pxdi1?=
 =?us-ascii?Q?8GU9c3867zV2JfxKXicZv2racTnwrXNDHV5SI7DO2T5gtfb1eG108yqpH7Zg?=
 =?us-ascii?Q?gIXaiMvPPs6rKtFdBOhqYLWYiWgB1olU8m+7fyVthfS+R/FACH+DfNkIunm0?=
 =?us-ascii?Q?rKj9R0etEVo2XwRCVqLBCvwOoIUzyOLDSvplq8x2LZuTzkK1i/DHXdPljUu/?=
 =?us-ascii?Q?8JtWBiGpldz9sPonCO0qAseiKuTU1rob1RPI4iHkauKx8Ahks/Z+VZng3taY?=
 =?us-ascii?Q?oyjISJ8QBQ+dwZKZdyVwthX5Y0UHr1hiQPma6mdxjF2mW/F223X9MFU4E0mu?=
 =?us-ascii?Q?iZ5SSWVaSc2bDe5rcoBMbXPS33OFd3UW479p93e9Pd802GFWAXXyYRF7vaar?=
 =?us-ascii?Q?LsN2nuc6+GFd65vt/cPbtHAqvIInvNrucLHsca3CygqeqV01RP4J7H6o3Ij7?=
 =?us-ascii?Q?2UvJRATtSgd47SnoxoobfDfTRBw7IpRGB2FH5Fx+HtGSejDApa6UZsAXLqcu?=
 =?us-ascii?Q?oIrlcrb7c/GTWe/dIUK5AiASDa5i1fQfsULUsAPICzlJZ2l3C7NU3OInEGos?=
 =?us-ascii?Q?tSerRKA2QwZ9bW0d873lT6G98kRMCwJ4TcZfTo2jh8UpZX7f8e8yjduBxYTn?=
 =?us-ascii?Q?zjO3799L1huX6Ys7zEUafioYjL4duaRGG9Tjmv/0qRriGJA4OPRoSkqOJmbG?=
 =?us-ascii?Q?TnBZ9NFGSsWUsnt2rCRmM/A2qShDsl8kd9TiuLrnfKdT9GguC/BeTGPKc0Ku?=
 =?us-ascii?Q?XUmoVdAeAA1YyZFaAExeaalCDCOiuIjr7pV3YMLeRYJ8SaNXYUSc0Fe5uCB7?=
 =?us-ascii?Q?cVOp2JHcHoHxHjHXVhmMzS7frrhq26KrrTPYidt7gjtDkzqnSQAI99hfuuS8?=
 =?us-ascii?Q?stE1/0YYl/rFOXNULgN2IMmXOo7t0IQCzdwB9z/y1eMPp0boC1wreBGQNwTN?=
 =?us-ascii?Q?W9QMjrH9uMwkZZiTPBZ+XhW/6E2nIHZ9R5b7ZnHoBwnhGYFHBSgYAcZ1dZBB?=
 =?us-ascii?Q?IYvTGUPGSkf3gAtz8bxroRmS96x/YEizybZTy1ybECzolhHx/IoUrRNL6JdS?=
 =?us-ascii?Q?dAbZgEVOVJZLSBl28oCW2EaZ/TLD7Echnyy2xc2ZAaX8zIVn3rQf8U75qTIg?=
 =?us-ascii?Q?RLE+tKiAWpbrmzLYRUYdr0ZtL61UNPT7QbBnoA6EbevLLMuoQawItb9vjAR5?=
 =?us-ascii?Q?PQHGjk6/Wdyvpg69YK1jI7lq9CTYnRhzamVzilSvJWiV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d933dc5-8c89-4b51-c902-08da5eb3458b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6311.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 18:22:08.7635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NW/hgAuzwLByyKKMkWAGrHXYO0VAK3/XfIb+2oqcvr7Pic3MkQJG/ktqPYOo11+O1F1SB5Y1ov8wiqmsTq0+aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5444
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657045340; x=1688581340;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aIm1GEPIFUQ/81YyBX4efJ2+309sKtxv4UX3qSdeuOA=;
 b=dYF9dPv1ELuK4bYYDn/HdHAnS+R3MncoaJKux+oI3EbLj6yTpT67skxk
 sU0W492qJ2wkClz12bC4dK/LnUxwhkX+s9wDdJq0bm2/RbSJ0HVHT709Q
 JhlEGOi5D4IZl+2yEXpNCTAqu41wZ4Hu5BbLdV51m0k+IxLlkA7fPba05
 168ufD3j7LQgG/ekIjuUWDEnBVy7Ew4zUVrN/dL8hrN3rhWRAC0Aa4EIR
 Rfkgq2VEQhzmzWrFk/Jpw1l/SCOhyo0qvNZz2v9yev0NMFlHcIvsv35Nn
 FSdKZgnG14ZkB8HooLW9cnGd1JodAyl6H7QNTUmlGc+ZmzDwj7L+57DmO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dYF9dPv1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org, John
 Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric
 Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 04, 2022 at 04:01:29PM +0200, Fabio M. De Francesco wrote:
> Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
> there is no need to call kmap() on them.

I'm still not 100% sure where this page gets allocated but AFAICT it is
allocated in ixgbe_alloc_mapped_page() which calls dev_alloc_pages() for the
allocation which is where the GFP_ATOMIC is specified.

I think I would add this detail here.

That said, and assuming my analysis is correct, the code looks fine so:

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> 
> Therefore, don't call kmap() on rx_buffer->page() and instead use a
> plain page_address() to get the kernel address.
> 
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 628d0eb0599f..71196fd92f81 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1966,15 +1966,13 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
>  
>  	frame_size >>= 1;
>  
> -	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
> +	data = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  
>  	if (data[3] != 0xFF ||
>  	    data[frame_size + 10] != 0xBE ||
>  	    data[frame_size + 12] != 0xAF)
>  		match = false;
>  
> -	kunmap(rx_buffer->page);
> -
>  	return match;
>  }
>  
> -- 
> 2.36.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
