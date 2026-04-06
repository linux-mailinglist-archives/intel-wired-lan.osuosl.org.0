Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOVBAvYt02nFfQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 05:52:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FAA3A15E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 05:52:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C80F080EFD;
	Mon,  6 Apr 2026 03:52:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJit11YRJ_Rh; Mon,  6 Apr 2026 03:52:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47AD080EF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775447537;
	bh=hmk9aicmTfvrHqX4hH39mm0lV7/QJSeEEdSeX0rcnVM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7RZe+MQcItUqfNLKpVFdgnvTfyDIOBjniOaut9QCxR8FZQVuoqKqqtN7gtSAE+vLx
	 B6r3QrcC15mcZRZD1arhcSge/LxcJrgbVebbz7nTUUQxMQOA7b1mOSnhvmtC1uXtfj
	 L54SGKQ7URc4mpVhGfdZT16yqbmB00bba53kbsE7y5oJqz5ihOmKaWaDekWAhq9lT6
	 VxyEFmAndGMamNWfj5R48N5353w/nqAHyk4Icz/FpVYF/x0eFV4qzccefD/LsFwlN0
	 3yQZRZ1GU520d4pZ2tX22ea8iGzaeWCi0glBq9x4hmCJvzACLOuWJkKr6vZqcg63KS
	 GVGPNyFieCbEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47AD080EF5;
	Mon,  6 Apr 2026 03:52:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FBCE1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 03:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45964401FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 03:52:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i6RSAfXXPVoB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 03:52:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132e; helo=mail-dy1-x132e.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 771AA400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 771AA400EA
Received: from mail-dy1-x132e.google.com (mail-dy1-x132e.google.com
 [IPv6:2607:f8b0:4864:20::132e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 771AA400EA
 for <intel-wired-lan@osuosl.org>; Mon,  6 Apr 2026 03:52:14 +0000 (UTC)
Received: by mail-dy1-x132e.google.com with SMTP id
 5a478bee46e88-2bdd40d3c61so2975781eec.1
 for <intel-wired-lan@osuosl.org>; Sun, 05 Apr 2026 20:52:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775447533; x=1776052333;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hmk9aicmTfvrHqX4hH39mm0lV7/QJSeEEdSeX0rcnVM=;
 b=A6FV8kOturga9AM74yguJ8Xdb4n4PJW8jkJb6P3ax0JZhCB21D6EK/e88b3/OX7Y7x
 WUzx0SDKVdYoAM99zIifZSUeo8ImxJp5nKi+eOCombm16qbG4E4bsUmBccwMCc8Onv7e
 mCLADALCi5Kl3TLqLD1uVCgJoxSa7699v3o4ZebIszUfKx4yKy79IXPG2BfX6niB2o4k
 6bhTPwh1D4ma7Fa52yVd4KHk4dmMsLAu6EetbYEXvQ9S1YSUZY/n2NPa5pJhfwBBC6U/
 /YPaNJidCtJ5nyMczCWO4yt6skX9duc75fqn/X9rA15PFfcp1GkJlXnQJ4UlFcI/0TH5
 VVGQ==
X-Gm-Message-State: AOJu0YxnRhdsRy7zvNTn/t8iT1zsir+bBPwnfdIT/q7DPWBPU3sLwrLZ
 3+q6Rh4tkQy3umEFOxHQRPkf+Qpziku0UQ8tQzCQY36mdgxUUwY9jmheWEa/3Y4+
X-Gm-Gg: AeBDieu/IXTwQhrGGa5M04z48qh7yJgvntQgjBYbkzrPucip9gYaxlqUSODUkUnHeYr
 ls6G0JgKZ2U0m7eiE/6pkJgItf4c2XtDi1GDhH7sqhmqvx1mQqNOy9jd1Npv3/IZYb42zZBpf+X
 NpI9sdZhrLo/deEwCaRLcioNRZJ4PGWZcTUQRJTVu6sVMeqbxvZ8yUXarARP0syhhEerZRGv9VW
 ffokyevejvgMxwGTBa2c3MNG4Wscsl/oQT9E/C7wSUOMSL460pratJfgmwWT1zOY2C3zzCiT3Lg
 +Es0rrrU8IhZjXK8O6uw5ANyhYK87lcGMYufdJop0zutYOkGDAEGDHka7fUhVpgzmwC0VtkKtbV
 sNR//MSs3Iw3WyC1o4g3XXrLboMr/EDnFuLhaNOzfCNv9d9M+FofdwXeBZKWB/cqNq9F8PU6ncW
 /5NnI=
X-Received: by 2002:a05:693c:2c06:b0:2c8:7172:3b99 with SMTP id
 5a478bee46e88-2cbfa5be574mr5450230eec.9.1775447532656; 
 Sun, 05 Apr 2026 20:52:12 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:62b::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2cb92ea0ef1sm9810750eec.21.2026.04.05.20.52.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2026 20:52:12 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>,
	Kohei Enju <kohei@enjuk.jp>
Date: Sun,  5 Apr 2026 23:51:30 -0400
Message-ID: <20260406035130.2255713-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775447533; x=1776052333; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hmk9aicmTfvrHqX4hH39mm0lV7/QJSeEEdSeX0rcnVM=;
 b=gHihSWfjhOWaXXdw2sK74E0vxit/i1AKAKrt2ZH8n8rK8zTaAg5atzM3qe0liUa+xo
 LUkGXsamLyC771txE8TQwFSVnBZZ3HCh90MJj4xfFjM0CLichNzQgfBEXCRRTgZjxMxd
 ot3JEJ+5Qxmjdl+/DfQQUOstHibaaHf6MdsEIZVuutnU5leyLGHH5tMV1zXmkJAbI707
 Nj8n1POKjSWGWJcZGn586YFaGHpAJE/YQmgF7KpM9azRSTFLVEbfc8EVBbSIhUFo2CRj
 P3oEjFFcgoy+kUnt2+CaQarjsU5RblEqwbMySIhgZLffHfaSAR+nqIQzg+i+EG+Dsa/9
 u1oA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=gHihSWfj
Subject: [Intel-wired-lan] [PATCH net] i40e: Cleanup PTP pins on probe
 failure
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,m:kohei@enjuk.jp,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,enjuk.jp];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 00FAA3A15E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PTP pin structs are allocated early in probe, but never cleaned up.

Fix this by calling i40e_ptp_free_pins in the error path.

To support this, i40e_ptp_free_pins was added to the header and made
idempotent. The idempotency supports the condition of
pf->ptp_caps.pin_config not being allocated yet. pin_config is also
correctly nullified after being freed.

This has been an issue since i40e_ptp_alloc_pins was introduced.

Fixes: 1050713026a08 ("i40e: add support for PTP external synchronization clock")
Reported-by: Kohei Enju <kohei@enjuk.jp>
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 drivers/net/ethernet/intel/i40e/i40e_ptp.c  | 9 ++++++---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index dcb50c2e1aa2..83e780919ac9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1318,6 +1318,7 @@ void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
 void i40e_ptp_init(struct i40e_pf *pf);
 void i40e_ptp_stop(struct i40e_pf *pf);
 int i40e_ptp_alloc_pins(struct i40e_pf *pf);
+void i40e_ptp_free_pins(struct i40e_pf *pf);
 int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
 int i40e_get_partition_bw_setting(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 926d001b2150..c7062aa476dd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16112,6 +16112,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i40e_clear_interrupt_scheme(pf);
 	kfree(pf->vsi);
 err_switch_setup:
+	i40e_ptp_free_pins(pf);
 	i40e_reset_interrupt_capability(pf);
 	timer_shutdown_sync(&pf->service_timer);
 err_mac_addr:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 404a716db8da..856c0f762644 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -940,12 +940,15 @@ int i40e_ptp_hwtstamp_get(struct net_device *netdev,
  *
  * Release memory allocated for PTP pins.
  **/
-static void i40e_ptp_free_pins(struct i40e_pf *pf)
+void i40e_ptp_free_pins(struct i40e_pf *pf)
 {
 	if (i40e_is_ptp_pin_dev(&pf->hw)) {
-		kfree(pf->ptp_pins);
-		kfree(pf->ptp_caps.pin_config);
+		if (pf->ptp_pins)
+			kfree(pf->ptp_pins);
+		if (pf->ptp_caps.pin_config)
+			kfree(pf->ptp_caps.pin_config);
 		pf->ptp_pins = NULL;
+		pf->ptp_caps.pin_config = NULL;
 	}
 }
 
-- 
2.43.0

