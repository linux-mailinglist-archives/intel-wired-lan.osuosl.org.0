Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055918C72C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:28:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D6BE41C55;
	Thu, 16 May 2024 08:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dqJ6l3HM6l0Z; Thu, 16 May 2024 08:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E91E540B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715848084;
	bh=d4hJtdBjJHYV39NdueoN5H8ZPgS1hyw5FDu5MtqkEXM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=stdaavlwDxqLjMNmi+r3MISCZuChHG7oFhM+81evmxPAOQXmIX8nif5JRLI6AzR31
	 vqyNoZVSxpAsvfyu/eevVrM834LsNGH6Nk45SBy9GG3EiJHC7uRRnlc4eVf4AiPPR5
	 l4W1TvO9a873fOQ+a8YNGyB2KoiG8L9eOP70IXsuiN+iF3xvI/YP7My1Fp1sqja7yg
	 bWb2/tYfuuL1j49o0gdB/hQYIn3cyR1xzTvWot708Iio7YkKwO6wnd/iYPBsQ/JSD1
	 aXXasOGf12cQeVytufUnt/Ej6scU/4q5q9Aom6SNNwU8HOHKtuLwWVgmueT5hoEeiY
	 qdV01Ld6JHK2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E91E540B75;
	Thu, 16 May 2024 08:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C85F01BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C181840795
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sCybh5rsVmUb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:28:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07CCC40794
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07CCC40794
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07CCC40794
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:28:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6310461627;
 Thu, 16 May 2024 08:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6C04C113CC;
 Thu, 16 May 2024 08:27:56 +0000 (UTC)
Date: Thu, 16 May 2024 09:27:54 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240516082754.GE179178@kernel.org>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
 <20240515160246.5181-2-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515160246.5181-2-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715848080;
 bh=K6LjZar4C+lKcaUcvKF9CUktTgIY/qpM6WOPF5lY1uw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IVM2U5GL41lJTUzuQNHCDzbJ+lZ1NsJiUnnwHsjBArxf3Mu3rushEXOEiGkSlD744
 ei3h/xt4Jw3/iEtIvTsF7imzCrsQ6E9BMT/EkCahgBOMpl085ZVphA05HiT1AnFAIh
 0tY9NIFSMskjH/g8z1vuBFhVSE4e2HwRcdkMmwQB4BnFpZuhpmvZFM6TfvaCGEYHI/
 AUBxKyZGlJjB4ndP/dggyUP+2mC5HEVfCxhczi92o0NzrwSWSpYaSlBQc9lQnAYOds
 ew7Sy2fRPYk1ygWnnQ0V8axIeRde63H0zPvIKUNJgaY/awJFPweqdhj4NPfj4vzYgL
 sQgI4500BrPZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IVM2U5GL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: remove af_xdp_zc_qps
 bitmap
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Magnus Karlsson <magnus.karlsson@gmail.com>, igor.bagnucki@intel.com,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 15, 2024 at 06:02:14PM +0200, Larysa Zaremba wrote:
> Referenced commit has introduced a bitmap to distinguish between ZC and
> copy-mode AF_XDP queues, because xsk_get_pool_from_qid() does not do this
> for us.
> 
> The bitmap would be especially useful when restoring previous state after
> rebuild, if only it was not reallocated in the process. This leads to e.g.
> xdpsock dying after changing number of queues.
> 
> Instead of preserving the bitmap during the rebuild, remove it completely
> and distinguish between ZC and copy-mode queues based on the presence of
> a device associated with the pool.
> 
> Fixes: e102db780e1c ("ice: track AF_XDP ZC enabled queues in bitmap")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

