Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHJ4IjtU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 501503BCA52
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E9CB40ED9;
	Wed,  8 Apr 2026 13:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MMgSutdTylaP; Wed,  8 Apr 2026 13:12:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F6E040E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653943;
	bh=M3hn3EpusPrBMM8sVKlNSWkI7nmf6UUew8zywfxONAs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X2REOS+NMtWZmdOk1GpXnOVoPTLTFkLjaoKNOQRHxw6d0jcWiGUiZi+6eiGch1GkR
	 TNOa5LW/Ec9G25t89WuRZAh9e/QaB2MsT8p7Uy+FZlkPyA079kMuAQgo58Xb2y8bnF
	 ugQ3s1qJLXZL9selPiEz0uprNOGQ3AM4tzfOEahBFMc1py31E91Hr7DzfmvJ4aGlNa
	 neh8s689zELgKn5tUt0uxxGmjcGS373NLXnpMFauxsJZzIpjp7p/5so1zFOm5j13C6
	 UQugilFF3sLsZDbHkvLLX0ARjujzh+MKcMB5Fa7P12KH4Huehe/pFry+V0W6xGHVmx
	 l/TCW7kyq0DPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F6E040E98;
	Wed,  8 Apr 2026 13:12:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D8352C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B4B340E98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdSatHwAfzdf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:12:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EECB40E9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EECB40E9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EECB40E9E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:12:20 +0000 (UTC)
X-CSE-ConnectionGUID: gP/JxF91Sl+vz3FzAhbF4A==
X-CSE-MsgGUID: CkqOBbovR++0DcUyStTgEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="102087261"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="102087261"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 06:12:20 -0700
X-CSE-ConnectionGUID: K44WKe62Q/Gr4G/BWdVmCA==
X-CSE-MsgGUID: LCJkLTBfQp2x7V6nq65USw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228715057"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2026 06:12:20 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 15:12:09 +0200
Message-ID: <20260408131216.2662245-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775653940; x=1807189940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=98vFBFxoC4OfWp9o9SYGRXEL2PW2ysRQpEnIXyDvrEA=;
 b=iWXlrR0YDU+UdHQQrIrlfmq3Zh70SMbISAF/XLcUh7g2LuJSiLXObmsx
 taI4g6lys3vShol+Y8iKE1a0FGd8oq65CWRxhS0A9MTSC9/U0nwJYYAfv
 8w448+bDe/8wdwX8I+uaP4pKC6VwkelmEJ4lCUPUPZSsfBg1HhP0t7xa1
 dzraDlBDQoExHwvcRSUN18ZIfUKfzcL2DewcuuFWFYIOSUtmr1tqQlIsB
 ajtrcBU0N2Psg0h2uJyZKTDpbZyo5T0Zs4TM6yEJrst/wJ6V2TTIfUHzf
 ihs4rapbGIcJVbmWgX+01bPvuZfWQvY/QLfQd0vmlKgMKeGEKAeb6b4Qh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iWXlrR0Y
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] ixgbe: lower
 IXGBE_ITR_ADAPTIVE_MAX_USECS to prevent RX starvation
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 501503BCA52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Alexander Duyck <alexander.h.duyck@intel.com>

At the current maximum of 126 us the minimum bulk-mode interrupt rate
is ~7936 interrupts/s.  Under sustained full-line-rate bulk RX traffic
this is low enough that descriptor ring starvation can occur before the
next interrupt fires.

Lower IXGBE_ITR_ADAPTIVE_MAX_USECS from 126 to 84 us.  This raises the
minimum rate to ~11905 interrupts/s (~12K ints/s), providing enough
headroom to drain the ring before it wraps.

Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Split from monolithic ITR cleanup patch; this patch only lowers
   IXGBE_ITR_ADAPTIVE_MAX_USECS from 126 to 84.

 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 59a1cee4..b3f4d21 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -473,6 +473,6 @@ static inline unsigned int ixgbe_rx_pg_order(struct ixgbe_ring *ring)
 
 #define IXGBE_ITR_ADAPTIVE_MIN_INC	2
 #define IXGBE_ITR_ADAPTIVE_MIN_USECS	10
-#define IXGBE_ITR_ADAPTIVE_MAX_USECS	126
+#define IXGBE_ITR_ADAPTIVE_MAX_USECS	84
 #define IXGBE_ITR_ADAPTIVE_LATENCY	0x80
 #define IXGBE_ITR_ADAPTIVE_BULK		0x00
-- 
2.52.0
