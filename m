Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA12EAFC53F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A55681E1D;
	Tue,  8 Jul 2025 08:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gPbmx_TfB4NF; Tue,  8 Jul 2025 08:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F5F081E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962648;
	bh=mVpaJcnbnoIEODWV6i1mADak6czrX9HvszE+3IuKkMg=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W8MTnDRbnXWHmvqY70cO/vAOsytupcrwJDWiyS8c/kvYZkoCrStqtCfrL/hdtesY/
	 s3I1UAy3NADOQqppF+JUqsmUg7n8cM65qAbCC33jLdP+fBLMEHnGVwKzravGYIcAxm
	 XcxyHPlMdfU9FRLY15iW7rCjqHWy4gK0s+ucfUYvtC+1lpTlZIysPB3/VwQdb6MG93
	 AtM+RtwHzM684SSgP1Lp9wxXgV+yuTpq2heT+0G7xBA5z8lg0jMJfjTLhvPamEXEey
	 4J6ezEFN7pLcBFS6A5Fkp1SDXaLjaSXylebp7OxLmls33er64LH/d4dbv84AJrTJTL
	 mm1bdUHLnBlMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F5F081E07;
	Tue,  8 Jul 2025 08:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F36911BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5840400E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XkL9qtL9R9Hz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:17:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52e; helo=mail-ed1-x52e.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 058124003A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 058124003A
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 058124003A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:25 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-607434e1821so5733310a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962644; x=1752567444;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mVpaJcnbnoIEODWV6i1mADak6czrX9HvszE+3IuKkMg=;
 b=mwfBgeb73SKmTD1NAMQ0az9+h6o9r0bhSLDGS3sidVDlOpf2akoRuzprECsYUeYjBL
 r/5xhB5UG+Uyjpg481hFeLZA2sTgL60Y1E7qEIfAryJq/FdrwOh++AHbW2OhWkQPySof
 IqvB5fzOvcsCfsanWh9i9v0FEWHN0m6bOUetuFS/fLnSrLxZhhnEMNDEEcSTMpwmmGQs
 4JJ4w7qWv20I7rbfhAiq/mMHPxrgf7iEkITHbHXxvKwwMgVfYjoSWSjdAjYhRNXaKfXE
 2j/+BfJWcL6qw+cBTw8zWUXmYPk8FeAOyzdPv4Sw9f9SOwbFdfUOiBc7uwGDzdc01EBG
 ta4g==
X-Gm-Message-State: AOJu0YyTn4yyYJ9fivchqQXH443Ny/wFH02qUwpt06IhFLS6hLPZ5HTT
 2RcuP5mQnJnD2R25dh2qZkQnhHND49Eq93eQTau8LabzU4eL/vrBM85xgyDKfj2UQw==
X-Gm-Gg: ASbGnctvJNNnapNEQVDz46WI6Ds8XhKAWcbmiiqhHeCfivsjE4bzE+8UYIRFHSRH1v/
 2sHlL9f7YCwcVSh2k9znlx8ZpatPWLxQKNvWtb7+ZHswuWU/cGWnclL4eL64jb/x1GHOUXIzdgq
 SGrAtOb8b0wb9r0M4oYeVVCmSRv+Bq4HAE1Lt4y+nLp/WOCS43k6pYfUGAnidpF8rSLGwcHr6sN
 A9kV4daetrgHR9VVLaJKr0ATcJW1xCCD/Sfyco48cgPakQAseswXe+ADFNTFWLFB+xIECSrACZn
 px9PReH9/42pblQwIG1wNAHS9ktbPlnF8Pi3+FGt0wfSCvVqqZvPBnbiwGC30QBN
X-Google-Smtp-Source: AGHT+IHSomL4kUwS4v66NKFo0e0QgQflYbBjsYqQWaLJxPqYuMz2uNeLF9DuJgr5kGRilvNA+9EKTg==
X-Received: by 2002:a05:6402:348a:b0:609:7b40:4e8e with SMTP id
 4fb4d7f45d1cf-60fd2fc2ceemr13979357a12.10.1751962643551; 
 Tue, 08 Jul 2025 01:17:23 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60fcb0c798dsm6717800a12.50.2025.07.08.01.17.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:17:23 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <faa67583-4981-4c99-8eed-56e60140c28f@jacekk.info>
Date: Tue, 8 Jul 2025 10:17:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
Content-Language: en-US
In-Reply-To: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751962644; x=1752567444; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=mVpaJcnbnoIEODWV6i1mADak6czrX9HvszE+3IuKkMg=;
 b=RiOwhGU3fQrG+/af6cW00bKhyzDAUPAhwc0iqyd63AkihnInr74/QwLTDQ12njp9Pr
 G5xjSl3i4vdI0NzzMKYBS14qVGJ4lHSgN180hPxxhJBqYY5NUkLR5G90PnbXilmqU3zE
 7E7Ekfv4spq4eoFzlZrT+I2p9RUbTzC02ylk151pJ4iKt6bTGClVlBvBYs+QAxsd6Ltc
 cKskt79OgdLscnPOJrFweju0ITmDgwampOTpEF6Gc7NTlrul7IG5h0Erb81NlgLdRi1Q
 AcUppxpgRKI9eLTIdZ8EwwLHYQPFlQNZjoPutV/YhktZKmIYhIeKOS7ZevCheQSVpGWh
 9Vkg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=RiOwhGU3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] e1000e: drop unnecessary
 constant casts to u16
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

Remove unnecessary casts of constant values to u16.
Let the C type system do it's job.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000e/nvm.c     | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index c0bbb12eed2e..5d8c66253779 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -959,7 +959,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)NVM_SUM) && !(*data))
+	if ((checksum != NVM_SUM) && !(*data))
 		*data = 2;
 
 	return *data;
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index 16369e6d245a..4bde1c9de1b9 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -564,7 +564,7 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		return 0;
 	}
 
-	if (checksum != (u16)NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
 	}
@@ -594,7 +594,7 @@ s32 e1000e_update_nvm_checksum_generic(struct e1000_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = e1000_write_nvm(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		e_dbg("NVM Write Error while updating checksum.\n");
-- 
2.47.2

