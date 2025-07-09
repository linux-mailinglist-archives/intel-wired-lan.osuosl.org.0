Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B44AFEFDA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 19:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABE1940801;
	Wed,  9 Jul 2025 17:28:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bArt2cAyifzA; Wed,  9 Jul 2025 17:28:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3CBE4081F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752082127;
	bh=rI+MRZIdAyc1+iFgV3vmINP9X7S6h2ZpIdTF/rRD6+A=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sWjwdzUQGQSX2SnRhs3pOUQWeNzAlzGawpYs9t/yer2DqRyKvEmS588jBECPpHV6H
	 8A+tVa74+zYU5EjTizyOcwQS2axwc8R4PIenLjnJzLwMi2HExr4NnjbhZAa3BTDMDM
	 A2ogQM+g6Avr6YKrQK7sse1zdLAGK37rp/1+45JaARv6K9ORVXC0aFyeeGbw7OSHLO
	 KVOv0MrRWb5Ts/QITGztqwPasLAKqMejeCicbwYzLEXVLblXpZurMaheA+Krl9l1ky
	 maG2W0wjsyJTKirujm9iVgusSmUquQaPqdKX18zUbiz8+bBPCAxH19NsFhnw0McEZP
	 T7HZRgfMvOZ8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3CBE4081F;
	Wed,  9 Jul 2025 17:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C321B69
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 17:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A97DB811B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 17:28:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vDdVuLx2ikSe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 17:28:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=151.80.40.192;
 helo=smtp.blochl.de; envelope-from=markus@blochl.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0404811B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0404811B6
Received: from smtp.blochl.de (mail.blochl.de [151.80.40.192])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0404811B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 17:28:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.blochl.de A45374466472
Received: from workknecht.fritz.box (ppp-93-104-0-143.dynamic.mnet-online.de
 [93.104.0.143])
 by smtp.blochl.de (Postfix) with ESMTPSA id A45374466472;
 Wed, 09 Jul 2025 17:28:37 +0000 (UTC)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.2 at 472b552e6fe8
From: =?utf-8?q?Markus_Bl=C3=B6chl?= <markus@blochl.de>
Date: Wed, 09 Jul 2025 19:28:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
X-B4-Tracking: v=1; b=H4sIAKambmgC/3XMQQrCMBCF4auUWRuZhLZJXXkPKRLTiQ2URjIlK
 CV3N3bv8n/wvh2YUiCGS7NDohw4xLWGOjXgZrs+SYSpNihUHWocBElEpLtLkXljoXXb9br1vVE
 W6umVyIf3Ad7G2nPgLabP4Wf5W/9SWQopvLEGnR4Utf76WKKbl/NEMJZSvthCBrSsAAAA
X-Change-ID: 20250709-e1000e_crossts-7745674f682a
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Thomas Gleixner <tglx@linutronix.de>
Cc: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 markus.bloechl@ipetronik.com, John Stultz <jstultz@google.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Markus_Bl=C3=B6chl?= <markus@blochl.de>
X-Mailer: b4 0.14.2
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (smtp.blochl.de [0.0.0.0]); Wed, 09 Jul 2025 17:28:38 +0000 (UTC)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 spf=fail smtp.mailfrom=blochl.de
Subject: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
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
Signed-off-by: Markus Blöchl <markus@blochl.de>
---
Notes:
    Related-To: <https://lore.kernel.org/lkml/txyrr26hxe3xpq3ebqb5ewkgvhvp7xalotaouwludjtjifnah2@7tmgczln4aoo/>

Changes in v2:
- Add Lakshmi in Cc:
- Add Signed-off-by: trailer which was lost in b4 workflow
- Link to v1: https://lore.kernel.org/r/20250709-e1000e_crossts-v1-1-f8a80c792e4f@blochl.de
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

