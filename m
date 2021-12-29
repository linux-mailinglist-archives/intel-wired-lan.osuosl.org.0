Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C994815C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 18:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 099D2608B7;
	Wed, 29 Dec 2021 17:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhVuAJkzxKC9; Wed, 29 Dec 2021 17:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B7E8606D3;
	Wed, 29 Dec 2021 17:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6E01BF36C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 17:20:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67A5F81499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 17:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KBq7DH0CuHKr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 17:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43A2780C8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 17:20:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EDFA1B81904;
 Wed, 29 Dec 2021 17:20:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2B5EC36AE9;
 Wed, 29 Dec 2021 17:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640798414;
 bh=mD55XiGnaxJafKvRs4q7sk9He7DhV4oGwfUm+8MHPSs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=c871heSWCTctS4GfXo9h3MeEdIN3+xN1XMTHmku30iWA8RKuAHoL9vEPa3clSxk3I
 lYqgCYWrSaJvGEZkpKVFAlQ4aUWz0M2PkvdzVNqxJaC37+/H1MBCvkHWOKkmk8kwm1
 sM3b5PIfgSqaCVOjfeV9864HlRBayb4Fua7XLpkebqflAstoOxvBMvEvKw31u31AL2
 iTr8zj8c7GeUnyCv0B2NghKXe3exAf+GB/HqdoF3SN797ly5jlaudliZlisbwPBJMn
 kAX6iM2/LNnkDDiHXND27O7a4DttQZLqab3RVRCQmetqRSTEGQP4cWlwwRwo5w887t
 ZwiJE97ykLWog==
Date: Wed, 29 Dec 2021 09:20:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20211229092012.635e9f2b@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <5a82690c-7dc0-81de-4dd6-06e26e4b9b92@gmail.com>
References: <20211229004913.513372-1-kuba@kernel.org>
 <5a82690c-7dc0-81de-4dd6-06e26e4b9b92@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2] net: don't include
 filter.h from net/sock.h
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
Cc: linux-s390@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, netfilter-devel@vger.kernel.org,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-wireless@vger.kernel.org,
 ast@kernel.org, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-can@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-fsdevel@vger.kernel.org, linux-hams@vger.kernel.org, bpf@vger.kernel.org,
 virtualization@lists.linux-foundation.org, ath11k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 Dec 2021 17:33:39 -0800 Florian Fainelli wrote:
> It would be nice if we used the number of files rebuilt because of a 
> header file change as another metric that the kernel is evaluated with 
> from release to release (or even on a commit by commit basis). Food for 
> thought.

Maybe Andy has some thoughts, he has been working on dropping
unnecessary includes of kernel.h, it seems.

It'd be cool to plug something that'd warn us about significant
increases in dependencies into the patchwork build bot.

I have one more small series which un-includes uapi/bpf.h from
netdevice.h at which point I hope we'll be largely in the clear 
from build bot performance perspective.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
