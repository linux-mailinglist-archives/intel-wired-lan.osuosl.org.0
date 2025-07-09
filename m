Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D476AFED26
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 17:09:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC914815DF;
	Wed,  9 Jul 2025 15:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N8NsbvXA8p1g; Wed,  9 Jul 2025 15:09:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 862778156F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752073764;
	bh=EZ0M9HodEwlry/eKWkrULViGPOxu/dhAZfcXYMZH7Dg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6ExNzgT73kfyoloBxSZiW/Ptb93YPoTyiVl+eBmQaEb1aVnvuJkpyYvXUjiQ/KpJn
	 +ukathT5uZyY36RdQ9Ihh1IKyDUW+p1hHJhd9h8LJR2tZ0W0GPv0BYIj4HQXp/a6KL
	 mWakxcaE3OQdy7QUfEJciTQO12F9PpksqL5jVjT9iUbS3QmqhFEwTotvy4RX2QczNb
	 2swC7molI+9O4UvrV08H4iW6nIJ3o9DcTO8Ejj1mOi5AF+wWpHvdAoVsboUdbvVn1s
	 wy7fYqm125gQtmXEQA8YmM0BN5GBYHHHF0ThMmbpTywIN5kYN5Q4QqabXCv/t1Bf0v
	 8Zd8GswNw9EHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 862778156F;
	Wed,  9 Jul 2025 15:09:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AD8E912E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 14:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA84460A5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 14:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVUtcLIploPp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 14:40:32 +0000 (UTC)
X-Greylist: delayed 360 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Jul 2025 14:40:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5F49606FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5F49606FA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=151.80.40.192;
 helo=smtp.blochl.de; envelope-from=markus@blochl.de; receiver=<UNKNOWN> 
Received: from smtp.blochl.de (mail.blochl.de [151.80.40.192])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5F49606FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 14:40:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.blochl.de E74C64466472
Received: from workknecht.fritz.box (ppp-93-104-0-143.dynamic.mnet-online.de
 [93.104.0.143])
 by smtp.blochl.de (Postfix) with ESMTPSA id E74C64466472;
 Wed, 09 Jul 2025 14:34:24 +0000 (UTC)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.2 at 472b552e6fe8
From: =?utf-8?q?Markus_Bl=C3=B6chl?= <markus@blochl.de>
Date: Wed, 09 Jul 2025 16:34:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de>
X-B4-Tracking: v=1; b=H4sIAOp9bmgC/x3MQQqAIBBA0avIrBMm0ayuEhFSU82mwokIxLsnL
 d/i/wRCkUmgVwkiPSx8HgV1pWDew7GR5qUYDBqHHjtNNSLSNMdT5BbtvXWNt2vTmgAluiKt/P7
 DYcz5A02qk+JgAAAA
X-Change-ID: 20250709-e1000e_crossts-7745674f682a
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Thomas Gleixner <tglx@linutronix.de>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 markus.bloechl@ipetronik.com, John Stultz <jstultz@google.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (smtp.blochl.de [0.0.0.0]); Wed, 09 Jul 2025 14:34:25 +0000 (UTC)
X-Mailman-Approved-At: Wed, 09 Jul 2025 15:09:23 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 spf=fail smtp.mailfrom=blochl.de
Subject: [Intel-wired-lan] [PATCH] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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

get_time_fn() callback implementations are expected to fill out the
entire system_counterval_t struct as it may be initially uninitialized.

This broke with the removal of convert_art_to_tsc() helper functions
which left use_nsecs uninitialized.

Assign the entire struct again.

Fixes: bd48b50be50a ("e1000e: Replace convert_art_to_tsc()")
Cc: stable@vger.kernel.org
---
Notes:

Related-To: <https://lore.kernel.org/lkml/txyrr26hxe3xpq3ebqb5ewkgvhvp7xalotaouwludjtjifnah2@7tmgczln4aoo/>
---
 drivers/net/ethernet/intel/e1000e/ptp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index ea3c3eb2ef2020d513d49c1368679f27d17edb04..f01506504ee3a11822930115e9ed07661d81532c 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -124,8 +124,11 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *device,
 	sys_cycles = er32(PLTSTMPH);
 	sys_cycles <<= 32;
 	sys_cycles |= er32(PLTSTMPL);
-	system->cycles = sys_cycles;
-	system->cs_id = CSID_X86_ART;
+	*system = (struct system_counterval_t) {
+		.cycles = sys_cycles,
+		.cs_id = CSID_X86_ART,
+		.use_nsecs = false,
+	};
 
 	return 0;
 }

---
base-commit: 733923397fd95405a48f165c9b1fbc8c4b0a4681
change-id: 20250709-e1000e_crossts-7745674f682a

Best regards,
-- 
Markus Blöchl <markus@blochl.de>

