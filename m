Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pxz3L0NUTmo6KwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 15:44:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE92E726EB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 15:44:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7i2auNBu;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F95260EA5;
	Wed,  8 Jul 2026 13:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9jnZiZuWH95b; Wed,  8 Jul 2026 13:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D699C60E7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783518270;
	bh=nRs86+Hu9J4Xjb/DUuYhx1PF6yDxtWqhG18QENjEvz0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7i2auNBu8aOXQM3MN/iCSDKzXMkbdybCNqaRwpxIhROm+/rkwfj467dGCTE3RSABQ
	 BykKAK0YdghPGXj30KOXKln+566iyN8HauwA4nltoMxg25dNrB9cM9WmaSVWkoJoOT
	 pn9lupgtG0THQbenSFbFrv/+vH0IqmR2ZhiPiDb2fNGHoKP8SqoAVglRl9JUY1685+
	 de1EmASGrkbuBsqEkgZoAh15rYzAN+6Z2VcaXDR3lxayG6GoF0C80Tgj3KUF4Gm0Ea
	 /WN3VRDYKpQB2RMvTFdmlA3s+JTS78MBvZc4VnGHJv/EbPr9siulmO3OVU/KHjFRNx
	 MHN9qnsUfbxwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D699C60E7E;
	Wed,  8 Jul 2026 13:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E3B4B15C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 13:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA77E40ED7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 13:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FaWiOdg197Ce for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 13:44:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07A0540EA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07A0540EA0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07A0540EA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 13:44:28 +0000 (UTC)
X-CSE-ConnectionGUID: 0WIzozKnS1+USVeIGrkOxw==
X-CSE-MsgGUID: 9gjtSeyMRH6YptZ0SiUeVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87862624"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="87862624"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 06:44:28 -0700
X-CSE-ConnectionGUID: DV4+tqDIQCapb4rCEq/s5g==
X-CSE-MsgGUID: 9HGen/tnQey2ooRdAkbgOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="259201565"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 06:44:26 -0700
From: Dima Ruinskiy <dima.ruinskiy@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: dima.ruinskiy@intel.com, anthony.l.nguyen@intel.com, allen.lan@intel.com,
 acelan.kao@canonical.com
Date: Wed,  8 Jul 2026 16:44:24 +0300
Message-Id: <20260708134424.3289011-1-dima.ruinskiy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783518269; x=1815054269;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jvuLIn5HnFB9twKYjcjXdkt6V3X0InHeFI88HxHBYLM=;
 b=VorUs8PKR5DE+opfmfAJ3JBL8AQD0B+Px7KhrSIND7/uRg7qlZZ/Y+Jp
 b1uBOWyQdrC9ChUq5z3wgG6CH3LEcYRm4HkAOiqoqm7ZmIyy8/3JORoBe
 cEC8yP+yxWg8KsDlL6YAnJCDXwGGWKK9NZkROKdETDCEVpo5uNr4TCov6
 dSqMw0byKxpC1bWiYx1dkM1Xzh/GHy1zC25iCSvLIDPxtdFaZ3z+7w5fF
 leurHTXKIDYOZlVBzIOnXGMjJeFPKKmhpUTeKcmJgUrnMYUiUbPVikTy4
 UbUzOcZiUGSMQXVM6JHI2jIRhLESth6EIhgXQJJUuH8BG0dGC42wp8IRE
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VorUs8PK
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Support ACPI-based MAC
 passthrough
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE92E726EB3

Some systems implement a system MAC address object in the ACPI table,
using either \\_SB.AMAC or \\MACA object names. This system MAC address,
when enabled, is intended to override the permanent MAC address of the
network controller.

Implement lookup of the relevant ACPI object names and use them to
initialize the MAC address.

On systems where the feature is disabled or unsupported, the ACPI objects
do not exist or do not contain a valid Ethernet MAC, causing a fallback
to the existing MAC address initialization path.

Assisted-by: GitHub-Copilot:claude-opus-4.7
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 64 ++++++++++++++++++++++-
 1 file changed, 62 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 82800a4a6d6c..83eb8953e954 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -11,6 +11,8 @@
 #include <net/pkt_sched.h>
 #include <linux/bpf_trace.h>
 #include <net/xdp_sock_drv.h>
+#include <linux/acpi.h>
+#include <linux/hex.h>
 #include <linux/pci.h>
 #include <linux/mdio.h>
 
@@ -7116,6 +7118,57 @@ static enum hrtimer_restart igc_qbv_scheduling_timer(struct hrtimer *timer)
 	return HRTIMER_NORESTART;
 }
 
+static bool igc_get_acpi_mac_passthru(u8 *mac)
+{
+	static const struct {
+		const char *name;
+		acpi_object_type type;
+		u32 length;
+	} sources[] = {
+		{ "\\_SB.AMAC", ACPI_TYPE_BUFFER, 23 },
+		{ "\\MACA",     ACPI_TYPE_STRING, 22 },
+	};
+	struct acpi_buffer buffer;
+	union acpi_object *obj;
+	bool mac_found = false;
+	acpi_status status;
+	u8 buf[ETH_ALEN];
+	int i;
+
+	if (!IS_ENABLED(CONFIG_ACPI))
+		return false;
+
+	for (i = 0; i < ARRAY_SIZE(sources) && !mac_found; i++) {
+		buffer.length = ACPI_ALLOCATE_BUFFER;
+		buffer.pointer = NULL;
+
+		status = acpi_evaluate_object(NULL, (char *)sources[i].name,
+					      NULL, &buffer);
+		if (ACPI_FAILURE(status))
+			continue;
+
+		obj = buffer.pointer;
+		if (!obj || obj->type != sources[i].type ||
+		    obj->string.length != sources[i].length)
+			goto free_obj;
+
+		if (strncmp(obj->string.pointer, "_AUXMAC_#", 9) ||
+		    obj->string.pointer[21] != '#')
+			goto free_obj;
+
+		if (hex2bin(buf, obj->string.pointer + 9, ETH_ALEN) ||
+		    !is_valid_ether_addr(buf))
+			goto free_obj;
+
+		ether_addr_copy(mac, buf);
+		mac_found = true;
+free_obj:
+		kfree(obj);
+	}
+
+	return mac_found;
+}
+
 /**
  * igc_probe - Device Initialization Routine
  * @pdev: PCI device information struct
@@ -7279,9 +7332,16 @@ static int igc_probe(struct pci_dev *pdev,
 	}
 
 	if (eth_platform_get_mac_address(&pdev->dev, hw->mac.addr)) {
-		/* copy the MAC address out of the NVM */
-		if (hw->mac.ops.read_mac_addr(hw))
+		/* Look for a system-provided MAC in the ACPI table before
+		 * falling back to reading the address from the NVM.
+		 */
+		if (igc_get_acpi_mac_passthru(hw->mac.addr)) {
+			netdev->addr_assign_type = NET_ADDR_STOLEN;
+			dev_info(&pdev->dev, "Using ACPI pass-thru MAC addr %pM\n",
+				 hw->mac.addr);
+		} else if (hw->mac.ops.read_mac_addr(hw)) {
 			dev_err(&pdev->dev, "NVM Read Error\n");
+		}
 	}
 
 	eth_hw_addr_set(netdev, hw->mac.addr);
-- 
2.44.0

