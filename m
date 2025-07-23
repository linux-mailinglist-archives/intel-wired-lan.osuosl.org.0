Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D6B0EDAB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3500D60D8B;
	Wed, 23 Jul 2025 08:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ifn27G_BCOLB; Wed, 23 Jul 2025 08:53:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 630D960AB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260815;
	bh=z65j03WrO/n63aEHTvzMDd01RGJ+Quvw3MkBxukbbRo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tr8dCB2Mhigni8i2DjRr6e5839W+ae4D17fboj/8taIlcmCZtkyo5LLZobVdc8r60
	 SR94wXub88XDjDvAa8ZgX/QHeRdvPc0ibejYXsEEb7Dlv/6SweTt+v9cc7gjVIu2vh
	 xvOFg36ruLIpvesL2q3FP/V+uhPUzZZ094O4Nvs2iaJGjKHmlXMrRvpQKbyUuvqtSq
	 qTvB7q1g4Jb19DKCL1mjyPcvBOVRIHeFCJGiX4Aks4A7pQX1pBOFyX9Qdony66xhIM
	 Mcq4S8xQZLAxcD+NMHxrVx3vn0uKPSmqzfyOq/Awy5vjCNNr9hIWA9q1OK5aQykSoN
	 jjh6WFC1Ywksw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 630D960AB8;
	Wed, 23 Jul 2025 08:53:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33B62CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1776940CC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:53:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id znOC38uGDBrM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:53:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62b; helo=mail-ej1-x62b.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00A7C40B87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00A7C40B87
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00A7C40B87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:53:32 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-ae6fa02d8feso932832166b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:53:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260811; x=1753865611;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=z65j03WrO/n63aEHTvzMDd01RGJ+Quvw3MkBxukbbRo=;
 b=Ny9OzFf8vjVWTHCllV9HST/tXuKWaBjSzHbrmDUtmSEuZQU5H/XN5CGzEhvpn5q5z6
 lk0An1+Gyli3XKlf8VtCp7zPFMvUrwih4gBCPb+IWBlY0sZdwLQwhNKYEVseK7RURmAM
 KeDVcOjDq0TZ/i3Ozia3vO5z3yRs/Mip0SEKCLSUEqE0Pa/t4UMCRII/GyIrDJWK6gXd
 y8laC8gLFDuUdK9ivHVuZEoojqZtmyMhcoAYR/V4v4hoZlw3ZDuLMBZn+FqPpVZ9eZGE
 U+evwTyrfAu31drmCZEFeozEtDZrB9TOlaN48pE3dAIJuitPeGAkM3CBDghlbQcXXnTG
 /fFQ==
X-Gm-Message-State: AOJu0Yxz/a3D2EgdZRS+dtwAqQIKJSS9WVjlwbxkRvhNPq1/SgtVECec
 OU2Z5vtlaUsN7gVurQc0n9e+Zkr52vC+8eiRKQuIyNfBPnWn0zTIll0voaLW07F5eQ==
X-Gm-Gg: ASbGncudNA9O4WT9T+0Os24kY/F84i4whtGbhYtNMFNueAspxCTf5NPbYgwnM4U1O79
 c4B4QCT1jQFy2DDEH/N06PIiI8J8wZXsgXTM6NV1rzphgSRo7XL+KhTHCYGaNgcIZxy+Ky966TM
 UFYJBWWDQ6QDSFQYYyOZj0lOOr7jPvmbs5y+ImZ5YrzDtQ3RxnodiLsTJWqWpw6g4LXISEnQpqG
 vN2ilrr2wxDyj52cnnN0Uvg7ZTd9XlW0bXaxQn54mCFKgrEj3mIWv8JqEuDI/P4GDFPxrud1WHg
 7qWZ3UGjsV4dqb5siibGbjUwfyj1gSbRncy5pbCh0751hzorayOGTOCWa6jAnrgp9gXe+iyykqs
 B1daSBAWjrtHBaFlq4/soAcfV
X-Google-Smtp-Source: AGHT+IEAKKNfk8z8hc+e0fC3ZbDRCqVmoShe8CkCXPCmslS/ifB1iVUmtn6ibbbWnqxC+LicuSBrgw==
X-Received: by 2002:a17:907:7f0c:b0:ae0:9fdf:25e8 with SMTP id
 a640c23a62f3a-af2f8d4ecf2mr165925266b.47.1753260810410; 
 Wed, 23 Jul 2025 01:53:30 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aec6c79a089sm1007376066b.20.2025.07.23.01.53.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:53:30 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
Date: Wed, 23 Jul 2025 10:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1753260811; x=1753865611; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z65j03WrO/n63aEHTvzMDd01RGJ+Quvw3MkBxukbbRo=;
 b=c1BO6vJMcSP8ZKqlqlDkAnFvXBsrdAKH4GysITZN37uNqqIvb85a7URhzg/iVsm1cT
 TOAyazGeoxOWEMFIGg2FxySP4fWA1tRF9D8mUnxc+nRSFooanlBBcn/DLAUDyEi+NhDR
 8SdUMEti3MxNQFcIfJIUeKaBOTNrz8xr/8xeTsHmx0bb/Ssci0MLezOhxDFDLMxE6sy0
 uUSVvh6IFxVYMkaSgsq3y6f3FUFyur16G7UPgtJ6fI+NueVtnByAQVpdqwAgeTgsf1SP
 T9+8xH5X6QmfqqHDnJgwpxmU1zVqo1NPIlpovCw2L8avpGGVxLNE7Vx/LA8xJqGcsP1A
 /zCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=c1BO6vJM
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/5] drop unnecessary constant
 casts to u16
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

As requested by Simon Horman, here's the patch set to drop casts of
constants to u16 in comparisons and subtractions. Changes are applied
across all Intel wired drivers.

Per C language specification, arithmetic types with rank lower than integer
are automatically promoted to at least (signed/unsigned) int on comparisons
and subtractions. There is no point in casting to types smaller than
integer, i.e. u16, in such code paths.

Additionally:
- drop casts in "return (int)checksum;" where checksum is u16,
- *_MNG_VLAN_NONE constants equal to -1 that are cast to (u16)
  are now set to 0xFFFF.

v1 -> v2: drop casts in subtractions as well
v2 -> v3: update descs, rework *_MNG_VLAN_NONE, drop parentheses

Jacek Kowalski (5):
  e1000: drop unnecessary constant casts to u16
  e1000e: drop unnecessary constant casts to u16
  igb: drop unnecessary constant casts to u16
  igc: drop unnecessary constant casts to u16
  ixgbe: drop unnecessary casts to u16 / int

 drivers/net/ethernet/intel/e1000/e1000.h         | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
 drivers/net/ethernet/intel/e1000/e1000_main.c    | 3 +--
 drivers/net/ethernet/intel/e1000e/e1000.h        | 2 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c      | 2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c       | 4 ++--
 drivers/net/ethernet/intel/e1000e/nvm.c          | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_82575.c     | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_i210.c      | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c       | 4 ++--
 drivers/net/ethernet/intel/igb/igb.h             | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c        | 3 +--
 drivers/net/ethernet/intel/igc/igc_i225.c        | 2 +-
 drivers/net/ethernet/intel/igc/igc_nvm.c         | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c  | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c    | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c    | 4 ++--
 18 files changed, 27 insertions(+), 29 deletions(-)

-- 
2.47.2

