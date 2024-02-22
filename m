Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E80C85F538
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 11:03:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC11D41B54;
	Thu, 22 Feb 2024 10:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id InR4TYRBkT2j; Thu, 22 Feb 2024 10:03:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 422EA41B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708596220;
	bh=K7mhh/+tGSokKC9hoWu6KuTY/yZf2g0GFbeGM7yMr08=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uC7B/HV2DHSXQXKSaJ31v+Ma1GHPRL/jgfdrwCErCvcrNa1nnjLOyDLEMSlK2mLXW
	 m1D4vKiFMrQ8xHlt32crKT1gbzMBignOROn8LPccQAbXPc7jbjNsW8U/B0qYU/nLCn
	 KAZGdmm9WbR6ysycFN4TKYWKBwrsuvAl8XjjBEPMiJr8y1TcLm4so8TJcbl1xthU/R
	 KV4RHdlcY1G8j6EoZBtjsgyp/QI8o0yPJHlDT7HiZrpfSysd+Re2a6a86Ardx/t3yt
	 zZogjTUZpcrJjVyD4nyJUz/56yf2IS/zf+CKT1TK5BSovO/UlQUpu/aBKvbzpuezCL
	 yVy2DDVYISKDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 422EA41B4C;
	Thu, 22 Feb 2024 10:03:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94DA41BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E1C260C11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id if5_o0s2As97 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 10:03:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=arnd@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BD083600B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD083600B8
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD083600B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:03:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 523DCCE21E0;
 Thu, 22 Feb 2024 10:03:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A975C433F1;
 Thu, 22 Feb 2024 10:03:28 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 22 Feb 2024 11:02:13 +0100
Message-Id: <20240222100324.453272-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708596211;
 bh=0AggU31CGt9Ylb7dMMATQT5arx+9ift1Y5YR/y3R+MU=;
 h=From:To:Cc:Subject:Date:From;
 b=M6Fe4TK8tyMXPrN5n3UA3CMidv/F0/zv9WlgWVDiLyjsRIvkZDgUECgErqur0N4/d
 BEpUb6hdqeYViHQjlHxqcFvFJFlQUOZKDI44b3/cKgAIZL1F/wooyjj9ABOEOu9p5Y
 1277HuwsBDyZrDwlOY77ie08vHxOXchwQ6pmHGZjWQzOfZ6947Rte+CCDWLgxHBQmS
 XtenB0iA0TJlpvSv5CKPxN/aYbDQhVfv4iYUKnENXlCLFwBwYO5mtI56klb44M0XhB
 SclZjstRT4iLXKZGNMIrScxEAacBniTrTWufVS32T1dd7aKO8kjYQKxFNb/IlmUxcF
 keHbag2tHwuZQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=M6Fe4TK8
Subject: [Intel-wired-lan] [PATCH] igc: fix LEDS_CLASS dependency
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

When IGC is built-in but LEDS_CLASS is a loadable module, there is
a link failure:

x86_64-linux-ld: drivers/net/ethernet/intel/igc/igc_leds.o: in function `igc_led_setup':
igc_leds.c:(.text+0x75c): undefined reference to `devm_led_classdev_register_ext'

Add another dependency that prevents this combination.

Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index af7fa6856707..6e7901e12699 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -372,6 +372,7 @@ config IGC
 config IGC_LEDS
 	def_bool LEDS_TRIGGER_NETDEV
 	depends on IGC && LEDS_CLASS
+	depends on LEDS_CLASS=y || IGC=m
 	help
 	  Optional support for controlling the NIC LED's with the netdev
 	  LED trigger.
-- 
2.39.2

