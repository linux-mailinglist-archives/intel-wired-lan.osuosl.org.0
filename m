Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BF29DE9F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Nov 2024 16:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B763607EF;
	Fri, 29 Nov 2024 15:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Idl3O_4JAyep; Fri, 29 Nov 2024 15:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8392360803
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732895318;
	bh=9fZmFquivfpsRX4ovRuebdXrWSPlFb6167yx7/D4Gv8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uHD47pt2rNGxXIgrzaoudfPcvKciXhdcSozurhLX6/cyZN3twMxKINcKV4+OTdQHq
	 5CmI64P1gFM/DZL6HVWcn30NETJoBS9vJLenqgO0X5GGqvIuNmm+cAgvAGNPex9CHr
	 29iZ6dclBYbaGXQteTFIb3r69cOLDsvINGtOyCPbyz+wBnfEOtr+tbErl/3U4gxnb4
	 88HAow2xvVgSSfFZHBnE4aIioGEc621UOrRlcaJ1JgFpJM56tnr3b18TlRIpv0Lkhn
	 2wmK7fmFgoYxlNV/ZM26K6eL/wRX1aVipk5B2gGUfhTB/RX0a1/cMZB5jehiscMk3/
	 sjQTTXCy3fCIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8392360803;
	Fri, 29 Nov 2024 15:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 28AB671F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1753F60799
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:48:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-3odYkWBr1b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Nov 2024 15:48:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::736; helo=mail-qk1-x736.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C503605F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C503605F9
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C503605F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:48:36 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id
 af79cd13be357-7b15467f383so141647585a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 07:48:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732895314; x=1733500114;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9fZmFquivfpsRX4ovRuebdXrWSPlFb6167yx7/D4Gv8=;
 b=KFSE10P4qnuR+tXFy2XiAvtJR/9vzETYKgspYsexjP+ROe5gQUx1/brKXICLf6oXFl
 1x4SYRQLDvW5zMcQEaQjIUk1kRjnQkW9gzl7Zdg8hiKdvOVSxjA8fs2Svr9oHdd3N9XS
 AaJyfz5CDntOhD09OW2s1SI8H7GpV7IRqxbaHjaUbnhQCV7rSbwRZXZ3vESwXjeBY4Tm
 +CDC9HpMTqAjIZtUA41ur9SxgiY7frwXhxiPkJlcZQqggCzYhMFh2BvsIrmm4y6IdUy2
 kclVXqXtMLaFdY9ZT8HjLIkS6NBkgZ9YfuyYjvsRvQgv5rzGIJ5XqEap/CilkmuJk9jI
 r6gA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXElfTPe7KXEufBrS6xsjqr5AekzNAAS8BAJZmM3Bxyh204CSoduMIIw0VG/GSvWelmR0Z5KEGel38W4b6Nzv8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxl6Fr2MmRHSZq6WcMzsBA5GrT21v1oj5KWgcz5bAxyO9aIe+z3
 iQzkAwjKvYloBbGHSWLTT06JRpZM1KjQi1oqUoNFGO93YHiuyCw8
X-Gm-Gg: ASbGncvxMI0DxxUIZiWsELWF74OI3RAN3FLSke/xBYVd2Cvgav6So3D5uGBsWJhsjPo
 eVO38iKUNwu4s/bfTyH+o57wf0GojoeJcxL2AE234il60l2H7hq5fOtHSt1kEMGpsYx96EQYsee
 1rHxLspWRx6J4MNrDY6BFgWyvydrFY5mI+uJM2VrsqDyR+u3gluM69Bl5zQyZYM6jzrDd2765bM
 2h7xKbVwyA/YAO6XwIx0qMFZxWo2ve32lnTsVyF8L1iT2PW4Zg6HIOvGdXTjSggbvX4vSXIZqiN
 ZPEbfcXVGM4R02Pyhnplfw==
X-Google-Smtp-Source: AGHT+IGC0M0tgAcIG7IBoef9nUKFozo8QRmbCfwEMu3jKIF4G/ftFfQgV4H1+wEcw6ICac2x9IABig==
X-Received: by 2002:a05:6214:a6d:b0:6d8:8256:41d7 with SMTP id
 6a1803df08f44-6d88256548dmr59309366d6.33.1732895314141; 
 Fri, 29 Nov 2024 07:48:34 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d880e81c86sm10972986d6.106.2024.11.29.07.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2024 07:48:33 -0800 (PST)
Date: Fri, 29 Nov 2024 10:48:33 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <6749e251407f0_23772a2948f@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241126035849.6441-10-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-10-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732895314; x=1733500114; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9fZmFquivfpsRX4ovRuebdXrWSPlFb6167yx7/D4Gv8=;
 b=hfc0Ve5J3YYKmmNPDymmk4Vww2Wix6fKSZ94MaBahSieL6OUGRuZvOk7FZWiUbOyIk
 Mc/gPMKngnnsxogsMOUd32qOndwbo/Vx5Q6U3qJlUsAO1ks/uBJ3gzCTaee7xlaZgv3D
 ewXh7RYMHPq3M7aCyMCalf8arLnZrAXR9/An01y2klFxDfTzTEpaMLReN64K+wTZtVut
 1fRnzqfqGqgZTPUUqSvq/1zazcIh646xXkag2GzzFEzeL1xOqA9BaTnHhbmL80l9fYc4
 /VStOdblFOnb48/w/n79TsH7i2SH4+eJwtdoWl2zbGr7PveXk7h4+vIpAAImwWDjFXra
 AQcw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=hfc0Ve5J
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 09/10] idpf: add support
 for Rx timestamping
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

Milena Olech wrote:
> Add Rx timestamp function when the Rx timestamp value is read directly
> from the Rx descriptor. In order to extend the Rx timestamp value to 64
> bit in hot path, the PHC time is cached in the receive groups.
> Add supported Rx timestamp modes.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v1 -> v2: extend commit message
> 
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c  | 77 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 ++++++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  7 +-
>  3 files changed, 111 insertions(+), 3 deletions(-)
> 
> +/**
> + * idpf_ptp_set_rx_tstamp - Enable or disable Rx timestamping
> + * @vport: Virtual port structure
> + * @rx_filter: bool value for whether timestamps are enabled or disabled
> + */
> +static void idpf_ptp_set_rx_tstamp(struct idpf_vport *vport, int rx_filter)
> +{
> +	vport->tstamp_config.rx_filter = rx_filter;
> +
> +	if (rx_filter == HWTSTAMP_FILTER_NONE)
> +		return;
> +

Same question as v1:

Should this clear the bit if it was previously set, instead of
returning immediately?

If not, why not. The function comment says enable or disable.

> +	for (u16 i = 0; i < vport->num_rxq_grp; i++) {
> +		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
> +		u16 j;
> +
> +		if (idpf_is_queue_model_split(vport->rxq_model)) {
> +			for (j = 0; j < grp->singleq.num_rxq; j++)
> +				idpf_queue_set(PTP, grp->singleq.rxqs[j]);
> +		} else {
> +			for (j = 0; j < grp->splitq.num_rxq_sets; j++)
> +				idpf_queue_set(PTP,
> +					       &grp->splitq.rxq_sets[j]->rxq);
> +		}
> +	}
> +}
