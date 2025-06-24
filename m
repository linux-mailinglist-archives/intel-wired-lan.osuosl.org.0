Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B00AE6F2F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6C3060D7B;
	Tue, 24 Jun 2025 19:07:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfBp-z3y8rGQ; Tue, 24 Jun 2025 19:07:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30A2560D88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750792079;
	bh=eJQJ0Vu8gTyCcrO4fPQFn2fQBjqLwI2YwZex6LvwDks=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2G3iHewnM3OsxPh88+6MEhb2Rv7UXzs7HWlB8cq7gmXZZ3JZx6ewI7ZvtKAVFROnD
	 14W4fp4hk2xSRw5wec7WEyHXtsFeNYDw1Rmz7ujAFMU+ZudYtSH+sua21C8Yw1YxVt
	 muRvhgat/zyKbyNzfWhIR6HWZIbtFr13mSOHehpHFLLNHNrzCQtU7RebxvlfShRlx3
	 UgCXJecaDzUXUgQuYQ8zWVnECer5J+ZBx+qtu9IaBaczDglkvE7Se73R7pBFxxqEtT
	 PNf0ABRbt1mA4lroTgVyjF0fowKiwNKRBCs1REmKoequccbB30Sx+IoOjH4maIFxdX
	 2pnHUkmZwmkLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30A2560D88;
	Tue, 24 Jun 2025 19:07:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6611F43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C68640E9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8n1jw2fTsdC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:07:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4EC8640C28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC8640C28
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EC8640C28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:07:56 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-604bff84741so1652934a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:07:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750792074; x=1751396874;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eJQJ0Vu8gTyCcrO4fPQFn2fQBjqLwI2YwZex6LvwDks=;
 b=h9iLVFq4PH98Vfii2UgBLP/gXJUeMRFsZZnUp4c+BKD/8MjZr4F3Ktroyy14Ae+5zU
 V2CYxR/smVbg0TKykrhka2t9cEYYeOQ0iWPOX6ttLOqZJEpg+q1ip6HSpc/i1NU7s42r
 jWR3Ov2squ9d66o8d+dVn8E6JXrtrjySs5vTly6JxxyV7G7EguPodTT7icajR7NXF1hz
 +rDIY5x65dX1PVGdVgf1scQeBgHp0Uyv9hgAEscOeYeW+qtP9X0wrOmQHptyvI2pFNBQ
 LfuwgIUgjQCrk3+1QHf8BBDIY5xnI6LiZYR27Qyrx+po25cUerUlZHUoA/1r8KBwxym6
 qQCg==
X-Gm-Message-State: AOJu0Yx6yp5hasUdtgTfsOrLrlgGX+wpi9/dZtnP3RPC8yU0dnL5UXhJ
 IBYj8ANBNA6b2ohw5yYAlxhxn5dHGFYgM/bH+cR2RS+e80hGJn0Te1LP/BrSJhktHA==
X-Gm-Gg: ASbGnctVdsNQDFsrPBAQ2M/zi9C+yPq0rZBudA2pjZuRn0nQzISW8JMyc18+Bg+C679
 oDnGJCZwT+AY2tC/87xmsiel1doQLDnxdZaLPvWNoFvNKfG2O7tmX/qhBcs6haAejRxED2l6xoG
 Lnawyuyj96gRLXDjviQFjGNQ8N+ecRCrLBe0X7UfkzEtiIGvj9dK3Mj1aUhNMHxyJn0RxulmUa8
 WUDuohIeaeIJslyczAQf+nIrP7sQLhVb9cCBR7Ys5v0HrYyyY2kAm4q3ZIScl3wtxw8BoPNDZ4s
 e4oJVVMXNACJfUAaqgh1jzHbE2ia0aDE9iNZJ2C2b5pWKVQWb3tBdujVfleDOJKvh8B3iXGRJI8
 =
X-Google-Smtp-Source: AGHT+IGdso6nJiUlE/UjdgGSmYH2YhJqVjspC86fwFUyasVpFQXUKxKTYUHp5V8lCpYT3UTfmnZPNA==
X-Received: by 2002:a17:906:33d0:b0:ae0:66e8:9ddb with SMTP id
 a640c23a62f3a-ae0be86cb38mr41522566b.19.1750792073935; 
 Tue, 24 Jun 2025 12:07:53 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0b7f473b0sm63844466b.6.2025.06.24.12.07.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:07:53 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
Date: Tue, 24 Jun 2025 21:07:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750792074; x=1751396874; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eJQJ0Vu8gTyCcrO4fPQFn2fQBjqLwI2YwZex6LvwDks=;
 b=E3nZkBkFw5QJbFBZfIzDIUnt1ZIVtbV8R8E1/YNn7oOsv2ZjwiZw1FekWFD48ajLsj
 i5d4jCInIu54b1/kkXjvIDATOqlcWJi4vHkg+H7slZczIOT6hkr3F/XETySxExnQ6Kdv
 QZeJoY2iIuUWKYXGvNvJj64TznlALE1xujpEx4ulF7iO4/jvuBpHys4396+K4L638osw
 74sA6+QFi4NkM0X3Mdh+eST5j1qVeu3Xio/WPCJLTEgo8QQD9UD8gkpGubn2tqnS/y4g
 eTAg88OKyM/XJCu6FmHQOCrxC4LVXnCTY9Y3MTksEUDkW5FUM4gO8RxWuJHJ83YfbL7m
 gdtA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=E3nZkBkF
Subject: [Intel-wired-lan] [PATCH v3 1/2] e1000e: disregard NVM checksum on
 tgp when valid checksum mask is not set
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

As described by Vitaly Lifshits:

> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> driver cannot perform checksum validation and correction. This means
> that all NVM images must leave the factory with correct checksum and
> checksum valid bit set. Since Tiger Lake devices were the first to have
> this lock, some systems in the field did not meet this requirement.
> Therefore, for these transitional devices we skip checksum update and
> verification, if the valid bit is not set.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
v1 -> v2: updated patch description
v2 -> v3: no changes
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
2.47.2
