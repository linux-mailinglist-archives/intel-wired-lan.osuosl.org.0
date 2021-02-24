Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB5432426E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 17:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBF3A4311B;
	Wed, 24 Feb 2021 16:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxbIsJNOLI7I; Wed, 24 Feb 2021 16:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB5FD430DF;
	Wed, 24 Feb 2021 16:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DC0A1BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 16:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0D9A83DE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 16:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sp9mr1GDrT2K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 16:48:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F71F83DF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 16:48:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4B8AC64F04;
 Wed, 24 Feb 2021 16:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614185325;
 bh=bkI+7jdAkAKPzrBha5mtz/S+U24xvZbTS+QNnlrcp/Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lESkDNtgLdaUKCI1sXJmDOGuVp2xbhwwB/d7p4bdpkvP5uERgvycaRqgkTCwlotqH
 w2yfc0m+U+oOCfKy4pYo0jP7V/HmR0F8+LI0rNvjxtlspJmS8LCh6f75l7CtXJDyZ2
 ZDVfJmhEKGE321/Og9QfA+TRaFwcqB+tTc/LVIMp6DHaeReNHK3KQyuC4smx9tpbvg
 f56F73rDhI9D5AEPC8DlrzThsG4TVlXP2gNT2X7ysQFmxaTiP7XJvp1m+/tduKSe0D
 YXR9Y16Yv83MjDRBwTPfc5sd/EQ1mroaNFU4S2s/4DhEM4iMrsdBRvdxUe4bOnUhxD
 9rq8E/6U830tQ==
Date: Wed, 24 Feb 2021 08:48:41 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Message-ID: <20210224084841.50620776@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210224114141.ziywca4dvn5fs6js@Rk>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
 <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210224114141.ziywca4dvn5fs6js@Rk>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 4/4] i40e: don't open i40iw client
 for kdump
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
Cc: netdev@vger.kernel.org, kexec@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 24 Feb 2021 19:41:41 +0800 Coiby Xu wrote:
> On Tue, Feb 23, 2021 at 12:22:07PM -0800, Jakub Kicinski wrote:
> >On Mon, 22 Feb 2021 15:07:01 +0800 Coiby Xu wrote:  
> >> i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
> >> i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
> >> for 1GbE while "craskernel=auto" only reserved 160M. With the module
> >> parameter "resource_profile=2", we can reduce the memory usage of i40iw
> >> to ~300M which is still too much for kdump.
> >>
> >> Disabling the client registration would spare us the client interface
> >> operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
> >> saved for kdump.
> >>
> >> Signed-off-by: Coiby Xu <coxu@redhat.com>  
> >
> >Is i40iw or whatever the client is not itself under a CONFIG which
> >kdump() kernels could be reasonably expected to disable?
> >  
> 
> I'm not sure if I understand you correctly. Do you mean we shouldn't
> disable i40iw for kdump?

Forgive my ignorance - are the kdump kernels separate builds?

If they are it'd be better to leave the choice of enabling RDMA 
to the user - through appropriate Kconfig options.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
