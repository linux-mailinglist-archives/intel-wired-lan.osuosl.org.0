Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E54C79772
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 14:35:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AA9084B0D;
	Fri, 21 Nov 2025 13:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7grYmzSbh8x; Fri, 21 Nov 2025 13:35:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9DC184B0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763732119;
	bh=LTowRJGcYg0HhmMoZiyqiMQ9fvsrn/LxONuXHhgGuGM=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v0WZSdWLq4DBCPizavuc2cJRjx9fJJ0LkQITx2/eWd2wcM2PLFWgR27B4TpS9MyNZ
	 DsQKIXcqLR3LkRCyCZC+srlitg0VfX0dCBR4sZvalrFenyJY/TGgVxdFXisACZn4jc
	 iQu5mxrb/kv5kTYadqRMQH3UYFD3Fi3VBYtx1bKbfaZU617rlQhaR5lE73V4etcciL
	 eaEraNeJXwtZP1KqE8E1GeXAs4EIrx6mWt4tHC+0VWBv+2PGpDoU+pS7IVBTEnOLvQ
	 7SAIGDfYH5a0QJlpTKP3IiCjLYV2399l90+bomrIQuZs0sPW8xZ+tUj20U+1nRV+Y3
	 y5TEupba06C1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9DC184B0E;
	Fri, 21 Nov 2025 13:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A222158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 13:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73D1E84AD9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 13:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bwXP9v38jjSJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 13:35:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C54084AC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C54084AC4
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C54084AC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 13:35:16 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-42b31507ed8so1755741f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 05:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763732114; x=1764336914;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LTowRJGcYg0HhmMoZiyqiMQ9fvsrn/LxONuXHhgGuGM=;
 b=pN8j/xjPWIDZttzYjZZlJoM6fwe/L/xth5ayvbmEGS4IT4x/qMJBcFt4Nmw0C4apN5
 COAzInaLFHemLFRV6XF2qCWxINhjD1nZYRmHwfg5wY0aGg7YOYi5F9OsEdtUjbe38hke
 zxZveeVgks6+Uf/Cqk3VNOAK1CuesEeXI2GJBLRzsLO/Md7DoYE0muDswBhGZKJdE1/F
 2CriR43ukTBkDNYV6XaKviSqzdAhpoGHirjNkY69P1BDFevWaFGX7kM14FlHy5695fBW
 SJQBiuPovwmOPvJ5sfvRrnAtWw9zBNnksvn6G4SrqyE0i/RVCiaS55JNmIrPIBJhm5kd
 Xjfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV93LixUZ/OKzopngGa72D1b49F2um2w0E/HTdmxNiFyYPqxCFEeWh1QTXcM7fhnY5AxsmD/De5z2rnJiXoz0U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzfNqidwnvu6VmaFdJTtRl7c5fC5CdbTVRRsJIInnKaQpBHTF1H
 sesMCO/asjOOeObdt8nVNEmWt+eD0ctR8J2dch3tKKfVG/ZWwsVxzpJ9h258pdReTlM=
X-Gm-Gg: ASbGncu+3RasqHf19LdAmQt7jT3YZT/bFSqq9ItURuveRyOnWC0E/6AaGtyKQ1YjGNw
 67QLxRfuMlVbjFh/RdvSIpqL3/y1eJ4hRmFQPWW72VTe/0wZAE2DMc5lfLDzuZ6x2x7Ptvaxkf9
 kVesNVQegoj3F62svay5CvGCaVZcFMrL2PLwd0RrqDkphvEkeBLdbdHzFm3pRqYjMFTA4itEeAn
 veogFCz9mxpI9wqJ9R1dfp3bmko2727cLdLsdfQzuGIQUH85mWF4XEhGvME21mdK07O7bi7ps+/
 0EbZ6oOtBjiJlJK+3/x564WMOyhAJsDWjwK6SDlpvvUSlfqJ+CLkEJGRYPBThr1cLKo0+/vgUdE
 Hw+80e8xdrQjF4i4K4oEgnehAOWExgPr1N5kZ2/VSAfBmdTSjAYTI9d6v5+0oXi78AUcORIoDDg
 PegRD/toqpadUrZ6JD
X-Google-Smtp-Source: AGHT+IHmU/+0OTxZO/ujLXvOPYvw9YHDjZwUJsy0cCotaR0gtzRnkipBingnOhyq1CTayGE3YXHsxQ==
X-Received: by 2002:a05:6000:230c:b0:428:52c7:feae with SMTP id
 ffacd0b85a97d-42cc1d0cd4emr2314094f8f.32.1763732114087; 
 Fri, 21 Nov 2025 05:35:14 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-42cb7f2e432sm10663506f8f.9.2025.11.21.05.35.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Nov 2025 05:35:13 -0800 (PST)
Date: Fri, 21 Nov 2025 16:35:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Mohammad Heib <mheib@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <aSBqjtA8oF25G1OG@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1763732114; x=1764336914; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LTowRJGcYg0HhmMoZiyqiMQ9fvsrn/LxONuXHhgGuGM=;
 b=S8bvCu0V1E4a/JQBBQs1dyRHq/1o9SOSTt8Mra3nEWwxoSjBgb8oCeXJD5nktLgHGb
 N4rgWfqTxWa5jNXT3MwNNUDCqDuJT1x/xi5V5QMQskuocdpvT8J+7ztrHKIpQlLV6IDC
 dKymDOqcr6lN/CDwwtsGFCwosPJxHeETbXT8BYvZSyDbOyKgDPcldu/j2MHzmG+lev5e
 0+oS78JQO0+N/+Diz1/zLucht/5zL6NfDb0sMe2PjDENLILX4s8ZK1xchs3cpi/kUcvy
 JeUXxMmrT+glL3iKeN7vEuKUjYcAZy640Rehsa7LnBDHY4fNlmRgoKMY0f4uV0N82QVV
 16hQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=S8bvCu0V
Subject: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
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

This return statement is indented one tab too far.  Delete a tab.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 9d91a382612d..8b30a3accd31 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2967,7 +2967,7 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 			dev_err(&pf->pdev->dev,
 				"Cannot add more MAC addresses: VF reached its maximum allowed limit (%d)\n",
 				mac_add_max);
-				return -EPERM;
+			return -EPERM;
 		}
 		if (!vf_trusted) {
 			dev_err(&pf->pdev->dev,
-- 
2.51.0

