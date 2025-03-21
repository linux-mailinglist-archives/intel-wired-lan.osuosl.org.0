Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9230BA6BC12
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Mar 2025 14:53:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5416B40988;
	Fri, 21 Mar 2025 13:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6YmodZSEaLV2; Fri, 21 Mar 2025 13:53:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69CE8409AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742565181;
	bh=06E78oMyiImg2+G4t0PLhWz3e/+c+P7mEcu1s70sBpo=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=az8TGNYDtEZR2UhUscW8QifkPd752BRZtTuupHkcmm9VoEVmynudh8aGhc7/6u1Hr
	 KatWa4VuemMF+SU9ZJ0ZghTnscsYut++3v64nv3HtaZWGryqAEzyYgbcMqonmVWAvR
	 oRTvzInTiN5mNsegwE+vOESrGChYDsZffhGZWqcjFEoDgHJWY/VHTljaDf3TmhMsLA
	 AAO77BiFXJuZ0iDKMsZSfLBBNlOov5xrBdF+5zYj0h10VcPLtr7CU6J5NlFHy62Iqr
	 G8aYDmY620fc8lyqP1EbDLdsUoaXuS4lKT3uGO500mKyv7qQspT3tvtaqk2NPj14cS
	 QMjLF5hcZ0FBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69CE8409AA;
	Fri, 21 Mar 2025 13:53:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F2FF81A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFF674095B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHFLErSPo4wa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Mar 2025 13:52:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1274D4087B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1274D4087B
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1274D4087B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Mar 2025 13:52:58 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 21 Mar 2025 14:52:37 +0100
Message-Id: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACVv3WcC/23O0QqCMBQG4FeJXbfYznRpV71HhMh2zAO61bRlh
 O/ekKAIL39+zvefFxswEA7ssHmxgJEG8i6FbLthpq3dBTnZlBkIyAXIjNPFVP3tGshX41T13iI
 HMLI0uc60yFk6vAZsaFrQE6NHxx1OIzunpqVh9OG5rEW59B94vwZHySVXdSagQdko0MeO3H0M3
 tG0s7iQEX4YWP0vQmJKrbWtpTKFLdYY9WWUUKuMSozAxmCRo65R/DPzPL8BFY4gKlABAAA=
X-Change-ID: 20250214-igc_mqprio_tx_mode-22c19c564605
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1258; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=P40GZ4G9yd+e7sKqm/mmO82KzXdZXEhcibJG2malgvI=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBn3W81d5RUdGbiE0AsAZU8KxCxJigOogkzlUBUW
 D8kwmnHSB6JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZ91vNQAKCRDBk9HyqkZz
 gtvuD/47rteR9VuaA2qyK4rxERdt9k1HHYsw+yEJwQlDhoNJeLLbQac5qpLyzuBquOQ26H4l40K
 pvXpAfvYyyK/arBKgnMPkHglMozvHLg38JTlynUqPOMlViszSFz+FXbhUZMl+GlH1G/CbOH5Iqo
 FnpAtzm6mdqLo5d/1uX9n3z2xnAlrN9Gz3gBw5mZ66yEUwZk1Z4w7QiAccxUhxEQHH+JRULXry5
 tnR4/SGpn+l66jO5A7OYaBdzcab6063RxoISfWQR0JNeGtYOuTb4O8ipUC2jNAgCH11heE241g1
 9QYJV0W46Komn9GjVB7mpH9Jes3+W9BgyDdtSbIT7n3WKGIJootl9+LJYLlC0wP1C5Kt/liiFZS
 F3ljNPVZ8JEesocma7BTJwrXgNQfObyXZqoPF/8gyCHQOTCbtCSw49gxW0DI9LrpXqYaUm6yLEC
 V2utUlefrhWEgnr8SbM31pM9JfQiFHOniAmPndPQkYDNMQOy+sIzpVqpfU6BfHlSe4IH2UqVEjh
 PcEWbIriP/q2QNLhDR+pQvwzUU3LVz10RpCqNteiqqaoYaJMxyqN8GEsH0zjStfaFWu2Hn50bZD
 29bX2r+HMLqVbW8tnThLA80jT7cKS0PdTbgJjl2a6gwSc/4BolT2ll+QN39wBCDOn8L7fqzuD8J
 +IgNf5yQm1t8uVA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1742565175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=06E78oMyiImg2+G4t0PLhWz3e/+c+P7mEcu1s70sBpo=;
 b=itv+0EZGRnz1W0zIxtlV/ZUcjnvdw68DGfGmoKZn3+hdFGcJA46L8bKLx4yEKeo9AeN4kd
 B02J6LZbJp6/cm5jCoYXTGPMrm+tIbOZLTppguRx/S1MX0Jhl9OOqS6P//r1KfrNDW9UEr
 a+MUb+wvejV5w/+ESuGEXrkfHADD09bHZny5dNHjbqom38FiPXhnS360RqT4akuqee1xNV
 xdn27RCSwF/FzUl8bdxtygUvD1EFdaeqHw3tERgRzqe5ywEDAgx1sd/VfBlFlDJ0s1uzHf
 Kbm8+0rTEv1GsYJ3jSP3uZx/XVs08fSFmn6i/q2+2bnC5rG5HtpmFVVvdNhiuA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1742565175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=06E78oMyiImg2+G4t0PLhWz3e/+c+P7mEcu1s70sBpo=;
 b=aUcHCUM8pVE0LdCel1RWSIMdO9bdGH8ImslX1KjimlK5UVlCQbSUo2b/FDpHQvU5r3qxua
 w3Mg0Zf+0Wnc+pCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=itv+0EZG; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=aUcHCUM8
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] igc: Change Tx mode for
 MQPRIO offloading
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

Hi,

this small series switches the Tx mode for MQPRIO offload to harmonize the 
current implementation with TAPRIO and to allow to integrate FPE easier.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v4:
- Split patches (Simon)
- Add tags
- Link to v3: https://lore.kernel.org/r/20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de

Changes in v3:
- Commit message (Paul)
- Link to v2: https://lore.kernel.org/r/20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de

Changes in v2:
- Add comma to commit message (Faizal)
- Simplify if condition (Faizal)
- Link to v1: https://lore.kernel.org/r/20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de

---
Kurt Kanzenbach (2):
      igc: Limit netdev_tc calls to MQPRIO
      igc: Change Tx mode for MQPRIO offloading

 drivers/net/ethernet/intel/igc/igc.h      |  4 +---
 drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 40 ++-----------------------------
 3 files changed, 20 insertions(+), 42 deletions(-)
---
base-commit: 6f13bec53a48c7120dc6dc358cacea13251a471f
change-id: 20250214-igc_mqprio_tx_mode-22c19c564605

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

