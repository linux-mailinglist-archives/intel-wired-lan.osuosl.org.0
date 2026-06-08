Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SYM/E6vUJmpjlQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 16:41:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3A7657680
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 16:41:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=4ZoLtcAt;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C4EA61B94;
	Mon,  8 Jun 2026 14:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJPMtYNNhmjh; Mon,  8 Jun 2026 14:41:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF9CA61B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780929701;
	bh=u9xYIWWG0geA6ugZ9/RuH0kcvxTTFInFHsz00v6lEa4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4ZoLtcAtVp1ecEQZcNnoGSCXKo2nyuM+OOaVuLSEPZ0SMIUKH1rpXHEx5/xYuM9w7
	 SEdBzj0OcCQHwHNJOzP64913UWBFwH32+cfIICuknRw/axENpvJ/UFdI5YZOrQq52D
	 esyzGXadns4nWvc89zCpmbGk1PauG4tZJyYGvcjwlpfDLLZx5ntzdOzudBWCjgYvHd
	 m7QZZlm9IzMxm4aBh8LYcCArbJ9MHKvQRfdXgpNqJ9eIuyUCCFJ2pa4e+Fqpvnksvq
	 qumzMFPlFYZTpbZIzHGeBXN2A+mx/Key6CQHLJhiPMhciei+JIjbOR8bkXJiUOgVJK
	 nd1R+wE9bPnvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF9CA61B8B;
	Mon,  8 Jun 2026 14:41:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 95C8EEC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 14:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7ACC58425E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 14:41:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5eNINr3Ed_pW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 14:41:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9986F848D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9986F848D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9986F848D4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 14:41:37 +0000 (UTC)
X-CSE-ConnectionGUID: wD6xxnP2Smyz7cCQqOjzcQ==
X-CSE-MsgGUID: Dbcmxhw/SxOXDSrfO4DtQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81641957"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81641957"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:41:37 -0700
X-CSE-ConnectionGUID: 2FGg0PhCQAOoo4fPZDvcDw==
X-CSE-MsgGUID: 0DnUjv6rT6i6awrJDAbjWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249489708"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 08 Jun 2026 07:41:32 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9679128791;
 Mon,  8 Jun 2026 15:41:29 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Samuel Salin <Samuel.salin@intel.com>
Date: Mon,  8 Jun 2026 16:41:06 +0200
Message-ID: <20260608144127.2751230-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260608144127.2751230-1-larysa.zaremba@intel.com>
References: <20260608144127.2751230-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780929698; x=1812465698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8tzhDeO5cGCbcljUPbAaJ0s9r+9VWW9CeiAAL+1d3CI=;
 b=RfEhqGIZsMXd6TaPwhRBVxFwky/Aglw7IcoqFtsrWSUrHNrb3aEfYlac
 zZGhlHCQikyfvfWxBuNMQPmAt1gE7CvPAXdQdTyFK6eQnpCClHqC+FUIH
 MM1Ind24d21JKWkiRHUh6uKaoGFlnjZCLXOEtMUbmCuazYAoBSCUt4YqM
 /BS5yNDcpAIu5YaLYH78XEVjqqmkx3SRZ/u/2YHweXuZ5EJgSkmztYOti
 fQkSy42a9QMJT2GNwIgvwb7xH8iCpu05X8pDyVChH5Q6of7Mlkpz8q+lU
 i1Eyo0s4TGgm3cKJVEEG0tki2mFVNQPlISkY6AtwUbOvohKdY96hZ6jHm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RfEhqGIZ
Subject: [Intel-wired-lan] [PATCH iwl-next v8 01/15] virtchnl: move virtchnl
 and virtchnl2 headers to 'include/linux/net/intel'
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D3A7657680

From: Victor Raj <victor.raj@intel.com>

virtchnl2 headers will be used by both idpf and ixd drivers, so they have
to be moved to an include directory. On top of that, it would be useful to
place all iavf headers together with other intel networking headers.

Move abovementioned intel header files into 'include/linux/net/intel'.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 MAINTAINERS                                                   | 1 -
 drivers/net/ethernet/intel/i40e/i40e.h                        | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c                 | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_prototype.h              | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h            | 2 +-
 drivers/net/ethernet/intel/iavf/iavf.h                        | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_prototype.h              | 3 ++-
 drivers/net/ethernet/intel/iavf/iavf_types.h                  | 4 +---
 drivers/net/ethernet/intel/ice/ice.h                          | 2 +-
 drivers/net/ethernet/intel/ice/ice_common.h                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h                   | 2 +-
 drivers/net/ethernet/intel/ice/virt/virtchnl.h                | 2 +-
 drivers/net/ethernet/intel/idpf/idpf.h                        | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h                   | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h               | 2 +-
 include/linux/{avf => net/intel}/virtchnl.h                   | 0
 .../intel/idpf => include/linux/net/intel}/virtchnl2.h        | 0
 .../idpf => include/linux/net/intel}/virtchnl2_lan_desc.h     | 0
 19 files changed, 16 insertions(+), 18 deletions(-)
 rename include/linux/{avf => net/intel}/virtchnl.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/net/intel}/virtchnl2.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/net/intel}/virtchnl2_lan_desc.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index eb8cdcc76324..952f09b40711 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12917,7 +12917,6 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
 F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
-F:	include/linux/avf/virtchnl.h
 F:	include/linux/net/intel/*/
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 83e780919ac9..1b6a8fbaa648 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -8,8 +8,8 @@
 #include <linux/pci.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/types.h>
-#include <linux/avf/virtchnl.h>
 #include <linux/net/intel/i40e_client.h>
+#include <linux/net/intel/virtchnl.h>
 #include <net/devlink.h>
 #include <net/pkt_cls.h>
 #include <net/udp_tunnel.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 59f5c1e810eb..8dadfef2c09f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1,10 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2021 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
 #include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/etherdevice.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/pci.h>
 #include "i40e_adminq_cmd.h"
 #include "i40e_devids.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 26bb7bffe361..e3d57550090e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -5,7 +5,7 @@
 #define _I40E_PROTOTYPE_H_
 
 #include <linux/ethtool.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include "i40e_debug.h"
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index f558b45725c8..4e119c0502f3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_VIRTCHNL_PF_H_
 #define _I40E_VIRTCHNL_PF_H_
 
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/netdevice.h>
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 050f8241ef5e..dc31202b2a94 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -27,6 +27,7 @@
 #include <linux/etherdevice.h>
 #include <linux/socket.h>
 #include <linux/jiffies.h>
+#include <linux/net/intel/virtchnl.h>
 #include <net/ip6_checksum.h>
 #include <net/pkt_cls.h>
 #include <net/pkt_sched.h>
@@ -37,7 +38,6 @@
 #include <net/net_shaper.h>
 
 #include "iavf_type.h"
-#include <linux/avf/virtchnl.h>
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 614a886bca99..277193a97d91 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/bitfield.h>
 #include "iavf_type.h"
 #include "iavf_adminq.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 7f9f9dbf959a..1b1f6ede3920 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -4,9 +4,10 @@
 #ifndef _IAVF_PROTOTYPE_H_
 #define _IAVF_PROTOTYPE_H_
 
+#include <linux/net/intel/virtchnl.h>
+
 #include "iavf_type.h"
 #include "iavf_alloc.h"
-#include <linux/avf/virtchnl.h>
 
 /* Prototypes for shared code functions that are not in
  * the standard function pointer structures.  These are
diff --git a/drivers/net/ethernet/intel/iavf/iavf_types.h b/drivers/net/ethernet/intel/iavf/iavf_types.h
index a095855122bf..35d6d8fcca04 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_types.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_types.h
@@ -4,9 +4,7 @@
 #ifndef _IAVF_TYPES_H_
 #define _IAVF_TYPES_H_
 
-#include "iavf_types.h"
-
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/ptp_clock_kernel.h>
 
 /* structure used to queue PTP commands for processing */
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 725b130dd3a2..0027b93847c7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -36,7 +36,7 @@
 #include <linux/bpf.h>
 #include <linux/btf.h>
 #include <linux/auxiliary_bus.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
 #include <linux/gnss.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e700ac0dc347..d9e7861e8ce0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -5,13 +5,13 @@
 #define _ICE_COMMON_H_
 
 #include <linux/bitfield.h>
+#include <linux/net/intel/virtchnl.h>
 
 #include "ice.h"
 #include "ice_type.h"
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
 #include "ice_parser.h"
-#include <linux/avf/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 7a9c75d1d07c..fa436b3b1eac 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -8,9 +8,9 @@
 #include <linux/hashtable.h>
 #include <linux/bitmap.h>
 #include <linux/mutex.h>
+#include <linux/net/intel/virtchnl.h>
 #include <linux/pci.h>
 #include <net/devlink.h>
-#include <linux/avf/virtchnl.h>
 #include "ice_type.h"
 #include "ice_flow.h"
 #include "virt/fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.h b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
index 71bb456e2d71..d11789b3ae1f 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
@@ -7,7 +7,7 @@
 #include <linux/types.h>
 #include <linux/bitops.h>
 #include <linux/if_ether.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/net/intel/virtchnl.h>
 #include "ice_vf_lib.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index ec1b75f039bb..984944bab28b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -23,8 +23,8 @@ struct idpf_rss_data;
 
 #include <linux/net/intel/iidc_rdma.h>
 #include <linux/net/intel/iidc_rdma_idpf.h>
+#include <linux/net/intel/virtchnl2.h>
 
-#include "virtchnl2.h"
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 4be5b3b6d3ed..08b048664029 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -5,6 +5,7 @@
 #define _IDPF_TXRX_H_
 
 #include <linux/dim.h>
+#include <linux/net/intel/virtchnl2_lan_desc.h>
 
 #include <net/libeth/cache.h>
 #include <net/libeth/types.h>
@@ -13,7 +14,6 @@
 #include <net/xdp.h>
 
 #include "idpf_lan_txrx.h"
-#include "virtchnl2_lan_desc.h"
 
 #define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index 6876e3ed9d1b..972dd88cf3d2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -4,7 +4,7 @@
 #ifndef _IDPF_VIRTCHNL_H_
 #define _IDPF_VIRTCHNL_H_
 
-#include "virtchnl2.h"
+#include <linux/net/intel/virtchnl2.h>
 
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
 #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
diff --git a/include/linux/avf/virtchnl.h b/include/linux/net/intel/virtchnl.h
similarity index 100%
rename from include/linux/avf/virtchnl.h
rename to include/linux/net/intel/virtchnl.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/include/linux/net/intel/virtchnl2.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2.h
rename to include/linux/net/intel/virtchnl2.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h b/include/linux/net/intel/virtchnl2_lan_desc.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
rename to include/linux/net/intel/virtchnl2_lan_desc.h
-- 
2.47.0

