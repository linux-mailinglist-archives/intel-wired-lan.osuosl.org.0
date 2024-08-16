Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E43D9545E6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B69260658;
	Fri, 16 Aug 2024 09:38:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NeiQ_ViJXS2g; Fri, 16 Aug 2024 09:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C733460B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723801124;
	bh=4A0ncITU7sK44pZjbb9IGN+bBgHKoi/AYwMNN3yoM3w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PtHk5sAO3X9NWGEp19RSv8LyNSSTBUfMABd9Oxc6OXUDlSB9fyysEK7nFuFOOJlvI
	 3/9jbERGGhP94EAQMutuQucwJyPpSxgIkp6aUi/B+CBFYXOHaI+je4sELUcD1UFB03
	 lzomMFG1sLbzX1XgqxklsZYlCtPWZLy5tdykEXgho6prJbIJdcEGfFWN3uJ4XtzLtT
	 PD9PiVkYnYOtU1n4r4izJKxXN96UJoo+vCm8yREcbH+8yUWHxdty9JNOYwDXRfPtHZ
	 qvEfEM4L3E+I3rFWkhCzIF/NhswTe1cTfu/Nv1IHTr3RKsmvlRwUlm5L7lYvhcmudd
	 Y08mSmxt67IuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C733460B23;
	Fri, 16 Aug 2024 09:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 186FB1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7325460605
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I2R_3LG29DKb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:38:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC7F5605A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC7F5605A8
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC7F5605A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:38:41 +0000 (UTC)
Date: Fri, 16 Aug 2024 11:38:38 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240816093838.ZpGD38t-@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723801119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4A0ncITU7sK44pZjbb9IGN+bBgHKoi/AYwMNN3yoM3w=;
 b=YlheqFlOvIePYCb9WAVjljhc+ynBrUApZXQYXstjqBQ7JagjcVNlO+vjOsbGY9L1NVxIAx
 IV+KSpFvO+znRhG6IxxP3nUhqgJ28WQtgf3sSZaNOb/cnXlADWaqt+9qTFQmZ2T+N0BPt5
 FVQzZZ4VD0w5f4FZ9c3UhGukjaPzOQVighKCAZWSti+Jv8fmsbY6Zyw2+tsWUqHbwuQ3Ty
 fMxzr9TDCn0iUt1zyno+pTIuehwETgdedOnAUPjAoRVG5RFXicOc7LBqyIt90zwPUfMMnp
 VIKV2uqUSPbHBCVHrfSJAfe2ojce9h+j2yMzf+nNvmtoeY7++fuLaJoEO9GpaA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723801119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4A0ncITU7sK44pZjbb9IGN+bBgHKoi/AYwMNN3yoM3w=;
 b=TkwzjobRKZQFsqAnvwafio5sXYbUAd8gBXbxX7QN60OTP2eVC0uiXRduOEJ8cNZr3QPkm5
 tL6wBeB4koKMWrAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=YlheqFlO; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TkwzjobR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/6] igb: Always call
 igb_xdp_ring_update_tail() under Tx lock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-08-16 11:24:00 [+0200], Kurt Kanzenbach wrote:
> index 11be39f435f3..4d5e5691c9bd 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2914,6 +2914,7 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
>  	}
>  }
>  
> +/* This function assumes __netif_tx_lock is held by the caller. */
>  static void igb_xdp_ring_update_tail(struct igb_ring *ring)
>  {
>  	/* Force memory writes to complete before letting h/w know there
This
  lockdep_assert_held(txring_txq(ring)->_xmit_lock);
would be more powerful than the comment ;)

Sebastian
