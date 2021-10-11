Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAC8429974
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 00:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D63C608F6;
	Mon, 11 Oct 2021 22:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFI0pTzS1p0F; Mon, 11 Oct 2021 22:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FDF5608B1;
	Mon, 11 Oct 2021 22:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21C8C1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FD8080E56
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atE9L0zQTk3P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Oct 2021 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E61C80E43
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:29:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D222D60F3A;
 Mon, 11 Oct 2021 22:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633991355;
 bh=Q2OL1bMvUiwErmJpXIGVh43e2qsqWzRLAo/NYEbUoNA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W8xdavuZxuWdfGZ0kLbHvnEo3WArU01l7bppnl8rmytBCzZVdGEgJpZg9oDSprb75
 KXHATV3NV2/wpFeKHwHl0B7Cq9oOL8nj12GLNEe6hKDwzfV8F0JVWIZdmSJVOxjuiL
 c2H8siSZE+/fiqs6D82v6MP3UnKzbP5lS8nZECu84R1Dia7r9y0yEIc/N0cRwbJ3cn
 HrQ9cV8Kr7ujJVeWDYg9dUq1SaU0uy/HeSxLqogykWgSLRIN//0jI2WX6KbXL4PyJt
 CUsBxDs28S+aQkBdh9qzS2l8bqL+3vCbOZTFChRHLr1m02XOPYh7Ti+es5iSEvM5Lo
 PBHFz7EbuqBeg==
Date: Mon, 11 Oct 2021 15:29:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20211011152913.07ec6087@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <2757afa0-1b27-8480-0830-9638b2495a85@kernel.dk>
References: <2757afa0-1b27-8480-0830-9638b2495a85@kernel.dk>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Potential bio_vec networking/igb size
 dependency?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 11 Oct 2021 16:09:55 -0600 Jens Axboe wrote:
> Hi,
> 
> Been working on a change today that changes struct bio_vec, and it works
> fine on the storage side. But when I boot the box with the change, I
> can't ssh in. If I attempt to use networking on the box (eg to update
> packages), it looks like the data is corrupt. Basic things work - I can
> dhcp and get an IP and so on, but ssh in yields:
> 
> ssh -v box
> [...]
> debug1: Local version string SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.3
> debug1: Remote protocol version 2.0, remote software version OpenSSH_8.2p1 Ubuntu-4ubuntu0.3
> debug1: match: OpenSSH_8.2p1 Ubuntu-4ubuntu0.3 pat OpenSSH* compat 0x04000000
> debug1: Authenticating to box as 'axboe'
> debug1: SSH2_MSG_KEXINIT sent
> debug1: SSH2_MSG_KEXINIT received
> debug1: kex: algorithm: curve25519-sha256
> debug1: kex: host key algorithm: ecdsa-sha2-nistp256
> debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
> debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
> debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
> Connection closed by 207.135.234.126 port 22
> 
> I've got a vm image that I boot on my laptop, and that seems to
> work fine. Hence I'm thinking maybe it's an igb issue? But for the
> life of me, I cannot figure out wtf it is. I've looked at the skb_frag_t
> uses and nothing pops out at me.
> 
> Trivial to reproduce, just add the below patch.
> 
> diff --git a/include/linux/bvec.h b/include/linux/bvec.h
> index 0e9bdd42dafb..e61967fb4643 100644
> --- a/include/linux/bvec.h
> +++ b/include/linux/bvec.h
> @@ -33,6 +33,7 @@ struct bio_vec {
>  	struct page	*bv_page;
>  	unsigned int	bv_len;
>  	unsigned int	bv_offset;
> +	unsigned long	foo;
>  };
>  
>  struct bvec_iter {

Yeah, changing the size of bvec now that skb uses it may be lots of
pain. Are you trying to grow it?

We place skb_shared_info (which holds frags) after packet data in 
a packet buffer, so changing skb_shared_info may trip expectations 
that a lot of drivers have about layout of the buffers.

Let's see what igb does wrong...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
