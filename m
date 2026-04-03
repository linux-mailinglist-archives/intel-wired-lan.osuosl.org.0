Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDZXHoBTz2kCvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:43:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4F93912A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:43:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9044540E84;
	Fri,  3 Apr 2026 05:43:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cx6gRnEuiMeH; Fri,  3 Apr 2026 05:43:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1409740EBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775195006;
	bh=HnVr2f0QmI6pfCrN2SXzFyJYYh/JjFhz6Byi9MDeDEI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mtpzXuX+KlK1/VBlDXHtT9SQMuc6scCbfcYsuWRnd8fcgkKbb16sN6qyRjlXEBwfZ
	 zUGNchLSvPBXJnctruqz6ew5dk9uzz1KeHeVXkEfCoRuknN5Wy6ElAEX4Iudl7dByj
	 ZDB6Sjut2l5et7UNcO9rvhF7HOz0ppFVP5nYpyVZfYtIMCPAAn30Nkt+TDdsVZ/+0u
	 L6oSnSbBYiLuTvGQeRGsQPA+SU0fJ5UwtxkD2PVxvDNEHtJNZR8H3qnpyeTUhafnpL
	 DPIedlCJcoQhjW9XZSYzp1DktVwedBDXDpZI6SWeLNABC9pIY9Z1k8XSFkVkipoePW
	 kTTy85uasCApA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1409740EBD;
	Fri,  3 Apr 2026 05:43:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A445D1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90D424008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RnO17vl3fs4n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:43:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E96A840071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E96A840071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E96A840071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:43:23 +0000 (UTC)
X-CSE-ConnectionGUID: c8+wBJ4LQ1uxsi572wtpYA==
X-CSE-MsgGUID: 45BKSvWaT464DC6BkXjhew==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="87713712"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="87713712"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:43:23 -0700
X-CSE-ConnectionGUID: wX1So50NRyCynhQQao17iw==
X-CSE-MsgGUID: dCf2kjxcQXel/bXyIweq5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="220534463"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa009.fm.intel.com with ESMTP; 02 Apr 2026 22:43:21 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Leszek Pepiak <leszek.pepiak@intel.com>
Date: Fri,  3 Apr 2026 07:43:21 +0200
Message-ID: <20260403054321.3791392-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775195004; x=1806731004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F7mmVxPGICqRnePglmcXewjWAjCpBMiS2f/TuIVGVQc=;
 b=XPvnVMkRITxknbJvYsjWDllarad+DzOPUK1F6UdUERtVNER2HGr11b6B
 Ky2Htt34oMXCuB7o2aCgK00tx8HijNxcENMRWZqtqtcTqH1R0DodkdLa9
 Qtuw+PoQ66Esggkefs+3hlF8wx1LO0yAyrZJr/tFMEm6sGjlnom61FEuU
 h6l9vxlbKCFSTqfDJ9FJvWOSDHQLypaTL81PMsmUdvscCwBEJRDJJS+5k
 /JS8yI+vkMWbQ68Ba5C41Eq6F6pUSop7RZJmMfzdiSFOb0cOT5vBUgfGt
 I3wFNNerTErjsjUEZ77749gXhfW3deD3hHrG7yIYGXm1QUr2T3aPp+/8L
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XPvnVMkR
Subject: [Intel-wired-lan] [PATCH net-next] iavf: fix kernel-doc comment
 style in ethtool ops
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EF4F93912A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Leszek Pepiak <leszek.pepiak@intel.com>

iavf_get_channels() and iavf_set_channels() use the legacy `**/`
comment terminator and embed the return description in the body text.
Convert to proper kernel-doc style: single `*/` terminator and an
explicit `Return:` section.

Signed-off-by: Leszek Pepiak <leszek.pepiak@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 8188dd4..425acbb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1846,13 +1846,13 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	return ret;
 }
 /**
- * iavf_get_channels: get the number of channels supported by the device
+ * iavf_get_channels - get the number of channels supported by the device
  * @netdev: network interface device structure
  * @ch: channel information structure
  *
  * For the purposes of our device, we only use combined channels, i.e. a tx/rx
  * queue pair. Report one extra channel to match our "other" MSI-X vector.
- **/
+ */
 static void iavf_get_channels(struct net_device *netdev,
 			      struct ethtool_channels *ch)
 {
@@ -1873,14 +1873,15 @@ static void iavf_get_channels(struct net_device *netdev,
 }
 
 /**
- * iavf_set_channels: set the new channel count
+ * iavf_set_channels - set the new channel count
  * @netdev: network interface device structure
  * @ch: channel information structure
  *
  * Negotiate a new number of channels with the PF then do a reset.  During
- * reset we'll realloc queues and fix the RSS table.  Returns 0 on success,
- * negative on failure.
- **/
+ * reset we'll realloc queues and fix the RSS table.
+ *
+ * Return: 0 on success, negative on failure.
+ */
 static int iavf_set_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
-- 
2.52.0

