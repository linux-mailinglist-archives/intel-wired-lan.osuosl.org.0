Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E21C950C35
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 20:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7FDC402DD;
	Tue, 13 Aug 2024 18:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRJotCJO6UJi; Tue, 13 Aug 2024 18:28:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA6C2406F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723573687;
	bh=TvCJH3TZ9fBYiYpF5a88AFpsytgjevnUGq5R4un9KfQ=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1VZ/xRHGi/xfwTPEHPY1S4Fl2ULOMnB+QHj44DQlsKd/aBx0qNx7eZA7AUeG7zevI
	 E3Qyj+EdUxQ8I+1EYMC6OMsexffoiRNjXxTbnbj/00sIUfzKy3k9rdzJx3Fzy7oPKz
	 tKrbElbrBhh2Ir3OyQAZKL8rkeKGdeXj7r97cFrNLbR2WeR/hJG+ExecfYckHow1Z9
	 7RfMb5Fkjeig1fTbkGlQUatpS4qRkfMs3562p8rXha4k+vTYk04cfmgdcQ1E0Pk80O
	 Wr2NMcAWTYpamK11E0sIvW3d4ltNq/9ZT5lGY8WKWuZHq1XPrZ/925CVcbt9sBaxwY
	 A6Z15U1+RgWHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA6C2406F3;
	Tue, 13 Aug 2024 18:28:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89C5D1BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75AB080EDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJ7m58I6kEql for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 18:28:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b49; helo=mail-yb1-xb49.google.com;
 envelope-from=3sqw7zgokdykrfstoanxmdlttlqj.htrnsyjq-bnwji-qfsqnxyx.txztxq.twl@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B635980ED8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B635980ED8
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B635980ED8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:03 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-e0b7922ed63so10501764276.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:28:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723573682; x=1724178482;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TvCJH3TZ9fBYiYpF5a88AFpsytgjevnUGq5R4un9KfQ=;
 b=Yp3q6XMbm+C8YCVG3RbgIy58RkkdG6T7fAcCGcqNP82+wPoQMArneH7JOZOCp1kmqw
 DbVjn28RowVm8on4Aa032A9Ixk5x0uSdEYKNHCudBNLe5pvAbRGzflyczxU+B6pc9lvr
 Dal1bvpZYqwj+PyvmdWCzqEZipW+P1E/G9NwD0OCWI5DA43lV7abc2y8nHU/YqfWeVHB
 Y+HzFU11rpm9PUFgzXVkweIGmscHgxuScxqSWXYark/s1Mm7FOE97OAkFPig/E1+xeWV
 +tmIAdtL4jDbpx6PG7UJHpuGiShrARlNj8hHSraQ4sbDq8LM45f5VMLJHSfsKiNgVYKo
 fhSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWVujEW2dqJq3LMusbeThPBEtKBoRy3wY5BY0mztzCSY3fPATT8CX9M5E+giGRTZHOkg7lSxnPYJa5gEewXd7oQ3yKhp5VBRereYlpNmlksxQ==
X-Gm-Message-State: AOJu0Yz7GuIXi1RbTOtraZKP/GnRByDAfTymE+7mpWuY/VKWkNpJUqHd
 REudo49qU3bKCr//FbLqCOv3Vb3Eb7EE5vzf0GGWejcg2tni0YKp+KPLgWUUaYgYdw9f+ezg/nc
 7gWakB3YZnVmstOvGcQ==
X-Google-Smtp-Source: AGHT+IGj4/G4VHtyu7j84mLj7yhWkQtHtTJEHKj/H2cGvmAy6yo3iqZtz9v6g07d1BL8wXt51Jxah1P72bzfqR2d
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a5b:b43:0:b0:e03:5b06:6db2 with SMTP id
 3f1490d57ef6-e1155a57e9amr896276.3.1723573682504; Tue, 13 Aug 2024 11:28:02
 -0700 (PDT)
Date: Tue, 13 Aug 2024 18:27:44 +0000
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240813182747.1770032-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813182747.1770032-3-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723573682; x=1724178482; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=TvCJH3TZ9fBYiYpF5a88AFpsytgjevnUGq5R4un9KfQ=;
 b=OsplV17/tDKAmZmMGpHLbsFI8hPuJzJX08t1A0l8Y7A80zlZrWu0oITJ36hfb0TvUL
 AjdjcvMJhOFbOsZD47chiIdQofZknHrcyzeC0VP4zbsMvklC31qwu6ik1eEac9loTv5L
 YP75TIoxk1xdd1ADFKtROhLPTPAo+DEf9KzWVpINqiL1qwuh93MlF5YrFap5f6CdJ2oO
 JfCYZQuffNu1Z9M6njTdYkvWu3SG4XIIU2R+hFoHsslg4BdyMpz3VfreszCJVpcD5z2P
 5E6yC0UnF0g7pfdwbY0xAqFJ2FajYa46rAOjxBq/Rd4kolg82p6pgdd5P6G4A+n+dVgz
 IFbg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=OsplV17/
Subject: [Intel-wired-lan] [PATCH v1 2/5] idpf: Acquire the lock before
 accessing the xn->salt
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The transaction salt was being accessed before acquiring the
idpf_vc_xn_lock when idpf has to forward the virtchnl reply.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..30eec674d594 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 		return -EINVAL;
 	}
 	xn = &adapter->vcxn_mngr->ring[xn_idx];
+	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
 		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
 				    xn->salt, salt);
+		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
 
-	idpf_vc_xn_lock(xn);
 	switch (xn->state) {
 	case IDPF_VC_XN_WAITING:
 		/* success */
-- 
2.46.0.76.ge559c4bf1a-goog

