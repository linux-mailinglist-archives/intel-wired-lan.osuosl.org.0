Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 467F8C67418
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 05:30:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA9FB60ED5;
	Tue, 18 Nov 2025 04:30:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHbMiQTzi4Td; Tue, 18 Nov 2025 04:30:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 584D360EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763440218;
	bh=lvmNjqPhkkRsEEdnO2QEjZTo2wH1g2XD7DuUr8NmaS0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3ny59IpvMw3gEhQRhxWFsBPrfbyBMh8u1p7TLsv3i+b5uJJMGlkVlx6mNv9xzvTRJ
	 uZSoqAHDkbxXK6+NLO4LWXfkI8LIzkJYHsxOn9nOAMoDUjXiz5hFQeZmdwjajhRI6F
	 7MiL/oEjqtdXTwvJSdDeNEdYSPHF5GhumkwZNFWJp3UrDYrwqGiaH1uI2bjBogzQJT
	 jN6vX0kXlxyQNazB5EjuTM3LwQ1R8bnuQqqegjivryW//gl1+KUW6iLo+pDq7dBkkA
	 IC/YuAV8a/E8OhS5ehoo4iPWPftfQTSl4IHgXOwJ4JuHjZJpFh8IX3oEQVxleHqzIa
	 5UqU05IITILUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 584D360EF6;
	Tue, 18 Nov 2025 04:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1835BD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A93B401F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 05rEphvZg3od for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 04:30:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0495440025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0495440025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0495440025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:15 +0000 (UTC)
X-CSE-ConnectionGUID: kWIJ9qKWSxyqHORg6dw0fQ==
X-CSE-MsgGUID: p3SeIfbfTRihTB34BH3Lfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="82843608"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="82843608"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:23:10 -0800
X-CSE-ConnectionGUID: 4OULdYgHRZ+mqaJyWvqtmA==
X-CSE-MsgGUID: 4MZ+bLfKRGGNMeU2TYok5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="191086607"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by fmviesa009.fm.intel.com with ESMTP; 17 Nov 2025 20:23:08 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Date: Mon, 17 Nov 2025 22:22:28 -0600
Message-Id: <20251118042228.381667-4-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251118042228.381667-1-sreedevi.joshi@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763440216; x=1794976216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3h8C7ms2lT0gGRut8mfr73o9Zzge0iofG1ntEd0Mzfk=;
 b=WBNKRy8Zo827KNwGJzN8AJSkeEwCimjeIuRQRA4xJnmf1GbUHCTY0J81
 n/1BQ6qD98XOKV4ZOZ3AkmQjYdoRlfeIZLeqJSIt4L7wYO94yBESYrkwq
 AHJfKcQXoCpPAdPucxAea92vOrKfLTTr9THg/aPkIx2MrHV7CmWyihNAV
 F3ZyqQ8TNqpt17mdk7A1OlHt8Hp7cwMHao+Yfd4BVVxiBnfGBMmOi01RB
 jVED6TPPQkFFG7j2jJHLcuRKGHsufxLfKd9WDz6kkRkGHdYOgq+2fCZqn
 GGPjtlT1qhDT1U1xmO9KkjrWXodcBR2GlQznlvzQq+9xIeX0xNGk47Klx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WBNKRy8Z
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] idpf: Fix RSS LUT NULL ptr
 issue after soft reset
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

During soft reset, the RSS LUT is freed and not restored unless the
interface is up. If an ethtool command that accesses the rss lut is
attempted immediately after reset, it will result in NULL ptr
dereference. Also, there is no need to reset the rss lut if the soft reset
does not involve queue count change.

After soft reset, set the RSS LUT to default values based on the updated
queue count only if the reset was a result of a queue count change. For
all other reset causes, don't touch the LUT.

Steps to reproduce:

** Bring the interface down (if up)
ifconfig eth1 down

** update the queue count (eg., 27->20)
ethtool -L eth1 combined 20

** display the RSS LUT
ethtool -x eth1

[82375.558338] BUG: kernel NULL pointer dereference, address: 0000000000000000
[82375.558373] #PF: supervisor read access in kernel mode
[82375.558391] #PF: error_code(0x0000) - not-present page
[82375.558408] PGD 0 P4D 0
[82375.558421] Oops: Oops: 0000 [#1] SMP NOPTI
<snip>
[82375.558516] RIP: 0010:idpf_get_rxfh+0x108/0x150 [idpf]
[82375.558786] Call Trace:
[82375.558793]  <TASK>
[82375.558804]  rss_prepare.isra.0+0x187/0x2a0
[82375.558827]  rss_prepare_data+0x3a/0x50
[82375.558845]  ethnl_default_doit+0x13d/0x3e0
[82375.558863]  genl_family_rcv_msg_doit+0x11f/0x180
[82375.558886]  genl_rcv_msg+0x1ad/0x2b0
[82375.558902]  ? __pfx_ethnl_default_doit+0x10/0x10
[82375.558920]  ? __pfx_genl_rcv_msg+0x10/0x10
[82375.558937]  netlink_rcv_skb+0x58/0x100
[82375.558957]  genl_rcv+0x2c/0x50
[82375.558971]  netlink_unicast+0x289/0x3e0
[82375.558988]  netlink_sendmsg+0x215/0x440
[82375.559005]  __sys_sendto+0x234/0x240
[82375.559555]  __x64_sys_sendto+0x28/0x30
[82375.560068]  x64_sys_call+0x1909/0x1da0
[82375.560576]  do_syscall_64+0x7a/0xfa0
[82375.561076]  ? clear_bhb_loop+0x60/0xb0
[82375.561567]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<snip>

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 4 +++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 1 +
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 7359677d8a3d..51e1fccfb6d1 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2061,7 +2061,6 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_stop(vport, false);
 	}
 
-	idpf_deinit_rss_lut(vport);
 	/* We're passing in vport here because we need its wait_queue
 	 * to send a message and it should be getting all the vport
 	 * config data out of the adapter but we need to be careful not
@@ -2087,6 +2086,9 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	if (err)
 		goto err_open;
 
+	if (reset_cause == IDPF_SR_Q_CHANGE)
+		idpf_fill_dflt_rss_lut(vport);
+
 	if (current_state == __IDPF_VPORT_UP)
 		err = idpf_vport_open(vport, false);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 11f711997db8..214e7c93b106 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4643,7 +4643,7 @@ int idpf_config_rss(struct idpf_vport *vport)
  * idpf_fill_dflt_rss_lut - Fill the indirection table with the default values
  * @vport: virtual port structure
  */
-static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
+void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	u16 num_active_rxq = vport->num_rxq;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 2bfb87b82a9b..423cc9486dce 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1086,6 +1086,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
 void idpf_vport_intr_deinit(struct idpf_vport *vport);
 int idpf_vport_intr_init(struct idpf_vport *vport);
 void idpf_vport_intr_ena(struct idpf_vport *vport);
+void idpf_fill_dflt_rss_lut(struct idpf_vport *vport);
 int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss_lut(struct idpf_vport *vport);
 void idpf_deinit_rss_lut(struct idpf_vport *vport);
-- 
2.43.0

