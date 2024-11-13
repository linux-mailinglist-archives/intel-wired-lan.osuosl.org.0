Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 629989C674D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 03:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A6B480E5E;
	Wed, 13 Nov 2024 02:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wr0LQQbL-Gsw; Wed, 13 Nov 2024 02:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BA9680E51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731465027;
	bh=FtDKukBkLK1BsWKajm7tUiawvm3b1aQB9oNy69cPx60=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4efkCQqfS9shrwWDzF1fwMNd0U2bAGZ/0i+SshfQkZdrXZIuI2/hoaqpWH+SW7FbL
	 ykh9wIyPQH1BFGn2hzZvwd4nT4zALmJogtoBSZucyffl3FZPvOmbUzX8l7VS7EwbjE
	 TA+pmiyHDtThy72Q9DtKE+xHNBRffpX0Qhm5HWDJzw71eL1gNjeKH+SVFqtE3JuLAZ
	 KW64VFHyZ4Ag4bP0IgmN1eeTzMcttEvXg7RpG3QSs+jb9OzuM3LkNlsGBfp8lRkEUX
	 b3KRXe+e5HqjKTXGqK7YfXcC5ceTr82iPyhyz70b7p+8py4pmn8oySaZ33g2yWXinT
	 WhxbIU2cHhSDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BA9680E51;
	Wed, 13 Nov 2024 02:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCCB81531
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 02:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A57BF4064A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 02:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ctrC27ScS77h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 02:30:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A19A2400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A19A2400E5
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A19A2400E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 02:30:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id F1160A4262E;
 Wed, 13 Nov 2024 02:28:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEC7DC4CECD;
 Wed, 13 Nov 2024 02:30:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70FAA3809A80; Wed, 13 Nov 2024 02:30:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173146503300.759199.10344686078922792522.git-patchwork-notify@kernel.org>
Date: Wed, 13 Nov 2024 02:30:33 +0000
References: <20241106111427.7272-1-wander@redhat.com>
In-Reply-To: <20241106111427.7272-1-wander@redhat.com>
To: Wander Lairson Costa <wander@redhat.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bigeasy@linutronix.de,
 clrkwllms@kernel.org, rostedt@goodmis.org, horms@kernel.org,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, tglx@linutronix.de
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731465023;
 bh=zLHKZJnlbuKLGagziDjOpu3KpVn7t1f9OZVaIn3hrkU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=qS2zAdeuKpPI8jSN9Ka4393Vcq+XkLIFRv0rUEUFx9qhIQmT0W+aznU86eoQU4UBw
 +AFNxUW1C0A5tIwwecx61yc15kKuz3RfD1NUXYc2PqwYuDeZAYvLF+lX0LENV59yJo
 PCNnarzCcnEEiE+JnueX6lPogyeCFCCnOnUFHmTz0mZBjubguI0KqRHVyTGkEWf4Lk
 9pbU66fA8HphOlnsoYmo9EdUVVcsDY7aXCFvvEnjAyjvCd7cg5YOXagLPHz7ea77Wd
 OD/BuT+tSsiMxpL+0RtEOfEDiAFkhuZm4RsHKkK5ncWo0eg8kq9vMmUd2M7/5BiDl0
 HU6SZsycVfdcQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qS2zAdeu
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed,  6 Nov 2024 08:14:26 -0300 you wrote:
> This reverts commit 338c4d3902feb5be49bfda530a72c7ab860e2c9f.
> 
> Sebastian noticed the ISR indirectly acquires spin_locks, which are
> sleeping locks under PREEMPT_RT, which leads to kernel splats.
> 
> Fixes: 338c4d3902feb ("igb: Disable threaded IRQ for igb_msix_other")
> Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> 
> [...]

Here is the summary with links:
  - [v2,1/4] Revert "igb: Disable threaded IRQ for igb_msix_other"
    https://git.kernel.org/netdev/net/c/50d325bb05ce

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


