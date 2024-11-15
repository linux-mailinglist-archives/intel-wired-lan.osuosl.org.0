Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F069CE06D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 14:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C0DA60BDF;
	Fri, 15 Nov 2024 13:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yDQCJC_xq2NH; Fri, 15 Nov 2024 13:45:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AECF0610BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731678311;
	bh=AxrruwWWOMo7tB0E6Umj2m9LKxKUhSHEZUlCsyb+Dnk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GydAELMHSp113aMYawax1PO4G3iheuA1RrKcxoZzYmEgMC8afB7tU3SWFMAfS1ZhK
	 w8W3uAuLvh/9T3YsBW9h0eJ9mUtUUvsks16kITBc3AxkKpdOG+HzGQLNHpuhol1Sf2
	 rSdwvdYkfArcBU6IkTMuY0eQCbiGkxiodfYhCUtwKtYOxRyq5BfvVYcmTykj/kbw1a
	 LnhhFZoQrj92oOYgKEXB4McmJfhoWQpY4ituMp72Q3R65T7fdkpKoGm82LHYTrisYF
	 vyVbeo8CCfnLMqZCI6LtwUdhsoxhVvlSc5ATfCAo04xohCeWWz8qRdNQiLdoShXOoH
	 VSZVAI7HCMxoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AECF0610BA;
	Fri, 15 Nov 2024 13:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 77B62BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58BD340295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZGci5Ptua5Sp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 13:45:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 84D26400DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84D26400DE
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84D26400DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 13:45:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CD35DA41A05;
 Fri, 15 Nov 2024 13:43:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC29EC4CECF;
 Fri, 15 Nov 2024 13:45:04 +0000 (UTC)
Date: Fri, 15 Nov 2024 13:45:02 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20241115134502.GQ1062410@kernel.org>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-8-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113154616.2493297-8-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731678306;
 bh=3yGbxF65nKGpPf3kAm5l8y5Ojc278AMQ6ZAHbQvYFwc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nwp3uq+/gfYQ5JxtFA6w8SmZBxkjETqdF+MyH9FO+H1LrsYbnTODGdSLCrHkuT/zP
 ndTWcWBfxoePeWxHS5tDhmt1Qo92hWaVlQnhWULI5u0MNJOOD9UqShURitIWLA72rZ
 dCVbB9q2i3YZVfy1S1ZpFTeATiWclgKgJ04My1hrdlpW/7M8mxrVVGRZTV8CuyX/3e
 h/0TiyVx2VV19BZFSwn4UCvXcUEql7+VhAOMk7oSzdNccPq+jpumUoQjjWXhTRCMH0
 H5KGLwIyx1aX5+eGnXR03H+90Gi4+uuz9ni5qcIwH5IpHLJ6N6qt7L14+gThy5zP80
 vS3YN+4yY546Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nwp3uq+/
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 07/10] idpf: add Tx timestamp
 capabilities negotiation
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

On Wed, Nov 13, 2024 at 04:46:19PM +0100, Milena Olech wrote:
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used
> for Tx timestamping.
> 
> Add function to get the Tx timestamp capabilities and parse the uplink
> vport flag.
> 
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c

...

> +/**
> + * idpf_ptp_get_vport_tstamps_caps - Send virtchnl to get tstamps caps for vport
> + * @vport: Virtual port structure
> + *
> + * Send virtchnl get vport tstamps caps message to receive the set of tstamp
> + * capabilities per vport.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport)

...

> +	for (u16 i = 0; i < tstamp_caps->num_entries; i++) {
> +		u32 offset_l, offset_h;

It looks like the type of offset_l and offset_h should be __le32
to match the values that are stored in them.

Flagged by Sparse.

> +
> +		ptp_tx_tstamp = ptp_tx_tstamps + i;
> +		tx_tstamp_latch_caps = rcv_tx_tstamp_caps->tstamp_latches[i];
> +
> +		if (tstamp_access != IDPF_PTP_DIRECT)
> +			goto skip_offsets;
> +
> +		offset_l = tx_tstamp_latch_caps.tx_latch_reg_offset_l;
> +		offset_h = tx_tstamp_latch_caps.tx_latch_reg_offset_h;
> +		ptp_tx_tstamp->tx_latch_reg_offset_l = le32_to_cpu(offset_l);
> +		ptp_tx_tstamp->tx_latch_reg_offset_h = le32_to_cpu(offset_h);
> +
> +skip_offsets:
> +		ptp_tx_tstamp->idx = tx_tstamp_latch_caps.index;
> +
> +		list_add(&ptp_tx_tstamp->list_member,
> +			 &tstamp_caps->latches_free);
> +
> +		tstamp_caps->tx_tstamp_status[i].state = IDPF_PTP_FREE;
> +	}

...
