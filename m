Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 471E6827C8E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jan 2024 02:33:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A56BC813CE;
	Tue,  9 Jan 2024 01:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A56BC813CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704764012;
	bh=eZDr1kA1ECEWSPGCOJwhTVUWB7HQ/0HVXr+n1tniRaE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4foJeHz33Lk8LwJH+UwGm9O5O/CDz5gt5w1WsfRHON0GyzUKkTCiZPVQyXzi18FWn
	 daxcnYX8yhO8Sw34oCOFCnwSFw7JW8IGbL0gfGeEKUQtVQx6dN5UjOqXkWSy3+Zpbk
	 vf632L5jhZhWfXd3tPgKoVFKE/2r1OncbtDXcbjhELSl+FSLu3MGrs2mOiPvfELS/h
	 E9tyw3KEbHjmHBBboZIxWhf7TL5KkSS4Wt2XvYfbP1QJXur6BAtb2EyL4iS2dSWKnb
	 QMNEJwNkctiS3e+oJlIlTOLX6rQzfKVnuHWRHrnAzjPeuO4j4Hgxdxf8ASZIr0tBfg
	 c2zAIVFZbMr8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OwyApVSbuGg; Tue,  9 Jan 2024 01:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F195812E6;
	Tue,  9 Jan 2024 01:33:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F195812E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7951BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 01:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3301160BB6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 01:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3301160BB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUs-56CRVTTU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jan 2024 01:33:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5AE160A88
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jan 2024 01:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5AE160A88
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="429238069"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="429238069"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 17:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="23375456"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by orviesa002.jf.intel.com with ESMTP; 08 Jan 2024 17:33:23 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Jan 2024 17:32:29 -0800
Message-ID: <20240109013229.773552-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704764004; x=1736300004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y1EHdcSBQkUWe+wb/IxTiGJCa2LDP0InuuawIHC0vLQ=;
 b=XVGIEwtU5fg3WyM6SrRv4Dk9X2jDAG8mhNF4lnQRGbVtt+Rpre7ZV3sd
 vQvSrWenw+KVFN9Kb1XxJdP5Zr1eH2KMYGtU9vc76R0En+A0ftVuut0Vn
 Iy2p7/pmEqga9TCzuQvyWIHqO3BhV9KpPcYrmWu/xtlWwV1zjmAgvN0Sv
 r2kd972ZPml+vokBaNaEz7s9g1IY2vfrulMuU6Ur8r9bpxZkN2SIrn+Ae
 zM9Dnk7ftwTEng6uTaY+CMchPiWL90WEnLxYbqLZnhthE9433W2lMzhkb
 dHDYRcCePSvDWITJIJCK72RRRfxGA/H5r6ps/XLPnrEW3EVzrAlGGA8wb
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XVGIEwtU
Subject: [Intel-wired-lan] [PATCH iwl-net v3] idpf: avoid compiler padding
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
Cc: pmenzel@molgen.mpg.de, emil.s.tantilov@intel.com, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, horms@kernel.org,
 przemyslaw.kitszel@intel.com
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
attribute for the virtchnl2_ptype struct. Also align the
structure by using "__aligned(2)" for better code optimization.

Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

---
v3:
 - add "__aligned(2)" structure attribute for better code optimization

v2:
 - add the kconfig option causing the compile failure to the commit message
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 8dc83788972..4a3c4454d25 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -978,7 +978,7 @@ struct virtchnl2_ptype {
 	u8 proto_id_count;
 	__le16 pad;
 	__le16 proto_id[];
-};
+} __packed __aligned(2);
 VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
 
 /**
-- 
2.43.0

