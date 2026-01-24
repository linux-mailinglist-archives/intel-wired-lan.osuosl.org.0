Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHdxDdYYdGnD2AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 01:56:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C0C7BD32
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 01:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D648660892;
	Sat, 24 Jan 2026 00:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gErIjDSVpRWv; Sat, 24 Jan 2026 00:56:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62893608D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769216209;
	bh=DELX92T88GE5kIZVDFotxEQOX/8OGO76PjFYvuf6FaM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x/8bnCMo0Nq+ocidbSLYTSpPrSe4gQcwzGVCEuiY0I8qHRAK3aCOAkmGeYFWU1Uwx
	 wqCPbjDDql9smdQuRmzMVfqPKkOuZgEtw3GqSuomJyqwrdTDkggqWCwVZ77swluEWg
	 2jAfGWTKLPxnv0rMUaiDzM1jHstc4vXnXJpV7Ccsvzou+GQPRFRE39XdDwH/Rj80w8
	 XgccxI+RT2n+HWBPBJ7kem438fa5/14Cxgfv+Dz7ih+/8Vb7HNWgZrNbJ9t8Gjvgdk
	 myuQdreBkz2/JuDEnYfTar8hQjFO7kkYxlIIaQ7pOkY4kYo+FtjMCgfWFtui3+oLX2
	 Is0QP45MR7hmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62893608D7;
	Sat, 24 Jan 2026 00:56:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BA1A122
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 00:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1EA204095D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 00:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJmI6Ht99Kf8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Jan 2026 00:56:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 37EAE40934
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37EAE40934
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37EAE40934
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jan 2026 00:56:45 +0000 (UTC)
X-CSE-ConnectionGUID: c5zZAQzsSn24UwmrToC5Ng==
X-CSE-MsgGUID: FJyduKdER36oH1wuVQNcvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81584999"
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="81584999"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 16:56:46 -0800
X-CSE-ConnectionGUID: twLP+ktBTQCGufqTGUO+jw==
X-CSE-MsgGUID: gzGievpnQ2ejZLrJO/1Erw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="237815430"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa002.jf.intel.com with ESMTP; 23 Jan 2026 16:56:43 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 0955195; Sat, 24 Jan 2026 01:56:42 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 24 Jan 2026 01:56:39 +0100
Message-ID: <20260124005639.3175766-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769216207; x=1800752207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tjwDfVUOCv7OweMTrTAC/NmQxTm0fJ23jK+CFiLTyI4=;
 b=TkBNaLxe2iNlTIuaevsynqBrnxZpqnkEa/8NjBzBtHkq4Qv7+R09vGu1
 on+1rHrSuIFfrxcvzwSreVFYMb5I33UQCjMEf0kjZi9Wgf2H5dNu/wU8J
 P4g7DEqfXBe8Y1n+ZfJ+GGujSIqo2DuSXfG3imZ7lYd1bamiGAesSCpUY
 auPqwkwJSn4CfCWVzcnsor9pHc7iZvgGuA7Tk0nqL7fz5zQYi7iLGQT/W
 rxEEkCyeVWL8L72hiC8RmJHQyYjy0smFUgp8Fwovo5r7ETM75HUhFbhyR
 GV/Q++24tLKJafvz5AAbENV3t9yR4eBW+WJzQIROV5ogezx69rxPAK7KH
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TkBNaLxe
Subject: [Intel-wired-lan] [PATCH net-next v1 1/1] i40e: Add missing header
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 24C0C7BD32
X-Rspamd-Action: no action

When cleaning up another header I have met this build error:

drivers/net/ethernet/intel/i40e/i40e_hmc.h:105:22: error: implicit declaration of function 'upper_32_bits' [-Wimplicit-function-declaration]
  105 |         val1 = (u32)(upper_32_bits(pa));                                \

This is due to missing header, add it to fix the possible issue.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_hmc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
index 480e3a883cc7..967711405919 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
@@ -4,6 +4,8 @@
 #ifndef _I40E_HMC_H_
 #define _I40E_HMC_H_
 
+#include <linux/wordpart.h>
+
 #include "i40e_alloc.h"
 #include "i40e_io.h"
 #include "i40e_register.h"
-- 
2.50.1

