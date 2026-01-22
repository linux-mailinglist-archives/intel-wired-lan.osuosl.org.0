Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CdhJBPlcWngMwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 09:51:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206A6375A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 09:51:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4DDF85049;
	Thu, 22 Jan 2026 08:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 40Z0p9XNTFVu; Thu, 22 Jan 2026 08:51:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D9648504A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769071889;
	bh=AnFAIqy6+CO6QRrmk829noaSvU32jZGzmoLT6Zw9+5g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BbLh3mGWRf4uS2wUJnx+jyn+2e8KoIUAQ63cBwMm2LWTHE6dd9RE+E92kVmTwA0IU
	 VXGNtZMM+yCevV0NVxrGBmWhI8h4EYAQ/QxpvAgL0l72p0Wv1N587Th/i/3MJ0Hp4W
	 2Um30etmYPeesJp80Y2dRZ/puuJGfPx4ZL2LkX0gVwVSu0Uu6KaVDvNuGhcv1heulG
	 MZ3dE1GZrgiAMkImu1EntnQHDuajzgICBgWpoRyjoeYDD5GfJ/9WEBYrwYDeCOKF6z
	 ZRJ4D3INOJtr6AKOqs0BuVnEDunNFguWXfZ5FD/moQKvyrlMtkIX+BO3Kcqvz/iH3Z
	 DJBzXCPpa3MwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D9648504A;
	Thu, 22 Jan 2026 08:51:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 04299122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD20F6F7A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:51:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDGtfEG8imrx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 08:51:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B0236F6BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B0236F6BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B0236F6BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:51:26 +0000 (UTC)
X-CSE-ConnectionGUID: AzJ+qOukSCuaopMb4PXd2A==
X-CSE-MsgGUID: I+Ha1XxUT6umwGUO3QFMHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70224344"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="70224344"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 00:51:08 -0800
X-CSE-ConnectionGUID: foltntY4Sx6EY8TfgtzUzQ==
X-CSE-MsgGUID: wk0yBgu/TEiO+afE/IQcQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="205924946"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 22 Jan 2026 00:51:03 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Thu, 22 Jan 2026 09:51:02 +0100
Message-ID: <20260122085102.1117651-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769071888; x=1800607888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NmNlucIgKwK3+ale7vaInUF2bjHcFehAzVXgbuyDoSI=;
 b=eNIJaK4d/lWoX1S8iBhMmFxIhsYciXR+XZajG5+UED1XeCVp8bpMaiQS
 6LldODYqGFlRKQt2Tc84jZ4YWanV1FORKlDSQgiMf8CLEXqeSrzBC2/oN
 M2QYy6FoRe+7EL4cu5PMtz7OasFeF9/+RVPuTSY2Uq9jbgFvUMNI4YhZR
 c6XRKA0LKLNxfiph59SUyqpe9n80HTkk24f6ljeygECNyV3YjO9hhu4/a
 Yf3wVdfRy6cyCVPelgdIL7rwvdI5Ap9Emo7BcqOe1LKVOE8nSW4mF6GCr
 yIoK3l+4jSKc6kRPP5NRrVWUmWDrJyDAI6QlkJ/1HGRsxBuU/72QH+p6E
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eNIJaK4d
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: fix type punning in
 ixgbe_update_flash_X550
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0206A6375A
X-Rspamd-Action: no action

Add a u32 buffer array member to union ixgbe_hic_hdr2 and use it
directly instead of casting the union address to u32 pointer. This
avoids potential strict aliasing violations and makes the code more
explicit about the buffer usage.

The ixgbe_host_interface_command function expects a void* buffer, so
providing a proper u32 array member in the union is the correct
approach rather than relying on pointer casting. This eliminates the
type punning issue where we were casting the union pointer to u32*.

By using buffer.buf instead of &buffer, we pass the address of the
u32 array directly, which is semantically correct and avoids any
potential undefined behavior from strict aliasing rule violations.

Fixes: 49425dfc7451 ("ixgbe: Add support for x550em_a 10G MAC type")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef6..eb5bf3b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -2798,6 +2798,7 @@ struct ixgbe_hic_hdr2_rsp {
 };
 
 union ixgbe_hic_hdr2 {
+	u32 buf[1];
 	struct ixgbe_hic_hdr2_req req;
 	struct ixgbe_hic_hdr2_rsp rsp;
 };
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 76d2fa3..4a0ccbf 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1228,7 +1228,7 @@ static int ixgbe_update_flash_X550(struct ixgbe_hw *hw)
 	buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
 	buffer.req.checksum = FW_DEFAULT_CHECKSUM;
 
-	status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
+	status = ixgbe_host_interface_command(hw, buffer.buf, sizeof(buffer),
 					      IXGBE_HI_COMMAND_TIMEOUT, false);
 	return status;
 }
-- 
2.52.0

