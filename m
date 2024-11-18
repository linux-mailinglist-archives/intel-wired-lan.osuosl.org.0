Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C25C29D085D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 05:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEE4D84C13;
	Mon, 18 Nov 2024 04:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yg4g9leKeFYx; Mon, 18 Nov 2024 04:16:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AAD484C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731903375;
	bh=RznaqwZ6effslDQeOhPs8OuNRA951PtCeEqNK0SGWQk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z0KLeXrF2x1I5o+oFI/VoM+HLr8rZodXtXkQRUL8KADLEjFJXcHmpbyYAlEfYQzQR
	 x9gWTnWLo0ukHk2K/PvF0KkGbHEaj0ST/6LOUt3/P8Exm10cr6mx6rqkSiMmFrmIaM
	 VMrva0obUh7h1/pN3ILqbCCvhuJzGcg1qM+0EF0TSS0CQBuORiUx2oYq6nPuJfkf2u
	 Pg1looZ2/fY8jw7YK8q2nOnFEjikBAxDoYcWaySCDLDz3et5AwprRVRDZEW0kPWDBY
	 HGFsJag5y86Wz0jKc7vNf5Z7dPzdCRfxxoRPKLpebmiBJ9CiFx95KjdOtTeAXw5cn5
	 moptv8FaEDLKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AAD484C18;
	Mon, 18 Nov 2024 04:16:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C3DCB14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 04:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A9D1607BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 04:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DiIQp0QFU_2O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 04:16:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80C006066A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80C006066A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80C006066A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 04:16:12 +0000 (UTC)
X-CSE-ConnectionGUID: 1xul4O55StaKeeuKNa4yiA==
X-CSE-MsgGUID: As3ontaMQAyD1WdK8OZOVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="34699885"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="34699885"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 20:16:11 -0800
X-CSE-ConnectionGUID: C+3iAYv2SFyg/X7ST70BDA==
X-CSE-MsgGUID: c4UaTHy9SEGeVVTPYjp+tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="94037833"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa005.jf.intel.com with ESMTP; 17 Nov 2024 20:16:08 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 18 Nov 2024 12:15:45 +0800
Message-Id: <20241118041545.1845287-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731903372; x=1763439372;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+kTbOpdo0OuywXlLwtJIwaTwO0qz6pqXuSdPodIB3bU=;
 b=Ab8C/0a+q9FyzkPFeDeIsrriJdaV7uY0F6pN8XNzo/l5SIiwZcxOj0cm
 K7vpx7kkhoaRpMYaYOLZ9lQHkTaTo75giz9xVjhfrvkkdJrsIkVJKX9H2
 moSTSsntAj2LY7cY1URKlIUCYdYv3uw10fypvOEiOeYgwtUZyLkIa10z0
 dL/Gycmz03cyfAb+kjh9tXiuDl8u1kxfYt0XuzRNP/dfIWZKWtqh/8DI9
 IPRv8eY0MXmLAma6SeyDINW6x3HVAmzZESRSYkbfM3mQaKEAIxl3ueJaT
 n3HXYyBfzgXevDvaCzXZ4R95ycqRvo/v2PmaoaJcg9XpAf9NKM9mGb9sQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ab8C/0a+
Subject: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: Allow hot-swapping XDP
 program
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

Currently, the driver would always close and reopen the network interface
when setting/removing the XDP program, regardless of the presence of XDP
resources. This could cause unnecessary disruptions.

To avoid this, introduces a check to determine if there is a need to
close and reopen the interface, allowing for seamless hot-swapping of
XDP programs.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_xdp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index e27af72aada8..869815f48ac1 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -13,6 +13,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	struct net_device *dev = adapter->netdev;
 	bool if_running = netif_running(dev);
 	struct bpf_prog *old_prog;
+	bool need_update;
 
 	if (dev->mtu > ETH_DATA_LEN) {
 		/* For now, the driver doesn't support XDP functionality with
@@ -22,7 +23,8 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		return -EOPNOTSUPP;
 	}
 
-	if (if_running)
+	need_update = !!adapter->xdp_prog != !!prog;
+	if (if_running && need_update)
 		igc_close(dev);
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
@@ -34,7 +36,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	else
 		xdp_features_clear_redirect_target(dev);
 
-	if (if_running)
+	if (if_running && need_update)
 		igc_open(dev);
 
 	return 0;
-- 
2.34.1

