Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F733A95FB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 09:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD79F40906;
	Tue, 22 Apr 2025 07:43:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id seeXfElnpFao; Tue, 22 Apr 2025 07:43:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E692240753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745307787;
	bh=HvtvMwkTmpPueoBszMdXY/zEz71N9wRSKLK+XNFELU0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oYHz2T2HTMNL6PSq2619cnkSlPZKKkimPY9ydkvuXgrRz+h2bxR0PNDEFZYOAF31+
	 SkJYa/DwiOO55bSne7bYd7qqz3+XdtCzbHURXfdXhaPoV8JIjm6L5MOgZIeiPP/VGr
	 9zu3qp8H3a0qbsJawrcJNFY6PQj1hU1XzAZOXDgNgrcMVnh3URkj/ibsK0EtNwC5Vx
	 wBn0rS3oLAFTnLD4VwcylHclL3h5a8AOrTFOVyU5RIu4hPHu0Ow4D24VZPyvcRV5Y2
	 djEH2th7jTSpAuWXIKaZqYiUfskjqNPV7JdD0n6lppTCljMT1Q+qL6Cseaxw85HPuf
	 x7lgEKoftCk8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E692240753;
	Tue, 22 Apr 2025 07:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D8E168
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 07:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E906406B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 07:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CoFib3R_UTw1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 07:43:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10598406D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10598406D9
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10598406D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 07:43:04 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5e61d91a087so7224000a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 00:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745307782; x=1745912582;
 h=content-transfer-encoding:cc:to:content-language:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HvtvMwkTmpPueoBszMdXY/zEz71N9wRSKLK+XNFELU0=;
 b=sEOohivmGOXxrtq9o6IYlwJSnNajIXFEt/PLG8L4/zqHyydUoSAeExOaKc8nHso34U
 /fsC0bcvFc38KwKCSAdUJJAN3q8eRtV/LnN6rzU9rPEhu/M9o8kK8WmV4RWSsMb+/Jxk
 A0xbPNwyjlum6VOVpz6hbgafx1hcsK1pnOiVvN4DRQ0uNkHVeL4QuBJKZYOkyhIJtAYP
 OlYGrMhFp73Dpd83KNpOcKLT/lIrdQnMbbPAbG0XR6n5+T3fjgrMnxbdUv61A1Cic527
 nJjLsknf7vYV0RNd8XABSrqzmABMD7JpbMrBbj/mlKSBFn7MZj8yGVMZBygYB1vliTPM
 CzJQ==
X-Gm-Message-State: AOJu0Yw9bDBmwbfFz63M5accGecVTmolJf/iGVDMBk7rXdsc0DOKoyDE
 qdoM6J3orHpe2ads0tvc3fLi1tm2na3xfs8FqJG+vvZfE55WMKs05jcmQNsQYw==
X-Gm-Gg: ASbGncsf+WfaY21M08lOQuqC3XfPsm9RbrTepgQUiwI/tZHwiJTYzHiV8/U/LbfGzxi
 nu+bc5YP5uscHm6KMSM3VgKoHMI6lSztRJHUCANbWzbc4CKlEdmStvEt2WyPMUde1zH7vaF1tM6
 bK014iMNxPhkz9WYTvV0TqLCARqieKfA6i9Zrt0RRxqmEE6q/Um//Ag0ETiWDP6nMI0gjsaZ6/z
 Xp7ZgXoMu9NoGEjVpKf6XqF5cbytb0BJsvZufMDP4UGwQ3QzTc3fT9XCGlWXDJelnV7IEygm9LC
 Xw4ECxvED/BDE64MERrQaH67rqyQqNdCGtimSWU=
X-Google-Smtp-Source: AGHT+IGeWOF7rvAQVW49ssEllGvauDTfczcnSBjqrSKrwBLr+txCO9/Ai5Axu/MLfDHRRPf7+rlXcg==
X-Received: by 2002:a17:907:d7cb:b0:ac8:17a1:e42 with SMTP id
 a640c23a62f3a-acb74b1ddbamr1344361966b.22.1745307782452; 
 Tue, 22 Apr 2025 00:43:02 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-acb6ec4235asm615437066b.39.2025.04.22.00.43.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Apr 2025 00:43:02 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
Date: Tue, 22 Apr 2025 09:43:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1745307782; x=1745912582; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:content-language:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HvtvMwkTmpPueoBszMdXY/zEz71N9wRSKLK+XNFELU0=;
 b=W5jjxtwrIvvkxWkLEPlMJNVsirxxUoVnqNZJfPI3DnwcqvyfhxeeEuO5CjlhH4k7s5
 ZJtQmVOUErvQEnD/RUKM8K0EqLY+AWmZfwEFis1UbwPvaakFUuP3Bl5emNho+8PBPl4m
 xa4F0XIih8A9r2IdP/T4zNWJ5ZsbSEeg2776853NGZwWHZ//tjqkBy/+oLz52su3plum
 YpvWIQ/XNo1fpcxRq6J+7Ha8K0MO/RuIZu39Ds1CeLNrR4/kCOHrmIfBIypbTPp6oOVg
 BMBMDDth1N4kHAlhO124c0cwlsVzIpozWf/rUxfdu+6v6i0vDuBaKVItx1NLG2cMA6Cz
 OJqQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=W5jjxtwr
Subject: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

Some Dell Tiger Lake systems have incorrect NVM checksum. These also
have a bitmask that indicates correct checksum set to "invalid".

Because it is impossible to determine whether the NVM write would finish
correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
it makes sense to skip the validation completely under these conditions.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
  drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
  1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 364378133526..df4e7d781cb1 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4274,6 +4274,8 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
  			ret_val = e1000e_update_nvm_checksum(hw);
  			if (ret_val)
  				return ret_val;
+		} else if (hw->mac.type == e1000_pch_tgp) {
+			return 0;
  		}
  	}
  
-- 
2.39.5
