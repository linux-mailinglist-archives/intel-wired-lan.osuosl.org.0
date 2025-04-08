Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E2EA808C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 14:48:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7119F40DE6;
	Tue,  8 Apr 2025 12:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LVR7PlAmS9wn; Tue,  8 Apr 2025 12:48:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D258F40D49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744116513;
	bh=Ql/4y5W2giFY0B9cSJIsKcWtYEdswfnpF27Q/RdnYFc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3+D2XB8V+VutTna6aA8tfd02nwwhJD4Qq4UePYMYg5wGNFoRAKSunsSxtLFyLQtbX
	 xbJBY4E+TZoHF6CGJ3RnXTLdqFG5OkPsOtkCG4Pj+sVMK+pC827OutZlkqE008NNZQ
	 zo59A+4XVW33AZ4ZrghzNnj3o0QfaONypBt3UD6ZMj6nRTkA94j9L9uGLic5HhJ83b
	 HILqI47wgU6AEqYkWZAZORiW5C7iT5fgpwtBNcxLsBqjG2ciSdS0xLG6iQhfnH8GVP
	 NOebXmVD0zrM63f54+Edpm4pPKhZdh/LwtcIhgdKXeV8A4ksH4Yr+azCYgscD1aNdf
	 OLXy7b+k40w0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D258F40D49;
	Tue,  8 Apr 2025 12:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 220BE1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9B2060EAD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLw1cGl4iewJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 12:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20D246116C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20D246116C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20D246116C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:48:31 +0000 (UTC)
X-CSE-ConnectionGUID: MNoa1aLdRyamazvJ8v+mRw==
X-CSE-MsgGUID: wbX/XiAXQK2DGllraogejQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56184837"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56184837"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:48:31 -0700
X-CSE-ConnectionGUID: DDEQkvBpThKCIgPmQEMIUg==
X-CSE-MsgGUID: yXrpilqDRjaJZELGWmi6OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="133130645"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 08 Apr 2025 05:48:24 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BE58634316;
 Tue,  8 Apr 2025 13:48:21 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Tue,  8 Apr 2025 14:47:48 +0200
Message-ID: <20250408124816.11584-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250408124816.11584-1-larysa.zaremba@intel.com>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744116511; x=1775652511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zFiAG/U3+wZ83wfPMHEdhI8caLlxVdJcAyBkqGn8sjc=;
 b=mhlnSiWPi9K4lQCB6rfyUm9skh9d8UfTempV0mWBXfSVkRXQfzlXs4Hl
 J9zDRUnkveQERFrAaahyuqKgE3x8pH3QY7mbMneDqA5JNdwaMOS+YBMfq
 jwkvbNcYqNivsMEczw3XEme04YnUPLv6P0lMXNRqVZ7h3lXwn1KIjGEQ7
 0zsR/88icrW4Zzzmychfrs4z14dhKm82P43gPdFDrO+/TB8QK2BBb7RNQ
 X3ZqOqOnRaChgr2OaLwaZxIaGTOA1ivw40Wx/YVoV59CZvJ1D1OKkyS43
 FSPgsaPQ55BbMgnmRF3qTyN8ssGJrvdHvNBIVvVq99a+/LhcfCYz2kOj8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mhlnSiWP
Subject: [Intel-wired-lan] [PATCH iwl-next 02/14] virtchnl: introduce
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

In the virtchnl header file, add the Control Plane software
version fields.

Signed-off-by: Victor Raj <victor.raj@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 include/linux/intel/virtchnl2.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/intel/virtchnl2.h b/include/linux/intel/virtchnl2.h
index 63deb120359c..0f31d65823f2 100644
--- a/include/linux/intel/virtchnl2.h
+++ b/include/linux/intel/virtchnl2.h
@@ -467,7 +467,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
  *			    sent per transmit packet without needing to be
  *			    linearized.
  * @pad: Padding.
- * @reserved: Reserved.
+ * @cp_ver_major: Control Plane major version number.
+ * @cp_ver_minor: Control Plane minor version number.
  * @device_type: See enum virtchl2_device_type.
  * @min_sso_packet_len: Min packet length supported by device for single
  *			segment offload.
@@ -516,7 +517,8 @@ struct virtchnl2_get_capabilities {
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

