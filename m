Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E5D4E57D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:50:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5973D41BDD;
	Wed, 23 Mar 2022 17:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a_5othXb3myJ; Wed, 23 Mar 2022 17:50:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63D0E41B87;
	Wed, 23 Mar 2022 17:50:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B3E01BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0920941B87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-Fak4QQ5nwv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E3D441B81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:50:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EC7A660FD9;
 Wed, 23 Mar 2022 17:50:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4FC94C340EE;
 Wed, 23 Mar 2022 17:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648057811;
 bh=wccJqlHevyHVXhiPkHCrfCyeoEnsOdlBJdiCyaDDc0s=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Fn4s/Yz6FizxgPiLoqfnNjptnzQba9rGFaYzGRLS9na3Auf1K/X2Dfrp2R9IV8FDU
 iF/qWeOhzLCvkZRvrzsYQPEJ+e9C8Joy1EH+mieObvzCXJrFrKg4LarcbU1xS0am4z
 LVOUZB0aL/+/ivMOB7d4U2AeFhpJytOeu3x59w7S/6G6MClS87h3LMfJ9rTGpk9SPl
 rvJOOm3I47AokfvlmIMqCRnBqPEikvEdAVwLy3Id++RcmNyp3BFJ9gsjFQ8d/5RtFO
 2y8dEO/sKGdFKcVFcCHipu1xJpSktNkvB6PUJlLkczS3Vmi56/USLrfzM/B5ZP0YdG
 AF8VmEObkDYMA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2E817EAC081; Wed, 23 Mar 2022 17:50:11 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <164805781118.23946.739203139839506306.git-patchwork-notify@kernel.org>
Date: Wed, 23 Mar 2022 17:50:11 +0000
References: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net 0/2] ice: avoid
 sleeping/scheduling in atomic contexts
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 michal.kubiak@intel.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 23 Mar 2022 13:43:51 +0100 you wrote:
> The `ice_misc_intr() + ice_send_event_to_aux()` infamous pair failed
> once again.
> Fix yet another (hopefully last one) 'scheduling while atomic' splat
> and finally plug the hole to gracefully return prematurely when
> invoked in wrong context instead of panicking.
> 
> Alexander Lobakin (2):
>   ice: fix 'scheduling while atomic' on aux critical err interrupt
>   ice: don't allow to run ice_send_event_to_aux() in atomic ctx
> 
> [...]

Here is the summary with links:
  - [net,1/2] ice: fix 'scheduling while atomic' on aux critical err interrupt
    https://git.kernel.org/netdev/net/c/32d53c0aa3a7
  - [net,2/2] ice: don't allow to run ice_send_event_to_aux() in atomic ctx
    https://git.kernel.org/netdev/net/c/5a3156932da0

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
