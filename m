Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F7DA68984
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 11:26:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A40E1407C9;
	Wed, 19 Mar 2025 10:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ewjdwv8ebkyF; Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62C46407CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742380012;
	bh=2A1JeoOMAoYrZ6soKOlYO6lqXRk+i4Kp3d88e7o1oJ0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7bK8uml1XLH22bEYEYKo4AKq7i/3ZQCL7Y6I9c1nVdyOCQbEV5mc0tzmzuJZSb7pB
	 Ug5a9yuSwOl96Aw7sfzBZG1Eu2boLuenYdbZJRFou34UI4zGlHyeotBWz7ETcbPG7g
	 dDfl1USjXWf+yabCZu9T30x5I4Ik4gPuehyYGBRWLDtHOL5jdyICgSI0nDEnoe6Lln
	 mU821Wbh57da5k2s4guAuZ+Ub5NMtWUTQu6hG7lSk1i+Lc/Sz8XeA6/nnlY0GGMExR
	 W5Ut/fKQGZ9FXHhYbuhUzJ1JBrzM1/+KJCRuWA65ebsKPPFvdUJslWjSftjpYWfvGe
	 54NpzJqYd00IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62C46407CA;
	Wed, 19 Mar 2025 10:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6D67FCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FF05407C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ub70Tm5LsGS0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 10:26:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D4F7407A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D4F7407A5
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D4F7407A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 10:26:49 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 19 Mar 2025 11:26:38 +0100
Message-Id: <20250319-igb_irq-v3-0-b9ee902143dd@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN6b2mcC/12OQQ6CMBBFr0JmbU2pRcSV9zDG0HaASUjRFiuGc
 HdrTdS4/Pnz3p8ZPDpCD/tsBoeBPA02hs0qA93VtkVGJmYQXBRc8C2jVp3JXVlT1NJIg0rwEuL
 1xWFDUzIdge49sziNcIpNR34c3CNNhDz1b1vOP7aQM86UQV7utFGVaQ492dvoBkvT2mDyBPHLl
 l9WRFZq9fpPVrUW/+yyLE+XNOC06AAAAA==
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
 Kurt Kanzenbach <kurt@linutronix.de>, Rinitha S <sx.rinitha@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Sweta Kumari <sweta.kumari@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1888; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=BDUVO6GW7S6fdve/NnuJ4AEcsShUXzp/bOYEKxvDit8=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn2pvk+9rkL8hFeSRk1pcp99I0CaUrOal5F1ih3
 BlgV6X0a8OJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ9qb5AAKCRDBk9HyqkZz
 grmfD/9S7GUByiyPNqD+QUhBJH9BCvxb/Hf6cxOoYgAAeEh89be2DNEory3f1n5JMaqwIvpRMvn
 1IDfdAJPQDEAj9Z13PQj4myfeCtPCdN5U3J2WK2/a2HIQoNT14WuSzJUTuLVCUZkMloawcSuCFB
 onh/sUok9W9J+UnBXdoeYczxK8c1zW8q13dvkXG8PFLfWP3cYmssYralkCFesaxOxqbM9PbcShd
 o+MoneRziUKIBY2TeCm2bpfR/2kejttFdQGoM01TQE3crLxtrE6tYsosaiCgx1HY5QH01r4437T
 JFnnBuUnTZVbO9lG+cjh/sM83AFTy4rL0rf/3ZngXPdN8vV1TJfFoeyRi3AY5mRb77TuGcdoTL2
 uq3ClapzM9s9Q+fOaQrn4CEtrVjLmN22Nu/yZAYPPdh24/fMys1sagbPR+x95ulEPvSTLs7vzm2
 Soyj7xTnBOF2P085lcdz6sOrvvNefQF3j+JvQv5aAQzq+Z5PzM4IFnQT1PARaxjNizYz95cwefV
 A8iEQ2wIYlgrdBSb++7qXhRmvbiH7zZNorsnpx217mlcCXGQTwqgC7hhFcaD7KVKhSQsOymVtff
 LtQLJ26gKeE1WGuHcB+DRYIPbPfoEEWXvMMLEbmd03DzNCo/zYodRFvuO6PJGLgI9NZ3a/cz57e
 +ahhaI+YluvQw1w==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742380007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2A1JeoOMAoYrZ6soKOlYO6lqXRk+i4Kp3d88e7o1oJ0=;
 b=iCTsjA7vnu4uWXKyJ3UbrKZjSCC0UUkCo1uqk2cw5rv8qI+E2QZL5e2fU/XYvxDHjTE+X8
 pVHWoEL4ORz2QBi6m3W5hIOH6bXlMXsKf5XtvsOSQEigrB8kBiR6lkpV+W+ibe76vnSN32
 nOebf4h0AoMe72LJ5aENqXXwTJpaC58XMw7pEU+FvjmzEHSOa673i+gJ9uIn1f7BM7I6G3
 cg2J+GsNlpE+UCrJgQ4WJioYp/oQ3kMVvthwg2L3osq7bDYifUyhB87TRl3u5NRO33l6DM
 iqSkAHP5tW8qBo3fkWJSF2P/oN2AKPeHd1LzYR1sL7tXCypYIhEmEHXKFVbE3g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742380007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2A1JeoOMAoYrZ6soKOlYO6lqXRk+i4Kp3d88e7o1oJ0=;
 b=m08hHwpveet5kl8+cqfCVKXefwtDyGgBCygy7gw6VfYwhgbjqCCcHAyMZr2J659VJkH727
 6wJWnxRAqjBObjDg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=iCTsjA7v; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=m08hHwpv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] igb: XDP/ZC follow up
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

This is a follow up for the igb XDP/ZC implementation. The first three 
patches link the IRQs and queues to NAPI instances. This is required to 
bring back the XDP/ZC busy polling support. The last patch removes 
undesired IRQs (injected via igb watchdog) while busy polling with 
napi_defer_hard_irqs and gro_flush_timeout set.

I've dropped the tags for patch #2. Please, review and test again.

Test output:
|apl1:~/linux# uname -a
|Linux apl1 6.14.0-rc6+ #1 SMP PREEMPT_RT Wed Mar 19 08:31:00 CET 2025 x86_64 GNU/Linux
|apl1:~/linux# NETIF=enp2s0 ./tools/testing/selftests/drivers/net/queues.py
|TAP version 13
|1..4
|ok 1 queues.get_queues
|ok 2 queues.addremove_queues
|ok 3 queues.check_down
|ok 4 queues.check_xsk
|# Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v3:
- Drop igb_set_queue_napi() in xsk code (Joe & Tony)
- Add tags
- Rebase to net-next
- Link to v2: https://lore.kernel.org/r/20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de

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
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  1 +
 3 files changed, 73 insertions(+), 11 deletions(-)
---
base-commit: 23c9ff659140f97d44bf6fb59f89526a168f2b86
change-id: 20250206-igb_irq-f5a4d4deb207

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

