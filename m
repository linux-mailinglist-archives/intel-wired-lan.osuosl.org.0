Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C041F2BBB30
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73566872DB;
	Sat, 21 Nov 2020 00:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KQgmVo6c8RT; Sat, 21 Nov 2020 00:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C6A1872E0;
	Sat, 21 Nov 2020 00:45:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BAC121BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7542868B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UthFhCmKpAp4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D37086E95
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
IronPort-SDR: UFAKt+wnQ4ZviQBzEsmWNqtsO/pnVsz1Hqt7JUJ0e81kQxd8hgyLwswWXKpCb+86lnYzsdraXd
 GblPbkMyh0hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782304"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782304"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:33 -0800
IronPort-SDR: nl/W3TFMqIuNgzo1C8Ei02HFq6xwXI6Losd69NuVVrFlJrb7010p8B+OQI8v+LVoOY8gYxXI9k
 C6kUJhwCeoKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396466"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:30 -0800
Message-Id: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 1/6] ice: fix FDir IPv6 flexbyte
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Henry Tieman <henry.w.tieman@intel.com>

The packet classifier would occasionally misrecognize an IPv6 training
packet when the next protocol field was 0. The correct value for
unspecified protocol is IPPROTO_NONE.

Fixes: 165d80d6adab ("ice: Support IPv6 Flow Director filters")
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 2d27f66ac853..192729546bbf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1576,7 +1576,13 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 		       sizeof(struct in6_addr));
 		input->ip.v6.l4_header = fsp->h_u.usr_ip6_spec.l4_4_bytes;
 		input->ip.v6.tc = fsp->h_u.usr_ip6_spec.tclass;
-		input->ip.v6.proto = fsp->h_u.usr_ip6_spec.l4_proto;
+
+		/* if no protocol requested, use IPPROTO_NONE */
+		if (!fsp->m_u.usr_ip6_spec.l4_proto)
+			input->ip.v6.proto = IPPROTO_NONE;
+		else
+			input->ip.v6.proto = fsp->h_u.usr_ip6_spec.l4_proto;
+
 		memcpy(input->mask.v6.dst_ip, fsp->m_u.usr_ip6_spec.ip6dst,
 		       sizeof(struct in6_addr));
 		memcpy(input->mask.v6.src_ip, fsp->m_u.usr_ip6_spec.ip6src,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
