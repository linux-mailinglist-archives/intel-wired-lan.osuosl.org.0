Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8012043C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 00:39:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E7D788889;
	Mon, 22 Jun 2020 22:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u73K3Fz6jY-U; Mon, 22 Jun 2020 22:39:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4591888C7E;
	Mon, 22 Jun 2020 22:39:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB0FF1BF958
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E668C88905
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1Xb0qBlYF07 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 22:39:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4006C88889
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 22:39:16 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 001211296A2B3;
 Mon, 22 Jun 2020 15:39:13 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:39:13 -0700 (PDT)
Message-Id: <20200622.153913.2174708105885098663.davem@davemloft.net>
To: jarod@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200619143155.20726-1-jarod@redhat.com>
References: <20200619143155.20726-1-jarod@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 22 Jun 2020 15:39:14 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/4] bonding: initial
 support for hardware crypto offload
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
Cc: steffen.klassert@secunet.com, herbert@gondor.apana.org.au,
 j.vosburgh@gmail.com, linux-kernel@vger.kernel.org, vfalico@gmail.com,
 netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jarod Wilson <jarod@redhat.com>
Date: Fri, 19 Jun 2020 10:31:51 -0400

> This is an initial functional implementation for doing pass-through of
> hardware encryption from bonding device to capable slaves, in active-backup
> bond setups. This was developed and tested using ixgbe-driven Intel x520
> interfaces with libreswan and a transport mode connection, primarily using
> netperf, with assorted connection failures forced during transmission. The
> failover works quite well in my testing, and overall performance is right
> on par with offload when running on a bare interface, no bond involved.
> 
> Caveats: this is ONLY enabled for active-backup, because I'm not sure
> how one would manage multiple offload handles for different devices all
> running at the same time in the same xfrm, and it relies on some minor
> changes to both the xfrm code and slave device driver code to get things
> to behave, and I don't have immediate access to any other hardware that
> could function similarly, but the NIC driver changes are minimal and
> straight-forward enough that I've included what I think ought to be
> enough for mlx5 devices too.
> 
> v2: reordered patches, switched (back) to using CONFIG_XFRM_OFFLOAD
> to wrap the code additions and wrapped overlooked additions.
> v3: rebase w/net-next open, add proper cc list to cover letter

Series applied, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
