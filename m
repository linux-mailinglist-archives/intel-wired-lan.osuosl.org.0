Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1F09A1DC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 11:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C8014066A;
	Thu, 17 Oct 2024 09:04:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pyg0Mtvfeqgs; Thu, 17 Oct 2024 09:04:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B16754076E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729155875;
	bh=8td+raJppumIQUbEbi2nGF0kcQTVJZczGWFJQd03Jq4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n1gTWtUxOr7S70nGw3gW7D64vVtnmSWu0KT6G6KDaep4pFARlfV/mhewljH4QaRRD
	 BeUbdEr/ZStwV9RwbdgcOEA1UZta0vc0Mg6qhvA3gugyPsZ5FFuwOFDsEDwfWwH9Tl
	 jRc7RwCI2DPnfnGstTBz4ctUn/yslOQaQMC8m0jmboTQkG541cpgovf1cJFl2bNjw9
	 P5JyPG1IwgXMsUoDfYHI/WFwySeqhxE3EqVGjm0bvv29QUgG2Rueg41zYDKX802wOl
	 TwMJcHNSxRNI6zYS3U2w8r783txBhuxVSeSoFJcpBSeeuA6rQxIXQdT4VXno7QoMIp
	 Objalq7Vdvizg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B16754076E;
	Thu, 17 Oct 2024 09:04:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AA1F27EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7463405B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlAsFJA5qqhw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 09:04:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A8B5404C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A8B5404C5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A8B5404C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:04:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 608685C5D37;
 Thu, 17 Oct 2024 09:04:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F9EDC4CEC3;
 Thu, 17 Oct 2024 09:04:30 +0000 (UTC)
Date: Thu, 17 Oct 2024 10:04:28 +0100
From: Simon Horman <horms@kernel.org>
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, aleksander.lobakin@intel.com,
 madhu.chittim@intel.com, netdev@vger.kernel.org
Message-ID: <20241017090428.GS2162@kernel.org>
References: <20241007202435.664345-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007202435.664345-1-joshua.a.hay@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729155871;
 bh=d5kqO4Bh9+2mLG4iFeXcX1lSGbbJ2UL2sLpOF4R3KX4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fBhsGYDEZBWr9wfeIkUXehVLJCt/J7hM7gGxAJdLccpuNX1U0hYNC98bIGTWzqhbk
 Llp/chNtnicm3xiUxDYY3lzr8qQCNeMOFl18oJG8nKQV39Bb/EEPGXF+MKusJ9giUK
 +OXz5msY94POZSBJ07Qrs67baL//sIQppD6TSL0XiTGLC13ic+f/gOkTIiRld18t0w
 9cSsx4UmItjp6pz3VDPgF42dQqMuxOkjJ0jAaHc+ticCg8mxqCtnR5c7/Qshp2noxH
 QFNCK8Oyh64BQx8AlnEbq2LktCJKdDgpnypgCG5Uz20x2yk9yOk7p3/DKY8bVrQ+/y
 ypcvstjsXz0Fg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fBhsGYDE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: set completion tag for
 "empty" bufs associated with a packet
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

On Mon, Oct 07, 2024 at 01:24:35PM -0700, Joshua Hay wrote:
> Commit d9028db618a6 ("idpf: convert to libeth Tx buffer completion")
> inadvertently removed code that was necessary for the tx buffer cleaning
> routine to iterate over all buffers associated with a packet.
> 
> When a frag is too large for a single data descriptor, it will be split
> across multiple data descriptors. This means the frag will span multiple
> buffers in the buffer ring in order to keep the descriptor and buffer
> ring indexes aligned. The buffer entries in the ring are technically
> empty and no cleaning actions need to be performed. These empty buffers
> can precede other frags associated with the same packet. I.e. a single
> packet on the buffer ring can look like:
> 
> 	buf[0]=skb0.frag0
> 	buf[1]=skb0.frag1
> 	buf[2]=empty
> 	buf[3]=skb0.frag2
> 
> The cleaning routine iterates through these buffers based on a matching
> completion tag. If the completion tag is not set for buf2, the loop will
> end prematurely. Frag2 will be left uncleaned and next_to_clean will be
> left pointing to the end of packet, which will break the cleaning logic
> for subsequent cleans. This consequently leads to tx timeouts.
> 
> Assign the empty bufs the same completion tag for the packet to ensure
> the cleaning routine iterates over all of the buffers associated with
> the packet.
> 
> Fixes: d9028db618a6 ("idpf: convert to libeth Tx buffer completion")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Madhu chittim <madhu.chittim@intel.com>

Thanks for the detailed description.

Reviewed-by: Simon Horman <horms@kernel.org>
