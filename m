Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8219BDB7B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:54:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D64D80CDA;
	Wed,  6 Nov 2024 01:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2dt41_m2af_v; Wed,  6 Nov 2024 01:54:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8D2D80CBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730858059;
	bh=krBQWELC+3F4Fi4zONyVuksllO3/Dbsja0pue70TRwk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dY7BUu+tV4rA7gJDT5BcYuAnLRbH6IN+H2HPtaygasH8QiXldRdAdcHFJGZQQj/rM
	 BCtYlC1QJxEXl/G++9hAOIHsMyUyIAQjPzk16VYLtKaR631V1zgEUR+MkKa6TXatnb
	 t1c12ni07e5BrjDl8PkJPBd20YOb0f6+Ucz5TohwekVLpFKeL23uEAD3ilKKffL9q3
	 kDdETeZuMH0Jv0r49t/K49g4Ya7JxCvyTqku/TOMx7MwKfBQEbgCjmK50kO+rV8gks
	 vgG0uXGOVP5yCOhjuy+UQgFK/vMx5GICEcpMyzyCQayNwxVARzChouoGI13XgRVJ+/
	 ojFo3yJ0OhpZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8D2D80CBC;
	Wed,  6 Nov 2024 01:54:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EE6143B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBDA44056F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dveAcHQuTymd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:54:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1F60740611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F60740611
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F60740611
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:54:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 324525C490F;
 Wed,  6 Nov 2024 01:53:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C70B4C4CECF;
 Wed,  6 Nov 2024 01:54:14 +0000 (UTC)
Date: Tue, 5 Nov 2024 17:54:13 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Wander Lairson Costa <wander@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Clark Williams <clrkwllms@kernel.org>, Steven
 Rostedt <rostedt@goodmis.org>, intel-wired-lan@lists.osuosl.org (moderated
 list:INTEL ETHERNET DRIVERS), netdev@vger.kernel.org (open list:NETWORKING
 DRIVERS), linux-kernel@vger.kernel.org (open list),
 linux-rt-devel@lists.linux.dev (open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT), tglx@linutronix.de
Message-ID: <20241105175413.55ea58f2@kernel.org>
In-Reply-To: <20241104124050.22290-1-wander@redhat.com>
References: <20241104124050.22290-1-wander@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730858055;
 bh=rEl5+/OVz3kpLjNrN+e36IZX2U5ZNK+h6eVl+LZGakU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XzEDivC5rp/8TTRdZfv/Ci2uqPYaOVTIdD+l2cQEGcVRGceK3y0fLCaYvvmUDMfOe
 TpmH1wz4PQY17ZDfbopnVoz1Dt1TBkqhOUrvQiPWBhuHD6SDApSQawS9oY+dqStdiG
 M6HbXxdVg18DuowqALTjgGdECbMm1E9C5buoUIOWBTNJiCxLeQxLeLskRlgrZCfqB3
 MEgcLPOrR3Upqc/XVisZVSNn8jS7xU3imx7VC6yhquHet7PoJyuZgNBRGTVWiZ7Jjw
 I4r6u+erfinjjFCZiPDyPOQ7+NSwggrsaVeOLp3Rlx8rm1zdKQptbz93y6nugnm0/W
 3Rbyp1ydDoSrQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XzEDivC5
Subject: Re: [Intel-wired-lan] [PATCH] Revert "igb: Disable threaded IRQ for
 igb_msix_other"
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

On Mon,  4 Nov 2024 09:40:50 -0300 Wander Lairson Costa wrote:
> This reverts commit 338c4d3902feb5be49bfda530a72c7ab860e2c9f.
> 
> Sebastian noticed the ISR indirectly acquires spin_locks, which are
> sleeping locks under PREEMPT_RT, which leads to kernel splats.
> 
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Please resend with the reverted commit added as a Fixes tag.
Also - your sign off should be the last tag.
-- 
pw-bot: au
