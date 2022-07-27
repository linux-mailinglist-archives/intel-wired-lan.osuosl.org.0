Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244515822F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 11:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFC164028D;
	Wed, 27 Jul 2022 09:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFC164028D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658913664;
	bh=BYOWCVKw8KcT9KHcSDtrkFas1r605W2hj2G1z3G18Fo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xgNLvlABQCMJ9GD7JIwyng9oSVW1JySi6/Nf7HQw/jCWTOac37BAaGgJ6zY+WrpaZ
	 ZbkCe5zd/Fy4f8gRC+FwUdwaoXDNpIuN6xKH3Julz0sPZaExHy+j7kQKu+2uTTIKhX
	 3M0EyfbgGK/UGzYJKp6YZE+0TL4Ajsl0ySlv+VgMSMtOXFfIsu8VS42O3KjXkqTchD
	 Fp7SCx0OHk/byBV+rFsvvVipmuV/PlmeeL3Hw13KqIusvE1Ek+uudFx98xvNapuwdF
	 pxQ3xeJuJWNHyMmfHe1mu/Zydsqq6zzlOUMgmLbeV6jpO13hRC0Ns0NuX1umjHY1jU
	 OG//qOkfMQpnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsR94WnOhuOB; Wed, 27 Jul 2022 09:21:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBA0F40492;
	Wed, 27 Jul 2022 09:21:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBA0F40492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2421BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 332D0408CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 332D0408CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maP2z6Y3hd_B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 09:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2842C408CC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2842C408CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 09:20:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="268571907"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="268571907"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 02:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="597358998"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 27 Jul 2022 02:20:22 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jul 2022 11:19:40 +0200
Message-Id: <20220727091940.10902-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658913657; x=1690449657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oOzwDV9ZLY8HIrJw5I2RcPVMz9BDIIit14tnyEgMRug=;
 b=ShYTtQYXWzLKktVJKiF803gzpTOnirAV3NsOwx+davIRuXAs54R3ZCuo
 9L075L47kTZCeEDRaecy/vZi1dy7KkfCBRvn7pbpNyR9QTqk9dGGSZ/FL
 kNHrAnp/vOlZUimIyoge9mGFj+Jy3kmrCPzT3+xh62WI5XIv+M1rs/3SE
 VLh6mVR5WnHeQ1sn8s+Nse4pImtbCdWPFLgd2elrUZmMZo8WRuB/1uQMr
 9gu8BVEXZNtko2MrFZwokI088s/FEEb/F3WQ5x7HzGzif7Ec+vYGY4VdA
 W/8OsyUrZ5l/zBJMOFGQD53oN2aWX9LqenZDVIjgJTSrJTkJ3Rfbq+d7L
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ShYTtQYX
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix tunnel checksum offload
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
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
ip link add vxlan12_sut type vxlan id 12 group 238.168.100.100 dev \
enp130s0f0 dstport 4789
ip l s vxlan12_sut up
ip a a 20.10.110.2/24 dev vxlan12_sut
iperf3 -c 20.10.110.1 #should connect

Without this patch, TX descriptor was using wrong data, due to
l4 header pointing wrong address. NIC would then drop those packets
internally, due to incorrect TX descriptor data, which increased
GLV_TEPC register.

Fixes: b4fb2d33514a ("i40e: Add support for MPLS + TSO")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 7bc1174edf6b..af69ccc6e8d2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3204,11 +3204,13 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 
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
 
 	/* set the tx_flags to indicate the IP protocol type. this is
 	 * required so that checksum header computation below is accurate.
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
