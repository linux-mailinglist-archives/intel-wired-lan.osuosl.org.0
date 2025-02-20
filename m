Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7D2A3CEFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 03:07:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C98140DDC;
	Thu, 20 Feb 2025 02:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7OD99qdqpUh4; Thu, 20 Feb 2025 02:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2089B40DC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740017218;
	bh=52jceNwLt0gRA8miJzw1PRc8wr+wFA0Cp/cey71YB3w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f0SgpMYeJwLbWPco3AsQIbADwefgrtWXs0l0pr/ul9rEVyB9aBevotNJNSTR3t15F
	 V/UQDSDCHG7ZkvmC6cqr8LKDpvqLngdr/Popn++1+I2PDjU/CDlWsrlUaat+GLiDRX
	 aKGGMqGGXATjPyEwsYgqr63jBD95h4C2eNMH3Fe/JdWPW48x1xEBPn1VLTS4WGVN7X
	 yiEIltk2pizovW4Y08sTyl79ft6OGnJZmPcjzyXOX7nfxBwWESN9YridjJ3JVPFyV4
	 72j0NmK1gi4PbbpzjaqMP3E31mFTDeewErcbJly/H2FbGDEgcBsFAC9KpcmsnvO4Yj
	 0T/J0gXW4wvRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2089B40DC5;
	Thu, 20 Feb 2025 02:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 626DCD92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51591608C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:06:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kXMFMMhaynUz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 02:06:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB300608CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB300608CD
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB300608CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 02:06:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1CF625C55C0;
 Thu, 20 Feb 2025 02:06:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A9FC4CED1;
 Thu, 20 Feb 2025 02:06:52 +0000 (UTC)
Date: Wed, 19 Feb 2025 18:06:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Joe Damato <jdamato@fastly.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250219180651.0ea6f33d@kernel.org>
In-Reply-To: <878qq22xk3.fsf@kurt.kurt.home>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2> <878qq22xk3.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740017212;
 bh=EgBVo6RhWMthFB+iS+hJogXI/CaL4DpuWPIXar+k6Tc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S6xjXoLUpWXK7RxE098FTqZiEyWwABqwy11BtNe8AGQdbyk2/FyMLvNunXJd7S4Ev
 rz7DC1Ia8/Umaj4uHJbBwQzhZS36a5dCynw2stcQkIFhkreFaga++/GAklJXyP5vJH
 +k5mhM3xuZ4UBBlqfnw1FUjrfXBN9y7/NbQqpV+D/uqZhoJ28UDduAlVb0uwgEoB1c
 U/Ix4qc42O1VwHcvXvgCHKBbvdRYKGGQW1oqutMbPdNeN8kg0A0jpYPHqqcBPXzaBl
 otryvF/MmGmz+Lc4l0mOP3wCixc83GAT0F1r74Lx/pJXgwDjO+I73p8MyZRpWBI46m
 ZK6ErJLlZSj+A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S6xjXoLU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 19 Feb 2025 08:39:08 +0100 Kurt Kanzenbach wrote:
> > My comment from the previous series still stands, which simply that
> > I have no idea if the maintainers will accept changes using this API
> > or prefer to wait until Stanislav's work [1] is completed to remove
> > the RTNL requirement from this API altogether.  
> 
> I'd rather consider patch #2 a bugfix to restore the busy polling with
> XDP/ZC. After commit 5ef44b3cb43b ("xsk: Bring back busy polling
> support") it is a requirement to implement this API.
> 
> The maintainers didn't speak up on v1, so i went along and sent v2.
> 
> @Jakub: What's your preference? Would you accept this series or rather
> like to wait for Stanislav's work to be finished?

No strong preference. If rtnl_lock is not causing any issues 
in this driver, the we can merge as is. I haven't followed 
the past discussions, tho.
