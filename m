Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HFME8RL82ngzAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:32:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6D54A2C66
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:32:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E45B60E9D;
	Thu, 30 Apr 2026 12:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIRec5qzgnB3; Thu, 30 Apr 2026 12:32:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFA760EA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777552320;
	bh=Nl+wXRXxBVxXlXEUmTotrp6g7Naav3Th296LsGNxIBQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sW9+QoJ9k6jEJVPO1sbKVw/DpraWikPqW/9a0CE4gPnU6JxCoWPTMTAczRLXgPHMH
	 EsQtTwRjZKpo9nZtKvlnhaOCaWnnLqx8D926sZGKhh6mBOBDzLETWtvZXUKzyr3Mjh
	 3TnVS/u4HeO8siOVxy6KGDsaB6h6afc1X1pbxu+nFcI9WUJd6nchLyGYSqA9Kag5S0
	 rQQqdW2RA7i3IrtuJ1GypIAuUnM79ixZC1at1W1Mv8p86uuiap/pggYUEUJ0vSSC88
	 aAPa8J8wty1jCj/XF+LRyAb+XwgcSlT6g8snLHDkT/pAB5943ysaf7u+lsE+qo3I9w
	 qZnAGEQjB+QsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EFA760EA8;
	Thu, 30 Apr 2026 12:32:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8699718F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 787764297C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKMgAPx6GLcv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 12:31:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 045FB42977
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 045FB42977
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 045FB42977
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:31:56 +0000 (UTC)
X-CSE-ConnectionGUID: gUWFDYOFQyGfY2nXwdojKw==
X-CSE-MsgGUID: gK8kv1pqRVS1PQvyApIzOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78487640"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78487640"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 05:31:56 -0700
X-CSE-ConnectionGUID: HoLNcZzvQ6icQ3rD2c9NCA==
X-CSE-MsgGUID: OtfPuoPHRcKyXdb1fTk7Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236353093"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa004.fm.intel.com with ESMTP; 30 Apr 2026 05:31:55 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Thu, 30 Apr 2026 14:31:53 +0200
Message-ID: <20260430123154.132072-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777552317; x=1809088317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wZ/elesy/7o01ujF9sto27cSfGzsZbuvXwSSNlM4CXE=;
 b=dkZvQ6IdJFx93pPxOlh0sSa2DzFrYyy4X70zQFbwM2KM3B3OIt3/9YSz
 kzFIvf+DPiL+MTjtTq66Ca7lpg4ZTWvXGjqShXO3Tag3H/nDFj0ZOqAfF
 WlITjEGf11cQTqsmb8QQbXj62P/bB0LcPaZ4zrpBNQSIDSnO3aKtQsioj
 3cQOWwt146lhUbut6myK+pvsmOjUK/KPPne72MdIFb4QlwHIrqJxju/eh
 JjmTh6F3aW3cebZSBECHDCsQPJl/25EQ2qG9vb1WkcRhmlDAGtfIMtBqN
 2rvpVW0i694oUD2s/eC/Jscj+s7yWiGkGqiIAClCBRBrUN1arZa/VBWWU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dkZvQ6Id
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix X550 AQ PHY identification
 returning ixgbe_phy_unknown
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
X-Rspamd-Queue-Id: 6F6D54A2C66
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

ixgbe_get_phy_id() reads the two MII_PHYSID registers and combines them
into hw->phy.id with the lower 4 revision bits masked out by
IXGBE_PHY_REVISION_MASK (0xFFFFFFF0).

Commit 5f1c3589b0f0 ("ixgbe: Correct X550 phy ID") replaced
X550_PHY_ID (0x01540220) with X550_PHY_ID2 (0x01540223) and
X550_PHY_ID3 (0x01540221).  These are the raw values read directly off
hardware, but after revision-bit masking both reduce to 0x01540220.
The switch cases in ixgbe_get_phy_type_from_id() therefore never match,
and X550 AQ PHY devices always fall through to ixgbe_phy_unknown.  A
wrong PHY type means the wrong ops vector is selected, resulting in
failed PHY initialization and no link.

Restore X550_PHY_ID (0x01540220) as the match value -- the
revision-stripped ID that the driver actually stores.  Keep X550_PHY_ID2
and X550_PHY_ID3 as documentation of the hardware-reported values.

Fixes: 5f1c3589b0f0 ("ixgbe: Correct X550 phy ID")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 3 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 1 +
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index ab733e7..ca98dad 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -364,8 +364,7 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
 	case TN1010_PHY_ID:
 		phy_type = ixgbe_phy_tn;
 		break;
-	case X550_PHY_ID2:
-	case X550_PHY_ID3:
+	case X550_PHY_ID:
 	case X540_PHY_ID:
 		phy_type = ixgbe_phy_aq;
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef6..0d47622 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -1412,6 +1412,7 @@ struct ixgbe_nvm_version {
 #define TN1010_PHY_ID    0x00A19410
 #define TNX_FW_REV       0xB
 #define X540_PHY_ID      0x01540200
+#define X550_PHY_ID      0x01540220
 #define X550_PHY_ID2	0x01540223
 #define X550_PHY_ID3	0x01540221
 #define X557_PHY_ID      0x01540240
-- 
2.52.0

