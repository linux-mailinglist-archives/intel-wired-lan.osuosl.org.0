Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rKYAOCF9V2pzPgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 14:29:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2475E20E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 14:29:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=wcIYwdMR;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B183D6069F;
	Wed, 15 Jul 2026 12:29:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aaH0x0DTQyft; Wed, 15 Jul 2026 12:29:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBBAB606C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784118558;
	bh=vCwQnp8htPs9Eh/MP3qfpJZkYwRAjQYwif3i4a2+SwI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wcIYwdMRnySq32EcPSPmeL8/IO6X4zqj0gCl0MZhRuASN+qSzHSTkoofKDXSIrv6+
	 vqIkjA4V3rhNrYH+1Hd7z4fvGxtj81jIS6spaRvgLG26r85RrJs7LQVhTN2pee7LOK
	 Nwb+erYNh59zGNMHO4UizuMqg0X73NGsSnOZtP17J9lu+vsmzl342pvRT36pRy6hPl
	 8dlw30mV1JRUVR8z0pItNel34/RN1eny3r5xGLgkcsANgftDFl2BlAvyb8C0TuD04u
	 2dIxubltTcUTAYzWrqHY/6uPb6aA65cYT/dYv9bxh0rJHgQ75yvcxiMCv9Q3q/axx/
	 S8veKqm4VZWAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBBAB606C7;
	Wed, 15 Jul 2026 12:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B85CF150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 12:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B61AA40675
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 12:29:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhVwt0l4o8mw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 12:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1734C406A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1734C406A2
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1734C406A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 12:29:16 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 88378403EA;
 Wed, 15 Jul 2026 12:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25DAD1F000E9;
 Wed, 15 Jul 2026 12:29:14 +0000 (UTC)
Date: Wed, 15 Jul 2026 13:29:12 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260715122912.GA1922694@horms.kernel.org>
References: <20260708100609.331976-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260708100609.331976-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1784118556;
 bh=vCwQnp8htPs9Eh/MP3qfpJZkYwRAjQYwif3i4a2+SwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ibWP1me+C9M2e4B3J9HI6qQ9QDBKE7obHJnMhklhtLq72Ybk1GX2dMAkKHnTV/kyS
 Zql0VyMkW1z9lIrcUmfWXZOJwU6G4dbEC1icKFEseTjUuiTNbxTKVEs9VKB5B8TzTM
 DRRvws0FniLRxa1ei0fHlgkUALm7H6DFlhX7WAynb09XbzRschrKbUXD09fR9aW9eo
 0yX5DQxrde8Vq1F72MH7goOubyyWPIBiTRB6VDU3RNRI6AjsQ3Lz8lsKSPglC+o8va
 UfHQFV6VoM7NemgeICebjEfJYxqImB4BuDshnQ7qIPWjQjGyPjKrKlueNT7HVEyy5j
 G9qlIuT/wmEyg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ibWP1me+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: E610: force phy
 link to get down when interface is down
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:from_smtp];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DNSWL_BLOCKED(0.00)[140.211.166.136:from,100.103.45.18:received,172.234.252.31:received,140.211.166.142:received,2605:bc80:3010::137:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.252.31:received,140.211.166.142:received];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DWL_DNSWL_BLOCKED(0.00)[osuosl.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44D2475E20E
X-Rspamd-Action: no action

On Wed, Jul 08, 2026 at 12:06:09PM +0200, Jedrzej Jagielski wrote:
> For the E610 family, similarly to the E8xx adapters, the default behavior
> is for the PHY link to remain up even when the corresponding OS interface
> is down.
> 
> Add function setting down the PHY config IXGBE_ACI_PHY_ENA_LINK bit
> what leads to disabling PHY link.
> 
> Now ixgbe_close() needs to share some of the ixgbe_watchdog_link_is_down
> code so move the common part into the separate function.
> 
> Align functionality with the implementation of the ice driver.
> 
> Let user to configure link-down-on-close enablement through ethtool.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: apply Paul's notes
> v3: use e_err

Reviewed-by: Simon Horman <horms@kernel.org>

