Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R0KUHr5zMWrRjgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:03:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4802E691A4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 18:03:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="sF2/igK3";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=seu.edu.cn (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A8F442BAD;
	Tue, 16 Jun 2026 16:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKskQ-Tn58i5; Tue, 16 Jun 2026 16:02:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00BC542B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781625779;
	bh=nvoZVV9gxYlV8gdYEFEmCBm8zHB/8MAJLgD2t4vMXMc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sF2/igK3UpFY0g0ZZCYwPdSw24jP1BzsziOnh3e4/Nw/+NvJD1phnsyEaYRiR4ZfN
	 cB8zyWqiaHlxRkHtq159tHI2InX5tV7d8HnJtAPcYkbcqT8ew48VeMmCfw4j4gMZK/
	 29wgnT7vDhZTFBJuMqaUgkj7fvDEfGqa93KasEQ0Sh6ZtMlB8ujST3bezjCr2SAQ+T
	 NstecFp+MtrKZkVNCesiF32SqYwZJdkHuU/J6uRP6EYnBo6EGv9AFajqz9Rj6iEpXQ
	 5i9IorOIpFDvk6RowIThZJrPpJ/6ubFO1LdIc2T+4z6oiGA5kY41MhDKQCFFO290kT
	 1MGjcpe6LdGjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00BC542B8F;
	Tue, 16 Jun 2026 16:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 88BB32B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:02:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 660456176E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:02:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8mhGtwwfeEch for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 16:02:56 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Jun 2026 16:02:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EBF961769
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EBF961769
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.195.24.41;
 helo=mail-m2441.xmail.ntesmail.com; envelope-from=dawei.feng@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m2441.xmail.ntesmail.com (mail-m2441.xmail.ntesmail.com
 [45.195.24.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EBF961769
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 16:02:54 +0000 (UTC)
Received: from DESKTOP-SUEFNF9.taila7e912.ts.net (unknown [221.228.238.82])
 by smtp.qiye.163.com (Hmail) with ESMTP id 429e07efd;
 Tue, 16 Jun 2026 23:57:45 +0800 (GMT+08:00)
From: Dawei Feng <dawei.feng@seu.edu.cn>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 jianhao.xu@seu.edu.cn, Dawei Feng <dawei.feng@seu.edu.cn>,
 stable@vger.kernel.org
Date: Tue, 16 Jun 2026 23:57:42 +0800
Message-Id: <20260616155742.4052021-1-dawei.feng@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ed127289903a2kunm68ae6ddd4b895
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSx8fVkpJHUwYGRlJHUJNTVYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUpVSUlDVUlIQ1VDSVlXWRYaDxIVHRRZQVlPS0hVSktISk
 9ITFVKS0tVSkJLS1kG
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=Zth6olDn4pHnkHSYvSKvAJ+GMYqXvoyBC/nK4iBIFPu5OMaNLkNkpBk+4DNuVqwK0J+OEVAOv3rZ9QsQNaS6A+3+KoL8cIzxkV/jCJt9NuOwkxEpyg2jwT6v/b92TfSYPvOgEwkaLMi1oBLezu17n9/fyYWUPZPSf+TMAF7mLpU=;
 s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1; 
 bh=nvoZVV9gxYlV8gdYEFEmCBm8zHB/8MAJLgD2t4vMXMc=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=Zth6olDn
Subject: [Intel-wired-lan] [PATCH net v2] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[seu.edu.cn : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[7.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:dawei.feng@seu.edu.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[intel-wired-lan-bounces@osuosl.org:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:email,seu.edu.cn:mid,seu.edu.cn:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4802E691A4A

ice_lbtest_prepare_rings() frees Rx rings only when
ice_vsi_start_all_rx_rings() fails. If ice_vsi_setup_rx_rings() fails
after allocating some descriptors, or if ice_vsi_cfg_lan() fails after
the Rx rings were prepared, the function reaches the Tx cleanup path
without releasing the initialized Rx resources.

Fix this by adding separate unwind paths for Rx setup failure and LAN
configuration failure. The Rx setup failure path releases the partially
prepared Rx rings before freeing Tx rings, while later failures first
undo the LAN Tx configuration and then release the Rx rings in reverse
setup order.

The bug was first flagged by an experimental analysis tool we are
developing for kernel memory-management bugs while analyzing
v6.13-rc1. The tool is still under development and is not yet publicly
available. Manual inspection confirms that the bug is still
present in v7.1-rc7.

An x86_64 allyesconfig build showed no new warnings. As we do not have an
Intel E800 Series adapter available to run the ethtool offline loopback
selftest, no runtime testing was able to be performed.

Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
Cc: stable@vger.kernel.org
Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
---
Changes in v2:
- Fix cleanup order

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f28416a707d7..10a4abc66974 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1069,18 +1069,18 @@ static int ice_lbtest_prepare_rings(struct ice_vsi *vsi)
 
 	status = ice_vsi_cfg_lan(vsi);
 	if (status)
-		goto err_setup_rx_ring;
+		goto err_cfg_lan;
 
 	status = ice_vsi_start_all_rx_rings(vsi);
 	if (status)
-		goto err_start_rx_ring;
+		goto err_cfg_lan;
 
 	return 0;
 
-err_start_rx_ring:
-	ice_vsi_free_rx_rings(vsi);
-err_setup_rx_ring:
+err_cfg_lan:
 	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, 0);
+err_setup_rx_ring:
+	ice_vsi_free_rx_rings(vsi);
 err_setup_tx_ring:
 	ice_vsi_free_tx_rings(vsi);
 
-- 
2.34.1
