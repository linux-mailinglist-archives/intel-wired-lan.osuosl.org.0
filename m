Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5E195643B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 09:17:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5CB3607BC;
	Mon, 19 Aug 2024 07:17:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1z27kl6cUYzw; Mon, 19 Aug 2024 07:17:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F32D7607C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724051868;
	bh=ARRqcb9peWWvcZST0EVxpGQxuw7H8MBXOousEKTLO+0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=P9WB46XrJz2T/y703Gaq+eYlSLBCiMoyGgYNDQVKobXfKNAHtOrGC/GcIoMUPxvpp
	 yAiZMggn6ttznGRgfFp1DUmFwux3N1MVqjbQN8dPld2ouNQRHcU+U4hEZY8g/+WaFo
	 zeHP8KbHHPCJZU9A6b+0HNCkVTk6yeJFRRJOkvv4aUpqlMgL04cf011z6FlJm64w3H
	 /3kUgXf369TZcwszjPDBsPx+sNgp1DTBU7BrdnPbSZ9Ot4IiUztd7QB7QPem9qWfZj
	 X/OEgaL3av/h2odjFklaY86BdgeMVlCGkSZoL2hJxxY/uEVHphC2jgNp0Bg1YoZ3hw
	 IoVacAMfOfslg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F32D7607C6;
	Mon, 19 Aug 2024 07:17:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 772841BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 07:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63F45607B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 07:17:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PgVqJrYN77Bk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 07:17:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 53067605A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53067605A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53067605A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 07:17:45 +0000 (UTC)
X-CSE-ConnectionGUID: 2VVBWLDITsmw+fhPeUfF2A==
X-CSE-MsgGUID: BmrQh1msSRaMI1JOSjPYIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="33697997"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="33697997"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 00:17:44 -0700
X-CSE-ConnectionGUID: LJ4Z222jTBCVnn2JHezH6A==
X-CSE-MsgGUID: OaqkMeMZRKu1stquCxXevA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="60275575"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 19 Aug 2024 00:17:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Aug 2024 09:17:42 +0200
Message-ID: <20240819071742.65603-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724051865; x=1755587865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GnBbpLrpo3GHH9Xx3F9zW+M9BMKqkCS1K4pDl7x37HU=;
 b=ezFZtJNUdZxQsjR7l8ZNnckfWNXS1uzBNBuLBZ/eP1XsA6CgQJezvP2T
 jScAMbqZ9/UgpHQzJ/2QBwT76VgbgOX15zYuWUcSNpSZ6pQrlyKP9A3W9
 pPBZuNFtOcf+1nc2heV0orCFg0pBZbaqk1e6SKD3uXtcPMnXsgjTBx839
 IDvejYiqTXB39nCaGX5Vd78tMHz/w1Br61vBl9XV8h78cmVUS4Z3Yt2/H
 qgOOBlg1cxKPqJSJ8W16lc/e9zF+A1t53WsFQ6wNqvvFI2LYSx6gAw2Wx
 lnNUlPxLdtZH1AXzcXmzfIiLqFSZ/v/ileypd+kOcEr+oQQWkvAWvas/Y
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ezFZtJNU
Subject: [Intel-wired-lan] [iwl-net v2] ice: use internal pf id instead of
 function number
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use always the same pf id in devlink port number. When doing
pass-through the PF to VM bus info func number can be any value.

Fixes: 2ae0aa4758b0 ("ice: Move devlink port to PF/VF struct")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Jiri Pirko <jiri@resnulli.us>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
v1 --> v2: https://lore.kernel.org/netdev/20240813071610.52295-1-michal.swiatkowski@linux.intel.com/
 * change subject to net and add fixes tag
---

 drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 00fed5a61d62..62ef8e2fb5f1 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -337,7 +337,7 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 		return -EIO;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
-	attrs.phys.port_number = pf->hw.bus.func;
+	attrs.phys.port_number = pf->hw.pf_id;
 
 	/* As FW supports only port split options for whole device,
 	 * set port split options only for first PF.
@@ -455,7 +455,7 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 		return -EINVAL;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
-	attrs.pci_vf.pf = pf->hw.bus.func;
+	attrs.pci_vf.pf = pf->hw.pf_id;
 	attrs.pci_vf.vf = vf->vf_id;
 
 	ice_devlink_set_switch_id(pf, &attrs.switch_id);
-- 
2.42.0

