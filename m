Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB50A1A21C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 11:45:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 863186FA4A;
	Thu, 23 Jan 2025 10:45:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y8CH9iZjVyTX; Thu, 23 Jan 2025 10:45:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF995610BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737629143;
	bh=d36uROjoSKfE5i2QPLeo+YSAGDI3JNdTFReKg5F2fWM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8n4QlOqigKr+0sknFkgW86ugSI4k5WZ0ZBvDPKWhUgKD4gtpUC3gKNfR3Q5iSMZSm
	 CHlTXjOBlzz+KGGv21T148VN9kcKJVhIk4dX5ALnb6Yj0v/7HMsDksbWj3vArNgC6r
	 In4VBEio2zIeF4EWM18dDnkbTfcUj0tQDbqqTUJHGj+b3BwYCkuzzBFPBOQPQ2Xj4V
	 UyfhmbpJWwuI89KGNpduUPjL9uZVJHg6xsr9ZphEHEQN35hj4Qxirkj37H5UQagNuX
	 bRfKQREC/ko9gyZF/4YTn/mpiEEH/K9Qz+Wo6Y/U707v3hscWVNqDD+kAtMAaTDYE6
	 ImdeRO2gBZxRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF995610BD;
	Thu, 23 Jan 2025 10:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97D93B88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86970848B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z9iW_EeQ2NPr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 10:45:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D9C13848A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9C13848A0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9C13848A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:45:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C076F5C55D8;
 Thu, 23 Jan 2025 10:45:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7E51C4CED3;
 Thu, 23 Jan 2025 10:45:38 +0000 (UTC)
Date: Thu, 23 Jan 2025 10:45:36 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20250123104536.GL395043@kernel.org>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
 <20250122151046.574061-4-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122151046.574061-4-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737629140;
 bh=gXvoSdYpixtFkIqe5bF2z0g9L9R1r/OvhJINMvk/vqg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=URS7STw2RySfSpzp3OouwL2+syn3B7r2D3Ibejo/64rJgDOYV04oB5EmQG/22AezR
 GzPlyhdiOeLtcIiopX5kqcOYJpCUySjEIy3yi35CxQWMMndOqCjthLut+CMkIwfXhG
 Kyq5apESxLsoQhY2B9YBgHxvf36S4r7l5gKWU0itsyTN/bZzBJv2irPqtXowCYJ6Fp
 FgvvYncw4C2CLBC+FqIyS4s9k/jzavfrkl5CzjZ6N/RNq0A20Q2LvetGEMrDBEISEq
 v7GUzQE0ET1vp8eulTepA5SDRjYrpYO9wWTr7WiVEJSO6z8EHmHrDcAf4UrWHoWcDO
 i0ch7e359WLmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=URS7STw2
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 22, 2025 at 04:10:46PM +0100, Maciej Fijalkowski wrote:
> Idea behind having ice_rx_buf::act was to simplify and speed up the Rx
> data path by walking through buffers that were representing cleaned HW
> Rx descriptors. Since it caused us a major headache recently and we
> rolled back to old approach that 'puts' Rx buffers right after running
> XDP prog/creating skb, this is useless now and should be removed.
> 
> Get rid of ice_rx_buf::act and related logic. We still need to take care
> of a corner case where XDP program releases a particular fragment.
> 
> Make ice_run_xdp() to return its result and use it within
> ice_put_rx_mbuf().
> 
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 61 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
>  3 files changed, 35 insertions(+), 70 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c

...

> @@ -1139,23 +1136,27 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>   * returned by XDP program;
>   */
>  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> -			    u32 *xdp_xmit, u32 ntc)
> +			    u32 *xdp_xmit, u32 ntc, u32 verdict)

Hi Marciej,

Sorry, there is one more Kernel doc nit. As reported by the Kernel Test
Robot, verdict should be added to the Kernel doc for this function.

With that addressed feel free to add:

Reviewed-by: Simon Horman <horms@kernel.org>

...
