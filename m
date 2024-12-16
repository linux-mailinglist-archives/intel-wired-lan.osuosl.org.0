Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA2C9F2A55
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 07:49:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EBDA40BD3;
	Mon, 16 Dec 2024 06:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CjjLjL09u8tM; Mon, 16 Dec 2024 06:49:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B8B6407B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734331759;
	bh=ZDbvtKk8f11VuhoPQVg3xxZy9EhtPhN8MUL9O47Zk1s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Mv0LJVDRwMjrDwI2eMsnSgefIHjmboS/dxuLl5G2CXycnlH/Z6dYh8eBBVG8g9Vm
	 vhCjmQ/RWHisg04QDijvZ8J46TG01K7c24zJkxGZx9uu3K4qg9qA3ABz2AZdEUJrhV
	 SkaLxUD67wgAi/jcDF1Gr6Zl5wfMn0IRS6qg/mIUuD+9KnHC4lKU7KM0Kh1pnNOYOq
	 ei/fCRfpW/CMzlQVDiH+kUZa4OmbSejk+qoyDxe57SAQ5rn/5OgNne6+5xP7XTniY/
	 1EfBjep468lktKvQMsE08xAGXjhsAk4ZEEc+NQ0u3Kl6maKMsR53fomdPsmRO93Bhj
	 LuYEa5i829feg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B8B6407B8;
	Mon, 16 Dec 2024 06:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 13ECFC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0292681BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h4WbscVa92x1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 06:49:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1553A81B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1553A81B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1553A81B8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 06:49:16 +0000 (UTC)
X-CSE-ConnectionGUID: Lju510DuRPiJEPB+z0wRhQ==
X-CSE-MsgGUID: tYUrSSyDSSiPYcsYHslrLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34848262"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="34848262"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 22:49:17 -0800
X-CSE-ConnectionGUID: Cf90MwRjSsOAGdFwxULHHg==
X-CSE-MsgGUID: F7gvB9BPTM2O0qRtzmZAmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128101907"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa001.fm.intel.com with ESMTP; 15 Dec 2024 22:49:13 -0800
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
Date: Mon, 16 Dec 2024 01:47:19 -0500
Message-Id: <20241216064720.931522-9-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734331757; x=1765867757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fapdr+Qi+xkI++ng35zlxRw/Ys0YcVZKj85dRXTy3/I=;
 b=bQpFdQf4dvsi8ExgpvIyirB2Qw/YqKWYN7WE6EPgCcP7oAuLXwnj63LJ
 9OVf+Lk4cEIStPpp7TkXhRH7ic4HcJWz6+m3hlfUdxHfZWKpN+czV0az9
 HRR5pZnMaRQJ2B7gxhBnomgJQT9s3nH7+1D2TYVJXdgSM/G/kd46Eh3C3
 zDiGarR1lz1C+DuN55+r0fl3AohuyZ6X6tK7TeoJXTjgaYbQf7H3b17eQ
 IpBc1WGQeoPbXvErJsgW47UwYIxwolB5gJ2FQg04gs+uYVQo5xLCfiSnB
 lYVchWp+wKmxthZgkvruqfGaLs6sv1hdJhrvE12Vxg38vOplM9UoiERnN
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQpFdQf4
Subject: [Intel-wired-lan] [PATCH iwl-next 8/9] igc: Add support to get MAC
 Merge data via ethtool
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

Implement "ethtool --show-mm" callback for IGC.

Tested with command:
$ ethtool --show-mm enp1s0.
  MAC Merge layer state for enp1s0:
  pMAC enabled: on
  TX enabled: on
  TX active: on
  TX minimum fragment size: 252
  RX minimum fragment size: 252
  Verify enabled: on
  Verify time: 128
  Max verify time: 128
  Verification status: SUCCEEDED

Verified that the fields value are retrieved correctly.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 20 ++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 33 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
 4 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index fc1960925e28..3199da9b87ba 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -40,7 +40,7 @@ void igc_ethtool_set_ops(struct net_device *);
 
 #define IGC_MAX_TX_TSTAMP_REGS		4
 
-/* Verification state defined as per section 30.14.1.2 in 802.3br spec */
+/* Verify state defined as per section 99.4.8, Figure 99-8 in 802.3br spec */
 enum verify_state {
 	VERIFY_FAIL,
 	INIT_VERIFICATION,
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 7cde0e5a7320..16aa6e4e1727 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1782,6 +1782,25 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 	return 0;
 }
 
+static int igc_ethtool_get_mm(struct net_device *netdev,
+			      struct ethtool_mm_state *cmd)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct fpe_t *fpe = &adapter->fpe;
+
+	cmd->tx_min_frag_size = fpe->tx_min_frag_size;
+	cmd->rx_min_frag_size = fpe->tx_min_frag_size;
+	cmd->pmac_enabled = fpe->pmac_enabled;
+	cmd->verify_enabled = fpe->verify_enabled;
+	cmd->verify_time = fpe->verify_time;
+	cmd->tx_active = igc_fpe_is_tx_preempt_allowed(&adapter->fpe);
+	cmd->tx_enabled = fpe->tx_enabled;
+	cmd->verify_status = igc_fpe_get_verify_status(&adapter->fpe);
+	cmd->max_verify_time = MAX_VERIFY_TIME;
+
+	return 0;
+}
+
 static int igc_ethtool_set_mm(struct net_device *netdev,
 			      struct ethtool_mm_cfg *cmd,
 			      struct netlink_ext_ack *extack)
@@ -2103,6 +2122,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.set_rxfh		= igc_ethtool_set_rxfh,
 	.get_ts_info		= igc_ethtool_get_ts_info,
 	.get_channels		= igc_ethtool_get_channels,
+	.get_mm			= igc_ethtool_get_mm,
 	.set_mm			= igc_ethtool_set_mm,
 	.set_channels		= igc_ethtool_set_channels,
 	.get_priv_flags		= igc_ethtool_get_priv_flags,
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index efd2a9f676d8..919a7f088a72 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -258,6 +258,39 @@ void igc_fpe_preprocess_verify_response(struct fpe_t *fpe, int smd_type)
 	schedule_delayed_work(&fpe->verification_work, 0);
 }
 
+enum ethtool_mm_verify_status igc_fpe_get_verify_status(const struct fpe_t *fpe)
+{
+	enum ethtool_mm_verify_status verify_status;
+
+	switch (fpe->verify_state) {
+	case VERIFY_FAIL:
+		verify_status = ETHTOOL_MM_VERIFY_STATUS_FAILED;
+		break;
+
+	case INIT_VERIFICATION:
+		if (fpe->verify_enabled)
+			verify_status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
+		else
+			verify_status = ETHTOOL_MM_VERIFY_STATUS_DISABLED;
+		break;
+
+	case VERIFIED:
+		verify_status = ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED;
+		break;
+
+	case SEND_VERIFY:
+	case WAIT_FOR_RESPONSE:
+		verify_status = ETHTOOL_MM_VERIFY_STATUS_VERIFYING;
+		break;
+
+	default:
+		verify_status = ETHTOOL_MM_VERIFY_STATUS_UNKNOWN;
+		break;
+	}
+
+	return verify_status;
+}
+
 static bool is_any_launchtime(struct igc_adapter *adapter)
 {
 	int i;
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index 2b67ecae99c9..913f983652e4 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -13,6 +13,7 @@
 #define MAX_VERIFY_TIME			128
 
 int igc_fpe_get_smd_type(__le32 status_error);
+enum ethtool_mm_verify_status igc_fpe_get_verify_status(const struct fpe_t *fpe);
 void igc_fpe_init(struct fpe_t *fpe);
 bool igc_fpe_is_tx_preempt_allowed(const struct fpe_t *fpe);
 bool igc_fpe_is_verify_or_response(int smd_type, unsigned int size);
-- 
2.25.1

