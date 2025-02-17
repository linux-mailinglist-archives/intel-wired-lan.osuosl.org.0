Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 031E3A381B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB86D81F97;
	Mon, 17 Feb 2025 11:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aNFMwQoNlIiE; Mon, 17 Feb 2025 11:31:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B38D81F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791886;
	bh=rXZoNdUIJJnZShIOY1SKEQ9C5imd0JT3HSgWwpXyows=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2Qi1G4Zb9u4LckiMKxbZoSJwDBz6bz06vfEDsaGdhtbk6WDOsJbwfYgwLJPJ58Mf6
	 r6l7qqoTTpjowJg7ILwSC7BndsjW0NLdCCYe+0YFTkJYaYcA4ZTwm1WMR5xFSTlklH
	 k/e7J0Or1UKlPSIHhr86wQOxDoOuq1pzSYKmkR1D9NT7yj2Z2dPnbemtWNxFtRYzrY
	 LIOymBuOL9Q2qnzmd29Utkkhibbi+j/hnEkrGEnlpMMtIuoNXb+XQkpFgSnwAdhaJm
	 6TcdES1LXelrpV3bESNR9Guouo8ZZ9jw7JGv9FW3RApAipxjKyrdCGN/bf2zG98UN5
	 bQD0euSpbRG8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B38D81F8C;
	Mon, 17 Feb 2025 11:31:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AD3CDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87FBF81F08
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SBrCyosycmg9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAF70819D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAF70819D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAF70819D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3043A5C51A7;
 Mon, 17 Feb 2025 11:30:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 322ECC4CED1;
 Mon, 17 Feb 2025 11:31:16 +0000 (UTC)
Date: Mon, 17 Feb 2025 11:31:13 +0000
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250217113113.GK1615191@kernel.org>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-6-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210070207.2615418-6-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739791882;
 bh=x59L7IqL94IFM2zao/QYrrn1Ck873l+zRRObe6nR3ZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FntKGJ2gEe8KQtXAM1A7/RQn+PfYq8H5dWKYZn5oss5qZBf9JJncJE+R18hFL8Lm9
 PFPpYqcpS5EoPKMf2J66Tc0mJGlB837NAOJlOR8NTAl4z0mfHEvAkYdhwMS9wYhdKJ
 HEiZuuptHx2U2UuENVvlZPPOD8mlcYbVLdg9xYKBvzRLVk1cxv7vKgZUb9VcRqL5Lp
 nZcpJgysIZTcUAwuJCuFc5CgPBBFycmNx72h4mVdtw8TrXX0x7EKS9IV1CpLtU44w5
 2lFAIvwLk9KmxV7+5Q6jltQEsCH16ycLhTcgGiskBxqc2hX/gfn1u19wzSWtFwHK40
 qURVopF4ZbD4g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FntKGJ2g
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/9] igc: Add support for
 frame preemption verification
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

On Mon, Feb 10, 2025 at 02:02:03AM -0500, Faizal Rahim wrote:

...

> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c

...

> +bool igc_fpe_transmitted_smd_v(union igc_adv_tx_desc *tx_desc)
> +{
> +	u8 smd = FIELD_GET(IGC_TXD_POPTS_SMD_MASK, tx_desc->read.olinfo_status);

olininfo_status is little-endian, so I think it needs
to be converted to host byte order when used as an
argument to FIELD_GET().

Flagged by Sparse.

> +
> +	return smd == SMD_V;
> +}

...

> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h

...

> +static inline void igc_fpe_lp_event_status(union igc_adv_rx_desc *rx_desc,
> +					   struct ethtool_mmsv *mmsv)
> +{
> +	__le32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);

It looks like the type of status_error should be a host byte order integer,
such as u32.

Also flagged by Sparse.

> +	int smd;
> +
> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
> +
> +	if (smd == IGC_RXD_STAT_SMD_TYPE_V)
> +		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET);
> +	else if (smd == IGC_RXD_STAT_SMD_TYPE_R)
> +		ethtool_mmsv_event_handle(mmsv, ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET);
> +}
> +
> +static inline bool igc_fpe_is_verify_or_response(union igc_adv_rx_desc *rx_desc,
> +						 unsigned int size)
> +{
> +	__le32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);

Ditto.

> +	int smd;
> +
> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
> +
> +	return ((smd == IGC_RXD_STAT_SMD_TYPE_V || smd == IGC_RXD_STAT_SMD_TYPE_R) &&
> +		size == SMD_FRAME_SIZE);
> +}
> +
>  #endif /* _IGC_BASE_H */
> -- 
> 2.34.1
> 
