Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3272AED764
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 10:33:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B46841C67;
	Mon, 30 Jun 2025 08:33:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 76bqD9mI1k9x; Mon, 30 Jun 2025 08:33:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A3D741C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751272387;
	bh=qpyS8LE74rjVWypnTyY2H6hMEBjb9bnQNwFoy1XdUH4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qFqdZWNJWHJvPkjCunvJlmjmgViNFo3OHly2CLgQdDX/d3U1RXPxNXC2YJ46Femka
	 wP1pGQ0vnhuPWWixTCJJV4lhk4QN2hjR8kxmLh1eEahZypZdVMMrugTJOGFdGzbtDa
	 eb7Kvt+F1rOJeNeDzChAY5OcHAUGupIVuyvbLtoickYuhgAJfg90Wt5dblTUT97kBL
	 EXlp0UYBoYmg16hTitOMr3iPwxWZJaRbsMpF7qLganYzgS5x0Afk33pn3+9H8Zn7HJ
	 nwA5Q0uHahh0lQrKlgxnTgxF4mQnHKX28c0IRMBBJ8u5vpGu+RNHukZtR99mFptyjp
	 ArBvebcntqv0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A3D741C61;
	Mon, 30 Jun 2025 08:33:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 951611C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7AF3660EE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YoWFLyapKHAr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 08:33:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::530; helo=mail-ed1-x530.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0EDFA60E9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EDFA60E9A
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EDFA60E9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:33:03 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-60c4521ae2cso7606348a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 01:33:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751272382; x=1751877182;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qpyS8LE74rjVWypnTyY2H6hMEBjb9bnQNwFoy1XdUH4=;
 b=r9YuJvbTQjBPTXeHU/lc8qK9Qc/MhMTtIQ5nok6ti7kkgAqqpwRtoSDu9n+/mU+feU
 ypVt1UBwm286LIgNJNLk6IxNd+e3E8sALUzTDBMd+T2nENG0SwmP0RSR7XzVv73gel8A
 vMdE5v7WG9YHixmN3c4kFrPARGEefzKUUAvQcKSumWH9jCVoMKCXguEgCGf9ik5H57Cd
 s9CLmbHhuRthb7Q1yYAsik1Ak/oVlykYDHaPS1q5pU7JQ6LP9tGpcSYkLuY4RHHk6rV7
 6Dn+eVHzf7g30WRDwiI0NZEmi9lH6EDLYGPT6hBslp7Av2BxO2ZeFy9eD7TI3dsZR3MS
 soMA==
X-Gm-Message-State: AOJu0YzASEjXtR7KjJ2yzt7SH7uWoMBHKPy9rHAkDff6uDwoc6B8W/QK
 2xCi0CHLbcsNMkCntHjItfhOReyrvM0WTYUYeRCQTjw3ZqBZ803z7/xaMdiaL2beagliaET98Uc
 jGM1vrw==
X-Gm-Gg: ASbGncuF1X/nVWGG0GgE9wWIewHWFWXSWWR1CY5wLvnwmoGPQ0LSwF32qcBQNJ9h0y8
 s+S4I2y0hBJOkp2Rx7InTnMGJQxfsiPK5PjI42zO+EvUhh2pJHS7lLez6y+vhhStO/KLd9nEGJK
 St/z1lxz4R85gTsgaGAPo3QzpLUuQzKUifLpU97pDDkCSTcQsrTrn1G3xPNNDWiZzPxjOlC/tcG
 rm92+vGl3YQjZ4ntah1jcns2X7U3+ED6IL6DZGML3Nv5J+BmlP5R+RPoZ1JcLoCml4f7imnvczk
 u2NBJZDPfcjc431iHNvf9mx+3shFxM0NqEMrUJhwB9mBptJPPp1woa6iqZFd98jG
X-Google-Smtp-Source: AGHT+IEt6nK6ONEVCjiWWd2acis9X9s/bUWZV3VYUllsvHKoMSkoTMNF2l8dRHX2bk07NlBfVDF31g==
X-Received: by 2002:a17:906:7308:b0:ae0:ce90:4b6c with SMTP id
 a640c23a62f3a-ae3501a6b84mr1082075066b.49.1751272381452; 
 Mon, 30 Jun 2025 01:33:01 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae36327ce4asm551563766b.163.2025.06.30.01.33.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Jun 2025 01:33:01 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
Date: Mon, 30 Jun 2025 10:33:00 +0200
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
 d=jacekk.info; s=g2024; t=1751272382; x=1751877182; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qpyS8LE74rjVWypnTyY2H6hMEBjb9bnQNwFoy1XdUH4=;
 b=VYqtIEHgNZ39g9k0WrmdSIQsBM0tL3LSvYjQIIJC6YE8ZD9CvCIeJTuZu7Y6JTUoPt
 phgKyQOIenObUKzsQyQA8h8AKmXjS13MrnzvDBI56f7AhWmelnVUYfUkTwJZfCM42zg+
 qWH7EzifDlaRpVRZnYsAg2CnqaLqrns62qO/r1NSrEePCZs5peveKJAWKCBcd3s+DVOM
 bUDMw6dILxAJWlnv2vjPKSEN5xtR88yL2zqF0bxxPuLoxthbMau5RFKxDwrsAJ20t0PE
 h0l2DC3705Fesmy6NtGrqSnU1SKXr/sp77oj0xAu0ToAZUHwMRIjSBVntOV+xG3/LLFF
 /UMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=VYqtIEHg
Subject: [Intel-wired-lan] [PATCH v4 0/2] e1000e: disregard NVM checksums
 for known-bad cases on Tiger Lake
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
> checksum valid bit set.


There are two issues we have found so far on some Tiger Lake systems:

1. Checksum valid bit unset in NVM

Some Dell laptops, i.e. Latitude 5420, have a valid bit unset and
incorrect checksum over NVM contents.

2. Checksum word in NVM is uninitialized (0xFFFF)

Other Dell system, Optiplex 5090 Micro, has a valid bit set while
a checksum word contains 0xFFFF ("empty"/uninitialized value).


Both issues result in the driver refusing to work with error:

> e1000e 0000:XX:XX.X: The NVM Checksum Is Not Valid

The network card is rendered unusable.


Patches work around those problems by ignoring NVM checksum when those
exact error conditions are detected on TGP-based systems.


v1 -> v2: work around issue #2
v2 -> v3: fix wrong comparison in workaround for #2, drop u16 cast
v3 -> v4: rename constant, reformat files, update commit description

Jacek Kowalski (2):
  e1000e: disregard NVM checksum on tgp when valid checksum bit is not
    set
  e1000e: ignore uninitialized checksum word on tgp

 drivers/net/ethernet/intel/e1000e/defines.h | 3 +++
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
 drivers/net/ethernet/intel/e1000e/nvm.c     | 6 ++++++
 3 files changed, 11 insertions(+)

-- 
2.47.2

