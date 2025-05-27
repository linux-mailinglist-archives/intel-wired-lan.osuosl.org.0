Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAD6AC5074
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 May 2025 16:02:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE18360B4A;
	Tue, 27 May 2025 14:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIsnPwGJBKB9; Tue, 27 May 2025 14:02:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D9DB60B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748354562;
	bh=XVzcGbWpERYMml1uLAWk5RU7kc71sGLeR0bD1usT3/w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=q8ZrFIGbIaA8cRWak44jCogBoambn0Zs629URxwjHylEWpsBsgJaTuOpwzX3q0jCt
	 mIf0cXE+alT8SEnpAXzUo84NkcHXoxrF+BJJ3Yfcd5L+AdQ15T1jnQJAUlPcFpKaAr
	 EeZU+injtyhgF/2/KYkwSdQtfwu/OPFdH+3lMNTWX7gk0qC3Y4uC5fSWT4UUahr2ip
	 zAetvSgag0Glp+gAE38UwDp+5guQ+ZOryLnzHFIg5odTIfFxOMpXfrxZbJRp7JBu+7
	 ZCRjhQDtiAM0NlxKZjxRkbfZ2FghcRcN7Geeh4d90fYJGReC0VqC9FSsxPEPtHECCm
	 bH8qjDLV/cH4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D9DB60B26;
	Tue, 27 May 2025 14:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D9CF19F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1396404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WskXHIbZ-B7k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 May 2025 09:05:58 +0000 (UTC)
X-Greylist: delayed 546 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 27 May 2025 09:05:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 608CF40209
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 608CF40209
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.132.181.7;
 helo=dispatch1-eu1.ppe-hosted.com; envelope-from=post@mikaelkw.online;
 receiver=<UNKNOWN> 
Received: from dispatch1-eu1.ppe-hosted.com (dispatch1-eu1.ppe-hosted.com
 [185.132.181.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 608CF40209
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 09:05:58 +0000 (UTC)
Received: from dispatch1-eu1.ppe-hosted.com (ip6-localhost [127.0.0.1])
 by dispatch1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 846C73449A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 May 2025 08:56:54 +0000 (UTC)
Received: from engine.ppe-hosted.com (unknown [10.70.45.140])
 by dispatch1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id
 56B0D600B1; Tue, 27 May 2025 08:56:50 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from test-ubuntu-rev3.. (78-26-16-15.network.trollfjord.no
 [78.26.16.15])
 by mx1-eu1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id A2542B00069; 
 Tue, 27 May 2025 08:56:47 +0000 (UTC)
From: Mikael Wessel <post@mikaelkw.online>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, torvalds@linuxfoundation.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew@lunn.ch,
 kuba@kernel.org, pabeni@redhat.com, security@kernel.org,
 stable@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 linux-kernel@vger.kernel.org, Mikael Wessel <post@mikaelkw.online>
Date: Tue, 27 May 2025 10:56:11 +0200
Message-ID: <20250527085612.11354-1-post@mikaelkw.online>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MDID: 1748336210-GI2fiDH3N2w8
X-PPE-STACK: {"stack":"eu1"}
X-MDID-O: eu1; fra; 1748336210; GI2fiDH3N2w8; <post@mikaelkw.online>;
 7544ea0f74a3697a45f5192d6efff48c
X-PPE-TRUSTED: V=1;DIR=OUT;
X-Mailman-Approved-At: Tue, 27 May 2025 14:02:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mikaelkw.online; 
 h=cc:cc:content-transfer-encoding:content-transfer-encoding:date:date:from:from:message-id:message-id:mime-version:mime-version:subject:subject:to:to;
 s=pp-selector; bh=XVzcGbWpERYMml1uLAWk5RU7kc71sGLeR0bD1usT3/w=;
 b=QipSeslw/Ris0Qm4/HLYTGkoc/1pPRw5gLk8WoXClJZ8joMQFaeNuAzmdIuekbe0C5+sfZfb/s98b6n9TKvqq3jqp/NMMDkUts3mLOWFLoE3LVHfLv+GcHEUOgkz6OEge8ou1fGX2MLl/KzeHsItKD/cNHQh2j6P5sN+M4oNAdgIkiH0yubtGlige+ciKD7m8JePc7nN+5I/LOB5Dogd/MnwkwTNb2b2WKoG8R8Oor+tmBb5G8Q5wdRbQmXVBh6d8iI+Syo9az4KJsIJ8QX73ZqXBgR3eSdk6UHjTRYqcaq3Le0bwcvk5vOt9rQ8chzYThTZTJDZYe35NDkGdiBjeg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mikaelkw.online
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mikaelkw.online header.i=@mikaelkw.online
 header.a=rsa-sha256 header.s=pp-selector header.b=QipSeslw
Subject: [Intel-wired-lan] [PATCH v2 net 0/1] e1000e: fix heap overflow in
 e1000_set_eeprom()
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

v2: patch the correct write helper and add bounds-checking; v1
    mistakenly guarded e1000_get_eeprom() (read path).

---

Mikael Wessel (1):
  e1000e: fix heap overflow in e1000_set_eeprom()

 drivers/net/ethernet/intel/e1000e/ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.48.1
