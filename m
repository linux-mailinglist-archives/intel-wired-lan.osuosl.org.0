Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2D4AB485F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 02:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFE5D406A2;
	Tue, 13 May 2025 00:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fWn0cKiGtPHJ; Tue, 13 May 2025 00:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3749240663
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747095717;
	bh=hjIk9wYO8NH329YYVbgDqM1tZ3HP/D9mK1VSosVGq0k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qKUBeJ9kpCFpRqF00su5wzoiUNDmM5KNbriov7BKO+JamAWTN/rWpmwW99xJRvuPs
	 JpwTwHYJCxonbGZyus2jiqQ6T1nqrij8QD+lsqti29nrvVRMA1Qm7kBPsv+spMY7HY
	 OsaygUzkfJjqmPr9u+CwY2bIZBcIZ1zO8sQh8S63QKrVSDOv6KXRTTPGu4dVNz++7R
	 CFzu7E6SNvfFNb3SHAeTboJHqgpoMs476qS1se/KFgn/sE/T9Apoln1+58iXQRKuu5
	 fxe8LK/c9o3n+8s1oFhH6FDx/9OfV+8kRnd7fO31Q1vIOdMJ+iYPMttGFl3Vn7pCVd
	 f0tMF0+YQz/yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3749240663;
	Tue, 13 May 2025 00:21:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E091154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A7584057E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jD0sB3_1YhZC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 00:21:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18D81405C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18D81405C0
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18D81405C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:21:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7B1CB629D8;
 Tue, 13 May 2025 00:21:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C730FC4CEE7;
 Tue, 13 May 2025 00:21:46 +0000 (UTC)
Date: Mon, 12 May 2025 17:21:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250512172146.2f06e09f@kernel.org>
In-Reply-To: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747095706;
 bh=K59e99dyJlhqi6GdqdXyTHH+CUfx1BiXFdixg96IZrI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G0tqahRBA1FxoqHpUf3M0zHmra7VGLbI0aoBFKV31uLHL3PajXW3xc7YT0k4FmwjQ
 3Za8KtI8udEzQ1oRXuX5Huy1kC7WxwSr3wf7m886cI/HTDX/6t/3oMrx90T888c+dp
 ScyqTVC8+spAY537Ug2cw2Cw62r1T1DGwCKzgo/q7oPUy+3t+AmRt/1eCG7WLtHPMN
 YSK8zuOHjhxQwHzdQcsDQ/eXk/4Yb8n9U1MA61KI2rv3bpraSergmjHfMLoVcYv6nH
 6laiJDBmX/jLZTXbu5nGqVT+7WgMbXvIMWAKZdXiX6ZhYfbjL94kJEQIxxmCk8Lvzq
 /PDQSoL4l4O8w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=G0tqahRB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Add link_down_events
 counters to ixgbe and ice drivers
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

On Mon, 12 May 2025 11:05:14 +0200 Martyna Szapar-Mudlaw wrote:
> This series introduces link_down_events counters to the ixgbe and ice drivers.
> The counters are incremented each time the link transitions from up to down,
> allowing better diagnosis of link stability issues such as port flapping or
> unexpected link drops.

To confirm, will the counter increment:
 - when link is held up by BMC / NC-SI or some other agent 
   and user does down/up on the host?
 - when user reconfigures channels, attaches XDP etc?

Would be good to document that in the cover letter.
