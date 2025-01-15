Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4CFA117FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 04:41:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 024DC61063;
	Wed, 15 Jan 2025 03:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJgEHDN-SajF; Wed, 15 Jan 2025 03:41:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEC7A61065
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736912509;
	bh=w79G0sAdFORxpLEmin5NUYiYaNJ/dpjL2Qm4mGDbE+g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7gvIUcgweIKq/ElnwaYNfOxadFwIEccovjvquphCXAr5MMUYYWr/Rb28mHdosFIz6
	 ooZJAS6rmx8PXAm4cjsuxOwLulS32CY7WHiBQc6hldJaPJq6iWvyzkp9GKxUFx080R
	 yvtyM8KFI5bno3o7YnHU/pLNEzOj5xgxNOFEqr7ID3qZpBU5tePZmix210PPXsa83u
	 Hy3aF3HC9ggrEbAyKM+vR6diUfNVms0KNckqO9qRKd1cn0F4Rp1lSWNiamxb4c7lb5
	 A+LSl2pFOVwPyv3kr6CgIS1+gxi/yFRuy3QC135/mifSgRDX6spk1esftoBX2TXt9K
	 AzJ2puJlVY0sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEC7A61065;
	Wed, 15 Jan 2025 03:41:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EE235B89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:41:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E88B38406A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:41:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HQnbp93c2GKi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 03:41:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102e; helo=mail-pj1-x102e.google.com;
 envelope-from=dheeraj.linuxdev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A9AD8406C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A9AD8406C
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A9AD8406C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 03:41:46 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-2ee8aa26415so10332397a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 19:41:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736912506; x=1737517306;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=w79G0sAdFORxpLEmin5NUYiYaNJ/dpjL2Qm4mGDbE+g=;
 b=H9p9UX6Q0wcbfy7qAX/1Ewny6PGS0J2kYEzRXmKm+PFQaaYynijuXAgmcsJa8qsJpX
 bSofpH3V7iisea4E6Nb/cA4V04TO9deiBjoCr/Y02ZBg4ch4eYwicm17V9b7yXNskenF
 pcziS5527QXq8L+yXdjLJiIy4PL4kD3J96yd/0eDb7KMvgNkgCuhpXc4x/IR3uAsQh4c
 ejd89QQlXMxDMJ1EsOi16tBTbrxrD09gAm9z1SQkXJeVXFA8idwUbgEFDO1l5m0Of08T
 7YMASEpFWcPOTVlwq2RSO1OJKNXmePq+gLzL/Z//13gCOqY/BE5CAwaazo2oeXEh1Wv5
 G0aw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1GZEv2aWIslzAqIEDHPH9D8mNp1hXNPa7VfZe0wloa4j/T/fkwsM2xK9kruXxvR/N96bgCFWXQc0w0EabICU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwgIpN3iPM5mAwH+qzQFOyNKck1jgpT1/e5sqy1femrOTspvvEd
 f9eyJnpbMY4h7iYUhNHbH820D+sl69AdWmmWdM+cuC87QAqDziYp
X-Gm-Gg: ASbGnctP3eNcJW+9ZV95ztNkw1aCMEZuKcxF30cwX+xD+iRGw/YVcagkDcU9mUvhLLj
 gnNWdfOba956NKEmyRTJFJLfVjx0ywCxSlMdENiOI7It67K83f3esrQDp9VRVxJxLmzGtmTkcdj
 WpwihfU2e0sPYEI0aum1lE6Ri8z3p7qY49R2bjTldMDkb7fJqKQawTCaKielhkcN2vz0Q7ow+G5
 AYSn0ce3pLbHabtqmJpeGoacuJqIIyNEbvNfOO8bDryknuKHrFg43hjgKa5
X-Google-Smtp-Source: AGHT+IFUsVIMLNo7dsDWNM7Y7j/R+wYJTfLLRH9xMmGx3hdnhEDN5EwruBttORubiH3a0y9p2WRBIg==
X-Received: by 2002:a17:90b:274b:b0:2ee:8427:4b02 with SMTP id
 98e67ed59e1d1-2f548f5f941mr38369822a91.28.1736912506496; 
 Tue, 14 Jan 2025 19:41:46 -0800 (PST)
Received: from HOME-PC ([223.185.133.12]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f72c04b157sm325868a91.0.2025.01.14.19.41.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 19:41:46 -0800 (PST)
From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Date: Wed, 15 Jan 2025 09:11:17 +0530
Message-Id: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736912506; x=1737517306; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=w79G0sAdFORxpLEmin5NUYiYaNJ/dpjL2Qm4mGDbE+g=;
 b=g5SeouCGSGfVAd0VIoLcMEaOjrVpuXRLaegPGWouWfa33mC9L6XmePZizA21XdO4gv
 R9DKXoy/lCV/cnq5ZsQ5GEB0ffVWVU6xBQZtfGEeOerTraFBajNZm+9xONOlVfg6BEJd
 Q75M9zSBLNDi/FRRtXEufujrHjusIjl8xOo9ekOEmcthZwBVHXvBxzBNat/dmrtuVfCA
 Au5AWa0GL9WRDQS/HGnAITodCFFgU7xJe0d9r3OSiTXubhOlAhIIaknqlScwqC7eSpvl
 royjYePcl5koAPq4MW9E3i2SyG+wFCQWf8/i2rsb0Ho/TGFHnjRi2bIP/7F527h/7IzU
 /SOw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=g5SeouCG
Subject: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian handling
 for ACI descriptor registers
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

The ixgbe driver was missing proper endian conversion for ACI descriptor
register operations. Add the necessary conversions when reading and
writing to the registers.

Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
---
Changelog

v2:
	- Updated the patch to include suggested fix
	- Updated the commit message to describe the issue

 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668672d6..3b9017e72d0e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 
 	/* Descriptor is written to specific registers */
 	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
+		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), cpu_to_le32(raw_desc[i]));
 
 	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
 	 * PF_HICR_EV
@@ -145,7 +145,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = le32_to_cpu(raw_desc[i]);
 		}
 	}
 
@@ -153,7 +153,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
+			raw_desc[i] = le32_to_cpu(raw_desc[i]);
 		}
 	}
 
-- 
2.34.1

