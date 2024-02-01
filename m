Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA7844FB8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 04:28:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E32841C55;
	Thu,  1 Feb 2024 03:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E32841C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706758124;
	bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OUJCr6DP4R4ul/W7899lsOllcv+HMuvBMOxUXLrECt/lHmlYouy3LmB1/S0SUh0nb
	 JLWsWWGlQzV9JsSSIuQWyVbZrV3f1QwE98XJHkmtQ9VC2id0dmaavPluO5yNQhLEPk
	 7SAOPs6u+Xw9y7WPDj/ZIwUKacMZEQAtkHNjbGy1aerYHn/k+g2jCsl8Egf3PaM8kp
	 aTrxvfWnS/nZW5IkwJyAvLSd2msfzVwClTaQPP3UBqAWjc4+HuB3QGQxxGLAyqSpEB
	 IYg1dhigWC71xianWj/sRqGuf9+on0ta/t6K66wOeSGESoefWa8kQeF7VA9c6yuiPl
	 /FMDJbMwtB4xQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktcwCCSetbYL; Thu,  1 Feb 2024 03:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DEB741BCD;
	Thu,  1 Feb 2024 03:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DEB741BCD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24A1A1BF951
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ECBCD403C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECBCD403C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MfQeTKBR37RQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 03:28:36 +0000 (UTC)
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A489740280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 03:28:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A489740280
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-5cddc5455aeso410706a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 19:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706758116; x=1707362916;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
 b=KoyXMsX7P2eQRQ1dV1uzCizkaKhysKWoJlspGVC4LRBWLMCdEBh80Im8jApqTDV9m1
 tQqQHBwI1jlamJAN1RkqMLfAsv6H0qI3zVnqKd+fZwm7Phbsj9p8NKIgk1+hEsaBUb/0
 7Nfjvwy0gHShLVYcuCly+grQnfVE/herTZaRugcKI90bW9aXjLd34ZEmu6fj3A9gtubb
 8Z7Gmn0fajUN5o9B+CRGBPYHOXuL6xgBFtlzK2f0Q90VobiuhnrQLGLDFws4OTM/4jMV
 9bzJbAthtcf9UN3WXRHn1XzcvvwTO02zFObQM4Fs/hdcdGKlF9L6i5BPhTgarpjwtxtu
 wFtg==
X-Gm-Message-State: AOJu0YzVC3o1t88J9HrdD8Yk5fGFXZt4tcjDTdmjyxbqvCwGzqnLsFCa
 Z4UvKqueLqih5bjpxbPSRRaGti9mnH4OwYBZJDdgAZT9n/XxQNbv
X-Google-Smtp-Source: AGHT+IEg4yxMdZKR72aUWYqIJObTXDnPnApeUkWrbWcBkPgWJ9jQiF6bv9EpHP9LqAQfMdqtWN+v9Q==
X-Received: by 2002:a05:6a20:d485:b0:19c:881d:78e6 with SMTP id
 im5-20020a056a20d48500b0019c881d78e6mr3543871pzb.42.1706758115776; 
 Wed, 31 Jan 2024 19:28:35 -0800 (PST)
Received: from ocxma-dut.. ([153.126.233.62]) by smtp.gmail.com with ESMTPSA id
 im23-20020a170902bb1700b001d8c8c903c0sm347852plb.149.2024.01.31.19.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 19:28:35 -0800 (PST)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>
Date: Thu,  1 Feb 2024 03:27:49 +0000
Message-Id: <20240201032748.1027121-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706758116; x=1707362916; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4Ho6tWOUJQG5jwgdiQ+YC/nc1aAPjOngvOC35lqmr7A=;
 b=TAUdXzmJXDBlLP0+vxF2tlpkVfxK2tNHfUNHVcWY96N9IT8XotH+AYyKOiTOSxTx51
 oBBv+nQPKvyWJC7ZhaW31ZccN0TxhI5BYY2m/gHQCUiKuf/MJ4gDTtCAPFvUMAsRe3w0
 D1kbZkQ1jYpae1Qg+laxaF5GeVuidKtWnYzuBLCyl0b2N5hURco0oqbPRsfN6NMM27eW
 tO1UFQ4Ak4ltvTBQz4TXhqrggGEuF249+IyljX6VY0EOacVRuNTyM296gvatNUQ7hU7n
 yRcdMsGmMqVOl6ohI2k0CtuEis8tnLKbg7pFdr/EUYHC9KaiqvnH6MWxPyjaUE/gOvDs
 i5rg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TAUdXzmJ
Subject: [Intel-wired-lan] [PATCH net-next v6 1/2] ethtool: Add GTP RSS hash
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

