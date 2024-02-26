Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 431C0867D56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 18:05:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0220E60ABF;
	Mon, 26 Feb 2024 17:05:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ7kqKMxuiTf; Mon, 26 Feb 2024 17:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5620A606DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708967123;
	bh=g9Oy0ZdUiia3G7odCW4M3PkLDot13eUqVXWtn9vh8p4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6KpgUNfcpnlzFuJqm73/kaRSJ2mRKdTFZ3Fy4Hx/IxelmVosDIE1xaXCiAVHMQNVy
	 I4tnEpeskTWwHlrAFc5jbrznBGcSOSYJoatOn7jiYm8idS089ZdECoNAh8kfKnz0hm
	 5F7uBaOqhLZV+KeRUExCnhMKfTYcJpZu3gZE2asSI1W0SxsuK3KqeuDEMDHQ6FxQc2
	 6IIY2Xd6a1kdMBPg/0cPobvo16Sds6mNuc27S1OhDhRTrwvOUlTB4a4PQtYsqBYni3
	 R7Egz5Q7JK5KqtSqj11r4vrM0N/w1haGuoAW1C2N/stIjIyZQgBdvtZKExITQlp5Cg
	 W3ArIA8A3nsmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5620A606DA;
	Mon, 26 Feb 2024 17:05:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 769001BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F1B1407F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w23awtofjD56 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 13:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::232; helo=mail-lj1-x232.google.com;
 envelope-from=aleksei.kodanev@bell-sw.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 552B8407DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 552B8407DF
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 552B8407DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:23:26 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-2d2628e81b8so22690551fa.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 05:23:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708953803; x=1709558603;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=g9Oy0ZdUiia3G7odCW4M3PkLDot13eUqVXWtn9vh8p4=;
 b=UGOe/SLl4/OLsl67dU6QWXswmnAIY1fORfmWqMDobYoJOaGbeiDva+8BIFneRy5+gh
 6lpABtNty4dUnSvFPcIQBC1fj0tM6lt5QbeqxEjJMUuTCQ02B3ZMTxIgABlHwxK4nNE/
 n3wp3x/Vf0lArvSCG4Frj949VdHLy4nB7bplDPIYdmuXuTcTgXN4rzX6jaFsFJT+ehgF
 9KjwfizEvKw2o0uLxQfAfuqNuRCm8YeDTZE4b31GuDzLPnv/c76nvtSmg/fzpmXgmqZT
 1Juiro7eKGKQcjv+gmri7IlDbgiV5Nbka3Ydwz3UHUbVOpuMKprsX64/qd5aml5fAT+Y
 +ARQ==
X-Gm-Message-State: AOJu0Ywok6cu2ULQHi1A4qyQPsSD7nWGcxU0RWi3VJ3S5zjVBTC/CdOU
 j182i6m3AmRcE1o3BFGjlygraz0edDwNGNA0Cqd9fJ/qveG/wugz9yGT26rMMBvAO+cQOu6wo5Y
 =
X-Google-Smtp-Source: AGHT+IFECfX0UrCGCru826koDU0LNWuvpokyZP622qVdIkt7N5ZFgcxPtbcc82I/7UoGWsBmP/S0MQ==
X-Received: by 2002:a2e:a307:0:b0:2d2:795f:4a8 with SMTP id
 l7-20020a2ea307000000b002d2795f04a8mr2052699lje.18.1708953803465; 
 Mon, 26 Feb 2024 05:23:23 -0800 (PST)
Received: from belltron.int.bell-sw.com ([95.161.223.241])
 by smtp.gmail.com with ESMTPSA id
 x9-20020a2ea989000000b002d289e7f18asm397984ljq.104.2024.02.26.05.23.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 05:23:23 -0800 (PST)
From: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Feb 2024 13:21:03 +0000
Message-Id: <20240226132103.69122-2-aleksei.kodanev@bell-sw.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
References: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Feb 2024 17:05:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bell-sw-com.20230601.gappssmtp.com; s=20230601; t=1708953803; x=1709558603;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g9Oy0ZdUiia3G7odCW4M3PkLDot13eUqVXWtn9vh8p4=;
 b=Y1qakL9/jg5OdQOGTCqVp8X+7oy5/CEoJtNxtVXOtwELKSjR8cdiBurLgtrAPFF1I8
 ODG2ZjbtiDfiR/ekTn8FMCloC9kOUTdSNbTIvj5o1dSaImbArSWpSPrf5qlgm8MCCbyv
 0eNFQX7QOU+CiMS/Vui0RQJNvtU4lHylKTrmjpKoqCNo8WVMT6eNlPF5R06vdiL1xw55
 vODrhcYX2aZopPvUuu6jnjNsBQvrTAEWzlY6g2dQzZuFS3Gk04EXCK92+qxxVhlx8MtC
 wL7FAbAEfCvf8E1IUY6tQBOCpyYkb+gqpMjWJDff6LjbDDfSJWD8zUmrV6Y3tB21DFJY
 dsZw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=bell-sw.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=bell-sw-com.20230601.gappssmtp.com
 header.i=@bell-sw-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Y1qakL9/
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: remove unnecessary
 qv_info ptr NULL checks
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
Cc: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The "qv_info" ptr cannot be NULL when it gets the address of
an element of the flexible array "qvlist_info->qv_info".

Detected using the static analysis tool - Svace.

Signed-off-by: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
---
 drivers/net/ethernet/intel/i40e/i40e_client.c      | 4 ----
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 306758428aef..b32071ee84af 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -148,8 +148,6 @@ static void i40e_client_release_qvlist(struct i40e_info *ldev)
 		u32 reg_idx;
 
 		qv_info = &qvlist_info->qv_info[i];
-		if (!qv_info)
-			continue;
 		reg_idx = I40E_PFINT_LNKLSTN(qv_info->v_idx - 1);
 		wr32(&pf->hw, reg_idx, I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK);
 	}
@@ -576,8 +574,6 @@ static int i40e_client_setup_qvlist(struct i40e_info *ldev,
 
 	for (i = 0; i < qvlist_info->num_vectors; i++) {
 		qv_info = &qvlist_info->qv_info[i];
-		if (!qv_info)
-			continue;
 		v_idx = qv_info->v_idx;
 
 		/* Validate vector id belongs to this client */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index b34c71770887..83a34e98bdc7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -491,8 +491,6 @@ static void i40e_release_rdma_qvlist(struct i40e_vf *vf)
 		u32 v_idx, reg_idx, reg;
 
 		qv_info = &qvlist_info->qv_info[i];
-		if (!qv_info)
-			continue;
 		v_idx = qv_info->v_idx;
 		if (qv_info->ceq_idx != I40E_QUEUE_INVALID_IDX) {
 			/* Figure out the queue after CEQ and make that the
@@ -562,8 +560,6 @@ i40e_config_rdma_qvlist(struct i40e_vf *vf,
 	msix_vf = pf->hw.func_caps.num_msix_vectors_vf;
 	for (i = 0; i < qvlist_info->num_vectors; i++) {
 		qv_info = &qvlist_info->qv_info[i];
-		if (!qv_info)
-			continue;
 
 		/* Validate vector id belongs to this vf */
 		if (!i40e_vc_isvalid_vector_id(vf, qv_info->v_idx)) {
-- 
2.25.1

