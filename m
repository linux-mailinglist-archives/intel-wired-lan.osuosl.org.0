Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9E7FCDD7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 05:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEB82617B5;
	Wed, 29 Nov 2023 04:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB82617B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701231637;
	bh=bwDjVb8zgr2uJqm7+n+fsuGawdtLsedS6yq5cTaUn0o=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CEcjUi6f0gzg8xUBQ0Eqdio5PFvEEHl070TweEI5eoSpacEgg4BE/i4WZOHq6zX+h
	 NlnsjmcqRfrsJ91Wiq+kKKQoCr/7c0fNoxBPhrHq61D1sXqYm2YJd6GqF3o5hrzTrL
	 D8oUm2b0/GW6ixABjrgkxTtkVFGCSrBqdY/Rku7QNN0WOiWGotCzfvpk9dUDJY+kKE
	 FaGRYAGaEw7V8riEFkKBbOyOW6214K4QS/Fr/TZSXEzRJUHQV/XRjbgbTUJfUFI4En
	 a2S96aK99gAge84wimUdgLXvkDDhOX8x4K9/GlorVEt8RUhTbBUJ53axahj2ktKrvl
	 YbZdqzUmsO20w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46sX4a1jF6by; Wed, 29 Nov 2023 04:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB1CA60BDB;
	Wed, 29 Nov 2023 04:20:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB1CA60BDB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 047A31BF34F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 04:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5A1881238
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 04:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5A1881238
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WzhZrD8wnwT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 04:20:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B158980BE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 04:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B158980BE0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8B52361912;
 Wed, 29 Nov 2023 04:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3DFC433C7;
 Wed, 29 Nov 2023 04:20:26 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 5EDEADFAA81; Wed, 29 Nov 2023 04:20:26 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170123162638.8478.17403370132597128071.git-patchwork-notify@kernel.org>
Date: Wed, 29 Nov 2023 04:20:26 +0000
References: <e0349ee5-76e6-4ff4-812f-4aa0d3f76ae7@moroto.mountain>
In-Reply-To: <e0349ee5-76e6-4ff4-812f-4aa0d3f76ae7@moroto.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701231626;
 bh=Ou+HbCwAZNtVyvKkQu4UL6dQP8XxTciGlMesA6B9BXY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=K74Boapr6wb4wUK0yCVf6kY5Y/SXbccHILIdgR70Ap/5iTb07WfmKzpldc8CtTj0r
 GFZ7GzIpRCBRU00qsTXg7toK6QQoDDeSGMeqRsdRF/CAbWkM5yZ/Ill1o+qIeL/uyN
 ZloT7qjJqRz9cBeXp1fqUiUrRUhNIwRYMoLdtNejeVq4FZIRkpRGPMZO/NDL4Q6Gcf
 jwgTmkhXUKQxsrCT2skD2ZqGPzzouuq9ZkGQjqKiJyOESEUUREMo5AwduAtlKLjhyW
 p7x9P4ztoQqoCsWB1r5CB18ORFtjLtmp8DnJCF0YBRv5mT7T0vTO6/1/+CEoIRTKxH
 8l0K7528PgIlg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K74Boapr
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix error code in
 ice_eswitch_attach()
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
Cc: wojciech.drewek@intel.com, intel-wired-lan@lists.osuosl.org,
 kernel-janitors@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 kuba@kernel.org, michal.swiatkowski@linux.intel.com, pabeni@redhat.com,
 piotr.raczynski@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 27 Nov 2023 15:59:17 +0300 you wrote:
> Set the "err" variable on this error path.
> 
> Fixes: fff292b47ac1 ("ice: add VF representors one by one")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] ice: fix error code in ice_eswitch_attach()
    https://git.kernel.org/netdev/net-next/c/1bc9d12e1c92

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
