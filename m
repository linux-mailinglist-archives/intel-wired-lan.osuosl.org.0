Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BE65780E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 13:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEC8160BCF;
	Mon, 18 Jul 2022 11:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEC8160BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658144218;
	bh=52qqPgu7GL9K+l6SBY2R6Lk9BspHZZfjrmC6mS3cBJ4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=j9Q7WPtQxE4VfmWZRGRx9Rl4zViWqRTb9GjUzX4RCHOoDPGmLstMdCA4dPmkhhbmq
	 W8nWTZT58KPye0Ez9x7MTPLv46jeIEiuXGvdoIyFo6lbCCffEFFBMWgv6mTpVROBF4
	 8sF/Tw9F1V5qRFBeYbqDO7Y/rk9TG3sClw/mOVq8CD55FYWAexr0+Aq2dm5VQYSZgl
	 6CV5nVZVXAt2k7rCyIrjNXBPbnRXg7aAIj7EWhlgUATX1b2cXCt3Qqt6xATw37vt7x
	 g7qRh8/Ih09Oe60rg4JwZBjGCUhfyPlBZl13aLmzj1oML6EwJqwftSeVbBq6ZPBpib
	 htawOf+vd/aog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x7SSru7zfNeq; Mon, 18 Jul 2022 11:36:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C14E60BFB;
	Mon, 18 Jul 2022 11:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C14E60BFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A09121BF32E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 11:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79FB283409
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79FB283409
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc9qUKPvV9wn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 11:36:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A33F5813A4
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A33F5813A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 11:36:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="287345713"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="287345713"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 04:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="924310300"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jul 2022 04:36:49 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jul 2022 13:34:27 +0200
Message-Id: <20220718113427.243979-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658144211; x=1689680211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lj2LpS4vMT6n88wwBdinStP7C3aAtNdKef9WbIZylX0=;
 b=UGHrb+PtwIZ1vl8viehwSw6WeeVbKr/3/CxcYy1PhtkDZH0mLKTJAEHi
 J+m+gOAA1TVhqgjOzytQZ6VwkU207ODOBqGZ4oux7IPp8Z2LRvNcO37VR
 pefdFMm4KM+C35TB+qwVN0QxzxOEFgHZjBjQ29Q2aM3rD8PLPRA5UrxTi
 fTNBmnZQnMXePKhD1HW/RxdN1A8+nefzrQbiRBxEdwbA39yz6fHX39Or8
 RO6Xnvj0DT6iF11p8ywr7+xFVK9/WVffVIKf7vcRlRhXezyjApQhJlXaY
 9q1NjHHl1LJWAdvnoR3/x23tZlRJ4mkVS7Ua8xOKgEon33QcB774047Rw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UGHrb+Pt
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix tunnel checksum offload
 with fragmented traffic
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix checksum offload on VXLAN tunnels.
In case, when mpls protocol is not used, set l4 header to transport
header of skb. This fixes case, when user tries to offload checksums
of VXLAN tunneled traffic.

Steps for reproduction (requires link partner with tunnels):
ip l s enp130s0f0 up
ip a f enp130s0f0
ip a a 10.10.110.2/24 dev enp130s0f0
ip l s enp130s0f0 mtu 1600
ip link add vxlan12_sut type vxlan id 12 group 238.168.100.100 dev enp130s0f0 dstport 4789
ip l s vxlan12_sut up
ip a a 20.10.110.2/24 dev vxlan12_sut
iperf3 -c 20.10.110.1 #should connect

Offload params: td_offset, cd_tunnel_params were
corrupted, due to l4 header pointing wrong address. NIC would then drop
those packets internally, due to incorrect TX descriptor data,
which increased GLV_TEPC register.

Fixes: 69e66c04c672 ("ice: Add mpls+tso support")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 3f8b7274ed2f..836dce840712 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1751,11 +1751,13 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 
 	protocol = vlan_get_protocol(skb);
 
-	if (eth_p_mpls(protocol))
+	if (eth_p_mpls(protocol)) {
 		ip.hdr = skb_inner_network_header(skb);
-	else
+		l4.hdr = skb_checksum_start(skb);
+	} else {
 		ip.hdr = skb_network_header(skb);
-	l4.hdr = skb_checksum_start(skb);
+		l4.hdr = skb_transport_header(skb);
+	}
 
 	/* compute outer L2 header size */
 	l2_len = ip.hdr - skb->data;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
