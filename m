Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3MGTI27JMWp/qAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 00:08:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C70E469587C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 00:08:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=e4nEFS40;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AED1811E3;
	Tue, 16 Jun 2026 22:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YDpfug8eQWvs; Tue, 16 Jun 2026 22:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFFE781123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781647723;
	bh=CBS56heam/bNhQd7KKFmAXc3hG0sdhWG+2CEZpuomPM=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=e4nEFS40xx7ZTTgYIoEUOJNCNZThU8/HEHuXTcL4LdWf+BI2ABsevpvqPASapFP1R
	 BZY7Qxce/cuDVZeu9eY1XbEqAeStADv+P268s61SgQOyVKXi52LoWzlOSaTQpyRYOk
	 Jv/lwAGEUXRNyn1UDQ11uPaEObGWZAeHSEud/MON+NrA4y6PMB4CoLS9bfxipf2flI
	 jaHMdbnTkRWhv6wfGLHUrrJg6v1w7q/1OHI1eVZnwx7Av4fRwwLoo//6FcKPcsL/Pm
	 2GRwtgNCn6iN6TyROVAZnn+p462RFG625PeTOuAT2kg8wiy9O8lLRjJd6K3KNSrzp+
	 qGuZCrsm1atWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFFE781123;
	Tue, 16 Jun 2026 22:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 00A68D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 22:08:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E70056F5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 22:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhC0Mgo_f0fE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 22:08:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C6E0D6F5A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6E0D6F5A6
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6E0D6F5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 22:08:40 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AD0723F46B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 22:08:37 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-490addd42bbso25431885e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 15:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781647717; x=1782252517;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CBS56heam/bNhQd7KKFmAXc3hG0sdhWG+2CEZpuomPM=;
 b=M9r3Kp2TyR/iaI5P5yhdXVRz1qKE9DFLaKW+Bz7bUrHy2UCmx1CkDsxtmscNhkLeHn
 BUzXCHM+m4mRhURT459wsF8W9lkRyPbtiGGEdlX5eVVWSGIKqGaQmPjv/JRedc7L7Edb
 Zu4CvM4gmH4f+PTvOR0ueYT76cy7VXAD6hk+fWo+lGQcktkZlz4uQaG25+bCR1hI9QYm
 Ds0YD1F60c3O0d9AwWhU615BEE63uRzsjIwuyTd2wZXtE3kGY2WZARCNZ+RCUW/7GVpI
 mUwh4umZy9QvH07waN2x1iRPe5VyX1o5J6KQxK3RccRDF+2nZrLhs9hESElJ3Y0cXJ5J
 CCEQ==
X-Gm-Message-State: AOJu0YwWJ/iBBjh7bczUf4gMLh6hWdk85k99EPQ4wyyYVLIEAaQJbWIx
 YPEDX8EBxhWmQH8CCj1zJtLQpKW6ZUMV9VkxidDRHlwlWldaH4IJpa+Iv0AAppTE2zx8sy3GG+R
 XZo3z2lNgL2K+6lS8P9WY3+b7VWKdGOBhtrp1MkQ0WOVUJt+yX91/Kf099gZvrmF70NPb29ANvx
 n0zqZNDkBwfmc=
X-Gm-Gg: Acq92OG/Wq+hPQAUloZfDe/PswnBKzB50pppvhGGpJif3oL/uap0CMIjF+q6I7uynMi
 J+k+E8IS3ZkgMKSHNj5xcJkMHTgprolyJB7C9r/Nm5jtOLiVu8gXrAuE0SQ4YvIRVaeOefJJ0qL
 lJMTbZNw7F5MWcXiOX4yvSCkQeHc8Dan8IkguXMGmGuveqBIqYmo7ELjoF2Brqr1EC5lqEF5exe
 zFtzj471I/X/MMZNqe7DRrsYMzjBUZT6TgJdk6w2dxvIzUo+VXT52xDzCdRarzQzUrjScQMMEKw
 KNbpnSJZER9CGmHrdgPaEgLTkI1MQqiWE05F8B7OYDfyieQaJ2h9Zr+vcmA1f+JUir5tvHGMuL6
 VZtq8nyHWOKVGf+UGAUX9AbhDF4COs9X62v/ykfOObVt2YW1GmcRIYiKfhWFdbI9Mkq8=
X-Received: by 2002:a05:600c:6091:b0:490:52fb:12dd with SMTP id
 5b1f17b1804b1-492333a97cdmr22062195e9.10.1781647717335; 
 Tue, 16 Jun 2026 15:08:37 -0700 (PDT)
X-Received: by 2002:a05:600c:6091:b0:490:52fb:12dd with SMTP id
 5b1f17b1804b1-492333a97cdmr22061955e9.10.1781647716996; 
 Tue, 16 Jun 2026 15:08:36 -0700 (PDT)
Received: from localhost.localdomain (77-236-28-43.static.play.pl.
 [77.236.28.43]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49230a4601esm106328265e9.1.2026.06.16.15.08.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2026 15:08:36 -0700 (PDT)
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 17 Jun 2026 00:08:27 +0200
Message-Id: <20260616220827.1647052-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1781647717;
 bh=CBS56heam/bNhQd7KKFmAXc3hG0sdhWG+2CEZpuomPM=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=H2jFpRENdrKnHwVrvGyK4NwOMXlnEVSziXy68wpwcYgKTpiH0BmfvZwoHzNg7klL8
 qjWwPTju0OtacMFwQKMuDja3NDUyrYegbOrPaU7B/QuK/tf3mA0hOe6RM046UrGHvt
 lEdeE9eX44Kyxav93c/yCkcojQVBk5m0tiivyFz78k6u5SjWAOTbap3dm64GdLTMWW
 c1ejdOtem18lunoL4hEoVpfAKKqmQq3Q+BQMzmIu7zRV7LsQnMoGVsLTRZ9xNo8DiS
 +VWJPhLMM9O5Sk5GM5G7M95u4FiyiQZS+Cownwu6XUX3+QSzITwcCJejHLqwV6RcgC
 nIOThxFWVNWEvtc5CFOpOpmFVLBdSq1fMbD7KFwqFEutFFfDS9p5IjfRomrouNV3sS
 sjSecFmUQswcPdSqjpLESBrPhFHCt8sfI6TKoOAYX62006ZwRfJI8efuyZFFahLbk4
 JhxOzvTlO1RbWn/ksC30h0g0n+cUZ7MxVaD5sMwjg+hVaALVozsVGYhaZaeobQYHGE
 9D7ik5n1utP5/h159i4ud7B0KR6hu3S0vnM+zK9kV5gDAI2BfHZL5jf1b23/PRwTXW
 +fP83I0Bbg1MNVSuyIYJI1IlxAvQkya7pterxAwnAeds2KKtVnf6/NAfBIPDz/ITvj
 k4WKelM2n7/g4z/nmQa1Kjhg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=H2jFpREN
Subject: [Intel-wired-lan] [PATCH v2] ice: retry reading NVM if admin queue
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,canonical.com:replyto,canonical.com:email,canonical.com:mid,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C70E469587C

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
Changes in v2:
- change ICE_AQ_RC_EBUSY -> LIBIE_AQ_RC_EBUSY

 drivers/net/ethernet/intel/ice/ice_nvm.c | 25 +++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index 7e187a804dfa..b3120605d66f 100644
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
+			if (hw->adminq.sq_last_status != LIBIE_AQ_RC_EBUSY ||
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

