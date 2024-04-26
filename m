Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA748B2EB3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 04:30:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4AC241ECB;
	Fri, 26 Apr 2024 02:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8J0h3fNdORpQ; Fri, 26 Apr 2024 02:30:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F33141EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714098634;
	bh=V1EtmX8dGF3LggZzMZhfSvHRkpAPg1MoUvrEkV3agio=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gKXXrDKedzJURm75DC7AwCaI4nGsy4OzsApSrxsUC2OAHLvOWQyiWSJd5AQw9g35I
	 9PQUDuqjwzOZVlb1zd75YXFzBfKJkiC4II9VemF1ZUvUNp5puEIDeLVIYbU+BSbynE
	 RQofbu7YnSgJMlUOytc511FXgFWlA8RiekY2E+mONDC8p6KdrCjDhTqb8VpI0cSxOX
	 RY6nmnNUBcfCZLuf1i54vwQPIdfEi6uhav7qH/1kS+OXhOn1GPv+ELXvjtLBTpfYWp
	 GGBISLfkAIpMJIm+9buZDyFCbg+HYJNumY16tYVhIf0gperjAUsl0RzvAjVR2cJtB1
	 bSxqttADAx8XA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F33141EC6;
	Fri, 26 Apr 2024 02:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32F071BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 02:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E2E382BD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 02:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VxN1rfFySC9Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 02:30:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0662582BC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0662582BC8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0662582BC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 02:30:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8D7B661D99;
 Fri, 26 Apr 2024 02:30:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F0BBC2BBFC;
 Fri, 26 Apr 2024 02:30:28 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 17608C43140; Fri, 26 Apr 2024 02:30:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171409862809.13456.12723948130853178022.git-patchwork-notify@kernel.org>
Date: Fri, 26 Apr 2024 02:30:28 +0000
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
In-Reply-To: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
To: Bui Quang Minh <minhquangbui99@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714098628;
 bh=eurkqHk3uRy+1rn1ochibBTH2vrQVR6SvX9c5yj2Uag=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=NOPT3X7IeFl2EkRwRIVLn4bp/lBz/P9PVLpmU9i7nHEZYzqAUBm4JX8rsMrSnUrHN
 biPRfnqFQwOqKrc2TyuER/CO+VOUls/m+Bfs6Tn8XAL3l4UkdOhHhk76HEj4cwp4hQ
 NVdcdArE9v4DyIPjgZHDoIE3elvaxeY7BjGuHqNUi3HvZKjRjiffVLypz+eCRBMvtk
 9ngzeTfWdgizj3jykjL6O7COU44bMoHxTyA009S8sPutklby/m3IAfmRrx71xeNJVJ
 uWblH+kbfyJIZ3Z7B+4JMlVR8Xu42lFf2i0lGzxILzaWRd/57kt/uZGL9wqNi70AK5
 i5D4EHTpsudSw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NOPT3X7I
Subject: Re: [Intel-wired-lan] [PATCH v2 0/6] Ensure the copied buf is NUL
 terminated
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
Cc: sbhatta@marvell.com, linux-kernel@vger.kernel.org,
 James.Bottomley@HansenPartnership.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, vneethv@linux.ibm.com, linux-scsi@vger.kernel.org,
 saurav.kashyap@cavium.com, agordeev@linux.ibm.com, lcherian@marvell.com,
 linux-s390@vger.kernel.org, sudarsana.kalluru@qlogic.com,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 paul.m.stillwell.jr@intel.com, kuba@kernel.org, pabeni@redhat.com,
 sgoutham@marvell.com, borntraeger@linux.ibm.com, gor@linux.ibm.com,
 gakula@marvell.com, arun.easi@cavium.com, hca@linux.ibm.com, fabf@skynet.be,
 manish.rangankar@cavium.com, axboe@kernel.dk, nilesh.javali@cavium.com,
 GR-Linux-NIC-Dev@marvell.com, martin.petersen@oracle.com, skashyap@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, anil.gurumurthy@qlogic.com,
 oberpar@linux.ibm.com, davem@davemloft.net,
 GR-QLogic-Storage-Upstream@marvell.com, hkelam@marvell.com,
 svens@linux.ibm.com, jerinj@marvell.com, skalluru@marvell.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 24 Apr 2024 21:44:17 +0700 you wrote:
> Hi everyone,
> 
> I found that some drivers contains an out-of-bound read pattern like this
> 
> 	kern_buf = memdup_user(user_buf, count);
> 	...
> 	sscanf(kern_buf, ...);
> 
> [...]

Here is the summary with links:
  - [v2,1/6] ice: ensure the copied buf is NUL terminated
    https://git.kernel.org/netdev/net/c/666854ea9cad
  - [v2,2/6] bna: ensure the copied buf is NUL terminated
    https://git.kernel.org/netdev/net/c/8c34096c7fdf
  - [v2,3/6] bfa: ensure the copied buf is NUL terminated
    (no matching commit)
  - [v2,4/6] qedf: ensure the copied buf is NUL terminated
    (no matching commit)
  - [v2,5/6] cio: ensure the copied buf is NUL terminated
    (no matching commit)
  - [v2,6/6] octeontx2-af: avoid off-by-one read from userspace
    https://git.kernel.org/netdev/net/c/f299ee709fb4

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


