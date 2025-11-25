Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 408D0C846B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D02706081E;
	Tue, 25 Nov 2025 10:17:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2IbVD7Hpxe3v; Tue, 25 Nov 2025 10:17:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BD7C6110B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065879;
	bh=JdzfVUjcYly5xEXkuZcXuq8iSeW/NaGHx7n9PVOTArE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TT7/j1z/OKpCZpVupJwqz7aDxJIp3/02G/8PwHqlFaJxegPGj2NNCtBadem/o7sE0
	 h5Xci4xZ3vyu3zkYp+jJ23ZaUyNa43WhPqtesg0+Le6dlpVz25jdsh5+3RtTy10MJE
	 /dF8yEEegwwVnpG5c332+XWf258Pddo2N0w66Apwx0NyHreyCpKiEXA2sEiRM2iGJ/
	 qjD1j4HEDjfu8pJDrE6iVq6VW1Q4NtP5pwuqWeDHeRo/PChy9kOQA0pya/Nmqhx2z7
	 U6BdCvUFHM7jXbEE7+kt1AcZG4i7oRdqasvExtKMY+cEy3rW3CsopHaewsylUgxrf+
	 LlSzOByC8MNiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BD7C6110B;
	Tue, 25 Nov 2025 10:17:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3205E359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23C7161018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H6dtHkBpOav6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:17:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5121D6081E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5121D6081E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5121D6081E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3F1F16018E;
 Tue, 25 Nov 2025 10:17:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78DE3C4CEF1;
 Tue, 25 Nov 2025 10:17:53 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:17:51 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWCT0eB79P6h18F@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-6-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-6-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065874;
 bh=o+Vfe0Fy4pq3eqIblH1sLFa/lglx2592/BxFmP59NsI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XMN9vTUjvzZpDi2fIGWPjeImqIrBfjXFM+ZEAK4Dx4/dSE3xGwK5qJSZDUQF9mbSo
 MdccPkck5lMpol/FoA/4tcbQKT8OxoMGfV7Rticcfbw//pDkao24w+Dwjn9UhwSeUo
 lNCaCyQdI5rR6NB2Ar5Y/l3j5SvjG2abdvB/MvukcBuHfKVtEbiFxyFK3xv3K+QX0D
 So+IVDOwGYLHUL9BSoF0clPjw58iS91tIWaOjjRdL9U2gRdJhgo92A3khD1Ev1DMHK
 qf2MLzQ1o0+ulWpSeLGXKSkDMvwvQP8/MUtRV2fUHP2eixm7smrYr4uQnzsCE/QCXT
 ZB0QsTAgF3cIw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XMN9vTUj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: convert all ring
 stats to u64_stats_t
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

On Thu, Nov 20, 2025 at 12:20:46PM -0800, Jacob Keller wrote:
> After several cleanups, the ice driver is now finally ready to convert all
> Tx and Rx ring stats to the u64_stats_t and proper use of the u64 stats
> APIs.
> 
> The final remaining part to cleanup is the VSI stats accumulation logic in
> ice_update_vsi_ring_stats().
> 
> Refactor the function and its helpers so that all stat values (and not
> just pkts and bytes) use the u64_stats APIs. The
> ice_fetch_u64_(tx|rx)_stats functions read the stat values using
> u64_stats_read and then copy them into local ice_vsi_(tx|rx)_stats
> structures. This does require making a new struct with the stat fields as
> u64.
> 
> The ice_update_vsi_(tx|rx)_ring_stats functions call the fetch functions
> per ring and accumulate the result into one copy of the struct. This
> accumulated total is then used to update the relevant VSI fields.
> 
> Since these are relatively small, the contents are all stored on the stack
> rather than allocating and freeing memory.
> 
> Once the accumulator side is updated, the helper ice_stats_read and
> ice_stats_inc and other related helper functions all easily translate to
> use of u64_stats_read and u64_stats_inc. This completes the refactor and
> ensures that all stats accesses now make proper use of the API.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks.

I do notice in the cover that you solicit alternate approaches to
lead to a yet cleaner solution. But I think that the approach you have
taken does significantly improve both the cleanliness and correctness
of the code. So even if we think of something better later, I think
this is a good step to take now.

Thanks for breaking out the series into bite-sized chunks, especially
the last few patches. It really helped me in my review.

Reviewed-by: Simon Horman <horms@kernel.org>
