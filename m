Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F0443E0C7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 14:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CCEF40485;
	Thu, 28 Oct 2021 12:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id luJmVEU_ZzbW; Thu, 28 Oct 2021 12:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 109D940327;
	Thu, 28 Oct 2021 12:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 415A11BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 12:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BF45402C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 12:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5q-3VyOdn0B9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 12:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D30240196
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 12:21:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="227846087"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="227846087"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 05:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="466106596"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga002.jf.intel.com with ESMTP; 28 Oct 2021 05:13:51 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Oct 2021 13:58:32 +0200
Message-Id: <20211028115832.1385376-7-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211028115832.1385376-1-maciej.machnikowski@intel.com>
References: <20211028115832.1385376-1-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC v6 net-next 6/6] docs: net: Add description
 of SyncE interfaces
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add Documentation/networking/synce.rst describing new RTNL messages
and respective NDO ops supporting SyncE (Synchronous Ethernet).

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 Documentation/networking/synce.rst | 88 ++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)
 create mode 100644 Documentation/networking/synce.rst

diff --git a/Documentation/networking/synce.rst b/Documentation/networking/synce.rst
new file mode 100644
index 000000000000..986b9e62809f
--- /dev/null
+++ b/Documentation/networking/synce.rst
@@ -0,0 +1,88 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================
+Synchronous Ethernet
+====================
+
+Synchronous Ethernet networks use a physical layer clock to syntonize
+the frequency across different network elements.
+
+Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
+Equipment Clock (EEC) and can recover synchronization
+from the synchronization inputs - either traffic interfaces or external
+frequency sources.
+The EEC can synchronize its frequency (syntonize) to any of those sources.
+It is also able to select a synchronization source through priority tables
+and synchronization status messaging. It also provides necessary
+filtering and holdover capabilities.
+
+The following interface can be applicable to diffferent packet network types
+following ITU-T G.8261/G.8262 recommendations.
+
+Interface
+=========
+
+The following RTNL messages are used to read/configure SyncE recovered
+clocks.
+
+RTM_GETRCLKRANGE
+-----------------
+Reads the allowed pin index range for the recovered clock outputs.
+This can be aligned to PHY outputs or to EEC inputs, whichever is
+better for a given application.
+Will call the ndo_get_rclk_range function to read the allowed range
+of output pin indexes.
+Will call ndo_get_rclk_range to determine the allowed recovered clock
+range and return them in the IFLA_RCLK_RANGE_MIN_PIN and the
+IFLA_RCLK_RANGE_MAX_PIN attributes
+
+RTM_GETRCLKSTATE
+-----------------
+Read the state of recovered pins that output recovered clock from
+a given port. The message will contain the number of assigned clocks
+(IFLA_RCLK_STATE_COUNT) and an N pin indexes in IFLA_RCLK_STATE_OUT_IDX
+To support multiple recovered clock outputs from the same port, this message
+will return the IFLA_RCLK_STATE_COUNT attribute containing the number of
+active recovered clock outputs (N) and N IFLA_RCLK_STATE_OUT_IDX attributes
+listing the active output indexes.
+This message will call the ndo_get_rclk_range to determine the allowed
+recovered clock indexes and then will loop through them, calling
+the ndo_get_rclk_state for each of them.
+
+RTM_SETRCLKSTATE
+-----------------
+Sets the redirection of the recovered clock for a given pin. This message
+expects one attribute:
+struct if_set_rclk_msg {
+	__u32 ifindex; /* interface index */
+	__u32 out_idx; /* output index (from a valid range)
+	__u32 flags; /* configuration flags */
+};
+
+Supported flags are:
+SET_RCLK_FLAGS_ENA - if set in flags - the given output will be enabled,
+		     if clear - the output will be disabled.
+
+RTM_GETEECSTATE
+----------------
+Reads the state of the EEC or equivalent physical clock synchronizer.
+This message returns the following attributes:
+IFLA_EEC_STATE - current state of the EEC or equivalent clock generator.
+		 The states returned in this attribute are aligned to the
+		 ITU-T G.781 and are:
+		  IF_EEC_STATE_INVALID - state is not valid
+		  IF_EEC_STATE_FREERUN - clock is free-running
+		  IF_EEC_STATE_LOCKED - clock is locked to the reference,
+		                        but the holdover memory is not valid
+		  IF_EEC_STATE_LOCKED_HO_ACQ - clock is locked to the reference
+		                               and holdover memory is valid
+		  IF_EEC_STATE_HOLDOVER - clock is in holdover mode
+State is read from the netdev calling the:
+int (*ndo_get_eec_state)(struct net_device *dev, enum if_eec_state *state,
+			 u32 *src_idx, struct netlink_ext_ack *extack);
+
+IFLA_EEC_SRC_IDX - optional attribute returning the index of the reference that
+		   is used for the current IFLA_EEC_STATE, i.e., the index of
+		   the pin that the EEC is locked to.
+
+Will be returned only if the ndo_get_eec_src is implemented.
\ No newline at end of file
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
