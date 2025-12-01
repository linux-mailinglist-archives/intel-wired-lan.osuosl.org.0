Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E042BC999B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 00:39:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C9C66120A;
	Mon,  1 Dec 2025 23:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b0MRKBoodiVe; Mon,  1 Dec 2025 23:39:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D52F5611B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764632345;
	bh=QNksiSPiFrlFzql0drJYrsh7N45Y3BiDapHP2Pqdqhc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x8ZXmNBceNFtDc1TqlpwGPVkOnNKErnDoGCg/1f4oBpuN+zqNT6mxOwNLgl9gmaeT
	 TsD7UOXfe0KpxpkxrklX8MbK821cCUO09A0/2Rei9mxrtXXLmUkSh8hesJwVtQJvRn
	 ZOuwT4Hz3FQcPbR/iGXyMs0g5dyt8Wu4TN2laYTJZUwqfpIVmpjl4U0NnBVB1+k5Jf
	 C6W8Aoc4HNzM3xufdHfWW0cNdV24lJjFezy0CLoloMTzlhZkWE+cdzh5VTimZ0c+di
	 7t01XodkajAsUw14IR7exi1C0OGc1AT+GXaeWdqNFWDSauD5mpddFr8GPp7nEkFSKv
	 ybJVvEot/H6bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D52F5611B9;
	Mon,  1 Dec 2025 23:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B7148D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 23:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 955C240B82
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 23:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNeziZeD9Gr1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 23:39:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=jbrandeb@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B709940B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B709940B6D
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B709940B6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 23:39:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6AE5260155;
 Mon,  1 Dec 2025 23:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80983C4CEF1;
 Mon,  1 Dec 2025 23:39:00 +0000 (UTC)
From: Jesse Brandeburg <jbrandeb@kernel.org>
To: netdev@vger.kernel.org
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jake Keller <jacob.e.keller@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Brett Creeley <brett.creeley@intel.com>
Date: Mon,  1 Dec 2025 15:38:52 -0800
Message-ID: <20251201233853.15579-1-jbrandeb@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764632341;
 bh=4ZIEfYHOi2hD96d4HhYvBUifSfLFFaUZQ52Ws4FVCKk=;
 h=From:To:Cc:Subject:Date:From;
 b=fZAi/KieWFZHV7oZ/NbH9+5N8Yt47vFE0gFPJvA8REqOltYmltJDIvRcJemLL8n1G
 s7nr58iutLiaq6wWYVTXDVIBlIBTD0HEAJwC7px3yDLHPGsWAGMY+TUTBGt76pU6nl
 SICua/KV2MkQX2DmPxUNJ49mP+CekdMOyEHuVKno8qQOYpXSERY+hYOj+pZJaJbpHw
 OnuWbZ5PJL97AehBseHYExCOd9zdKPTlnkP6wZ49Nebm7ag/tkFnc5ueSTNrNzB2Og
 PRkfrM/es0weH2bTSGoVv1jrWMthAyMZ+vRURdD93ifU8iEJB1IBHGcCQhNkB47Mnc
 KGC1H9VPp4SXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fZAi/Kie
Subject: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
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

From: Jesse Brandeburg <jbrandeburg@cloudflare.com>

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
--
I am sending this to net as I consider it a bug, and it will backport
cleanly.
---
 drivers/net/ethernet/intel/ice/ice_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 86f5859e88ef..d004acfa0f36 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
 		cur_ns->rx_errors = pf->stats.crc_errors +
 				    pf->stats.illegal_bytes +
 				    pf->stats.rx_undersize +
-				    pf->hw_csum_rx_error +
 				    pf->stats.rx_jabber +
 				    pf->stats.rx_fragments +
 				    pf->stats.rx_oversize;
-- 
2.47.3

