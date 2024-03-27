Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 838F088E5FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DD5281FFB;
	Wed, 27 Mar 2024 14:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CwkPkN0ssTIG; Wed, 27 Mar 2024 14:30:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBE481F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711549828;
	bh=2D6hMsCKaK4MZNl1YkYcAUXn7Rvxn8bww+TuYT9wsiE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vkX2j6d1SHYJ4DUqf2yl7ieLCJI6rt/2FXPglabSvm/jQtTT88xqosmvNLcBUd2Yt
	 PLs6b+AGMRIQ2NMOowKz9PoLjjfAXUhVxAQg9lPWUQl1iBmcLUhA7lP2EBHwddtc3g
	 9bG6atook9jW3tVp1TxHdNcyvQYEoRvH58rOv+2rARWHQIMM9st37ONI3UCNb7zx3b
	 vkWqXRfTFQad32igaDHUzCe1L4ScCc0KRhL/UPTYrGIoA0c1S1geAUYPzjrXioEniJ
	 B07SDuSugJ984Sc2EQjFI5mEX7un1Krxqe8YcOXazKa9Vs73bKtf6KwrHiJfqAWNMM
	 1BGHXr5NOA9gQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BBE481F8B;
	Wed, 27 Mar 2024 14:30:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 758461BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E808181F69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PVOq-LrfdH9U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:30:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3AF3B81F8B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AF3B81F8B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AF3B81F8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:23 +0000 (UTC)
X-CSE-ConnectionGUID: EI7fGFYjQAmDJkkfCfe2mw==
X-CSE-MsgGUID: 9YbroHf3TOKhjW++rPiMrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6592536"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6592536"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20973081"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 27 Mar 2024 07:23:16 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 15:22:40 +0100
Message-ID: <20240327142241.1745989-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
References: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549823; x=1743085823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XdOmxjY9WLGSoqpYiIHq0/c596ZAW41172TmKdUdESs=;
 b=ADElLRHvPDC7Y6k2ke3YEpCDSGpdNqz6jXUW60OBcJ23b+riDLruU5nD
 EewDNQBOcly+HwPrhzYdfMBZLF4iBXZ3jGW8F6MKlgLczRUukq9cEAPBp
 w/oTlgt1rXXp9cyDCjTPYkW665MeiRwrqq3b7svXr+XRxudiLzGvsC/cl
 /U9jGg5NqCuCTFivuxEI2tKwkLzTaBzgCcTlhC+x64jcj3b44doTYCsk+
 eexrZSETCXhnXN+5dM27RS4KcxVNYVvpO+PEk1KD8VEdiaSVwBG3KZA3d
 COKIaB0ZyzJzm3i+EEUf6NrIRILciUadVFzkvtiWPY3iYdTlXjIF/NHaM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ADElLRHv
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] idpf: make virtchnl2.h
 self-contained
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To ease maintaining of virtchnl2.h, which already is messy enough,
make it self-contained by adding missing if_ether.h include due to
%ETH_ALEN usage.
At the same time, virtchnl2_lan_desc.h is not used anywhere in the
file, so move this include to idpf_txrx.h to speed up C preprocessing.

Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 2 ++
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index df76493faa75..3d046b81e507 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -8,6 +8,8 @@
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
 
+#include "virtchnl2_lan_desc.h"
+
 #define IDPF_LARGE_MAX_Q			256
 #define IDPF_MAX_Q				16
 #define IDPF_MIN_Q				2
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 4a3c4454d25a..29419211b3d9 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -4,6 +4,8 @@
 #ifndef _VIRTCHNL2_H_
 #define _VIRTCHNL2_H_
 
+#include <linux/if_ether.h>
+
 /* All opcodes associated with virtchnl2 are prefixed with virtchnl2 or
  * VIRTCHNL2. Any future opcodes, offloads/capabilities, structures,
  * and defines must be prefixed with virtchnl2 or VIRTCHNL2 to avoid confusion.
@@ -17,8 +19,6 @@
  * must remain unchanged over time, so we specify explicit values for all enums.
  */
 
-#include "virtchnl2_lan_desc.h"
-
 /* This macro is used to generate compilation errors if a structure
  * is not exactly the correct length.
  */
-- 
2.44.0

