Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F83A3FA49
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 17:11:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6B3840054;
	Fri, 21 Feb 2025 16:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_GoPHoSgR20; Fri, 21 Feb 2025 16:11:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BF3741264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740154284;
	bh=Qp8DvYGUWgTHXAPWqbMBZV8Rl/qxPnTYUxFzmDOOo1U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DZV5wZf73haTBQJO7ABdVoRJ7t0rp2YoEuoibnJnFpdjPb/xOO4c+fbaLQuL2AoLa
	 aEHbK8X9KMHzoEDUHxPnZmHH0xxtGFPhwahLOVePxiqkxdzHKPDfUCJ5KTGSO4ruNC
	 p7Zcll5w0Kpk14s63c5pSAHPOmrgDIVyU5MBPuPdkjCU/JoSYT4yn5N8Ouo4kCHDKD
	 jD0qU+ljaDnfje6Bt92Sp6i9+CoDsU4FabaZqVlxdUt15HPyAYuIrYS2LO5AUhjmXz
	 34WL7Kzt4cICc18QfFHxTlo+Ux3JxEAkXPe5PMYdkkkk65r5xbKQ0hX1dPYCR5U5rg
	 RnKWEZGIp1CwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF3741264;
	Fri, 21 Feb 2025 16:11:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F062F194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B477C83AF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8YdemcwkGVEa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 09:43:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102e; helo=mail-pj1-x102e.google.com;
 envelope-from=0x1207@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68CF583B5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68CF583B5A
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68CF583B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:43:08 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-2fbf77b2b64so3853419a91.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 01:43:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740130987; x=1740735787;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qp8DvYGUWgTHXAPWqbMBZV8Rl/qxPnTYUxFzmDOOo1U=;
 b=J9szJIrvlPl1yvYG0hNweeqtNR2s0aV6Ip/4USfqVqKJI8D5CRVxvkakYdO62jOrlU
 mn+RoqIKzvKhvvX8USspAzs/xA+Tu4v4SgC6LNAfA8WpeqyLmvx6KGmGVdnDyV5dql2W
 0Hf6kn6QSLRqIDXRsIfr4OEjJ4p4ecAA9Gq/dTZEWG0l9mdOj32ESkRq+4WmRijb+PLr
 5N2MecKs2n8YaVsR2sF60PuUxNHhzF2nVHF0ZU0e/ZPv/ArjvCEOGD1Yd2kp7svQzfXI
 VpMqZ1MAMALJ+G3FWtUJP8uX/S7raSxHqdg7wAD9iV0713Y6x8UjvJCsp+aABCvUDQio
 F5Qw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlp5wqFucJdEpmXPZUh40ajWtbAQJpWi+E86ptlFkIKFkw41kFf7zTalrgJq+eBKGh6+n8qEPw7KK2o3NYTkk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz6ItNQZiY8xDurGsGOQr8/Xy6xMOn8nK0qUeSWTvflCPU8BRAg
 M1NtlBG7eJFB+zzetXC692uynjSRPtbgZwhM7CJTwX2Z3BT7udKW
X-Gm-Gg: ASbGncsQyKa4K7A8z+Hxftfj2GSf8DnctAvruZGWBv8Afn28pz2eA6WLM1PtDO3oU8s
 AqdhohSS5AgxI2FVLmNwzj7Y7xC0qYQ3cMTCTNRo2UmS2eMr2j+rhFQC0a2hukzaG1ql0zf82TY
 2IA+BA1OJVA+ykv05ELSXhAavHxllCC++BHHQIT+bUX/NVNXpHCUMdhxcVSpEObL8LCVsWv90Bb
 BvTN6TPW6GBOd4hCjedI+53jbI2tdgtWWmPiV4lMuOrG4c1ahD+GrAN6GFg4Cb7k0L9gKS5Yt8c
 HIALoAvEQJIJVDe7qTgWnJ0=
X-Google-Smtp-Source: AGHT+IEFLkFCj2bQJ0yLXnoXnz387Bz22Ke8KnkO2x0EryQr6MWOx9pTmc0bN1V4MOkAKGnHvqQCJw==
X-Received: by 2002:a17:90b:2e0d:b0:2fa:2124:8782 with SMTP id
 98e67ed59e1d1-2fce7b1f6afmr4454759a91.25.1740130987274; 
 Fri, 21 Feb 2025 01:43:07 -0800 (PST)
Received: from localhost ([129.146.253.192]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2fcb844c60asm3042021a91.0.2025.02.21.01.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2025 01:43:07 -0800 (PST)
Date: Fri, 21 Feb 2025 17:42:49 +0800
From: Furong Xu <0x1207@gmail.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Simon Horman <horms@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Russell King
 <rmk+kernel@armlinux.org.uk>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>, Xiaolei Wang
 <xiaolei.wang@windriver.com>, Suraj Jaiswal <quic_jsuraj@quicinc.com>, Kory
 Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>, Jesper
 Nilsson <jesper.nilsson@axis.com>, Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250221174249.000000cc@gmail.com>
In-Reply-To: <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 21 Feb 2025 16:11:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740130987; x=1740735787; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qp8DvYGUWgTHXAPWqbMBZV8Rl/qxPnTYUxFzmDOOo1U=;
 b=jo7Kau9+RkC6DPeI2+r5yv2ohWMTI2GD4CaC1WldQ3ETcg8Y8Sdp3LfQVSr/OSGExd
 6GMiFJLm7I/mg9SweGrqV5Xpm46cxTGYe3D8wGjplgQHDydmDpNrVEF+vQb4i19PUqF/
 JpnwH/o+dRNmFCxAQR1R7EPt6mddK0AFk1e7R4wLvR/EPhtaeg98voM+Fafkb0AGfWoO
 2tVQzvYtIbTHgTjecYpE0A47FpgFju7GJglNgzsLCXcgZk1v9wjIr24noYPfDTMQdjbw
 HBh+q8fqYAVj+D76pli2UZ4e6GZRciw8C9mRkd2nq7TNTePlrUathbWaiSCS4uOWHM1z
 WdZQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jo7Kau9+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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

On Wed, 19 Feb 2025 21:53:41 -0500, Faizal Rahim <faizal.abdul.rahim@linux.intel.com> wrote:

> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> It appears that stmmac is not the only hardware which requires a
> software-driven verification state machine for the MAC Merge layer.
> 
> While on the one hand it's good to encourage hardware implementations,
> on the other hand it's quite difficult to tolerate multiple drivers
> implementing independently fairly non-trivial logic.
> 
> Extract the hardware-independent logic from stmmac into library code and
> put it in ethtool. Name the state structure "mmsv" for MAC Merge
> Software Verification. Let this expose an operations structure for
> executing the hardware stuff: sync hardware with the tx_active boolean
> (result of verification process), enable/disable the pMAC, send mPackets,
> notify library of external events (reception of mPackets), as well as
> link state changes.
> 
> Note that it is assumed that the external events are received in hardirq
> context. If they are not, it is probably a good idea to disable hardirqs
> when calling ethtool_mmsv_event_handle(), because the library does not
> do so.
> 
> Also, the MM software verification process has no business with the
> tx_min_frag_size, that is all the driver's to handle.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Co-developed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
> Signed-off-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
> Co-developed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Tested-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h  |  16 +-
>  .../ethernet/stmicro/stmmac/stmmac_ethtool.c  |  41 +---
>  .../net/ethernet/stmicro/stmmac/stmmac_fpe.c  | 174 +++-----------
>  .../net/ethernet/stmicro/stmmac/stmmac_fpe.h  |   5 -
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c |   8 +-
>  include/linux/ethtool.h                       | 131 ++++++++++
>  net/ethtool/mm.c                              | 225 +++++++++++++++++-
>  7 files changed, 399 insertions(+), 201 deletions(-)
> 
[...]
> +void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
> +{
> +	unsigned long flags;
> +
> +	ethtool_mmsv_stop(mmsv);
> +
> +	spin_lock_irqsave(&mmsv->lock, flags);
> +
> +	if (up && mmsv->pmac_enabled) {
> +		/* VERIFY process requires pMAC enabled when NIC comes up */
> +		ethtool_mmsv_configure_pmac(mmsv, true);
> +
> +		/* New link => maybe new partner => new verification process */
> +		ethtool_mmsv_apply(mmsv);
> +	} else {
> +		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;

Tested this patch on my side, everything works well, but the verify-status
is a little weird:

# kernel booted, check initial states:
ethtool --include-statistics --json --show-mm eth1
[ {
        "ifname": "eth1",
        "pmac-enabled": false,
        "tx-enabled": false,
        "tx-active": false,
        "tx-min-frag-size": 60,
        "rx-min-frag-size": 60,
        "verify-enabled": false,
        "verify-time": 128,
        "max-verify-time": 128,
        "verify-status": "INITIAL",
        "statistics": {
            "MACMergeFrameAssErrorCount": 0,
            "MACMergeFrameSmdErrorCount": 0,
            "MACMergeFrameAssOkCount": 0,
            "MACMergeFragCountRx": 0,
            "MACMergeFragCountTx": 0,
            "MACMergeHoldCount": 0
        }
    } ]

# Enable pMAC by: ethtool --set-mm eth1 pmac-enabled on
ethtool --include-statistics --json --show-mm eth1
[ {
        "ifname": "eth1",
        "pmac-enabled": true,
        "tx-enabled": false,
        "tx-active": false,
        "tx-min-frag-size": 60,
        "rx-min-frag-size": 60,
        "verify-enabled": false,
        "verify-time": 128,
        "max-verify-time": 128,
        "verify-status": "DISABLED",
        "statistics": {
            "MACMergeFrameAssErrorCount": 0,
            "MACMergeFrameSmdErrorCount": 0,
            "MACMergeFrameAssOkCount": 0,
            "MACMergeFragCountRx": 0,
            "MACMergeFragCountTx": 0,
            "MACMergeHoldCount": 0
        }
    } ]

# Disable pMAC by: ethtool --set-mm eth1 pmac-enabled off
ethtool --include-statistics --json --show-mm eth1
[ {
        "ifname": "eth1",
        "pmac-enabled": true,
        "tx-enabled": false,
        "tx-active": false,
        "tx-min-frag-size": 60,
        "rx-min-frag-size": 60,
        "verify-enabled": false,
        "verify-time": 128,
        "max-verify-time": 128,
        "verify-status": "DISABLED",
        "statistics": {
            "MACMergeFrameAssErrorCount": 0,
            "MACMergeFrameSmdErrorCount": 0,
            "MACMergeFrameAssOkCount": 0,
            "MACMergeFragCountRx": 0,
            "MACMergeFragCountTx": 0,
            "MACMergeHoldCount": 0
        }
    } ]

verify-status always normal on other cases.

@Vladimir, maybe we shouldn't update mmsv->status in ethtool_mmsv_link_state_handle()?
Or, update mmsv->status like below:
mmsv->status = mmsv->pmac_enabled ?
		ETHTOOL_MM_VERIFY_STATUS_INITIAL :
		ETHTOOL_MM_VERIFY_STATUS_DISABLED;

Anyway, this is too minor, so:

Tested-by: Furong Xu <0x1207@gmail.com>


> +		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
> +
> +		/* No link or pMAC not enabled */
> +		ethtool_mmsv_configure_pmac(mmsv, false);
> +		ethtool_mmsv_configure_tx(mmsv, false);
> +	}
> +
> +	spin_unlock_irqrestore(&mmsv->lock, flags);
> +}
> +EXPORT_SYMBOL_GPL(ethtool_mmsv_link_state_handle);


