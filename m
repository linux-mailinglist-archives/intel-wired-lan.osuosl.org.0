Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 188C9A0324A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 22:50:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 887D8812C4;
	Mon,  6 Jan 2025 21:50:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8dcdugsrHzP4; Mon,  6 Jan 2025 21:50:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAB79812D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736200220;
	bh=tqOKdSX+jaXqxzFXFhv10UfPRenhiBeUCEO8Ow94lbc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6T0GOl9BQ6Iig0Fa2/OZZWVILySFKBOCLLDiU2Q6ljK+I5Nons+GUGWWgwEy5g6oT
	 KPhFKUYrzjjQnp9gJKVNrgQhxeZhasKDite1uk5E3etk1ajilwIaoGj7Gl6TUllvhn
	 xwQq64pWW5b21mGOXOKeGWKjJr1k616FdvIZgAeRwyfe+/fuhyCwuZTi4pVffOgKJT
	 a7aICuY59Kmpx2FW5l72luE68SHbB4iJCQ2sTA0NR0Tc7wIYBvvISsTIgnQAL12bjc
	 ixFpEEaul8O9tIdXNF+7UOM20QmthyjdsoYf1aH+/2YiA2M62xbGLGcVdHR7Sr9GWz
	 AGF3Z7G63tQTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAB79812D8;
	Mon,  6 Jan 2025 21:50:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC1DEF1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 21:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAC40812C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 21:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcZL2bXWW37z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 21:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18E11812D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18E11812D8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18E11812D8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 21:50:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D1B9EA41EAC;
 Mon,  6 Jan 2025 21:48:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54241C4CEE2;
 Mon,  6 Jan 2025 21:50:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADCDB380A97E; Mon,  6 Jan 2025 21:50:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173620023624.3628195.9876367005194137334.git-patchwork-notify@kernel.org>
Date: Mon, 06 Jan 2025 21:50:36 +0000
References: <20250102174142.200700-1-linux@treblig.org>
In-Reply-To: <20250102174142.200700-1-linux@treblig.org>
To: Dr. David Alan Gilbert <linux@treblig.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736200215;
 bh=R0r9M5LonzpOpsq/gji7YTTeW+Me6k2FVCsZTHKVObg=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=s4r7BUgyTrHVK7VhEvW9W6TePNY6fZ47gPLAVX8+3+Fyt/MFxBmGVEt5hKGi/KM8F
 jHotgaYsi/2OunpXhWQQfxGbFeWwGNU98I+dmLiBs8KGoYfEp2vi18lwxmL4h+CrQ1
 bK3EF4rZBd5UXyGl6ujOJRPZSDFzyH7P9Lb6zHqxtddMD/AVUtMCO67toDQD96Zv55
 d1bQzrZraN9tK4lVw37wFBq3o7Yp0VUyac8aIjqmTNKp4BWzqnXIhssgIEcHRmzbon
 C1Z1VFlYEdyat5FU1Z2AmNziWmN+maw+LPSYO9Q+TPHIJPG7cAeDiTF9+NUknteXPu
 fLh8NYrFxxjdQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s4r7BUgy
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] igc deadcoding
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu,  2 Jan 2025 17:41:39 +0000 you wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> Hi,
>   This set removes some functions that are entirely unused
> and have been since ~2018.
> 
> Build tested.
> 
> [...]

Here is the summary with links:
  - [net-next,1/3] igc: Remove unused igc_acquire/release_nvm
    https://git.kernel.org/netdev/net-next/c/b37dba891b17
  - [net-next,2/3] igc: Remove unused igc_read/write_pci_cfg wrappers
    https://git.kernel.org/netdev/net-next/c/121c3c6bc661
  - [net-next,3/3] igc: Remove unused igc_read/write_pcie_cap_reg
    https://git.kernel.org/netdev/net-next/c/c75889081366

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


