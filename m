Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9BDAE6574
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 14:51:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A0F260C01;
	Tue, 24 Jun 2025 12:51:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OrkrEEzcn6Bb; Tue, 24 Jun 2025 12:51:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C6316107C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750769476;
	bh=R8j08AxL8zlJOltWi63caQrmz1cFgG6v1E8nzEyRGUo=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4HwqMHa+E7diJaSyCeSDgg8WLu45oaeJAly2X61F41rJpb20mynRim6E6fzFSi9YS
	 pEyjddW1bre3NI2nGWXU4hdvpekPq2ymkeqQBNvxhAbE1DBk2gdJZnJrv4T/tY2Uin
	 M4eAQG2qVJWcJhruPbxv0aPfapXE1WM0DOvXlZ5r/TEmKftxSxrOVckosE6Cix+iRO
	 /dDZw06APuotoeVChKSEWQcG40EyE349HboFKF2ZJDdxg6S5UEOqFVXGkxyobyLbyI
	 UNVezLC/NHAEbrblGBcr1dHDsQl5xRRSRozNG0B1WP1MZcsu3KJB0xbQhTWeMQcKOn
	 xpMmXTEEg1WLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C6316107C;
	Tue, 24 Jun 2025 12:51:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6066B154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4685D60BE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:51:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JglPwtMaC4-b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 12:51:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 673FA60BC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 673FA60BC1
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 673FA60BC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:51:12 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-607cc1a2bd8so8056278a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 05:51:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750769471; x=1751374271;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=R8j08AxL8zlJOltWi63caQrmz1cFgG6v1E8nzEyRGUo=;
 b=D19xKRaumad51KhI0N2TK9VPKV0TEfI4XQsj6RXVBb4/CYPuqzAeTJg/vo/+Ng2wUF
 jKZnBLD3etKhzSR/XLq7dDcUwaPTC0QVn9DHRVCDid+xDvoXOeSHY/xKzsmINjn6CH/Z
 uKT1w4VL6Qoy0ckAyOnvWdQ8sWjXDQRmyJswWNNA/FL7aUhUa3pQAS7bZAqhygmTV0Zt
 xox1D3FHEmFCi2RMT/EMnojpin1MJgwd+gkLNzueBjhKVfEVUzpGGetGlEkhoPj1RVdL
 c1Xtc1C8T4FFj/9PAsYhQNEjpTIyGycmyUo6MvOsqWsB3ZmvQ8IgE2vog5TgvGRwMDn+
 GPgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWy2gpUhcbWCTdQ9M5dzwXuJ1q+vCzGVN6TRHn+PT1/CwcUnZsICOI2e+GHWdKVEubdxlxGhCn9duj7MenMQBw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzq+X3Spn0rv2SLou+jHalKB2O+//cEqG1UmBGBXTglIWcgXwca
 DNjEe8tUbBnCNx0iL/ooVmFp2KsG1BZyJN4bSKq6aCksVm6DYDpgQXyxyW0DZjmdDQ==
X-Gm-Gg: ASbGnctwHbBDXfR83hhSpegAWx6XfsNhfiwDkYv10HeqBXz6N6RGpdLxev0erDRSzM1
 ew3hDto2kLib4GPOhSNyPmqsn6Mqikiv/0uww4W8uFgujcJ2p3w97OXA3ug6fkFPGpnxY0gxVLf
 rcfNxIG+VwoAJcT0Rr6AHejLjtoN5pGetoCm/e49deX5rODUWjK3gfR3FrAazSytD4KBK5TLJmG
 R5c6MHKgLXC8/xvcgw0Aw/Jzv7UhrD8GQoacRfEjPilxNTtpAox1KVlWm8soQZoJyrB8EAroTzG
 dRCWExlKhc15FAKvwcJDSDQV+e5n081mAbI7C7WV5SNMoQEESTewcRi4YGLJPUxf
X-Google-Smtp-Source: AGHT+IGW7ORN9PWnJJjgW+cZ6TowqoJ7MmszMOr+J2FbInVvd3xL3L9vT7lM4Pbi6amiUEIgd5D6GA==
X-Received: by 2002:a05:6402:4415:b0:607:f31f:26de with SMTP id
 4fb4d7f45d1cf-60a1ccad8femr13331076a12.1.1750769470446; 
 Tue, 24 Jun 2025 05:51:10 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60c2f1ae7basm1003980a12.25.2025.06.24.05.51.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 05:51:10 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <cca5cdd3-79b3-483d-9967-8a134dd23219@jacekk.info>
Date: Tue, 24 Jun 2025 14:51:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
 <20250624095313.GB8266@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250624095313.GB8266@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750769471; x=1751374271; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=R8j08AxL8zlJOltWi63caQrmz1cFgG6v1E8nzEyRGUo=;
 b=XYU/3A9M/hjKI5hnhxu/PWr4Y1N6gC3TMWb5NiF2wB63L3eBhdkGPpdMFUyMjV9reo
 UE1vh0gAj1M4qjhq2Cbph+XvI5Jlis1scpeKKYxNEnuTEYbclCApYoD6IlKegX1horqk
 a7/mpFnmOeG5KI6FW8ypZLWqQJK99o8HMrZV6dGiQHtkjJzR+KPEb8VeR4WpOS+woJyl
 8kluiAizEDCDZLSYQTFK8hTXdpg4ipHZCT4GabnWN3kee3FzqI6NRFP5QgJyGk7BdO3j
 mTVQTqOwbGE5C1jtEWnDOf4UT/dqATvQa2FHZXzvBWemVE1joUDMt4ngvD+JWWf26xIV
 EiVg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=XYU/3A9M
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

>> +	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {
> 
> I see that a similar cast is applied to NVM_SUM. But why?
> If it's not necessary then I would advocate dropping it.

It's like that since the beginning of git history, tracing back to e1000:

$ git show 1da177e4c3f4:drivers/net/e1000/e1000_hw.c | grep -A 1 EEPROM_SUM
     if(checksum == (uint16_t) EEPROM_SUM)
         return E1000_SUCCESS;
(...)


I'd really prefer to keep it as-is here for a moment, since similar 
constructs are not only here, and then clean them up separately.

Examples instances from drivers/net/ethernet/intel:

e1000/e1000_ethtool.c:  if ((checksum != (u16)EEPROM_SUM) && !(*data))
e1000/e1000_hw.c:       if (checksum == (u16)EEPROM_SUM)
e1000e/ethtool.c:       if ((checksum != (u16)NVM_SUM) && !(*data))
igb/e1000_82575.c:      if (checksum != (u16) NVM_SUM) {
igb/e1000_nvm.c:        if (checksum != (u16) NVM_SUM) {
igc/igc_nvm.c:  if (checksum != (u16)NVM_SUM) {

-- 
Best regards,
   Jacek Kowalski

