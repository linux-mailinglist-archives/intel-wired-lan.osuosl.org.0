Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 500AF7C7660
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:08:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3F826134E;
	Thu, 12 Oct 2023 19:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3F826134E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137736;
	bh=VnUVeGMGJ1A33NRkf5TDHe4bMcKgyjiczMp7s98i4M8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K3xdW1SEKdaARzvujr5CHYV690uHE3a7XsCUelEh8DPsqdu9xkCjuwqoOJQu7jruQ
	 Sy1qnH4k0MhsInWusCKYvAf1hqg7V7EybeNx3OnQ9/QVA4cIe0FjG6O39kVJvT1uK+
	 wJaXDytQL7uh30Ld938Ynd+gUBywcDPgHe1UghVkqeRihl5lmdqlwPWQHqb9X5AjuZ
	 mVlDU+a1guWkZaA/AOo19H6Z1qSiwHuHEz9XnUmNkqkUtxo5c4zqUC/rak1iR+cjbn
	 iYQFFLPUmPztmf9syLeXV8WH1ucCFD505adQ23sx6zzr+K5+fVT5QiXiuKtF1+qBn3
	 mUIoyRPyg8uPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ma_m4Gwq4LBw; Thu, 12 Oct 2023 19:08:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2393060596;
	Thu, 12 Oct 2023 19:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2393060596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EACFA1BF847
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 06:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CEF7760BB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 06:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEF7760BB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k-4BpwmfVFO0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 06:01:33 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBC4E60B77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 06:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBC4E60B77
Received: by mail-yb1-xb2a.google.com with SMTP id
 3f1490d57ef6-d865854ef96so643825276.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 23:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697090491; x=1697695291;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=t1a5vaqrUomY/MEaUi5flyYLhZewU130jRnytbykBy0=;
 b=SyQOQTo7v+OOY0msNgMBF9QDfEIMDxTiEnS4s/I4rw7BCOz2UURNTzLrVwXg1tv4lb
 /PBCIjsl7yOT/5oNzaH/eAypxlW+nMwaGhdDvHghLdUmkYfh7nHZNmHD/0Da3317k3xz
 7M+vQvRLKCyXE9WSL7rJtP0Wx1FdMN+3wRU7d5Nm+C0GDqNY76t3P/3Fnh5UFPzo4O6J
 DsNebk7tBiEusCGlLsGUVGIpbGoCnbDJFCweQ+QljGZM0cEkKU0BPxA1GAWX44Jx9KWB
 mndRhx8CVR8C6/z/BMxZqzbX7k5OV1VFnaebjDoU+4YEUVCeBj2nwGTTjCzkYslpsr5f
 LV3A==
X-Gm-Message-State: AOJu0Yzxm/yaVqa+3io+lwU4cThuNoEOVqxh9K6kvfGJCEbWQyNThmac
 eMxDDiNucDyLqqmnSglZOGM=
X-Google-Smtp-Source: AGHT+IHSo8uyr7upJGMZgscEF8vgcFfKCrYBJbNGLGt6zswHzMFTmnHMsdKVZBR9jMujanN24Nvwug==
X-Received: by 2002:a25:2d20:0:b0:d9a:6259:5461 with SMTP id
 t32-20020a252d20000000b00d9a62595461mr6062694ybt.38.1697090491429; 
 Wed, 11 Oct 2023 23:01:31 -0700 (PDT)
Received: from ocxma-dut.. ([153.126.233.61]) by smtp.gmail.com with ESMTPSA id
 m4-20020a255804000000b00d7745e2bb19sm4956925ybb.29.2023.10.11.23.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 23:01:31 -0700 (PDT)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 12 Oct 2023 06:01:15 +0000
Message-Id: <20231012060115.107183-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697090491; x=1697695291; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=t1a5vaqrUomY/MEaUi5flyYLhZewU130jRnytbykBy0=;
 b=ED7El3HCNSCRZ9VxQNJaerB/JChioUriq6viBLWF3hUBYvX1Zd74y/FOcQE1ijfhIZ
 aH3lO1Vao9QiQmmpmjhLX7qwo0n5srbObGivfkW5C3cQXptEJEmICgF7kIVZQJAPkfD7
 WGHOdabEF4a82KOHHoWRgzTNaSKMP6izb8yNW8Hr052/swjAcsg7FW3/Kvmfq7dcevB4
 /FldUu7rsRt7k0Yw2+04DokgZHixuUI8zXb0CrLm3H2Mh+j2VTvd7/TWuLwiCsWOh2Vo
 CdJ7rYBAlkR0gj1g8yFgINfc2RdndQv2oaVd2lKb5wbLkDiNSygR5NaZj00yDRL1ceGl
 2U9w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ED7El3HC
Subject: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for RSS
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
`ethtool -N ens3 rx-flow-hash gtpu4 sde`
In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
gtpu(4|6)u, and gtpu(4|6)d.

GTP generates a flow that includes an ID called TEID to identify the
tunnel. This tunnel is created for each UE (User Equipment).
By performing RSS based on this flow, it is possible to apply RSS for
each communication unit from the UE.
Without this, RSS would only be effective within the range of IP
addresses.
For instance, the PGW can only perform RSS within the IP range of the
SGW.
problematic from a load distribution perspective, especially if there's
a bias in the terminals connected to a particular base station.
This case can be solved by using this patch

Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
---
Added commit messages and options based on reviews

 drivers/net/ethernet/intel/ice/ice_ethtool.c | 116 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_flow.h    |  15 +++
 drivers/net/ethernet/intel/ice/ice_lib.c     |  84 ++++++++++++++
 include/uapi/linux/ethtool.h                 |  13 +++
 4 files changed, 226 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ad4d4702129f..8d8bf1b41049 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2404,6 +2404,24 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	case SCTP_V4_FLOW:
 		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV4;
 		break;
+	case GTPU_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPC_V4_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4;
+		break;
+	case GTPC_TEID_V4_FLOW:
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
@@ -2413,9 +2431,28 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
 	case SCTP_V6_FLOW:
 		hdrs |= ICE_FLOW_SEG_HDR_SCTP | ICE_FLOW_SEG_HDR_IPV6;
 		break;
+	case GTPU_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPC_V6_FLOW:
+		hdrs |= ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6;
+		break;
+	case GTPC_TEID_V6_FLOW:
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
 
@@ -2431,6 +2468,12 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
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
@@ -2448,6 +2491,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
 		case TCP_V4_FLOW:
 		case UDP_V4_FLOW:
 		case SCTP_V4_FLOW:
+		case GTPU_V4_FLOW:
+		case GTPC_V4_FLOW:
+		case GTPC_TEID_V4_FLOW:
+		case GTPU_EH_V4_FLOW:
+		case GTPU_UL_V4_FLOW:
+		case GTPU_DL_V4_FLOW:
 			if (nfc->data & RXH_IP_SRC)
 				hfld |= ICE_FLOW_HASH_FLD_IPV4_SA;
 			if (nfc->data & RXH_IP_DST)
@@ -2456,6 +2505,12 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
 		case TCP_V6_FLOW:
 		case UDP_V6_FLOW:
 		case SCTP_V6_FLOW:
+		case GTPU_V6_FLOW:
+		case GTPC_V6_FLOW:
+		case GTPC_TEID_V6_FLOW:
+		case GTPU_EH_V6_FLOW:
+		case GTPU_UL_V6_FLOW:
+		case GTPU_DL_V6_FLOW:
 			if (nfc->data & RXH_IP_SRC)
 				hfld |= ICE_FLOW_HASH_FLD_IPV6_SA;
 			if (nfc->data & RXH_IP_DST)
@@ -2489,6 +2544,48 @@ static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc)
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
+		default:
+			break;
+		}
+	}
+
+	if (nfc->data & RXH_GTP_TEID) {
+		switch (nfc->flow_type) {
+		case GTPC_TEID_V4_FLOW:
+		case GTPC_TEID_V6_FLOW:
+			hfld |= ICE_FLOW_HASH_FLD_GTPC_TEID;
+			break;
+		case GTPU_V4_FLOW:
+		case GTPU_V6_FLOW:
+			hfld |= ICE_FLOW_HASH_FLD_GTPU_IP_TEID;
+			break;
+		case GTPU_EH_V4_FLOW:
+		case GTPU_EH_V6_FLOW:
+			hfld |= ICE_FLOW_HASH_FLD_GTPU_EH_TEID;
+			break;
+		case GTPU_UL_V4_FLOW:
+		case GTPU_UL_V6_FLOW:
+			hfld |= ICE_FLOW_HASH_FLD_GTPU_UP_TEID;
+			break;
+		case GTPU_DL_V4_FLOW:
+		case GTPU_DL_V6_FLOW:
+			hfld |= ICE_FLOW_HASH_FLD_GTPU_DWN_TEID;
+			break;
 		default:
 			break;
 		}
@@ -2590,13 +2687,28 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
 
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
+
+	if (hash_flds & ICE_FLOW_HASH_FLD_GTPC_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_IP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_EH_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
+		hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
+		nfc->data |= (u64)RXH_GTP_TEID;
 }
 
 /**
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
index 201570cd2e0b..17852f24ff7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1667,6 +1667,48 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 		dev_dbg(dev, "ice_add_rss_cfg failed for sctp4 flow, vsi = %d, error = %d\n",
 			vsi_num, status);
 
+	/* configure RSS for gtpc4 with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV4,
+				 ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpc4t with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_IPV4_TEID,
+				 ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV4);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc4t flow, vsi = %d, error = %d\n",
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
@@ -1688,6 +1730,48 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
 			vsi_num, status);
 
+	/* configure RSS for gtpc6 with input set IPv4 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_IPV6,
+				 ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc4 flow, vsi = %d, error = %d\n",
+			vsi_num, status);
+
+	/* configure RSS for gtpc6t with input set IPv6 src/dst */
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_GTP_IPV6_TEID,
+				 ICE_FLOW_SEG_HDR_GTPC_TEID | ICE_FLOW_SEG_HDR_IPV6);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for gtpc6t flow, vsi = %d, error = %d\n",
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
index f7fba0dc87e5..a2d4f2081cf3 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -2011,6 +2011,18 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define	IPV4_FLOW	0x10	/* hash only */
 #define	IPV6_FLOW	0x11	/* hash only */
 #define	ETHER_FLOW	0x12	/* spec only (ether_spec) */
+#define GTPU_V4_FLOW 0x13	/* hash only */
+#define GTPU_V6_FLOW 0x14	/* hash only */
+#define GTPC_V4_FLOW 0x15	/* hash only */
+#define GTPC_V6_FLOW 0x16	/* hash only */
+#define GTPC_TEID_V4_FLOW 0x17	/* hash only */
+#define GTPC_TEID_V6_FLOW 0x18	/* hash only */
+#define GTPU_EH_V4_FLOW 0x19	/* hash only */
+#define GTPU_EH_V6_FLOW 0x20	/* hash only */
+#define GTPU_UL_V4_FLOW 0x21	/* hash only */
+#define GTPU_UL_V6_FLOW 0x22	/* hash only */
+#define GTPU_DL_V4_FLOW 0x23	/* hash only */
+#define GTPU_DL_V6_FLOW 0x24	/* hash only */
 /* Flag to enable additional fields in struct ethtool_rx_flow_spec */
 #define	FLOW_EXT	0x80000000
 #define	FLOW_MAC_EXT	0x40000000
@@ -2025,6 +2037,7 @@ static inline int ethtool_validate_duplex(__u8 duplex)
 #define	RXH_IP_DST	(1 << 5)
 #define	RXH_L4_B_0_1	(1 << 6) /* src port in case of TCP/UDP/SCTP */
 #define	RXH_L4_B_2_3	(1 << 7) /* dst port in case of TCP/UDP/SCTP */
+#define	RXH_GTP_TEID	(1 << 8) /* teid in case of GTP */
 #define	RXH_DISCARD	(1 << 31)
 
 #define	RX_CLS_FLOW_DISC	0xffffffffffffffffULL
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
