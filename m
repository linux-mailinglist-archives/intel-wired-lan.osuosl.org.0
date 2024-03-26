Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511E788C993
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EFF14155D;
	Tue, 26 Mar 2024 16:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdyO7Kc0OS6R; Tue, 26 Mar 2024 16:42:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DF5240516
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471325;
	bh=3+EhFeN/ahwb5KLcnhSi6M1i+rVi+f7AaW0SRRbMR+w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gKcxvPomkmGlM2T8Pf4sLV7jKJFVLSKgEvUUGCDK8FmI8vkMppe9xOeYU7qqSCaaK
	 B7CJ2M3A7leR3Flmp79E7TONMdVB2lSHCeE9LFMr7UJYXsHQ+ob5SDGBBWHCoCgQg9
	 NOOH3rT5CtPfXqQsjkxI2zH08RaAsVPWJvSgsoUlk554sBMkXq2btHKU8tiHQa9BMA
	 CicWWL7WLUPzAPVIrXapfsJJsRe6C0ggtp+qLnHgrMI3sooXGErKxIa61RTcbFR900
	 AB1BSHHiNUTAQpR2sPQfsH5Yc3X7OHa0zvccXH2Yxu7ynLjgau82fQzcFb2Xh7F5ty
	 IzN3ET/lAS0UA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DF5240516;
	Tue, 26 Mar 2024 16:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 924D21BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F0F760B09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UF5WD2G6iDhF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:42:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A950A605DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A950A605DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A950A605DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:00 +0000 (UTC)
X-CSE-ConnectionGUID: Bo6kxHiHQmGU/KTUEbWapg==
X-CSE-MsgGUID: 9lF9/0z+Rjq1kbLnnkcJqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="24023326"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="24023326"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20667400"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 26 Mar 2024 09:41:49 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 26 Mar 2024 17:41:15 +0100
Message-ID: <20240326164116.645718-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240326164116.645718-1-aleksander.lobakin@intel.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471320; x=1743007320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pg89mGTO5MXlxmpG09iTgv01udwZKDMGXu/rADrVlfY=;
 b=eeMEBSADJso+03LGrCEubjdjMnRCrtHcibmS0cZvQEHgvLFGe0BoM/S6
 iBbFShsA98tWgIOk9xe2pdJs/4cSZ66gTkbsxnMt52unxNYpeRqIAQQgI
 a6SAVPX6oURBZZkBvwUmdquISoJYUls13HVJrtgj1HoPQYz0kYcFfRPhn
 eDL6o6cisZbyLncOICXDIwZ+UA0TuE1ZwHubhBea6BozPDelnaOFK4Yk1
 5rgEaOHzveCWdzWiGJHFREbKrt6wiW/1Kuy1XDOGDdPum0phto5Qoz+/P
 QFs2d9JLSdoXrUaQVD3LKBUyfWDf9wIGR2W9ejhrxBRbC0JakBc8Je63P
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eeMEBSAD
Subject: [Intel-wired-lan] [PATCH net-next 2/3] idpf: make virtchnl2.h
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
file, so remove this include to speed up C preprocessing.

Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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

