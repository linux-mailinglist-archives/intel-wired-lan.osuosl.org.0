Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RaxuJ5dgLGqYQAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 21:40:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C76C67C1A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 21:40:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PuRBQOFF;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (relaxed)" header.from=lunn.ch (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CC9361167;
	Fri, 12 Jun 2026 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SahMwwr47sKx; Fri, 12 Jun 2026 19:40:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 098E361175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781293203;
	bh=hv2Ow1ld1FBUX1iqO/T7CKESCohHcY+IkpgYqfsRrnc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PuRBQOFFOtqPL4yPntUgswNgjFwtTAl8LwCHjOTozShi5+CTFz96eP/km9zgQOy/H
	 G6sBKRoNE4osxCzvw0X/zl0GBojJuOLi+O3onYe7q5fV+ixiP38Rk1Yf8bJbat2YFY
	 e4PbM2ntwPvu7q5nIgKN+9z1LA0W6ijNyI83axQ+4IziWtyZu7IjeLp6IJr6JK2ulA
	 FvyS64Mt5hokJ/BW1nrzO9WozcLmR4eJx/Dr6BBHrLF9vYWmuNAgbqktLKkMkxrhB2
	 QSuriNUyhvljTeiNf8h3XLtoKyK66fHO2IsfJXqWRH2sx3pi+gvP6F9EJqD0xHo1Hy
	 4XFGzZx5vkWNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 098E361175;
	Fri, 12 Jun 2026 19:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F1961E9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 19:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13DED61168
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 19:40:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lX6RocWnpWig for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 19:40:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8CEA561167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CEA561167
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CEA561167
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 19:39:58 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wY7jD-007NEZ-SH; Fri, 12 Jun 2026 21:39:43 +0200
Date: Fri, 12 Jun 2026 21:39:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Rongguang Wei <clementwei90@163.com>
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Rongguang Wei <weirongguang@kylinos.cn>
Message-ID: <1578c474-ffbf-46f7-b906-49da4ea48142@lunn.ch>
References: <20260612080331.120096-1-clementwei90@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612080331.120096-1-clementwei90@163.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hv2Ow1ld1FBUX1iqO/T7CKESCohHcY+IkpgYqfsRrnc=; b=oLmilcZJHC5mGFs6JJJ0s6vrsu
 YB3UlQjW5U1FjMgov8M4nv45kbrx2hfZhqBBzyksSXOMmk+/Zk6Mc5k1Vhr/rjypTtmNSjiSdxBLN
 vvlWO++6qr9ZJVyfG7wzA18Q7wswivM42r1kjpPYtYFcUWvWxaMREB7AGEXPQxrU2Rxs=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=oLmilcZJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: Initialize
 phy_data to avoid unexpected values
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[163.com];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C76C67C1A7

On Fri, Jun 12, 2026 at 04:03:31PM +0800, Rongguang Wei wrote:
> From: Rongguang Wei <weirongguang@kylinos.cn>
> 
> The phy_data variable is not initialized. If e1000_read_phy_reg
> returns an error, phy_data will not point to a valid value from
> the PHY register, which may cause the regs_buff array to be populated
> with unexpected values.
> 
> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
> Change-Id: I46071b3b21a566f8da650168d38d6968251b077d

What does this Change-Id mean?

> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index 4dcbeabb3ad2..f068108c5004 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -327,7 +327,7 @@ static void e1000_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
>  	struct e1000_adapter *adapter = netdev_priv(netdev);
>  	struct e1000_hw *hw = &adapter->hw;
>  	u32 *regs_buff = p;
> -	u16 phy_data;
> +	u16 phy_data = 0;

	if (hw->phy_type == e1000_phy_igp) {
		e1000_write_phy_reg(hw, IGP01E1000_PHY_PAGE_SELECT,
				    IGP01E1000_PHY_AGC_A);
		e1000_read_phy_reg(hw, IGP01E1000_PHY_AGC_A &
				   IGP01E1000_PHY_PAGE_SELECT, &phy_data);
		regs_buff[13] = (u32)phy_data; /* cable length */

Isn't a cable length of 0 also unexpected?

How does this patch actually make the situation better?

    
    Andrew

---
pw-bot: cr
