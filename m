Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOAWMl0MC2pN/gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 14:55:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FD56D22E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 14:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C25385C71;
	Mon, 18 May 2026 12:55:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AEhwIYp9VQ6x; Mon, 18 May 2026 12:55:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F109485C72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779108954;
	bh=CXz7fg0YtygUbc/Qmz+/uqr2ZKinhGtSl1on7pb1G4o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tVn0JMDJlXiXAxZi8vbqJ8dBX42hoEnYsTayc5DYoYVVFr2AhsYMoN8qyuE0TQA7/
	 lbIbikH2p9CoKp0ckiQ/EYCTw3EiiFqM104PZYYoUHl445sTFkbxsfQrtVnFr51oJY
	 rsP/3xgBcLE5T6E30c6qml2fR/vbRBsUJfAYNNf8UdrZCjggJ46gZGOfF4ye4VGFfC
	 EBcaZdkLdpFKb0YaTesuAGPkDMXiePpY3SWUaYyuDxHCC1r3/qUyMBYsgujpnoo+0E
	 Hcj3ugpE4/5CpMdrlrNQ3NSd9XPP2h03NO4RNSbDOtr+nGInUTC059smW+GySCdiMH
	 yoIW/MwKUeotQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F109485C72;
	Mon, 18 May 2026 12:55:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 70D191B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 573B6408EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6d0MoVzxRl4F for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 12:55:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B252240584
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B252240584
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B252240584
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:55:51 +0000 (UTC)
X-CSE-ConnectionGUID: 1LWbPtL2QI+NGIbnwM66mg==
X-CSE-MsgGUID: UrcEw88dT1SKUWJkgxpbVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="82524118"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="82524118"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 05:55:51 -0700
X-CSE-ConnectionGUID: 7U3DXN9IRvuKX0NtwMAqSw==
X-CSE-MsgGUID: QJYoVvjOS52DG3GdncfscA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="277520202"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa001.jf.intel.com with ESMTP; 18 May 2026 05:55:49 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 18 May 2026 14:36:11 +0200
Message-Id: <20260518123611.2252139-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779108952; x=1810644952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BFuutE3qkTv/oXLlNpQchnO9o31EmkQdBPy5A9Bo62A=;
 b=PpzoK914d5P2z7enMYGsb/xl6Rgd756VqD136WFVQfy2Vh/FPDzAXH1T
 JuNywFJbBcfpYR8wNMyfcOYXF94zuXaHydAxaoRZeOMktdi/zbzqSWdJF
 ah0C8oY46zXo1OAXULmK6F2nB3SHfZRlu0ltLa9l8xxksUItxjgLi0UTr
 tw26Tv4W3WCijf1cM5JI0vrcjd41VJE3VJArV2hCtyQzpWUY0YUFh1R8U
 52DjmghzNlWSwzHn5AKPRpWf8x1Xi9IVKKwY8uk7+CeSdTZxIWrJTF9b6
 INjJiMFxDwWuXquUuHbWuGbGYhSsge/NgK54CE0yQ3NiFf179T3ata50I
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PpzoK914
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: LinkSec deprecated
 macros cleanup
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
X-Rspamd-Queue-Id: 879FD56D22E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

There are some unused LinkSec macros. Get rid of them.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 61 -------------------
 1 file changed, 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef67defd..1f77b6eb86a1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -620,67 +620,6 @@ struct ixgbe_nvm_version {
 #define IXGBE_SECRXSTAT_SECRX_OFF_DIS   0x00000002
 #define IXGBE_SECRXSTAT_ECC_RXERR       0x00000004
 
-/* LinkSec (MacSec) Registers */
-#define IXGBE_LSECTXCAP         0x08A00
-#define IXGBE_LSECRXCAP         0x08F00
-#define IXGBE_LSECTXCTRL        0x08A04
-#define IXGBE_LSECTXSCL         0x08A08 /* SCI Low */
-#define IXGBE_LSECTXSCH         0x08A0C /* SCI High */
-#define IXGBE_LSECTXSA          0x08A10
-#define IXGBE_LSECTXPN0         0x08A14
-#define IXGBE_LSECTXPN1         0x08A18
-#define IXGBE_LSECTXKEY0(_n)    (0x08A1C + (4 * (_n))) /* 4 of these (0-3) */
-#define IXGBE_LSECTXKEY1(_n)    (0x08A2C + (4 * (_n))) /* 4 of these (0-3) */
-#define IXGBE_LSECRXCTRL        0x08F04
-#define IXGBE_LSECRXSCL         0x08F08
-#define IXGBE_LSECRXSCH         0x08F0C
-#define IXGBE_LSECRXSA(_i)      (0x08F10 + (4 * (_i))) /* 2 of these (0-1) */
-#define IXGBE_LSECRXPN(_i)      (0x08F18 + (4 * (_i))) /* 2 of these (0-1) */
-#define IXGBE_LSECRXKEY(_n, _m) (0x08F20 + ((0x10 * (_n)) + (4 * (_m))))
-#define IXGBE_LSECTXUT          0x08A3C /* OutPktsUntagged */
-#define IXGBE_LSECTXPKTE        0x08A40 /* OutPktsEncrypted */
-#define IXGBE_LSECTXPKTP        0x08A44 /* OutPktsProtected */
-#define IXGBE_LSECTXOCTE        0x08A48 /* OutOctetsEncrypted */
-#define IXGBE_LSECTXOCTP        0x08A4C /* OutOctetsProtected */
-#define IXGBE_LSECRXUT          0x08F40 /* InPktsUntagged/InPktsNoTag */
-#define IXGBE_LSECRXOCTD        0x08F44 /* InOctetsDecrypted */
-#define IXGBE_LSECRXOCTV        0x08F48 /* InOctetsValidated */
-#define IXGBE_LSECRXBAD         0x08F4C /* InPktsBadTag */
-#define IXGBE_LSECRXNOSCI       0x08F50 /* InPktsNoSci */
-#define IXGBE_LSECRXUNSCI       0x08F54 /* InPktsUnknownSci */
-#define IXGBE_LSECRXUNCH        0x08F58 /* InPktsUnchecked */
-#define IXGBE_LSECRXDELAY       0x08F5C /* InPktsDelayed */
-#define IXGBE_LSECRXLATE        0x08F60 /* InPktsLate */
-#define IXGBE_LSECRXOK(_n)      (0x08F64 + (0x04 * (_n))) /* InPktsOk */
-#define IXGBE_LSECRXINV(_n)     (0x08F6C + (0x04 * (_n))) /* InPktsInvalid */
-#define IXGBE_LSECRXNV(_n)      (0x08F74 + (0x04 * (_n))) /* InPktsNotValid */
-#define IXGBE_LSECRXUNSA        0x08F7C /* InPktsUnusedSa */
-#define IXGBE_LSECRXNUSA        0x08F80 /* InPktsNotUsingSa */
-
-/* LinkSec (MacSec) Bit Fields and Masks */
-#define IXGBE_LSECTXCAP_SUM_MASK        0x00FF0000
-#define IXGBE_LSECTXCAP_SUM_SHIFT       16
-#define IXGBE_LSECRXCAP_SUM_MASK        0x00FF0000
-#define IXGBE_LSECRXCAP_SUM_SHIFT       16
-
-#define IXGBE_LSECTXCTRL_EN_MASK        0x00000003
-#define IXGBE_LSECTXCTRL_DISABLE        0x0
-#define IXGBE_LSECTXCTRL_AUTH           0x1
-#define IXGBE_LSECTXCTRL_AUTH_ENCRYPT   0x2
-#define IXGBE_LSECTXCTRL_AISCI          0x00000020
-#define IXGBE_LSECTXCTRL_PNTHRSH_MASK   0xFFFFFF00
-#define IXGBE_LSECTXCTRL_RSV_MASK       0x000000D8
-
-#define IXGBE_LSECRXCTRL_EN_MASK        0x0000000C
-#define IXGBE_LSECRXCTRL_EN_SHIFT       2
-#define IXGBE_LSECRXCTRL_DISABLE        0x0
-#define IXGBE_LSECRXCTRL_CHECK          0x1
-#define IXGBE_LSECRXCTRL_STRICT         0x2
-#define IXGBE_LSECRXCTRL_DROP           0x3
-#define IXGBE_LSECRXCTRL_PLSH           0x00000040
-#define IXGBE_LSECRXCTRL_RP             0x00000080
-#define IXGBE_LSECRXCTRL_RSV_MASK       0xFFFFFF33
-
 /* IpSec Registers */
 #define IXGBE_IPSTXIDX          0x08900
 #define IXGBE_IPSTXSALT         0x08904
-- 
2.31.1

