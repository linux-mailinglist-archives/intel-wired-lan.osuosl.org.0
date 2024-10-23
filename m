Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C819ACA6E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 14:45:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FEBE60844;
	Wed, 23 Oct 2024 12:45:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xRsmU0PoCiyw; Wed, 23 Oct 2024 12:45:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD0CE607FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729687527;
	bh=BCqvTZ/LEl7mGiOKdfu2qVXNBfZ8aoKGWtgmAca0QXQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ihblV1w697n9+e3SMzsfdsRw/mQhFv1I73kgoXhx+w5hW17c3hrlwwTPywqx4+xHm
	 mNllPWoCHnYRr30CTT7ZGl6yzpd86/awRjpkY/Kx2BPnJgYvNnyxfAFLWk7AnERL9J
	 ZX5eyeGknQlzTp2XhgNn7R4IpTd2+IgcaLwVsxfmWf0i4FMj5BYqIhKXgfw9tdwU7o
	 0T5JxZGozC3tRNDJUzxTb1V3NKuevyqezxJRyxc604YvtH8lQgV5NutQ/JHbxQtoH6
	 YCMQ1Bny6csK31HSGV1+68sG15HsQN9H611ZHOhhA6P+90IpkNPEuHcPIkRPhWP6SV
	 uTQPYE5sl76Ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD0CE607FA;
	Wed, 23 Oct 2024 12:45:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E2D759B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E13E40A02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:45:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mivDDinwcmb5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 12:45:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C06A409FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C06A409FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C06A409FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 12:45:23 +0000 (UTC)
X-CSE-ConnectionGUID: Y8Y+bP27Qv+V/iQM5uwq5A==
X-CSE-MsgGUID: QKAqMLLtR0KnnlrIlEvK2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51814153"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51814153"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:45:24 -0700
X-CSE-ConnectionGUID: ZHoEkKNLQpSWrmy2LG771A==
X-CSE-MsgGUID: dAEUJ/J6Snu5ClePSiu63g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80119823"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.19.66])
 by orviesa010.jf.intel.com with ESMTP; 23 Oct 2024 05:45:23 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed, 23 Oct 2024 14:43:56 +0200
Message-ID: <20241023124358.6967-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241023124358.6967-1-piotr.kwapulinski@intel.com>
References: <20241023124358.6967-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729687524; x=1761223524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I3HHJCYyOawm3B2PrzYQZA6DulgXKucpF/TAE489InI=;
 b=SoFQuhMChhKhgvNvRQ0odutGZyBJKTBC09V0M2PlxWiHxvV8uU+vK7Np
 B+8V4HGE+jwS7co0GxyC+Z/a/mlf0Cwda1W3+H61uP9K3SH2JPe6YbkIk
 lZfHuGZtJRmmEW5sviw6vUn4nmIwE3FrW6pmX+heKk0mhXj6Z0G0L8UJd
 Xgt1gzvRArPLpY8agsOX2aCdVO78Cjut7OuWuipLiiJjKt6Wk+S5c6SY2
 UhGDQ0NtBNYSZjgPnWdK2MZYfjy9hqMO+7s5w5RDXDUhEM2oV5YR0onnP
 8l+KUL4dCRadREiQkgiTT4rNcH+APua9RgcGuG6+V8lluM7BQnJdfnhwf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SoFQuhMC
Subject: [Intel-wired-lan] [PATCH iwl-next v10 5/7] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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

Required to adopt x540 specific functions by E610 device.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
index b69a680..6ed360c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
@@ -1,5 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 1999 - 2018 Intel Corporation. */
+/* Copyright(c) 1999 - 2024 Intel Corporation. */
+
+#ifndef _IXGBE_X540_H_
+#define _IXGBE_X540_H_
 
 #include "ixgbe_type.h"
 
@@ -17,3 +20,5 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw);
 int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
+
+#endif /* _IXGBE_X540_H_ */
-- 
2.43.0

