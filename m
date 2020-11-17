Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 305C02B70D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 22:21:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB645857A4;
	Tue, 17 Nov 2020 21:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8vAL2fde27O; Tue, 17 Nov 2020 21:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EC2F8461B;
	Tue, 17 Nov 2020 21:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80BE91BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 21:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A94C86FAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 21:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4ADgoIR16-S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 21:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 01F7586FAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 21:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605648006;
 bh=vvL09pv+PUiatC6tOx3OTbDVczBs3wy7hASTiHNjRog=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ORN69zNJQEp34S/2K26auXAYHGry1w8ZitiSGVyS8jjWLgeNjg25UsX/g3CbSSv/O
 8lP01tJ1N2bahs11zjalxpK/wYaAeJr2FMUIR0Caz9OhYs++7tLt0H9udhcj5r62OC
 Vk06PTjZu/Tk8uh0YMwT20KrzLUNVt8HRG/PzjJs=
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160564800642.24253.1580711036123652762.git-patchwork-notify@kernel.org>
Date: Tue, 17 Nov 2020 21:20:06 +0000
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
In-Reply-To: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
X-Mailman-Approved-At: Tue, 17 Nov 2020 21:21:44 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 0/5] xsk: i40e: Tx
 performance improvements
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
Cc: maciejromanfijalkowski@gmail.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to bpf/bpf-next.git (refs/heads/master):

On Mon, 16 Nov 2020 12:12:42 +0100 you wrote:
> This patch set improves the performance of mainly the Tx processing of
> AF_XDP sockets. Though, patch 3 also improves the Rx path. All in all,
> this patch set improves the throughput of the l2fwd xdpsock
> application by around 11%. If we just take a look at Tx processing part,
> it is improved by 35% to 40%.
> 
> Hopefully the new batched Tx interfaces should be of value to other
> drivers implementing AF_XDP zero-copy support. But patch #3 is generic
> and will improve performance of all drivers when using AF_XDP sockets
> (under the premises explained in that patch).
> 
> [...]

Here is the summary with links:
  - [bpf-next,v3,1/5] samples/bpf: increment Tx stats at sending
    https://git.kernel.org/bpf/bpf-next/c/90da4b3208d3
  - [bpf-next,v3,2/5] i40e: remove unnecessary sw_ring access from xsk Tx
    https://git.kernel.org/bpf/bpf-next/c/f320460b9489
  - [bpf-next,v3,3/5] xsk: introduce padding between more ring pointers
    https://git.kernel.org/bpf/bpf-next/c/b8c7aece29bc
  - [bpf-next,v3,4/5] xsk: introduce batched Tx descriptor interfaces
    https://git.kernel.org/bpf/bpf-next/c/9349eb3a9d2a
  - [bpf-next,v3,5/5] i40e: use batched xsk Tx interfaces to increase performance
    https://git.kernel.org/bpf/bpf-next/c/3106c580fb7c

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
