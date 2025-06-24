Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0784AE6F8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80AF1411FB;
	Tue, 24 Jun 2025 19:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1JyOe0rIU-jh; Tue, 24 Jun 2025 19:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 053FB40E9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750793389;
	bh=ws0aKIOxs3tVl5HqThHJotfuM+musWr8w3Tsu+UY7Fk=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nrL0H1qmu8bvHsa+5yK9zgS0EomeA/+JzVyHwC9H5EomWg7OBvJB9IRZnuk3gllW7
	 vCQdoeDShpz9biYK0StlSCjYfaziE1ZzWfc7SCzbRzWreLq/KWBSCg4Mo9CSXEoRu9
	 mxiWhQJresUtUFGEihCUE71LVicWsCiBc6Wtdk83GvqyeJRLB71+6kC/+bhAcDMM70
	 BLmGDbuxD6qxGkEypkASJHloqfHqnbNjriNrZpMVGkYHBdqpgk/5mJLoVpa0teWm0m
	 YyIdvEYMjdocOJLruPpseNKuPoNrUs89Y0rU0ab6iF7Lq/6sDmduBjSqaVDdNSkWLB
	 kIub/R57kusYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 053FB40E9C;
	Tue, 24 Jun 2025 19:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C37443F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6DD3583B37
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gzy2le6KCBjj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::631; helo=mail-ej1-x631.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 98E8883B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98E8883B25
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98E8883B25
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:29:46 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-ad8a6c202ffso1073523766b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:29:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750793384; x=1751398184;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ws0aKIOxs3tVl5HqThHJotfuM+musWr8w3Tsu+UY7Fk=;
 b=qDFiamcnKRbHxeAEhuXpSDr2wo44KxNZwQ5v4WbLHHGPS13f7R71EJsfpWvMzE0dPz
 Qln5So5cFCNY6bh/QZQjmboTfJ3Rz+LwooA6t12Cae2jQPMev/nbqmXKbLVmzlqd7irm
 a6HqsWEv9S60PvW58KKtJaPpCXx1bvoH1HehXJenjGof4P7LEm5Sx1so+d/AKAjZj/iA
 b/5X8bqZHyXvMOB8nxtO9UsXiSY6cOFSxcArbLmZx+P6NwLEfOEZ4KGO29It3k4W4R/D
 yk7I3SFda3pBtf1lvj1arB/3FGHl+6W2wgl06zPrI3tJYYpVCwn66BYrfGyIsJy6Lz5e
 bhpw==
X-Gm-Message-State: AOJu0Yyr7/yIIMxbY1WSa876CEI15xHyzis3SngHOYFy+NR7+H3BROBT
 J/NF2WortY+IooBKd+BFJ7b1GtBQLqc+6j946ytgUIs+CFO6l2dZqiN/EwYzVbnV37Jo/bJdKSL
 /efq9JA==
X-Gm-Gg: ASbGncuQSNDJFUMpQshbKLrvdvqgH9w5MMFUPBdw0Sqel2c/fweg9Ne06HMhJTDrE3k
 J0Q2uD6UV7695t/1tPzVwqej4hYxTOzPU08BpkMKaTjyetaogtn0/igTqUSanwYZZG7lTYBDaOd
 k0rCdS95trzErX6LR2WXx8De5nq+vrdp1vYIudf8MXqs/Dhd5m+LA2w7H7nPGyF0LyMA53ZB2Sp
 McJ+lyOwr1jBmL6QQjr4o860AfidhLrNjyw9k920rd5aoKFgpbRQeUDOzqBEezxXj+uLGHkT9Id
 kGbgBhXQK6q2AfubzUM7cPE8eSAdbMZ2nJc5NBJvlvHxTIvZgO0u5qkp8gzeW3hO
X-Google-Smtp-Source: AGHT+IGeqgsx8L6sy3o3oaeB07CiiQupvJ4nu0wpwMNqtSXLbb2/E/jMAzuWpZLEd5MscyMgYpvVfQ==
X-Received: by 2002:a17:907:868e:b0:ae0:a648:54bb with SMTP id
 a640c23a62f3a-ae0bed82df3mr51970566b.31.1750793384497; 
 Tue, 24 Jun 2025 12:29:44 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae053e7fbd9sm916114166b.33.2025.06.24.12.29.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:29:44 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Date: Tue, 24 Jun 2025 21:29:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750793384; x=1751398184; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ws0aKIOxs3tVl5HqThHJotfuM+musWr8w3Tsu+UY7Fk=;
 b=OnXuk1N35QGuFYa9NBljpZf1Lyh/0tFwfSNRLqF1FPS58iQj1vDxcIW0OfMQo8WQjA
 U/bRbk3Hch/SjXb405cOPL0zB1w9ZAwj2q2Hxy9fNijJcAUEERJgr9js/+TNvZf+Ufza
 MFW5vzMXdd4lRpahGHJ3aKKKUUTMuomOsn7jOMmfOJWICZW3QCTA+Xevvde5aGj01me7
 PGlrkUd5u+IEj6hlOJ/dKAZjnmTIqbeE2GRBh1U9QOF1MASAhDIMPAV6k1H/ZCddW6xe
 cKQ7CmTeHoPm7JZtkQwskPvlYIb2H/dO3T9kqbMGmuEj5CSZPbp8fU73HmrY2ayqsnQ2
 kh1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=OnXuk1N3
Subject: [Intel-wired-lan] [PATCH 1/4] e1000: drop checksum constant cast to
 u16 in comparisons
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

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index d06d29c6c037..d152026a027b 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -806,7 +806,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)EEPROM_SUM) && !(*data))
+	if ((checksum != EEPROM_SUM) && !(*data))
 		*data = 2;
 
 	return *data;
diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index f9328f2e669f..b5a31e8d84f4 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3970,7 +3970,7 @@ s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 		return E1000_SUCCESS;
 
 #endif
-	if (checksum == (u16)EEPROM_SUM)
+	if (checksum == EEPROM_SUM)
 		return E1000_SUCCESS;
 	else {
 		e_dbg("EEPROM Checksum Invalid\n");
-- 
2.47.2

