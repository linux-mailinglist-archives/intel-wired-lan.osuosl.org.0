Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PhMZDrwqMWpMdAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 12:51:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D905968E7B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 12:51:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="MP/joE7p";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E56A85527;
	Tue, 16 Jun 2026 10:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TFol4CZswTCy; Tue, 16 Jun 2026 10:51:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C9788552A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781607096;
	bh=ZMRFP/cIVcQkBD7AO9h8BoH0UYB8ekkkeuemaA4KQl0=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=MP/joE7plroSxw8EKa5XvFJsItaRktcxc8NUNE1tEziJmXuLSku6tofP6YYlo9RwT
	 kQNANFDmho2nd1KRAMZ+rkPW1irPKlgHKcioSQPApuqmMk5hGTMwh7kILWYvclofGH
	 jK0L8PNjcp/YA/csnyPk+yvYL/SpbuPc8U20aKolQ7As7VffNA7KYf0jy0UtpBPhQw
	 MHeQ/pnENe4z043tQ/xkMFxTApoXTgdxwW0aNRfsBJixDPembbDlwuxGtJrndMsBD2
	 kl7U7hIypO96VLYOMkibvp20nrRISMjKuoTWLKxcaZxVmi6UmpyeAELGKNfXZ4Tzx1
	 rymxZpAdAjy/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C9788552A;
	Tue, 16 Jun 2026 10:51:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45F75169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 10:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24193608E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 10:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqhO_mcWRDPc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 10:51:33 +0000 (UTC)
X-Greylist: delayed 358 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Jun 2026 10:51:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C35EF60763
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C35EF60763
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C35EF60763
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 10:51:32 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C1F7A3F5FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 10:45:31 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-490b61243easo47168915e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 03:45:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781606731; x=1782211531;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZMRFP/cIVcQkBD7AO9h8BoH0UYB8ekkkeuemaA4KQl0=;
 b=Cz9Pe/UjsbuHbAAb7/jiXFCZnswv2Uf/kvgu0MlItetgOdOyABr4SpGSwnkbEpD4h+
 wrKnbqzSvW0zXm+JYntuHP/ST4mym/nsbtYlrdvNc3yBVjLnb/QGYRa6lrklbrFovK/h
 FYlNHDJsDp4stY+R++/dz6LdCKVDPNHmUFV3pqFocPk7jNseJ86lqAdIvxa5sPKPvAXQ
 8u7uA07GvbGe32nRWTmanSam47uHSChfiybEFeqtqc3M689V+ASsaj0tLG6liFr0j8EW
 z3/o9x5BwiSmHFd8ilrXdJkj0WZg4UFb1kcQ5mKQxq4DLTuZwFy4DcJlEbN645cn59xA
 PGUw==
X-Gm-Message-State: AOJu0YwOqoLdbjr5lnFvvH3v5c+/dxaBLfE0RM8/Y0q831TVn/UGGpe2
 1ejZMDLTP6ZP9Aap05RAbPpPU3rwLCS2JiCaluE4MNaZ4Bp5PMdt9s64HMtTaljAORI4HOJyEBW
 +Hxq8gx1X6cgxFHNC7+j0KmGRpaJKsieMxZf7iBLBzU9Q4A+UYsXUpIdFEqGjMFLDUmNT4C2vQ3
 iR99G768iYeE8=
X-Gm-Gg: Acq92OE+oChPq5jb9gxW+ObilEmbYMFizgkrn+FqORnVcXLX4lLjrHpTzqBLCR/tqe+
 LIWwGsywClnsae/8Kzh50wwmUOWee15n6qWvJamzpGBO0cj7wA7tJLie5C/QkNh4x/jh+p2JsaZ
 K5+tsAXjYHzhJZa+Uzx+OklOT+G2KqK9lSrF3pxkx87lQCB0+yvSHNvQBRmCGT5nGE9oYAqCqlS
 lk2eDuXE38veO/saUHycHvwa5qR+oizFS+T4WLWGsiPdvOGoxvnPGvgJNOX+nJsoqcp1oabCSRN
 0VIXTa30qKAQ4eFR6CpOsSzLBEZQEJGx3yFGuyRmw8qAbAgjsANGyAttqYwWufXscKUT03ethLp
 9m1GQcf7mzM72OrK42bVObJQA4f4mhFTAsysEiOPey2xQuavMPBfft1RHUKODuS0TLy0=
X-Received: by 2002:a05:600c:b43:b0:490:3d62:f5df with SMTP id
 5b1f17b1804b1-4922ff9b6c4mr37502665e9.30.1781606731097; 
 Tue, 16 Jun 2026 03:45:31 -0700 (PDT)
X-Received: by 2002:a05:600c:b43:b0:490:3d62:f5df with SMTP id
 5b1f17b1804b1-4922ff9b6c4mr37502225e9.30.1781606730460; 
 Tue, 16 Jun 2026 03:45:30 -0700 (PDT)
Received: from localhost.localdomain (77-236-28-43.static.play.pl.
 [77.236.28.43]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4922fa47da9sm82502645e9.5.2026.06.16.03.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2026 03:45:30 -0700 (PDT)
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue, 16 Jun 2026 12:45:21 +0200
Message-Id: <20260616104521.1545053-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1781606731;
 bh=ZMRFP/cIVcQkBD7AO9h8BoH0UYB8ekkkeuemaA4KQl0=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=Rbw2tc4DIlXsF9zn2gwPFYzTtd/7SGn12gLirtZrJL5ihJ61tFxZmRbVmTH4KkGyy
 KUDM9XF1azoKaXhTinJyX1o9sk28BOzhHTKk5UEs6cSvSITXN5dN547t0Shb9f5YJh
 o5AvXLeD/fa7LmDtzO8jbvQ65Wdp+ytINv8sm6q0WE+S1izugLq2oBfcAFgiY/WjcX
 X9Ch+4i5I8lVn6EdyZDxVMDfm7kPYSpRPugn214SmJNoAm/9VhsB7qWG345MLBM5Ld
 NsN/VLbAmhlW2EQV2LW0/PnHUzEQighPmFzuk1iyacFVCliX1VQqqtezZ2RzdbH6LN
 arb5YKkivGg5GSQmoQPjh5HXYEIUuLcrKD8Ydg/keUBosUQRT9ir5cXdlmgiHc7Z+A
 HAR4tcmvKHExEzWODmiJJM3MZjrYFcJrB/Cja5g831iUOE4ndtbau/pkT+TSdMbFgL
 erRV/oFizzFhuFMM5kE4UnCIajAFaeINzqbNETWQqqB9EjzHxA5891a9UHoph5Zyz/
 Nczv9Tbx3vt0tcryZbRdTmexRnxvuHnl0CFlbGSZAJtmYLKrhBQ4nt5wAauvt5AUBW
 mRYWqVNR3mtJOBz92C3u89ASwOz2kJb0Mm1qQLRjZkcd+PnZfjvmQV7f2pdD26n7wE
 BXinWt7LAkUnobYmBR7T0YMA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=Rbw2tc4D
Subject: [Intel-wired-lan] [PATCH] ice: retry reading NVM if admin queue
 returns EBUSY
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
From: Robert Malz via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Robert Malz <robert.malz@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:replyto,canonical.com:email,canonical.com:mid,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D905968E7B7

When the admin queue command to read NVM returns EBUSY, the driver
currently treats it as a fatal error and aborts the entire read
operation. This can cause spurious NVM read failures during periods of
high firmware activity.

Add retry logic to ice_read_flat_nvm() that handles EBUSY responses
from the admin queue. When an EBUSY error is encountered, release the
NVM resource lock, wait for ICE_SQ_SEND_DELAY_TIME_MS, re-acquire it,
and retry the failed read. The retry is attempted up to
ICE_SQ_SEND_MAX_EXECUTE times before giving up.

Code was extracted from OOT ice driver 1.15.4 release. Additional
change was made to reset last_cmd in case of retry to make sure that
all commands are retried properly.

Fixes: e94509906d6b ("ice: create function to read a section of the NVM and Shadow RAM")
Signed-off-by: Robert Malz <robert.malz@canonical.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 25 +++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 7e187a804dfa..cbe21ef9d18e 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -67,6 +67,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 {
 	u32 inlen = *length;
 	u32 bytes_read = 0;
+	int retry_cnt = 0;
 	bool last_cmd;
 	int status;
 
@@ -96,11 +97,25 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
 					 offset, read_size,
 					 data + bytes_read, last_cmd,
 					 read_shadow_ram, NULL);
-		if (status)
-			break;
-
-		bytes_read += read_size;
-		offset += read_size;
+		if (status) {
+			if (hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY ||
+			    retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)
+				break;
+			ice_debug(hw, ICE_DBG_NVM,
+				  "NVM read EBUSY error, retry %d\n",
+				  retry_cnt + 1);
+			last_cmd = false;
+			ice_release_nvm(hw);
+			msleep(ICE_SQ_SEND_DELAY_TIME_MS);
+			status = ice_acquire_nvm(hw, ICE_RES_READ);
+			if (status)
+				break;
+			retry_cnt++;
+		} else {
+			bytes_read += read_size;
+			offset += read_size;
+			retry_cnt = 0;
+		}
 	} while (!last_cmd);
 
 	*length = bytes_read;
-- 
2.34.1

