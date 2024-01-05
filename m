Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E11824C96
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jan 2024 02:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B68B64220E;
	Fri,  5 Jan 2024 01:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B68B64220E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704418393;
	bh=nLamign5f8zWTCNfx13liWvB0meTZnYlF3U4t2qEtkw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fQ0WNjPNEZlXSMQhdW+p+8BZDlh6KmiRO1mzz0qsSwzb4kTqsvwki5CJDEM4ZxJ8N
	 CME0bSxbK9UKIMRQnXWec73hv28d1hPWsanLF0/fQMGd0miRl4yI25Oj1vNrY7L83h
	 35Zj+kNFvxcHt3d6/v3nXzD3q67EXjMe0CB4cMOEtNkcQ6lC9Th/79eiQzWE/rZg5m
	 MK/kLuAx7Y7OrdE/ioUtmIP9SoE0j6tzyCvG0SKejDeRPu2t3WrNJ52FoKpexMcB/w
	 EH73oOegSXCRuXxwzXGatHHI0f1d+G/glGnyU/Lp/xpKkpulmuDmGbisXbQ8drPBMh
	 +l3uJNgf2ZsIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BKAKvSH0EX4R; Fri,  5 Jan 2024 01:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A289041F5A;
	Fri,  5 Jan 2024 01:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A289041F5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4489B1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 01:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 141196148F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 01:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 141196148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gkqa1FiGSscE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jan 2024 01:33:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBE8461488
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jan 2024 01:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBE8461488
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="376891826"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="376891826"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 17:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846428134"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="846428134"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jan 2024 17:33:04 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jan 2024 17:32:32 -0800
Message-ID: <20240105013232.44996-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704418385; x=1735954385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MhCUNnNwd5R0RWrXybkC6PZ1LjTOpSei8tg3aM99Dis=;
 b=nkpDMVy3/vqTfDViAxk8lXeBxHNUkDOwbCoJaqiTRfm0xSsqjUNqX9C9
 iTFU3FEk949/VTLqQQcFUlmPtTLWtgBXz8+z2X2GJ4PPulOQbfmBw96xv
 YlQe0m1xjP4hOxe2XfQ6vtgmq7D7Xr+0iIgPiT7u7ufWEhcw57dZxWeBb
 VVN/BeyfF+XPwEbDbG9j/m4CGUFwcrn6BTixKdgoRrqHN2sEqluC3Twvp
 QiPVEn9bXi8lLLVQm31Kb7WcD2lqS8N02JVaepgPSZ9QXS4qMa13foLVF
 4mXKCpRZwT/w5sybtEibtpoAkCdZ0ks4i6gvn+nZ6mpUrCHbDvLwUtu0Z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nkpDMVy3
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: avoid compiler padding
 in virtchnl2_ptype struct
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, przemyslaw.kitszel@intel.com,
 emil.s.tantilov@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the arm random config file, kconfig option 'CONFIG_AEABI' is
disabled which results in adding the compiler flag '-mabi=apcs-gnu'.
This causes the compiler to add padding in virtchnl2_ptype
structure to align it to 8 bytes, resulting in the following
size check failure:

include/linux/build_bug.h:78:41: error: static assertion failed: "(6) == sizeof(struct virtchnl2_ptype)"
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:77:34: note: in expansion of macro '__static_assert'
      77 | #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
         |                                  ^~~~~~~~~~~~~~~
drivers/net/ethernet/intel/idpf/virtchnl2.h:26:9: note: in expansion of macro 'static_assert'
      26 |         static_assert((n) == sizeof(struct X))
         |         ^~~~~~~~~~~~~
drivers/net/ethernet/intel/idpf/virtchnl2.h:982:1: note: in expansion of macro 'VIRTCHNL2_CHECK_STRUCT_LEN'
     982 | VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~

Avoid the compiler padding by using "__packed" structure
attribute for the virtchnl2_ptype struct.

Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

---
v2:
 - add the kconfig option causing the compile failure to the commit message
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 8dc83788972..dd750e6dcd0 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -978,7 +978,7 @@ struct virtchnl2_ptype {
 	u8 proto_id_count;
 	__le16 pad;
 	__le16 proto_id[];
-};
+} __packed;
 VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
 
 /**
-- 
2.43.0

