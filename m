Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCgVGVpavWkA9QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 15:31:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FA32DBD43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 15:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42AD381322;
	Fri, 20 Mar 2026 14:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fm8m0MSL2QKC; Fri, 20 Mar 2026 14:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 548D881349
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774017111;
	bh=IYsw60ozs1qHObXPmnYBaY9w1sAlmDmA94ZLLnLIrmU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ky7yZXx6+eAE4hwLGbwP2DC4/Q19SvEwnAyVA8+Xo363fDzqLQCDYqPvnKvcMlIQL
	 9itjnj5d7OzwK6hEl/4UMKyzuaF5pxYrExO9oJMmue8kc1NQa9tELbkQ51aIEZpWLY
	 HszcrTvCJvQVz/Q3qOiU/FyfOp2w1ERvbuu/QH9mWLCo3/2Hj07uyUucAAdDSHHhJ3
	 rrfXBecjmL3gTr4VOl/xgb2owwZFbxoNTFANpSCdhKiNFgbpfd/8zYYOcvsqT+8Jxz
	 geGHYg41UUtyLNeyjlmggOeAqdXSsivaOTpzjxlkjEwCzXg9xjhPmJ54xG4n7bF7b8
	 9hhNQISudNA9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 548D881349;
	Fri, 20 Mar 2026 14:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 73B491B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 14:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A027810FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 14:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FEoyCFT5xE-8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 14:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3357480F4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3357480F4B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3357480F4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 14:31:46 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 89E154C28871A7;
 Fri, 20 Mar 2026 15:29:11 +0100 (CET)
Message-ID: <310379eb-9b99-444d-bf02-2bde3bd79374@molgen.mpg.de>
Date: Fri, 20 Mar 2026 15:29:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20260320135326.1171433-1-poros@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260320135326.1171433-1-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix wrong VLAN mask for
 legacy Rx descriptors L2TAG2
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email,molgen.mpg.de:mid];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 96FA32DBD43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Petr,


Thank you for your patch.

Am 20.03.26 um 14:53 schrieb Petr Oros:
> The IAVF_RXD_LEGACY_L2TAG2_M mask was incorrectly defined as
> GENMASK_ULL(63, 32), extracting 32 bits from qw2 instead of the
> 16-bit VLAN tag. In the legacy Rx descriptor layout, the 2nd L2TAG2
> (VLAN tag) occupies bits 63:48 of qw2, not 63:32.
> 
> The oversized mask causes FIELD_GET to return a 32-bit value where the
> actual VLAN tag sits in bits 31:16. When this value is passed to
> iavf_receive_skb() as a u16 parameter, it gets truncated to the lower
> 16 bits (which contain the 1st L2TAG2, typically zero). As a result,
> __vlan_hwaccel_put_tag() is never called and software VLAN interfaces
> on VFs receive no traffic.
> 
> This affects VFs behind ice PF (VIRTCHNL VLAN v2) when the PF
> advertises VLAN stripping into L2TAG2_2 and legacy descriptors are
> used.
> 
> The flex descriptor path already uses the correct mask
> (IAVF_RXD_FLEX_L2TAG2_2_M = GENMASK_ULL(63, 48)).

Do you have a reproducer to verify the fix?

> Fixes: 2dc8e7c36d80 ("iavf: refactor iavf_clean_rx_irq to support legacy and flex descriptors")

(That first entered Linux v6.15-rc1, and Linux 6.12 and 6.18 are LTS 
series.)

> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_type.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 1d8cf29cb65ac5..5bb1de1cfd33b1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -277,7 +277,7 @@ struct iavf_rx_desc {
>   /* L2 Tag 2 Presence */
>   #define IAVF_RXD_LEGACY_L2TAG2P_M		BIT(0)
>   /* Stripped S-TAG VLAN from the receive packet */
> -#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 32)
> +#define IAVF_RXD_LEGACY_L2TAG2_M		GENMASK_ULL(63, 48)
>   /* Stripped S-TAG VLAN from the receive packet */
>   #define IAVF_RXD_FLEX_L2TAG2_2_M		GENMASK_ULL(63, 48)
>   /* The packet is a UDP tunneled packet */

Nice find.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
