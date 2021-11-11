Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B776144D8AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 15:55:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00B65404EF;
	Thu, 11 Nov 2021 14:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQcOJztAZvBy; Thu, 11 Nov 2021 14:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 195344049F;
	Thu, 11 Nov 2021 14:55:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5CA21BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A94D540459
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2Q4JA0h87bS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 09:06:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9E0E40455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 09:06:05 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id b4so4631111pgh.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 01:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KpOAFMNjh0s5tcyNo8DYQ5ka2hkVxOnnrkGeHw7Uvhw=;
 b=duwMUDVon6KiQ1mxjDWrn2GXPxuZzSM6FJe3QD/BJ7Jk4mex4apDbkCFm7KzE8czLH
 XDsNlWuAKEhOdv3Hn1umIhJkjZiqs6rtr4b/gW+u63UbqqYYl1ljftYTaJjqMmd3VBcq
 QFWuhEVNF2WomJClYgnUbGIPpsugOv5ist2Yk+11nSZ+PQL1FWk6Bj4a4iAN1Fh+XMKj
 avtbGTvNj+pfTNz5C2Rdn4ETIQzvRh5czRjRm9wMBVA2G9YyUxiL+mn8C5kZZMyjHttD
 zhMvCEYiUgn1LznujFjC3JrRMOTLBkYcfKc5YNKo89GAl6VYggypgSNNb8EPjNUKLavG
 f/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KpOAFMNjh0s5tcyNo8DYQ5ka2hkVxOnnrkGeHw7Uvhw=;
 b=yGw68Yoiv4hnjRag/KG6uUUTHeqoZs46syH/A8LG0dBFiVxk1RryEVLf3Aaa/FRb5l
 twl9vP29WCOZAmzOgpFSY0Z2JyHEZQcIAKbye8fL7QEJjFS7jxAX/XsGexHbxNHIWqIL
 it19P5iqvRz/wAaDoOpIzHy2mfebQg1ND38BkAx57z2roeyzBNgNJFqIdiUkfRQwzQiO
 2F58L+5kPU0emsRjxJRyHRiurMNirgdIevJeCCpMcwwZEA8jaQ/f9TiOUMdZ4eJmh+Oa
 gZxuSTmYiZVI3MFyAV7uWRoxTDo/fTQiETeH38LQNgMIY+mAuf/oAjfl4igHDpxYthw1
 F7TQ==
X-Gm-Message-State: AOAM531KZFsg3KsaQI3IbsIh8LhDmGL4Z9s9G9zfVw7KSVf8fxLfm0pJ
 RrvrH915iheqShir5QVNDqE=
X-Google-Smtp-Source: ABdhPJwWKerb4kjmdY19cwx0Thw11bY7zQ4ZeIflmMBVBm+EM9XX9GzD6HdCPL3iIa8LdnBHSceLlA==
X-Received: by 2002:a05:6a00:b83:b0:49f:b555:1183 with SMTP id
 g3-20020a056a000b8300b0049fb5551183mr5426900pfj.32.1636621565302; 
 Thu, 11 Nov 2021 01:06:05 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id e187sm2197788pfe.181.2021.11.11.01.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Nov 2021 01:06:05 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: luo.penghao@zte.com.cn
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 11 Nov 2021 09:05:55 +0000
Message-Id: <20211111090555.158828-1-luo.penghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 11 Nov 2021 14:55:35 +0000
Subject: [Intel-wired-lan] [PATCH linux] e1000e: Delete redundant variable
 definitions
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
Cc: netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, luo penghao <luo.penghao@zte.com.cn>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: luo penghao <luo.penghao@zte.com.cn>

The local variable is not used elsewhere in the function

The clang_analyzer complains as follows:

drivers/net/ethernet/intel/e1000e/ptp.c:241:19 warning

Value stored to 'hw' during its initialization is never read

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
---
 drivers/net/ethernet/intel/e1000e/ptp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index eb5c014..e6dcac9 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -238,7 +238,6 @@ static void e1000e_systim_overflow_work(struct work_struct *work)
 {
 	struct e1000_adapter *adapter = container_of(work, struct e1000_adapter,
 						     systim_overflow_work.work);
-	struct e1000_hw *hw = &adapter->hw;
 	struct timespec64 ts;
 	u64 ns;
 
-- 
2.15.2


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
