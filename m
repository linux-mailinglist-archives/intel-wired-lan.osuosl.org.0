Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6879C937B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:53:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B577C605E4;
	Thu, 14 Nov 2024 20:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JBftk4DDoog1; Thu, 14 Nov 2024 20:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDF44605C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731617623;
	bh=xs4vJU+kzHF8AXBXurcYgn4Nl7S3rirwZKa799ggXkk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jUlMn/ayr37TJEGlJlzDr5FjQ4qFmkHQa8USloM0qU7QRpgsGb05sqeT1p8ciD46u
	 W/HW8HngftvHhOIzcjg1j1G41Qcp2CY8goyEbGZ9l9rBGBuxAr6wqgUuacIIzaiHDT
	 fxRgTwbqEAZD4S/f1o/Y+hZza56DkhBCPDtM5VxfXQWZ46pI9Tw9SlKZs3E68tJUzV
	 RRqvKyPVVN+5bjIEVajNX229zcMuBJNb/ujdGicGgP37sZ2cwsdPd+2R0cgFmSycyJ
	 jBkbD21PHKn93UGev5C157any9rcWJ10BIQ9EFvPs5XVzaH5Mb9f0NnDVNsCjtF+eW
	 i4htI+sWiYNFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDF44605C0;
	Thu, 14 Nov 2024 20:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C2A78968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD6FC405C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CWlGnCzo_fLB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f33; helo=mail-qv1-xf33.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 39E92405C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39E92405C1
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39E92405C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:53:40 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id
 6a1803df08f44-6cbf340fccaso8645846d6.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:53:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731617620; x=1732222420;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=xs4vJU+kzHF8AXBXurcYgn4Nl7S3rirwZKa799ggXkk=;
 b=UhWkAALrEbqjXCY17ZAWFmdCU5K6d7unBuCP/lB4URCmwST9rwLWV3s7DpkLf7kgum
 M1un3gAuDHwj1BUFEWXPRzK0iiWs1E6IU5AZUkvj1yg58KXA0lW8jadf2jzAFZbR0mI/
 ZFT2wHlNx81Y1ud+GwvrAI04S5UGpgo8qFwVPljeR2FrnuczbwOpD/cx6HIPnfpiBVaX
 MYBXEPRx5H9QSMouZJMPOC0+ZaiDsy3NRQXEdB1oprEy9OQUdKYTHSsz7k2k/wLWssqH
 qIf3wvYWEl6+4lSgCVHOWzOL8nUro/70DoQ44H4gjHaURiN3h+lmk9eBjBhiHmBG9Li8
 dIAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQwhg6OdXd/HKuUTpmPe5tCrwJI7rLP8PAUJXgXHCKRjNuGMik7Ksh/ERzOwn/DmrlPxc6x83YgLOs4YUdAPE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxEO3dmxujxfLZLauSSZYCpmfR2zmnBqJKJukdAEGsWN/DGUS3K
 NYTI1F5jyTHOJF0N5ppHe983NPLIa/PXOUbUThXcS62Fp12Y7Z2gsHNW7Q==
X-Google-Smtp-Source: AGHT+IExxThiz8yFS4GkRT/sNi3iT0zykfKtcp3oEj5kKylvkfzu62N9oX/R4KU5BT0e6LXKmdRB1Q==
X-Received: by 2002:a05:6214:27c5:b0:6cb:9a1c:cfae with SMTP id
 6a1803df08f44-6d3e8fcb392mr76737136d6.6.1731617619727; 
 Thu, 14 Nov 2024 12:53:39 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d3f94882ebsm3813656d6.10.2024.11.14.12.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:53:39 -0800 (PST)
Date: Thu, 14 Nov 2024 15:53:38 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67366352c2c5b_3379ce29475@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-10-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-10-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731617620; x=1732222420; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xs4vJU+kzHF8AXBXurcYgn4Nl7S3rirwZKa799ggXkk=;
 b=EWFZgSVoWPc42ctQR4i4OQbBE5oakc2Ii3fw3XuPP0T2w6dd/CX9ORAyTy8omaaCpi
 tSCuKDIu2HzHfATLPQbvTGGeqElFjitrucV3pXsBqBNGyKdmZniBSOzx02oWosfK3Y1c
 8TCp+7IaNqWmsg+CiEGtFIRnZFL4J6lnLIitOLXKfcmgtAuySZGUgVGmdTLyQuOvp804
 6tXpoaRESaWcOCLehdiNroteYD12ZpBvhmnomFANrZqsYa2/Ik9PYy3q/O1nJdLlfnCU
 pAykHNds4MydCCD3Zf/yfv685/7eWjUaAo6I6w+SzgO60XLymle7GRXmWooAk7HluhMV
 zAgQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EWFZgSVo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 09/10] idpf: add support for
 Rx timestamping
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
> from the Rx descriptor. Add supported Rx timestamp modes.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c  | 74 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 +++++++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  7 +-
>  3 files changed, 109 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index f34642d10768..f9f7613f2a6d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -317,12 +317,41 @@ static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
>  	return 0;
>  }
>  
> +/**
> + * idpf_ptp_update_phctime_rxq_grp - Update the cached PHC time for a given Rx
> + *				     queue group.

Why does each receive group have a separate cached value?
They're all caches of the same device clock.

> + * @grp: receive queue group in which Rx timestamp is enabled
> + * @split: Indicates whether the queue model is split or single queue
> + * @systime: Cached system time
> + */
> +static void
> +idpf_ptp_update_phctime_rxq_grp(const struct idpf_rxq_group *grp, bool split,
> +				u64 systime)
> +{
> +	struct idpf_rx_queue *rxq;
> +	u16 i;
> +
> +	if (!split) {
> +		for (i = 0; i < grp->singleq.num_rxq; i++) {
> +			rxq = grp->singleq.rxqs[i];
> +			if (rxq)
> +				WRITE_ONCE(rxq->cached_phc_time, systime);
> +		}
> +	} else {
> +		for (i = 0; i < grp->splitq.num_rxq_sets; i++) {
> +			rxq = &grp->splitq.rxq_sets[i]->rxq;
> +			if (rxq)
> +				WRITE_ONCE(rxq->cached_phc_time, systime);
> +		}
> +	}
> +}
> +

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

Should this clear the bit if it was previously set, instead of returning immediately?
> +
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

> +static void
> +idpf_rx_hwtstamp(const struct idpf_rx_queue *rxq,
> +		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
> +		 struct sk_buff *skb)
> +{
> +	u64 cached_time, ts_ns;
> +	u32 ts_high;
> +
> +	if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
> +		return;
> +
> +	cached_time = READ_ONCE(rxq->cached_phc_time);
> +
> +	ts_high = le32_to_cpu(rx_desc->ts_high);
> +	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
> +
> +	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps) {
> +		.hwtstamp = ns_to_ktime(ts_ns),
> +	};

Simpler: skb_hwtstamps(skb)->hwtstamp = ns_to_ktime(ts_ns);
