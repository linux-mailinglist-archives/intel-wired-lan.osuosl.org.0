Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEl2CVX58GlpbgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 20:15:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FAA48A8AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 20:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E920C83BD8;
	Tue, 28 Apr 2026 18:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7uf_IAjzPIGP; Tue, 28 Apr 2026 18:15:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D4E583BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777400144;
	bh=NJ3bVp/jIwzXIJMAxgX204FFWJfobla2UunocuNE01w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AwFjcOlqjSxx4NDtNzsyNcBLuymfVWos6+I34c5nOV6Ub6d1+aVv0fiQkPwtcXVo2
	 Ty4SV4ZqbIdADAVbwPtX9iulGAI3u9bzxv8bAzjDLd+Ve5V0lxiaku2SKiABOzTjHt
	 QUuP6s1cCQI7B4/q0SLSo4JDTrvTtWxwWoPqHZ757gOA66JbGdiuZKX+qZ1Ou0YApV
	 Rv70HqJeREN+1GX36yUof6EynEA4JkeWAa1552R0NPz0Ta76cC9QDV+Pqc4+He2dPo
	 fyT4H5cx+dpk9DntxHILBl+1nNe8TZxxG14jQJA+CtTAKirYGIMvPYNkhhqReCaUJd
	 Lllx7JpCq/mzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D4E583BDB;
	Tue, 28 Apr 2026 18:15:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F059231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 18:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1090060E8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 18:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0790qjHaIam for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 18:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 689F660E64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 689F660E64
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 689F660E64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 18:15:39 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-2b458ca2296so72534765ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 11:15:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777400139; x=1778004939;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NJ3bVp/jIwzXIJMAxgX204FFWJfobla2UunocuNE01w=;
 b=jwZCQRaSnEn9Ss8f6pMJCWTjzLe0v2RGjZvmkYEfzEFx6eHEFQu99X433S6HfIx0tU
 hRSOuahidYNA/MGoWaI5l8CYFfqmPZlmvBCbap37+wx16gbDJYLtTUh+cUV0oi4eWz9B
 SfHa8s3i7ADxCGgOCWfat8wDCelIgKHm8jkgxxuSBjxZYJvS5UjaZ6blA5swK7bsbxF+
 4V765bPjKjUPTMnipkOksm2T2ff0eragd9Z0fE90TR1VrFk0RtwvrmhEM0rKazFs33bA
 FMlYkouMyM5fMZrEyD1beJHlNE3Mnu4Kz+yuFU4lHiDqihe5yEW+iKVyg9hikMN+m/4I
 HHdQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8EHnJN/Zj2Rs2Gj008wJzpUIYZp1slYTEIgOlvOfLP1B63WZT6xT0VOk4VTXtdP5YE7jB/5GXrEiYA+iYkB5A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwVDtul2fjMyu5zYgwzYGwQpKOluGed6oHAuF7wkeFp6eqcMiqD
 AFKXnKqZZw0DUXfY1RPrOw42OHK7VOG2wRBLglcehjYgRFugE9NQILlBt9LxwXjFiUs=
X-Gm-Gg: AeBDieuVoPIlXKerOU2SLPAaV3dEEBGe/eTo0n5bSE05BoFTV500bzk+ds61tpMoiqX
 6YKBqnV6GCrOouCCD4lr1ANSZfRR1/L7+f940Z+x9vrdywoFV0h+ncuOkK2CIrjKM2ynHGpsISS
 N3j6EW3oFN0G+ssBD3W5CahAsZGHXUAA9pt15Adj6Pn6YOhbAKsw1oSSNYhxXaiPnSUbtXBwZb1
 ejJ34g/KZYSZx9/4iaqcyn3DWS691BWuSLd75bz7cekVPWtgdwoGAh0AYblgUqXxgCr7tTdT505
 TZQEiRvhSr1krlyamXTD1lBdb0ifQl0O6WBZ8aZ2kOTlk5lpPVUwXyJg19touxqgptfovrs3/wV
 M2NDF242cnr3oRNmLDUrjyF6qo4ON/86kNjetnllKefEFCJW4raE/XOjkbUiRkq/obX5Wi0Nt2u
 HF9/sxiiYnBs0WH++MbWPlkNjCnaNIx0O01fKiHTYQBdmI/BQJODNDgM8s8A==
X-Received: by 2002:a17:902:e2d5:b0:2b2:eae2:db38 with SMTP id
 d9443c01a7336-2b97c4158c8mr26339015ad.18.1777400138823; 
 Tue, 28 Apr 2026 11:15:38 -0700 (PDT)
Received: from apollo.purestorage.com ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-2b97ac7894csm32995865ad.50.2026.04.28.11.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 11:15:38 -0700 (PDT)
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Mohamed Khalfella <mkhalfella@purestorage.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2026 11:14:50 -0700
Message-ID: <20260428181450.2622899-1-mkhalfella@purestorage.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1777400139; x=1778004939;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NJ3bVp/jIwzXIJMAxgX204FFWJfobla2UunocuNE01w=;
 b=WSgAOtQSBMdc2jX1HNFCHQ3tyWNANq/jncMJIF9xZ/COimBwaGG/j7Gj9aDYsY1ukN
 2KvLSHK06pUVicNGOQelwZ3znYCZaJG9AqG4z2NODDDpYo3w/msySJEkVHIa/THbANKK
 K/JVWXAdhcT/cVpBKE6/ffi52aoNq4G6C1D1djWEwlE+FnGmTEnVJGJ8KCxwMMfBZE4r
 jrokvxBVU3HWftY/AHe6chVahnXJ4+lZsx9gYWya22Op3jqR2i6CHq9k0V/1Avn9JgvO
 Wu9bANtDf9oOovE/J6iNSBPzXI5BeOafFCEdgbxfKlQRiuobT7rc1JA1nAfOVffj40f4
 Icwg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=WSgAOtQS
Subject: [Intel-wired-lan] [PATCH] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
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
X-Rspamd-Queue-Id: 06FAA48A8AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[purestorage.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkhalfella@purestorage.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[purestorage.com:mid,purestorage.com:email];
	FROM_NEQ_ENVFROM(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[9]

i40e_debug() macro takes struct i40e_hw *h as first argument. But the
macro body uses hw instead of h. This has been working so far because hw
happen to be the name of the variable in the context where the marco is
expanded. Fix the macro to use the passed argument.

Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
index e9871dfb32bd..01fd70db9086 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debug.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
@@ -42,7 +42,7 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw);
 #define i40e_debug(h, m, s, ...)				\
 do {								\
 	if (((m) & (h)->debug_mask))				\
-		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
+		dev_info(i40e_hw_to_dev(h), s, ##__VA_ARGS__);	\
 } while (0)
 
 #endif /* _I40E_DEBUG_H_ */
-- 
2.53.0

