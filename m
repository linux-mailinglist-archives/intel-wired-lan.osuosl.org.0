Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA2BA404D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 16:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2456261C41;
	Fri, 26 Sep 2025 14:03:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2y6lMky0iXCh; Fri, 26 Sep 2025 14:03:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9B0261C57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758895390;
	bh=Ty6eHxuL03xj/Jw+AmKcNGmU/GEnopMXr86I8u6r9wk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yo5vMw6ust2QZV5pwUQZVYZDnyoHg+Mn9hMej/9FZUaNXHdRwFe1+tvz0WWuRZrpI
	 qPwKi3Ge4euqQyuujyjfUo3iWdSWogIR4qWbpxNaVX2Ui6jJ5ZfvkFgGZ/7rZ4SL1A
	 9DbXNAlafd5aIEBEg53vGwCsiGopHymp++6ToGOtLaAZMo8p3Eh8Piwj8+zj6PQduj
	 hu9ZoB1G7whMPmub4pom/4RPxwCjg6aGnjEKnZvenwEFt5WWsAQ8uQPc59DnBi3jQK
	 4zvaoXsu88tOQkNH6C5QuK6vplVFGgGTMCBrI+459WaqHraohofmOuTqwoUQcu6CHA
	 HTJ6RPeiAjqOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B0261C57;
	Fri, 26 Sep 2025 14:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 29F8612D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 14:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1087F4226D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 14:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icqSqXK5-diU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 14:03:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E91642064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E91642064
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E91642064
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 14:03:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B0BFC40B65;
 Fri, 26 Sep 2025 14:03:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DC41C116B1;
 Fri, 26 Sep 2025 14:03:04 +0000 (UTC)
Date: Fri, 26 Sep 2025 15:03:03 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Message-ID: <aNadF8lvpXa5beZJ@horms.kernel.org>
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758895387;
 bh=D3yE3RXNEe3cKems2Eep6LHdH9Tp4ND0Hi86D8+zqg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Emx37HY6kV5btgt/bVj4p0MF1pzRlLsLTN5KUiolsRdR5lWEp/TBjfaeHMirjddSP
 WERu8ARGLRf3HwTEPMPMFDF4i+qcLs2cQqhi2yc3ROA36X4QTb41hMXz7Kk6KLg0Pd
 wpzcNwZwZkBJFkMr2CiMVdQWllRPN+k4N8Defj0cP4/ht0lErovLE/gYOieUnH/Kvn
 RsCQbGSXU3bm8yDFoc8bwfUdr8iB0SR8GMh8wrY7mTswXlKikZX6Q9/uah2BD3eBr+
 DpV10Dzr8R35ESzNQY5v6N24OWal6YjEoi3yHBzd3KdxPzuM59DTwBn+Zpn9CzZZgL
 p/0uFxG9wklGg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Emx37HY6
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
 function for dma_alloc_coherent
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
Cc: andrew+netdev@lunn.ch, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 alan.brady@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 25, 2025 at 11:02:10AM -0700, Alok Tiwari wrote:
> The mailbox receive path allocates coherent DMA memory with
> dma_alloc_coherent(), but frees it with dmam_free_coherent().
> This is incorrect since dmam_free_coherent() is only valid for
> buffers allocated with dmam_alloc_coherent().
> 
> Fix the mismatch by using dma_free_coherent() instead of
> dmam_free_coherent
> 
> Fixes: e54232da1238 ("idpf: refactor idpf_recv_mb_msg")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

Reviewed-by: Simon Horman <horms@kernel.org>

