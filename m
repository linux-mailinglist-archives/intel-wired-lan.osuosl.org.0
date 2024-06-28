Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C38F91BF1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C93BD407AD;
	Fri, 28 Jun 2024 12:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7D3Kd6tftmWr; Fri, 28 Jun 2024 12:59:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A23C041965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719579560;
	bh=J338mc73VC21+fTeIB6tZ9k5ubEFoMg1X3Fw3Fo5poI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AD92nMWp3fde6+ToF029iZ11oTNA0Y0etts3jxnEo8TZuCx7L++yOuNX1O7swvCLu
	 wuAxnetpF9P48BZHwHXdlYLwYCRaSqfDeeqZFvwlh2oepTEVwmGFqfcLaQBPgwmWqM
	 wfcjVIVryJ7ZLUwu/KW9x2QdmCmf6qPVtBquy7JakkDxHhpi3EJ9h/b8+y41UHFG1/
	 8sPdWmja+8MK/2IsdMCRUPoEKWoJ9P3vC9uIWGNzcOgiP/IXE57TGUZru8UAB97HyO
	 IGB/kj9EJIfj9f4jhcH9alp01y7HqUWpdhpEjz7w6rCdXsr6ItUk3UAkGgiheq0NUo
	 9/Mii1ip4M2jA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A23C041965;
	Fri, 28 Jun 2024 12:59:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32D771BF20D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BE1D80B35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uxbCI7lU2Eay for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:59:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3165580B2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3165580B2A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3165580B2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:59:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5B12F62162;
 Fri, 28 Jun 2024 12:59:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A098EC116B1;
 Fri, 28 Jun 2024 12:59:14 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:59:12 +0100
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240628125912.GF783093@kernel.org>
References: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719579557;
 bh=AALzB7Je+dbwh9aqhaMZgSkeBrDEJ4ks1mzPpaq1yQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DDwFXP0Jezjh6HwRwWyN4HiJxGhb1hSRwHt/ZYzmyzmOCyrPwU/rNrckD4px3ywZd
 E8odmGUnqgblI3gL/sdST1uqbx785TAEVx98PMpcJIwajUWnwnNy5io8K4FjqaZzh3
 q7N3prYya54Qn95j3rXkErV9SKsVK1a23VS1VV9JXms5ID3YTy5TvnsEBu+bdVWdGY
 xhQCOLU+Cd1I2HZ1HUlg7ZE/g/4OVyLO7tuNZogKO7k4wF3fEDY/wALEmkRoctDL9H
 SidVEi+c01SgPB7yBsR0uqmON+sGOUc6WFtEY0lXT2QeKRNh6ewq+bznFm8KTCk2Pb
 uI5N+xPfkNc5w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DDwFXP0J
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Get rid of spurious
 interrupts
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 21, 2024 at 08:56:30AM +0200, Kurt Kanzenbach wrote:
> When running the igc with XDP/ZC in busy polling mode with deferral of hard
> interrupts, interrupts still happen from time to time. That is caused by
> the igc task watchdog which triggers Rx interrupts periodically.
> 
> That mechanism has been introduced to overcome skb/memory allocation
> failures [1]. So the Rx clean functions stop processing the Rx ring in case
> of such failure. The task watchdog triggers Rx interrupts periodically in
> the hope that memory became available in the mean time.
> 
> The current behavior is undesirable for real time applications, because the
> driver induced Rx interrupts trigger also the softirq processing. However,
> all real time packets should be processed by the application which uses the
> busy polling method.
> 
> Therefore, only trigger the Rx interrupts in case of real allocation
> failures. Introduce a new flag for signaling that condition.
> 
> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=3be507547e6177e5c808544bd6a2efa2c7f1d436
> 
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Reviewed-by: Simon Horman <horms@kernel.org>

