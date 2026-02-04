Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBlPJi5mg2nSmQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:30:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7842E8BF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:30:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4592060DB9;
	Wed,  4 Feb 2026 15:30:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SItrjMXgGLT7; Wed,  4 Feb 2026 15:30:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75F3F60DAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219051;
	bh=nSg6iWYacstPOCBbx9abXkax6U/R3jgtiYjbyOmOyVI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vT1Ks6QqsThJTbmoHeRx48CBSuGm+xWXmOIVbO4mXcVuCTu54nN9VhIBC3CEgJmIo
	 V2kY27ltZwwYFyMqMYG2sE6m2eSKrQHl4Wzx/vKkcLELklXtxym6KU+9OjkB35z2yE
	 yY4bFjm2kStPScklZd4bhJjztWUUfVx7cpvE37ykgxo+0U9owaqpxcoda5KcBPY0gU
	 fmhHB2jPWcSVO/9lS+V4La1uBinrE8M/DeVZ5yTPqRIM5ZEzp2djXrS8tegX9xJqO6
	 h5aHb7pwyGF7+GSejvxA3XjOFChuV/Dp7Aw2LoxvN7gmD1DfeTRBd8XHPP3smxiKbX
	 FZdxseH6CGhjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75F3F60DAA;
	Wed,  4 Feb 2026 15:30:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4455F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B241C60DA5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:30:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zOA2s_5NGLu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:30:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B99F660D7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B99F660D7E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B99F660D7E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:30:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A024C6013B;
 Wed,  4 Feb 2026 15:30:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6C30C19423;
 Wed,  4 Feb 2026 15:30:46 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jake Keller <jacob.e.keller@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Sasha Levin <sashal@kernel.org>
Date: Wed,  4 Feb 2026 15:40:06 +0100
Message-ID: <20260204143852.734559013@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260204143851.857060534@linuxfoundation.org>
References: <20260204143851.857060534@linuxfoundation.org>
User-Agent: quilt/0.69
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1770219047;
 bh=ncWHsbe55fScPBoRp/erwYQt5J0YUH+Z5gwLVy/iP+I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wVrixGAB5qTV2Ann1ZklrFxLu2LtvVuo7SWXWBpAf+u6s9Y44t5doUSBYlz2AFTle
 ZhBCqpmNoKEi9whkef9PgTRUawzSW27xut8aoIUWqEa/Sk97HtBHYnYEFMqvEo2P08
 sukDlijLJO5yVp2XBnfEigdjCTT26gW0Pb02h+MU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=wVrixGAB
Subject: [Intel-wired-lan] [PATCH 6.18 024/122] ice: stop counting UDP csum
 mismatch as rx_errors
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:gregkh@linuxfoundation.org,m:patches@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:jbrandeburg@cloudflare.com,m:sashal@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:mid,cloudflare.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:url,intel.com:email,osuosl.org:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A7842E8BF0
X-Rspamd-Action: no action

6.18-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Jesse Brandeburg <jbrandeburg@cloudflare.com>

[ Upstream commit 05faf2c0a76581d0a7fdbb8ec46477ba183df95b ]

Since the beginning, the Intel ice driver has counted receive checksum
offload mismatches into the rx_errors member of the rtnl_link_stats64
struct. In ethtool -S these show up as rx_csum_bad.nic.

I believe counting these in rx_errors is fundamentally wrong, as it's
pretty clear from the comments in if_link.h and from every other statistic
the driver is summing into rx_errors, that all of them would cause a
"hardware drop" except for the UDP checksum mismatch, as well as the fact
that all the other causes for rx_errors are L2 reasons, and this L4 UDP
"mismatch" is an outlier.

A last nail in the coffin is that rx_errors is monitored in production and
can indicate a bad NIC/cable/Switch port, but instead some random series of
UDP packets with bad checksums will now trigger this alert. This false
positive makes the alert useless and affects us as well as other companies.

This packet with presumably a bad UDP checksum is *already* passed to the
stack, just not marked as offloaded by the hardware/driver. If it is
dropped by the stack it will show up as UDP_MIB_CSUMERRORS.

And one more thing, none of the other Intel drivers, and at least bnxt_en
and mlx5 both don't appear to count UDP offload mismatches as rx_errors.

Here is a related customer complaint:
https://community.intel.com/t5/Ethernet-Products/ice-rx-errros-is-too-sensitive-to-IP-TCP-attack-packets-Intel/td-p/1662125

Fixes: 4f1fe43c920b ("ice: Add more Rx errors to netdev's rx_error counter")
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Jake Keller <jacob.e.keller@intel.com>
Cc: IWL <intel-wired-lan@lists.osuosl.org>
Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Acked-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index fc284802e2bcd..b5ebfcdc9d434 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6993,7 +6993,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 		cur_ns->rx_errors = pf->stats.crc_errors +
 				    pf->stats.illegal_bytes +
 				    pf->stats.rx_undersize +
-				    pf->hw_csum_rx_error +
 				    pf->stats.rx_jabber +
 				    pf->stats.rx_fragments +
 				    pf->stats.rx_oversize;
-- 
2.51.0



