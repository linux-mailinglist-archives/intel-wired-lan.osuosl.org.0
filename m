Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB89A17050
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 17:38:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3BB760FD2;
	Mon, 20 Jan 2025 16:38:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hPrvWdZrjeFL; Mon, 20 Jan 2025 16:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4286610F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737391083;
	bh=x+v7ICI1+uF87Jywjk2cHCSVi4zi8cO3AOZk55rzx58=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OCc7T0YgbxNSrMrAOr1qcaxAgCuaDtLCMNZ4EoUTCFuo9M8wkgrMjk+o9snp8g6ba
	 gGktkRxYAp8abU1rknPkMF4BvTxh39lSTwbsibRoLWOHhWGQ3CjRe6fhaNTKViZNJc
	 dEqa8Jth/hXph5amPTkJjmtWdYTw8CFYjOxnDhWAflB1Mpj3DIzRGyOgf3nti3ffK8
	 OIusJPVmPJyFg7Is6jhiqsoy0LYIf5lHluxh/Xn5xq2KMMv9yt1a2njrYw/7InEIUK
	 2ASxIgkupBJGE9wfmm5IUFadcuM5PMpsvWXMi6n+Tql4vdBisevwMA7EgPfdyM0sEx
	 ezsnILMosbGlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4286610F6;
	Mon, 20 Jan 2025 16:38:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AFB969
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 16:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AE7240619
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 16:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqPVFkpCN0eu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 16:38:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D89C40662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D89C40662
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D89C40662
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 16:38:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2CC70A41045;
 Mon, 20 Jan 2025 16:36:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D84DC4CEDD;
 Mon, 20 Jan 2025 16:37:57 +0000 (UTC)
Date: Mon, 20 Jan 2025 16:37:55 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20250120163755.GA6206@kernel.org>
References: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
 <20250120155016.556735-4-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250120155016.556735-4-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737391079;
 bh=bCEOZ7kGTrOjEenANgqdG9z+KsYk2jAcXbInvW1NJrc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aPoq/TnE07WFcQ4JsRpo4fYAqy3uN1/+U0Lrk32dx2vRpUVDg9xrFLrZO0nqElJrY
 l7JjZIHRwpsbmrrWFNLAbYujRaQJeCb4krc902JwIrb7yTJ3ypsnAUfwqfH27TTzDw
 608z72pMengkoHhRnKJJnfJ4zWNF24aLMhWdem4yXeWUjusp8UUkF0JualY99Kf3Fe
 ywWCZCl5PvNAWka6yS/kWlFy3KibLfr9Ts5kxJlpfHgCTB77i9cEzzGveUaouYPWJm
 aAnJlpsCTiK2WRqvCth8Lo5eSF1M57SKVKFNzV0kX2rTtCoBhjKS36VfQn8sOZhUZZ
 JJfbDqILvF9zA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aPoq/TnE
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 3/3] ice: stop storing XDP
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

On Mon, Jan 20, 2025 at 04:50:16PM +0100, Maciej Fijalkowski wrote:
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
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 60 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
>  3 files changed, 35 insertions(+), 69 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 9aa53ad2d8f2..77d75664c14d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -532,10 +532,10 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
>   *
>   * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
>   */
> -static void
> +static u32
>  ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
> -	    struct ice_rx_buf *rx_buf, union ice_32b_rx_flex_desc *eop_desc)
> +	    union ice_32b_rx_flex_desc *eop_desc)
>  {
>  	unsigned int ret = ICE_XDP_PASS;
>  	u32 act;

nit: The Kernel doc for ice_run_xdp should also be updated to no
     longer document the rx_buf parameter.

...
