Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7267ECD9EDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 17:23:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF50C405F2;
	Tue, 23 Dec 2025 16:23:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5tma2_w8nPFM; Tue, 23 Dec 2025 16:23:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 625F8405E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766506992;
	bh=QxTdv+ra6WTSrvAACCD5473883LzKfjRBEu683WsRJ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wwuvZJgd3wY/wDe41gQvdEfZpPdBZxrEe4fmuOgANanb683BrqZDbsFBIykfS8TWy
	 +ORaMcrVDkV+ewJcZjIYpY9fZ2wuKY7vnnu0RLJzp5fnrLfCDAy4CFCaoRFkwONWAP
	 j+z2ZSRvPx3g5IuEhvKOb69NhME8kM4+GmgRHf00Ikir95OeYze39+xw7iEkpKokhg
	 RDyRgW5ullnA+ssTzI1/scvIsk/Q/11UXNAuLyDJ2A6OALxKS04/soWitkwhms8nTA
	 PT1PQyf+2lQLvMtcBwItx+l7EcdT05q5NMyI7TYadZOUIZYCsflK4fKDzzgiZ1YByC
	 W2tW2Cm5s48Ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 625F8405E6;
	Tue, 23 Dec 2025 16:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EAE6119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66050405E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SI5pxxguhpEY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 16:23:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0E10405DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0E10405DA
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0E10405DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:08 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-78fc7893c93so25259347b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 08:23:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766506987; x=1767111787;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=QxTdv+ra6WTSrvAACCD5473883LzKfjRBEu683WsRJ4=;
 b=EUt+UOIa7W7DGwAMW2fg/GRRsRw768kTKE9tOME0EDgjCxZFQ1UApAhocB2bwAJ28c
 hRk3iZk3GVpZvYd9sJzU4D48xAxpM042h8zfqXLfLA9mZBG5yvrEp5FtlQrPRds/fJgP
 SMpDHU01l/xavdAHROXXjJY0Lo6Ux40Kd+s2zf3tOwyNK8TjBjSBrSOWG4dAYrruWv1t
 Z3cnr9KXWl7e4dnP/CsYgImuD9eOkyIClLzhLNDazMnoNWv+risw1SO1BLE2akiw4ME9
 Yfr1aykbvJVwUIavUesF8oHKGRQKdWbxNqoqyWm8mxDBmHJC/EK2c3FLFMdWMMtMjQvN
 nbWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3gpEH0Gfs0OkwvxdOlATdUC/rgKX6uLqJamPYfmObpO8/jRUmsgAnZOxu9RGY7HzzGo835juqD41oVs8MCZs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxotLfnVjae4gJHsJvgmJxiEW8hUTQlwCVnkUce2F2iOuemrfN1
 cm6HelQ4mjeRpBfObl3cDhwNdE41qk0t97Oot4VbYYoFYGC5W7Ezgd1H
X-Gm-Gg: AY/fxX4SUiduAANjcoCQ+bsKWBxR8vTeMUEdi39r9VMlVEj+8hOtsgXwxM0EAQ8WPda
 4M90hGLpu1/zdMnw6opbe7lcd84PW+wsUVRLYAPGdKu5r+9bAVP6OOEorYRytH6q+KXwFGqmX3T
 +/SvOnrUWJTivHUg38XsK7KKbSCWd2HfWEWIatROmiMmM1DSAHEJI0EZEhTC8ntEJjcjnvc2Ysy
 W5qjwzCP2d8mbT4xErMVE1SOPqIGpo9yOFIu8aWvuRln00iHgCbixC/JIeKTrCgN16OnhgQrhAB
 XMFvjUIrLdHyFCFCvA/QgZsVe4+KY2GL4q2jifutD5iNeuAuuclUAk+m7AqsIBUQRiUhSS5dxAB
 0GI1U1KtMqlcTm98PyagiJdHShqD5H1XdOLRb2W2CPGiqiieiKa/GQX/GYd0O1afxqkja5LEkSJ
 +XmCmZ4ko=
X-Google-Smtp-Source: AGHT+IEGEhV4TsQdUzp8xMXw7tvphhY7j9O64Fl0+gPJd1P63myvvp3KKR6dH1soGRGdQRJHWMAQUA==
X-Received: by 2002:a05:690c:c83:b0:784:abe3:4454 with SMTP id
 00721157ae682-78fb4067fc8mr122715137b3.47.1766506987336; 
 Tue, 23 Dec 2025 08:23:07 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:4913:14a4:1114:ff0d])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb4377c99sm56081067b3.3.2025.12.23.08.23.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Dec 2025 08:23:07 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 11:23:01 -0500
Message-ID: <20251223162303.434659-3-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223162303.434659-1-yury.norov@gmail.com>
References: <20251223162303.434659-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766506987; x=1767111787; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QxTdv+ra6WTSrvAACCD5473883LzKfjRBEu683WsRJ4=;
 b=ehVx5xoDGu5yflsakNZO45ZhyBmf0bTwRr8B3ty1zPk/TsChyjP7AQVvDGJDAS/ED0
 OQkskOO/iiHD6oGiaDVtaKmcvPxMf/bbaX3CQFdPbkpoUvKzcLbMwm/JXIFKIG5373B0
 2bqyBnR9lfG8Ch/9D+OCZNlVFRQy30rVlhOtoEd1Lm3WlSyp7orsE9neCouBmiQtSMNb
 qrp8D0MU0m2oph21VVkdHeZuJ+DKOQ6soFk2uDSn5eu9/+b+FjJobTClmoRqMxIkomdk
 nWYNo3CQMox+dKqVCyPfOM1cmqSU2CYBxCYgP3Vw/183Yga2fHV0Jvaf2uC+B5DKQWvb
 KrQg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ehVx5xoD
Subject: [Intel-wired-lan] [PATCH 2/3] ice: use bitmap_weighted_xor() in
 ice_find_free_recp_res_idx()
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

Use the right helper and save one bitmaps traverse. 

Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 84848f0123e7..903417477929 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4984,10 +4984,8 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 			  hw->switch_info->recp_list[bit].res_idxs,
 			  ICE_MAX_FV_WORDS);
 
-	bitmap_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
-
 	/* return number of free indexes */
-	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
+	return (u16)bitmap_weighted_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
 }
 
 /**
-- 
2.43.0

