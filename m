Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIXNIDp7wWkQTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F381D2FA324
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BF7981DD8;
	Mon, 23 Mar 2026 17:41:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5J0r-SqIX27; Mon, 23 Mar 2026 17:41:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35F8C81CE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774287669;
	bh=NdSiD/jaDZV2H2FtbnKXrI+P+5nyI7fEdzIvDWq01h4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TUfkw/338Z+p7ESW1K9wcws0clMB4m48gtNfpxwuaBkOGAiAbOt6yjihXKLXQ1YU7
	 IRPDf4IRXOFdIELU01orBN1HjeAVciAb1bQ0yjgI623MBs8cpS8nMuG3jQ0AHaKblO
	 HsmaRbkpS+wIMWaOnkAaaEf1HKX2lK5/yCTDcwnVGaFMJ6oT0HM6zS/9bEPqg77+56
	 wzqS4UVRYOZtKxEqMtDdIBtnPOBgqkU3acWeJSFyvHdMQFOOHXku3nGYv/oC3iq88B
	 CK+z1XZpfOhT91L2DfxUqmnnegJn3F7AcoaDPC3e/xqtuOYjO24iWBCjtiD3/Pd3MG
	 RUC9DK1mzuKGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35F8C81CE1;
	Mon, 23 Mar 2026 17:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EEB6353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80A0881CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w16-tJ8vWOjY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 17:41:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F002F81C58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F002F81C58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F002F81C58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:03 +0000 (UTC)
X-CSE-ConnectionGUID: m/rqxOHoTK++yzqM0rmoSA==
X-CSE-MsgGUID: tHKqAsfJS+GLAdjjWf1R5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75484628"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75484628"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:41:03 -0700
X-CSE-ConnectionGUID: p46hkNv2RLqW+JT7oJD8Ew==
X-CSE-MsgGUID: OuwHNLYoQLuFarWdGJdTFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228576625"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 23 Mar 2026 10:40:57 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7CA3F312F7;
 Mon, 23 Mar 2026 17:40:54 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2026 18:40:32 +0100
Message-ID: <20260323174052.5355-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260323174052.5355-1-larysa.zaremba@intel.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774287664; x=1805823664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mf6qe/REY8LHokSO7Jw1rbpt7BXYZUjEuNOq23Zdlnc=;
 b=DurCjYYeu5mc9wBjcVlIcas7Nmjjl30kRe6i0FCnAGwiMpMO6i/FMNaU
 bIOe7w+JLAgZ7ywr873OamuUrQk4z71tNQVGfrys8lDCBn1Qi1ELlsGRf
 UvLkFtfkRvJ26KIk2HGZtdcdTmCtiIqeF8PJu+Lp6cZj9xvKmUmyDCiHx
 YUCoa25SdFcx0hh8GB6nvbhnxnGKUeQJb4Vy+glzgZRb7vERVFktqqJXb
 GnRHl0i4ZX8UAM7Y9XXrckZvUEymGPHbU4g1XrN1ktnyT+0gdhLQILujj
 mqJAUVCBE77JFADf36hY0mZAe/WpScruV4mGotc3mVi0Z30OUjH+dP+YA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DurCjYYe
Subject: [Intel-wired-lan] [PATCH iwl-next v6 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: F381D2FA324
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Victor Raj <victor.raj@intel.com>

include/linux/net houses a single folder "intel", meanwhile
include/linux/intel is vacant. On top of that, it would be useful to place
all iavf headers together with other intel networking headers,
same goes for virtchnl2 headers which will be used by both idpf and ixd
drivers.

Move abovementioned intel header files into new folder include/linux/intel.
Also, assign new folder to both intel and general networking maintainers.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 MAINTAINERS                                                 | 6 +++---
 drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
 drivers/infiniband/hw/irdma/icrdma_if.c                     | 2 +-
 drivers/infiniband/hw/irdma/ig3rdma_if.c                    | 2 +-
 drivers/infiniband/hw/irdma/main.c                          | 2 +-
 drivers/infiniband/hw/irdma/main.h                          | 2 +-
 drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h           | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c              | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c                 | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
 drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h           | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
 drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h             | 2 +-
 drivers/net/ethernet/intel/ice/ice_base.c                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
 drivers/net/ethernet/intel/ice/ice_flow.h                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_idc_int.h                | 4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
 drivers/net/ethernet/intel/ice/ice_type.h                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
 drivers/net/ethernet/intel/ice/virt/virtchnl.h              | 2 +-
 drivers/net/ethernet/intel/idpf/idpf.h                      | 6 +++---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h             | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h               | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h          | 2 +-
 drivers/net/ethernet/intel/libie/adminq.c                   | 2 +-
 drivers/net/ethernet/intel/libie/fwlog.c                    | 2 +-
 drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
 include/linux/{net => }/intel/i40e_client.h                 | 0
 include/linux/{net => }/intel/iidc_rdma.h                   | 0
 include/linux/{net => }/intel/iidc_rdma_ice.h               | 0
 include/linux/{net => }/intel/iidc_rdma_idpf.h              | 0
 include/linux/{net => }/intel/libie/adminq.h                | 0
 include/linux/{net => }/intel/libie/fwlog.h                 | 2 +-
 include/linux/{net => }/intel/libie/pctype.h                | 0
 include/linux/{net => }/intel/libie/rx.h                    | 0
 include/linux/{avf => intel}/virtchnl.h                     | 0
 .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
 .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
 55 files changed, 52 insertions(+), 54 deletions(-)
 rename include/linux/{net => }/intel/i40e_client.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma_ice.h (100%)
 rename include/linux/{net => }/intel/iidc_rdma_idpf.h (100%)
 rename include/linux/{net => }/intel/libie/adminq.h (100%)
 rename include/linux/{net => }/intel/libie/fwlog.h (98%)
 rename include/linux/{net => }/intel/libie/pctype.h (100%)
 rename include/linux/{net => }/intel/libie/rx.h (100%)
 rename include/linux/{avf => intel}/virtchnl.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
 rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index ff6f17458f19..42fb616f8627 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12819,8 +12819,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
 F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
-F:	include/linux/avf/virtchnl.h
-F:	include/linux/net/intel/*/
+F:	include/linux/intel/
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
 M:	Krzysztof Czurylo <krzysztof.czurylo@intel.com>
@@ -14559,7 +14558,7 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 T:	git https://github.com/alobakin/linux.git
 F:	drivers/net/ethernet/intel/libie/
-F:	include/linux/net/intel/libie/
+F:	include/linux/intel/libie/
 K:	libie
 
 LIBNVDIMM BTT: BLOCK TRANSLATION TABLE
@@ -18319,6 +18318,7 @@ F:	include/linux/fcdevice.h
 F:	include/linux/fddidevice.h
 F:	include/linux/if_*
 F:	include/linux/inetdevice.h
+F:	include/linux/intel/
 F:	include/linux/netdev*
 F:	include/linux/platform_data/wiznet.h
 F:	include/uapi/linux/cn_proc.h
diff --git a/drivers/infiniband/hw/irdma/i40iw_if.c b/drivers/infiniband/hw/irdma/i40iw_if.c
index 4ff3ad7856aa..b084c01714ee 100644
--- a/drivers/infiniband/hw/irdma/i40iw_if.c
+++ b/drivers/infiniband/hw/irdma/i40iw_if.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2015 - 2021 Intel Corporation */
 #include "main.h"
 #include "i40iw_hw.h"
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/i40e_client.h>
 
 static struct i40e_client i40iw_client;
 
diff --git a/drivers/infiniband/hw/irdma/icrdma_if.c b/drivers/infiniband/hw/irdma/icrdma_if.c
index 2172a2092e3f..3f37029acdd3 100644
--- a/drivers/infiniband/hw/irdma/icrdma_if.c
+++ b/drivers/infiniband/hw/irdma/icrdma_if.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2015 - 2024 Intel Corporation */
 
 #include "main.h"
-#include <linux/net/intel/iidc_rdma_ice.h>
+#include <linux/intel/iidc_rdma_ice.h>
 
 static void icrdma_prep_tc_change(struct irdma_device *iwdev)
 {
diff --git a/drivers/infiniband/hw/irdma/ig3rdma_if.c b/drivers/infiniband/hw/irdma/ig3rdma_if.c
index b3e49e5bef10..035b421f0934 100644
--- a/drivers/infiniband/hw/irdma/ig3rdma_if.c
+++ b/drivers/infiniband/hw/irdma/ig3rdma_if.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2023 - 2024 Intel Corporation */
 
 #include "main.h"
-#include <linux/net/intel/iidc_rdma_idpf.h>
+#include <linux/intel/iidc_rdma_idpf.h>
 #include "ig3rdma_hw.h"
 
 static void ig3rdma_idc_core_event_handler(struct iidc_rdma_core_dev_info *cdev_info,
diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
index 95957d52883d..9781699ad57c 100644
--- a/drivers/infiniband/hw/irdma/main.c
+++ b/drivers/infiniband/hw/irdma/main.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
 /* Copyright (c) 2015 - 2021 Intel Corporation */
 #include "main.h"
-#include <linux/net/intel/iidc_rdma_idpf.h>
+#include <linux/intel/iidc_rdma_idpf.h>
 
 MODULE_ALIAS("i40iw");
 MODULE_DESCRIPTION("Intel(R) Ethernet Protocol Driver for RDMA");
diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
index d320d1a228b3..22ccd7d22c42 100644
--- a/drivers/infiniband/hw/irdma/main.h
+++ b/drivers/infiniband/hw/irdma/main.h
@@ -30,7 +30,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #endif
 #include <linux/auxiliary_bus.h>
-#include <linux/net/intel/iidc_rdma.h>
+#include <linux/intel/iidc_rdma.h>
 #include <rdma/ib_smi.h>
 #include <rdma/ib_verbs.h>
 #include <rdma/ib_pack.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index dcb50c2e1aa2..94336498b95c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -8,8 +8,8 @@
 #include <linux/pci.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/types.h>
-#include <linux/avf/virtchnl.h>
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/virtchnl.h>
+#include <linux/intel/i40e_client.h>
 #include <net/devlink.h>
 #include <net/pkt_cls.h>
 #include <net/udp_tunnel.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index cc02a85ad42b..e70f0aa728b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_ADMINQ_CMD_H_
 #define _I40E_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 #include <linux/bits.h>
 #include <linux/types.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 84a97ca8a6d8..b6cf1f666c89 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -3,7 +3,7 @@
 
 #include <linux/list.h>
 #include <linux/errno.h>
-#include <linux/net/intel/i40e_client.h>
+#include <linux/intel/i40e_client.h>
 
 #include "i40e.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 59f5c1e810eb..dab9dfcf7bda 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2021 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/etherdevice.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 3da9ec49cc74..94e6d411e6b8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -3,7 +3,7 @@
 
 /* ethtool support for i40e */
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include "i40e_devids.h"
 #include "i40e_diag.h"
 #include "i40e_txrx_common.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 926d001b2150..aba57ef7e058 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3,7 +3,7 @@
 
 #include <generated/utsrelease.h>
 #include <linux/crash_dump.h>
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index 26bb7bffe361..9d0cd6aabdcb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -5,7 +5,7 @@
 #define _I40E_PROTOTYPE_H_
 
 #include <linux/ethtool.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "i40e_debug.h"
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 894f2d06d39d..4ffdb007c41a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2,8 +2,8 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
-#include <linux/net/intel/libie/pctype.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/pctype.h>
+#include <linux/intel/libie/rx.h>
 #include <linux/prefetch.h>
 #include <linux/sctp.h>
 #include <net/mpls.h>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 1e5fd63d47f4..e630493e9139 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_TXRX_H_
 #define _I40E_TXRX_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 #include <net/xdp.h>
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index f558b45725c8..a03ecddfb956 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_VIRTCHNL_PF_H_
 #define _I40E_VIRTCHNL_PF_H_
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/netdevice.h>
 #include "i40e_type.h"
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e9fb0a0919e3..92c160c98067 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -37,7 +37,7 @@
 #include <net/net_shaper.h>
 
 #include "iavf_type.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "iavf_txrx.h"
 #include "iavf_fdir.h"
 #include "iavf_adv_rss.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
index 0482c9ce9b9c..12e84e1e971b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _IAVF_ADMINQ_CMD_H_
 #define _IAVF_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 /* This header file defines the iavf Admin Queue commands and is shared between
  * iavf Firmware and Software.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 614a886bca99..9bc8bdc339c7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/bitfield.h>
 #include "iavf_type.h"
 #include "iavf_adminq.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7925ee152c76..85e9ab142bf0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <net/netdev_lock.h>
 
 #include "iavf.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 7f9f9dbf959a..a3348b063723 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -6,7 +6,7 @@
 
 #include "iavf_type.h"
 #include "iavf_alloc.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 
 /* Prototypes for shared code functions that are not in
  * the standard function pointer structures.  These are
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 363c42bf3dcf..275b11dd0c60 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -2,7 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bitfield.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <linux/prefetch.h>
 
 #include "iavf.h"
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index df49b0b1d54a..bc8a6068461d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -4,7 +4,7 @@
 #ifndef _IAVF_TXRX_H_
 #define _IAVF_TXRX_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 
 /* Interrupt Throttling and Rate Limiting Goodies */
 #define IAVF_DEFAULT_IRQ_WORK      256
diff --git a/drivers/net/ethernet/intel/iavf/iavf_types.h b/drivers/net/ethernet/intel/iavf/iavf_types.h
index a095855122bf..270bc35f933d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_types.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_types.h
@@ -4,9 +4,7 @@
 #ifndef _IAVF_TYPES_H_
 #define _IAVF_TYPES_H_
 
-#include "iavf_types.h"
-
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/ptp_clock_kernel.h>
 
 /* structure used to queue PTP commands for processing */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a52c100dcbc5..dc77850de73b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 
 #include "iavf.h"
 #include "iavf_ptp.h"
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2b2b22af42be..03f304c8a287 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -36,7 +36,7 @@
 #include <linux/bpf.h>
 #include <linux/btf.h>
 #include <linux/auxiliary_bus.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include <linux/cpu_rmap.h>
 #include <linux/dim.h>
 #include <linux/gnss.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 859e9c66f3e7..b2685ebd37d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_ADMINQ_CMD_H_
 #define _ICE_ADMINQ_CMD_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 /* This header file defines the Admin Queue commands, error codes and
  * descriptor format. It is shared between Firmware and Software.
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1667f686ff75..957280613e02 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include <net/xdp_sock_drv.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include "ice_base.h"
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e700ac0dc347..ff6393e9be0c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -11,7 +11,7 @@
 #include "ice_nvm.h"
 #include "ice_flex_pipe.h"
 #include "ice_parser.h"
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_switch.h"
 #include "ice_fdir.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index 6c6cdc8addb1..7323e26afc0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -4,7 +4,7 @@
 #ifndef _ICE_FLOW_H_
 #define _ICE_FLOW_H_
 
-#include <linux/net/intel/libie/pctype.h>
+#include <linux/intel/libie/pctype.h>
 
 #include "ice_flex_type.h"
 #include "ice_parser.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_idc_int.h b/drivers/net/ethernet/intel/ice/ice_idc_int.h
index 17dbfcfb6a2a..abe91f313441 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc_int.h
+++ b/drivers/net/ethernet/intel/ice/ice_idc_int.h
@@ -4,8 +4,8 @@
 #ifndef _ICE_IDC_INT_H_
 #define _ICE_IDC_INT_H_
 
-#include <linux/net/intel/iidc_rdma.h>
-#include <linux/net/intel/iidc_rdma_ice.h>
+#include <linux/intel/iidc_rdma.h>
+#include <linux/intel/iidc_rdma_ice.h>
 
 struct ice_pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a2cd4cf37734..8e6f348ac236 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -7,7 +7,7 @@
 #include <linux/netdevice.h>
 #include <linux/prefetch.h>
 #include <linux/bpf_trace.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <net/libeth/xdp.h>
 #include <net/dsfield.h>
 #include <net/mpls.h>
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index e695a664e53d..66d211aa0833 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -2,7 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include <linux/filter.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 #include <net/libeth/xdp.h>
 
 #include "ice_txrx_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1e82f4c40b32..6e6dd0aa515e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -17,7 +17,7 @@
 #include "ice_protocol_type.h"
 #include "ice_sbq_cmd.h"
 #include "ice_vlan_mode.h"
-#include <linux/net/intel/libie/fwlog.h>
+#include <linux/intel/libie/fwlog.h>
 #include <linux/wait.h>
 #include <net/dscp.h>
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 7a9c75d1d07c..c520e22e3d0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -10,7 +10,7 @@
 #include <linux/mutex.h>
 #include <linux/pci.h>
 #include <net/devlink.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_type.h"
 #include "ice_flow.h"
 #include "virt/fdir.h"
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.h b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
index 71bb456e2d71..f7f909424098 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.h
@@ -7,7 +7,7 @@
 #include <linux/types.h>
 #include <linux/bitops.h>
 #include <linux/if_ether.h>
-#include <linux/avf/virtchnl.h>
+#include <linux/intel/virtchnl.h>
 #include "ice_vf_lib.h"
 
 /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index b206fba092c8..fe6ca5fcc5e3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -21,10 +21,10 @@ struct idpf_rss_data;
 #include <linux/ethtool_netlink.h>
 #include <net/gro.h>
 
-#include <linux/net/intel/iidc_rdma.h>
-#include <linux/net/intel/iidc_rdma_idpf.h>
+#include <linux/intel/iidc_rdma.h>
+#include <linux/intel/iidc_rdma_idpf.h>
+#include <linux/intel/virtchnl2.h>
 
-#include "virtchnl2.h"
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 4be5b3b6d3ed..e101ffb20ae0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -13,7 +13,7 @@
 #include <net/xdp.h>
 
 #include "idpf_lan_txrx.h"
-#include "virtchnl2_lan_desc.h"
+#include <linux/intel/virtchnl2_lan_desc.h>
 
 #define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
index fe065911ad5a..762b477e019c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
@@ -4,7 +4,7 @@
 #ifndef _IDPF_VIRTCHNL_H_
 #define _IDPF_VIRTCHNL_H_
 
-#include "virtchnl2.h"
+#include <linux/intel/virtchnl2.h>
 
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC	(60 * 1000)
 #define IDPF_VC_XN_IDX_M		GENMASK(7, 0)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61f2ef67defd..94e00ab96692 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -7,7 +7,7 @@
 #include <linux/types.h>
 #include <linux/mdio.h>
 #include <linux/netdevice.h>
-#include <linux/net/intel/libie/fwlog.h>
+#include <linux/intel/libie/fwlog.h>
 #include "ixgbe_type_e610.h"
 
 /* Device IDs */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index ff8d640a50b1..4bcdebc37eb1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -4,7 +4,7 @@
 #ifndef _IXGBE_TYPE_E610_H_
 #define _IXGBE_TYPE_E610_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 #define BYTES_PER_DWORD	4
 
diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
index 7b4ff479e7e5..5a3ea8eb45c2 100644
--- a/drivers/net/ethernet/intel/libie/adminq.c
+++ b/drivers/net/ethernet/intel/libie/adminq.c
@@ -2,7 +2,7 @@
 /* Copyright (C) 2025 Intel Corporation */
 
 #include <linux/module.h>
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 static const char * const libie_aq_str_arr[] = {
 #define LIBIE_AQ_STR(x)					\
diff --git a/drivers/net/ethernet/intel/libie/fwlog.c b/drivers/net/ethernet/intel/libie/fwlog.c
index 4d0c8370386b..96698bf2d040 100644
--- a/drivers/net/ethernet/intel/libie/fwlog.c
+++ b/drivers/net/ethernet/intel/libie/fwlog.c
@@ -4,7 +4,7 @@
 #include <linux/debugfs.h>
 #include <linux/export.h>
 #include <linux/fs.h>
-#include <linux/net/intel/libie/fwlog.h>
+#include <linux/intel/libie/fwlog.h>
 #include <linux/pci.h>
 #include <linux/random.h>
 #include <linux/vmalloc.h>
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 6fda656afa9c..e163b8a66aea 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -4,7 +4,7 @@
 #define DEFAULT_SYMBOL_NAMESPACE	"LIBIE"
 
 #include <linux/export.h>
-#include <linux/net/intel/libie/rx.h>
+#include <linux/intel/libie/rx.h>
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
  * bitfield struct.
diff --git a/include/linux/net/intel/i40e_client.h b/include/linux/intel/i40e_client.h
similarity index 100%
rename from include/linux/net/intel/i40e_client.h
rename to include/linux/intel/i40e_client.h
diff --git a/include/linux/net/intel/iidc_rdma.h b/include/linux/intel/iidc_rdma.h
similarity index 100%
rename from include/linux/net/intel/iidc_rdma.h
rename to include/linux/intel/iidc_rdma.h
diff --git a/include/linux/net/intel/iidc_rdma_ice.h b/include/linux/intel/iidc_rdma_ice.h
similarity index 100%
rename from include/linux/net/intel/iidc_rdma_ice.h
rename to include/linux/intel/iidc_rdma_ice.h
diff --git a/include/linux/net/intel/iidc_rdma_idpf.h b/include/linux/intel/iidc_rdma_idpf.h
similarity index 100%
rename from include/linux/net/intel/iidc_rdma_idpf.h
rename to include/linux/intel/iidc_rdma_idpf.h
diff --git a/include/linux/net/intel/libie/adminq.h b/include/linux/intel/libie/adminq.h
similarity index 100%
rename from include/linux/net/intel/libie/adminq.h
rename to include/linux/intel/libie/adminq.h
diff --git a/include/linux/net/intel/libie/fwlog.h b/include/linux/intel/libie/fwlog.h
similarity index 98%
rename from include/linux/net/intel/libie/fwlog.h
rename to include/linux/intel/libie/fwlog.h
index 7273c78c826b..de3d7e89b768 100644
--- a/include/linux/net/intel/libie/fwlog.h
+++ b/include/linux/intel/libie/fwlog.h
@@ -4,7 +4,7 @@
 #ifndef _LIBIE_FWLOG_H_
 #define _LIBIE_FWLOG_H_
 
-#include <linux/net/intel/libie/adminq.h>
+#include <linux/intel/libie/adminq.h>
 
 /* Only a single log level should be set and all log levels under the set value
  * are enabled, e.g. if log level is set to LIBIE_FW_LOG_LEVEL_VERBOSE, then all
diff --git a/include/linux/net/intel/libie/pctype.h b/include/linux/intel/libie/pctype.h
similarity index 100%
rename from include/linux/net/intel/libie/pctype.h
rename to include/linux/intel/libie/pctype.h
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/intel/libie/rx.h
similarity index 100%
rename from include/linux/net/intel/libie/rx.h
rename to include/linux/intel/libie/rx.h
diff --git a/include/linux/avf/virtchnl.h b/include/linux/intel/virtchnl.h
similarity index 100%
rename from include/linux/avf/virtchnl.h
rename to include/linux/intel/virtchnl.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/include/linux/intel/virtchnl2.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2.h
rename to include/linux/intel/virtchnl2.h
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h b/include/linux/intel/virtchnl2_lan_desc.h
similarity index 100%
rename from drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
rename to include/linux/intel/virtchnl2_lan_desc.h
-- 
2.47.0

