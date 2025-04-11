Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1F9A86944
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 01:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3D0A41A76;
	Fri, 11 Apr 2025 23:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uqkm6bqdBPAu; Fri, 11 Apr 2025 23:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E57141A3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744414582;
	bh=HwMv8tPiMF0dVPflBOXsWhbXdPTG3gvkPVzHF2vJkxM=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jd1Nr8ZvyMC7+h4+DlIHj0xDNxaAsX7Ul9B2GgqiUzUiJL7lziNsg0VEXCR/Wk3Qy
	 w7xnDHfzcNkcBj2KCBS61lBWji8PNooxgChxgW1YAHqgSw//TJd+J0EGDZ2FcMRh56
	 mnDxLpCeBLrVpBqNAHvfMo12L3YeqVjQJ4sqe7NnXUE0GM8ZfUpdFjNHdBE0Clbojj
	 DXrMW3cMnmwjJ8rkOriFZ9BzJAYkzXM3WtmqJg8U71ySQ+Z0u7gcm0neuQKXY1Hkkc
	 +cyxudknpEE2xlgl0JbxqiQ8UsbsAE1asHp98D4PG8f1fYJn5rDFHjmjHlF6859wbr
	 yhNDF4hPRzCmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E57141A3F;
	Fri, 11 Apr 2025 23:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C2680108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A313480A7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lo4NwOM26EEZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 23:36:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2D3B80CE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2D3B80CE3
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2D3B80CE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 23:36:18 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-5e5cded3e2eso3919992a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:36:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744414576; x=1745019376;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HwMv8tPiMF0dVPflBOXsWhbXdPTG3gvkPVzHF2vJkxM=;
 b=DX6QxQ18WyjqPQFHz1V9pgxDCmwXKRf1TUToYpxx8G/68jaXz66LFjkBH162AjGrKN
 dC4HU0sn3rG44/2GvMD2q+L+eAMK3Xsl1rCqBMleVjlhW3KZPRhDAPr0t42tF/JuiY1+
 T95fL3IJmWnMsaH2hv4PPqQTlWJJZoBxp42SenM+06R4V+kLkn4SqHucA5O+vN//sLca
 rIFnf/Yl3EMk6HI3oV/Ny/5uoJvE5nYtgE/e4ozxqAexYXPh07xIEq2Trfl7VNKdjXmU
 0zeZAdpLL4O3guZct8Gm8QGKpu/+obigcdQDqD6LB12CEd2cdC4y0djQwIE9v3ua2clg
 5H5A==
X-Gm-Message-State: AOJu0YyGo1CSFrMevzrb48eal0RZuGHhd7kWFxiXQUransxB/eMavY4B
 2U2R4MW8Oes9VfagRvJ5Kwvs1aPzby1wyw0gbEJj97yF7uu+Nggl1CYf/hFRHA==
X-Gm-Gg: ASbGncvNuL8ptYQ5btTu9qW2BmzuuGfHn9/+BucLzwOdCbctJtku4GvaKUoJMGlTdBJ
 zCk5QIk95v2SVas2v/0yfLocXo25Og6Ji2iwpogKdeZ08Xocazh3LyGb3Pv42T0lkrxqbigviDs
 303U26sdaLswP7uvSXJJltjj0vOeZkiCpMqFHJaqz3WNjY/YAVJhLJ4zjD+h+fWwEYqW4CS0tqV
 DM48sgTkmaelI2m/OZvXmiSNxlx6mDX0Qf22bsDTEhqvTCpDcyHcsIaFnb1ZwgJCuvxsoaaNQFt
 WEOqxYbJ21XpDIXkWXOYSqqbvJ2noBHq6tykQYo=
X-Google-Smtp-Source: AGHT+IG65JtJTlWzVWTcHoqcK5/jFXj4u4V5EKxD/X2oPq8vmVDR5pde+amvYWacjgOlLdGpJdb14Q==
X-Received: by 2002:a05:6402:358f:b0:5e8:bf2a:7e8c with SMTP id
 4fb4d7f45d1cf-5f36f650ad8mr3873062a12.11.1744414576095; 
 Fri, 11 Apr 2025 16:36:16 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5f36e0ce3fesm1551899a12.0.2025.04.11.16.36.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Apr 2025 16:36:15 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <7c986a61-7214-495b-aed3-ca9f15ac9b7d@jacekk.info>
Date: Sat, 12 Apr 2025 01:36:14 +0200
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
 <1c4b00b6-f6e3-4b04-a129-24452df60903@jacekk.info>
Content-Language: en-US
In-Reply-To: <1c4b00b6-f6e3-4b04-a129-24452df60903@jacekk.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1744414576; x=1745019376; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=HwMv8tPiMF0dVPflBOXsWhbXdPTG3gvkPVzHF2vJkxM=;
 b=KSJYENGdNF1T3+RWgKBimVBK2OWuF31HTJOfQrRq/EPPq37+Z/lFpZAWD0baHKU8Oj
 WDNhsNdOCv6Isn80n0h2aE77u9RMKXm/e7cB4nvlYxTmXZv6PiR5zp6is6UZ78Xlwfvv
 HwT8aMG/YkPE6zQskSgDlxqaSaJgX3Ylngc7NUW7PxeL/9aUUtsf3pl/6Uhtp6QmNILw
 1iYPfnl+xVfWdJ+Il8EJeJZpWj9FrLDvxN+k0Oa04zPvzpQycgchEKJEExi2ilc5PJ+p
 RAjdrH2+Lw8/hJX+aLNNPrUhv1EsWPgYGRhj4GcxjRGt6khzwaR1JCH3rF2kOCj/ErTX
 0XnA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=KSJYENGd
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

>> If this approach is acceptable to you, I will prepare a patch with
>> the proposed fix and send it to you next week for testing on your system.
> 
> What solution do you have in mind?
> 
> The only one I can think of is to ignore the checksum completely if the
> valid_csum_mask condition is not met on e1000_pch_tgp.

Would you be OK with the following modification:

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 364378133526..df4e7d781cb1 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4274,6 +4274,8 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
                         ret_val = e1000e_update_nvm_checksum(hw);
                         if (ret_val)
                                 return ret_val;
+               } else if (hw->mac.type == e1000_pch_tgp) {
+                       return 0;
                 }
         }
  

?

-- 
Best regards,
   Jacek Kowalski

