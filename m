Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ksuqFyqOMmok2AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 14:08:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A2699820
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 14:08:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=MDutJn2W;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F1AB4ED7C;
	Wed, 17 Jun 2026 12:08:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XovQa5N5cuba; Wed, 17 Jun 2026 12:08:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A22704ED7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781698085;
	bh=fc+WT2fkJNdUER4e5OAjVf1P3kXeLF/bOCJ1S03o4x4=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=MDutJn2WIC4fJg58cIjB4J74LZQvPA6XXE5FdRTmjF9rw85Unl4Q3v07/NvqV4qcK
	 9VbWbJ5iLdqkyA1ED7mQgqM00RldqNTf0q4Fij/VUqmV1XibJBMmu/yDhmYWXzOv6z
	 aq+lvVNdrKDz/uEAZWdtppTLS7dU+VDx6fatdK1gpMdtfeO0va+V+4bBFKEnPrZfcp
	 ZJ+X2DluHmOAZeXX0x1KZZqDGKSKmLDjyhrnbpEEztIMfq1GRtaTWDoWGqfqRMN0nz
	 dNNKefIqg8HhfGsVsr/pEzGXl+Jv2d9ze0vS9C/WyW2TGPL7ZB65URp0UnmoFQyYOZ
	 LEzASPAP/UbYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A22704ED7A;
	Wed, 17 Jun 2026 12:08:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DC28FD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 12:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C05F840655
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 12:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r2RHBovccTYx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 12:08:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 66DC5400B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66DC5400B0
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66DC5400B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 12:08:01 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B420D3F611
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 12:07:58 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-490e547f3cfso58330915e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 05:07:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781698078; x=1782302878;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fc+WT2fkJNdUER4e5OAjVf1P3kXeLF/bOCJ1S03o4x4=;
 b=FTYKE43YI+bf7J+ncUV6pm/MxnonbvyF65GUoAa9MOnv3/YuLw/hm/lNKmmWTinaxR
 DYKfBvb+siHJBzSewAdK1efGt1tQtjFBgh6gQguFFu0gi6CAeudQkkHZIdIQIh3Ozw61
 qN8RtsGXQ6z7UIauATHfN0rb8oXeZqObBqQeCUtvbXzWptufmcUgFgprJLhXIkL13Y6/
 xAMmaj5a9oqSE9VKr32ktJ6erVxxVtq9Y1jGXmaHWlFaSi5AYBZ98iC16oy/Ax6JAjEu
 pM9FPNKu+E5S5WzYZ+QZVrBHRdGQx9InLhx7Qgee7q/nTWwT1nNEN7Z3Fx1+jKDKHq96
 EGsQ==
X-Gm-Message-State: AOJu0YxnpmHvwrBU3h+AOYucwu2UMf1o3La8UqIRlv3nZdfrj687Ryss
 kXisCyOxp8rmCZYkkHUkSRMTnkTFOAdTAmdo5uwqjhTHVZQ+/RPyrD60OtYhpKSPfdku6q4oAHz
 hxJJJgrlm6RedDUc9jd95xAbWzJcYcxMJlqgUPfUwBKBEtdB46KyZkPEXtfzQTvUNoMYJoyii/u
 tc/IGzW8hMFCo=
X-Gm-Gg: Acq92OGJqdKRdQmiqMN2PAo8U8ErNhMnasOo2b1EBMAXWTegzzkVZJtOy3HIIg5hWvu
 gzaSBaJ2UmuNr/+SwK6rY7qchbq2VoO+cc506RseelVeBv3PjU5E0a3g9PVIhkmbXfh0wTJ6a+f
 Sg1fXEH0rsT6LIZOuRwxSgHyOOolyFVZzxaLSSl7WI1Eh5OHXHie7pTXEmMJVcHXee5dYU1JpiV
 rGWADmDSKrLFs/sltG8txy7ehpzkp2wxKZArn+/Y8cXpj9wAaXidqLBNQZDuMqqv7uFPugJrhZv
 3XuuG5gW7bl18SdO7hAD6bVgGGmSUbesBrmqBHUP6pSJuqJjaEosgT5AoiAcuKFY1j48gWPuHn/
 L4J1ctPngiIOfU0vxorZpwtiSSnneVbGvCNNY0pbfR0wTOrYPLxXIUOkG
X-Received: by 2002:a05:600c:e547:10b0:492:2ffd:8f8 with SMTP id
 5b1f17b1804b1-492333acb7emr47358895e9.15.1781698078153; 
 Wed, 17 Jun 2026 05:07:58 -0700 (PDT)
X-Received: by 2002:a05:600c:e547:10b0:492:2ffd:8f8 with SMTP id
 5b1f17b1804b1-492333acb7emr47358405e9.15.1781698077696; 
 Wed, 17 Jun 2026 05:07:57 -0700 (PDT)
Received: from localhost.localdomain (77-236-28-43.static.play.pl.
 [77.236.28.43]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49230a4601esm167617515e9.1.2026.06.17.05.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2026 05:07:57 -0700 (PDT)
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 17 Jun 2026 14:07:53 +0200
Message-Id: <20260617120753.1785565-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1781698078;
 bh=fc+WT2fkJNdUER4e5OAjVf1P3kXeLF/bOCJ1S03o4x4=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=PwlHF2WgY7CEKYFYNhHJ62Qn4ealD7Y8IFPM+JPRYBwC2Oc/gv19LRsoR9wHrjyMW
 P0BGFRwg7biupuM+Hpm+ZDDRfxHq1pl59H/o8+ze4GoXGvfuirW+i5cl1+hidAT19m
 ihQLW+HmmxLOf1mlQk66ux6FoJ6ghOCky88cchzqCAYsr4dCl7BeLrcsQkCBhgrLCr
 vUfWy2vZPoLOdmtsxbrVOQlX6Hj+Ysx6tonNKIMgqfB5dtPgiQO5nZdXh86/F+gUZu
 m7jsa5PhFpLl7khc9rwUZagfLJziZiTMlBTtVaubEfd4kC5HJZPXv2R9iLIF5byHa0
 b0URQOP4lVOgBsCsGyEuxi+b2cRLruu8GAH80Ze2c4uIpybZ+R6sEWY9t6uVrIH8fn
 3dPRmp25DaiG98PC3BewKKEH3vN4kVpbOnjY0ZCzLKuav7W/u27krb5zaT+3kFgt7s
 Q7xXLvWkYje9IzLAJ3zgvC2jWXEhixnQf+FhlmLS2/hrTns8EX707Ow6HrsivPD/09
 i6dO9/E3ozjjQv/2LnsoytO66YA0bI/IZcAucGKOGPWdujNuY1/IfcPvHaWg4G8b6+
 lpbWbXn+CS0NifYjrgAf04JFtBgfO2I9ssa4DRHsTAQbQq+8jnHNm987SySdZt9dmx
 CXoF4+C996TCrWwxCPQm67V4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=PwlHF2Wg
Subject: [Intel-wired-lan] [PATCH iwl v3] ice: retry reading NVM if admin
 queue returns EBUSY
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:replyto,canonical.com:email,canonical.com:mid,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 148A2699820

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
Changes in v3:
- resending to comply with the netdev 24-hour rule. No code changes since v2.

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

