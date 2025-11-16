Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1AC617DB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 16:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 946164053E;
	Sun, 16 Nov 2025 15:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JJ8wEUjdOeUy; Sun, 16 Nov 2025 15:57:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7BA8409D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763308626;
	bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rm+rNyXEeTTn3qbK2VWdiEfgJZ3ykI51y89ZgEMDDv+mtQQMrI45ngxfYzLQ3+io2
	 iDPs1UHbeXZJT0xlwf6dSVpOuRqBPZw8LHeGAnN0gUSfp/acbAlIBEG0f4HiD820h3
	 VTLLH7B1rE2DDTPYUUR2abBNgqpJXT1uRBs1ks+wwwggtw7PsV4zkJpkIO3dyd9fef
	 aCy2Am9BTB/V3ZCGnkGhjJ/AM67jv4ukg+7vsynRuRhwqx/t/ijnvu5N34OmRra5XT
	 So7o+WtlmfJD/WCmuoKZ/33NvRausMAI2YRqkGsI0/BTumzoep2PdJETk3PYqGRysT
	 hTPC6qIOA8vwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7BA8409D1;
	Sun, 16 Nov 2025 15:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA42CD5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC2F881E39
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R2ia753RLhVc for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 15:57:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E657681EA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E657681EA0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E657681EA0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:04 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-7b8eff36e3bso4477714b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 07:57:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763308624; x=1763913424;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
 b=mOpFvr3Kphxz48E9GHWdhn2rFnkr2rUk/6h+Yj4ALY/YXC+X6CCGjVxhTWHZpiqNKT
 RfGnDPThx8PlmbngaCea3F+7SqpCJ5nZFnhBfUNGOHpFMwZRn4C2L0NB7OjfGd/TnOVR
 m41pSYhej1Ons6YJkcHd5MGi3JAcrtKVxaEBHDbfNVPSEBe1TJ9hRHRB++t1EQADkvPK
 jWzdCnBBVycL5mOZKwmNED5bjijzl1PCz3XrPvVygUZEBTUNXQcaeu6BavjxXWUYor1R
 MufbiKf4dhjSGf3GafFSQ2bTzw8q6PK7NTc1k282bTOy+xKDI0kqRiD0Y8oeKGT0XN0N
 OK+w==
X-Gm-Message-State: AOJu0YyUERsC5nvfMML7LX9OHZOXRPa7nNo3CAeWZ08eI5GdGea5Kbac
 +w2URLQaUQeVgtILN+YWmZxTTVuAZWU1fYYg47+LblJnB3hrWBj1Q6OV
X-Gm-Gg: ASbGnctIhNCFRybjPd1g3cHKfRu+VqzxweWzwdJAxf+UKuf8tSfHX+yeIBz1XJga3LH
 2tebDS5LySFoqqlCp7X5Kg07PKXgE8oyZzjCpkmuSc8cNbnjm2N7NUG+3QUJJmfsHSXkb4QIgBu
 Mo4O47jW557pOxA0KI92CR8Tka+ZjfMIKm975HR8hYlbqq4zYiYeGZuwUv0KgLeOWdScRgbSTTy
 RTXnkdhbRpGEQPYnbffiIh4UuHzaIHZ6fm2WO7EL7c2Q6X2yFJuie0adCcbo/CCw5AonxzT+dAA
 dPd81pr+v9rQLjxYHxZqoknObpsd3tAqvkRZ2BAtF42n95NTIOg8Canv2QqZRUpo9zl1ctNCsW4
 LDFf5JFfdPR7oxyjQulTykDao/rIn5A2dDeu04/2zsQLr3PcHHMiws/XmRG5XEAF1jO3+Hnv83w
 LVmv7tq/XEP8rSGH8plBo=
X-Google-Smtp-Source: AGHT+IEBONigJXUH6CJN+6b8wVtJBo3FEOVEJ//SL5EdSu5yo0atK7Q9DdGnua5zoxWDyWpCtDj7FQ==
X-Received: by 2002:a05:6a00:4fcf:b0:7b9:d7c2:fdf6 with SMTP id
 d2e1a72fcca58-7ba3b89ed15mr12770157b3a.24.1763308624240; 
 Sun, 16 Nov 2025 07:57:04 -0800 (PST)
Received: from aheev.home ([106.215.173.137]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b924ae6943sm10677038b3a.6.2025.11.16.07.56.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Nov 2025 07:57:03 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Sun, 16 Nov 2025 21:26:48 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-1-0ddc81be6a4c@gmail.com>
References: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-0ddc81be6a4c@gmail.com>
In-Reply-To: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-0ddc81be6a4c@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ally Heev <allyheev@gmail.com>, 
 Simon Horman <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=ufCbvxIRBVQHCzUSRhXUdWL2YVW5ycqhQc1EXb99qW8=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDIlv7hsWbJ8z5+NfBeCFsRmXr8eKFP1Xzd55veX3yav9
 t7w19WitqOUhUGMi0FWTJGFUVTKT2+T1IS4w0nfYOawMoEMYeDiFICJ2DYxMnzIq9Ey0A2copeu
 KZkZxzi7rnD2sfVTnplmCtxcGMTTdZrhfxJnvwKX7/75Hl9XnLUtd+Jec07pl2Lk1zT1tjWibC6
 FDAA=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763308624; x=1763913424; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
 b=FkfJM05ubo66Q/pmawta+qKnO+mlxZx4pmfuFMU8yR7tuzFmTRQb2d9z2Va+22DXCo
 wR49ODutz/QNJBG3+fZK4xegxpGf95Ahda0cz/vhA5rxe+OwaYBM/BIvEbYzGhs0RUlj
 YR157xxFH3+foUYLPqsWsGOzTh94IphXf3PRFFboN3H3B0HeWsYNDiTW0YUy2vgiuWFf
 Z286K6NzLFa1Kb0V7AjfxorjJhd2BGeJJhYmJhVnKTXahfbtL5WICouh89RJ9FrXW/vv
 VRuG9H5dZ5wNE0j9vkhcqk1TCwg5c7+A/wUg9QUSrvPgAqtZNlf46POlx62Xl7arxKHR
 ymRg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FkfJM05u
Subject: [Intel-wired-lan] [PATCH RFT net-next 1/2] ice: remove __free usage
 in ice_flow
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

usage of cleanup attributes is discouraged in net [1], achieve cleanup
using goto

Suggested-by: Simon Horman <horms@kernel.org>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
Signed-off-by: Ally Heev <allyheev@gmail.com>

[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

Signed-off-by: Ally Heev <allyheev@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..dd62f5f14d60401d6a24cb9f86664425db1532d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1573,7 +1573,7 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			 struct ice_parser_profile *prof, enum ice_block blk)
 {
 	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
-	struct ice_flow_prof_params *params __free(kfree);
+	struct ice_flow_prof_params *params = NULL;
 	u8 fv_words = hw->blk[blk].es.fvw;
 	int status;
 	int i, idx;
@@ -1621,12 +1621,14 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			      params->attr, params->attr_cnt,
 			      params->es, params->mask, false, false);
 	if (status)
-		return status;
+		goto out;
 
 	status = ice_flow_assoc_fdir_prof(hw, blk, dest_vsi, fdir_vsi, id);
 	if (status)
 		ice_rem_prof(hw, blk, id);
 
+out:
+	kfree(params);
 	return status;
 }
 

-- 
2.47.3

