Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 486F7A061D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 17:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76B8E60823;
	Wed,  8 Jan 2025 16:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZTPU7jLFvOdK; Wed,  8 Jan 2025 16:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F1C660829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736353676;
	bh=QwB6PKWL4fpLwQMxIbGdx/81PcCRgJBA26Iv4G5hiqo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3Qb/hPOy4Al55S/p7jLWykr2BzsgSoqT2osVlKtQN+bbPQxZBE/b6YFQtQoNczfHT
	 BWlQKXij/FFwPCkWvvBhLO8ZZ0P0xKbRX3XAKjTi8Ec5eYoHqqbjDQup4PgJ3lwltF
	 /QTsyeCwvXasEB++XapRFAV6uBsq/TuCTDY28wi/svN/VQu9eOvLF967/5Fymo20dj
	 UUtWMd1UP4Zn6+DwjT/rqsGSy8epLTKYm0LPhgqOiC0QL3ZGqwQl53erCi17jaVslV
	 1jJcWJtRo7xIJ1TQ/bCNromloKLKTItbJ498eb8Lx4pLnZIlLlunZIbLLe2yhj9VKu
	 EIyxpKWpG2Mow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F1C660829;
	Wed,  8 Jan 2025 16:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 611FB7AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 05:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FC3340291
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 05:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ip7O_XwJLuul for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 05:36:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=dheeraj.linuxdev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3DEB54027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DEB54027C
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DEB54027C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 05:36:19 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-2f4409fc8fdso748666a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Jan 2025 21:36:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736314578; x=1736919378;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QwB6PKWL4fpLwQMxIbGdx/81PcCRgJBA26Iv4G5hiqo=;
 b=tzEyd5EaDfri0cGDG0zhZun890/6Qm+F3irvwVIYHJRdP1mUlQersQEEkcG1PkV9Nj
 flypoNbuoiwaB/PP6Ura5vm3pGUiuNmdsud8GlHg8u4L5bmlvP/Nc7I3qGpzlJjO1Wuc
 I72mXzb3v22wfPbIuipBCsmFLgeyfKSVnNrW0+nHXUbMYt8FlfWSh60ETQHYDGs0UM/u
 SLhtlg6bsTKV8I/iwVeuksi21whSj/4OUTx1DrnUT0NzqIgdUWk7WE3qHhgiM+zX8gcw
 HslCjYF5zCNFmb/v7TquVs2RXyCUgosHwtiDmrOe1bf97EkIXVUUiGp9dZu/XRQK0rY/
 2pnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRyAOXInNTdbbvj3M5N93Bm9zyp6XcmUJOalGrwIL6J5Q6IfO2QKtb/nXecAIvrpfw5kVNiNnOFqSfSG0VpPw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxgbm19uzwhBi6/VBJgFQ4RJ0wTTEs2ieYIEbj6JohihrrPXJKa
 GXdmM1RE8VPk3egJ7lO+VjDtINmY7YV6QWgTafyqx+1XJpn3X8cy
X-Gm-Gg: ASbGncuF9SRkNcgsVxfjNmABFtdVoJ26MRsEK8eudv8q16NsTwiyViylQJ0bKRvoCr5
 djZLXHsWNtfM82xVYCEqT3Gy/RR0f2mfbiTTup1vpBW/xvadpSsKBfOGG680eYnO6jkyCtsPbpc
 uWg0lMOg2djrDx/m3pjats0H4XSCOra2wmdh1NvJrAPe0G9/5bzZUwYoqtK8lrKqwCuU0cpN8lg
 qVSGKSdJBH+QhT2tZLiCKo1L+FV4ul/dWRHRYsHOUVZDnlNApsuAeMwyo0j
X-Google-Smtp-Source: AGHT+IFQNLflTaSaTva4SqpeHAD8GetNltm43gjW14adKs7m5QAStWdcGn40w/j/MPJdp38ED9KrRQ==
X-Received: by 2002:a17:90b:1f85:b0:2ee:cbd0:4910 with SMTP id
 98e67ed59e1d1-2f548594570mr2814359a91.1.1736314578470; 
 Tue, 07 Jan 2025 21:36:18 -0800 (PST)
Received: from HOME-PC ([223.185.133.12]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f54a2e514asm510668a91.43.2025.01.07.21.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2025 21:36:18 -0800 (PST)
From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Date: Wed,  8 Jan 2025 11:06:14 +0530
Message-Id: <20250108053614.53924-1-dheeraj.linuxdev@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 08 Jan 2025 16:27:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736314578; x=1736919378; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QwB6PKWL4fpLwQMxIbGdx/81PcCRgJBA26Iv4G5hiqo=;
 b=e08rWtgQScH8bRlJIgu5R+ULBdoqJNmb00WqDV9+AZKoo5zeNcgrAFV5EYD3ThPDpO
 KEhuS+FT9gIqoX03UNWeD8Ed3/luo9PQyOuscdRQQVIiZbI3MSmstsDiadQAosxDIZpZ
 AwLDr72vDvL09v3L6rx2rIbD2mIiEtRtpeJyl/Az/hbg0aeCCn9feBBWla+PK5wPUHb0
 dujRo5sDcPr1s1NAln8XOzmDEZ2CzpAyxyRlc7k44Z0xAcxfkDdedAD3W/foI3rDgrkc
 SOBE7hih9H8b8P1ViAqU9VfO4QIx06jzodFg8qMwJ8FQg4bFlKF/UwnZCE8ML2YR+mp7
 Nldw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=e08rWtgQ
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
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

Remove redundant statements in ixgbe_aci_send_cmd_execute() where
raw_desc[i] is assigned to itself. These self-assignments have no
effect and can be safely removed.

Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668672d6..408c0874cdc2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_SV)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
 		}
 	}
 
@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
 		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
 		}
 	}
 
-- 
2.34.1

