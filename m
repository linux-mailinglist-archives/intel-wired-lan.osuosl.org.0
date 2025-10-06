Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FBFBBEF55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 20:30:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D8A416C2;
	Mon,  6 Oct 2025 18:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SSZcA5AJcyfP; Mon,  6 Oct 2025 18:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2219A4181D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759775427;
	bh=Ycv0kdEZXy37YOxc18kvccoMulUzqwvCvvCge2rJ4Uc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b2+itEFdwztvqO66WuFlI17Q2Mie7DHrD+271CNtu4FkotFiWsJF5JjmHOpgXQ1nj
	 zttbiMfx0uX3CtJ6xG2BSGKXhHK4hYT/qRrA7GqVIxdfniTECp21TImYouevUC6JDk
	 osxny0vsbdtEg7O8dDCKZCXZLxrM5eYBywDFNHng+h16gGXpT5aisQ+nv7+mXMm+75
	 3f6X5XywSbxh4UTOIgGwoK6jRFyuKUikAe5HOUBzLHKZAh5QyRHc7vnzMJTHxgW/Kg
	 vW/0QN0xazR4GMZeZppstJb1jHEtdTMuGmO9gBiYqkxJc5iy9aoJVs5LyQqLcpcjDn
	 XVu3kUZZS1kpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2219A4181D;
	Mon,  6 Oct 2025 18:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E83D119
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 18:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4531E418A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 18:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M9zjBhYhFNIg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 18:30:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F9AF40DE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F9AF40DE9
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F9AF40DE9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 18:30:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E337544B5C;
 Mon,  6 Oct 2025 18:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFC1EC4CEF5;
 Mon,  6 Oct 2025 18:30:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADDD739D0C1A; Mon,  6 Oct 2025 18:30:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175977541325.1511446.4780577963402519047.git-patchwork-notify@kernel.org>
Date: Mon, 06 Oct 2025 18:30:13 +0000
References: <20251001115336.1707-1-vulab@iscas.ac.cn>
In-Reply-To: <20251001115336.1707-1-vulab@iscas.ac.cn>
To: Haotian Zhang <vulab@iscas.ac.cn>
Cc: jacob.e.keller@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1759775423;
 bh=bdk7u6K8PpMBTqlKEhIiVPBy/qfBI6iyt2n82Zac3hw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=WnCbxhJQxgIN989j5eMhLZsYC0DQ4mLrs8QXCYGWJSRn0mBxhNI3k1qcIdjc6Cy3x
 2A6T+GjQ1/lwdNnym3QbD3NQl+WaOinYX591o1vhC7SuNu7GTIxlz/laSrETaxbzLJ
 YDX6BevWHqbV8b229xX6XRkHKa1xmZaLfPz7UHoOAS7LrmtstYgRpaUuyyEpWSqtbH
 D4nAZ6qGQ+227vRj3wivbpKGazWVqgqhlbpZruTTaYXv4CQLlCrd96lmlVeFIyIEJL
 kI+yuM3EVTIff9YP+Elo9lV70JX7blGpc1OfO7q14ORtqRreln7vmnh4vvtAE84sqW
 chrfxcF/RisWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WnCbxhJQ
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: ice_adapter: release xa entry
 on adapter allocation failure
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

On Wed,  1 Oct 2025 19:53:36 +0800 you wrote:
> When ice_adapter_new() fails, the reserved XArray entry created by
> xa_insert() is not released. This causes subsequent insertions at
> the same index to return -EBUSY, potentially leading to
> NULL pointer dereferences.
> 
> Reorder the operations as suggested by Przemek Kitszel:
> 1. Check if adapter already exists (xa_load)
> 2. Reserve the XArray slot (xa_reserve)
> 3. Allocate the adapter (ice_adapter_new)
> 4. Store the adapter (xa_store)
> 
> [...]

Here is the summary with links:
  - [v3] ice: ice_adapter: release xa entry on adapter allocation failure
    https://git.kernel.org/netdev/net/c/2db687f3469d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


