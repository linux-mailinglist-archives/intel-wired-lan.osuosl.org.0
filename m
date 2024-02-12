Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D45850CD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 03:04:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B99C840A90;
	Mon, 12 Feb 2024 02:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yj0x0P4d-jQZ; Mon, 12 Feb 2024 02:04:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E7F741547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707703467;
	bh=TsrxGbd+ooYSWDZTCkHy7ejEqn2Gr/9LfDCkLbwwsGE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QM15gUl5/6DyotbDjGvZaxI5OZda1WsV9u5KPEzd7HirBC/lxFmEEKBklF+OhyKGf
	 n/mO6kKS3TwtqwyBdmkAfDCL1sQNugomw5MQAEOCsnVrkKIU5YEQykzpQW/TO/BRr5
	 UsIvLFQVsNifSndUS8x8QpxwPajPZOxgJZchQxJW4iNvqWlvV3O7UKYuAuhlz7rpng
	 sLKyt+vkHCSZi+Jp7aaXpg/J7GcUIfzZBlNS0iETmWA5aGl+gNlQLuQYkMcCWfArIf
	 h6esElx+7uBZWfOtN5knXEmfrwzJ/NZ3qThTxRESJF1Rbl8UKXB89RP8rZdJUzsNQW
	 YxifJd1hOxmRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E7F741547;
	Mon, 12 Feb 2024 02:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC0261BF420
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF3FE41808
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOPXA9NbVZSP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 02:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A504A41807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A504A41807
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A504A41807
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 02:04:23 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-1d9bd8fa49eso19072995ad.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 18:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707703463; x=1708308263;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TsrxGbd+ooYSWDZTCkHy7ejEqn2Gr/9LfDCkLbwwsGE=;
 b=EYnv3Q/NaizvU6EQdCr9xEayXTBOIF9youCT200vXTK/zYZAaE4Pa/WiQdArzvM7xW
 qaZIUG8Phpwi6IhiCklITA26QmCm8TLmzJR+mt+8MC/dtA4ibmDeF28A6CKn0BG7vyCT
 W+Hn/kdC2DvIDDbwowUzXuPhRfUzhnuzM/XW/yowxYl8jP00mL64aPAupFsc18xajwa8
 WRY3QYR2TMuh1Xifuiykhg8Pl06YuahF1/xTxF5D6z7CLbajQy7ud5TbdNpFa/Eei1Da
 L1ueqtu+MZbXjPS5Qd+dQp3uB582a5Ck2msVpdCaskOq4EKgHCJUGhXMw6UTy8ZMxzQW
 /Tyw==
X-Gm-Message-State: AOJu0Yyc3vGUyGdkV3XGrFjfSME7dEVg//5i2eDodekQ+YGPjJC5n7ZX
 bImIn9wX36tn27wD9MdGDVEcFK8ZUNGiOeVJECGC9ZFEgMoedVp8
X-Google-Smtp-Source: AGHT+IHfpAhqqSvwCArO+eSLiXKqftpXVya7qy4ArmDpb0OddSqzStbnsx0XYcV1AllL1RRt6nXXmQ==
X-Received: by 2002:a17:903:1104:b0:1d9:c367:2032 with SMTP id
 n4-20020a170903110400b001d9c3672032mr6149354plh.10.1707703462565; 
 Sun, 11 Feb 2024 18:04:22 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWy1fDCXF/hq1vAxIEA9hjG7uksPhaCkv9MPZSMuZ97awi4I71xxZCl4pqzM64Wd/1ESbZJnxGNaPd08U2bewdPYnL+TP1CAUeHhjQCakujFF4IeLGqL0fVHrh5eexQLPWEJzlTzKBTqWG7uugeB/GlH/ZG+RVIW5xvDtCH2fXmJ2CY4scAVRS/TGWAQQgUblf7IROWLnNpsmeruP7ACUqfel9tlvlqNOU9FqzwoMgivkg1DX70kx98CLw4fAefDeH/VU1/TpqtLO5JwWbOuVBGJNZAZBJYiJwY67wZVU7O7DyMCf1E6gAhYwFBnrn+IKS7q8MtagBDTHfoyeyVx152alSjTAo9Lj7O6ZxFarsmfArh24oESnH5Kpje29cnKQgg6oqV+FGWIhsCExmEWtyHoqtzYmBTRF7OV5QH0gyRaZJHdo7KLLbYNELLenwoFU7trJwUBvyLwYj6q73DrINOc5UseadQqC3uQnPrP9BybDOBMeNl3SwcUxg=
Received: from ocxma-dut.. ([153.126.233.61]) by smtp.gmail.com with ESMTPSA id
 kc8-20020a17090333c800b001d5b93560c3sm4913556plb.167.2024.02.11.18.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Feb 2024 18:04:22 -0800 (PST)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>
Date: Mon, 12 Feb 2024 02:04:03 +0000
Message-Id: <20240212020403.1639030-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707703463; x=1708308263; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=TsrxGbd+ooYSWDZTCkHy7ejEqn2Gr/9LfDCkLbwwsGE=;
 b=ITyUJRgYU1gnExG3O74fLTQp+D4FKmbHeFDoNbNsofkNrhDlxxIVLmw1cT4vLAxlEI
 KSndSG1dR/NTT4hVKReonrcxduouA7+uykUQ6wGhHX/0oXCyq829hfyoxfKdj0ose/Kr
 skRGKvLd/WJtPNUYwLHMNhw8oVa37e63DdsFURUR++O9CKlZstO8VxOXXBjg3kblq/A7
 3RM5YRsHhqMT6xgtXdWJ5jkGBDc6Psgktqw/+W9RFDSaYO2dq2JFoTGrghRkg9qIsUAh
 cyqh+zKDQukoDAcnaIis2+QR3JMDGrZbYmqCBAiVALct8vMQzrz2/W22BARG1xKsmUDz
 8KgA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ITyUJRgY
Subject: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS hash
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
 Marcin Szycik <marcin.szycik@linux.intel.com>,
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
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
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
v7->v8: There are no code changes. I've resent the patch, including Marcin-san's
patch, because PatchWork did not interpret the patch correctly.Simon-san told
me. Thanks.
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

