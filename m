Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CED7C763F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34F0261062;
	Thu, 12 Oct 2023 19:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34F0261062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137611;
	bh=1jpnHaSedixiXN4AKVK0TrZWRJzHeB0E0efJCy3cQ5U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9IM1ZeVq6LfVO37tKoh1IfFR7BxSmR4+uGznggRuD8sbF4s5wPW8MpckztZEKv3zM
	 7QwDgBuiuOe6q8PGiFh2bKvOt8MfzuDdUJK6ACPI7lflQrLFBPYA29ljldEwI4FWKL
	 GBUFK6XPy6L8ikn/Rbd5gdVsoEOtkPQT192icmfASOE0K4ablQ4+CC4PseO4WeEcJm
	 ejINEKrLbbUULwZ2xRnvOqu6v42fmP+NvLNHwacXjSNF4UORj6BiceafmJzl3+R+kj
	 PUsLD4z2eovW9xRBspRN4sEtCrqFk08ma4BaFNGWQA5ZBDjIBrWOJD3He8pkfjzGlC
	 2w3upOACOZz7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BjPiZfwLzLWw; Thu, 12 Oct 2023 19:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72FA460F26;
	Thu, 12 Oct 2023 19:06:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72FA460F26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A5FB1BF302
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Oct 2023 07:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F205822BC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Oct 2023 07:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F205822BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1nBVPbFvBBR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Oct 2023 07:54:06 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0956822AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Oct 2023 07:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0956822AC
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-59f55c276c3so44007287b3.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 08 Oct 2023 00:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696751645; x=1697356445;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NZxvUPc0BhnwiDbJCKmaxQ0rdkiyEaqH40H6qCqFDAc=;
 b=wu7VGlaR0Mwz9KS2kdNGZLLvB2KOQhhIgkOkEV/f9W4FryTeAbG53cfTV//yZAIEoh
 T2VTcprGwECxDKw5CBiBQzYN3M/KmFLxiCjvCC0i/ealQg4G5mR593XQVKMmIslmp8k9
 8sRAL5KgzhgRsL779+W0+oNxRfGhqf3ChmPjeUMyeU83VxntZUckolobnFvW8B7dcKnM
 u4qthGggPi5VDiSqXBvdeDGKrf7LfNfBYgBD499qZNLOg8Vs3jBMXAKtg1j6INKo5ebZ
 yhNuKgcs+ZNwseZuYf7JqFzDlaZArwPyc+rKxKUNMy92p0IOQSQgMi/5yGHiaLnyCHjS
 wKyw==
X-Gm-Message-State: AOJu0YwWXrvcq/Lu2lcNHNtCVWQa2oCW/aUUdlA+xg9fotCW6ZIIflhD
 9sVFUe6+WQRr54sbQny7jUM=
X-Google-Smtp-Source: AGHT+IHpDcOc923WIIl4ZPCG22n/xC1XbcFXbWIr/t4GneLXge7flEdXmRqG6TJ5A/E156F2C8LPaw==
X-Received: by 2002:a0d:cbca:0:b0:59b:f152:8997 with SMTP id
 n193-20020a0dcbca000000b0059bf1528997mr13688152ywd.0.1696751644630; 
 Sun, 08 Oct 2023 00:54:04 -0700 (PDT)
Received: from ocxma-dut.. ([153.126.233.62]) by smtp.gmail.com with ESMTPSA id
 x74-20020a81a04d000000b0058c55d40765sm2667127ywg.106.2023.10.08.00.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Oct 2023 00:54:04 -0700 (PDT)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun,  8 Oct 2023 07:52:22 +0000
Message-Id: <20231008075221.61863-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696751645; x=1697356445; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NZxvUPc0BhnwiDbJCKmaxQ0rdkiyEaqH40H6qCqFDAc=;
 b=G/S7/HAac1ReW7fc8bOh4MzmN8H6T3AtQLgD8KfI4gR9bppx5jISoFmdBE7haaMA3x
 8R3Jl+msCmoKO4GuJVnwq74ivK0HL9A4DfY0ugOPNk1ijKalASM9cp3no6E/PwtDBlbq
 fu7yU1tZrxbHKgImpFaRkZDxiPN6yirKTKTkOreafk6m2GIn3qZ4NF26L39HCP98O4C9
 2RG3pa1fp///s+kUuBHBNYaugcZTsi4+t5YFRjfOn1W9OUtyGXiDaoHkPo/zytVQUtxb
 jpmvPAqR7JzBHqDpcRx0GL+vJSfupPIXD8u8rhGPaihA0NV/lmDlqz46lZ0GURUSVOeM
 ikhQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=G/S7/HAa
Subject: [Intel-wired-lan] [PATCH net-next] ethtool: ice: Support for RSS
 settings to GTP from ethtool
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Takeru Hayasaka <hayatake396@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a patch that enables RSS functionality for GTP packets using
ethtool.
A user can include her TEID and make RSS work for GTP-U over IPv4 by
doing the following:
`ethtool -N ens3 rx-flow-hash gtpu4 sd`
In addition to gtpu(4|6), we now support gtpc(4|6), gtpu(4|6)e,
gtpu(4|6)u, and gtpu(4|6)d.

Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
---
 sorry. i signed off by mistake in email. i fixed.
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 98 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h    | 15 +++
 drivers/net/ethernet/intel/ice/ice_lib.c     | 70 ++++++++++++++
 include/uapi/linux/ethtool.h                 | 10 ++
 4 files changed, 191 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ad4d4702129f..a5ee6638bc60 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2404,6 +2404,21 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	case SCTP_V4_FLOW:
 		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
 		break;
+	case GTPU_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPC_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_EH_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_UL_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPU_DL_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4;
+		break;
 	case TCP_V6_FLOW:
 		hdrs |= ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6;
 		break;
@@ -2413,9 +2428,25 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	case SCTP_V6_FLOW:
 		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
 		break;
+	case GTPU_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPC_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_EH_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_UL_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPU_DL_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6;
+		break;
 	default:
 		break;
 	}
+
 	return hdrs;
 }
 
@@ -2431,6 +2462,12 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_SRC_PORT)
 #define ICE_FLOW_HASH_FLD_SCTP_DST_PORT	\
 	BIT_ULL(ICE_FLOW_FIELD_IDX_SCTP_DST_PORT)
+#define ICE_FLOW_HASH_FLD_GTPC_TEID	BIT_ULL(ICE_FLOW_FIELD_IDX_GTPC_TEID)
+#define ICE_FLOW_HASH_FLD_GTPU_IP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_IP_TEID)
+#define ICE_FLOW_HASH_FLD_GTPU_EH_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_EH_TEID)
+#define ICE_FLOW_HASH_FLD_GTPU_EH_QFI BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_EH_QFI)
+#define ICE_FLOW_HASH_FLD_GTPU_UP_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID)
+#define ICE_FLOW_HASH_FLD_GTPU_DWN_TEID BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID)
 
 /**
  * ice_parse_hash_flds - parses hash fields from RSS hash input
@@ -2448,6 +2485,11 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
 		case TCP_V4_FLOW:
 		case UDP_V4_FLOW:
 		case SCTP_V4_FLOW:
+		case GTPU_V4_FLOW:
+		case GTPC_V4_FLOW:
+		case GTPU_EH_V4_FLOW:
+		case GTPU_UL_V4_FLOW:
+		case GTPU_DL_V4_FLOW:
 			if (nfc->data & RXH_IP_SRC)
 				hfld |= ICE_FLOW_HASH_FLD_IPV4_SA;
 			if (nfc->data & RXH_IP_DST)
@@ -2456,6 +2498,11 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
 		case TCP_V6_FLOW:
 		case UDP_V6_FLOW:
 		case SCTP_V6_FLOW:
+		case GTPU_V6_FLOW:
+		case GTPC_V6_FLOW:
+		case GTPU_EH_V6_FLOW:
+		case GTPU_UL_V6_FLOW:
+		case GTPU_DL_V6_FLOW:
 			if (nfc->data & RXH_IP_SRC)
 				hfld |= ICE_FLOW_HASH_FLD_IPV6_SA;
 			if (nfc->data & RXH_IP_DST)
@@ -2489,11 +2536,50 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
 			if (nfc->data & RXH_L4_B_2_3)
 				hfld |= ICE_FLOW_HASH_FLD_SCTP_DST_PORT;
 			break;
+		case GTPU_V4_FLOW:
+		case GTPU_V6_FLOW:
+		case GTPU_EH_V4_FLOW:
+		case GTPU_EH_V6_FLOW:
+		case GTPU_UL_V4_FLOW:
+		case GTPU_UL_V6_FLOW:
+		case GTPU_DL_V4_FLOW:
+		case GTPU_DL_V6_FLOW:
+			if (nfc->data & RXH_L4_B_0_1)
+				hfld |= ICE_FLOW_HASH_FLD_TCP_SRC_PORT |
+						ICE_FLOW_HASH_FLD_UDP_SRC_PORT;
+			if (nfc->data & RXH_L4_B_2_3)
+				hfld |= ICE_FLOW_HASH_FLD_TCP_DST_PORT |
+						ICE_FLOW_HASH_FLD_UDP_DST_PORT;
+			break;
 		default:
 			break;
 		}
 	}
 
+	switch (nfc->flow_type) {
+	case GTPC_V4_FLOW:
+	case GTPC_V6_FLOW:
+		hfld |= ICE_FLOW_HASH_FLD_GTPC_TEID;
+		break;
+	case GTPU_V4_FLOW:
+	case GTPU_V6_FLOW:
+		hfld |= ICE_FLOW_HASH_FLD_GTPU_IP_TEID;
+		break;
+	case GTPU_EH_V4_FLOW:
+	case GTPU_EH_V6_FLOW:
+		hfld |= ICE_FLOW_HASH_FLD_GTPU_EH_TEID;
+		break;
+	case GTPU_UL_V4_FLOW:
+	case GTPU_UL_V6_FLOW:
+		hfld |= ICE_FLOW_HASH_FLD_GTPU_UP_TEID;
+		break;
+	case GTPU_DL_V4_FLOW:
+	case GTPU_DL_V6_FLOW:
+		hfld |= ICE_FLOW_HASH_FLD_GTPU_DWN_TEID;
+		break;
+	default:
+		break;
+	}
 	return hfld;
 }
 
@@ -2590,12 +2676,20 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 
 	if (hash_flds & ICE_FLOW_HASH_FLD_TCP_SRC_PORT ||
 	    hash_flds & ICE_FLOW_HASH_FLD_UDP_SRC_PORT ||
-	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_SRC_PORT)
+	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_SRC_PORT ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
 		nfc->data |= (u64)RXH_L4_B_0_1;
 
 	if (hash_flds & ICE_FLOW_HASH_FLD_TCP_DST_PORT ||
 	    hash_flds & ICE_FLOW_HASH_FLD_UDP_DST_PORT ||
-	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT)
+	    hash_flds & ICE_FLOW_HASH_FLD_SCTP_DST_PORT ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
 		nfc->data |= (u64)RXH_L4_B_2_3;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.h b/drivers/net/ethernet/intel/ice/ice_flow.h
index b465d27d9b80..7ddf6ce994e7 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.h
+++ b/drivers/net/ethernet/intel/ice/ice_flow.h
@@ -64,6 +64,21 @@
 	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_EH_TEID | \
 	 ICE_FLOW_HASH_GTP_U_EH_QFI)
 
+#define ICE_FLOW_HASH_GTP_U_UP_TEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_UP_TEID))
+#define ICE_FLOW_HASH_GTP_U_DWN_TEID \
+	(BIT_ULL(ICE_FLOW_FIELD_IDX_GTPU_DWN_TEID))
+
+#define ICE_FLOW_HASH_GTP_U_IPV4_UP \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_UP_TEID)
+#define ICE_FLOW_HASH_GTP_U_IPV6_UP \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_UP_TEID)
+
+#define ICE_FLOW_HASH_GTP_U_IPV4_DWN \
+	(ICE_FLOW_HASH_IPV4 | ICE_FLOW_HASH_GTP_U_DWN_TEID)
+#define ICE_FLOW_HASH_GTP_U_IPV6_DWN \
+	(ICE_FLOW_HASH_IPV6 | ICE_FLOW_HASH_GTP_U_DWN_TEID)
+
 #define ICE_FLOW_HASH_PPPOE_SESS_ID \
 	(BIT_ULL(ICE_FLOW_FIELD_IDX_PPPOE_SESS_ID))
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 201570cd2e0b..a9664b48eddb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1667,6 +1667,41 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %d\n",
 			vsi_num, status);
 
+	/* configure RSS for gtpc4 with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_IPV4_TEID,
+				 ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu4 with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV4_TEID,
+				 ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu4e with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV4_EH,
+				 ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4e flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu4u with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV4_UP,
+				 ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4u flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu4d with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV4_DWN,
+				 ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4d flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
 	/* configure RSS for tcp6 with input set IPv6 src/dst, TCP src/dst */
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_HASH_TCP_IPV6,
 				 ICE_FLOW_SEG_HDR_TCP | ICE_FLOW_SEG_HDR_IPV6);
@@ -1688,6 +1723,41 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
 			vsi_num, status);
 
+	/* configure RSS for gtpc6 with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_IPV6_TEID,
+				 ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc6 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu6 with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV6_TEID,
+				 ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu6e with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV6_EH,
+				 ICE_FLOW_SEG_HDR_GTPU_EH | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu6e flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu6u with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV6_UP,
+				 ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu6u flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpu6d with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_U_IPV6_DWN,
+				 ICE_FLOW_SEG_HDR_GTPU_DWN | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpu4d flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
 	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_ESP_SPI,
 				 ICE_FLOW_SEG_HDR_ESP);
 	if (status)
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index f7fba0dc87e5..f3af2a78f7dd 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -2011,6 +2011,16 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define	IPV4_FLOW	0x10	/* hash only */
 #define	IPV6_FLOW	0x11	/* hash only */
 #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
+#define GTPU_V4_FLOW 0x13	/* hash only */
+#define GTPU_V6_FLOW 0x14	/* hash only */
+#define GTPC_V4_FLOW 0x15	/* hash only */
+#define GTPC_V6_FLOW 0x16	/* hash only */
+#define GTPU_EH_V4_FLOW 0x17	/* hash only */
+#define GTPU_EH_V6_FLOW 0x18	/* hash only */
+#define GTPU_UL_V4_FLOW 0x19	/* hash only */
+#define GTPU_UL_V6_FLOW 0x20	/* hash only */
+#define GTPU_DL_V4_FLOW 0x21	/* hash only */
+#define GTPU_DL_V6_FLOW 0x22	/* hash only */
 /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
 #define	FLOW_EXT	0x80000000
 #define	FLOW_MAC_EXT	0x40000000
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
