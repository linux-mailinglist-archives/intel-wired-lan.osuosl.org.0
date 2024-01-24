Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D777A839D99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 01:19:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7053446D76;
	Wed, 24 Jan 2024 00:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7053446D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706055585;
	bh=EnFvRZBnsvcpI3gHwuga0QTf+dfPhLSs1JazEtKrgbA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ee/6NEj+R/pp1FgQexFlwaN20xatwXozzpG311iBIbTnX00kKnrZK9AFafaFKh/4g
	 0WMAwN5L1yh8jgm579h9bGhEV8TSOMONGMuX32IroVos9DEh1hkw1+f+IluGjfF16v
	 BrO7+Wa+TxrU2SUhL5GQUuLP1pJLwWUNnJnmgW81M5D51BUzKk9jJiTixptITBM8Dj
	 scjPkleY31td0bY2m6IfT3xMR40HRNPjUwH6e1MpY9O3TAtYukyBk13Zt6eQdVzMjt
	 5Ik9oIb6eiDf68TEk1zqBLZR4UGVFdW7dCPMqi+tcMEwDxwiFvT6u9MZvwAqBDchAo
	 HK8sL/5vkGgyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1CEPBLOX7_t; Wed, 24 Jan 2024 00:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAE1646F1F;
	Wed, 24 Jan 2024 00:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAE1646F1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7FDF1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 00:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 731FB40278
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 00:19:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 731FB40278
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YkJMJAZ6VfHw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 00:19:37 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jan 2024 00:19:37 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DB344026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DB344026F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 00:19:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="592857"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; 
   d="scan'208";a="592857"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 16:12:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; 
   d="scan'208";a="1793470"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmviesa003.fm.intel.com with ESMTP; 23 Jan 2024 16:12:28 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 16:10:26 -0800
Message-ID: <20240124001026.2627-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706055577; x=1737591577;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VxtsDY4+0bWaGP6Z1n26I6a4V22qrx/u5kJOx/eshW4=;
 b=Efpbm926w1lbVQ8gpSRMw9HXIQ4okwpnvNgG2Idc4F2qC7ewLTpIcRfq
 UJnN2ClzbUQsRlM6alX4C9wyJcvcsFlEFRTbwL5krpKjweGe8W+OAKCd0
 zdP27YHFn0om/NxKrS0JGvdvTPCcVQkGDUGCUrMqQcMLHYuXUKXIma6vS
 s+7klffHrvyrpgJjMBeJDYfl0JgM17+h3AGEHTa7HkrbLdsf+hbx/bB7e
 so0ifk/MirG4PXK+7QLXAJ2/FanOGjVXmMK2ZSqM0W5S+K3EnmxQX0xP2
 q92KmPUXpgApLTm9aG0nBKDyuUfa7KlouhAWfEcwUfStB7n2nsPaxLpmH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Efpbm926
Subject: [Intel-wired-lan] [PATCH iwl-net v4] idpf: avoid compiler padding
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
Cc: pmenzel@molgen.mpg.de, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 emil.s.tantilov@intel.com, netdev@vger.kernel.org, David.Laight@ACULAB.COM,
 horms@kernel.org, przemyslaw.kitszel@intel.com
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
While at it, swap the static_assert conditional statement
variables.

Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-lkp@intel.com
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

---
v4:
 - swap the static_assert conditional statement variables

v3:
 - add "__aligned(2)" structure attribute for better code optimization

v2:
 - add the kconfig option causing the compile failure to the commit message
---
 drivers/net/ethernet/intel/idpf/virtchnl2.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 8dc83788972..506036e7df0 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -23,7 +23,7 @@
  * is not exactly the correct length.
  */
 #define VIRTCHNL2_CHECK_STRUCT_LEN(n, X)	\
-	static_assert((n) == sizeof(struct X))
+	static_assert(sizeof(struct X) == (n))
 
 /* New major set of opcodes introduced and so leaving room for
  * old misc opcodes to be added in future. Also these opcodes may only
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

