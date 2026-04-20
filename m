Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOiqC/RM5ml2ugEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:57:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 951B942EC06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 17:57:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0574841108;
	Mon, 20 Apr 2026 15:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h24wtarrA1Li; Mon, 20 Apr 2026 15:57:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87EA24110B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776700657;
	bh=P/79gT7dj6HzvOUAAPSktmmF+ojncQq5DL4C3Q6KGLY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eVd/xmaq0jnf92eRxRAI7pCzaePUcJPaNcFcKk6srLAemLwCagCOVLFxZpAl1WrOK
	 Ay2wTZFhhgzR+Fv8+ueHo7toUxhUUsRY+G0pmligAWaTtouqKlDC503Wc9JKEwtg7k
	 u9QznXJ08UeGe/RNB+h6viqhYf7rSPt/LIYCbMH0yBff+ulFTVZdkdYGWjFEJqPXsO
	 S/mHnyLCDlYWxuJtIPbg4Fz8w/iMz+VF+mhNqByH8qx9QiisGmJY6roUCl6U+Ub08m
	 GXMKxz1Vex+5xfc8NuVUdA27LW2PBxoW0Q2UEjiG8NMN8lrwH6D3MoAvU1tKLHMkS5
	 b7BzYEGh2V9Rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87EA24110B;
	Mon, 20 Apr 2026 15:57:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DBC5259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FC2041108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4AoHE4Qa9wvV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 15:57:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1330641106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1330641106
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1330641106
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 15:57:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 27A9060018;
 Mon, 20 Apr 2026 15:57:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9779FC19425;
 Mon, 20 Apr 2026 15:57:32 +0000 (UTC)
Date: Mon, 20 Apr 2026 16:57:30 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>
Message-ID: <20260420155730.GU280379@horms.kernel.org>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
 <20260417062954.1241900-5-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260417062954.1241900-5-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776700653;
 bh=9kaDUMXd2oMfRaP3QQwYLw5F7z3HDregtskDo9ehssk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XP/7zmZw7AEY7/PBkP7ZebSPGwPPDqOQIula7+yGLD2O1a0vVRn/SbytenZ13ZDxC
 S00nXp7JkJWV+QyirYsELy0jOhSt+ri5etoanqLR+PAMu6/pvrojaslkfRsJbNm3Va
 xrnntP1tfQB+imr5ubaPOYAiIyzYg8890R2Ye1w7qj4sIlAie/ONQTEbz8VV9PRiZt
 TVFkM999d74HEsJFpJBNuc/PSoPrabeg1855Q6MJ9tdTVpoC5kj/xAE6Gqy8dVoCQP
 RuATEOzqwhG3ED6aydqRQXG35Kzqqk3Qc6NEwRvdOBcHYcRtC43kN4GSiBSkdPbKNA
 dF8d4eEW1qqxw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XP/7zmZw
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: report EIPE checksum
 errors to the OS on E830
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,horms.kernel.org:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jan.glaza@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 951B942EC06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 08:29:54AM +0200, Aleksandr Loktionov wrote:
> From: Jan Glaza <jan.glaza@intel.com>
> 
> For E830 adapters the hardware-reported EIPE (Ethernet Inline IPsec
> Engine) error is a reliable indication that a received packet failed
> decryption and has a bad checksum. Route EIPE errors through the
> generic checksum error path on E830 so the error is visible via
> standard ethtool statistics (rx_csum_bad).
> 
> On previous devices (E810, E82X) the EIPE flag can be spuriously set
> on encapsulated packets with inner L2 padding, so those adapters only
> increment the driver-private hw_rx_eipe_error counter without routing
> through the checksum error path.
> 
> Fixes: 0ca6755f3cc2 ("ice: Add a new counter for Rx EIPE errors")
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


Sashiko has provided review of this patch. However, I don't believe any of
the issues flagged there should block progress of this patch.

You may wish to look over that review for possible follow-up activity.
