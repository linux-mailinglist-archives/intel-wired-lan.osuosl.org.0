Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 603D7898B69
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 17:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0034541BF7;
	Thu,  4 Apr 2024 15:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IYCbG54bA10h; Thu,  4 Apr 2024 15:46:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 157B341BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712245559;
	bh=unoupv5n3QrwAomgV7cHlrRCAoMmhM3ckV89LDTl408=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QRQ9iR3kYydWsCKa1rHLVze3mA8sRl9k0S3Smw9UHP22qXMt+oZZVbcp/UriYS4i8
	 RvK8LiE5Gu5DHBbFY2MCQJE2/4RMAt9EXab5jIp28dK8rylesfXB2cUiOEn5tDyaMs
	 p/HfTST0he46IbgINsrc1DC6mGkonJYku9Ny9RC45yNdtzeHtnvkmwMRo24ny90voE
	 0AwHhflw38InpH3ATxiJinlzj1jR5bcqbiPOnWZW51Z/l9ciy6Ktt4pGo7PMqdotPy
	 HfBZ6gXzCx0uRe6VGXMSL2bh2KzHokP1mcN0kLkoPbuaWl5T0vu4EjMkoAaiEfqZf9
	 PMwLzTSKm53Ng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 157B341BE3;
	Thu,  4 Apr 2024 15:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4181BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6278D6079E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:45:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PVuyQOdTjcl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 15:45:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2879360761
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2879360761
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2879360761
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:45:52 +0000 (UTC)
X-CSE-ConnectionGUID: Kcff0WK9RMSixZQol9uZog==
X-CSE-MsgGUID: 7U/sK0zJRHyKOvMXtaHP8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11312112"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11312112"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 08:45:52 -0700
X-CSE-ConnectionGUID: JijvdXvsQjy/hbUFp88OBQ==
X-CSE-MsgGUID: ju5C001VSiGcqA5UslBc4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23288042"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa005.fm.intel.com with ESMTP; 04 Apr 2024 08:45:47 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  4 Apr 2024 17:43:54 +0200
Message-ID: <20240404154402.3581254-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712245553; x=1743781553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lSZkLO8icDQO/974e3N0EcdFsRz7GiSeMcffwdumwM4=;
 b=SrssjjK75ZulUQwItWEO8+XjB3SjiPgFoWUVXXIyuVaf9e71h8kYpYOK
 wtmGAV9Ab3XIOU695NE1Yqi1P29gw82edwGUvgT8s0LOx/lXMczL1wZbz
 oC+dmNa88fDpMuUyLPfouE34YW3r7j2RJFKIPHPs08p6KCX/C/1hrX41n
 RiF/go24EekrglmeFiDv6fcs5CGpgQ2iCtI0syxpqMFeyJIkrotD+VA7q
 98axDo6E9LYQwnZ5kcDbR5+3SxbnFwljVQC6GGTx4W2MaHiHgBec3MbT7
 vOllIwttDjsrhzohI+V8zxAfBFO05TL2uVd80e7+KwZUOr1ORXiNvUiTb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SrssjjK7
Subject: [Intel-wired-lan] [PATCH net-next v9 1/9] net: intel: introduce {,
 Intel} Ethernet common library
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Not a secret there's a ton of code duplication between two and more Intel
ethernet modules.

Before introducing new changes, which would need to be copied over again,
start decoupling the already existing duplicate functionality into a new
module, which will be shared between several Intel Ethernet drivers.
Add the lookup table which converts 8/10-bit hardware packet type into
a parsed bitfield structure for easy checking packet format parameters,
such as payload level, IP version, etc. This is currently used by i40e,
ice and iavf and it's all the same in all three drivers.
The only difference introduced in this implementation is that instead of
defining a 256 (or 1024 in case of ice) element array, add unlikely()
condition to limit the input to 154 (current maximum non-reserved packet
type). There's no reason to waste 600 (or even 3600) bytes only to not
hurt very unlikely exception packets.
The hash computation function now takes payload level directly as a
pkt_hash_type. There's a couple cases when non-IP ptypes are marked as
L3 payload and in the previous versions their hash level would be 2, not
3. But skb_set_hash() only sees difference between L4 and non-L4, thus
this won't change anything at all.
The module is behind the hidden Kconfig symbol, which the drivers will
select when needed. The exports are behind 'LIBIE' namespace to limit
the scope of the functions.

Not that non-HW-specific symbols will live in yet another module,
libeth. This is done to easily distinguish pretty generic code ready
for reusing by any other vendor and/or for moving the layer up from
the code useful in Intel's 1-100G drivers only.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 MAINTAINERS                                   |   4 +-
 drivers/net/ethernet/intel/Kconfig            |   7 +
 drivers/net/ethernet/intel/libeth/Kconfig     |   8 +
 drivers/net/ethernet/intel/libie/Kconfig      |  10 +
 drivers/net/ethernet/intel/Makefile           |   3 +
 drivers/net/ethernet/intel/libeth/Makefile    |   6 +
 drivers/net/ethernet/intel/libie/Makefile     |   6 +
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   7 -
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  88 -----
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   7 -
 drivers/net/ethernet/intel/iavf/iavf_type.h   |  88 -----
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 320 ------------------
 include/linux/net/intel/libie/rx.h            |  33 ++
 include/net/libeth/rx.h                       | 125 +++++++
 drivers/net/ethernet/intel/i40e/i40e_common.c | 253 --------------
 drivers/net/ethernet/intel/i40e/i40e_main.c   |   1 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  72 +---
 drivers/net/ethernet/intel/iavf/iavf_common.c | 253 --------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   |   1 +
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  70 +---
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 111 +-----
 drivers/net/ethernet/intel/libeth/rx.c        |  52 +++
 drivers/net/ethernet/intel/libie/rx.c         | 124 +++++++
 24 files changed, 429 insertions(+), 1221 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libeth/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libie/Kconfig
 create mode 100644 drivers/net/ethernet/intel/libeth/Makefile
 create mode 100644 drivers/net/ethernet/intel/libie/Makefile
 create mode 100644 include/linux/net/intel/libie/rx.h
 create mode 100644 include/net/libeth/rx.h
 create mode 100644 drivers/net/ethernet/intel/libeth/rx.c
 create mode 100644 drivers/net/ethernet/intel/libie/rx.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 909c2c531d8e..1b71d5c5dc86 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10874,7 +10874,9 @@ F:	Documentation/networking/device_drivers/ethernet/intel/
 F:	drivers/net/ethernet/intel/
 F:	drivers/net/ethernet/intel/*/
 F:	include/linux/avf/virtchnl.h
-F:	include/linux/net/intel/iidc.h
+F:	include/linux/net/intel/
+F:	include/linux/net/intel/*/
+F:	include/net/libeth/
 
 INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
 M:	Mustafa Ismail <mustafa.ismail@intel.com>
diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 639fbb12bd35..f5efdd6f9d96 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -16,6 +16,9 @@ config NET_VENDOR_INTEL
 
 if NET_VENDOR_INTEL
 
+source "drivers/net/ethernet/intel/libeth/Kconfig"
+source "drivers/net/ethernet/intel/libie/Kconfig"
+
 config E100
 	tristate "Intel(R) PRO/100+ support"
 	depends on PCI
@@ -225,6 +228,7 @@ config I40E
 	depends on PTP_1588_CLOCK_OPTIONAL
 	depends on PCI
 	select AUXILIARY_BUS
+	select LIBIE
 	select NET_DEVLINK
 	help
 	  This driver supports Intel(R) Ethernet Controller XL710 Family of
@@ -253,6 +257,8 @@ config I40E_DCB
 # so that CONFIG_IAVF symbol will always mirror the state of CONFIG_I40EVF
 config IAVF
 	tristate
+	select LIBIE
+
 config I40EVF
 	tristate "Intel(R) Ethernet Adaptive Virtual Function support"
 	select IAVF
@@ -283,6 +289,7 @@ config ICE
 	depends on GNSS || GNSS = n
 	select AUXILIARY_BUS
 	select DIMLIB
+	select LIBIE
 	select NET_DEVLINK
 	select PLDMFW
 	select DPLL
diff --git a/drivers/net/ethernet/intel/libeth/Kconfig b/drivers/net/ethernet/intel/libeth/Kconfig
new file mode 100644
index 000000000000..af970a63c227
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2024 Intel Corporation
+
+config LIBETH
+	tristate
+	help
+	  libeth is a common library containing routines shared between several
+	  drivers, but not yet promoted to the generic kernel API.
diff --git a/drivers/net/ethernet/intel/libie/Kconfig b/drivers/net/ethernet/intel/libie/Kconfig
new file mode 100644
index 000000000000..33aff6bc8f81
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2024 Intel Corporation
+
+config LIBIE
+	tristate
+	select LIBETH
+	help
+	  libie (Intel Ethernet library) is a common library built on top of
+	  libeth and containing vendor-specific routines shared between several
+	  Intel Ethernet drivers.
diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index dacb481ee5b1..04c844ef4964 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -3,6 +3,9 @@
 # Makefile for the Intel network device drivers.
 #
 
+obj-$(CONFIG_LIBETH) += libeth/
+obj-$(CONFIG_LIBIE) += libie/
+
 obj-$(CONFIG_E100) += e100.o
 obj-$(CONFIG_E1000) += e1000/
 obj-$(CONFIG_E1000E) += e1000e/
diff --git a/drivers/net/ethernet/intel/libeth/Makefile b/drivers/net/ethernet/intel/libeth/Makefile
new file mode 100644
index 000000000000..e99d51649bb6
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2024 Intel Corporation
+
+obj-$(CONFIG_LIBETH)	+= libeth.o
+
+libeth-objs		+= rx.o
diff --git a/drivers/net/ethernet/intel/libie/Makefile b/drivers/net/ethernet/intel/libie/Makefile
new file mode 100644
index 000000000000..bf42c5aeeedd
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2024 Intel Corporation
+
+obj-$(CONFIG_LIBIE)	+= libie.o
+
+libie-objs		+= rx.o
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index ce1f11b8ad65..5a0699ca7ce5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -371,13 +371,6 @@ void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status);
 
 int i40e_set_mac_type(struct i40e_hw *hw);
 
-extern struct i40e_rx_ptype_decoded i40e_ptype_lookup[];
-
-static inline struct i40e_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
-{
-	return i40e_ptype_lookup[ptype];
-}
-
 /**
  * i40e_virtchnl_link_speed - Convert AdminQ link_speed to virtchnl definition
  * @link_speed: the speed to convert
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index d9031499697e..28568e126850 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -745,94 +745,6 @@ enum i40e_rx_desc_error_l3l4e_fcoe_masks {
 #define I40E_RXD_QW1_PTYPE_SHIFT	30
 #define I40E_RXD_QW1_PTYPE_MASK		(0xFFULL << I40E_RXD_QW1_PTYPE_SHIFT)
 
-/* Packet type non-ip values */
-enum i40e_rx_l2_ptype {
-	I40E_RX_PTYPE_L2_RESERVED			= 0,
-	I40E_RX_PTYPE_L2_MAC_PAY2			= 1,
-	I40E_RX_PTYPE_L2_TIMESYNC_PAY2			= 2,
-	I40E_RX_PTYPE_L2_FIP_PAY2			= 3,
-	I40E_RX_PTYPE_L2_OUI_PAY2			= 4,
-	I40E_RX_PTYPE_L2_MACCNTRL_PAY2			= 5,
-	I40E_RX_PTYPE_L2_LLDP_PAY2			= 6,
-	I40E_RX_PTYPE_L2_ECP_PAY2			= 7,
-	I40E_RX_PTYPE_L2_EVB_PAY2			= 8,
-	I40E_RX_PTYPE_L2_QCN_PAY2			= 9,
-	I40E_RX_PTYPE_L2_EAPOL_PAY2			= 10,
-	I40E_RX_PTYPE_L2_ARP				= 11,
-	I40E_RX_PTYPE_L2_FCOE_PAY3			= 12,
-	I40E_RX_PTYPE_L2_FCOE_FCDATA_PAY3		= 13,
-	I40E_RX_PTYPE_L2_FCOE_FCRDY_PAY3		= 14,
-	I40E_RX_PTYPE_L2_FCOE_FCRSP_PAY3		= 15,
-	I40E_RX_PTYPE_L2_FCOE_FCOTHER_PA		= 16,
-	I40E_RX_PTYPE_L2_FCOE_VFT_PAY3			= 17,
-	I40E_RX_PTYPE_L2_FCOE_VFT_FCDATA		= 18,
-	I40E_RX_PTYPE_L2_FCOE_VFT_FCRDY			= 19,
-	I40E_RX_PTYPE_L2_FCOE_VFT_FCRSP			= 20,
-	I40E_RX_PTYPE_L2_FCOE_VFT_FCOTHER		= 21,
-	I40E_RX_PTYPE_GRENAT4_MAC_PAY3			= 58,
-	I40E_RX_PTYPE_GRENAT4_MACVLAN_IPV6_ICMP_PAY4	= 87,
-	I40E_RX_PTYPE_GRENAT6_MAC_PAY3			= 124,
-	I40E_RX_PTYPE_GRENAT6_MACVLAN_IPV6_ICMP_PAY4	= 153
-};
-
-struct i40e_rx_ptype_decoded {
-	u32 known:1;
-	u32 outer_ip:1;
-	u32 outer_ip_ver:1;
-	u32 outer_frag:1;
-	u32 tunnel_type:3;
-	u32 tunnel_end_prot:2;
-	u32 tunnel_end_frag:1;
-	u32 inner_prot:4;
-	u32 payload_layer:3;
-};
-
-enum i40e_rx_ptype_outer_ip {
-	I40E_RX_PTYPE_OUTER_L2	= 0,
-	I40E_RX_PTYPE_OUTER_IP	= 1
-};
-
-enum i40e_rx_ptype_outer_ip_ver {
-	I40E_RX_PTYPE_OUTER_NONE	= 0,
-	I40E_RX_PTYPE_OUTER_IPV4	= 0,
-	I40E_RX_PTYPE_OUTER_IPV6	= 1
-};
-
-enum i40e_rx_ptype_outer_fragmented {
-	I40E_RX_PTYPE_NOT_FRAG	= 0,
-	I40E_RX_PTYPE_FRAG	= 1
-};
-
-enum i40e_rx_ptype_tunnel_type {
-	I40E_RX_PTYPE_TUNNEL_NONE		= 0,
-	I40E_RX_PTYPE_TUNNEL_IP_IP		= 1,
-	I40E_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
-	I40E_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
-	I40E_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
-};
-
-enum i40e_rx_ptype_tunnel_end_prot {
-	I40E_RX_PTYPE_TUNNEL_END_NONE	= 0,
-	I40E_RX_PTYPE_TUNNEL_END_IPV4	= 1,
-	I40E_RX_PTYPE_TUNNEL_END_IPV6	= 2,
-};
-
-enum i40e_rx_ptype_inner_prot {
-	I40E_RX_PTYPE_INNER_PROT_NONE		= 0,
-	I40E_RX_PTYPE_INNER_PROT_UDP		= 1,
-	I40E_RX_PTYPE_INNER_PROT_TCP		= 2,
-	I40E_RX_PTYPE_INNER_PROT_SCTP		= 3,
-	I40E_RX_PTYPE_INNER_PROT_ICMP		= 4,
-	I40E_RX_PTYPE_INNER_PROT_TIMESYNC	= 5
-};
-
-enum i40e_rx_ptype_payload_layer {
-	I40E_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
-	I40E_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
-	I40E_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
-	I40E_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
-};
-
 #define I40E_RXD_QW1_LENGTH_PBUF_SHIFT	38
 #define I40E_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
 					 I40E_RXD_QW1_LENGTH_PBUF_SHIFT)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 4a48e6171405..48c3901381b4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -45,13 +45,6 @@ enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid,
 enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 seid,
 				     struct iavf_aqc_get_set_rss_key_data *key);
 
-extern struct iavf_rx_ptype_decoded iavf_ptype_lookup[];
-
-static inline struct iavf_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
-{
-	return iavf_ptype_lookup[ptype];
-}
-
 void iavf_vf_parse_hw_config(struct iavf_hw *hw,
 			     struct virtchnl_vf_resource *msg);
 enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw *hw,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index 2b6a207fa441..23ded4fcd94f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -327,94 +327,6 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
 #define IAVF_RXD_QW1_PTYPE_SHIFT	30
 #define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
 
-/* Packet type non-ip values */
-enum iavf_rx_l2_ptype {
-	IAVF_RX_PTYPE_L2_RESERVED			= 0,
-	IAVF_RX_PTYPE_L2_MAC_PAY2			= 1,
-	IAVF_RX_PTYPE_L2_TIMESYNC_PAY2			= 2,
-	IAVF_RX_PTYPE_L2_FIP_PAY2			= 3,
-	IAVF_RX_PTYPE_L2_OUI_PAY2			= 4,
-	IAVF_RX_PTYPE_L2_MACCNTRL_PAY2			= 5,
-	IAVF_RX_PTYPE_L2_LLDP_PAY2			= 6,
-	IAVF_RX_PTYPE_L2_ECP_PAY2			= 7,
-	IAVF_RX_PTYPE_L2_EVB_PAY2			= 8,
-	IAVF_RX_PTYPE_L2_QCN_PAY2			= 9,
-	IAVF_RX_PTYPE_L2_EAPOL_PAY2			= 10,
-	IAVF_RX_PTYPE_L2_ARP				= 11,
-	IAVF_RX_PTYPE_L2_FCOE_PAY3			= 12,
-	IAVF_RX_PTYPE_L2_FCOE_FCDATA_PAY3		= 13,
-	IAVF_RX_PTYPE_L2_FCOE_FCRDY_PAY3		= 14,
-	IAVF_RX_PTYPE_L2_FCOE_FCRSP_PAY3		= 15,
-	IAVF_RX_PTYPE_L2_FCOE_FCOTHER_PA		= 16,
-	IAVF_RX_PTYPE_L2_FCOE_VFT_PAY3			= 17,
-	IAVF_RX_PTYPE_L2_FCOE_VFT_FCDATA		= 18,
-	IAVF_RX_PTYPE_L2_FCOE_VFT_FCRDY			= 19,
-	IAVF_RX_PTYPE_L2_FCOE_VFT_FCRSP			= 20,
-	IAVF_RX_PTYPE_L2_FCOE_VFT_FCOTHER		= 21,
-	IAVF_RX_PTYPE_GRENAT4_MAC_PAY3			= 58,
-	IAVF_RX_PTYPE_GRENAT4_MACVLAN_IPV6_ICMP_PAY4	= 87,
-	IAVF_RX_PTYPE_GRENAT6_MAC_PAY3			= 124,
-	IAVF_RX_PTYPE_GRENAT6_MACVLAN_IPV6_ICMP_PAY4	= 153
-};
-
-struct iavf_rx_ptype_decoded {
-	u32 known:1;
-	u32 outer_ip:1;
-	u32 outer_ip_ver:1;
-	u32 outer_frag:1;
-	u32 tunnel_type:3;
-	u32 tunnel_end_prot:2;
-	u32 tunnel_end_frag:1;
-	u32 inner_prot:4;
-	u32 payload_layer:3;
-};
-
-enum iavf_rx_ptype_outer_ip {
-	IAVF_RX_PTYPE_OUTER_L2	= 0,
-	IAVF_RX_PTYPE_OUTER_IP	= 1
-};
-
-enum iavf_rx_ptype_outer_ip_ver {
-	IAVF_RX_PTYPE_OUTER_NONE	= 0,
-	IAVF_RX_PTYPE_OUTER_IPV4	= 0,
-	IAVF_RX_PTYPE_OUTER_IPV6	= 1
-};
-
-enum iavf_rx_ptype_outer_fragmented {
-	IAVF_RX_PTYPE_NOT_FRAG	= 0,
-	IAVF_RX_PTYPE_FRAG	= 1
-};
-
-enum iavf_rx_ptype_tunnel_type {
-	IAVF_RX_PTYPE_TUNNEL_NONE		= 0,
-	IAVF_RX_PTYPE_TUNNEL_IP_IP		= 1,
-	IAVF_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
-	IAVF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
-	IAVF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
-};
-
-enum iavf_rx_ptype_tunnel_end_prot {
-	IAVF_RX_PTYPE_TUNNEL_END_NONE	= 0,
-	IAVF_RX_PTYPE_TUNNEL_END_IPV4	= 1,
-	IAVF_RX_PTYPE_TUNNEL_END_IPV6	= 2,
-};
-
-enum iavf_rx_ptype_inner_prot {
-	IAVF_RX_PTYPE_INNER_PROT_NONE		= 0,
-	IAVF_RX_PTYPE_INNER_PROT_UDP		= 1,
-	IAVF_RX_PTYPE_INNER_PROT_TCP		= 2,
-	IAVF_RX_PTYPE_INNER_PROT_SCTP		= 3,
-	IAVF_RX_PTYPE_INNER_PROT_ICMP		= 4,
-	IAVF_RX_PTYPE_INNER_PROT_TIMESYNC	= 5
-};
-
-enum iavf_rx_ptype_payload_layer {
-	IAVF_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
-	IAVF_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
-	IAVF_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
-	IAVF_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
-};
-
 #define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
 #define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
 					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index d384ddfcb83e..611577ebc29d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -160,64 +160,6 @@ struct ice_fltr_desc {
 				(0x1ULL << ICE_FXD_FLTR_WB_QW1_FAIL_PROF_S)
 #define ICE_FXD_FLTR_WB_QW1_FAIL_PROF_YES	0x1ULL
 
-struct ice_rx_ptype_decoded {
-	u32 known:1;
-	u32 outer_ip:1;
-	u32 outer_ip_ver:2;
-	u32 outer_frag:1;
-	u32 tunnel_type:3;
-	u32 tunnel_end_prot:2;
-	u32 tunnel_end_frag:1;
-	u32 inner_prot:4;
-	u32 payload_layer:3;
-};
-
-enum ice_rx_ptype_outer_ip {
-	ICE_RX_PTYPE_OUTER_L2	= 0,
-	ICE_RX_PTYPE_OUTER_IP	= 1,
-};
-
-enum ice_rx_ptype_outer_ip_ver {
-	ICE_RX_PTYPE_OUTER_NONE	= 0,
-	ICE_RX_PTYPE_OUTER_IPV4	= 1,
-	ICE_RX_PTYPE_OUTER_IPV6	= 2,
-};
-
-enum ice_rx_ptype_outer_fragmented {
-	ICE_RX_PTYPE_NOT_FRAG	= 0,
-	ICE_RX_PTYPE_FRAG	= 1,
-};
-
-enum ice_rx_ptype_tunnel_type {
-	ICE_RX_PTYPE_TUNNEL_NONE		= 0,
-	ICE_RX_PTYPE_TUNNEL_IP_IP		= 1,
-	ICE_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
-	ICE_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
-	ICE_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
-};
-
-enum ice_rx_ptype_tunnel_end_prot {
-	ICE_RX_PTYPE_TUNNEL_END_NONE	= 0,
-	ICE_RX_PTYPE_TUNNEL_END_IPV4	= 1,
-	ICE_RX_PTYPE_TUNNEL_END_IPV6	= 2,
-};
-
-enum ice_rx_ptype_inner_prot {
-	ICE_RX_PTYPE_INNER_PROT_NONE		= 0,
-	ICE_RX_PTYPE_INNER_PROT_UDP		= 1,
-	ICE_RX_PTYPE_INNER_PROT_TCP		= 2,
-	ICE_RX_PTYPE_INNER_PROT_SCTP		= 3,
-	ICE_RX_PTYPE_INNER_PROT_ICMP		= 4,
-	ICE_RX_PTYPE_INNER_PROT_TIMESYNC	= 5,
-};
-
-enum ice_rx_ptype_payload_layer {
-	ICE_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
-	ICE_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
-	ICE_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
-	ICE_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
-};
-
 /* Rx Flex Descriptor
  * This descriptor is used instead of the legacy version descriptor when
  * ice_rlan_ctx.adv_desc is set
@@ -651,266 +593,4 @@ struct ice_tlan_ctx {
 	u8 int_q_state;	/* width not needed - internal - DO NOT WRITE!!! */
 };
 
-/* The ice_ptype_lkup table is used to convert from the 10-bit ptype in the
- * hardware to a bit-field that can be used by SW to more easily determine the
- * packet type.
- *
- * Macros are used to shorten the table lines and make this table human
- * readable.
- *
- * We store the PTYPE in the top byte of the bit field - this is just so that
- * we can check that the table doesn't have a row missing, as the index into
- * the table should be the PTYPE.
- *
- * Typical work flow:
- *
- * IF NOT ice_ptype_lkup[ptype].known
- * THEN
- *      Packet is unknown
- * ELSE IF ice_ptype_lkup[ptype].outer_ip == ICE_RX_PTYPE_OUTER_IP
- *      Use the rest of the fields to look at the tunnels, inner protocols, etc
- * ELSE
- *      Use the enum ice_rx_l2_ptype to decode the packet type
- * ENDIF
- */
-#define ICE_PTYPES								\
-	/* L2 Packet types */							\
-	ICE_PTT_UNUSED_ENTRY(0),						\
-	ICE_PTT(1, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),			\
-	ICE_PTT_UNUSED_ENTRY(2),						\
-	ICE_PTT_UNUSED_ENTRY(3),						\
-	ICE_PTT_UNUSED_ENTRY(4),						\
-	ICE_PTT_UNUSED_ENTRY(5),						\
-	ICE_PTT(6, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),			\
-	ICE_PTT(7, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),			\
-	ICE_PTT_UNUSED_ENTRY(8),						\
-	ICE_PTT_UNUSED_ENTRY(9),						\
-	ICE_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),		\
-	ICE_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),		\
-	ICE_PTT_UNUSED_ENTRY(12),						\
-	ICE_PTT_UNUSED_ENTRY(13),						\
-	ICE_PTT_UNUSED_ENTRY(14),						\
-	ICE_PTT_UNUSED_ENTRY(15),						\
-	ICE_PTT_UNUSED_ENTRY(16),						\
-	ICE_PTT_UNUSED_ENTRY(17),						\
-	ICE_PTT_UNUSED_ENTRY(18),						\
-	ICE_PTT_UNUSED_ENTRY(19),						\
-	ICE_PTT_UNUSED_ENTRY(20),						\
-	ICE_PTT_UNUSED_ENTRY(21),						\
-										\
-	/* Non Tunneled IPv4 */							\
-	ICE_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),		\
-	ICE_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),		\
-	ICE_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(25),						\
-	ICE_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),		\
-	ICE_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),		\
-	ICE_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),		\
-										\
-	/* IPv4 --> IPv4 */							\
-	ICE_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),		\
-	ICE_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),		\
-	ICE_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(32),						\
-	ICE_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),		\
-	ICE_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),		\
-	ICE_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),		\
-										\
-	/* IPv4 --> IPv6 */							\
-	ICE_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),		\
-	ICE_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),		\
-	ICE_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(39),						\
-	ICE_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),		\
-	ICE_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),		\
-	ICE_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),		\
-										\
-	/* IPv4 --> GRE/NAT */							\
-	ICE_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),		\
-										\
-	/* IPv4 --> GRE/NAT --> IPv4 */						\
-	ICE_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),		\
-	ICE_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),		\
-	ICE_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(47),						\
-	ICE_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),		\
-	ICE_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),		\
-	ICE_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),		\
-										\
-	/* IPv4 --> GRE/NAT --> IPv6 */						\
-	ICE_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),		\
-	ICE_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),		\
-	ICE_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(54),						\
-	ICE_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),		\
-	ICE_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),		\
-	ICE_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),		\
-										\
-	/* IPv4 --> GRE/NAT --> MAC */						\
-	ICE_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),	\
-										\
-	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */					\
-	ICE_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),	\
-	ICE_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),	\
-	ICE_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(62),						\
-	ICE_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),	\
-	ICE_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),	\
-	ICE_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),	\
-										\
-	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */					\
-	ICE_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),	\
-	ICE_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),	\
-	ICE_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(69),						\
-	ICE_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),	\
-	ICE_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),	\
-	ICE_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),	\
-										\
-	/* IPv4 --> GRE/NAT --> MAC/VLAN */					\
-	ICE_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),	\
-										\
-	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */				\
-	ICE_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),	\
-	ICE_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),	\
-	ICE_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(77),						\
-	ICE_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),	\
-	ICE_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),	\
-	ICE_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),	\
-										\
-	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */				\
-	ICE_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),	\
-	ICE_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),	\
-	ICE_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(84),						\
-	ICE_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),	\
-	ICE_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),	\
-	ICE_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),	\
-										\
-	/* Non Tunneled IPv6 */							\
-	ICE_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),		\
-	ICE_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),		\
-	ICE_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(91),						\
-	ICE_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),		\
-	ICE_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),		\
-	ICE_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),		\
-										\
-	/* IPv6 --> IPv4 */							\
-	ICE_PTT(95, IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),		\
-	ICE_PTT(96, IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),		\
-	ICE_PTT(97, IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(98),						\
-	ICE_PTT(99, IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),		\
-	ICE_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),		\
-	ICE_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),		\
-										\
-	/* IPv6 --> IPv6 */							\
-	ICE_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),		\
-	ICE_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),		\
-	ICE_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(105),						\
-	ICE_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),		\
-	ICE_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),		\
-	ICE_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),		\
-										\
-	/* IPv6 --> GRE/NAT */							\
-	ICE_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),		\
-										\
-	/* IPv6 --> GRE/NAT -> IPv4 */						\
-	ICE_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),		\
-	ICE_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),		\
-	ICE_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(113),						\
-	ICE_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),		\
-	ICE_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),		\
-	ICE_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),		\
-										\
-	/* IPv6 --> GRE/NAT -> IPv6 */						\
-	ICE_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),		\
-	ICE_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),		\
-	ICE_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),		\
-	ICE_PTT_UNUSED_ENTRY(120),						\
-	ICE_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),		\
-	ICE_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),		\
-	ICE_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),		\
-										\
-	/* IPv6 --> GRE/NAT -> MAC */						\
-	ICE_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),	\
-										\
-	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */					\
-	ICE_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),	\
-	ICE_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),	\
-	ICE_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(128),						\
-	ICE_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),	\
-	ICE_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),	\
-	ICE_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),	\
-										\
-	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */					\
-	ICE_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),	\
-	ICE_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),	\
-	ICE_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(135),						\
-	ICE_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),	\
-	ICE_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),	\
-	ICE_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),	\
-										\
-	/* IPv6 --> GRE/NAT -> MAC/VLAN */					\
-	ICE_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),	\
-										\
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */				\
-	ICE_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),	\
-	ICE_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),	\
-	ICE_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(143),						\
-	ICE_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),	\
-	ICE_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),	\
-	ICE_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),	\
-										\
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */				\
-	ICE_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),	\
-	ICE_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),	\
-	ICE_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),	\
-	ICE_PTT_UNUSED_ENTRY(150),						\
-	ICE_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),	\
-	ICE_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),	\
-	ICE_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-#define ICE_NUM_DEFINED_PTYPES	154
-
-/* macro to make the table lines short, use explicit indexing with [PTYPE] */
-#define ICE_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	[PTYPE] = { \
-		1, \
-		ICE_RX_PTYPE_OUTER_##OUTER_IP, \
-		ICE_RX_PTYPE_OUTER_##OUTER_IP_VER, \
-		ICE_RX_PTYPE_##OUTER_FRAG, \
-		ICE_RX_PTYPE_TUNNEL_##T, \
-		ICE_RX_PTYPE_TUNNEL_END_##TE, \
-		ICE_RX_PTYPE_##TEF, \
-		ICE_RX_PTYPE_INNER_PROT_##I, \
-		ICE_RX_PTYPE_PAYLOAD_LAYER_##PL }
-
-#define ICE_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-
-/* shorter macros makes the table fit but are terse */
-#define ICE_RX_PTYPE_NOF		ICE_RX_PTYPE_NOT_FRAG
-#define ICE_RX_PTYPE_FRG		ICE_RX_PTYPE_FRAG
-
-/* Lookup table mapping in the 10-bit HW PTYPE to the bit field for decoding */
-static const struct ice_rx_ptype_decoded ice_ptype_lkup[BIT(10)] = {
-	ICE_PTYPES
-
-	/* unused entries */
-	[ICE_NUM_DEFINED_PTYPES ... 1023] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-};
-
-static inline struct ice_rx_ptype_decoded ice_decode_rx_desc_ptype(u16 ptype)
-{
-	return ice_ptype_lkup[ptype];
-}
-
-
 #endif /* _ICE_LAN_TX_RX_H_ */
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
new file mode 100644
index 000000000000..ab9ffe1e93d8
--- /dev/null
+++ b/include/linux/net/intel/libie/rx.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBIE_RX_H
+#define __LIBIE_RX_H
+
+#include <net/libeth/rx.h>
+
+/* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
+ * bitfield struct.
+ */
+
+#define LIBIE_RX_PT_NUM		154
+
+extern const struct libeth_rpt libie_rx_pt_lut[LIBIE_RX_PT_NUM];
+
+/**
+ * libie_rx_pt_parse - convert HW packet type to software bitfield structure
+ * @pt: 10-bit hardware packet type value from the descriptor
+ *
+ * ```libie_rx_pt_lut``` must be accessed only using this wrapper.
+ *
+ * Return: parsed bitfield struct corresponding to the provided ptype.
+ */
+static inline struct libeth_rpt libie_rx_pt_parse(u32 pt)
+{
+	if (unlikely(pt >= LIBIE_RX_PT_NUM))
+		pt = 0;
+
+	return libie_rx_pt_lut[pt];
+}
+
+#endif /* __LIBIE_RX_H */
diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
new file mode 100644
index 000000000000..aaf9c2cdf7fd
--- /dev/null
+++ b/include/net/libeth/rx.h
@@ -0,0 +1,125 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_RX_H
+#define __LIBETH_RX_H
+
+#include <net/xdp.h>
+
+/* Converting abstract packet type numbers into a software structure with
+ * the packet parameters to do O(1) lookup on Rx.
+ */
+
+enum {
+	LIBETH_RX_PT_OUTER_L2			= 0U,
+	LIBETH_RX_PT_OUTER_IPV4,
+	LIBETH_RX_PT_OUTER_IPV6,
+};
+
+enum {
+	LIBETH_RX_PT_NOT_FRAG			= 0U,
+	LIBETH_RX_PT_FRAG,
+};
+
+enum {
+	LIBETH_RX_PT_TUNNEL_IP_NONE		= 0U,
+	LIBETH_RX_PT_TUNNEL_IP_IP,
+	LIBETH_RX_PT_TUNNEL_IP_GRENAT,
+	LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC,
+	LIBETH_RX_PT_TUNNEL_IP_GRENAT_MAC_VLAN,
+};
+
+enum {
+	LIBETH_RX_PT_TUNNEL_END_NONE		= 0U,
+	LIBETH_RX_PT_TUNNEL_END_IPV4,
+	LIBETH_RX_PT_TUNNEL_END_IPV6,
+};
+
+enum {
+	LIBETH_RX_PT_INNER_NONE			= 0U,
+	LIBETH_RX_PT_INNER_UDP,
+	LIBETH_RX_PT_INNER_TCP,
+	LIBETH_RX_PT_INNER_SCTP,
+	LIBETH_RX_PT_INNER_ICMP,
+	LIBETH_RX_PT_INNER_TIMESYNC,
+};
+
+#define LIBETH_RX_PT_PAYLOAD_NONE		PKT_HASH_TYPE_NONE
+#define LIBETH_RX_PT_PAYLOAD_L2			PKT_HASH_TYPE_L2
+#define LIBETH_RX_PT_PAYLOAD_L3			PKT_HASH_TYPE_L3
+#define LIBETH_RX_PT_PAYLOAD_L4			PKT_HASH_TYPE_L4
+
+struct libeth_rpt {
+	u32					outer_ip:2;
+	u32					outer_frag:1;
+	u32					tunnel_type:3;
+	u32					tunnel_end_prot:2;
+	u32					tunnel_end_frag:1;
+	u32					inner_prot:3;
+	enum pkt_hash_types			payload_layer:2;
+
+	u32					pad:2;
+	enum xdp_rss_hash_type			hash_type:16;
+};
+
+void libeth_rx_pt_gen_hash_type(struct libeth_rpt *pt);
+
+/**
+ * libeth_rx_pt_get_ip_ver - get IP version from a packet type structure
+ * @pt: packet type params
+ *
+ * Wrapper to compile out the IPv6 code from the drivers when not supported
+ * by the kernel.
+ *
+ * Return: @pt.outer_ip or stub for IPv6 when not compiled-in.
+ */
+static inline u32 libeth_rx_pt_get_ip_ver(struct libeth_rpt pt)
+{
+#if !IS_ENABLED(CONFIG_IPV6)
+	switch (pt.outer_ip) {
+	case LIBETH_RX_PT_OUTER_IPV4:
+		return LIBETH_RX_PT_OUTER_IPV4;
+	default:
+		return LIBETH_RX_PT_OUTER_L2;
+	}
+#else
+	return pt.outer_ip;
+#endif
+}
+
+/* libeth_has_*() can be used to quickly check whether the HW metadata is
+ * available to avoid further expensive processing such as descriptor reads.
+ * They already check for the corresponding netdev feature to be enabled,
+ * thus can be used as drop-in replacements.
+ */
+
+static inline bool libeth_rx_pt_has_checksum(const struct net_device *dev,
+					     struct libeth_rpt pt)
+{
+	/* Non-zero _INNER* is only possible when _OUTER_IPV* is set,
+	 * it is enough to check only for the L4 type.
+	 */
+	return likely(pt.inner_prot > LIBETH_RX_PT_INNER_NONE &&
+		      (dev->features & NETIF_F_RXCSUM));
+}
+
+static inline bool libeth_rx_pt_has_hash(const struct net_device *dev,
+					 struct libeth_rpt pt)
+{
+	return likely(pt.payload_layer > LIBETH_RX_PT_PAYLOAD_NONE &&
+		      (dev->features & NETIF_F_RXHASH));
+}
+
+/**
+ * libeth_rx_pt_set_hash - fill in skb hash value basing on the PT
+ * @skb: skb to fill the hash in
+ * @hash: 32-bit hash value from the descriptor
+ * @pt: packet type
+ */
+static inline void libeth_rx_pt_set_hash(struct sk_buff *skb, u32 hash,
+					 struct libeth_rpt pt)
+{
+	skb_set_hash(skb, hash, pt.payload_layer);
+}
+
+#endif /* __LIBETH_RX_H */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index de6ca6295742..e8031f1a9b4f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -381,259 +381,6 @@ int i40e_aq_set_rss_key(struct i40e_hw *hw,
 	return i40e_aq_get_set_rss_key(hw, vsi_id, key, true);
 }
 
-/* The i40e_ptype_lookup table is used to convert from the 8-bit ptype in the
- * hardware to a bit-field that can be used by SW to more easily determine the
- * packet type.
- *
- * Macros are used to shorten the table lines and make this table human
- * readable.
- *
- * We store the PTYPE in the top byte of the bit field - this is just so that
- * we can check that the table doesn't have a row missing, as the index into
- * the table should be the PTYPE.
- *
- * Typical work flow:
- *
- * IF NOT i40e_ptype_lookup[ptype].known
- * THEN
- *      Packet is unknown
- * ELSE IF i40e_ptype_lookup[ptype].outer_ip == I40E_RX_PTYPE_OUTER_IP
- *      Use the rest of the fields to look at the tunnels, inner protocols, etc
- * ELSE
- *      Use the enum i40e_rx_l2_ptype to decode the packet type
- * ENDIF
- */
-
-/* macro to make the table lines short, use explicit indexing with [PTYPE] */
-#define I40E_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	[PTYPE] = { \
-		1, \
-		I40E_RX_PTYPE_OUTER_##OUTER_IP, \
-		I40E_RX_PTYPE_OUTER_##OUTER_IP_VER, \
-		I40E_RX_PTYPE_##OUTER_FRAG, \
-		I40E_RX_PTYPE_TUNNEL_##T, \
-		I40E_RX_PTYPE_TUNNEL_END_##TE, \
-		I40E_RX_PTYPE_##TEF, \
-		I40E_RX_PTYPE_INNER_PROT_##I, \
-		I40E_RX_PTYPE_PAYLOAD_LAYER_##PL }
-
-#define I40E_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-
-/* shorter macros makes the table fit but are terse */
-#define I40E_RX_PTYPE_NOF		I40E_RX_PTYPE_NOT_FRAG
-#define I40E_RX_PTYPE_FRG		I40E_RX_PTYPE_FRAG
-#define I40E_RX_PTYPE_INNER_PROT_TS	I40E_RX_PTYPE_INNER_PROT_TIMESYNC
-
-/* Lookup table mapping in the 8-bit HW PTYPE to the bit field for decoding */
-struct i40e_rx_ptype_decoded i40e_ptype_lookup[BIT(8)] = {
-	/* L2 Packet types */
-	I40E_PTT_UNUSED_ENTRY(0),
-	I40E_PTT(1,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	I40E_PTT(2,  L2, NONE, NOF, NONE, NONE, NOF, TS,   PAY2),
-	I40E_PTT(3,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	I40E_PTT_UNUSED_ENTRY(4),
-	I40E_PTT_UNUSED_ENTRY(5),
-	I40E_PTT(6,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	I40E_PTT(7,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	I40E_PTT_UNUSED_ENTRY(8),
-	I40E_PTT_UNUSED_ENTRY(9),
-	I40E_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	I40E_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	I40E_PTT(12, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(13, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(14, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(15, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(16, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(17, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(18, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(19, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(20, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(21, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-
-	/* Non Tunneled IPv4 */
-	I40E_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(25),
-	I40E_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	I40E_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	I40E_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv4 */
-	I40E_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(32),
-	I40E_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv6 */
-	I40E_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(39),
-	I40E_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT */
-	I40E_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> IPv4 */
-	I40E_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(47),
-	I40E_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> IPv6 */
-	I40E_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(54),
-	I40E_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC */
-	I40E_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */
-	I40E_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(62),
-	I40E_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */
-	I40E_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(69),
-	I40E_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC/VLAN */
-	I40E_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */
-	I40E_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(77),
-	I40E_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */
-	I40E_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(84),
-	I40E_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-	/* Non Tunneled IPv6 */
-	I40E_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
-	I40E_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(91),
-	I40E_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	I40E_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	I40E_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv4 */
-	I40E_PTT(95,  IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(96,  IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(97,  IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(98),
-	I40E_PTT(99,  IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv6 */
-	I40E_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(105),
-	I40E_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT */
-	I40E_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> IPv4 */
-	I40E_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(113),
-	I40E_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> IPv6 */
-	I40E_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(120),
-	I40E_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC */
-	I40E_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */
-	I40E_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(128),
-	I40E_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */
-	I40E_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(135),
-	I40E_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN */
-	I40E_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */
-	I40E_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	I40E_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	I40E_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(143),
-	I40E_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	I40E_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	I40E_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */
-	I40E_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	I40E_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	I40E_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	I40E_PTT_UNUSED_ENTRY(150),
-	I40E_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	I40E_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	I40E_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-	/* unused entries */
-	[154 ... 255] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-};
-
 /**
  * i40e_init_shared_code - Initialize the shared code
  * @hw: pointer to hardware structure
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3c7d6ea84491..8d6ca8055f7b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -100,6 +100,7 @@ MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all), Debug mask (0x8XXXXXXX
 
 MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Connection XL710 Network Driver");
+MODULE_IMPORT_NS(LIBIE);
 MODULE_LICENSE("GPL v2");
 
 static struct workqueue_struct *i40e_wq;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index ac2fcc5ac595..f258947078a4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bpf_trace.h>
+#include <linux/net/intel/libie/rx.h>
 #include <linux/prefetch.h>
 #include <linux/sctp.h>
 #include <net/mpls.h>
@@ -1741,38 +1742,30 @@ static inline void i40e_rx_checksum(struct i40e_vsi *vsi,
 				    struct sk_buff *skb,
 				    union i40e_rx_desc *rx_desc)
 {
-	struct i40e_rx_ptype_decoded decoded;
+	struct libeth_rpt decoded;
 	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
 	u8 ptype;
 	u64 qword;
 
-	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	ptype = FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, qword);
-	rx_error = FIELD_GET(I40E_RXD_QW1_ERROR_MASK, qword);
-	rx_status = FIELD_GET(I40E_RXD_QW1_STATUS_MASK, qword);
-	decoded = decode_rx_desc_ptype(ptype);
-
 	skb->ip_summed = CHECKSUM_NONE;
 
-	skb_checksum_none_assert(skb);
+	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+	ptype = FIELD_GET(I40E_RXD_QW1_PTYPE_MASK, qword);
 
-	/* Rx csum enabled and ip headers found? */
-	if (!(vsi->netdev->features & NETIF_F_RXCSUM))
+	decoded = libie_rx_pt_parse(ptype);
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
 		return;
 
+	rx_error = FIELD_GET(I40E_RXD_QW1_ERROR_MASK, qword);
+	rx_status = FIELD_GET(I40E_RXD_QW1_STATUS_MASK, qword);
+
 	/* did the hardware decode the packet and checksum? */
 	if (!(rx_status & BIT(I40E_RX_DESC_STATUS_L3L4P_SHIFT)))
 		return;
 
-	/* both known and outer_ip must be set for the below code to work */
-	if (!(decoded.known && decoded.outer_ip))
-		return;
-
-	ipv4 = (decoded.outer_ip == I40E_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == I40E_RX_PTYPE_OUTER_IPV4);
-	ipv6 = (decoded.outer_ip == I40E_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == I40E_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	if (ipv4 &&
 	    (rx_error & (BIT(I40E_RX_DESC_ERROR_IPE_SHIFT) |
@@ -1800,49 +1793,16 @@ static inline void i40e_rx_checksum(struct i40e_vsi *vsi,
 	 * we need to bump the checksum level by 1 to reflect the fact that
 	 * we are indicating we validated the inner checksum.
 	 */
-	if (decoded.tunnel_type >= I40E_RX_PTYPE_TUNNEL_IP_GRENAT)
+	if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
 		skb->csum_level = 1;
 
-	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
-	case I40E_RX_PTYPE_INNER_PROT_TCP:
-	case I40E_RX_PTYPE_INNER_PROT_UDP:
-	case I40E_RX_PTYPE_INNER_PROT_SCTP:
-		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		fallthrough;
-	default:
-		break;
-	}
-
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
 	return;
 
 checksum_fail:
 	vsi->back->hw_csum_rx_error++;
 }
 
-/**
- * i40e_ptype_to_htype - get a hash type
- * @ptype: the ptype value from the descriptor
- *
- * Returns a hash type to be used by skb_set_hash
- **/
-static inline int i40e_ptype_to_htype(u8 ptype)
-{
-	struct i40e_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
-
-	if (!decoded.known)
-		return PKT_HASH_TYPE_NONE;
-
-	if (decoded.outer_ip == I40E_RX_PTYPE_OUTER_IP &&
-	    decoded.payload_layer == I40E_RX_PTYPE_PAYLOAD_LAYER_PAY4)
-		return PKT_HASH_TYPE_L4;
-	else if (decoded.outer_ip == I40E_RX_PTYPE_OUTER_IP &&
-		 decoded.payload_layer == I40E_RX_PTYPE_PAYLOAD_LAYER_PAY3)
-		return PKT_HASH_TYPE_L3;
-	else
-		return PKT_HASH_TYPE_L2;
-}
-
 /**
  * i40e_rx_hash - set the hash value in the skb
  * @ring: descriptor ring
@@ -1855,17 +1815,19 @@ static inline void i40e_rx_hash(struct i40e_ring *ring,
 				struct sk_buff *skb,
 				u8 rx_ptype)
 {
+	struct libeth_rpt decoded;
 	u32 hash;
 	const __le64 rss_mask =
 		cpu_to_le64((u64)I40E_RX_DESC_FLTSTAT_RSS_HASH <<
 			    I40E_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	if (!(ring->netdev->features & NETIF_F_RXHASH))
+	decoded = libie_rx_pt_parse(rx_ptype);
+	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
 	if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
 		hash = le32_to_cpu(rx_desc->wb.qword0.hi_dword.rss);
-		skb_set_hash(skb, hash, i40e_ptype_to_htype(rx_ptype));
+		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 5a25233a89d5..aa751ce3425b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -432,259 +432,6 @@ enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 vsi_id,
 	return iavf_aq_get_set_rss_key(hw, vsi_id, key, true);
 }
 
-/* The iavf_ptype_lookup table is used to convert from the 8-bit ptype in the
- * hardware to a bit-field that can be used by SW to more easily determine the
- * packet type.
- *
- * Macros are used to shorten the table lines and make this table human
- * readable.
- *
- * We store the PTYPE in the top byte of the bit field - this is just so that
- * we can check that the table doesn't have a row missing, as the index into
- * the table should be the PTYPE.
- *
- * Typical work flow:
- *
- * IF NOT iavf_ptype_lookup[ptype].known
- * THEN
- *      Packet is unknown
- * ELSE IF iavf_ptype_lookup[ptype].outer_ip == IAVF_RX_PTYPE_OUTER_IP
- *      Use the rest of the fields to look at the tunnels, inner protocols, etc
- * ELSE
- *      Use the enum iavf_rx_l2_ptype to decode the packet type
- * ENDIF
- */
-
-/* macro to make the table lines short, use explicit indexing with [PTYPE] */
-#define IAVF_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	[PTYPE] = { \
-		1, \
-		IAVF_RX_PTYPE_OUTER_##OUTER_IP, \
-		IAVF_RX_PTYPE_OUTER_##OUTER_IP_VER, \
-		IAVF_RX_PTYPE_##OUTER_FRAG, \
-		IAVF_RX_PTYPE_TUNNEL_##T, \
-		IAVF_RX_PTYPE_TUNNEL_END_##TE, \
-		IAVF_RX_PTYPE_##TEF, \
-		IAVF_RX_PTYPE_INNER_PROT_##I, \
-		IAVF_RX_PTYPE_PAYLOAD_LAYER_##PL }
-
-#define IAVF_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-
-/* shorter macros makes the table fit but are terse */
-#define IAVF_RX_PTYPE_NOF		IAVF_RX_PTYPE_NOT_FRAG
-#define IAVF_RX_PTYPE_FRG		IAVF_RX_PTYPE_FRAG
-#define IAVF_RX_PTYPE_INNER_PROT_TS	IAVF_RX_PTYPE_INNER_PROT_TIMESYNC
-
-/* Lookup table mapping the 8-bit HW PTYPE to the bit field for decoding */
-struct iavf_rx_ptype_decoded iavf_ptype_lookup[BIT(8)] = {
-	/* L2 Packet types */
-	IAVF_PTT_UNUSED_ENTRY(0),
-	IAVF_PTT(1,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	IAVF_PTT(2,  L2, NONE, NOF, NONE, NONE, NOF, TS,   PAY2),
-	IAVF_PTT(3,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	IAVF_PTT_UNUSED_ENTRY(4),
-	IAVF_PTT_UNUSED_ENTRY(5),
-	IAVF_PTT(6,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	IAVF_PTT(7,  L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	IAVF_PTT_UNUSED_ENTRY(8),
-	IAVF_PTT_UNUSED_ENTRY(9),
-	IAVF_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	IAVF_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	IAVF_PTT(12, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(13, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(14, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(15, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(16, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(17, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(18, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(19, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(20, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(21, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY3),
-
-	/* Non Tunneled IPv4 */
-	IAVF_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(25),
-	IAVF_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	IAVF_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	IAVF_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv4 */
-	IAVF_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(32),
-	IAVF_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv6 */
-	IAVF_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(39),
-	IAVF_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT */
-	IAVF_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> IPv4 */
-	IAVF_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(47),
-	IAVF_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> IPv6 */
-	IAVF_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(54),
-	IAVF_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC */
-	IAVF_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */
-	IAVF_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(62),
-	IAVF_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */
-	IAVF_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(69),
-	IAVF_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC/VLAN */
-	IAVF_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */
-	IAVF_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(77),
-	IAVF_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */
-	IAVF_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(84),
-	IAVF_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-	/* Non Tunneled IPv6 */
-	IAVF_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
-	IAVF_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(91),
-	IAVF_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	IAVF_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	IAVF_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv4 */
-	IAVF_PTT(95,  IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(96,  IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(97,  IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(98),
-	IAVF_PTT(99,  IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv6 */
-	IAVF_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(105),
-	IAVF_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT */
-	IAVF_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> IPv4 */
-	IAVF_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(113),
-	IAVF_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> IPv6 */
-	IAVF_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(120),
-	IAVF_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC */
-	IAVF_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */
-	IAVF_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(128),
-	IAVF_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */
-	IAVF_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(135),
-	IAVF_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN */
-	IAVF_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */
-	IAVF_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	IAVF_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	IAVF_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(143),
-	IAVF_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	IAVF_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	IAVF_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */
-	IAVF_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	IAVF_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	IAVF_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	IAVF_PTT_UNUSED_ENTRY(150),
-	IAVF_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	IAVF_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	IAVF_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-	/* unused entries */
-	[154 ... 255] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
-};
-
 /**
  * iavf_aq_send_msg_to_pf
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 13361a780ece..d6cbe5022815 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -45,6 +45,7 @@ MODULE_DEVICE_TABLE(pci, iavf_pci_tbl);
 MODULE_ALIAS("i40evf");
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION("Intel(R) Ethernet Adaptive Virtual Function Network Driver");
+MODULE_IMPORT_NS(LIBIE);
 MODULE_LICENSE("GPL v2");
 
 static const struct net_device_ops iavf_netdev_ops;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 32bb604a1382..ab8420719a9a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/bitfield.h>
+#include <linux/net/intel/libie/rx.h>
 #include <linux/prefetch.h>
 
 #include "iavf.h"
@@ -982,38 +983,30 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
 			     struct sk_buff *skb,
 			     union iavf_rx_desc *rx_desc)
 {
-	struct iavf_rx_ptype_decoded decoded;
+	struct libeth_rpt decoded;
 	u32 rx_error, rx_status;
 	bool ipv4, ipv6;
 	u8 ptype;
 	u64 qword;
 
-	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
-	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
-	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
-	decoded = decode_rx_desc_ptype(ptype);
-
 	skb->ip_summed = CHECKSUM_NONE;
 
-	skb_checksum_none_assert(skb);
+	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
+	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
 
-	/* Rx csum enabled and ip headers found? */
-	if (!(vsi->netdev->features & NETIF_F_RXCSUM))
+	decoded = libie_rx_pt_parse(ptype);
+	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
 		return;
 
+	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
+	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
+
 	/* did the hardware decode the packet and checksum? */
 	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
 		return;
 
-	/* both known and outer_ip must be set for the below code to work */
-	if (!(decoded.known && decoded.outer_ip))
-		return;
-
-	ipv4 = (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV4);
-	ipv6 = (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == IAVF_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	if (ipv4 &&
 	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
@@ -1037,46 +1030,13 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
 	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
 		return;
 
-	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
-	case IAVF_RX_PTYPE_INNER_PROT_TCP:
-	case IAVF_RX_PTYPE_INNER_PROT_UDP:
-	case IAVF_RX_PTYPE_INNER_PROT_SCTP:
-		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		fallthrough;
-	default:
-		break;
-	}
-
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
 	return;
 
 checksum_fail:
 	vsi->back->hw_csum_rx_error++;
 }
 
-/**
- * iavf_ptype_to_htype - get a hash type
- * @ptype: the ptype value from the descriptor
- *
- * Returns a hash type to be used by skb_set_hash
- **/
-static int iavf_ptype_to_htype(u8 ptype)
-{
-	struct iavf_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
-
-	if (!decoded.known)
-		return PKT_HASH_TYPE_NONE;
-
-	if (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP &&
-	    decoded.payload_layer == IAVF_RX_PTYPE_PAYLOAD_LAYER_PAY4)
-		return PKT_HASH_TYPE_L4;
-	else if (decoded.outer_ip == IAVF_RX_PTYPE_OUTER_IP &&
-		 decoded.payload_layer == IAVF_RX_PTYPE_PAYLOAD_LAYER_PAY3)
-		return PKT_HASH_TYPE_L3;
-	else
-		return PKT_HASH_TYPE_L2;
-}
-
 /**
  * iavf_rx_hash - set the hash value in the skb
  * @ring: descriptor ring
@@ -1089,17 +1049,19 @@ static void iavf_rx_hash(struct iavf_ring *ring,
 			 struct sk_buff *skb,
 			 u8 rx_ptype)
 {
+	struct libeth_rpt decoded;
 	u32 hash;
 	const __le64 rss_mask =
 		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
 			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	if (!(ring->netdev->features & NETIF_F_RXHASH))
+	decoded = libie_rx_pt_parse(rx_ptype);
+	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
 		return;
 
 	if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
 		hash = le32_to_cpu(rx_desc->wb.qword0.hi_dword.rss);
-		skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
+		libeth_rx_pt_set_hash(skb, hash, decoded);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9d751954782c..4f75ea4b9ea1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -37,6 +37,7 @@ static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 
 MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
 MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_IMPORT_NS(LIBIE);
 MODULE_LICENSE("GPL v2");
 MODULE_FIRMWARE(ICE_DDP_PKG_FILE);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index df072ce767b1..969e1ed6df4a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -2,6 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include <linux/filter.h>
+#include <linux/net/intel/libie/rx.h>
 
 #include "ice_txrx_lib.h"
 #include "ice_eswitch.h"
@@ -38,30 +39,6 @@ void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val)
 	}
 }
 
-/**
- * ice_ptype_to_htype - get a hash type
- * @ptype: the ptype value from the descriptor
- *
- * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be used by
- * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
- * Rx desc.
- */
-static enum pkt_hash_types ice_ptype_to_htype(u16 ptype)
-{
-	struct ice_rx_ptype_decoded decoded = ice_decode_rx_desc_ptype(ptype);
-
-	if (!decoded.known)
-		return PKT_HASH_TYPE_NONE;
-	if (decoded.payload_layer == ICE_RX_PTYPE_PAYLOAD_LAYER_PAY4)
-		return PKT_HASH_TYPE_L4;
-	if (decoded.payload_layer == ICE_RX_PTYPE_PAYLOAD_LAYER_PAY3)
-		return PKT_HASH_TYPE_L3;
-	if (decoded.outer_ip == ICE_RX_PTYPE_OUTER_L2)
-		return PKT_HASH_TYPE_L2;
-
-	return PKT_HASH_TYPE_NONE;
-}
-
 /**
  * ice_get_rx_hash - get RX hash value from descriptor
  * @rx_desc: specific descriptor
@@ -91,14 +68,16 @@ ice_rx_hash_to_skb(const struct ice_rx_ring *rx_ring,
 		   const union ice_32b_rx_flex_desc *rx_desc,
 		   struct sk_buff *skb, u16 rx_ptype)
 {
+	struct libeth_rpt decoded;
 	u32 hash;
 
-	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
+	decoded = libie_rx_pt_parse(rx_ptype);
+	if (!libeth_rx_pt_has_hash(rx_ring->netdev, decoded))
 		return;
 
 	hash = ice_get_rx_hash(rx_desc);
 	if (likely(hash))
-		skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
+		libeth_rx_pt_set_hash(skb, hash, decoded);
 }
 
 /**
@@ -114,34 +93,26 @@ static void
 ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	    union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
 {
-	struct ice_rx_ptype_decoded decoded;
+	struct libeth_rpt decoded;
 	u16 rx_status0, rx_status1;
 	bool ipv4, ipv6;
 
-	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
-	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
-
-	decoded = ice_decode_rx_desc_ptype(ptype);
-
 	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
 	skb->ip_summed = CHECKSUM_NONE;
-	skb_checksum_none_assert(skb);
 
-	/* check if Rx checksum is enabled */
-	if (!(ring->netdev->features & NETIF_F_RXCSUM))
+	decoded = libie_rx_pt_parse(ptype);
+	if (!libeth_rx_pt_has_checksum(ring->netdev, decoded))
 		return;
 
+	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
+
 	/* check if HW has decoded the packet and checksum */
 	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
 		return;
 
-	if (!(decoded.known && decoded.outer_ip))
-		return;
-
-	ipv4 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV4);
-	ipv6 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
-	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV6);
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S)))) {
 		ring->vsi->back->hw_rx_eipe_error++;
@@ -169,19 +140,10 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	 * we need to bump the checksum level by 1 to reflect the fact that
 	 * we are indicating we validated the inner checksum.
 	 */
-	if (decoded.tunnel_type >= ICE_RX_PTYPE_TUNNEL_IP_GRENAT)
+	if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
 		skb->csum_level = 1;
 
-	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
-	switch (decoded.inner_prot) {
-	case ICE_RX_PTYPE_INNER_PROT_TCP:
-	case ICE_RX_PTYPE_INNER_PROT_UDP:
-	case ICE_RX_PTYPE_INNER_PROT_SCTP:
-		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		break;
-	default:
-		break;
-	}
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
 	return;
 
 checksum_fail:
@@ -536,42 +498,6 @@ static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
 	return 0;
 }
 
-/* Define a ptype index -> XDP hash type lookup table.
- * It uses the same ptype definitions as ice_decode_rx_desc_ptype[],
- * avoiding possible copy-paste errors.
- */
-#undef ICE_PTT
-#undef ICE_PTT_UNUSED_ENTRY
-
-#define ICE_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
-	[PTYPE] = XDP_RSS_L3_##OUTER_IP_VER | XDP_RSS_L4_##I | XDP_RSS_TYPE_##PL
-
-#define ICE_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = 0
-
-/* A few supplementary definitions for when XDP hash types do not coincide
- * with what can be generated from ptype definitions
- * by means of preprocessor concatenation.
- */
-#define XDP_RSS_L3_NONE		XDP_RSS_TYPE_NONE
-#define XDP_RSS_L4_NONE		XDP_RSS_TYPE_NONE
-#define XDP_RSS_TYPE_PAY2	XDP_RSS_TYPE_L2
-#define XDP_RSS_TYPE_PAY3	XDP_RSS_TYPE_NONE
-#define XDP_RSS_TYPE_PAY4	XDP_RSS_L4
-
-static const enum xdp_rss_hash_type
-ice_ptype_to_xdp_hash[ICE_NUM_DEFINED_PTYPES] = {
-	ICE_PTYPES
-};
-
-#undef XDP_RSS_L3_NONE
-#undef XDP_RSS_L4_NONE
-#undef XDP_RSS_TYPE_PAY2
-#undef XDP_RSS_TYPE_PAY3
-#undef XDP_RSS_TYPE_PAY4
-
-#undef ICE_PTT
-#undef ICE_PTT_UNUSED_ENTRY
-
 /**
  * ice_xdp_rx_hash_type - Get XDP-specific hash type from the RX descriptor
  * @eop_desc: End of Packet descriptor
@@ -579,12 +505,7 @@ ice_ptype_to_xdp_hash[ICE_NUM_DEFINED_PTYPES] = {
 static enum xdp_rss_hash_type
 ice_xdp_rx_hash_type(const union ice_32b_rx_flex_desc *eop_desc)
 {
-	u16 ptype = ice_get_ptype(eop_desc);
-
-	if (unlikely(ptype >= ICE_NUM_DEFINED_PTYPES))
-		return 0;
-
-	return ice_ptype_to_xdp_hash[ptype];
+	return libie_rx_pt_parse(ice_get_ptype(eop_desc)).hash_type;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
new file mode 100644
index 000000000000..86f17e29b47d
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include <net/libeth/rx.h>
+
+/* Converting abstract packet type numbers into a software structure with
+ * the packet parameters to do O(1) lookup on Rx.
+ */
+
+static const u16 libeth_rx_pt_xdp_oip[] = {
+	[LIBETH_RX_PT_OUTER_L2]		= XDP_RSS_TYPE_NONE,
+	[LIBETH_RX_PT_OUTER_IPV4]	= XDP_RSS_L3_IPV4,
+	[LIBETH_RX_PT_OUTER_IPV6]	= XDP_RSS_L3_IPV6,
+};
+
+static const u16 libeth_rx_pt_xdp_iprot[] = {
+	[LIBETH_RX_PT_INNER_NONE]	= XDP_RSS_TYPE_NONE,
+	[LIBETH_RX_PT_INNER_UDP]	= XDP_RSS_L4_UDP,
+	[LIBETH_RX_PT_INNER_TCP]	= XDP_RSS_L4_TCP,
+	[LIBETH_RX_PT_INNER_SCTP]	= XDP_RSS_L4_SCTP,
+	[LIBETH_RX_PT_INNER_ICMP]	= XDP_RSS_L4_ICMP,
+	[LIBETH_RX_PT_INNER_TIMESYNC]	= XDP_RSS_TYPE_NONE,
+};
+
+static const u16 libeth_rx_pt_xdp_pl[] = {
+	[LIBETH_RX_PT_PAYLOAD_NONE]	= XDP_RSS_TYPE_NONE,
+	[LIBETH_RX_PT_PAYLOAD_L2]	= XDP_RSS_TYPE_NONE,
+	[LIBETH_RX_PT_PAYLOAD_L3]	= XDP_RSS_TYPE_NONE,
+	[LIBETH_RX_PT_PAYLOAD_L4]	= XDP_RSS_L4,
+};
+
+/**
+ * libeth_rx_pt_gen_hash_type - generate an XDP RSS hash type for a PT
+ * @pt: PT structure to evaluate
+ *
+ * Generates ```hash_type``` field with XDP RSS type values from the parsed
+ * packet parameters if they're obtained dynamically at runtime.
+ */
+void libeth_rx_pt_gen_hash_type(struct libeth_rpt *pt)
+{
+	pt->hash_type = 0;
+	pt->hash_type |= libeth_rx_pt_xdp_oip[pt->outer_ip];
+	pt->hash_type |= libeth_rx_pt_xdp_iprot[pt->inner_prot];
+	pt->hash_type |= libeth_rx_pt_xdp_pl[pt->payload_layer];
+}
+EXPORT_SYMBOL_NS_GPL(libeth_rx_pt_gen_hash_type, LIBETH);
+
+/* Module */
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("Common Ethernet library");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
new file mode 100644
index 000000000000..757d30914f8d
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include <linux/net/intel/libie/rx.h>
+
+/* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
+ * bitfield struct.
+ */
+
+/* A few supplementary definitions for when XDP hash types do not coincide
+ * with what can be generated from ptype definitions by means of preprocessor
+ * concatenation.
+ */
+#define XDP_RSS_L3_L2			XDP_RSS_TYPE_NONE
+#define XDP_RSS_L4_NONE			XDP_RSS_TYPE_NONE
+#define XDP_RSS_L4_TIMESYNC		XDP_RSS_TYPE_NONE
+#define XDP_RSS_TYPE_L3			XDP_RSS_TYPE_NONE
+#define XDP_RSS_TYPE_L4			XDP_RSS_L4
+
+#define LIBIE_RX_PT(oip, ofrag, tun, tp, tefr, iprot, pl) {		   \
+		.outer_ip		= LIBETH_RX_PT_OUTER_##oip,	   \
+		.outer_frag		= LIBETH_RX_PT_##ofrag,		   \
+		.tunnel_type		= LIBETH_RX_PT_TUNNEL_IP_##tun,	   \
+		.tunnel_end_prot	= LIBETH_RX_PT_TUNNEL_END_##tp,	   \
+		.tunnel_end_frag	= LIBETH_RX_PT_##tefr,		   \
+		.inner_prot		= LIBETH_RX_PT_INNER_##iprot,	   \
+		.payload_layer		= LIBETH_RX_PT_PAYLOAD_##pl,	   \
+		.hash_type		= XDP_RSS_L3_##oip |		   \
+					  XDP_RSS_L4_##iprot |		   \
+					  XDP_RSS_TYPE_##pl,		   \
+	}
+
+#define LIBIE_RX_PT_UNUSED		{ }
+
+#define __LIBIE_RX_PT_L2(iprot, pl)					   \
+	LIBIE_RX_PT(L2, NOT_FRAG, NONE, NONE, NOT_FRAG, iprot, pl)
+#define LIBIE_RX_PT_L2		__LIBIE_RX_PT_L2(NONE, L2)
+#define LIBIE_RX_PT_TS		__LIBIE_RX_PT_L2(TIMESYNC, L2)
+#define LIBIE_RX_PT_L3		__LIBIE_RX_PT_L2(NONE, L3)
+
+#define LIBIE_RX_PT_IP_FRAG(oip)					   \
+	LIBIE_RX_PT(IPV##oip, FRAG, NONE, NONE, NOT_FRAG, NONE, L3)
+#define LIBIE_RX_PT_IP_L3(oip, tun, teprot, tefr)			   \
+	LIBIE_RX_PT(IPV##oip, NOT_FRAG, tun, teprot, tefr, NONE, L3)
+#define LIBIE_RX_PT_IP_L4(oip, tun, teprot, iprot)			   \
+	LIBIE_RX_PT(IPV##oip, NOT_FRAG, tun, teprot, NOT_FRAG, iprot, L4)
+
+#define LIBIE_RX_PT_IP_NOF(oip, tun, ver)				   \
+	LIBIE_RX_PT_IP_L3(oip, tun, ver, NOT_FRAG),			   \
+	LIBIE_RX_PT_IP_L4(oip, tun, ver, UDP),				   \
+	LIBIE_RX_PT_UNUSED,						   \
+	LIBIE_RX_PT_IP_L4(oip, tun, ver, TCP),				   \
+	LIBIE_RX_PT_IP_L4(oip, tun, ver, SCTP),				   \
+	LIBIE_RX_PT_IP_L4(oip, tun, ver, ICMP)
+
+/* IPv oip --> tun --> IPv ver */
+#define LIBIE_RX_PT_IP_TUN_VER(oip, tun, ver)				   \
+	LIBIE_RX_PT_IP_L3(oip, tun, ver, FRAG),				   \
+	LIBIE_RX_PT_IP_NOF(oip, tun, ver)
+
+/* Non Tunneled IPv oip */
+#define LIBIE_RX_PT_IP_RAW(oip)						   \
+	LIBIE_RX_PT_IP_FRAG(oip),					   \
+	LIBIE_RX_PT_IP_NOF(oip, NONE, NONE)
+
+/* IPv oip --> tun --> { IPv4, IPv6 } */
+#define LIBIE_RX_PT_IP_TUN(oip, tun)					   \
+	LIBIE_RX_PT_IP_TUN_VER(oip, tun, IPV4),				   \
+	LIBIE_RX_PT_IP_TUN_VER(oip, tun, IPV6)
+
+/* IPv oip --> GRE/NAT tun --> { x, IPv4, IPv6 } */
+#define LIBIE_RX_PT_IP_GRE(oip, tun)					   \
+	LIBIE_RX_PT_IP_L3(oip, tun, NONE, NOT_FRAG),			   \
+	LIBIE_RX_PT_IP_TUN(oip, tun)
+
+/* Non Tunneled IPv oip
+ * IPv oip --> { IPv4, IPv6 }
+ * IPv oip --> GRE/NAT --> { x, IPv4, IPv6 }
+ * IPv oip --> GRE/NAT --> MAC --> { x, IPv4, IPv6 }
+ * IPv oip --> GRE/NAT --> MAC/VLAN --> { x, IPv4, IPv6 }
+ */
+#define LIBIE_RX_PT_IP(oip)						   \
+	LIBIE_RX_PT_IP_RAW(oip),					   \
+	LIBIE_RX_PT_IP_TUN(oip, IP),					   \
+	LIBIE_RX_PT_IP_GRE(oip, GRENAT),				   \
+	LIBIE_RX_PT_IP_GRE(oip, GRENAT_MAC),				   \
+	LIBIE_RX_PT_IP_GRE(oip, GRENAT_MAC_VLAN)
+
+/* Lookup table mapping for O(1) parsing */
+const struct libeth_rpt libie_rx_pt_lut[LIBIE_RX_PT_NUM] = {
+	/* L2 packet types */
+	LIBIE_RX_PT_UNUSED,
+	LIBIE_RX_PT_L2,
+	LIBIE_RX_PT_TS,
+	LIBIE_RX_PT_L2,
+	LIBIE_RX_PT_UNUSED,
+	LIBIE_RX_PT_UNUSED,
+	LIBIE_RX_PT_L2,
+	LIBIE_RX_PT_L2,
+	LIBIE_RX_PT_UNUSED,
+	LIBIE_RX_PT_UNUSED,
+	LIBIE_RX_PT_L2,
+	LIBIE_RX_PT_UNUSED,
+
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+	LIBIE_RX_PT_L3,
+
+	LIBIE_RX_PT_IP(4),
+	LIBIE_RX_PT_IP(6),
+};
+EXPORT_SYMBOL_NS_GPL(libie_rx_pt_lut, LIBIE);
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("Intel(R) Ethernet common library");
+MODULE_IMPORT_NS(LIBETH);
+MODULE_LICENSE("GPL");
-- 
2.44.0

