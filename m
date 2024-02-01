Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4FB844FCF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 04:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EB3141C5F;
	Thu,  1 Feb 2024 03:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EB3141C5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706758424;
	bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IqWJN2VNb6+ZZBpPa2iN12VwQFCHHesfX9LOJLUMGgSveNRaUwbbGmre4zGSdM5KY
	 gt1Vi0gxHh+zCroMpn8JqQbG0oG0IjLg7lkSKgLEBY6M2XzBUnhvdcPxfdwW1NJywh
	 fYYdgqJDIem7UVlYhTJGSEuf+UBPWLi8V500wSPoXBx/u5johXYXRW3XoOCV/EL2V0
	 3JgrL2y/i4kdq5U4nc39g000z1tHg/TPVyW5p9MXqBERMEHW0PG2pP10xpsGwRoqqa
	 K4T/gukV2Y3TuuBPLSEcNqIx+EWa68s9uiawpnG8ZNXCdLsPZHcqupbq6xgoYdwj7x
	 vUdmvCkkkmQ0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5AdOXQgFS4Y; Thu,  1 Feb 2024 03:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC70A4020C;
	Thu,  1 Feb 2024 03:33:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC70A4020C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C23A1BF951
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D85B8186E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:33:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D85B8186E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TI5XxjzUSzjp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 03:33:36 +0000 (UTC)
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FFA981854
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FFA981854
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-3be78c26850so326712b6e.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 19:33:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706758415; x=1707363215;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
 b=VimEazSyLphpWmC1eMgtH7G3pxis4TNjLZBEkHDSqppGo3zK5PBscORO3RvUboHk4H
 SSSwRRZelgTSjKZCz8teIGC0pbIPBwvfcmnmWCyeNF8sC5b3uNkBb8Y5zMK6rqBuR6VQ
 6w2nb78V1c6RMKnnvMZu/k+z8QQcPxfnONi0KDfLbtBUEAltqAhvANG0sn4xje3RGVrT
 TDn2K5RJtcz3wWfEoopDto5jg10qZqnfA+395oM8W5qlf6kyJPX1/aiDxJYuWQtUtclH
 n1Of4IcYhzbafd4Q7n5WwpjKAWYq4gjTD3lxesm8bDVODhm9tR7TdB+tFP9oOaHTNidq
 y7Zw==
X-Gm-Message-State: AOJu0YwEsKAHIs7knpzONrcTo8K1eAOF4kEAfloDAo1B3q7+OMfEACBc
 +EfE7RiUshTxNv5TFWrvnrAbEhCbFcK1ejByyXHOAFaf7YXPzvi+
X-Google-Smtp-Source: AGHT+IENjLvEpE9KD1z9Zpm/r2KpiGmQBztfkkKyMKEkrLlj9O/v/fl7kfS6TC+kgGwW+FX5ejt8SA==
X-Received: by 2002:a05:6808:170e:b0:3be:58:4a23 with SMTP id
 bc14-20020a056808170e00b003be00584a23mr3686028oib.54.1706758414953; 
 Wed, 31 Jan 2024 19:33:34 -0800 (PST)
Received: from ocxma-dut.. ([153.126.233.62]) by smtp.gmail.com with ESMTPSA id
 n12-20020aa78a4c000000b006ddd2be2169sm10661625pfa.73.2024.01.31.19.33.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 19:33:34 -0800 (PST)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>
Date: Thu,  1 Feb 2024 03:33:09 +0000
Message-Id: <20240201033310.1028154-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706758415; x=1707363215; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
 b=bIG47xNgw6tbOqG7hAxJmpqNBqm8+nEywIESN+/jkVF0ztDqlf9C4omRj+y1hdXx1K
 OGk4EtLFbH6R0T+wEaIIRq9VlK44rpGnNEGtsjuT2ZXQueHSpMepC6RLcTZuJkxHUU9+
 CH9x2m/LUa2ycmTZwe5Nt1SDMU6ods7NWvYSlq0nx9i7/yvnpIqY9XqIPPVatfB6/0A/
 aEto75gtjLZT7uyYncHxNNEPYtcg6RpCYmKQYb+rS8O1eKYhPKKcRfsk8+rfYn9+4MyM
 /Mr0sa09ApR7o8aDYT7oevIWaOTv71KoFlQHVg6bkxyFYkZbMOIow7rVEqnPrlEPz7j3
 oYng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bIG47xNg
Subject: [Intel-wired-lan] [PATCH net-next v7 1/2] ethtool: Add GTP RSS hash
 options to ethtool.h
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
Cc: linux-doc@vger.kernel.org, vladimir.oltean@nxp.com,
 linux-kernel@vger.kernel.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, Takeru Hayasaka <hayatake396@gmail.com>,
 netdev@vger.kernel.org, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a patch that enables RSS functionality for GTP packets using ethtool.

A user can include TEID and make RSS work for GTP-U over IPv4 by doing the
following:`ethtool -N ens3 rx-flow-hash gtpu4 sde`

In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
gtpu(4|6)u, and gtpu(4|6)d.

gtpc(4|6): Used for GTP-C in IPv4 and IPv6, where the GTP header format does
not include a TEID.
gtpc(4|6)t: Used for GTP-C in IPv4 and IPv6, with a GTP header format that
includes a TEID.
gtpu(4|6): Used for GTP-U in both IPv4 and IPv6 scenarios.
gtpu(4|6)e: Used for GTP-U with extended headers in both IPv4 and IPv6.
gtpu(4|6)u: Used when the PSC (PDU session container) in the GTP-U extended
header includes Uplink, applicable to both IPv4 and IPv6.
gtpu(4|6)d: Used when the PSC in the GTP-U extended header includes Downlink,
for both IPv4 and IPv6.

GTP generates a flow that includes an ID called TEID to identify the tunnel.
This tunnel is created for each UE (User Equipment).By performing RSS based on
this flow, it is possible to apply RSS for each communication unit from the UE.
Without this, RSS would only be effective within the range of IP addresses. For
instance, the PGW can only perform RSS within the IP range of the SGW.
Problematic from a load distribution perspective, especially if there's a bias
in the terminals connected to a particular base station.This case can be
solved by using this patch.

Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
---
v2->v3: Based on Harald-san's review, I added documentation and comments to
ethtool.h and ice.rst.
v3->v4: Based on Marcin-san's review, I added the missing code for GTPC and
GTPC_TEID, and revised the documentation and comments.
v4->v5: Based on Marcin-san's review, I fixed rename and wrong code regarding
GTPC
v5->v6: Based on Marcin-san's review, Undoing the addition of unnecessary
blank lines.Minor fixes.
v6->v7 Based on Jakub-san's review, Split the patch.
 include/uapi/linux/ethtool.h | 48 ++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index 06ef6b78b7de..11fc18988bc2 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -2023,6 +2023,53 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define	IPV4_FLOW	0x10	/* hash only */
 #define	IPV6_FLOW	0x11	/* hash only */
 #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
+
+/* Used for GTP-U IPv4 and IPv6.
+ * The format of GTP packets only includes
+ * elements such as TEID and GTP version.
+ * It is primarily intended for data communication of the UE.
+ */
+#define GTPU_V4_FLOW 0x13	/* hash only */
+#define GTPU_V6_FLOW 0x14	/* hash only */
+
+/* Use for GTP-C IPv4 and v6.
+ * The format of these GTP packets does not include TEID.
+ * Primarily expected to be used for communication
+ * to create sessions for UE data communication,
+ * commonly referred to as CSR (Create Session Request).
+ */
+#define GTPC_V4_FLOW 0x15	/* hash only */
+#define GTPC_V6_FLOW 0x16	/* hash only */
+
+/* Use for GTP-C IPv4 and v6.
+ * Unlike GTPC_V4_FLOW, the format of these GTP packets includes TEID.
+ * After session creation, it becomes this packet.
+ * This is mainly used for requests to realize UE handover.
+ */
+#define GTPC_TEID_V4_FLOW 0x17	/* hash only */
+#define GTPC_TEID_V6_FLOW 0x18	/* hash only */
+
+/* Use for GTP-U and extended headers for the PSC (PDU Session Container).
+ * The format of these GTP packets includes TEID and QFI.
+ * In 5G communication using UPF (User Plane Function),
+ * data communication with this extended header is performed.
+ */
+#define GTPU_EH_V4_FLOW 0x19	/* hash only */
+#define GTPU_EH_V6_FLOW 0x1a	/* hash only */
+
+/* Use for GTP-U IPv4 and v6 PSC (PDU Session Container) extended headers.
+ * This differs from GTPU_EH_V(4|6)_FLOW in that it is distinguished by
+ * UL/DL included in the PSC.
+ * There are differences in the data included based on Downlink/Uplink,
+ * and can be used to distinguish packets.
+ * The functions described so far are useful when you want to
+ * handle communication from the mobile network in UPF, PGW, etc.
+ */
+#define GTPU_UL_V4_FLOW 0x1b	/* hash only */
+#define GTPU_UL_V6_FLOW 0x1c	/* hash only */
+#define GTPU_DL_V4_FLOW 0x1d	/* hash only */
+#define GTPU_DL_V6_FLOW 0x1e	/* hash only */
+
 /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
 #define	FLOW_EXT	0x80000000
 #define	FLOW_MAC_EXT	0x40000000
@@ -2037,6 +2084,7 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define	RXH_IP_DST	(1 << 5)
 #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
 #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
+#define	RXH_GTP_TEID	(1 << 8) /* teid in case of GTP */
 #define	RXH_DISCARD	(1 << 31)
 
 #define	RX_CLS_FLOW_DISC	0xffffffffffffffffULL
-- 
2.34.1

