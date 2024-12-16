Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FA59F35F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 118E64037A;
	Mon, 16 Dec 2024 16:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aAi9Y2fbAhBO; Mon, 16 Dec 2024 16:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 548F740291
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366471;
	bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zak/BIC1jeKqXLl0/ioOI6XmFHTcrmPYd2HJ+1Oy0wDKZNJdEN/YJDr8tRnidvCLQ
	 LyFzoGMrGn883uBw8UC9taTvrtXihLMCvD4BHNWlMU1U/KeTv7wBIjligaXE+oq2vv
	 6m9LDsWXXDspa8Tqztw5udT68hjZqW5YS6869sAOViyiTdSF9N68Dzmtkr3ec5dnJO
	 J5rr7I+hCiAG7cDiT4QUAZDTSM7GZZWGkX+scnQgYoWn6Gb98YN4Ef5gVst2EyyCCV
	 NlNNvK/Js4cUMVBecZccdXrml83jiIufO7dJRNJnT7hhNScZJhWZBpPO8fRHTYdxj7
	 LFH65PGWDrL9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 548F740291;
	Mon, 16 Dec 2024 16:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BBA78C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 997234036F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RngddNI2-Fmu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:27:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1049; helo=mail-pj1-x1049.google.com;
 envelope-from=3a1vgzwckd3apfwobjjuccuzs.qcawbhsz-kwfsr-zobzwghg.cgicgz.cfu@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB682401A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB682401A2
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB682401A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:47 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-2ef91d5c863so4047858a91.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:27:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734366467; x=1734971267;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
 b=dvG9di2JXlhaWSx+kzIi7JuPh3Nieo3vh3RKCtNpTlnipnhlBBDjNaOreRa3FqukmT
 tfT9Nm29toNh4DapDHKC9+45q2fz/W5/BU+6lP88t+O7Io5h7WY+GmsbF2xru5gmJn0W
 yI7sqhijO8dq1/KDYSN6jdiaw6fRth8jiOA+Plda6GwRADX44N+c/W1VJ/RDpn+JrDza
 5plcu+HI9crZS0DKOeTLajnyEJG1c0V2hVRKGrkG96CnizdafoSPWg5D8pWj1obOeAab
 d6m8IVzh6uSWRRKcRQpDbVEW+yy/juc2f6cZQ/6wogka4xJAvUFgcxX7mnMbhf1qwYGR
 r1Ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyqdXYqYnvsyU+C35YQOoZV1WGRQbOmy9F/6qHBGkzYMxk+1BZ+khSZUvPNcEN+EBRFWqRsqTXY+NmKq73HQc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwmZdwCOD5+EQ10Eo3NgjXQQ0tXQ2t2jYHbuaQAJ8O/lqV2wh4T
 //4yjAt870TEKCIs0IODmX560G39blaF9mIsRKKZJQqHMcZEhPt/8jHofVcVjIVMh8RotpqUuwO
 KlZjCrA==
X-Google-Smtp-Source: AGHT+IH29wLjTLhFYC5SnJVDS+4WNLF1Yk10O+SW6jqm4mnWBwmXUCgH4x75maTCI76khncZvMc7FTYlHAjY
X-Received: from pjtd4.prod.google.com ([2002:a17:90b:44:b0:2ef:95f4:4619])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:1b47:b0:2ee:c797:e276
 with SMTP id 98e67ed59e1d1-2f28f864a29mr21028983a91.0.1734366467107; Mon, 16
 Dec 2024 08:27:47 -0800 (PST)
Date: Mon, 16 Dec 2024 16:27:33 +0000
In-Reply-To: <20241216162735.2047544-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241216162735.2047544-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241216162735.2047544-2-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Manoj Vishwanathan <manojvishy@google.com>, 
 Brian Vazquez <brianvv@google.com>, Jacob Keller <jacob.e.keller@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734366467; x=1734971267; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
 b=r+4Xax+AdakSaX/th7ybW48BXJ3XWUJ6e6kACy6GuTDrNPPp2NTTseJixSmAy64veT
 cASFpr+AhPc3ldZ0Zu0wTWv1suX1cN6szQxw5vR9oYaoVhbR1GgcTsJTBrWz0BF1rEm1
 aKZsV0G7sJxHTZ9MDzwOJvt6UgGcmwzQg8h2DSfypY1Dccb33UaVuyj6LZ/VfEHLiaA3
 8kBG5YxiXnbijRq8OlSrDrORpD0kextw06VyMXlAtv2SvxVvQaA3Ri1/50hy21J7DQKa
 0oCD2unCzjj2BBoShcdtLKPBoWgYj/vot4gDZqODX4RglzhxcCHxxokn0DGnO7IKiPEB
 8VqA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=r+4Xax+A
Subject: [Intel-wired-lan] [iwl-next PATCH v4 1/3] idpf: Acquire the lock
 before accessing the xn->salt
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

From: Manoj Vishwanathan <manojvishy@google.com>

The transaction salt was being accessed before acquiring the
idpf_vc_xn_lock when idpf has to forward the virtchnl reply.

Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
Signed-off-by: David Decotigny <decot@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d46c95f91b0d..13274544f7f4 100644
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
2.47.1.613.gc27f4b7a9f-goog

