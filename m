Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6058C6475F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 14:49:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9BB5805E8;
	Mon, 17 Nov 2025 13:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mujIDxAkTnIS; Mon, 17 Nov 2025 13:49:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAF7282341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763387365;
	bh=H4GqqKMZZ2S/FmDsYvLACKhbpZvRXz4RyOVrTwf0u1c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=677IjDhNU2KuvCMDzpm/5iBLrJ6zL5IdgLz11yUtJxixdgFjJqnN6532loOPIToSM
	 WDM/Hzm9Yvz1p6i59Ug71xJRUiNAZ/vWyRtFsl+D5VWk+1toxkC+/Vs7oPR3+cidRa
	 B/cIq5Hk7NRchVdl2VurFENYHR5/EqP7QLdYadYKl+d11N3SETFVoh4MgIEw+vFv2D
	 w7SXiMMnXmdzhApd2I7hcA+HHccq9q6/Ocr94cf9GctZwslsc/EhksVXfQbMHdbJPm
	 wkYgULHCwKValRO2ELIdUeXhUEXkAnUuWjt1lI6vBvLcOI0jv2nXD0e6yxZR2H4UXn
	 CnKDeamN0nRIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAF7282341;
	Mon, 17 Nov 2025 13:49:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 70CD1D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6337681D73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YlCxpmmA7uZE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 13:49:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1F948179A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1F948179A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1F948179A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:49:23 +0000 (UTC)
X-CSE-ConnectionGUID: ScdGqE6JQi6rcc7Vv96OwA==
X-CSE-MsgGUID: KWBn5KgURlGG3+wuHKi+LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65266947"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65266947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 05:49:23 -0800
X-CSE-ConnectionGUID: LmoNDX2zTaSSQKGAstbfIw==
X-CSE-MsgGUID: p7XhSVCGSCaWlHmq9U20fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190684003"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 17 Nov 2025 05:49:18 -0800
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A893537E39;
 Mon, 17 Nov 2025 13:49:16 +0000 (GMT)
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
 jayaprakash.shanmugam@intel.com, natalia.wochtman@intel.com,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 17 Nov 2025 14:48:42 +0100
Message-ID: <20251117134912.18566-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20251117134912.18566-1-larysa.zaremba@intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763387364; x=1794923364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3s6JP8cxQ1vH1cWvg8nKuw8nN1jdP30KtuJAVsHlce0=;
 b=liTpuVqeVsceQSMiEC4mn9SxmaSjoifnFMzJwmULTNn3ThL1iUcnDeIk
 yW/K4FELkvDwyjxxnUu6de0QorwQ1+1b3v76w0cqD1R5B7mCwPgmwGqbc
 ilnFoLpkt2n7YGQeTjdSIr5bfBwUYFuitHdfkzyltlX6b62IvR7D/WyUV
 oKO/0XEgp4web6N8uQBJcrdyVKQdjWdrdTSPgczjPeFRY+z3ANKH7PpDr
 +16WET5OIR7sa5t1q8pnaBFsIkXWHo46q2Z4ryxexNc4wrEnLaDYUwYwI
 IersY5Ie0sb2OEiXiVIQgm1EGR8TgZ5QuJQjox6tpfj3QtgB5E4UPnaDO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=liTpuVqe
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/15] virtchnl: introduce
 control plane version fields
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

From: Victor Raj <victor.raj@intel.com>

In the virtchnl header file, add the Control Plane software version fields.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 include/linux/intel/virtchnl2.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/intel/virtchnl2.h b/include/linux/intel/virtchnl2.h
index 02ae447cc24a..7b0821732ff3 100644
--- a/include/linux/intel/virtchnl2.h
+++ b/include/linux/intel/virtchnl2.h
@@ -505,7 +505,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  *			    sent per transmit packet without needing to be
  *			    linearized.
  * @pad: Padding.
- * @reserved: Reserved.
+ * @cp_ver_major: Control Plane major version number.
+ * @cp_ver_minor: Control Plane minor version number.
  * @device_type: See enum virtchl2_device_type.
  * @min_sso_packet_len: Min packet length supported by device for single
  *			segment offload.
@@ -556,7 +557,8 @@ struct virtchnl2_get_capabilities {
 	__le16 max_tx_hdr_size;
 	u8 max_sg_bufs_per_tx_pkt;
 	u8 pad[3];
-	u8 reserved[4];
+	__le16 cp_ver_major;
+	__le16 cp_ver_minor;
 	__le32 device_type;
 	u8 min_sso_packet_len;
 	u8 max_hdr_buf_per_lso;
-- 
2.47.0

