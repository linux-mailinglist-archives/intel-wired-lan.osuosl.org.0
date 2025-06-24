Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE03DAE6F94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:30:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BC02409C3;
	Tue, 24 Jun 2025 19:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zJzOVGJbgNjI; Tue, 24 Jun 2025 19:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2A614092F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750793449;
	bh=Or7Q25AbhPUIuP5FJogLrAq14LkOMcW8AbOwVQUU4U0=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wAG6dhJ+g47A1IShS3BfRkxKqMf0Kj3ovVg5w309+RUiVi4LsWjNsNLEEdQ+2CPY0
	 R0Q7P7HEwDIpjGACTZsSHCnxCsQfY1PfCoeh93bpAG+NA7srKDCHtQVvSnBn3r1cX6
	 ofGZC2uXzWhNM1gojgdCCj9vzOrP+OHGUg9Jf6s3pTNvcGAZrjDirF4/d3iaY4XijX
	 gnNrabvZFzFEy8JkdCiS86wwYfmkWm2QygnXf1gAmrUaqm60zAwWBlw49KaylFXCTJ
	 qGNspKl1b2osD+0lgF3tjfd/SPvYyUPknbk3zNcSRX0ZP+lWCGThc39WZNDkir4r8F
	 5SSDpvfNHiTJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2A614092F;
	Tue, 24 Jun 2025 19:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6750154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD3CD83B37
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TB8hT2nAxbTE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:30:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 22D9E83B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22D9E83B25
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22D9E83B25
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:47 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-6097d144923so384106a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:30:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750793445; x=1751398245;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Or7Q25AbhPUIuP5FJogLrAq14LkOMcW8AbOwVQUU4U0=;
 b=oMQ1Eag2m9chj6yzo4pYezvxhsrO6cCHm8sb3YO/OR98kd8AWl+Vuq/ZWuIPE3b7P8
 o5zGMocrlQyGIwX72eEach6P8tcMiWXVORtPBbbdqtEHhbDwFJKVC41Z5c5N5dyiqa1F
 TUGeRYF4TpgPmnoXtiDcq8aE5TIaNLPdYIMaRjmbVVp5Tfr9r9ks4Yl2OxN9kTeBibMk
 ONLVyvXKbL0uLeg/PSavny+1mjNBhLcl37DeF65yyzwW5bHEANDlRPYAeNeE7xbWBH3O
 txWVef3cpfPISnGQf+Yhxi3SV8DpnVOWnSr02b5kFhROru4cG1tBsOZdXkNyQFXyx1Er
 WxAQ==
X-Gm-Message-State: AOJu0YyVHKgm40G9ePyPNcw359WzF1vhonPYDtgPxbBhp5ve+33tVffs
 nMjzypRF6j4G2cyLIGm/2l25DFCpStlBMqADzSR+Citwy4ylo4AtYrVqs4nMjiD++A==
X-Gm-Gg: ASbGncsfsy6wjDalwJVLbMj343UyBGgUKoPqVINBlIqGVk53shH/MUA6dGVKBIdJceX
 P+L5y2ilTwtykGON/E5LXa8gPoZGB+MjDnWpjZzm6lRKjPVcxl9fhwtWjVvZYpfg+n91ImjmmWt
 MXjxFJRTpRdRi9ZwywBmbYIyfxrL69SB5VcxxbV+9xQhtvBJWtsLyo0xo52isBn1dZB6zKD3mTW
 ZPFQvVEpFVzGS8TAukcyZMFWUrfVwRWh+iMCu5tmDe+i+9DjS+ezhXaKLKR8vmN9mfzHcnzkUwF
 Op5gGJNtSmYEcqi+bax2VlZQOl2HxUnJs81HmWgAttfMR8nFIkhdGNC53ZmzW1nmYieq3dTEWoQ
 =
X-Google-Smtp-Source: AGHT+IFWrSuPUZPjo4e14unGnQ8k0U6yS6NVsT08IObwRPjCJ/u8xTjt4ObSkbxqTVOZE0pmb+ZVIQ==
X-Received: by 2002:a05:6402:42d3:b0:604:efcc:bf5c with SMTP id
 4fb4d7f45d1cf-60c18a0dc03mr4931792a12.1.1750793445164; 
 Tue, 24 Jun 2025 12:30:45 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae054080a54sm928625866b.102.2025.06.24.12.30.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:30:44 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <96d55057-28f3-4f77-b5ac-6f2b6769aeb5@jacekk.info>
Date: Tue, 24 Jun 2025 21:30:44 +0200
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
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Language: en-US
In-Reply-To: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750793445; x=1751398245; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Or7Q25AbhPUIuP5FJogLrAq14LkOMcW8AbOwVQUU4U0=;
 b=nbVvdFU4kfPW84vEw4uldX70ZETpIUHQ5SLOTpgrx3SXrGViil32+xB+aXX95Cxlhd
 2HWz7R9Fpenkbb2ZkgOHKTwuczljRxRJQJSTgDOJ0bBNecBxnZpeC0PojSoIwSsMNM7u
 mo6nT++Dqg5plHQodCgMor3ShNZdQkw7O27tmoJac/QM+GAlVeW+HJzWFQFNx9bJpnn+
 xI5ezJqCQ/8OGWnQZ0V9EOusUDWLWeHKWUG8XaxnjZLdqrxi+4r8ry/fG6cIlKtGNVd9
 j86e7pzfv5bC1nokJcf5M0M9NrQ7tGY/5efbN3v14QwW4xNCOaBbC9QhrmmzI1T4BV2s
 akyQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=nbVvdFU4
Subject: [Intel-wired-lan] [PATCH 3/4] igb: drop checksum constant cast to
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
 drivers/net/ethernet/intel/igb/e1000_82575.c | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 64dfc362d1dc..12ad1dc90169 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -2372,7 +2372,7 @@ static s32 igb_validate_nvm_checksum_with_offset(struct e1000_hw *hw,
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16) NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -E1000_ERR_NVM;
 		goto out;
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index 2dcd64d6dec3..e654310b1161 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -636,7 +636,7 @@ s32 igb_validate_nvm_checksum(struct e1000_hw *hw)
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16) NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -E1000_ERR_NVM;
 		goto out;
-- 
2.47.2

