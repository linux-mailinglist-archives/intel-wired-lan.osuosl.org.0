Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FAD6C00A6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Mar 2023 12:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A86E408F0;
	Sun, 19 Mar 2023 11:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A86E408F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679223627;
	bh=JeMU4puIXHrh3JvMiKCtdDWUHIoNw1qJc55b4t9bt5c=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kzz2Mkm/ci/wdw1DRbeHSm7EPkSK1lhVVJPZggW5HUmvgOrBUXeaiAvRgpIGlC8qY
	 JdWKWqxsuU9ENYBCbkve1Yo8CqmErmEIaKvb3pty4X+HP3Blh9axLeJWjhLeLkXi9c
	 rIpAPa/A9uD61l5mcrP2VwgI2Nf/43uk4KGVp9IM1Y8ahDbknpkGyax3W+yplO68D5
	 LHxlTv2EzOqeNS/PUEzG5P81mBF2+7VhYAL7mHbux5t/riVsUDkNIE6dbMTaZ5lIsU
	 47UHsoR6M1pd4QPBo0/oah1yEX+2NbFBnbdokxopd52T0m/GRXiEZFyd19rgcXBwL8
	 4H6aZoiGeNCSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nBNHx7nFteAO; Sun, 19 Mar 2023 11:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AFCF408EF;
	Sun, 19 Mar 2023 11:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AFCF408EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC5851BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Mar 2023 11:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 859C7408EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Mar 2023 11:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 859C7408EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nX0RjUKakRDn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Mar 2023 11:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EFA7408D7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EFA7408D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Mar 2023 11:00:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 39E6360FB4;
 Sun, 19 Mar 2023 11:00:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01CE3C433AC;
 Sun, 19 Mar 2023 11:00:18 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D10BBE21EE6; Sun, 19 Mar 2023 11:00:17 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167922361785.26931.9573620186873027791.git-patchwork-notify@kernel.org>
Date: Sun, 19 Mar 2023 11:00:17 +0000
References: <20230317200904.3796436-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20230317200904.3796436-1-anthony.l.nguyen@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1679223618;
 bh=PSYCF46BxXkgL9BPR72nf4ZQoBkxYuLpMACsn8pCjfk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ToCBoW8nhaOVTIijsucWhHgkzS3eI8dhphmD1imM4NcG7OoCNahFH93UqEx/42GgG
 PBK1jrN0N8al07tnDAxJHcKNh532j0UquruKbW44C+oHirKUJt6FvN4al4dAkFvSeX
 DR0nI7aovPwQ8X3dxRKBM/10ZbQwe0btJi0O8Fuyu16Q+devn6/QjgxUTbdrON43s2
 urIfefUHw1syC/0NwurT3TPGGbyClqvj+B0gZVMGUdDt9QtnjpMTDSfJGKItfQMxa6
 cjBbaTiydNdCroti+VNKUocmJHGuZZ9a1X4P8gzKaZcdiC59HPvfjRIbDurAndtZCl
 dYi+TlwoEANzw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ToCBoW8n
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgb: Remove ixgb driver
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 17 Mar 2023 13:09:03 -0700 you wrote:
> There are likely no users of this driver as the hardware has been
> discontinued since 2010. Remove the driver and all references to it
> in documentation.
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> [...]

Here is the summary with links:
  - [net-next] ixgb: Remove ixgb driver
    https://git.kernel.org/netdev/net-next/c/e485f3a6eae0

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
