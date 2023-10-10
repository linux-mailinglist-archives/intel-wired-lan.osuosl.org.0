Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A067C7644
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62E35610B7;
	Thu, 12 Oct 2023 19:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62E35610B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137627;
	bh=t6RaTcvcipgMoO6JC7XpOq1ykuz9Wv3b+J7Tm/mc5x8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FcijV92dN7EyMFYbwxmS3kev2tYakTGa/JntB4TbOEDDy2Wmi3WYGjeSgquzsVjql
	 8MVPeKEEayIOjhEQzKmOC9kP3IQ+ZNtuMMWIoou78PqVj0dP/wvCrsRcz1rS0d+OWa
	 PCj/k1EDGASe8gCa3+nmb7qmCrIIbIB85RXJcFORbefmFQ1cFak/+06eLWb2G9aJWK
	 Ah5MnEWgPzbb8dTgREOkW7sf/K8HdU0obRkTbOb9ioAwm0TjJ4VRKocEcZOEiJpdlD
	 bDrAdPKGfY4TbgxcUPvGk+qoeooM3e8OvL2RplPw2hIiyLwLTMQjrSRnzVxpR4N/m/
	 G/NQZhg43kqUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F0vUYdjRFgzw; Thu, 12 Oct 2023 19:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B26F60FF3;
	Thu, 12 Oct 2023 19:07:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B26F60FF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FFE41BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74BDF8221E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74BDF8221E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UT_inwxC6ckB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:53:06 +0000 (UTC)
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B9F481F00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B9F481F00
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-d9a509861acso1839147276.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 13:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696971185; x=1697575985;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nzrS9yyU7Fxl+rEcRC2xGRsO34stFhcBXCNXeuzJc9Q=;
 b=HQWXwjrUg0tDw0l9TK82D5+GE+SKRUJHxkvNOZlP6FNHozq6clYGQ/hKq/cgGs/irS
 B4Nv+MpHRgUIHGHqL/M10O8e+CWagyVyLSj63x+uEpMto1GDWgrS1srd47F/6PG/VltD
 qpCsWiC3kZ39KJJVW3SfB+V5It9I9FTASBW28CQ8Gv+vfcibjwHbqyKGYNmz1/SWVyew
 EhCiAVMRk8CLGpRTO7A1Zz+hZZNnQtflaE7Z25vYs5sqGXZjoqGCdaDaXiliqzsR4WMR
 XTXISGzFf0USsvnjt5WMEwMrEqBZOdPZRcLdw2N4JV7tRZiQqKN8M89GXf1eyqYp1Gpd
 H0Cw==
X-Gm-Message-State: AOJu0YxRHqEz7l9zbsV1RKjotk7e/AYq08m4c2anzp/NJWgTYfu0nkR0
 fHAmJiWzVKhU7jWvmSx05sq0vqtW6PwghO2XHA==
X-Google-Smtp-Source: AGHT+IFEawv3/Q1aVdi1akfbJBKo97xvPPwQmp2OCE1jugDl7DSQ5964VSx1uuZU3vGzMYluwJTj8jYCJu4sipxh6g==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a05:6902:85:b0:d86:5644:5d12 with SMTP
 id h5-20020a056902008500b00d8656445d12mr360216ybs.4.1696971184847; Tue, 10
 Oct 2023 13:53:04 -0700 (PDT)
Date: Tue, 10 Oct 2023 20:53:00 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKu5JWUC/x2N0QrCMBAEf6XcswdJqhT8FRGxua09kBguoVRK/
 93Yl2HnZWejAlMUunYbGRYt+klN/KmjOD/TC6zSnIILvXfecamWYv6ymC6wwgmVUWfYf2iqeLO
 eHQ48RDJHFhmm4MYBchFqx9kw6XpEb/d9/wFd1mpihAAAAA==
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696971183; l=2113;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=2n+/99+B9opeglb9JUPmq/bkJEGJQqpMF0ubyjWVGZk=;
 b=QW1y3WrgWpVSmEbu1+0vOfFFpmr1+pxJv4LGFzx7Dc1VvHcE4fwNoHfwpAzs/aoR0cBHfUaXB
 QqdiMRspgFuCva36ud5TV5Qm1njxFennsGdx1/XqmdCR/al80n4nf9s
X-Mailer: b4 0.12.3
Message-ID: <20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696971185; x=1697575985; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=nzrS9yyU7Fxl+rEcRC2xGRsO34stFhcBXCNXeuzJc9Q=;
 b=e5AYFbHOkiElwzgwHl/Yngt8NyiUsDwnpeKTCPd9bxkgpO3kBRhrk5mTVwpU462EoB
 FZOWi/8RD5x/soASMIVB21vGFcfQM6TombhhPgSTapV4/lF2HLdtd42Gd3+LdqM7Xtjj
 4HcPDT0M1dZ6kSAprq6n+7SDA9G5QPODhMPslwleU37WRjRxDNqL5wQhesVLs2cfnO6N
 5fjxb9+DrA9vzsBI+bj1/xYaPWm/WTpAwua0Q1urKwRygm8dwexuqBrHzUjLUdH+ruDD
 zicy1jW+f44er66zSbD/cvxaxmrqykPpBOzkh6Hm4UJ2mbR39azLwCeVVGVXHBtUNJKO
 weSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=e5AYFbHO
Subject: [Intel-wired-lan] [PATCH] i40e: use scnprintf over strncpy+strncat
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
Cc: netdev@vger.kernel.org, Justin Stitt <justinstitt@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

`strncpy` is deprecated for use on NUL-terminated destination strings
[1] and as such we should prefer more robust and less ambiguous string
interfaces.

Moreover, `strncat` shouldn't really be used either as per
fortify-string.h:
 * Do not use this function. While FORTIFY_SOURCE tries to avoid
 * read and write overflows, this is only possible when the sizes
 * of @p and @q are known to the compiler. Prefer building the
 * string with formatting, via scnprintf() or similar.

Instead, use `scnprintf` with "%s%s" format string. This code is now
more readable and robust.

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Cc: linux-hardening@vger.kernel.org
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Note: build-tested only.
---
 drivers/net/ethernet/intel/i40e/i40e_ddp.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 0e72abd178ae..ec25e4be250f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -438,10 +438,9 @@ int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash)
 		char profile_name[sizeof(I40E_DDP_PROFILE_PATH)
 				  + I40E_DDP_PROFILE_NAME_MAX];
 
-		profile_name[sizeof(profile_name) - 1] = 0;
-		strncpy(profile_name, I40E_DDP_PROFILE_PATH,
-			sizeof(profile_name) - 1);
-		strncat(profile_name, flash->data, I40E_DDP_PROFILE_NAME_MAX);
+		scnprintf(profile_name, sizeof(profile_name), "%s%s",
+			  I40E_DDP_PROFILE_PATH, flash->data);
+
 		/* Load DDP recipe. */
 		status = request_firmware(&ddp_config, profile_name,
 					  &netdev->dev);

---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-dd7f20b7ed5d

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
