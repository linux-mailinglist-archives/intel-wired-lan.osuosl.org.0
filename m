Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5A0A55295
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 18:12:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB2383139;
	Thu,  6 Mar 2025 17:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbibimDgSD8z; Thu,  6 Mar 2025 17:12:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBC5D833A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741281150;
	bh=ymJP0/xT4dIjoC4+iVCO8nK9r0zha61bXHc9VHBaPaE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PRAt/n9uHGaVgrX7fUbbQvQQhbZkhK/3KubQ8VHTjLfUnOPbCBCc3+S8q3UiJcKfL
	 og6jG7s+GOJxQTXHyKDPOiGOU/WAksN6JKurDISxGcmi2ypeA4vJ6qwvMwM5CzNb5Q
	 GBAH2MqdUGes0QFIPO9VAvNazx2NJHMg0W3MGedpKkBkjYf5pqlyojBEzY0E7Fet9a
	 QyjTQrYN46iF9DGO4X3cvr0Y5suW5cxM5Arf+RSlA5JEJG9ZvifvvLGPIIBBf12u00
	 BN/i4cFlTbcMEAUeo0Y5ooKjxWCekfIaFx84dOhQdJVUCExr/3F5tfEmmvUU0un9vl
	 w3w3uNYVfKUiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBC5D833A8;
	Thu,  6 Mar 2025 17:12:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49BE4194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DB11405AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KqU6eHiPVul0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 16:35:14 +0000 (UTC)
X-Greylist: delayed 421 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 06 Mar 2025 16:35:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AA2F840542
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA2F840542
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a03:4000:3f:1f0::1;
 helo=mx1.bezdeka.de; envelope-from=florian@bezdeka.de; receiver=<UNKNOWN> 
Received: from mx1.bezdeka.de (mx1.bezdeka.de [IPv6:2a03:4000:3f:1f0::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA2F840542
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 16:35:12 +0000 (UTC)
Received: from web5.bezdeka.de ([2a03:4000:6b:b6::1] helo=email.bezdeka.de)
 by smtp.bezdeka.de with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <florian@bezdeka.de>) id 1tqE4R-00Dch6-38;
 Thu, 06 Mar 2025 17:27:41 +0100
MIME-Version: 1.0
Date: Thu, 06 Mar 2025 17:27:38 +0100
From: florian@bezdeka.de
To: Joe Damato <jdamato@fastly.com>
Cc: netdev@vger.kernel.org, vitaly.lifshits@intel.com,
 avigailx.dahan@intel.com, anthony.l.nguyen@intel.com,
 stable@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20250305180901.128286-1-jdamato@fastly.com>
References: <20250305180901.128286-1-jdamato@fastly.com>
Message-ID: <796726995fe2c0e895188862321a0de8@bezdeka.de>
X-Sender: florian@bezdeka.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-User: florian@bezdeka.de
X-Authenticator: login
X-Mailman-Approved-At: Thu, 06 Mar 2025 17:12:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=bezdeka.de; 
 s=mail201812; h=Content-Transfer-Encoding:Content-Type:Message-ID:References:
 In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ymJP0/xT4dIjoC4+iVCO8nK9r0zha61bXHc9VHBaPaE=; b=q82kf6lmkojePCD/vKq+7R2b9x
 hPERb6d1DvIUomd/fFr413UpPHoUzGr4VNiV2eQWWv2bHVDC1z2nnWsvQYJ8Vd0Kquk4POca+xfHc
 h3r2ZKALCgGQwcWeoYRazNvmkHc9MGQGxZAnxbfql5zspztkug5CO8jvr7X6KS+sIwM/8EBpyur4x
 3C9Fsxmx6HCEZT41l9B3kxDHavchRFlHLG/who1WMViP+rtT28a3ae7Eq8Y2s/4Ce1rCTG5gCtqc2
 DdCyG6o1QWP0M+nT7jeYQ+eNapCxk+9Bu6Sp2454wN/ulEzhsYMoS7y8FRDUMbglRIkIjclZH+uCm
 Wc2SMazw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=bezdeka.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bezdeka.de header.i=@bezdeka.de header.a=rsa-sha256
 header.s=mail201812 header.b=q82kf6lm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix XSK queue NAPI ID
 mapping
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

Hi Joe,

On 2025-03-05 19:09, Joe Damato wrote:
> In commit b65969856d4f ("igc: Link queues to NAPI instances"), the XSK
> queues were incorrectly unmapped from their NAPI instances. After
> discussion on the mailing list and the introduction of a test to codify
> the expected behavior, we can see that the unmapping causes the
> check_xsk test to fail:
> 
> NETIF=enp86s0 ./tools/testing/selftests/drivers/net/queues.py
> 
> [...]
>   # Check|     ksft_eq(q.get('xsk', None), {},
>   # Check failed None != {} xsk attr on queue we configured
>   not ok 4 queues.check_xsk
> 
> After this commit, the test passes:
> 
>   ok 4 queues.check_xsk
> 
> Note that the test itself is only in net-next, so I tested this change
> by applying it to my local net-next tree, booting, and running the 
> test.
> 
> Cc: stable@vger.kernel.org
> Fixes: b65969856d4f ("igc: Link queues to NAPI instances")
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_xdp.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c
> b/drivers/net/ethernet/intel/igc/igc_xdp.c
> index 13bbd3346e01..869815f48ac1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_xdp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
> @@ -86,7 +86,6 @@ static int igc_xdp_enable_pool(struct igc_adapter 
> *adapter,
>  		napi_disable(napi);
>  	}
> 
> -	igc_set_queue_napi(adapter, queue_id, NULL);
>  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>  	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> 
> @@ -136,7 +135,6 @@ static int igc_xdp_disable_pool(struct igc_adapter
> *adapter, u16 queue_id)
>  	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
>  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
>  	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
> -	igc_set_queue_napi(adapter, queue_id, napi);
> 
>  	if (needs_reset) {
>  		napi_enable(napi);

That doesn't look correct to me. You removed both invocations of
igc_set_queue_napi() from igc_xdp.c. Where is the napi mapping now
done (in case XDP is enabled)?

To me it seems flipped. igc_xdp_enable_pool() should do the mapping
(previously did the unmapping) and igc_xdp_disable_pool() should do
the unmapping (previously did the mapping). No?

Btw: I got this patch via stable. It doesn't make sense to send it
to stable where this patch does not apply.

> 
> base-commit: 3c9231ea6497dfc50ac0ef69fff484da27d0df66
