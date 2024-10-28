Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE79E9B2DB3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:59:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99B0940574;
	Mon, 28 Oct 2024 10:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YeMAKELXWyZl; Mon, 28 Oct 2024 10:59:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC17440576
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730113168;
	bh=K3vp8DDoUnEBwTzH/GjwVmxdMRyjL/txAbe2VhMg0y0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UV+XhE1/pgHbZ4Lsynw7E7BO6KhxhpP3/GeXN5mexaQ9Ld0fWIjEMvwZ4twmZvkCM
	 JH6W7HEdzf+oy8z6VQkkfCNK8BhFIVSNaxuBp954IyKWgXiS+T4wmFqSxrr9t+vkOT
	 ylkCpdN4aL+tt+GiZnkLKC3BgyDBS7a5kHSB8lxGpJhEoCbK1VIghDT7GR9kQC+j3n
	 lL/L+WR/eij9JV0elQAHputqjV8IVmf8HqO7z+c5yfVqNNkc0hCN3mID69cV1+mIYP
	 YUIoLH6/V9wTo9adRtL+nBsuCK237sH8UDMO10ednOPQNAsCIyyQa/rAyMv3DFtt6U
	 8tu6CJy236iig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC17440576;
	Mon, 28 Oct 2024 10:59:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BA4854EC0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A76F640574
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:59:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFbS6y5U6i_G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:59:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A868F4056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A868F4056D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A868F4056D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:59:24 +0000 (UTC)
X-CSE-ConnectionGUID: VM1d35pzRcqw6NfgVcl27A==
X-CSE-MsgGUID: +n8A0sKdSlC1t6oQNMbESw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="17339465"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="17339465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:59:23 -0700
X-CSE-ConnectionGUID: lUAShk6GSrG4Pop881gKpg==
X-CSE-MsgGUID: Vbf0X2bAQGW+xsLHFWU2tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81904693"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 28 Oct 2024 03:59:22 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7F3D527BC4;
 Mon, 28 Oct 2024 10:59:20 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.m.ertman@intel.com, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 28 Oct 2024 12:59:22 -0400
Message-Id: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730113165; x=1761649165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3WNIz9CBumBGYrQn3zQyAt8oGW5m6Cywud9YFlm003Q=;
 b=ioYL5lXPDgPRyS8HgyoeBXFK20kOXruevAmajkz0N/vU6Kid2k9TJiel
 7ofeCy4jPL0Dj29EZVzOXNqURa1Cg93C8H2Dv7iKp/FK4hE3679oCt1jP
 EUkkNoQszz3e8aFWuMKhx2PlBSusD4yyschQFSVI12ruMLS8FUrQUzGR/
 ohwssWcXKw0r12VLwUh2WIT7eRjzMr92Grb7YqhYXPwdi7Hxs8iTd74+e
 6DIkrNUVrR0Cu/tER/fdMSvotXsZtVD6gX6tKBwDYlZmxw7G2iA001bfk
 8tW+ZrCqhqHwyknp9QCqqgI7Eihx9I9o0SW9robruVis0oGxLdaVnI6Vx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ioYL5lXP
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable type
 to s16 to store -1 value
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

Fix Flow Director not allowing to re-map traffic to 0th queue when action
is configured to drop (and vice versa).

The current implementation of ethtool callback in the ice driver forbids
change Flow Director action from 0 to -1 and from -1 to 0 with an error,
e.g:

 # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action 0
 # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action -1
 rmgr: Cannot insert RX class rule: Invalid argument

We set the value of `u16 q_index = 0` at the beginning of the function
ice_set_fdir_input_set(). In case of "drop traffic" action (which is
equal to -1 in ethtool) we store the 0 value. Later, when want to change
traffic rule to redirect to queue with index 0 it returns an error
caused by duplicate found.

Fix this behaviour by change of the type of field `q_index` from u16 to s16
in `struct ice_fdir_fltr`. This allows to store -1 in the field in case
of "drop traffic" action. What is more, change the variable type in the
function ice_set_fdir_input_set() and assign at the beginning the new
`#define ICE_FDIR_NO_QUEUE_IDX` which is -1. Later, if the action is set
to another value (point specific queue index) the variable value is
overwritten in the function.

Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 3 ++-
 drivers/net/ethernet/intel/ice/ice_fdir.h         | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 5412eff8ef23..ee9862ddfe15 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1830,11 +1830,12 @@ static int
 ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		       struct ice_fdir_fltr *input)
 {
-	u16 dest_vsi, q_index = 0;
+	s16 q_index = ICE_FDIR_NO_QUEUE_IDX;
 	u16 orig_q_index = 0;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int flow_type;
+	u16 dest_vsi;
 	u8 dest_ctl;
 
 	if (!vsi || !fsp || !input)
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index ab5b118daa2d..820023c0271f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -53,6 +53,8 @@
  */
 #define ICE_FDIR_IPV4_PKT_FLAG_MF		0x20
 
+#define ICE_FDIR_NO_QUEUE_IDX			-1
+
 enum ice_fltr_prgm_desc_dest {
 	ICE_FLTR_PRGM_DESC_DEST_DROP_PKT,
 	ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX,
@@ -186,7 +188,7 @@ struct ice_fdir_fltr {
 	u16 flex_fltr;
 
 	/* filter control */
-	u16 q_index;
+	s16 q_index;
 	u16 orig_q_index;
 	u16 dest_vsi;
 	u8 dest_ctl;

base-commit: 93e5920e5193241cb05caaa6421365fd8800f1b4
-- 
2.38.1

