Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJiANTra+GnJ2QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 19:41:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C13454C2020
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 19:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D79FD41704;
	Mon,  4 May 2026 17:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qxl0P63jnwlP; Mon,  4 May 2026 17:41:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 533084170A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777916471;
	bh=nmJADCUYYJkAP0ynYy9365oRJvMWu6Lq9KoE1sTjfVQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gLodoJif45H4obX02D3OLU3qtgIwH1csbziTLjGUiFnV4vJT/jP3aBc0bQu1US8Oi
	 +d9yektmhg9Zd7hhdhUJ5t+2Rjo5Hh4O4fTIgNdDP9cwHXJEPM23VZkUUQu+D/2DkC
	 yLfV4RJT6L50DzSDP/B7gblHzKj6fP2jx7m4BctEfRcbKGgQVQVpTc3hLzMYSeAZz4
	 kr4b9uHMp8ZphLR5czygn47ih7+Fxg0YyQ2yaby52lAi5sI3kmgOq8CM27Aluq91Bx
	 PviAlaRzZT7UvpfOxdtrhAsQYcBgV5TB5fK2X3Jl42TRdpf8hGiWro0mixHjVTMD0r
	 duBoFtQoOjJ2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 533084170A;
	Mon,  4 May 2026 17:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 48E2F204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 17:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21FF5846B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 17:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5PWcFqN5SAD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 17:41:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA1BF846B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA1BF846B2
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA1BF846B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 17:41:07 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-2ab46931cf1so31518225ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 May 2026 10:41:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777916467; x=1778521267;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nmJADCUYYJkAP0ynYy9365oRJvMWu6Lq9KoE1sTjfVQ=;
 b=eIY89dbLNEj4KVFzMODtQs578hLY853eN6koPobPMo5rnzGxt8TonsPpE9oeBwpGOD
 bai/QCGx/B2aPLaYgACAJQ67o5kth71MiEB8SFFIPGpW4P6UMuFFgO7bE6xNlU/Kr5DJ
 mrX0DRgtIepcyJ/1cIjWNaNmUwqFFJzjuq8CGDnua3ZsGR1n9iGk08jRX2vylqEPVzEA
 68/Fh3Q3R4+H10bxf9HBkn1IPcvCnZx94NiHJd3ocR0ZRch+TC0srb33I61pb1yePNPw
 86oU5yyBkWePF3HW6qP5McIJHi+ZDDtYfRmA4nfinkjsMUf2pwD6y1g2V8f1a5LSYIv2
 zbgA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9nSMm/7kuzket2nq/KxQKoL1PcLdeKwuHBLQzp4mwxkm+1ovGql8XmMaF4dKnhB3AnKCj4SGatAIma9XK2qSY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywv5Flafu5W6JBhOpsXsfeLZAc6+JKk+NMlVfGiPTx3cIYaZFPY
 G1R0Uurs+Gs3nBsy2GTqD/rUyTVrRJZ3oE3ITOfo/INUTfnH4yG9bI1q7Irktw8zgg8=
X-Gm-Gg: AeBDies5aG2ncnPN09c9HiLr/aOepNC55QO7cBgFrPAEmS9UGjsGzYtb3Bygex4M+vM
 OH4jJM1Z+p6gkCH8YqQf2GD0t0MN3dOYuPFEVeKG78D64NvYOatL/NsE/Zv9Y0ahQT27iMF+ux+
 E9nRcoVmyUBp38WzccvbtIeIjsgVPxekiCymSVGPF5QjDJqGh720ibRlC+o7vdW3vIF91pyctFd
 DjdvglkIYqCzgTpsSh74BaBBtRAS5LQTLQtZC6lXFDvv2ndWSSCVCH0obO7srUEx6E4irv0S1V/
 WWFNT/yHbOEbOyAK0DBuemJAVvDcFF/LiM63df5qWhWUhdFN3zg0hyFFUC/InQg6bIgYv2dunEr
 bK1vV1TYOl1deMqSxm3IVtBuH8Pvjjuojn4yHkqKoGDDuixHoB841MaSA2wX+KMhKggOchDIjHd
 /HjqNa8w4ke1aMgQ==
X-Received: by 2002:a17:902:c992:b0:2ae:4ad5:b76c with SMTP id
 d9443c01a7336-2ba4d7b9de6mr2316725ad.10.1777916466780; 
 Mon, 04 May 2026 10:41:06 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:b::])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b9cae59f57sm109511655ad.77.2026.05.04.10.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 10:41:06 -0700 (PDT)
Date: Mon, 4 May 2026 10:41:05 -0700
From: Joe Damato <joe@dama.to>
To: Jon Kohler <jon@nutanix.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <afjaMXktB3WmT7KC@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>, Jon Kohler <jon@nutanix.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260504154823.2535612-1-jon@nutanix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260504154823.2535612-1-jon@nutanix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20251104.gappssmtp.com; s=20251104; t=1777916467; x=1778521267;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nmJADCUYYJkAP0ynYy9365oRJvMWu6Lq9KoE1sTjfVQ=;
 b=aPn9c1SohYWuLT89oDOh77lOrcRrLaNMSg04MHMi8jIg+aV1sSiU7czD/Rh3x+0Kme
 4B6KDlNTyi4rQ2l+WN7+vNc6yY1JLyc0PIym+s0RG5FFnyKns1EnKCtzRD7quVMRmDLa
 Yj8sUWdZFt0a9ZUeO6VafjncgeQNP8DRUAi1byuq56eOb3fqsP5AQ/RnZrJAkkMj59zl
 mNrFiOdhiDo3GPAJBoeFbI7RASzJmbtEYVOl1skZwv2cxO0I9geFIx2bLH4VXAE589FX
 ki6kYzB0ilFRdwTuL57uD0uYNBwUFrAujdNcW36J78Us4wPOAndwl/xCSJrl3Wbl/mXw
 A3Jw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20251104.gappssmtp.com
 header.i=@dama-to.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=aPn9c1So
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: C13454C2020
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devvm20253.cco0.facebook.com:mid,nutanix.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jon@nutanix.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[dama.to];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

On Mon, May 04, 2026 at 08:48:23AM -0700, Jon Kohler wrote:
> e1000e hardware supports a single RX/TX queue pair, add basic support
> for ethtool -l (i.e. get_channels), so that callers indeed see a single
> queue.
> 
> Signed-off-by: Jon Kohler <jon@nutanix.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 26 +++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Joe Damato <joe@dama.to>
