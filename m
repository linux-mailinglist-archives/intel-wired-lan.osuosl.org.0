Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHb6CPAE3Wn/YwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:00:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE13D3EDA3D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 16:59:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DB0040132;
	Mon, 13 Apr 2026 14:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6339vvS68Gk; Mon, 13 Apr 2026 14:59:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 924E6420E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776092394;
	bh=+iiK69jUuj22K0hx6tkOrdhZnABEaD8kzPX09CT2qeA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1UGzMzp7Un+8v37G/FQLzKfd0kUNPVkbM9Y7lpoAvrU7OwbEEtgzOdkvq5APRi1t+
	 h4i6XVgumfdM8PE1R0aw2NdsbRdu+9KEBKejJbdA0oj4HLMUCHn+9pcdS0CzzZtHOD
	 ExStExiG4/xd0sKgObMvHGnLvnT6ZxiAeRYKYwHh+wBIIlkc2OleZ/8bB1ZKL/G3/m
	 m8lAYczUKeHIK2Rpzb8Cj9jpREOI5P41ZTf3fPEjgM5Ou+QfNW2DqQN2cnNVI8Bohk
	 zTjgCoBN8YjoSisag4+Vpef2zEUb/5WKHbg8I4zbFGm6aYSPKPyLNBuLxVYth8ISvh
	 7Awjfb4AEY8tA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 924E6420E6;
	Mon, 13 Apr 2026 14:59:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 32E17237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 248AB41FBE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVDTt2XlwRps for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 14:59:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 391F241F90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 391F241F90
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 391F241F90
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 14:59:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A605042E3D;
 Mon, 13 Apr 2026 14:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EAB6C2BCAF;
 Mon, 13 Apr 2026 14:59:48 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: khai.wen.tan@linux.intel.com
Cc: 'Simon Horman' <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hector.blanco.alcaine@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, faizal.abdul.rahim@linux.intel.com
Date: Mon, 13 Apr 2026 15:52:15 +0100
Message-ID: <20260413145215.718532-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260409072747.217836-1-khai.wen.tan@linux.intel.com>
References: <20260409072747.217836-1-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776092391;
 bh=ToPQhf+AU4et7lLAuA4KTwzfff0wXqHPucAzwkwJ6sY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TtW2TBS94vcUa9a4Ed7PcWrPV/FRaksQw2+2uT/VDXjTU7nqgp+KFWLTPRee+0gc5
 yvB4DOLk5RSddrYhq5YKFaGo4kGO4evnX4vGCfhrv6oe1ANV9EgFE6AQWFbm3ltNqT
 DabilfO/qj7VbMqv+W8TUF5tErjALJQHK4YRAuOvnhA84nSKkuo/fcBVMSI1srjBz1
 aGIV2+tIoq0GbZHnAALd64Wvj5n+Vat6IsDlxWFiYEmr2INVAkwbTYvN+PtBOLP2Gu
 f3nC/Ipd3gjo2civxcJrK0lYbr/IZLJJc4ipzTpiEJnbLf2IMo6q/ppcI27eKjL6aD
 keL1vs1jXFWOw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TtW2TBS9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: add support for
 forcing link speed without autonegotiation
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
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hector.blanco.alcaine@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EE13D3EDA3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
igc: add support for forcing link speed without autonegotiation

This commit allows forcing 10/100 Mb/s link speed and duplex settings via
ethtool when autonegotiation is disabled. It configures the MAC CTRL and
PHY registers to bypass autonegotiation and apply the requested settings.

> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 0122009bedd03..e14771532dad8 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
[ ... ]
> +static int igc_handle_autoneg_disabled(struct net_device *netdev, u32 speed,
> +				       u8 duplex)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct igc_mac_info *mac = &adapter->hw.mac;
> +	enum igc_forced_speed_duplex forced_speed_duplex;
>  
> +	switch (speed) {
> +	case SPEED_10:
> +		forced_speed_duplex = (duplex == DUPLEX_FULL) ? IGC_FORCED_10F : IGC_FORCED_10H;
> +		break;
> +	case SPEED_100:
> +		forced_speed_duplex = (duplex == DUPLEX_FULL) ? IGC_FORCED_100F : IGC_FORCED_100H;
> +		break;

Does forcing a half-duplex configuration here also require setting flow
control to none (e.g., hw->fc.requested_mode = igc_fc_none)?

> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 7ac6637f8db73..16b0f2db06896 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -452,7 +452,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>  	 * so we had to force link.  In this case, we need to force the
>  	 * configuration of the MAC to match the "fc" parameter.
>  	 */
> -	if (mac->autoneg_failed)
> +	if (mac->autoneg_failed || !mac->autoneg_enabled)
>  		ret_val = igc_force_mac_fc(hw);

If mac->autoneg_enabled is false, igc_force_mac_fc() will configure the MAC
using the existing hw->fc.current_mode. If current_mode defaults to full flow
control, this will enable PAUSE frames.

Since autonegotiation is disabled, the MII status check further down in this
same function will fail and return early:

drivers/net/ethernet/intel/igc/igc_mac.c:igc_config_fc_after_link_up() {
    ...
    if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
        hw_dbg("Copper PHY and Auto Neg has not completed.\n");
        goto out;
    }
    ...
}

This early return skips the half-duplex safety check at the end of
igc_config_fc_after_link_up() which would normally clear the flow control
settings:

drivers/net/ethernet/intel/igc/igc_mac.c:igc_config_fc_after_link_up() {
    ...
    if (duplex == HALF_DUPLEX)
        hw->fc.current_mode = igc_fc_none;

    ret_val = igc_force_mac_fc(hw);
    ...
}

Does this leave the MAC incorrectly configured to send and receive PAUSE
frames on a half-duplex link, violating the IEEE 802.3 specification?
