Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C38CCAB32B6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 11:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10CDB60D76;
	Mon, 12 May 2025 09:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wIPhhnv7GhBS; Mon, 12 May 2025 09:05:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6208360D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747040757;
	bh=Acy8NaSlFUH1mUvbz4obtUIPgslLL+yB0TogZ9h/9cw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bKYTkPPTdybV5F0MwGjA5TinbANj6HNUyayWMJ7NPgHOqPsrLnA0q/hTv/zmonOx5
	 eNFyWimkVRnBVCMLAIrsuMVHW7J5iNFaA9UEMl840aeZagtxUf+oFX7jfZHJW7G8pV
	 kiyFWXPvA2K/AIDd27OsH2Pb2ajslPFeQd8+UleSGZLujwP5gf/ij40hfV8eI7UcZR
	 I4tfUweeQKAYg+OY4h2yKey6gZXb7hUcJ+3IfF6w7kZJcQxO2BAE3lAHKUYBqxLLbZ
	 131m2tLNW5t3sjpq01Hdlik8Wfe2tONSeQkP/a0taotMBSy7XbkZQ9XNHqVjQVyUox
	 VfRbvK9qHjUEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6208360D77;
	Mon, 12 May 2025 09:05:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F13C154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B56260A37
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oLY4R9iSrsmK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 09:05:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D2DE860895
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2DE860895
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2DE860895
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 09:05:54 +0000 (UTC)
X-CSE-ConnectionGUID: KNF672N9RfGNrUwF4VoYtw==
X-CSE-MsgGUID: wVm8aTfjQle4evfdK4mU+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59459718"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="59459718"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 02:05:54 -0700
X-CSE-ConnectionGUID: qTiES2tJQymahWYIOLi88Q==
X-CSE-MsgGUID: +wP3fQADQ/utD54qjkqmCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="142263004"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa004.jf.intel.com with ESMTP; 12 May 2025 02:05:53 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Rinitha S <sx.rinitha@intel.com>
Date: Mon, 12 May 2025 11:05:16 +0200
Message-ID: <20250512090515.1244601-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250512090515.1244601-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747040755; x=1778576755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ObAIrTH9pBRbOQjts3ltZG3qaATJ5eM9weRE4fL6Mco=;
 b=MojXBAQRti5cw8cEJzT2bRD/c1wjogfWDit8f+n2R1Lax2pWsIo614mP
 hfmpxFFXL9M+eTRVbPZ+MDqzt+54e0XzeP/n3UiP9abCqsQyV1z0WvVus
 945Mfep19P4anXRV4l4tweAKf+nXbrjSsqLREiw6J24C5yX4qNVE1GyVF
 4cNma6haUUwLVC9YU6lrWl0M6mikRRYijjchwwp9lZw38vAUGZ6E5thjx
 G61KQwhexTiZf9GOYkH1fWLEdDYxHUVNAOwxNr9VvacVLdQ5n6Ji+Dmpf
 86tSMYVzm7ousMHAP8wS7eoVnZdp3Nz0BpHZxSCcPMztB3zaKIxQOSE5U
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MojXBAQR
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: add link_down_events
 statistic
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

Introduce a link_down_events counter to the ice driver, incremented
each time the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The value is exposed via ethtool's get_link_ext_stats() interface.

Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  3 +++
 3 files changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e42572ae7631..eac0f95d20f1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -617,6 +617,7 @@ struct ice_pf {
 	u16 globr_count;	/* Global reset count */
 	u16 empr_count;		/* EMP reset count */
 	u16 pfr_count;		/* PF reset count */
+	u32 link_down_events;
 
 	u8 wol_ena : 1;		/* software state of WoL */
 	u32 wakeup_reason;	/* last wakeup reason */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 648815170477..db7ae817b127 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -836,6 +836,15 @@ static void ice_set_msglevel(struct net_device *netdev, u32 data)
 #endif /* !CONFIG_DYNAMIC_DEBUG */
 }
 
+static void ice_get_link_ext_stats(struct net_device *netdev,
+				   struct ethtool_link_ext_stats *stats)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+
+	stats->link_down_events = pf->link_down_events;
+}
+
 static int ice_get_eeprom_len(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
@@ -4784,6 +4793,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_msglevel		= ice_set_msglevel,
 	.self_test		= ice_self_test,
 	.get_link		= ethtool_op_get_link,
+	.get_link_ext_stats	= ice_get_link_ext_stats,
 	.get_eeprom_len		= ice_get_eeprom_len,
 	.get_eeprom		= ice_get_eeprom,
 	.get_coalesce		= ice_get_coalesce,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1fbe13ee93a8..2d1361b68b14 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1144,6 +1144,9 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
+	if (!link_up && old_link)
+		pf->link_down_events++;
+
 	ice_ptp_link_change(pf, link_up);
 
 	if (ice_is_dcb_active(pf)) {
-- 
2.47.0

