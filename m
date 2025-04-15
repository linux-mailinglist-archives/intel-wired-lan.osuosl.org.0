Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E8A8A34E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 17:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 973AA831FB;
	Tue, 15 Apr 2025 15:46:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AD9sxLYE2ZPH; Tue, 15 Apr 2025 15:46:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F410683054
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744731987;
	bh=mon63Iwr1SjNtFufKrh5mlHT+K2hUYKT+HwMn24Mj3I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yvk/7ijVld0qyR7i+6p2ZskbpEQjjycDYfICZk5lU+rzTZ9vo9Mn36QujNUUAi3rn
	 D6EwAyoZ7IH5XiwYXGljLmwV5OasSfG40qoelEw4m/YRrH8ISfDlDbtbMul3zHYWa2
	 0+HJvFaMoIXKomzjkPb9oM3ylQYGophd/RvOPV1l2DVSehkp8geaG8dkHZLwG2KuTK
	 dx0Rb2EUKBjFRi1H0x+4oqJbuhyjaiVtpqQceFv/0wEelHIIyEOH8aEMaEJEVhvBGt
	 q9dedFzSZkdXXI81Cd9y2BNMcLEmlJADVGEk4qnHgp2mHc+or8wXSNC/qGkh9lFMLr
	 RV/UfWwCBtG8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F410683054;
	Tue, 15 Apr 2025 15:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A21D1109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 15:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F024811D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 15:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YwsttlR0FfbE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 15:46:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1315E80F03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1315E80F03
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1315E80F03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 15:46:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6962F43C1A;
 Tue, 15 Apr 2025 15:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53378C4CEEB;
 Tue, 15 Apr 2025 15:46:22 +0000 (UTC)
Date: Tue, 15 Apr 2025 16:46:20 +0100
From: Simon Horman <horms@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Madhu Chititm <madhu.chittim@intel.com>
Message-ID: <20250415154620.GY395307@horms.kernel.org>
References: <20250411160035.9155-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411160035.9155-1-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744731983;
 bh=/u9uWnKTxQrsHFPIYOsdVbzDhc5VucRx/+dJWztHkPI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cQsvLDgAH+8EEWIB3AIU8Q0JLESuUgviyba+V7wdC2cKJn+bSLryltLUHkr3jrBVw
 ouo1OAO9j0PcjefIQEi9YIU/C5CNbklbg72ByeupGcScPpNzidE1aGE1zSS55S+xoc
 YC543+4GBzG3OwWHuK8iUzHodPR4xx/KjfwL97MxSZNzVhlKzciysGvXIF4Oj8Pvvn
 GWnUoyf52mIdilPQ1QfUZctcZ8xiHK5glaItJQyYQPAlh4i4ui8Fx3nTpvR+HNVxGk
 lAZGp+LmsQ3AKnZNkGZDZP6pV8JME+8lKowxPSZtbVbQKbTKsx/CtTW0LUtCZWlR7x
 HgxdRTaWs281Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cQsvLDgA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix null-ptr-deref in
 idpf_features_check
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

On Fri, Apr 11, 2025 at 09:00:35AM -0700, Pavan Kumar Linga wrote:
> idpf_features_check is used to validate the TX packet. skb header
> length is compared with the hardware supported value received from
> the device control plane. The value is stored in the adapter structure
> and to access it, vport pointer is used. During reset all the vports
> are released and the vport pointer that the netdev private structure
> points to is NULL.
> 
> To avoid null-ptr-deref, store the max header length value in netdev
> private structure. This also helps to cache the value and avoid
> accessing adapter pointer in hot path.
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000068
> ...
> RIP: 0010:idpf_features_check+0x6d/0xe0 [idpf]
> Call Trace:
>  <TASK>
>  ? __die+0x23/0x70
>  ? page_fault_oops+0x154/0x520
>  ? exc_page_fault+0x76/0x190
>  ? asm_exc_page_fault+0x26/0x30
>  ? idpf_features_check+0x6d/0xe0 [idpf]
>  netif_skb_features+0x88/0x310
>  validate_xmit_skb+0x2a/0x2b0
>  validate_xmit_skb_list+0x4c/0x70
>  sch_direct_xmit+0x19d/0x3a0
>  __dev_queue_xmit+0xb74/0xe70
>  ...
> 
> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Reviewed-by: Madhu Chititm <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

