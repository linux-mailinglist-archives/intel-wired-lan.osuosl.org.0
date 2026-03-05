Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ7CGUZaqWkL6AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 11:26:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FDD20FA8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 11:26:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F88381E39;
	Thu,  5 Mar 2026 10:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id erorRHV3A81C; Thu,  5 Mar 2026 10:26:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B45E81E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772706370;
	bh=jcB4Qc4RSpTJkK3766CPxby/vsOqv2xo6x9Nr5FoRkY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HSxLYEaZN3qfWbleai37S1uSCrtbFZkWxQSesXX4VjGBTSYc+Iu4eq85KQYdCteM4
	 nFTeHAXI/DFgsCrrk4++NM/gGTfqenxYA1BZg7m2BHqftxC/iyzFWEiexgtSKf3B4H
	 fhz6rMR7WIhrV5GrkDlPa1yARAcyqhpE9YXeKbMLfYkLI66YsB34C9ZknnbX9RmFLY
	 7yD6Z2ZUFmc/yHC/WcYsB5R4i5wXHxQrtmpLuvdpshUnWsHr15NYBzXCQxMbYmpLvs
	 G9rsRGig11fJnYgcoTenaG0qKgyao3aEXjqD+YpBQ8dHoYhZPbLH2fG5FYdJCZrls0
	 pgnSEmTRC+lkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B45E81E3A;
	Thu,  5 Mar 2026 10:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6AFF223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 10:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D857081E36
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 10:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQ77Minx5BpM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 10:26:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C14C481E28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C14C481E28
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C14C481E28
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 10:26:07 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Thu, 05 Mar 2026 11:25:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-igb_irq_ts-v5-1-d3b96828ab5b@linutronix.de>
X-B4-Tracking: v=1; b=H4sIADBaqWkC/23Q0WoDIRAF0F8JPtego67Sp/xHKEEnbjIQ3Fa3Z
 kPYf68sDc2WPA7DuZeZOysxUyzsfXNnOVYqNKQ2mLcNw7NPp8jp2GYGAoxwUnE6hQPlr8NYuPT
 eWkQbNAbWwGeOPU1L2J7R9cJTnEb20TZnKuOQb0tLlcv+N9A8B1bJJXfY9SiUURpgd6H0PeYh0
 bQ9xiWqwhMHWHFoXHpUVljnrdevuHrwToBYt6vGIfbtINTBOfOK6z+uxOobVTeOwUfbS7Cik//
 5PM8/NDK+gG8BAAA=
X-Change-ID: 20250813-igb_irq_ts-1aa77cc7b4cb
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=6087; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=RgkN74Z5fNV4bzo2sabqZd7YQa4GKy2pwPJ9Gy5jLJg=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBpqVo7/Bhgf5Oj2cRlPlV6xF009jxJJmurp6+c9
 FlGt/doKfyJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaalaOwAKCRDBk9HyqkZz
 goA4D/9Akp2Gubw9YdaaN140Jmy8tLi4LAmBmo50qceDm4MrWDbREahVadTXK/Mf/9IcnPpBYly
 lcGnsva/PJTsXQSyVgK01rS7IgcnKd3TD3bfs86DeaNYGOLz0g79uJJPf+0R3LCHRR/198Vd4r1
 fRmmG2BsweCK3QfUhzbgpOWsbfI2VeYEjc5VLEJowXKk7c1/5oOH3zzgIDOrz285h0GzVwGSJip
 MMA8Xb8imJMVKUzlIMgi43kBn7hN2mVaYJQlfWawkWNBuI3lH9FEL6ufkHWqeX9voPVrs4plieu
 GVjQ/jFGT0IFs8dSoS/myAoAuW2Yn3iAe/mvYqaO7W4xByTXZHxUrzHVgQXKbWDvwF5VIhrTt/f
 rFvPoCOVL5LDq/7YCPwVTdE2ZggGW74+Y4unSHO+quXavFaFQNOeGyr0jIn0cOs7nj6s3ox2Y9S
 w0vH3Cl/HLbcmhfNeB6Mz1M+aYktpKCzV7KChNhX3tnLi2QwfTKPRA2/rOFf0PI3hUFcQw6EVZx
 HNUZLwmYVwNzU9PWRyCqgGMdrg2oeqsNM5EgBurH8gJiDvwXcvNatQoJ6MaTZAJG8xC92CHTft3
 JPNP8TiimlUQiA2fW13LernU0n3bMs2Q3u7fFLXwoj+tpj6nQsVKLwXJRInFK2Kv3v2xiVkej13
 Xw4QFTot3VJ+OPg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1772706363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jcB4Qc4RSpTJkK3766CPxby/vsOqv2xo6x9Nr5FoRkY=;
 b=Fb75O7pHkhNIEquJGMiB8NIOlYp0st3symelN/S73GSyNVdvlr2mYRhyFfQgt9h9iaMixl
 vYqAPwZoc8+FLbs+EfgUsZMRzmbaOml82X6s1yUfiH4owJ5VLY8tGacCfVydExMwdGLtuV
 e2x6FN8XUlaIAkEz8bcBB6HwesJ8ffeDK4eLnrZ9l/sNGs3RGCC7qCbQw1LgifyLFeZmPV
 nY6hcJ+04wsXLC3VtusBzIDDuzLM/lOE9N+d09FnEW0bUvTXEaEOlKacQ8MCHFrcYQ7Q5f
 UrMparniEo3JPX1jR6icT7hoQcsTZSdD6xn8OZjNn2JOOK/dUMWheFsp0AIAuA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1772706363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jcB4Qc4RSpTJkK3766CPxby/vsOqv2xo6x9Nr5FoRkY=;
 b=8JamC7832A7gp1mCt56f1OTKzbQTZDI5EHeROyYPMTNLLWyWtB65TYomzSAXbsRqdZQCif
 Ah4o3h6CcM0nfpAQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Fb75O7pH; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=8JamC783
Subject: [Intel-wired-lan] [PATCH iwl-next v5] igb: Retrieve Tx timestamp
 from BH workqueue
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 58FDD20FA8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:kurt@linutronix.de,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mpg.de:email,linutronix.de:mid,linutronix.de:email,msgid.link:url,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,linutronix.de,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Retrieve Tx timestamp from system BH instead of regular system workqueue.

The current implementation uses schedule_work() which is executed by the
system work queue and kworkers to retrieve Tx timestamps. This increases
latency and can lead to timeouts in case of heavy system load. i210 is
often used in industrial systems, where timestamp timeouts can be fatal.

Therefore, switch to the system BH workqueues which are executed in softirq
context shortly after the IRQ handler returns.

Tested between Intel i210 and i350 with ptp4l gPTP profile:

|ptp4l[30.405]: rms    4 max    7 freq +12825 +/-   3 delay   247 +/-   0
|ptp4l[31.406]: rms    2 max    3 freq +12829 +/-   3 delay   248 +/-   0
|ptp4l[32.406]: rms    3 max    3 freq +12827 +/-   3 delay   248 +/-   0
|ptp4l[33.406]: rms    2 max    3 freq +12827 +/-   3 delay   248 +/-   0
|ptp4l[34.407]: rms    3 max    6 freq +12825 +/-   4 delay   248 +/-   0
|ptp4l[35.407]: rms    3 max    6 freq +12822 +/-   4 delay   246 +/-   0
|ptp4l[36.407]: rms    7 max   10 freq +12812 +/-   5 delay   248 +/-   0
|ptp4l[37.408]: rms    5 max    8 freq +12808 +/-   3 delay   248 +/-   0

Furthermore, Miroslav Lichvar tested with ntpperf and chrony on Intel i350:

Without the patch:

|               |          responses            |        response time (ns)
|rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
|150000   15000   0.00%   0.00%   0.00% 100.00%    +4188  +36475 +193328  16179
|157500   15750   0.02%   0.00%   0.02%  99.96%    +6373  +42969 +683894  22682
|165375   16384   0.03%   0.00%   0.00%  99.97%    +7911  +43960 +692471  24454
|173643   16384   0.06%   0.00%   0.00%  99.94%    +8323  +45627 +707240  28452
|182325   16384   0.06%   0.00%   0.00%  99.94%    +8404  +47292 +722524  26936
|191441   16384   0.00%   0.00%   0.00% 100.00%    +8930  +51738 +223727  14272
|201013   16384   0.05%   0.00%   0.00%  99.95%    +9634  +53696 +776445  23783
|211063   16384   0.00%   0.00%   0.00% 100.00%   +14393  +54558 +329546  20473
|221616   16384   2.59%   0.00%   0.05%  97.36%   +23924 +321205 +518192  21838
|232696   16384   7.00%   0.00%   0.10%  92.90%   +33396 +337709 +575661  21017
|244330   16384  10.82%   0.00%   0.15%  89.03%   +34188 +340248 +556237  20880
|
|With the patch:
|150000   15000   5.11%   0.00%   0.00%  94.88%    +4426 +460642 +640884  83746
|157500   15750  11.54%   0.00%   0.26%  88.20%   +14434 +543656 +738355  30349
|165375   16384  15.61%   0.00%   0.31%  84.08%   +35822 +515304 +833859  25596
|173643   16384  19.58%   0.00%   0.37%  80.05%   +20762 +568962 +900100  28118
|182325   16384  23.46%   0.00%   0.42%  76.13%   +41829 +547974 +804170  27890
|191441   16384  27.23%   0.00%   0.46%  72.31%   +15182 +557920 +798212  28868
|201013   16384  30.51%   0.00%   0.49%  69.00%   +15980 +560764 +805576  29979
|211063   16384   0.06%   0.00%   0.00%  99.94%   +12668  +80487 +410555  62182
|221616   16384   2.94%   0.00%   0.05%  97.00%   +21587 +342769 +517566  23359
|232696   16384   6.94%   0.00%   0.10%  92.96%   +16581 +336068 +484574  18453
|244330   16384  11.45%   0.00%   0.14%  88.41%   +23608 +345023 +564130  19177

There are some minor differences at lower rates, but no performance
regressions at higher ones.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v5:
- Adjust changelog wording (Aleksandr Loktionov)
- Include measurement numbers in changelog (Paul Menzel)
- Link to v4: https://patch.msgid.link/20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de

Changes in v4:
- Use BH workqueue (tasklet) instead of doing timestamping in IRQ path (Jakub Kicinski)
- Link to v3: https://patch.msgid.link/20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de

Changes in v3:
- Switch back to IRQ, but for i210 only
- Keep kworker for all other NICs like i350 (Miroslav)
- Link to v2: https://lore.kernel.org/r/20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de

Changes in v2:
- Switch from IRQ to PTP aux worker due to NTP performance regression (Miroslav)
- Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ee99fd8fd513..9fd29fedb9f5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6572,7 +6572,7 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 			adapter->ptp_tx_skb = skb_get(skb);
 			adapter->ptp_tx_start = jiffies;
 			if (adapter->hw.mac.type == e1000_82576)
-				schedule_work(&adapter->ptp_tx_work);
+				queue_work(system_bh_wq, &adapter->ptp_tx_work);
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
@@ -7076,7 +7076,7 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
 
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		queue_work(system_bh_wq, &adapter->ptp_tx_work);
 	}
 
 	if (tsicr & TSINTR_TT0)
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index bd85d02ecadd..7b44f9090631 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -832,7 +832,7 @@ static void igb_ptp_tx_work(struct work_struct *work)
 		igb_ptp_tx_hwtstamp(adapter);
 	else
 		/* reschedule to check later */
-		schedule_work(&adapter->ptp_tx_work);
+		queue_work(system_bh_wq, &adapter->ptp_tx_work);
 }
 
 static void igb_ptp_overflow_check(struct work_struct *work)

---
base-commit: ad3dfa80be765757f612da04318248f6d20e4f71
change-id: 20250813-igb_irq_ts-1aa77cc7b4cb

Best regards,
--  
Kurt Kanzenbach <kurt@linutronix.de>

