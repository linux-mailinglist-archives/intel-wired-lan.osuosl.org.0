Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D2F89BDA9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 13:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66DBF4070C;
	Mon,  8 Apr 2024 11:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKq23AVRIFO0; Mon,  8 Apr 2024 11:00:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 148A240756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712574042;
	bh=pUL8uRZCSvlEFt3Id4d8P3QIlY7UV3G8K/P89tUTy2Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rc+cMscoiJwzwKnhIzpDEfckXZKzATRo79Fzedfow5ud/ehY1RkkLy9dgvUI2aHh7
	 8WinRq0j/7nwbrWFObjSDt72PPPoS+GLgXtpRANVEMGnWOfU1KkNrsdhXK+2IkA65W
	 toGfFDox0xAQYBaVKXx5Q4L+dEAtcTp0pHOm2DJyTC4NYAxdErinCEw8NK9wVauMdG
	 fwMuvLjao3TN11DUkV+hR2OVh1wEOvjnAju+eaUABPAKG0+CjXzKkZ6SjmczeR+5iT
	 ig23tfv1BGZ9LQoj83d797JuqoLMw0WLAtQQ3IuxjfbZqimz9bRj2KYsz8hY2B6Bg4
	 azBNAWElXQCdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 148A240756;
	Mon,  8 Apr 2024 11:00:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94E6C1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80B04401B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZX70EnPvYBZ7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 11:00:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 592AE40AE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 592AE40AE4
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 592AE40AE4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 11:00:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C63CCCE10C3;
 Mon,  8 Apr 2024 11:00:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54C5C43390;
 Mon,  8 Apr 2024 11:00:34 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A8C8FC54BD7; Mon,  8 Apr 2024 11:00:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171257403468.26748.18118428857352948104.git-patchwork-notify@kernel.org>
Date: Mon, 08 Apr 2024 11:00:34 +0000
References: <20240405111831.3881080-1-schnelle@linux.ibm.com>
In-Reply-To: <20240405111831.3881080-1-schnelle@linux.ibm.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712574034;
 bh=HbeOSTm2sxkRzI1ptMnZ92ADLHFoQ1xwvYsVAagxJzk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=rreDV8Pj2c/Nd3BUAreHDSJd5asr4Sc3WMhsr/GbgbVeAWp3Vfjs3Wz2tei+/JuP+
 NLhtLWlaO7L7Q6bneHxCxgVhqO6sXesDai8urXttN5GCs4hf6vjH1w5iHgoKSl4FdK
 nTc1wZeGp+bL/Fx1gWCLSwGYWyutnI+fmoqPvr2o8qJfCADacqqJYWbBi+QfDx5V7+
 JFT5+Ekone/JmiUS0hhYfGiCOfDKSCfhbi1eY3XTYhxYSWPnu9RXfjKv17U9DJDGv3
 KClK/ytowRhWWcnkZAdT4YcW7haUAuRkBnhx044TNGB1ClN6ho9A/pu6XQjrP+Pv9t
 oU6qjYkfVGFMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rreDV8Pj
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/1] XYZ: Handle HAS_IOPORT
 dependencies
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
Cc: arnd@kernel.org, m.grzeschik@pengutronix.de, netdev@vger.kernel.org,
 hca@linux.ibm.com, linux-kernel@vger.kernel.org, linux-can@vger.kernel.org,
 edumazet@google.com, mkl@pengutronix.de, linux-hams@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri,  5 Apr 2024 13:18:30 +0200 you wrote:
> Hi networking maintainers,
> 
> This is a follow up in my ongoing effort of making inb()/outb() and
> similar I/O port accessors compile-time optional. Previously I sent this
> as a treewide series titled "treewide: Remove I/O port accessors for
> HAS_IOPORT=n" with the latest being its 5th version[0]. With a significant
> subset of patches merged I've changed over to per-subsystem series. These
> series are stand alone and should be merged via the relevant tree such
> that with all subsystems complete we can follow this up with the final
> patch that will make the I/O port accessors compile-time optional.
> 
> [...]

Here is the summary with links:
  - [net-next,1/1] net: handle HAS_IOPORT dependencies
    https://git.kernel.org/netdev/net-next/c/a29689e60ed3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


