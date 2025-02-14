Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D981EA36646
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 20:40:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85C9F4179B;
	Fri, 14 Feb 2025 19:40:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yiKSahr4i7-a; Fri, 14 Feb 2025 19:40:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB6A441796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739562016;
	bh=33uaNcxcJN2Z3ogpgtxN3IltdkVGi5JEmhvdMuJHmXQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TKYHGInZXwNSXuxB7Uzpj29BPrLqeegQhD12laOs2i/J0yiSwkj3CJ4TjV644Eo5S
	 riBWjkjgHmzw3ouCFRe2OW7Qd+fPwG5Cn1dGqeDBZnoZ7RKyweP+dOULrcaR0qMY3u
	 D3eJ+HmmaPJDaCcZza5DK9z7jH7EfFKzJ+Lorso0hNAlFWEaTm7dmfOTzYYIUKCwIw
	 NOBIXHGucKXFDo3v0oNiREqVEJtWvpILiaYQJRHleZt9pJ/6U/dfEcFMJSuzM4Nw9n
	 CA7/B61TtPRgEYEIJf/5OgaYVt4s0N7OTaHiq59lmBMk0Jdd2BlEHji3LvD8+KUMyu
	 18LZeZfH8p5nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB6A441796;
	Fri, 14 Feb 2025 19:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BF101F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 19:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16A7583AD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 19:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-ClTbnl3Rq3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 19:40:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C8A5883AE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8A5883AE6
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8A5883AE6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 19:40:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C186BA43336;
 Fri, 14 Feb 2025 19:38:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC30C4CED1;
 Fri, 14 Feb 2025 19:40:09 +0000 (UTC)
Date: Fri, 14 Feb 2025 11:40:08 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev
 <netdev@vger.kernel.org>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250214114008.4975ccb4@kernel.org>
In-Reply-To: <20250213-jk-iavf-abba-lock-crash-v2-1-033d7bf298f8@intel.com>
References: <20250213-jk-iavf-abba-lock-crash-v2-1-033d7bf298f8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739562009;
 bh=HJs+4hensq83gR4ChmFoyMV/mUq+VAeO02qwJAD5gIw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gBitGIlOVwLGOgl9yiB8Pgmk4rdzh1q9KSnTCs8L56rbVO3qnkAitX0yiMeKj00Oo
 3E0MvzUrc//ZiKw5bhZg0yWt2P6N8semB2CHmoAhQLqZO2u25PGoieJSnOhJ277a0v
 qSe+KwXzYEvUv3X3A1XajT5FH/nE8/nYYH0MtfwW0FzLmeeOG+BpuTTU0pOCyD7f13
 ZhMdKpG3k60ZN9NwYyxhoSQVXq1g2MxTSE4S9Gr/f+EFGhBTB6/L1bd2tuXJTuliRz
 RirO2UxNsd0qyDui57Qe2gD7FwPYPWWadC6MiBQFjrOJt3lfnrOQKkezmHZYPAHNwQ
 w8w0oyDT3FWcw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gBitGIlO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: fix circular lock
 dependency with netdev_lock
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

On Thu, 13 Feb 2025 16:30:59 -0800 Jacob Keller wrote:
> Analyzing the places where we take crit_lock in the driver there are two
> sources:
> 
> a) several of the work queue tasks including adminq_task, watchdog_task,
> reset_task, and the finish_config task.
> 
> b) various callbacks which ultimately stem back to .ndo operations or
> ethtool operations.
> 
> The latter cannot be triggered until after the netdevice registration is
> completed successfully.
> 
> The iAVF driver uses alloc_ordered_workqueue, which is an unbound workqueue
> that has a max limit of 1, and thus guarantees that only a single work item
> on the queue is executing at any given time, so none of the other work
> threads could be executing due to the ordered workqueue guarantees.
> 
> The iavf_finish_config() function also does not do anything else after
> register_netdevice, unless it fails. It seems unlikely that the driver
> private crit_lock is protecting anything that register_netdevice() itself
> touches.
> 
> Thus, to fix this ABBA lock violation, lets simply release the
> adapter->crit_lock as well as netdev_lock prior to calling
> register_netdevice(). We do still keep holding the RTNL lock as required by
> the function. If we do fail to register the netdevice, then we re-acquire
> the adapter critical lock to finish the transition back to
> __IAVF_INIT_CONFIG_ADAPTER.
> 
> This ensures every call where both netdev_lock and the adapter->crit_lock
> are acquired under the same ordering.

Thanks a lot for figuring this out, much appreciated!

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
