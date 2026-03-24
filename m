Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PoxLHHUwmllmgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 19:14:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 595C731A930
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 19:14:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0378F83BA5;
	Tue, 24 Mar 2026 18:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RX3pkv0-CC5O; Tue, 24 Mar 2026 18:14:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41A7583BA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774376047;
	bh=D3WK8jYVsm8QIKoJTzYPTfmcdOTDoZh5gTDCIXNig4A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iu9BMGGC3SWfJBCLNcAdC898GVBe3q4Nk4TKAQpER7uWl+z6q34S4RL8wvQRqo45L
	 EBR9+buohAvuEOn1/9UrK9GwAVgX1V43VrblYdVh49NYuxE09BrTPyew9r2z+1cN9v
	 qUH4kU1ntot6dkdE50jJPaGP/x9beUSZeqJLDj5AXEy1xq4uR/wUbC6O2z+Lu76Py4
	 mcq+F7adGaVCrLX9wnnEQHskrb+HrRphgzeFdpPOYCUidwRLIGRXSJQ11T7bUtEQi5
	 TcM3hHRdu6e0D1S+U8h4WhlMF/BsRIMjCGLTNNqaIohoNKdxzGSGaU2pgF8QY3ROXd
	 UTAYNVNHqk8Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41A7583BA2;
	Tue, 24 Mar 2026 18:14:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DDC84353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF44560B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 784Pv5O_6fgm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 18:14:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E209260B4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E209260B4E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E209260B4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:14:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 326244179B;
 Tue, 24 Mar 2026 18:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B672EC19424;
 Tue, 24 Mar 2026 18:14:01 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, paul.greenwalt@intel.com,
 netdev@vger.kernel.org
Date: Tue, 24 Mar 2026 18:13:37 +0000
Message-ID: <20260324181337.264904-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
References: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774376043;
 bh=IK2MYu+66ej+vDgIMcdiT/wi63TmFYueZ62knQD/j4A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZeutO9EihSRBje8rAj9PU/NE0i0v3N/RXPzXM1zWSU1jY3irq9s0PTpZVdEgLVuoD
 m8q7XP45UdWh1oOZf8Z/3LVzyFJ4LCuaYE1n4uuISQmwCYO/MWLDFCVOVqrDCXRHGV
 LMKNkYgjuPTYCpUH5x8McVmmYZGzJIdGBYKLOELX4AMgckSkxfE/bLiNjk13pOlifJ
 NQww8F0PiWMiUe5RoKYxfitxfgMYEcs7042/1DqKbkHXd2joCv6bbE27CaZYXKnKA/
 dR2WKHIKQq4rBSuPT3k/yOEwFUjG4lR8tNCputAK4lYvi4xmCrpD0ENarqtbpsv2PN
 cH1g58uYCXNdA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZeutO9Ei
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: update
 ice_link_mode_str_high() with 200G
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:paul.greenwalt@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,linux.dev:url];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 595C731A930
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
ice: update ice_link_mode_str_high() with 200G

This patch updates ice_link_mode_str_high() to add strings for 200G PHY
types supported by E825C hardware. It also adds three new PHY type bit
definitions for indices 13-15 and increases ICE_PHY_TYPE_HIGH_MAX_INDEX
from 12 to 15.

> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c66f3e7..f64d2efdc478 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1044,7 +1044,10 @@ struct ice_aqc_get_phy_caps {
>  #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
>  #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
>  #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
> -#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
> +#define ICE_PHY_TYPE_HIGH_400GBASE_FR8		BIT_ULL(15)
> +#define ICE_PHY_TYPE_HIGH_MAX_INDEX		15

The new PHY types added here (bits 13-15) will now be iterated by
ice_update_phy_type() when it loops from 0 to ICE_PHY_TYPE_HIGH_MAX_INDEX,
calling ice_get_link_speed_based_on_phy_type() for each index. However,
does ice_get_link_speed_based_on_phy_type() have cases for these three new
PHY types?

Looking at ice_get_link_speed_based_on_phy_type() in ice_common.c, the
switch statement has cases for 200G PHY types like ICE_PHY_TYPE_HIGH_200G_CR4_PAM4
through ICE_PHY_TYPE_HIGH_200G_AUI4 (indices 5-12) that return ICE_AQ_LINK_SPEED_200GB.

But the three newly added PHY types aren't present:
- ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC (bit 13)
- ICE_PHY_TYPE_HIGH_200G_AUI8 (bit 14)
- ICE_PHY_TYPE_HIGH_400GBASE_FR8 (bit 15)

Without these cases, won't they fall through to the default case and return
ICE_AQ_LINK_SPEED_UNKNOWN? The first two appear to be 200G types based on
their naming, so shouldn't they be added to the switch statement to return
ICE_AQ_LINK_SPEED_200GB?

For ICE_PHY_TYPE_HIGH_400GBASE_FR8, is there an ICE_AQ_LINK_SPEED_400GB
constant defined? Looking at ice_adminq_cmd.h, the link speed constants go
from ICE_AQ_LINK_SPEED_200GB (BIT(11)) directly to ICE_AQ_LINK_SPEED_UNKNOWN
(BIT(15)). Without an ICE_AQ_LINK_SPEED_400GB constant, how should the 400G
PHY type be mapped?

This appears to leave the new PHY types non-functional for speed
determination, even though the commit message states they are needed for
E825C hardware support.

>
>  struct ice_aqc_get_phy_caps_data {
>  	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d0..7cdd6a043d86 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -84,6 +84,17 @@ static const char * const ice_link_mode_str_high[] = {
>  	[2] = "100G_CAUI2",
>  	[3] = "100G_AUI2_AOC_ACC",
>  	[4] = "100G_AUI2",
> +	[5] = "200G_CR4_PAM4",
> +	[6] = "200G_SR4",
> +	[7] = "200G_FR4",
> +	[8] = "200G_LR4",
> +	[9] = "200G_DR4",
> +	[10] = "200G_KR4_PAM4",
> +	[11] = "200G_AUI4_AOC_ACC",
> +	[12] = "200G_AUI4",
> +	[13] = "200G_AUI8_AOC_ACC",
> +	[14] = "200G_AUI8",
> +	[15] = "400GBASE_FR8",
>  };
>
>  /**
