Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CECFBBFDA1C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 19:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1419082171;
	Wed, 22 Oct 2025 17:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pubh6eBdBSOW; Wed, 22 Oct 2025 17:39:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BC5281E7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761154781;
	bh=DQdE14qwP3ArpvNj7koaLBKy4oXNS6rDuyXrc8Mb3G8=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MXDYoWl0vEhFsR2pITxluZh1rl20LF6anNRG8PeFSqNQQBbf32zfsXbtn6vLwz9FE
	 APxqHpXy3bF99R0/bBQxnie62ZDIIswkYl3RjQaEUiaI8UvFzSc/C+MLcw3dhpzmVR
	 qCjU44Qy3SPKlgYZIsa01IOE8nYwS8jx/DKh4q7b0pIiahRBortIMs7cYiy65ZP2BK
	 QDVdT8ze/b/dp0Lrwc4ObVRHZwvrxzDWDN5YxhKvLPqNqan3+ZkDdLUmjJ9UrRToI4
	 a32MWfx7vN+AtZQSbKQ/XCQ0kVUle50AdOcBDsEKZMSjZ9PMYTaKCH5JKZuGJhelyI
	 klCP40aVKIKbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BC5281E7D;
	Wed, 22 Oct 2025 17:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E9CB770A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 17:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBEBE400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 17:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlA_af25J0WM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 17:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102a; helo=mail-pj1-x102a.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E965A400E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E965A400E9
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E965A400E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 17:39:38 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-339e71ccf48so9539155a91.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 10:39:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761154778; x=1761759578;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DQdE14qwP3ArpvNj7koaLBKy4oXNS6rDuyXrc8Mb3G8=;
 b=oLllgU+9snN9RETvb/wTbKu5Iyg3NZV7XC5bYxSpvCarfyCtuIlruIEXthr//yw4/K
 A3vW5nXQu1YsE0L1ybhwjRnG4wjCTcIxTeG+2YNeQWacbsihjMPGieJlcqbFIwOLls8e
 Cp0tbsGRDbcT9XDhpNqmKjzyHsZr/0XyNN6xch4LfcicYisC5azcYJatY3Ahno8+evx9
 z1WOxDI0V9FM+E+A4YQ6HGNYsr8FnhbhGBfvWY6hlb/iq8gCA/pE0W7NPyYDQgY4YfcO
 iEocrtsy4aBADDeoGQXemAs+qZVWo/Gk854xQTDw+GsySL9/UYcR+uiJyRsdmWMad1b9
 hCOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwtCb6w6inNDlCSDUw3eGbK/CnDQ11yoEkXEGaenDQIi4yQZNmPk23WPGu+jAs7TuHJGLPDMF7fNQd4Sn2GBM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx2wfH8YcgFHjOrOKJYhBTQSie9X2Do4jtnAlBjngGFPYRGjgX1
 zqxbyrE9W1eZlvzyBK3hkqWXU7883F0V5Me3Qy1AHxqJXty9lrBEYnXy
X-Gm-Gg: ASbGnct5ajeaNC57hoIWLeed4IUaR1RPdzupdxTaMcU4uQMztxrt2Zw8mVfpJxQF6+Y
 yzBPF2JOwiWl2OMye2sC1NA8PvPPoYszML5BBktP/Exhalav1kGnaXNngpxKq09bP66SDBxgxKD
 VNfm0GCgf3BvnhoV2bbZJaijJERpISsvbowZ7VIaSolXEgN7F+Rj+nNXPlwg+30svWiXiV6Tmzg
 8ha/hNfTYGvEMFh1iBRJJaRRLWjIwMFgzwpcZdWGjdzIz0TbQg9uSiB2a2yO/fAb48jEayD6Das
 Lct/AWVyN/Wne+Z5Sh4Bk/565MgwN2HMFAOp8XNVggWvf/G0VV/OGEk05crgCkrlJcupLQehWlc
 1v3ISuFrOyZK+hq1cQniTw4TDwl5LjZoDqxHCNRgF/9GYFuPvgaK/EBFXg43SBLZ0wOba4Xk2Xn
 gZVU4=
X-Google-Smtp-Source: AGHT+IF/wQlvN1PHS4P0FuXHnhUI6gRONo719YP7lTtUWQHYnX87iTmhZHJVAyR2zlOCWjra1Hg12w==
X-Received: by 2002:a17:90b:3c88:b0:338:3d07:5174 with SMTP id
 98e67ed59e1d1-33bcf85d01dmr25963979a91.5.1761154778032; 
 Wed, 22 Oct 2025 10:39:38 -0700 (PDT)
Received: from lima-default ([104.28.246.147])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-33e223d11c8sm3174342a91.4.2025.10.22.10.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Oct 2025 10:39:37 -0700 (PDT)
From: Your Name <alessandro.d@gmail.com>
X-Google-Original-From: Your Name <you@gmail.com>
Date: Thu, 23 Oct 2025 04:39:29 +1100
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Alessandro Decina <alessandro.d@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <aPkW0U5xG3ZOekI0@lima-default>
References: <20251021173200.7908-1-alessandro.d@gmail.com>
 <20251021173200.7908-2-alessandro.d@gmail.com>
 <aPkRoCQikecxLxTS@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPkRoCQikecxLxTS@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761154778; x=1761759578; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=DQdE14qwP3ArpvNj7koaLBKy4oXNS6rDuyXrc8Mb3G8=;
 b=KVnmvdNzb24EA6mY9/9WOpg6WWy+P1jBmEgsEPucUakhewKC4xpaXZmnDrOz3zB+Gs
 Co4gKGgOcOvKkaufKuR/eAeLvl+zr6ld/roozCR5R/d2fn/eMckrqmIQKTWPOEQm9v0f
 PG3qJjVokggo58Nt6AIWgSwuuejnYePKhRnd/e0vmu33KEBxz8SXvseSXWMXj5uEJTyM
 p2uheN4uMsTkX9QShReR8SN2US1sFrZ5SmvDhyZhbnysnh0dSu014u/M2f4pq6LmVIDk
 ABaz0H8uFMtX4ZE9xfQiiytY8GyqyXHsO3gbZO4QnkwI/H5mYQRqSA/EyDJcIoR+5oG0
 +zjg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KVnmvdNz
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Wed, Oct 22, 2025 at 07:17:20PM +0200, Maciej Fijalkowski wrote:
> On Wed, Oct 22, 2025 at 12:32:00AM +0700, Alessandro Decina wrote:
> 
> Hi Alessandro,

Hey,

Thanks for the review!


> 
> > Whenever a status descriptor is received, i40e processes and skips over
> > it, correctly updating next_to_process but forgetting to update
> > next_to_clean. In the next iteration this accidentally causes the
> > creation of an invalid multi-buffer xdp_buff where the first fragment
> > is the status descriptor.
> > 
> > If then a skb is constructed from such an invalid buffer - because the
> > eBPF program returns XDP_PASS - a panic occurs:
> 
> can you elaborate on the test case that would reproduce this? I suppose
> AF_XDP ZC with jumbo frames, doing XDP_PASS, but what was FDIR setup that
> caused status descriptors?

Doesn't have to be jumbo or multi-frag, anything that does XDP_PASS
reproduces, as long as status descriptors are posted. 

See the scenarios here https://lore.kernel.org/netdev/aPkDtuVgbS4J-Og_@lima-default/

As for what's causing the status descriptors, I haven't been able to
figure that out. I just know that I periodically get
I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS. Happy to dig deeper if you
have any ideas!

> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 9f47388eaba5..dbc19083bbb7 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -441,13 +441,18 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
> >  		dma_rmb();
> >  
> >  		if (i40e_rx_is_programming_status(qword)) {
> > +			u16 ntp;
> > +
> >  			i40e_clean_programming_status(rx_ring,
> >  						      rx_desc->raw.qword[0],
> >  						      qword);
> >  			bi = *i40e_rx_bi(rx_ring, next_to_process);
> >  			xsk_buff_free(bi);
> > -			if (++next_to_process == count)
> > +			ntp = next_to_process++;
> > +			if (next_to_process == count)
> >  				next_to_process = 0;
> > +			if (next_to_clean == ntp)
> > +				next_to_clean = next_to_process;
> 
> I wonder if this is more readable?
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 9f47388eaba5..36f412a2d836 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -446,6 +446,10 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>  						      qword);
>  			bi = *i40e_rx_bi(rx_ring, next_to_process);
>  			xsk_buff_free(bi);
> +			if (next_to_clean == next_to_process) {
> +				if (++next_to_clean == count)
> +					next_to_clean = 0;
> +			}
>  			if (++next_to_process == count)
>  				next_to_process = 0;
>  			continue;
> 
> >  			continue;
> >  		}

Probably because I've looked at it for longer, I find my version clearer
(I think I copied it from another driver actually). But I don't really
mind, happy to switch to yours if you prefer!

Ciao
Alessandro

