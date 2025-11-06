Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D5FC3CCC9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 18:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E00B684476;
	Thu,  6 Nov 2025 17:23:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMVPgVZI9DVT; Thu,  6 Nov 2025 17:23:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49AD984477
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762449796;
	bh=SbclcOAVEJNl4hCmZlZ9S5E9TeFKMBG8YYZlmF0B44w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EWoQrSErOKG7MN66fMU+slHaJO7KIG/OQE0E92ZAivWF4FcgQzWXfmAX9jPFOAw5G
	 tOxXeyqF7BVWMNLsArcRVNaDK9EDiBC/VUI+In6RCN1/vv0Qe7hpRSNN8NVxJnBnsY
	 5Homf353KEleLfT6Xy+kOuvsgXmh/tinOBTUXBKlGVnuzX5V5I31WFza+kDxCPQFeI
	 AA3pZFm4ibL6K5TyLFkOqoo8zxjEn+cS5QtKB6ErR8ZK0QgOJrBn9GSdnSFcTU+qWt
	 sHxC26X+wFQ7cKnQA2wJ2VL2Om4z5YQ3yUCrqgtVTd+TqxJqJWQMjiyiP9wf5NSG9j
	 ZlpslRXYFDd6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49AD984477;
	Thu,  6 Nov 2025 17:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B2D8A64
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 17:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C88440E0E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 17:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ODxpBxWCDPFI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 17:23:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE01640DE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE01640DE3
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE01640DE3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 17:23:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4889343E92;
 Thu,  6 Nov 2025 17:23:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F8AC4CEF7;
 Thu,  6 Nov 2025 17:23:11 +0000 (UTC)
Date: Thu, 6 Nov 2025 17:23:09 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aQzZfXz9qBjr5vtB@horms.kernel.org>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762449793;
 bh=RpA4CYjdxqrS8CyxWrH8ayWrFSEs59iSDbxr7qWQJl8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hy85GsKuC/xxzL3BgesxJos6PjSC9nhY9Ubsi/mrCurst2igc6+yxKMSMpW8ZrlIR
 jjI4xwmLxoisV4zNukOJLtZrXwGjx7IVAqeYih03iQk4wLWeNceYgVTWT2tHEj9m8X
 Zpf4iusQSjLfSlhjQF2aMg2YZ+kepYAjYe/G6CZXPHaouE3fIy7OkYa5e7s00gtqA1
 N4O83w+u2+HHJGrhr51CuchOPIDHzG4mAq1Y8VVNdBDFA/j/iW4vO6yUkxyJ9tIpTH
 QXrSQSRwb4afJilKqGUQ8kDFv9wJMO4/eYaQLaYA9DyS7Mpv/R9PgeeJdWGIYx8g9k
 KD2LQO9hI321g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Hy85GsKu
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

On Wed, Nov 05, 2025 at 01:06:34PM -0800, Jacob Keller wrote:
> The ice ring structure was reorganized back by commit 65124bbf980c ("ice:
> Reorganize tx_buf and ring structs"), and later split into a separate
> ice_rx_ring structure by commit e72bba21355d ("ice: split ice_ring onto
> Tx/Rx separate structs")
> 
> The ice_rx_ring structure has comments left over from this prior
> reorganization indicating which fields belong to which cachelines.
> Unfortunately, these comments are not all accurate. The intended layout is
> for x86_64 systems with a 64-byte cache.
> 
>  * Cacheline 1 spans from the start of the struct to the end of the rx_fqes
>    and xdp_buf union. The comments correctly match this.
> 
>  * Cacheline 2 spans from hdr_fqes to the end of hdr_truesize, but the
>    comment indicates it should end xdp and xsk union.
> 
>  * Cacheline 3 spans from the truesize field to the xsk_pool, but the
>    comment wants this to be from the pkt_ctx down to the rcu head field.
> 
>  * Cacheline 4 spans from the rx_hdr_len down to the flags field, but the
>    comment indicates that it starts back at the ice_channel structure
>    pointer.
> 
>  * Cacheline 5 is indicated to cover the xdp_rxq. Because this field is
>    aligned to 64 bytes, this is actually true. However, there is a large 45
>    byte gap at the end of cacheline 4.
> 
> The use of comments to indicate cachelines is poor design. In practice,
> comments like this quickly become outdated as developers add or remove
> fields, or as other sub-structures change layout and size unexpectedly.
> 
> The ice_rx_ring structure *is* 5 cachelines (320 bytes), but ends up having
> quite a lot of empty space at the end just before xdp_rxq.
> 
> Replace the comments with __cacheline_group_(begin|end)_aligned()
> annotations. These macros enforce alignment to the start of cachelines, and
> enforce padding between groups, thus guaranteeing that a following group
> cannot be part of the same cacheline.
> 
> Doing this changes the layout by effectively spreading the padding at the
> tail of cacheline 4 between groups to ensure that the relevant fields are
> kept as separate cachelines on x86_64 systems. For systems with the
> expected cache line size of 64 bytes, the structure size does not change.
> For systems with a larger SMB_CACHE_BYTES size, the structure *will*
> increase in size a fair bit, however we'll now guarantee that each group is
> in a separate cacheline. This has an advantage that updates to fields in
> one group won't trigger cacheline eviction of the other groups. This comes
> at the expense of extra memory footprint for the rings.
> 
> If fields get re-arranged, added, or removed, the alignment and padding
> ensure the relevant fields are kept on separate cache lines. This could
> result in unexpected changes in the structure size due to padding to keep
> cachelines separate.
> 
> To catch such changes during early development, add build time compiler
> assertions that check the size of each group to ensure it doesn't exceed 64
> bytes, the expected cache line size. The assertion checks that the size of
> the group excluding any padding at the end is less than the provided size
> of 64 bytes. This type of check will behave the same even on architectures
> with larger cache sizes. The primary aim is to produce a warning if
> developers add fields into a cacheline group which exceeds the size of the
> expected 64 byte groupings.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.h | 26 +++++++++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 ++
>  2 files changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h

...

> @@ -298,10 +302,22 @@ struct ice_rx_ring {
>  #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
>  #define ICE_RX_FLAGS_RING_GCS		BIT(4)
>  	u8 flags;
> -	/* CL5 - 5th cacheline starts here */
> +	__cacheline_group_end_aligned(cl4);
> +
> +	__cacheline_group_begin_aligned(cl5);
>  	struct xdp_rxq_info xdp_rxq;
> +	__cacheline_group_end_aligned(cl5);
>  } ____cacheline_internodealigned_in_smp;
>  
> +static inline void ice_rx_ring_struct_check(void)
> +{
> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl1, 64);
> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl2, 64);
> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl3, 64);
> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl4, 64);
> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl5, 64);

Hi Jacob,

Unfortunately the last line results in a build failure on ARM (32-bit)
with allmodconfig. It seems that in that case the size of the group is
128 bytes.

> +}
> +
>  struct ice_tx_ring {
>  	/* CL1 - 1st cacheline starts here */
>  	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */

...
