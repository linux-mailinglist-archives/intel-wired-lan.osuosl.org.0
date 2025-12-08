Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BDECADCEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 18:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3493483C1F;
	Mon,  8 Dec 2025 17:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eQhJfGlvXAkB; Mon,  8 Dec 2025 17:06:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D7D83C0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765213583;
	bh=8s6SViZQ72dlw/cQCsIf2JyriIOxvr2obhp8T7chPs8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F16o691erWqiZiWwq4DM8TkVgZbfGqnkjBRqZsXB6zJ4vDILUvvTZLHlWMmV+O720
	 C5pa7rAZfe7GFJCyrSR1mOPiT+RiL/OT8qsCIYG6KMlO45L8rHO/+0+Jw3wcPseVUH
	 f4ok1YCGdOYujzNFganN9EE4KCPstVYXbXy2YKeTE8cbJQt5efIFizrOUzqa0fCe9o
	 g+swydQ8X2rGtOGU9fzGjxdPSCdP2pJeBOxJ7F2B6C6e7KRWwyOYc150Ck2yM3I6zM
	 TsRMHSInhxrk9ZFTyJgnEHWMX/zHfIn0Hh7wpTuLFie5razpxtYukEB79guyaFkmdj
	 FJMzoYBck1uJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8D7D83C0A;
	Mon,  8 Dec 2025 17:06:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E200C151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 17:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C820E60B4C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 17:06:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Agl_hsYfo51A for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 17:06:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3512A60B24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3512A60B24
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3512A60B24
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 17:06:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1CD4760133;
 Mon,  8 Dec 2025 17:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29736C4CEF1;
 Mon,  8 Dec 2025 17:06:16 +0000 (UTC)
Date: Mon, 8 Dec 2025 17:06:14 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, kohei.enju@gmail.com
Message-ID: <aTcFhoH-z2btEKT-@horms.kernel.org>
References: <20251206155146.95857-1-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251206155146.95857-1-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1765213579;
 bh=dWzchTxm0gXG4RlOi7Dhq5Q2vQ/4gedqC/TCr7AWiHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qcPHdJUfQr7hJvkc5ghVSJDY6wK+5RSdqCPoSFVaLO8uJagVSyPL/nOHYwgABXAqc
 z0r9HW/cri9AFjN1p3jeR6ycPVt2MTqo4zbno+gOmqiDV+D9v8LfyWlUwCIpQY+EGX
 e3et9mw9g23EjlpkRLLB7ULidWgrxcrrAyxn+qDoIHxtgB9IugYO1xJAXa7hf6cXOP
 bbibPsqhsdCYJox/N2KFXlc6mKhqDuLcjKZBZN8Im3gbJ1FEUzQUSghzXweYW0jEMI
 QAiHeUi3uRzHman0AQNOxMXI5A4Sw8z2HMDdNVWh19PM6XoYa+CnEX610nHotcKvL3
 JER78OJO/QTHw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qcPHdJUf
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
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

On Sun, Dec 07, 2025 at 12:51:27AM +0900, Kohei Enju wrote:
> ixgbe_recovery_probe() does not free the following resources in its
> error path, unlike ixgbe_probe():
> - adapter->io_addr
> - adapter->jump_tables[0]
> - adapter->mac_table
> - adapter->rss_key
> - adapter->af_xdp_zc_qps
> 
> The leaked MMIO region can be observed in /proc/vmallocinfo, and the
> remaining leaks are reported by kmemleak.
> 
> Free these allocations and unmap the MMIO region on failure to avoid the
> leaks.
> 
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mode")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Hi,

It seems that ixgbe_recovery_probe()  is only called from ixgbe_probe().
And that ixgbe_probe() already has an unwind ladder for these resources.
So I would suggest using that rather than replicating it
in ixgbe_recovery_probe. That is, have ixgbe_probe() unwind when
ixgbe_recovery_probe returns an error.

Also, maybe I'm wrong, but it seems that hw->aci.lock
is initialised more than once if ixgbe_recovery_probe() is called.

...
