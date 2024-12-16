Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3259F2A51
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 07:49:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1D1760A8E;
	Mon, 16 Dec 2024 06:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CW0jHpkVoI4z; Mon, 16 Dec 2024 06:49:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0199460A6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734331744;
	bh=NxdLwvX1nk0oJIMm+2rE21Dac+DEsole1hmgNqcuzs0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F5vIR5zAQiruoMV2FgYRZ4scxL+MBGJUs9QiDNab/i0ZzM3GPaC1cmCyTNTqbOAHX
	 fMtffdE+LVeauEpuaIWsuyYHlqgbfKu9akjInEdgqr3BRNOHcWal1OdINhLABkYQCf
	 6YXCclCPRmjHq43N22uzrxrNj+sM1dE6GCIqQLrfwRM44eJIUVcgdZ8rMSlKERL99H
	 aK04tDBGDFPyut9fWWopmZgfbvY68wvA4OthbcXbf4QfTiqwzgPcRlNxcXD7w+ogzr
	 ZMIrG5wwIEFoQuxhy5grwnTdvYtFEe3jK9GxBIurA0x01nwWbzYBl+VwBSGAFtcJ8X
	 Vcs5o7JZEh3AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0199460A6B;
	Mon, 16 Dec 2024 06:49:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D04CC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48F3781BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qv1Kf19U757a for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 06:49:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B68081BF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B68081BF5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B68081BF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:00 +0000 (UTC)
X-CSE-ConnectionGUID: N4Divgx+QnafclYdHK+6lw==
X-CSE-MsgGUID: VT5I1lgBSCKWXPR2YF1CYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34848216"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="34848216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 22:49:00 -0800
X-CSE-ConnectionGUID: 6MSxneviSSKSdMDRvzs4qA==
X-CSE-MsgGUID: yw7loXtJTqi/klqm2Lxh4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128101869"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa001.fm.intel.com with ESMTP; 15 Dec 2024 22:48:56 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 16 Dec 2024 01:47:15 -0500
Message-Id: <20241216064720.931522-5-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734331741; x=1765867741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sUpWvy7waqLMqKC2ZzjWeENU316ueJf7NUW7IVETNa8=;
 b=HwEj/oPZXvJ9Skoegkh5LYNuYpw2Kwzw1CQk+oa35iNPEfc9mb82kPSd
 duLVTkA5kLRoHz1EFudsFWQqNWDslEWAwZStKtS0LyPhjYVB8dwM70ymX
 81AJTYBcgEUhGzV0YgBsVcvfGUrvGq3t01gXfeDSHwZB5FD6NzjFxsn+v
 FgNOMRo+6+dN6Nt/blFG1lKEo+0EDy/QULmqzpadT4ebnZpmaLZ0uttNe
 xC1QPJhJX2RQ610mgz2FSbxy19GazGyjZraeb/0BkO3SwMPiB85AOTgRn
 A8RHnzWBSaHCs4qkIVZVw2AQqb4Qh4kovR58agn3UleinyayZQFnqVPEs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwEj/oPZ
Subject: [Intel-wired-lan] [PATCH iwl-next 4/9] igc: Add support for
 receiving frames with all zeroes address
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

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

The frame preemption verification (as defined by IEEE 802.3-2018
Section 99.4.3) handshake is done by the driver, the default
configuration of the driver is to only receive frames with the driver
address.

So, in preparation for that add a second address to the list of
acceptable addresses.

Because the frame preemption "verify_enable" toggle only affects the
transmission of verification frames, this needs to always be enabled.
As that address is invalid, the impact in practical scenarios should
be minimal. But still a bummer that we have to do this.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 17 +++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c  |  2 ++
 3 files changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 34a6e4d8a652..480b54573d60 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -734,6 +734,7 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
 				      u32 location);
 int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter);
 struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter, int cpu);
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 05146cc1b92c..3f0751a9530c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3962,6 +3962,23 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 	return 0;
 }
 
+/**
+ * igc_enable_empty_addr_recv - Enable rx of packets with all-zeroes MAC address
+ * @adapter: Pointer to the igc_adapter structure.
+ *
+ * Frame preemption verification requires that packets with the all-zeroes
+ * MAC address are allowed to be received by IGC. This function adds the
+ * all-zeroes destination address to the list of acceptable addresses.
+ *
+ * @return: 0 on success, negative value otherwise.
+ */
+int igc_enable_empty_addr_recv(struct igc_adapter *adapter)
+{
+	u8 empty[ETH_ALEN] = { };
+
+	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty, -1);
+}
+
 /**
  * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f0213cfce07d..5cd54ce435b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -434,6 +434,8 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	unsigned int new_flags;
 	int err = 0;
 
+	igc_enable_empty_addr_recv(adapter);
+
 	new_flags = igc_tsn_new_flags(adapter);
 
 	if (!(new_flags & IGC_FLAG_TSN_ANY_ENABLED))
-- 
2.25.1

