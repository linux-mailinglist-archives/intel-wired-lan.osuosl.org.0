Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C0C8468C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5144D60F9D;
	Tue, 25 Nov 2025 10:16:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FdS_cFBjovzh; Tue, 25 Nov 2025 10:16:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCF8061018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065770;
	bh=BTMrgl6J0K2yK0RJJZkqknSNN63wycXi4miMXlf5AZ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A69P+obhrixoY9AcvDLr+i81oyl9L9tSWwz7rOzgnH01ndWXmS0agFIBaN8Wku5im
	 h72B8RWK4SNHKenxl02/vGw9FwEP1NZVcKYxqcRr22BICmq1xtICkTotZa8azRHuOW
	 IPWb6Rk1GoB64KyZWi+Z870BihxaGvKk6qvdq4W+XpAqPEj6wCO6DkZVHZt19hpy7T
	 8rWtrj48m3Z0cdShH8EGpfjT1vcbwAbkpL73AKcANJbcGNk1iHNAPMMXoj7W6mtsAP
	 RM5TloF5oIxRAVeqq85ngCw4sQcNOJNWs7veUHEp91CzuKvptDGeYG9rhl0lDYw7U3
	 iD3qjlKD30rBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF8061018;
	Tue, 25 Nov 2025 10:16:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DE549359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF45A403CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dKfP1x7RxOf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:16:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1CB244020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CB244020C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CB244020C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 621316018E;
 Tue, 25 Nov 2025 10:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A596C4CEF1;
 Tue, 25 Nov 2025 10:16:00 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:15:58 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWB3gsh4KpDZae9@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065762;
 bh=QVNvIfUz7nh22wuooB424hyrwiQk6yRN/L7qvJoCRU4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JY21c5SCI/cHhErH77J/QwEGqZMiviEDLf8S2MRwos99LtDy38QifbLC2Qghfo+b7
 xcZvIxj5zkNnbx1aMvwS9t8hDzDamlVjcIi6VOYwGhYgsUnlxEYuc4nsKIyTcv745J
 m4ZyNAc+hivwfMyIsnff2Ettq8Vw2qcYimq3/F5nDc54kjRpYD03jLEs/uQMilBaNP
 Qd4B1WV5RvGQi83bkL7SHHN85JyAknaAfbblkXCd7ASLIkia9Ldt7L2ua+mJRkb3k8
 /N5rwWY9IH4e6l7Ch/Rt9TVmNDXGCvme53IhY7/1tmT/qJva9zl7FZxCy5G8mwQPk+
 kDkdJE+oCvR4A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JY21c5SC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: initialize
 ring_stats->syncp
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

On Thu, Nov 20, 2025 at 12:20:41PM -0800, Jacob Keller wrote:
> The u64_stats_sync structure is empty on 64-bit systems. However, on 32-bit
> systems it contains a seqcount_t which needs to be initialized. While the
> memory is zero-initialized, a lack of u64_stats_init means that lockdep
> won't get initialized properly. Fix this by adding u64_stats_init() calls
> to the rings just after allocation.
> 
> Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")

I think that either this patch should be routed via net.  Or the Fixes tag
should be removed, and optionally something about commit 2b245cb29421
("ice: Implement transmit and NAPI support") included in the commit message
above the tags.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 44f3c2bab308..116a4f4ef91d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -400,7 +400,10 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
>  			if (!ring_stats)
>  				goto err_out;
>  
> +			u64_stats_init(&ring_stats->syncp);
> +
>  			WRITE_ONCE(tx_ring_stats[i], ring_stats);
> +

nit: perhaps adding this blank line is unintentional.

>  		}
>  
>  		ring->ring_stats = ring_stats;
> @@ -419,6 +422,8 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
>  			if (!ring_stats)
>  				goto err_out;
>  
> +			u64_stats_init(&ring_stats->syncp);
> +
>  			WRITE_ONCE(rx_ring_stats[i], ring_stats);
>  		}

The above comments not withstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

