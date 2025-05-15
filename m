Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 622DCAB8451
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 12:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DC06112E;
	Thu, 15 May 2025 10:50:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kCGHzcNlAex; Thu, 15 May 2025 10:50:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A01861125
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747306244;
	bh=Acy8NaSlFUH1mUvbz4obtUIPgslLL+yB0TogZ9h/9cw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B6JMoAhdJGUFIX1fugEcRrQWoYL/cGspLUXSCIYSB/MmAgVYf3YnCJkzuBAOCSntf
	 /sFr7Olz2qlOa+nwFhhQaq6/3AJZ6Tw/58QTk3dO3dr6tJudC1BKCVGyPxplqwCXJN
	 2Uv1T5ZnbjtHyLCNYehL9Ztb4H4jy19UukOI+QLLNH5ImJtNUhghgoSARlwG9F0/16
	 p7a1ZxDN2MB2RwkwxGsH76lJzLaW82ij6Zxcxp8zp6WneKkGNh5pQ7LHMY5vPSyHnw
	 6tNUnDs2baTtYFwqrj6mFXVKAqHOdLiQggwztg5lTiRqG+eWw6wO7moX5JOJmN0lah
	 R7iEfDb1nGwGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A01861125;
	Thu, 15 May 2025 10:50:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF36B153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B044D411CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZ4Es7rAoIQX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 10:50:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D289410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D289410E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D289410E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:41 +0000 (UTC)
X-CSE-ConnectionGUID: c5s4rk8fSAq2JJEoLJrnkQ==
X-CSE-MsgGUID: CEeyG72rQ4WFDJi7tz8OAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66786965"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="66786965"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 03:50:41 -0700
X-CSE-ConnectionGUID: FdOZtzFqQRSSFbRnIebXhg==
X-CSE-MsgGUID: wViUpew+R3OZr9hyFGhWHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138873942"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa007.jf.intel.com with ESMTP; 15 May 2025 03:50:38 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, kuba@kernel.org, dawid.osuchowski@linux.intel.com,
 pmenzel@molgen.mpg.de,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Rinitha S <sx.rinitha@intel.com>
Date: Thu, 15 May 2025 12:50:09 +0200
Message-ID: <20250515105011.1310692-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747306241; x=1778842241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ObAIrTH9pBRbOQjts3ltZG3qaATJ5eM9weRE4fL6Mco=;
 b=KTzjvhGOwS8vZUCLvbRgll+8ZqQJjozx6IwKj7HFWxgUCItPaRfA8t9r
 MEBHDzC/tRP3Al/Bl/pqYJkSMO5PRJi1+7EZegNQ95j0idvEqi3DHRw4C
 /DIvGopBqR2kelQq+FW8Movee9mwvVihZT3s5+/1ipP/JJ8bGWe0JrA7A
 CYgfGhZWIG+fiE1OUdF7IOTg2tkAmeqUc3ygbiVbbcFhlRALLOPwxQ1tA
 v8f87HfMHysBN2OD5JZ4vfEOVTfr7l0d36/1S5yaTLQxqH80Fd4ZJ7WF0
 CX0kcNpIrws5dpBJWgwfKorXaA89d5ruUyjdyeL43LoG85iMt2SclqSa9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KTzjvhGO
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ice: add link_down_events
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

