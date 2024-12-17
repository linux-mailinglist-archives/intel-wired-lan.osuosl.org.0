Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3189F3ED1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 01:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB22817A0;
	Tue, 17 Dec 2024 00:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59_gxzfRJCOh; Tue, 17 Dec 2024 00:35:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A519817EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734395711;
	bh=ZGevOgBhWZKJ0GVhF1SPi9w+aHO2yKpIaCvBZOXrsuI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SMgPsBKFKYCL5HkqfsgfGCzYJCYRIzzB9enNHHqlUOfYaVQaEzc9HVwB59i3xNglt
	 7VdmgFstSMKDweJrqmLawOpE3LpE52Rq/Xnr7dscm5XvrwE/rM9W/T/Jl81LJ0EmJb
	 vHfun0cZ7+bgg6xfk9DKt4FqcJWOwSrn+YEfe6vjdR9qWbsjHDv+hQB301D+fi7Aad
	 POSru0kIaoCVRsb0lkAobRoYl4jyVpEVO+V/FOqcaRdraphkBAfSq3RHaKQMn8XKf5
	 3FuOt4+yq33xxzdqArX9AOKIKnE49yAzePqpxpmko6/Io3N19xSanA6iF2myDZyk97
	 GlEldMrh4FLGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A519817EB;
	Tue, 17 Dec 2024 00:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 951E5E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E3EF610B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyj4Hn0WeebW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 00:35:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 740BA611B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 740BA611B5
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 740BA611B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 00:35:08 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3862de51d38so222775f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:35:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734395706; x=1735000506;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZGevOgBhWZKJ0GVhF1SPi9w+aHO2yKpIaCvBZOXrsuI=;
 b=HLuNXLPkir5vm3E2mevvsa5xpUb4tpitq+tUYD4ur9FKPOvs3PiZDr+hGIthk6PoN6
 LA/Kljzs/V1RWS8tUuzIgFUSPzCRrC4n6hJ04T0h7/SWPtFYnG5vZqvzgIzZ0lGP084L
 RPlVUAs5ByZajzQxk57cCNdQLsByjcqCfcpJCnK22V1ouK0K99H/TBZ103mX7tT3G4A0
 ZN88/PxPIpOfarfsOEgLmzZQqeFy8k8qm9iexIK8dNuq6WSJW9b557w3vQr81F5Ju06p
 AbVviACBaNR0iXRhazXfUEOCV+MotEgGLTSWoKbXsc+MsA3jzMOTPXkHBfY+rH3fULDX
 fgAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXEADVKBEZfHn6rE4VQwEEC6GvFiI5vtJeNqVIv12tu+QKHppzG20BCXK/C1SatAGqEDaDvhlrv+jy0ss8WHGM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwsKvdpuRDqPsnxrHQjyVIwcgniPvl0wDTY/f/GNXDg/WO7a/TO
 BBvTu5h6gQ4yQWx7Y515iqfmh+t9wV1LfqKOS9MDxvL/sB9g+2i9
X-Gm-Gg: ASbGnctpeR5nVmgcFCg369RX0SNxQLY0w0yyHA8miKp+rT9I6v999RZFz9he6T8RIRM
 MSRQL6LBrZ3p2Jv7zsErmRqYP0FZeXtOabN64Ku5/o0SymKE1UmFM5sEtAuWOpxfg9PxPonuzha
 +FAWQAsy+UQ0h3MYHwdLOCug2U8+39SOkn3Y1CRYo4Elmik33aTUQz6GcQIL1RQClKq/I9XR1+D
 czP7ZA2ixSkXQVV/ONz9O/zXRi+uXLraR8FoeaQXNdi
X-Google-Smtp-Source: AGHT+IHugxZXWJBSpUs2r7E1lOtK0oUnw2iWlt5HBlZMmw0+kMHWyErJBeAT4hYbtRUUDFrGnAehWg==
X-Received: by 2002:a5d:5f4b:0:b0:382:41ad:d8e1 with SMTP id
 ffacd0b85a97d-3888e0b6691mr4012198f8f.14.1734395705528; 
 Mon, 16 Dec 2024 16:35:05 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-388c801a349sm9607246f8f.46.2024.12.16.16.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 16:35:04 -0800 (PST)
Date: Tue, 17 Dec 2024 02:35:01 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241217003501.ar3nk6utdjllqjbk@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734395706; x=1735000506; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZGevOgBhWZKJ0GVhF1SPi9w+aHO2yKpIaCvBZOXrsuI=;
 b=KcQ4M/gwrrOCgaJFOsYWxCGYiyrOWevKxAcRoWYdDLy68bytcAxyCdFvS0Xl5aUtwi
 ab9jeptyQMlg2ye9f+5bmx4zhWN1c94kA9ifQwWSpOfxJ1NavT30dh/t1ut8ueGqz8MZ
 YZPD66yj9pLNhIWDWD6fBvUFkHbFU+cxZ7h/CBz1BRaPxKgfTkjJ23ZuEKocgTEK07fG
 84EzICtH7YhW4ryIm0T3KR+BwAEoWZlWDkbkn3TXTpwRNnXmx86ROZ8oyI64n7hL0A7/
 Qq3ThIpClDd5hf9bT9OIuyiA0Vo8vve9dK7dg4MobkF09yBb73nql3GZRhCsW3//oaoo
 A0AA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=KcQ4M/gw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/9] igc: Add support to get
 MAC Merge data via ethtool
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

On Mon, Dec 16, 2024 at 01:47:19AM -0500, Faizal Rahim wrote:
> Implement "ethtool --show-mm" callback for IGC.
> 
> Tested with command:
> $ ethtool --show-mm enp1s0.
>   MAC Merge layer state for enp1s0:
>   pMAC enabled: on
>   TX enabled: on
>   TX active: on
>   TX minimum fragment size: 252
>   RX minimum fragment size: 252

I'm going to ask "why so high?" and then I'm going to answer that I
suspect this is a positive feedback loop created by openlldp, because of
the driver incorrectly reporting:

- 60 as 68, ..., 252 as 260, and openlldp always (correctly) rounding up
  these non-standard values to the closest upper multiple of an
  addFragSize, which is all that can be advertised over LLDP
- on RX what was configured on TX (see below), which in turn makes the
  link partner again want to readjust (increase) its TX, to satisfy the
  new RX requirement

But I'm open to hearing the correct answer, coming from you :)

>   Verify enabled: on
>   Verify time: 128
>   Max verify time: 128
>   Verification status: SUCCEEDED
> 
> Verified that the fields value are retrieved correctly.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 7cde0e5a7320..16aa6e4e1727 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1782,6 +1782,25 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>  	return 0;
>  }
>  
> +static int igc_ethtool_get_mm(struct net_device *netdev,
> +			      struct ethtool_mm_state *cmd)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct fpe_t *fpe = &adapter->fpe;
> +
> +	cmd->tx_min_frag_size = fpe->tx_min_frag_size;
> +	cmd->rx_min_frag_size = fpe->tx_min_frag_size;

This is most likely a mistake. rx_min_frag_size means what is the
smallest fragment size that the i225 can receive. Whereas tx_min_frag_size
means what minimum fragment size it is configured to transmit (based,
among others, on the link partner's minimum RX requirements).
To say that the i225's minimum RX fragment size depends on how small it
was configured to transmit seems wrong. I would expect a constant, or if
this is correct, an explanation. TI treats rx_min_frag_size != ETH_ZLEN
as errata.

> +	cmd->pmac_enabled = fpe->pmac_enabled;
> +	cmd->verify_enabled = fpe->verify_enabled;
> +	cmd->verify_time = fpe->verify_time;
> +	cmd->tx_active = igc_fpe_is_tx_preempt_allowed(&adapter->fpe);
> +	cmd->tx_enabled = fpe->tx_enabled;
> +	cmd->verify_status = igc_fpe_get_verify_status(&adapter->fpe);
> +	cmd->max_verify_time = MAX_VERIFY_TIME;
> +
> +	return 0;
> +}
