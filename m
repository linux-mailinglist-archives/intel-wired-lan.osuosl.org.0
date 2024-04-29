Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F40C8B5936
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 14:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BE2F81DAB;
	Mon, 29 Apr 2024 12:57:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wemOBoxmAnzG; Mon, 29 Apr 2024 12:57:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BA7981DF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714395475;
	bh=ABLcTSSDifSNKcnXO04m5SNsi9qk8dBoJg/dPda/TgA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w9lfNkt4a1h7neXfqlIOqpmZQqIZL0TcFYWHZLHigz0Gd7AnW8pMcxVN7G1P7XkDf
	 aLtDtjvesKyjsoUJuT5G18Pyvpibsol/iuZzDSjJ1teBXNwWHkXCHMGIkp6r9N6D4P
	 /QS1Hwu5gobB4lvfCa7R+/s1/SvMKvYpy5GOcRJK2dD3fgZMnu5/fP8at7OTL4yYkA
	 +dlM8DubNQjSLdWZ7J9C/vLeibmbnPCPwalg31yB1WoN0rbIUw8s4K3Zcu5TRnL0CF
	 h+TGOEum2OsFz54FW96rcFQYQP07r5Pc1opQLVNSQ2QQJATjeoIyhX9G0qgVtnxKsz
	 pobFGIj8q57jQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BA7981DF5;
	Mon, 29 Apr 2024 12:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D309B1BF951
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD9AB606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmhuF5AsyifU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 12:57:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B9A0460654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9A0460654
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9A0460654
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:57:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5BED2CE0B6A;
 Mon, 29 Apr 2024 12:57:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15165C4AF17;
 Mon, 29 Apr 2024 12:57:44 +0000 (UTC)
Date: Mon, 29 Apr 2024 13:57:42 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240429125742.GX516117@kernel.org>
References: <20240426144408.1353962-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426144408.1353962-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714395467;
 bh=szOipog58uDKQbq3rAwx1O2WRdTgbJ6PtSPilHFTcyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vPKOdYBhYxfxgg84blVbmKXkH4I8XVvqkXnVC5rpmsKRgOGOg0J3chsFG5yIkBpKk
 Px3JvrOfoEXJcX5e6/WOWaZo95+M8KM1PSmlsTHIrvS3GBgreWCXuzmfaglaCDSRG3
 J+rTHCVIcbXXy/gF1437bPFzlSyG0G3uMHUqnUcwqAGEVpw81K80tR66IoME3i0q7X
 ArNjAr/FkyGJ2qSYMW8w6mRAW98KVvGkx8hPjj5hE7sKrlhXBYtkRry5rNXkWXl/+a
 sFUSPd6YETlv0vzcyz2HhMUAca7dUKOnlGcIl9GOjaTWLnvSRDVmOTcPaHE6lH55u1
 Q10No13LLAgyg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=vPKOdYBh
Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: don't enable NAPI and
 interrupts prior to allocating Rx buffers
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 26, 2024 at 04:44:08PM +0200, Alexander Lobakin wrote:
> Currently, idpf enables NAPI and interrupts prior to allocating Rx
> buffers.
> This may lead to frame loss (there are no buffers to place incoming
> frames) and even crashes on quick ifup-ifdown. Interrupts must be
> enabled only after all the resources are here and available.
> Split interrupt init into two phases: initialization and enabling,
> and perform the second only after the queues are fully initialized.
> Note that we can't just move interrupt initialization down the init
> process, as the queues must have correct a ::q_vector pointer set
> and NAPI already added in order to allocate buffers correctly.
> Also, during the deinit process, disable HW interrupts first and
> only then disable NAPI. Otherwise, there can be a HW event leading
> to napi_schedule(), but the NAPI will already be unavailable.
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Reported-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

