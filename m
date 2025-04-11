Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAEFA8690A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 01:14:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1FE541E6A;
	Fri, 11 Apr 2025 23:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vxIUE6DiOiP0; Fri, 11 Apr 2025 23:14:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C94BC41E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744413264;
	bh=L7gZ2a4kNRAu7jwQR+r8fyDCj7+uKKM15SUMg3PT2KM=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aF3hffECVsfUzBT7BNrQKpHyUIFxaOZyGCBPcfvApCSU1QQAClVMNJavZIB6l5hcY
	 VRK8/2I5na5OGieh1CQXGGCeCgVUna6Agn1EScE6Zrb8l/EXuDTgFtSgmnLMoeASrS
	 6MfuGWU2kSdpPqmWftAZTfcc/0QRcSqr5kJdLh9SVu+CnkOqXqHB6/dJYHLcjawnSn
	 OWXK4FaVuITiPwIeWmhSVL622h/P6kwZAy75TVFE4QlPbLlQqXJEw6+nixifnUSHV/
	 XP3vzcOHW49Si6BG0BmxJHCk4eg3NunqCliIzAxGg5rVBB43eelcDvPfzxvd8xjwCK
	 c3W27BEcjUNsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C94BC41E61;
	Fri, 11 Apr 2025 23:14:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 561E7108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3798184726
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ni7qjWoJg1Kh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 23:14:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CBF880CAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CBF880CAA
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CBF880CAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:14:21 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-acae7e7587dso9051566b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744413259; x=1745018059;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=L7gZ2a4kNRAu7jwQR+r8fyDCj7+uKKM15SUMg3PT2KM=;
 b=l8rTHsfYsCw/lDqVguaDyGMqPnoUTdpxugm3vlHhT4HJfmt3Nh3b3BCEtMT9wQsCsB
 Ev+MYOKWwaEoOsK7rJYq/uWMtZSrd0Os70S74vuq2bSZ4SNcffcIYZa92HPhP6KZLfr4
 FxlnZorPFy6nnmbc6Stx4ymaStb9hZ373n+ewO7jyY2On3slnyQPFEvM4OD8GX3eGm2F
 8TcKG3wxKE7PdKZov4EgT+e0fFO3jP4bTBAO3VktAVcPtWeJv9Ig/JNYYoq0jGxrfmTF
 ntndUbJyXYqzcVeSUQwzh2cjblrASm43y6sbwtBlazywDgfSk5IiGB0zZIsii1D2WDyU
 f1sg==
X-Gm-Message-State: AOJu0YxjtgjBgNBusUgS8UqS0Bq1FU2liYSW+gQAddyUEjxRQpqVmxsV
 4luD5oVq/fpUscoOdGIFKqNQztWbJCX+CdIK6757k6N17lJki9iUe+i2jYkaQQ==
X-Gm-Gg: ASbGncs+Mcr0hkuVvvNWtphy+xApnVHLJGbbS5Ogwxo8EgQxDJJsQL1+ZKOzfHjMuSe
 EsKlLRfBgtCPq0yxY8YzJZ19ruxL/rBYuJX/pUo8pTkeJ9DJGK8KLR53ruaX6tkBm0yKtYRrX8G
 IBrSWBIl/OdTQ/wBLVRXvON/0zJxO990xk7dT02pVK5kNLD1XJL3ZmUR13NX3xy3EwyfCSLB1mm
 ulnNYmFbsY9xFtR9TLkWlFnM6ex1nnrNPiqX4ybpnCxtwLiA1wn9rWKCEqmWGUnCtU0qhgTr/bq
 vOMStGmKSAC1wtf9WWuz6VQGSr/OU7IR0C6UYV65yDL/jdOvgA==
X-Google-Smtp-Source: AGHT+IEvy6kgULlZZh+g/Jo9ZEWmTjrbZlUGLIqKPnfHXoHdBf0RzSc9G7gT62xhdLc+tXmoYTQ/WQ==
X-Received: by 2002:a17:906:f58d:b0:aca:a1de:5e62 with SMTP id
 a640c23a62f3a-acad359505amr320916466b.42.1744413259061; 
 Fri, 11 Apr 2025 16:14:19 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-acaa1cb4104sm513940666b.99.2025.04.11.16.14.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Apr 2025 16:14:18 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <1c4b00b6-f6e3-4b04-a129-24452df60903@jacekk.info>
Date: Sat, 12 Apr 2025 01:14:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
 <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
 <a6d71bdc-3c40-49a1-94e5-369029693d06@jacekk.info>
 <ca5e7925-1d75-5168-2c54-1f4fa9ef523e@intel.com>
Content-Language: en-US
In-Reply-To: <ca5e7925-1d75-5168-2c54-1f4fa9ef523e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1744413259; x=1745018059; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=L7gZ2a4kNRAu7jwQR+r8fyDCj7+uKKM15SUMg3PT2KM=;
 b=Suz4ewm9f+daTGbmqcZlPJVi3WZqTMNQvIYiyPQYhrN9jwVSyikSz3IsTeTZbwA79R
 nMMpHx6zh6KJwvY3Z4ictQPZl469mWPEDwpKN8+LpnskDYLU5N8aAKkyWg3c9w7mqXTU
 FZ1kfjND0SVRSeOHIweJ7DcyZ0dts3logDO0icmZyxLqMXiArSNZG00rV/ucLPVnPjbN
 2cn5FPaZz6ou9qGuGxcHwG53vs3hfBGFf4pJnRxiQiYaheTfaq9+uEVSOzYZoQ1Xysj5
 NUlNLScc6CP8Ftj90TpfTAgXQCRiWNZ4kUNbtMxcGCvakqHXXpvBmnIedQq8B1xX2WmR
 OdZA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=Suz4ewm9
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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

>> I'll experiment a little more and get back to you.>> Specifically I'll try to dump the NVM contents before
>> and after running e1000e_update_nvm_checksum and after
>> a reboot.

I finally had a moment to take a look at the issue again.

This change also makes everything work on my system:


diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 364378133526..4538059091e6 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4266,7 +4266,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
         if (!(data & valid_csum_mask)) {
                 e_dbg("NVM Checksum valid bit not set\n");
  
-               if (hw->mac.type < e1000_pch_tgp) {
+               if (hw->mac.type <= e1000_pch_tgp) {
                         data |= valid_csum_mask;
                         ret_val = e1000_write_nvm(hw, word, 1, &data);
                         if (ret_val)


(the modification is not persisted - it is lost even after rmmod/insmod).

The diff between "before" and "after" NVM rewrite looks like this
(MAC address masked):

< 0x0000:               XX XX XX XX XX XX 00 08 ff ff 84 00 01 00 70 00
---
> 0x0000:               XX XX XX XX XX XX 01 08 ff ff 84 00 01 00 70 00 
10c10
< 0x0070:               ff ff ff ff ff ff ff ff ff ff 00 02 ff ff fe 36
---
> 0x0070:               ff ff ff ff ff ff ff ff ff ff 00 02 ff ff fd 34



Reading https://bugzilla.kernel.org/show_bug.cgi?id=213667 the issue
started with yet another Dell system, Precision 7760, locking itself
up with such modification.

The "fix" (4051f68318: e1000e: Do not take care about recovery NVM checksum)
fixed some problems (i.e. Precision 7760) and "broke" some configurations
(i.e. mine Latitude 5420).

The condition itself was changed once already (ffd24fa2fc: e1000e: Correct
NVM checksum verification flow).


> If this approach is acceptable to you, I will prepare a patch with
> the proposed fix and send it to you next week for testing on your system.

What solution do you have in mind?

The only one I can think of is to ignore the checksum completely if the
valid_csum_mask condition is not met on e1000_pch_tgp.

-- 
Best regards,
   Jacek Kowalski
