Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOjFBJIF02kYdQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 03:00:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F036C3A0F17
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 03:00:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7621E405BE;
	Mon,  6 Apr 2026 00:59:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id omaK5HE-7PhD; Mon,  6 Apr 2026 00:59:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 313EF40692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775437198;
	bh=tAiOfRInaVupAzzjCM+nMcXrmYbAjEitRdUAHT6Jfhw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mNyK2PTwHENTwLCud4KSntYyl8Myx8dOOaDlDL0tLvTbFlgAMBrRJZme+0YB3Hn4L
	 9e+pFlLJiL/eKh8LZ0+ePzztf+R4YoClY6nRsaVVYchGvYsyyl+pqVdQN7SfLg7KDU
	 UfwYKlSWOrkkoag5Ran/MEgP9jTbisAW4PGwm9J11+/+RsCcn19Xh728iaRbHkgUKF
	 LfViMpqE9MulTMtqI+MsYCvZBzmfmu8ev1afvP3cNE4/D8N5CE0Q2S4FlNh71YZF3t
	 Mkgsg4P7/JOe3tQk0Zk94fWb/7aVtiTJyJWqZ75MZOfKaY5wbHF+Adx370FGeujgty
	 rtRHBTzWZuS3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 313EF40692;
	Mon,  6 Apr 2026 00:59:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0869B1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 00:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9D894035D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 00:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mPuJ14MqFJi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 00:59:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132a; helo=mail-dy1-x132a.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 230DE402D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 230DE402D2
Received: from mail-dy1-x132a.google.com (mail-dy1-x132a.google.com
 [IPv6:2607:f8b0:4864:20::132a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 230DE402D2
 for <intel-wired-lan@osuosl.org>; Mon,  6 Apr 2026 00:59:54 +0000 (UTC)
Received: by mail-dy1-x132a.google.com with SMTP id
 5a478bee46e88-2cc4c693d59so5615883eec.1
 for <intel-wired-lan@osuosl.org>; Sun, 05 Apr 2026 17:59:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775437193; x=1776041993;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tAiOfRInaVupAzzjCM+nMcXrmYbAjEitRdUAHT6Jfhw=;
 b=ScVg8MWTRua7hKcop65DyWimoTA7MA7bPmub0UldOPseWMYTxRE//5KkILIBeAOhu9
 qhBa5PoZe7SXl9NL4xbpl+PA0TJdIjf0+YhqZk5BKMvkh/mFa9yekNXE+mL0IdeQ9dXL
 VN/kDOEHXqQRNkAWANEgD5CsoxX03OApWzB5v7xLHtJS9Y85rGQ/soVhAoIf9Rdvyvhn
 IhtVvHzomaXKWcbAhYIt4LgEkEMAx4j3P2VsfhtTasgw1+Np2Qg0BRf+rN0HeDVsy6/L
 BCKFDNW753j7kadTYzfHgQlKHWAxkOH6vJz0PUkdNXP+tAj3/u+HoNNFF7EvgxCAeH9d
 WOWg==
X-Gm-Message-State: AOJu0Yz8NPqa7NEX3zFjvrvsSbTPKavoYZCkGyS0EMaIvmn1N0aIYG6c
 im7QBiRRnRZkY0EkUmFvTVCKOUR845DSkbHQiqcNSvTLjEG8VOKG65Psdx1qPvK8
X-Gm-Gg: AeBDieuux7//Qte1loQUb3lOWvoi9kM8YKagDElVTWN4BNVcRcUg/2V6Q/1YcE4ShDd
 ygCDKi4KBUkLbbiKyOkgT6IJD3vJs2DPihnGbejPNf23s25AZasGrjd5CxjZXHxjqPyXr6sJSCC
 Tw1Jkhdq+gLJmonnki1++muHByiMzFdz5FMmpyegfSZT5/8/aL08UJmBoZT7wwY4rOUHbEbj27/
 fJnYKXqwrmkXfjCSYuSJFdTsQrEUvErtlOFp/ZgDzYYorvMQiWjfasOu6lstfbeNQqOMBNT3iTl
 tyS2uRuFymW5cwychXxnzq6bRx47y5srnkNGKRcInSDHRVO2obwJGLaqG8USpECl+Rmx0W1GjTZ
 IrLuClZvubGL2tGEtPOFss+dy+PUnbgPX+tF0LtK3AypFkFEprBf22yHcNtn55tGBr72z5/5pDG
 XdmJs=
X-Received: by 2002:a05:7300:b594:b0:2c5:220c:5673 with SMTP id
 5a478bee46e88-2cbf99ec1e9mr5457205eec.5.1775437193402; 
 Sun, 05 Apr 2026 17:59:53 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:62b::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2cf1af62347sm3249228eec.22.2026.04.05.17.59.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2026 17:59:52 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>
Date: Sun,  5 Apr 2026 20:58:31 -0400
Message-ID: <20260406005830.2250373-2-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775437193; x=1776041993; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tAiOfRInaVupAzzjCM+nMcXrmYbAjEitRdUAHT6Jfhw=;
 b=dsANMB0cQR2kQ/DEsRmSYq7LfA6EZgZT6xB7tLgYAOz6LoQfF3Y2gM0ew+liBy//1u
 2fehLbrQLHEkDtlcwKVDd07g9U502zhppyxQLNw9xnL8dmv6CUpOBD9Xg0DDTwkv0Y6w
 B0NvTE2T0BMUiG/9dFe+OXw/iNS3if8Lu3UTOs513BC0P3ai0b9SKO05ayDETywofAvA
 Y0PCN3EQLVJBEz4Z6JuwpmqTHMSdIsL5dGZCxjnl4EilMb+NCmFR1ct+mEi5u8AuniG6
 JPjXPxexn0xGwzwT+pf5espnzlzWu30pBC3v1dMa//tDtZHRsDh5uLLWdfog9VKlXPIW
 luaA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=dsANMB0c
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration on
 probe failure
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
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F036C3A0F17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix two conditions which would leak PTP registration on probe failure:

1. i40e_setup_pf_switch can encounter an error in
   i40e_setup_pf_filter_control, call i40e_ptp_init, then return
   non-zero, sending i40e_probe to err_vsis.

2. i40e_setup_misc_vector can return non-zero, sending i40e_probe to
   err_vsis.

Both of these conditions have been present since PTP was introduced in
this driver.

Found with coccinelle.

Fixes: beb0dff1251db ("i40e: enable PTP")
Signed-off-by: Matt Vollrath <tactii@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 926d001b2150..f3de147aaddf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16109,6 +16109,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Unwind what we've done if something failed in the setup */
 err_vsis:
 	set_bit(__I40E_DOWN, pf->state);
+	i40e_ptp_stop(pf);
 	i40e_clear_interrupt_scheme(pf);
 	kfree(pf->vsi);
 err_switch_setup:
-- 
2.43.0

