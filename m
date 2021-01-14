Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2A2F64D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 16:39:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67F9F2291D;
	Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I7ws0Cy9gFQB; Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7CD8220472;
	Thu, 14 Jan 2021 15:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3D6A1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 03:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF37386AB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 03:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKy-9FtG5PQg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 03:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 37EB48651E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 03:40:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 3DD7523787;
 Thu, 14 Jan 2021 03:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610595608;
 bh=I9HtrzT8yUsJb3Vgg5/bbWYCYVGGCNfQYle9YqMNl9U=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=gZlISI04gYvjaWyQ3Y0NdHPir0rdMJIiRk1BHGkLcg+C+m5UDZy7Wk/7sCdHxyp7u
 WJCIC/ZcAkBgcJ4ZDpBlGpE4MHIoLVUmnOX4Ue7qv58E8/GXMfe4Tw1nJ5o3B1ZRzD
 fxYSciXPXrYlyM93Md2JnyKVThDcu0CHa3jzRK2sE5VBH/bIB1QQWMF/JwAD90zgYr
 sFmZVlkw6PL8N04WF1PKDKigsDdwL8rOUoKEUZvU/rdxNH+9oCRA8Mp2S+rAab4xqR
 gY1cXxBA+2HmP7DjwXViM6HrneW7puGICNHufc8pZe/gsMHXaknttpQkukKgw054Lq
 OGUaeycAvTM6g==
Received: from pdx-korg-docbuild-1.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-1.ci.codeaurora.org (Postfix) with ESMTP id 2DE3F60105;
 Thu, 14 Jan 2021 03:40:08 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161059560818.8885.13113581154759603172.git-patchwork-notify@kernel.org>
Date: Thu, 14 Jan 2021 03:40:08 +0000
References: <20210111181138.49757-1-cristian.dumitrescu@intel.com>
In-Reply-To: <20210111181138.49757-1-cristian.dumitrescu@intel.com>
To: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
X-Mailman-Approved-At: Thu, 14 Jan 2021 15:39:23 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix potential NULL pointer
 dereferencing
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Mon, 11 Jan 2021 18:11:38 +0000 you wrote:
> Currently, the function i40e_construct_skb_zc only frees the input xdp
> buffer when the output skb is successfully built. On error, the
> function i40e_clean_rx_irq_zc does not commit anything for the current
> packet descriptor and simply exits the packet descriptor processing
> loop, with the plan to restart the processing of this descriptor on
> the next invocation. Therefore, on error the ring next-to-clean
> pointer should not advance, the xdp i.e. *bi buffer should not be
> freed and the current buffer info should not be invalidated by setting
> *bi to NULL. Therefore, the *bi should only be set to NULL when the
> function i40e_construct_skb_zc is successful, otherwise a NULL *bi
> will be dereferenced when the work for the current descriptor is
> eventually restarted.
> 
> [...]

Here is the summary with links:
  - [net] i40e: fix potential NULL pointer dereferencing
    https://git.kernel.org/netdev/net/c/7128c834d30e

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
