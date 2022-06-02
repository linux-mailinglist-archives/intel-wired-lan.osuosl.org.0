Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D741753B79D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jun 2022 13:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA6D060F43;
	Thu,  2 Jun 2022 11:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pg2VwSOELHtl; Thu,  2 Jun 2022 11:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E331D60F3E;
	Thu,  2 Jun 2022 11:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5B351BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 11:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD6564097A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 11:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KeSvjPA4wzj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jun 2022 11:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6303840942
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jun 2022 11:10:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2EFCE61658;
 Thu,  2 Jun 2022 11:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC8BC34119;
 Thu,  2 Jun 2022 11:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654168212;
 bh=j06rqKLxCiZYtZpREEyAHdj4/fuHN/JgVF0s7TE/l6Y=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=YI4/Ri7Ba7slwR1uW8/viRO3u1row1zIJphRUsZu3LsVs2op4ZPNlk07B4mgkyZV+
 q5DkeqTKNwicZ+JkSHj7kqFSh+pqTnz9p0VO8P3anailRjVwx63HcWcsh8iPqIgXE/
 4JT+2M7klhcHQn2QFNE9YDtwvZ2BEE2wfGfSzyP17rrt/rlt/qSGXcbwECu54+t4Fn
 9wYva8BDgPlAy0YmeRYI5xqFz9CJSeArJqOXLXvYKKYRgOWdOa1c94ERcqRvzDeFVx
 FZkEOovSOk0jXEd7ma0NjeMoPZkab/zDOnhYYHtnCYID5g1oS+Vl1PIHWKe93dr5Ad
 oSa2u9N/DFY0A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 60E29F03950; Thu,  2 Jun 2022 11:10:12 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <165416821239.26072.8874912583921079305.git-patchwork-notify@kernel.org>
Date: Thu, 02 Jun 2022 11:10:12 +0000
References: <20220601105924.2841410-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220601105924.2841410-1-alexandr.lobakin@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix access-beyond-end in the
 switch code
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
Cc: martyna.szapar-mudlaw@intel.com, netdev@vger.kernel.org,
 bruce.w.allan@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 jeffrey.t.kirsher@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (master)
by Paolo Abeni <pabeni@redhat.com>:

On Wed,  1 Jun 2022 12:59:24 +0200 you wrote:
> Global `-Warray-bounds` enablement revealed some problems, one of
> which is the way we define and use AQC rules messages.
> In fact, they have a shared header, followed by the actual message,
> which can be of one of several different formats. So it is
> straightforward enough to define that header as a separate struct
> and then embed it into message structures as needed, but currently
> all the formats reside in one union coupled with the header. Then,
> the code allocates only the memory needed for a particular message
> format, leaving the union potentially incomplete.
> There are no actual reads or writes beyond the end of an allocated
> chunk, but at the same time, the whole implementation is fragile and
> backed by an equilibrium rather than strong type and memory checks.
> 
> [...]

Here is the summary with links:
  - [net] ice: fix access-beyond-end in the switch code
    https://git.kernel.org/netdev/net/c/6e1ff618737a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
