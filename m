Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4558B95084A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 16:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6029B8169B;
	Tue, 13 Aug 2024 14:57:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OOcxQcCMNX6g; Tue, 13 Aug 2024 14:57:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29FC28164B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723561063;
	bh=eZVaP6xD9yddT4PoUP0YnuaDHtRnkLTyw5E4hivsr/A=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s8jgzyC79p4MkP9c/R7G0CNcWWvOe/WoI5rIaNDRrAeXHNaPQ7EQm7c6FVgEm2MKi
	 VyEEtIv0tISaNp3MXSUcDl15KUJlZz6yv0xnl3SMslUNSHaW9EORft9x0CVRTWZJyo
	 zl4uzkIv4PLnbh7T/iRJ4CvOvlHyO+GYvhcPs4DRrQDo1Q3opp5imcKrQiFZ7ZlLT9
	 c3OpPCQUjo3nXwTIAm8IKvJLL0U3MS+R9LlzIJApI725Osy4vkJcCd0iLVONlErtdW
	 TFiWuDpsnolGXQ7rpx/eDT7p0f7XphoXfoKcMI0gr9GbvklE9fFUzg2iTksukLOexN
	 YUFrHdp/f5nLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29FC28164B;
	Tue, 13 Aug 2024 14:57:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB8F61BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 03:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB652405E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 03:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52UfgcGB10W0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 03:35:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::114a; helo=mail-yw1-x114a.google.com;
 envelope-from=3b9s6zggkd0afckygknkiqqing.eqokpvgn-yktgf-ncpnkuvu.quwqun.qti@flex--daiweili.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC503404E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC503404E9
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC503404E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 03:35:12 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-6643016423fso130274097b3.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 20:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723520111; x=1724124911;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eZVaP6xD9yddT4PoUP0YnuaDHtRnkLTyw5E4hivsr/A=;
 b=hElvpc53PeItsNEy0ZzcSbRD5RrEjntdWOfbG2YG3KVH4yxt9MvxUtQPTcmlqzqrhk
 Ax5LPHRB06gJ4VFWwOyWX0MosMPqgYTeqIGJ/aX5v88kzq195XYArcPQcC6G5R93endt
 EmQTKHdtjGRmtZkIqHhfdM9S2KPgdRhEfvrV6w9VWNwzde2lqayw57VuXNqUa9deHPyA
 K3l8AuvxmFwmiQYkxyoYNbrHdsl+ZkvaB5PKfuL9fsa7OZmxSVpvoXS7FKAJX+ksJ4VQ
 RHNcfV4nawIwkE1apTwXlJkm8of4EMTNwuV1COISqTnbWV0CZQzYryKEOUHXiBdy0OVz
 1++w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/mYPu7Pu2wscJ3FmMIAmgEWMuDruBbWktn1UqRRhaaB2C1n1O2hhmbOaxUGLiO6TUzARR4I9K/1d6riiRNfnKAqQvI/jP2aULRuMvdr0+fA==
X-Gm-Message-State: AOJu0YxFvIItWzkdD9fd0tFS8kKY5PCcj9hxsR1lU0IkdOwUA5xTL8tq
 Qk0UCDhWF9Lse9zp6edEyWwfOGTnuFfLFCoDl14drQwUTT91eGOPG9R1wAUy4h3PMxhhaczTTmF
 lAZ2nwaic
X-Google-Smtp-Source: AGHT+IHxkUa+9SMc3hwNSyjhqBHKPSQp13kF3e6VpggMYCi3j/CkeLGl9oz9abeUs2u7xtYnKjPHlvcAceQqkA==
X-Received: from ditto.mtv.corp.google.com
 ([2a00:79e0:2e0b:7:5c55:770f:5507:76eb])
 (user=daiweili job=sendgmr) by 2002:a81:6ed6:0:b0:62c:f976:a763 with SMTP id
 00721157ae682-6a971611b87mr887707b3.1.1723520111556; Mon, 12 Aug 2024
 20:35:11 -0700 (PDT)
Date: Mon, 12 Aug 2024 20:35:08 -0700
In-Reply-To: <87sev9wrkj.fsf@intel.com>
Mime-Version: 1.0
References: <87sev9wrkj.fsf@intel.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813033508.781022-1-daiweili@google.com>
From: Daiwei Li <daiweili@google.com>
To: vinicius.gomes@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 13 Aug 2024 14:57:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723520111; x=1724124911; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=eZVaP6xD9yddT4PoUP0YnuaDHtRnkLTyw5E4hivsr/A=;
 b=RoYtppuZm2Q3QFBf6lJRM+sGvF1ybfwPykLJKm4lZaITEcUexsXfY0CaX70XRZ7z1G
 kpQmRawUCuNGVHro37HqExHBsxBIK2EWK/0vaE40+aIqg/JCOboLPZZ8HDKLuMr4WNyf
 iVxo+AQHBv+Fa7kDfaeAyV9vX87o4P2bYE+WRFkhigsPDCaOQ3HcOk/3Q5MquPlPSJ+c
 x09YqwxUCRpT1/LHc8kudNhSnLYBkMpAOLb2+iikGMjYTqBK+UJBDb3NukjG5ovThGUh
 L1Nxv34TIL1lB3xQ+WYRC3ANDHW1CTEA3lk3FOL4bBnerARK3O4YsUokh2lnVmMMHTG2
 soHg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=RoYtppuZ
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igb: Fix not clearing TimeSync
 interrupts for 82580
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
Cc: Daiwei Li <daiweili@google.com>, sasha.neftin@intel.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 linux-kernel@vger.kernel.org, przemyslaw.kitszel@intel.com,
 edumazet@google.com, daiweili@gmail.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

82580 NICs have a hardware bug that makes it
necessary to write into the TSICR (TimeSync Interrupt Cause) register
to clear it:
https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/

Add a conditional so only for 82580 we write into the TSICR register,
so we don't risk losing events for other models.

This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").

Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
Tested-by: Daiwei Li <daiweili@google.com>
Signed-off-by: Daiwei Li <daiweili@google.com>
---

@Vinicius Gomes, this is my first time submitting a Linux kernel patch,
so apologies if I missed any part of the procedure (e.g. this is
currently on top of 6.7.12, the kernel I am running; should I be
rebasing on inline?). Also, is there any way to annotate the patch
to give you credit for the original change?

 drivers/net/ethernet/intel/igb/igb_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ada42ba63549..1210ddc5d81e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6986,6 +6986,16 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 tsicr = rd32(E1000_TSICR);
 	struct ptp_clock_event event;
+	const u32 mask = (TSINTR_SYS_WRAP | E1000_TSICR_TXTS |
+			  TSINTR_TT0 | TSINTR_TT1 |
+			  TSINTR_AUTT0 | TSINTR_AUTT1);
+
+	if (hw->mac.type == e1000_82580) {
+		/* 82580 has a hardware bug that requires a explicit
+		 * write to clear the TimeSync interrupt cause.
+		 */
+		wr32(E1000_TSICR, tsicr & mask);
+	}
 
 	if (tsicr & TSINTR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
-- 
2.46.0.76.ge559c4bf1a-goog

