Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A52C3B59CC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 18:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0E5B81B99;
	Tue, 16 Sep 2025 16:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NVbs-6YAGCA9; Tue, 16 Sep 2025 16:03:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF91181B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758038588;
	bh=7x/wvf1UnwnCL0iLhemZYKWmrVT80723thBOGK+DIMw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zWK4sLj5R7lV7SmTm6tNjcs9jbQsyh2UJIsP56oWcN0jFTMQlkEp4gMBmJo5KittO
	 sqEaIku9duTNTA1sOB4ARiaOYHmWRK/HtrCbtgJSRNMGZxWmWJkyHQpvAXkQr8Ga6r
	 BsAIm2BZMJZvJSUHp45eTz3hwFs2CKjvj0u7nbQXwTgMAq51IpwK9zc6bcNgKHb8Eo
	 1ffKJc4IVgKMvjha8TyhrFr8elf51c4pMPK24z4x+BbElb1DprFMTvr4wLB4gVShoX
	 5V1bJ9kFflSxx+8gZVO32cAw9enCvNAc4BIceBhIOkQemQQGZc2SJpb/4u1FwJJBmJ
	 iqpOBuyPTytCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF91181B7B;
	Tue, 16 Sep 2025 16:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 078B712D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 16:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9EF440C8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 16:03:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Fgm8bmFeB_7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 16:03:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 821CB40C72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 821CB40C72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 821CB40C72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 16:03:05 +0000 (UTC)
X-CSE-ConnectionGUID: mkRwRy/GQB+Zy140Ea/KSw==
X-CSE-MsgGUID: GcFkzCfnSduurOvTqeYWXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60253328"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60253328"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 09:03:04 -0700
X-CSE-ConnectionGUID: /NaHcznnRSKXw68qFLgrrw==
X-CSE-MsgGUID: e06QmDa/RnS8XPbnl/BbFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="179362246"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa005.fm.intel.com with ESMTP; 16 Sep 2025 09:03:01 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 16 Sep 2025 18:01:18 +0200
Message-ID: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758038585; x=1789574585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y3oq6iu4hMkc15Bb7DayMWSnsQ4mDxaKl21fY4WENAw=;
 b=oHYso7ipUwKmKAl0vvI01lmhfPfnwiHc44sWcAXBIrONVWmTW7ZXEnQa
 iw7ZWAQBmVV/7Kp0MG7xadNk5HMvys6A8RRkyNVCtalELMweKEArMXuV2
 RN0WvrTqUJNPC6u9pODfjCEmnfeuZ5ZOzQvCbKXsYzaXZ3GOcpGUi23ZX
 tIeORzqUBFx7xsPmNj2Wy9ub76kjK0K4YfMO5LG6311m/3lkQVr/WUy8A
 Q1QQ8a3JLAcu+WozsgLaM1MaSCH4wI6Ge81RSwSUi+J8NRqZSCiE2KYCq
 f5HLZWt2JvPZZ2vIjGUxUOzw4QwIw9MKrfksVP20XIXtDP7r1iHDYHFoY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oHYso7ip
Subject: [Intel-wired-lan] [PATCH net-next] libie: fix linking with
 libie_{adminq, fwlog} when CONFIG_LIBIE=n
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 nxne.cnse.osdt.itp.upstreaming@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initially, libie contained only 1 module and I assumed that new modules
in its folder would depend on it.
However, Michał did a good job and libie_{adminq,fwlog} are completely
independent, but libie/ is still traversed by Kbuild only under
CONFIG_LIBIE != n.
This results in undefined references with certain kernel configs.

Tell Kbuild to always descend to libie/ to be able to build each module
regardless of whether the basic one is enabled.
If none of CONFIG_LIBIE* is set, Kbuild will just create an empty
built-in.a there with no side effects.

Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/all/202509140606.j8z3rE73-lkp@intel.com
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Closes: https://lore.kernel.org/all/CA+G9fYvH8d6pJRbHpOCMZFjgDCff3zcL_AsXL-nf5eB2smS8SA@mail.gmail.com
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
Sending directly to net-next to quickly unbreak net-next and
linux-next builds.
Also to net-next as the blamed commit landed recently and is
not present in any other tree.
---
 drivers/net/ethernet/intel/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 04c844ef4964..9a37dc76aef0 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -4,7 +4,7 @@
 #
 
 obj-$(CONFIG_LIBETH) += libeth/
-obj-$(CONFIG_LIBIE) += libie/
+obj-y += libie/
 
 obj-$(CONFIG_E100) += e100.o
 obj-$(CONFIG_E1000) += e1000/
-- 
2.51.0

