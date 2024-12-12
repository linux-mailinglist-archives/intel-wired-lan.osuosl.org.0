Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 958E79F0057
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 00:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D904606FF;
	Thu, 12 Dec 2024 23:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m5ae3VafzOps; Thu, 12 Dec 2024 23:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F5AB60703
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734047014;
	bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1CE4y+aVodgzkaqe3VP0kIg+gXROhP4NMkS2iOROPWGQTbHxKIq2AF1DLO6XJOkmV
	 v0PnPVfp9IlNRSVQrCLYMlyLwp0P2Nr4pcCbmkykqEq8TaCICMPGg4sLQF9ef8VYd5
	 e6eTOBEMy8cwnm1Is59BqiM/Tm2ug+FMBLSWRj4RD4Jp72x23V5y8+zzpoQ6cUb9nj
	 qgQN/rMYdxP0wusObNMc5bHjg4whLjca6UbaKi0Bh6t68S5m0EXAfiq9ELuB9HFNTA
	 532MsPkYTWQmH4mpn1VGpy32hKkaUfwCbXo7NbAmpfD7tGagtE675yzPQLEcE4JOnU
	 WUZhUuQoT9zyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F5AB60703;
	Thu, 12 Dec 2024 23:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 57BF21146
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B66A581CA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LN6v--M6A8u3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 23:34:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::64a; helo=mail-pl1-x64a.google.com;
 envelope-from=36xjbzwckd34dtkcpxxiqqing.eqokpvgn-yktgf-ncpnkuvu.quwqun.qti@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0F104820B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F104820B2
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F104820B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:01 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-20d15285c87so13961215ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734046441; x=1734651241;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
 b=rxJQxDB7QUD6xZIfx9lptYXrtLTkSGWoDJHLcpnVK0cqeodgWFRB4uTkZIZWWFWn6O
 jxokDKMtAaHWBGE9JZa6wmrGAg0V775FocLeqZmpfuGUrKOqld26OD+oDRC8Wp4VMuy7
 ca88n9xg19q+2Jrzrz/tbfp99NVuM/VfPDJO7spKZhAiR2i+jzKHzazPVhDjDM7VQ0Zt
 C3Fi/8uf7HpTKrahusfGYD8lJB+L0apY4GxFwUSyaELwjfFv89a81QN8XPaMbfesRfEf
 t7crV+m3v/Ip3crIzw6NjcBfSHLl1bmC3LED6k9gnwKMoWYlPUKa9ESkyi4oLTJJXmCB
 cAVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyFoLgr5vZ/TIi7Y42QtnR/mQPKO7ByNBnV9Hr2sAhAeDXsJKZIpQYS4OgLsMXBHNPZ1bU5h2LF9oOqsZMQfA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywm7iBqs17sua3RLGy6qP9rnKd88K7OVI5cjuEffbCS1pKeZS8u
 vR3STECw6P2VqnRwLsSkdrjJYLpNJG2iic1+h9RxuJQneBFZBWeGrgrx+sAOqPVtQUJx9UhYKi2
 iYP9NlA==
X-Google-Smtp-Source: AGHT+IE6+YFyK2dOzazpuXzKcJ5JcNJCjFmXnz48CKNFl7+T+IEVuHoS2q1LN0WlazSasZY8hBgWv75KCl4D
X-Received: from pgbds10.prod.google.com
 ([2002:a05:6a02:430a:b0:7fd:483d:9d10])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:cf0a:b0:216:56c7:98a7
 with SMTP id d9443c01a7336-21892a53c03mr9937645ad.53.1734046441368; Thu, 12
 Dec 2024 15:34:01 -0800 (PST)
Date: Thu, 12 Dec 2024 23:33:31 +0000
In-Reply-To: <20241212233333.3743239-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241212233333.3743239-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241212233333.3743239-2-brianvv@google.com>
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
X-Mailman-Approved-At: Thu, 12 Dec 2024 23:43:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734046441; x=1734651241; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=OMUA0aQKK7WEbAxFgPhIKVdu3gMaz4/z872qXRxIgaM=;
 b=FCeXbEkXhCagjr6dND05BB3h7jMkSwxSY+clsEHd0V7b/bMJFncG8phDgBRn6skID9
 3Ra5MlTuQTi+F7K9x+9fOIBhLW01hfMqKeF8Y3n03gVEwtaR1RYVyLNb8wKGSNeyeth/
 rRLfZRuJDb0HA9oZFTHjzPWTlaS+xaHm2k1jdwEu0y51A3MudKKRTpHJauhrJw4DPnAt
 TzL54xW4eC6eu7D633H/mJs63PjSVdsG2zudUDbcq6uBWaHzX32caxIRFOgj/iPekAAC
 XwKk3+mJuVB5W3nxsE621V4zdqyCaaDO9sx9N8m0sVbayotetqSHcUwU9D+8I51ZrDXL
 72tQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=FCeXbEkX
Subject: [Intel-wired-lan] [iwl-next PATCH v3 1/3] idpf: Acquire the lock
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

