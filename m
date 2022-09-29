Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2525F00D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 00:41:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84B73611E2;
	Thu, 29 Sep 2022 22:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84B73611E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664491276;
	bh=wzL5YF7OXSskX3Tx4+GLlG+yfW370+q8Grp6jCCkke4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=688+cZ+PG0+c2UDAtldG6mbDEsWjXtoRLVu3fy5qU4VBgaME6KfZnEJv5Kwjryq2F
	 6Cgrqq66vVgrU5nZdFEl0psAiqZbNlqoCVyIfR5zoZUX88v2t6eo6cpRo6CV45mDa/
	 7Mu1r4MKPOvagpTLKVfQB1CL/1ns9FPLNkuXqRjXoElFTVq+2an5x9JvAhcmn7op+3
	 vM+q9XD2N8uVt4MXJUrBfo9hKQwxRBKZoBTNGk6raDMk1IjD5VFq2CB9UceegNRv0k
	 gL5LKLxzzvRnbAme4kcBsRLHGvfxPWf2HkaIzAS+MKNKYKkY7bSbo9s/n7+CkYbIbE
	 3dVBMNAsGHdVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7JLEZmBzETx; Thu, 29 Sep 2022 22:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 735C2611C4;
	Thu, 29 Sep 2022 22:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 735C2611C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 567431BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FDDC611C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FDDC611C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_wOghBInV5F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 22:41:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ADC9611C1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5ADC9611C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 22:41:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="285183754"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200"; d="scan'208";a="285183754"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 15:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="797744007"
X-IronPort-AV: E=Sophos;i="5.93,356,1654585200"; d="scan'208";a="797744007"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 29 Sep 2022 15:41:01 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 15:41:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 15:41:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 15:41:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 15:41:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4of+tHqw0jsSGbRB9XdIxJYSSc9f9dmYR710midBS89JCC9oONZfHPcIRXmQIwB4qLXduah2KkBWN4uZjiju4/WTO481/ZDqrL8ySVkSIsnW5/ck4qs07DS9mUa7tr+7vuonVDEEE3UbX5glir35bQEgmwK5uFccZQVN/0ooTVC5p8k9UsdauaBZvBr8n6k2K4lZEmuUPZZG6jafB2ZoFR9c5qXPe573l1/2dMuG9YZffEZnO2U0HsU/+mOU103046Y5Q4dqVk6OWadW9YCxqsY8k5QMHexC4AllW7WEdN4krfvu/C2AdTchehIrnhGKQKcGxPqfM9vAZ+7zOsy2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4MTC6/QhOQSD51XlAiD1AyC8NReUyiXaVkuOb145Twg=;
 b=dXV1yl2gay1mA/tuMeRet/KbvQ0EWeMyNzFePdN4qEu9N1aWhLZA1gjXUYFN5u1slyuIAva28sZNMn/3mQeDm7JLAM8lU5hLdYhcQiwp00qza86b7V8SAWka6ruxOeoEaDelj4KCHeiXWTUxnYSoDm1Mh8QaWYaG/3hZbNE9rrSBfRfZhlgu8gLlM38zyN1tTAH/9rih2wR6TaGwYhAHxyZ1Fj2F5Zyw9NU2LUMVuxN5R8Z26tpYDqGQYRpsVhfl4sJT/j514Hy24w6I7luyyTz/ZEaBCTXOuWbXlPlcGmLDkqa6JaWKvKtz2+stTNOCFgNoKvoYv5u8S/Tl5v6tYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 22:40:58 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::b572:2e32:300b:d14a]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::b572:2e32:300b:d14a%3]) with mapi id 15.20.5654.026; Thu, 29 Sep 2022
 22:40:58 +0000
Date: Thu, 29 Sep 2022 15:40:54 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Message-ID: <YzYe9h8gbgmNDzK7@iweiny-desk3>
References: <20220919180949.388785-1-anirudh.venkataramanan@intel.com>
 <20220919180949.388785-2-anirudh.venkataramanan@intel.com>
Content-Disposition: inline
In-Reply-To: <20220919180949.388785-2-anirudh.venkataramanan@intel.com>
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|BL1PR11MB5317:EE_
X-MS-Office365-Filtering-Correlation-Id: de112783-5fb1-453e-a13e-08daa26bad82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VVOmC1a8xiDzRrbjLyohwphGMpnAeh8doSA/nRgPH9FDxkr14m65EeZDjRNlqy1A0hHuKxsy4KvuO2NPbvQnvZ2j9/zUu72pMTYX95Vi12Cwh28n7D/qVhPHsTJTgquqWbtxNAFOm90MGPnrAJzDcoxkdcG8Roc7PULgbcZHKY1G+/82DwK4wWISHJoKmL6iDB3yRCuRBydPo8iK0GNT1OolZR+zTj+ExGMSzIg+c8P26/+pn8C/Wmzxmg0mCQ4nMQz1IhvYfTLsPYCcwsIxLFC7ps7paimMJ+5YiV5bn6llk+dfbabpMeqRttaI7KGr9Cx+oJb+BWUocxNdg6Is23tVpjzpcmVfVG020kETTLc0J6SRSGlt9Z2z5wBPUoIsVp92Lb09q1FfIghOYjpfBmx410D6NMXUdC/+IYxIbnwm1OnK3Xi455TQ6lMoPSvavWR2qQNyEbocUxHbpZBUnO2KfbOpWActUi9ZIFSZx55kn8ET3i4W/u8mxCR/DlD0Syt/quJJxU65TeUXIvRjNIxcaGQ7c1DB3sjNIzT8j2uV3WTfSf8QErusftwezsFpA1ykk3qXRD2g4Co9+Lyi1Pc4j1+tpiVEF5tiiITWlaS5LtR+PgK81weYNY3wzoZVgf+uuPLZ5ZwBNAdkSYIzq0Aep53YkNVYaaCyxEKqV5FrCJHBJc32qU9Be2S9lozD6yWaEDBKSLGXay0QRo7kpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6733.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(366004)(396003)(346002)(376002)(136003)(451199015)(44832011)(2906002)(26005)(9686003)(6512007)(82960400001)(33716001)(38100700002)(41300700001)(8676002)(4326008)(66476007)(66556008)(86362001)(186003)(66946007)(6636002)(54906003)(8936002)(316002)(6862004)(5660300002)(83380400001)(107886003)(6666004)(6486002)(6506007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9FqP5VI+HkIn9v+J7vLhy99wud7ZAB2AU37prOVR5jRoLmik7QThxJ6t1x0i?=
 =?us-ascii?Q?go3HWpEjZAGkqFON6qMXkmvpuZCD1DFrOpsYoLe2FsqHEGZMlMsCqo+KoyJ1?=
 =?us-ascii?Q?7yBISrmnNkg87H2uPBAazsprv5XZvKmg9S7NK2PJ347WgzR/V8FMhli8IQz1?=
 =?us-ascii?Q?6Z26Pyy8dUdQ8NwJwZbLYUHxXEsGp7mTL4ylxNDAvjEqTVVUiTg9DjpQ4C8k?=
 =?us-ascii?Q?s0cE7N5gcoNC0Cj6ChIcC36LpwxWl94q7BIYaociu1DdXdYIVQZg3qmL3u4V?=
 =?us-ascii?Q?BJnpRwTaEIb1XWOfC1JF/191m6t7FWwKccLP8LC+4fKY/XpVP9xD2cfnk/2z?=
 =?us-ascii?Q?YM8gcP0W/LxE1shm6Rtd5061WWt8oZ5Kr9l+XW+voT+q3t6p3j2g2B2Ka64R?=
 =?us-ascii?Q?upnFjakGpdTNAlu4WFaM1KH8SeIRBltQyqVWSQrfNOybkbJEPXaQZR68kKZw?=
 =?us-ascii?Q?thI5eBpfw6QVm4806TNjqO1BkZJrIz/gFF3naU7ykGniZBG1vKm2p/wSwYo3?=
 =?us-ascii?Q?YBqKa2rhEw/zvlXAME/NHAVCkMQEkuV4hoCL2flcnWAwaSsYg9idMTMMWW8h?=
 =?us-ascii?Q?xfBs0y2ziUidaGsyPWSbEga7yF557N+JVFNtEEiJqF6XiURuhBb6LQ9ionXz?=
 =?us-ascii?Q?V/bvvjNf2ENm1PJZM2r2LKqxxovF4o4zxsuOM/sl4v2g+YzX5uXOQJR1AArB?=
 =?us-ascii?Q?kF8sw8Xv4QiO41ClC4wA9DhTtER43ajxZgIJpNhANAvMfq10XCwAJJy45TvF?=
 =?us-ascii?Q?cvjVOlFLB7YG3IP0csgGmkx+++k3ZGIGJ4pFoLLhXfGzLrHf1MYWMkSE1e+f?=
 =?us-ascii?Q?kTL2wI9YC1L0PzHAGJRKNQpYjfk586gLr4FjVhPtjl2cU32LJqaerZqLFmVm?=
 =?us-ascii?Q?72OUsa9WaNOUP1Anl9SpYyedUqluZAp6qDgbtnkH/8VYQdcVjRHR1dGZJ0B+?=
 =?us-ascii?Q?LP9hX0a1bhDWMps/hwGjUFb4J4tyg7Qt14mwqNi0HUEca7HodzvbNwB5mnPi?=
 =?us-ascii?Q?2uTXchqk1fpEQYk3kEFea2WhJanhEvw0UzuPisM7ueIFoexptA+EOT8Qr5pK?=
 =?us-ascii?Q?XaH6NIvw2MvYPrKXksPmRE0E6z2wMhuhXDY2DgeXkDAIf6BTlaAoZRCI9Cc8?=
 =?us-ascii?Q?dDvMzrlu+X8NMTthn9Yp0CAztCy8XJGc6yG1RGJNqU2VaBglb9IX/wZ27jCy?=
 =?us-ascii?Q?r05HuQSNdHCq2LP4v5TGr9pmo6M7l9C1GRisaHJiirGI6+jTyy+9zw/tMgK9?=
 =?us-ascii?Q?EFIkrLog3OABbLHjHWC2MyCVrT8TIXfX2U4ev+IJHGj7oDCC3Db2l+KrFgLN?=
 =?us-ascii?Q?3smr2MnoLr2+eaau6n1KUqL2+yrMazqK1eRn0ULSXMozI3m8HuAqAqjrpksO?=
 =?us-ascii?Q?+GyOnDDD12sET+DOqZ5cLwzJ6nqrv+0+sKrvACMsdqrXbpoge+VgBk7I6PNh?=
 =?us-ascii?Q?lfZEdaZ4enqQe/csgY6MDd5MayYymUD8KweK/Eu8+vHG7Y9HuCJbVd+3jihz?=
 =?us-ascii?Q?DuGKE24QEo8UdMkA0Nq8LDcQIFGg13bkD5rKhi+r3/o3gB4MSr1KMY20Q9SF?=
 =?us-ascii?Q?Gbdwoz01rfNbjHbeRbdOR3yuNOuxP1FjJftmwQOX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de112783-5fb1-453e-a13e-08daa26bad82
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 22:40:58.4284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /WYAoBQsC496y0IzTNrzpKSGqh7n8uo+dcCjmo8bV6tktrIsm2T4DZnidx/bBL6Xy0rrnh4dG3PjqSArllmuXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664491269; x=1696027269;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I/y3BqCNgxnbITP1IqGY8excokeOtr/u+87w+m6zJrg=;
 b=mRX5ev0lNsfCa9DB9P4xVL6GCKoamkRl8EbJk9UM5jOS/R7VJ9gkBi7z
 sYY+9bmERbsQOc1RPoHUU+vXN7d5HMFGQx5z9tY3A8nJjOmSoMTyR1EYL
 NEQ7bJVOCTTmyHj5LHVS+SmRIcl01hV8cYgI+/Nr8FhyTO9UPmirkCV7w
 x5cci4XgMsGnzeLJSI7/8rUhjPsM6KSUfweuPGD6vhqBlFX66ZzdOYzYn
 N73/sPw9RPwEA4pbX7MTAQ7Aydi6cgJ2drpcxD80haHCdbsPBNc9qMtYe
 gUrJ1vxPFXT4GpxI/1Ev9fbdeRsMU6wrIQAZixGEQ9eprxdL8eU7ky0bE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mRX5ev0l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH net-next 2/2] e1000e: Remove
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

On Mon, Sep 19, 2022 at 11:09:49AM -0700, Venkataramanan, Anirudh wrote:
> alloc_rx_buf() allocates ps_page->page and buffer_info->page using either
> GFP_ATOMIC or GFP_KERNEL. Memory allocated with GFP_KERNEL/GFP_ATOMIC can't
> come from highmem and so there's no need to kmap() them. Just use
> page_address().
> 
> I don't have access to a 32-bit system so did some limited testing on qemu
> (qemu-system-i386 -m 4096 -smp 4 -device e1000e) with a 32-bit Debian 11.04
> image.
> 
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Suggested-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 321f2a9..05a59e5 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1393,21 +1393,14 @@ static bool e1000_clean_rx_irq_ps(struct e1000_ring *rx_ring, int *work_done,
>  			 */

The comment just above here says this:

1389                         /* page alloc/put takes too long and effects small                     
1390                          * packet throughput, so unsplit small packets and
1391                          * save the alloc/put only valid in softirq (napi)
1392                          * context to call kmap_*
1393                          */

I'm unable to grok what that means exactly but I feel like the kmap part is no
longer appropriate?

Maybe just delete ... 'to call kmap_*'?

The code itself looks ok.  With some clean up to that comment:

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

Ira

>  			if (l1 && (l1 <= copybreak) &&
>  			    ((length + l1) <= adapter->rx_ps_bsize0)) {
> -				u8 *vaddr;
> -
>  				ps_page = &buffer_info->ps_pages[0];
>  
> -				/* there is no documentation about how to call
> -				 * kmap_atomic, so we can't hold the mapping
> -				 * very long
> -				 */
>  				dma_sync_single_for_cpu(&pdev->dev,
>  							ps_page->dma,
>  							PAGE_SIZE,
>  							DMA_FROM_DEVICE);
> -				vaddr = kmap_atomic(ps_page->page);
> -				memcpy(skb_tail_pointer(skb), vaddr, l1);
> -				kunmap_atomic(vaddr);
> +				memcpy(skb_tail_pointer(skb),
> +				       page_address(ps_page->page), l1);
>  				dma_sync_single_for_device(&pdev->dev,
>  							   ps_page->dma,
>  							   PAGE_SIZE,
> @@ -1607,11 +1600,9 @@ static bool e1000_clean_jumbo_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>  				 */
>  				if (length <= copybreak &&
>  				    skb_tailroom(skb) >= length) {
> -					u8 *vaddr;
> -					vaddr = kmap_atomic(buffer_info->page);
> -					memcpy(skb_tail_pointer(skb), vaddr,
> +					memcpy(skb_tail_pointer(skb),
> +					       page_address(buffer_info->page),
>  					       length);
> -					kunmap_atomic(vaddr);
>  					/* re-use the page, so don't erase
>  					 * buffer_info->page
>  					 */
> -- 
> 2.37.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
