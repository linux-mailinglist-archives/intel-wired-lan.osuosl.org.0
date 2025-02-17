Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75131A381B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 12:31:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22265819D1;
	Mon, 17 Feb 2025 11:31:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJ3GbgMTJvjD; Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 466EB81F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739791894;
	bh=skZjnxzf254qvqb2PN3O3vf3KobgIyRtyxWiiP82TmQ=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F/eiAD9/D2I+9yY3+IRaefX1IfKslhhX/KqwQW/5YjMHl0EkbCrkGMv/lrmWy4zYA
	 /aOWIU3dLKfUDO8TJUIM7IfU8KggA3lzupN2/55oprl4TPVhE4BNMabhMwJfWDyz9m
	 as24Gp8OktGG3W61v9SkdOxPPSxP/mCEtkgSSTrgKwjNJ0VRq98SsFJ+QgnK6MyA+t
	 +zFV0IqmHma/YNGfzFTgMkiQOocRv1T8FgN03SDBxN3xuS7uiPNWtIm+X5ZXWzAdu8
	 zp4o1sU7Sr3FuynK8Mj9E7jIp+7MeR5ECKVcvQfTcxh9CNaqTI+nM41z3/W1NKsrXJ
	 Oa3pWPXA+jeVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 466EB81F8C;
	Mon, 17 Feb 2025 11:31:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E0F1C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C10960DC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rWPaH0bZabnY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 11:31:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C55560693
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C55560693
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C55560693
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 11:31:31 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 17 Feb 2025 12:31:20 +0100
Message-Id: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAkes2cC/z2N0QqCQBBFf0XmuY1x0aye+o+QcJ1ZHZDVds0M8
 d9bNujxcC7nbhDYCwe4Zht4XiTI6CLoQwZt37iOlVBk0KhL1HhS0pmH+KeyZVNQQWw0VhDXk2c
 rayrdQd6DcrzOUEfTS5hH/0kXS578r5bjv7bkCpUhxurckrmQvQ3iXrMfnaxHYqj3ff8CnYYMR
 KwAAAA=
X-Change-ID: 20250206-igb_irq-f5a4d4deb207
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Joe Damato <jdamato@fastly.com>, 
 Gerhard Engleder <gerhard@engleder-embedded.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1228; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=rfeGsFA8Y1AGZV6BheQkFnS99s84MAbp5CZXXbJOP2k=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnsx4OgMEBr+GGjPf1Frgiv5FMDzDDsl46Ievri
 6eLbRF7HsSJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ7MeDgAKCRDBk9HyqkZz
 gqh5EACJ68/Zi7N6WJetEjLQapT9LS4+I9K9SVXouh+UPVS3stj0D30RTMxwfYNWvLBYextSYd/
 kN96dT2CQlmc2n8uopEiawQ+Ha2YTAT01BdD7O/pJQuC20I3D9AfvVp2lCf5npf+61q4FF36HAl
 3rvJik6CAib1AMRYqzUkyvl5wz0BCuCsQEtkbQ/wBjt5oVCQoqZzj76tT6oCUnvZwubtoXaxAR0
 GaNqrfeqDVKA92ZeM75MhqjqOPmxBgAnWwfEIBj2vqK/HND7nZ4ySxSBpi7kcPxIzQ0PJTu3/BM
 h14E1Kjrj4C/gt3MpkScp9lw5FWYEO9QEsrBx0/fkJx7Yzcualcss2S2Ie/AjBTGg4dA7x4+RGh
 gEno3oWzZ+/PhxbSFKQd7LpbG6mgNzuU71wg8gpLM8bTa0vdgPq6nH1XUctVZDjnlP7Gp6aG9ow
 25/O6w/Q9F+QDuwffhWb030XhjWk/z3/ZNJw6a+xUffOYMJ1Esa2gL2Qu5XY8sLSRUxNXDidRK6
 Gk1r8fFUJwZPFNcfD7YbNtFxqHsxGtjC1hovCi1j8hYiSIGhXeXzviQPBh0gJAIPDB4Vh9r8j/i
 EmolxSq8C00iu6yq1oQeAptkkeXQh5dfsFucJZGY0KZqVo+6se5tseHH9XwhkZC3rt3YKUgtYcT
 QZIsMgtaGJlSIVQ==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739791889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=skZjnxzf254qvqb2PN3O3vf3KobgIyRtyxWiiP82TmQ=;
 b=U9//xUlTWYUDheBTHlh/hkD+q3RiCuC7EypbUvWw4QZQ9iRFO0Sty+U4tFj1rHkeOprHx9
 Xl6E/VdEAODnZvM2cH8lBOAzjLNnYK5AQZJjahPIArX/pj6qwuj93WKYBHblp60xTgtmAX
 cPDTI6FVlEn9rCMaIQjGWNL5hPrqThhD+BF7pUXdti3K/TlCL8jfULz1Pfxyew9GTAt0B4
 Sa8YaJAr+HyVkG14u44EVqPGI3AucS9xl/UnVhzAPQU/kMp54sfmWWgeFH33IZ3Dlj350B
 kQ1RffwLOMczsAYBNsBwXcdBE/LuwrO8QJ+r7uiWBRHZP6Wb7JTW/QyVBryCQQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739791889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=skZjnxzf254qvqb2PN3O3vf3KobgIyRtyxWiiP82TmQ=;
 b=rNEERyUV+H3AQ9DM7XBj0TmCR1ogSUI6FOH4J1n7rJhdvh8485p2bpNi7MiYguIW2Tz0mK
 IDW60A1wFhciJOAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=U9//xUlT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=rNEERyUV
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
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

This is a follow up for the igb XDP/ZC implementation. The first two 
patches link the IRQs and queues to NAPI instances. This is required to 
bring back the XDP/ZC busy polling support. The last patch removes 
undesired IRQs (injected via igb watchdog) while busy polling with 
napi_defer_hard_irqs and gro_flush_timeout set.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v2:
- Take RTNL lock in PCI error handlers (Joe)
- Fix typo in commit message (Gerhard)
- Use netif_napi_add_config() (Joe)
- Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de

---
Kurt Kanzenbach (4):
      igb: Link IRQs to NAPI instances
      igb: Link queues to NAPI instances
      igb: Add support for persistent NAPI config
      igb: Get rid of spurious interrupts

 drivers/net/ethernet/intel/igb/igb.h      |  5 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 78 +++++++++++++++++++++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  3 ++
 3 files changed, 75 insertions(+), 11 deletions(-)
---
base-commit: 0784d83df3bfc977c13252a0599be924f0afa68d
change-id: 20250206-igb_irq-f5a4d4deb207

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

