Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D677C846A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18D016110B;
	Tue, 25 Nov 2025 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R4qGc1vvwnTn; Tue, 25 Nov 2025 10:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88BCC61154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065848;
	bh=fCLGTH8HhX1VIAT5wTyeXJiD3yzXbtbgJL7TaePmn+c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cPhnzT3rfOktRKEzAqCkXIt64jpK04cmcAXiw1kVrUXEPfcR2WBynbW/j4H1cOcpT
	 jYCN1hKJD7+mAlpeH1OSDGGFJ6LxkvApQFMPfhk+mBJXNYHjxvZJaHwTxvItNNnGKY
	 IxeNz9rRjPHaKmNNSZqdhgLtoyF8TOUEnBnK8nxjd3KAGLP2/SBAqbZJOj+d+6a8/F
	 Gpzs+Wo69EJ5JJbIESmsaFkaWPHGH6j4tMa+SAN3FCItUa+9wtAuCT6ZK9HOxLeJvR
	 IR+GlRj5/KWOqgE8dObxToX7AMRz0N44j7HyOapdysDC8p5GJIHs+fs/alU7I9CUmK
	 s9/MJDloPp/fA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88BCC61154;
	Tue, 25 Nov 2025 10:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A915359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C226403CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V83OnwzcK3N5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:17:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DACF4020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DACF4020C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DACF4020C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 341ED40331;
 Tue, 25 Nov 2025 10:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D0EC4CEF1;
 Tue, 25 Nov 2025 10:17:24 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:17:22 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWCMsWk7eZoSR9e@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-4-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-4-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065846;
 bh=+pMFBzeBiSSkVtD9D9tPh0ECAQKi6pgNAWor2JG1b7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MMaI0LsP8VYVwqG05WNDlXiOvlOCiBdZNATIR58JnkLibQeySZIoncLEaaCZlhTZo
 z7LcmSGUdaHN1GsESvJPZkSB28jdK4rbfSFTBEIWh4dc1N0FbNUp73O+c/B6GcAiJ2
 IbnSDbBJgfmAr6z4qghKHnsOxQ/RPv1b6Cg+bOyFFWXUGIQ0WmtyaEe3bzmk97b0wk
 d+8Mo57oSJHOV1j/w+moFJtv7G3nC/XlJ0Gb0JzxtBgZ3iTv9KfGMAw5WYMO9Mw2fc
 mN6gz8xKuncKq7yhzm1L8IeY9V2uDyx/GrBQPNhICzCz02UdV5m/7UEIU+QsnQk260
 pPQ65X8v5xY9g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MMaI0LsP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/6] ice: use u64_stats
 API to access pkts/bytes in dim sample
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

On Thu, Nov 20, 2025 at 12:20:44PM -0800, Jacob Keller wrote:
> The __ice_update_sample and __ice_get_ethtool_stats functions directly
> accesses the pkts and bytes counters from the ring stats. A following
> change is going to update the fields to be u64_stats_t type, and will need
> to be accessed appropriately. This will ensure that the accesses do not
> cause load/store tearing.
> 
> Add helper functions similar to the ones used for updating the stats
> values, and use them. This ensures use of the syncp pointer on 32-bit
> architectures. Once the fields are updated to u64_stats_t, it will then
> properly avoid tears on all architectures.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

This seems like a nice clean up to me.  And I think it makes sense in the
context of where this patch set is going.

Reviewed-by: Simon Horman <horms@kernel.org>
