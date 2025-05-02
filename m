Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7726AA6E39
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 11:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84DE541552;
	Fri,  2 May 2025 09:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4jG4Plw_8yW; Fri,  2 May 2025 09:36:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8A5541550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746178580;
	bh=wqgy53IKHmPNpHADK7KRC8FETh3ffBRz4E6RtpaLAbA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36LVTAhLDVMMCcoOVB8MzWBwOHO70z5uMW0bL/MoxQR2NElbiwI47E/QyeVsrJ56y
	 AO/lbmehHBNSyG+KE2K+mEbSjHvO77+KQJBxAOXkjrb+FF2tHIYo83Ls5YTwNGAr2e
	 zp8hn94IFc2OgDZEPhrJYp2vmdo0pJ6CL316+P5XNk6ynPFHPoDWMMmAjKaCQtR45s
	 qmAJzz4xuYorIDoYmUuDiB+JmQcu8TCge5AZybBbVnVs7kvYv92jyHtd3JEim/+ltv
	 gVN69lSkH/dfJ5KTt0Ga9rmviS5oVNG3ZLSLdcLAL4GwxMj32KQ0bmGTEGf9pPYU/P
	 dRThS77p8x8tg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8A5541550;
	Fri,  2 May 2025 09:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E25B11A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:36:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCF9983BE6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A6ro9PhXbzKc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 May 2025 09:36:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DBC683BF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DBC683BF4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DBC683BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:36:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5055D4A83C;
 Fri,  2 May 2025 09:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BF07C4CEE4;
 Fri,  2 May 2025 09:36:13 +0000 (UTC)
Date: Fri, 2 May 2025 10:36:10 +0100
From: Simon Horman <horms@kernel.org>
To: Brian Vazquez <brianvv@google.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Josh Hay <joshua.a.hay@intel.com>,
 Luigi Rizzo <lrizzo@google.com>
Message-ID: <20250502093610.GE3339421@horms.kernel.org>
References: <20250428195532.1590892-1-brianvv@google.com>
 <20250501151616.GA3339421@horms.kernel.org>
 <CAMzD94SNJe3QcLgNCPtVqDa69B7qcghcBkSOPWzV43d_XAeYuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMzD94SNJe3QcLgNCPtVqDa69B7qcghcBkSOPWzV43d_XAeYuQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746178577;
 bh=nNsPW6XIz1dfXDGedIBWReECqLV2gSOT1oJoe6xzPy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CkWn2BuLyal3lMk+03qVPnGB4YzEZb/iTNj8WHzyeTeRjRaQY6H1mgAM8Vy+fKaQ6
 PGnuHlP7uy5OJqhnBE919YK/fkOdJEfdWOymkh/J2ToOIFTk2tVfhJnzK5hOmlGbpG
 SLH8uG4SnafT8Ys0wGFYUTcq8fiOWNsLyghLw92N6l+bQkzQA6RqZAsV1r9S+Fbsa5
 t1VUXX656s3deliP0xdGbc2ISD29RUesIuAn/hm6LoXnQ+sCwwAyTks99Pliwd9nv5
 IIpJJW1qtkRZsC906bV5eoWzbTkhdk8ORB9DmrF2kzI+mf/f13RqCXE3B+koh80/OC
 i17ZgFJitjoqQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CkWn2BuL
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: fix a race in txq
 wakeup
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

On Thu, May 01, 2025 at 12:51:48PM -0400, Brian Vazquez wrote:
> On Thu, May 1, 2025 at 11:16 AM Simon Horman <horms@kernel.org> wrote:
> >
> > On Mon, Apr 28, 2025 at 07:55:32PM +0000, Brian Vazquez wrote:
> > > Add a helper function to correctly handle the lockless
> > > synchronization when the sender needs to block. The paradigm is
> > >
> > >         if (no_resources()) {
> > >                 stop_queue();
> > >                 barrier();
> > >                 if (!no_resources())
> > >                         restart_queue();
> > >         }
> > >
> > > netif_subqueue_maybe_stop already handles the paradigm correctly, but
> > > the code split the check for resources in three parts, the first one
> > > (descriptors) followed the protocol, but the other two (completions and
> > > tx_buf) were only doing the first part and so race prone.
> > >
> > > Luckily netif_subqueue_maybe_stop macro already allows you to use a
> > > function to evaluate the start/stop conditions so the fix only requires
> > > the right helper function to evaluate all the conditions at once.
> > >
> > > The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> > > and instead adjusts separately the conditions for singleq and splitq.
> > >
> > > Note that idpf_rx_buf_hw_update doesn't need to check for resources
> > > since that will be covered in idpf_tx_splitq_frame.
> >
> > Should the above read idpf_tx_buf_hw_update() rather than
> > idpf_rx_buf_hw_update()?
> 
> Nice catch, that's a typo indeed.

Thanks. I only noticed because on reading the above I was looking
at idpf_rx_buf_hw_update(). Which turned out to not be very useful
in the context of reviewing this patch.

> > If so, I see that this is true when idpf_tx_buf_hw_update() is called from
> > idpf_tx_singleq_frame(). But is a check required in the case where
> > idpf_rx_buf_hw_update() is called by idpf_tx_singleq_map()?
> 
> No, the check is not required. The call is at the end of
> idpf_tx_singleq_map at that point you already checked for resources
> and you're about to send the pkt.

Thanks for the clarification.
In that case this patch looks good to me.
(But please do fix the typo.)

Reviewed-by: Simon Horman <horms@kernel.org>
