Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70CA36BC7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 04:50:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EA9860A7B;
	Sat, 15 Feb 2025 03:50:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duIJOeXYNdWY; Sat, 15 Feb 2025 03:50:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2695605FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739591406;
	bh=GqR/K7tIPCx7z6Abt1ln/FkxLIvIuEBxB8nUMIyslzM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HKimv64jLPhHDMoxP6Sd6ExvF4JRlBT6eF+2Vy+9lF6oFPxEAhspK3MeQ+KHGWRP5
	 qR+LO32LjX+hMaohE5pisZfkww0n9r8jgBZVz8c0orefm3kWfSTDRTPTihl5lDohCn
	 N7SpIEOfbl7ahBa0qo/qzVja5gwNhGfOhWQ6UknWf1HelWG3FEZhtMAW7EqhdlcjA2
	 8dGSTzis3S3QZXTHeLpM5K1rE5Lq8xJ+hEPAzxO37U7ueYaw4kBOnxs+ypxq/7JmVu
	 vaaL4AKg+yn4HyouWaIGK8X+68ZudRDTrZu/5/wilR8qDpDDDNUijOyxDlfRaBPQbW
	 YAobqiCR0bnAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2695605FE;
	Sat, 15 Feb 2025 03:50:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3087EDE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 03:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2226742642
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 03:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ad9bWfH6PIqp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 03:50:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BB46425A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BB46425A0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BB46425A0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 03:50:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7C3DF5C5B57;
 Sat, 15 Feb 2025 03:49:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4B44C4CEE6;
 Sat, 15 Feb 2025 03:50:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 726D7380CEE9; Sat, 15 Feb 2025 03:50:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173959143126.2183234.5450052888067824074.git-patchwork-notify@kernel.org>
Date: Sat, 15 Feb 2025 03:50:31 +0000
References: <b16e4f01-4c85-46e2-b602-fce529293559@stanley.mountain>
In-Reply-To: <b16e4f01-4c85-46e2-b602-fce529293559@stanley.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: michal.swiatkowski@linux.intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 wojciech.drewek@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739591401;
 bh=b6/nZ7sBtZaW+Yl+7HeCc7E5cWu6kXLhCpeAAIGuaVc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=n8PHVpm/zIv+EEUgZlqBtk68vjtMrm+psHja54LQv0U79vJth7qac/2gvxa8lp3Lj
 dVQDx/PsqWBEPFqFR2TnlmeLcIbeQHOwJbIT4MsfjBud/MMu+964LIIhQWHAqZHPsv
 pIOVGQc1udYxC6l0FeER9uR1xEe9/4vVi5tC0kIovzisjLpSx8/lRSDYlYmTqsCWO4
 W1/3tuGL2GurDcIeD1JG6J4EvGvsKXEkbovo92fcT5Z1uqzkglKOYhQSpKZdkCEAPa
 zNjfyIl9KmtpYAW7mJo3e3XdTXD1bweI2gGmH8lJ3H8CpRSp1BKbBj838OyZfZldwQ
 O0DuJzBr9xZgg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=n8PHVpm/
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Fix signedness bug
 in ice_init_interrupt_scheme()
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

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 13 Feb 2025 09:31:41 +0300 you wrote:
> If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> then it returns -ENOSPC so there is no need to check for that in the
> caller.  In fact, because pf->msix.min is an unsigned int, it means that
> any negative error codes are type promoted to high positive values and
> treated as success.  So here, the "return -ENOMEM;" is unreachable code.
> Check for negatives instead.
> 
> [...]

Here is the summary with links:
  - [v2,net-next] ice: Fix signedness bug in ice_init_interrupt_scheme()
    https://git.kernel.org/netdev/net-next/c/c2ddb619fa8d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


