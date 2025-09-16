Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DE9B59BCC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 17:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73CA8821E1;
	Tue, 16 Sep 2025 15:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VAz2SgAPMF5S; Tue, 16 Sep 2025 15:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4C25821E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758035776;
	bh=rOJIcs5drTzBTEY0tV1pMT9TX9JsWUffwaHGsiB/nGA=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Bqx7r7Lh2Tytv7DALvshfEYIbdePUPFlIZdnnP6ojEklkav10rtBk56M3jWXXfl9Z
	 +Tr1wU00yEASIcaT0tSAcBiNmT5dpC3zbPPZokW2x24+psjjeb9PqzXEFaiuPGOEpq
	 9/MkkH58BnHk6hvHFxZ5abk1jQ2relI0KqR6bmE7A8Ft1itp92ZJCWA4bdxP1qBBY8
	 Slk0amIlc+QB6dsbOvN9rOZn7uNwEo0pjAU+FsnrrCSWTvvlv/bn0KVTbIys7m1dHW
	 7+EsWA9k1+wF0q493RxmLpXL924u0Zf7WCF2J4cXZOdKdk0zP4PoyGWwC4Mm4QvtGB
	 QOL2U6W6YObYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4C25821E9;
	Tue, 16 Sep 2025 15:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD86D22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B252440B5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qPGAT3IfPJsA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 06:03:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=naresh.kamboju@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AC55340B64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC55340B64
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC55340B64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:03:24 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-24c8ef94e5dso40560265ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 23:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758002604; x=1758607404;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rOJIcs5drTzBTEY0tV1pMT9TX9JsWUffwaHGsiB/nGA=;
 b=wPgMSmTsZEY8vk6EZqm4NVyCuc4A2+b8P7m3HuiPceR6O/jzXqw07Dxoq4v1fRyHBq
 64LZvpFVGca8+5m5HvVZrZzfwIjIVTWrMGJO7udpWhhoy3xni+frWpKXvoxfWCezR6I/
 dWgynx2PDqnZigW4aHkrxLIMMDYQrUQj/7iPB9sHLBki435ONFxQIC3Lg9n1NGCo0s1U
 baDRoPcLR8qAQdGYFRXbRWeoui9Jb640o77JiHsCYKXktZloDqzKDSMFt9EZcrVMhWv3
 i7z0Ckp453Z2tLgdZrC6NQK8t+P2eyOhU+kuU0tDRaeVTCYDyANZXj4l6Z0zm8dhqboA
 zeIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhFMDu9pTN4ft3NyY77Npienl0AwWEhppDSscx4r2p17dB+bTd8Mv6lnlPhM1m6cNYxeuBnGvDjTF2IO+f/r8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzGpmcf5urogyHV6/d/ZxkB14wveMMck+E6PlVnwPGec0a8vpka
 JeqGGiyi8gXpETL7aYDGtf4fRgCdtHhZFsgnCJRP6bxBVvdqpPwZvltlDOs+C942HRHTgZymSvf
 uvX0Z3TGORComVzd9Yk0Js26n/xCEpF+eD7hnyAjo5eE0WK2orw4m4Us=
X-Gm-Gg: ASbGncsygZ09AJS16g45OZDxURzbqIUqj6QLD/RinrtGLTD5hkcRByM1QSVKlWIiKIg
 h/im7Vsx88x1EHtXPxivpc77yB354PO9vhTDppyCcfpynTfgIXRZIRknz44Wvfy+ADEEVcLGgd+
 xe1wmQPFCuJ+k41DVYu4WMm2VMWiCpHekL86tY9oURHMTm9RUeuGvEj4+hIf3QkFDRZmFeXjC81
 v/J3hO4yNME6Nya9Thv2iojmIjMc5TXuBZzFxfKrsO9jqesLrttUB30QTimR6r5CbKUs3B7
X-Google-Smtp-Source: AGHT+IFV325JIbcAfi1+4GJFDPX/Lf6OkNWpQhdHX1kwwf8lrDz1Wr7tESi3mLj2u4jharlYlnA+pRIIqSG0XyZXHl0=
X-Received: by 2002:a17:902:d2cd:b0:267:44e6:11d6 with SMTP id
 d9443c01a7336-267d1540ec7mr19417725ad.6.1758002603798; Mon, 15 Sep 2025
 23:03:23 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 16 Sep 2025 11:33:12 +0530
X-Gm-Features: AS18NWCGBnaNFEvWs2ru3e2aqzs-uznr7CWnwt9WJqflYhg3DElbi0V21AVd2FA
Message-ID: <CA+G9fYvH8d6pJRbHpOCMZFjgDCff3zcL_AsXL-nf5eB2smS8SA@mail.gmail.com>
To: open list <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, 
 intel-wired-lan@lists.osuosl.org, lkft-triage@lists.linaro.org, 
 Linux Regressions <regressions@lists.linux.dev>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alok Tiwari <alok.a.tiwari@oracle.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Qiang Liu <liuqiang@kylinos.cn>, 
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 16 Sep 2025 15:16:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1758002604; x=1758607404; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rOJIcs5drTzBTEY0tV1pMT9TX9JsWUffwaHGsiB/nGA=;
 b=CFjYR1XPNu2T7oRc3wisMQFVtVtYXFlb8g88LGROkxeakkCHCSSKFjcFGdRuHPOtUM
 C/wnXO8r6Bsyp3YccENlLYUGjgX2UUhPitigciq6vwbS3xyliF2KLvfgCXCHaycrqsBT
 jrPZwBTQXDf4WE6YVu8HtdU1Jk6O9rBEWmu5OLnJo3OLshtnNcmhKivGbzgOaM+qbObZ
 M0H6tbbIjeO3QNSjM393QuE8IBIShuV3k40mxna8dCDz7k1zxhpLEGv/PP4TARRZr1cD
 S2MsdLV4K7evnR5pHf7FH3DFy2IqGQ4h3SNw1pK1RmBcOquEyuUbXmq81wFcdPozhcQW
 rerw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=CFjYR1XP
Subject: [Intel-wired-lan] next-20250915: powerpc: ERROR: modpost:
 "libie_fwlog_init" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
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

The following build warnings / errors are noticed on the powerpc
with ppc6xx_defconfig build on the Linux next-20250915 tag.

First seen on next-20250915
Good: next-20250912
Bad: next-20250915

Regression Analysis:
- New regression? yes
- Reproducibility? yes

* powerpc, build
  - gcc-13-ppc6xx_defconfig
  - gcc-8-ppc6xx_defconfig

Build regression: next-20250915: powerpc: ERROR: modpost:
"libie_fwlog_init" [drivers/net/ethernet/intel/ixgbe/ixgbe.ko]
undefined!

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

## Build log
WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/block/swim3.o
WARNING: modpost: missing MODULE_DESCRIPTION() in
drivers/net/ethernet/freescale/fec_mpc52xx_phy.o
ERROR: modpost: "libie_fwlog_init"
[drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
ERROR: modpost: "libie_get_fwlog_data"
[drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
ERROR: modpost: "libie_fwlog_deinit"
[drivers/net/ethernet/intel/ixgbe/ixgbe.ko] undefined!
make[3]: *** [scripts/Makefile.modpost:147: Module.symvers] Error 1

## Source
* Kernel version: 6.17.0-rc6
* Git tree: https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
* Git describe: 6.17.0-rc6-next-20250915
* Git commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
* Architectures: powerpc
* Toolchains: gcc-13 and gcc-8
* Kconfigs: ppc6xx_defconfig

## Build
* Build log: https://qa-reports.linaro.org/api/testruns/29894450/log_file/
* Build details:
https://regressions.linaro.org/lkft/linux-next-master/next-20250915/build/gcc-13-ppc6xx_defconfig/
* Build plan: https://tuxapi.tuxsuite.com/v1/groups/linaro/projects/lkft/builds/32l4NthnSk7ehgpfv9NJaE6gjqk
* Build link: https://storage.tuxsuite.com/public/linaro/lkft/builds/32l4NthnSk7ehgpfv9NJaE6gjqk/
* Kernel config:
https://storage.tuxsuite.com/public/linaro/lkft/builds/32l4NthnSk7ehgpfv9NJaE6gjqk/config

--
Linaro LKFT
