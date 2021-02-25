Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD9C324803
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 01:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 677F84ED09;
	Thu, 25 Feb 2021 00:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xd1Bxr-h9mM7; Thu, 25 Feb 2021 00:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B1DC4ED00;
	Thu, 25 Feb 2021 00:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 720FD1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C73383DD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QWm6IUWsU7ft for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 00:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD55783D87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:47:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B22DA6146B;
 Thu, 25 Feb 2021 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614214044;
 bh=v9Cemz6+5QAlytl+WWIeYFPOPcg34dVPzVpn7Ai5Kbw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MbLCz8HFy4albGGaAxeg4DicoNj4dZI5iynJgXU/NsF8WsILKvj+eqHB9Vphr5thB
 a+v8u35WFikt58r/new7tuteQEpeXz0BPZda2yKfwfAXywmHnlGc8GdcXjW/DHn4f8
 9S/m2GeerM10HksfNa/H89VAgmt8HzUYiUrjVK13ZRxb+QA6lCQKqbeZPTjwdBDVlb
 MaVHRzW29g0Q/aD6awdU3cHJniScZwcYcR1Opfy/gYImRqa4Wp+qM3NWbSaCDYrdmA
 h4+gY6mCiZcqGJrFctn8iIDBaQStqYzHlDaLRoNhnUfadNgwTrmxX83v4Tafma2exe
 6ZCL5ZFfEF05A==
Date: Wed, 24 Feb 2021 16:47:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Message-ID: <20210224164720.2228c580@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210225002101.hvbpq7f6zbvylqy4@Rk>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
 <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210224114141.ziywca4dvn5fs6js@Rk>
 <20210224084841.50620776@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210225002101.hvbpq7f6zbvylqy4@Rk>
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

On Thu, 25 Feb 2021 08:21:01 +0800 Coiby Xu wrote:
> On Wed, Feb 24, 2021 at 08:48:41AM -0800, Jakub Kicinski wrote:
> >On Wed, 24 Feb 2021 19:41:41 +0800 Coiby Xu wrote:  
> >> I'm not sure if I understand you correctly. Do you mean we shouldn't
> >> disable i40iw for kdump?  
> >
> >Forgive my ignorance - are the kdump kernels separate builds?
> 
> AFAIK we don't build a kernel exclusively for kdump. 
> 
> >If they are it'd be better to leave the choice of enabling RDMA
> >to the user - through appropriate Kconfig options.
> 
> i40iw is usually built as a loadable module. So if we want to leave the
> choce of enabling RDMA to the user, we could exclude this driver when
> building the initramfs for kdump, for example, dracut provides the 
> omit_drivers option for this purpose. 
> 
> On the other hand, the users expect "crashkernel=auto" to work out of
> the box. So i40iw defeats this purpose. 
> 
> I'll discuss with my Red Hat team and the Intel team about whether RDMA
> is needed for kdump. Thanks for bringing up this issue!

Great, talking to experts here at FB it seems that building a cut-down
kernel for kdump is easier than chasing all the drivers to react to
is_kdump_kernel(). But if you guys need it and Intel is fine with 
the change I won't complain.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
