Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C0C321122
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 08:08:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA2846F525;
	Mon, 22 Feb 2021 07:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J3o8AsXxdWva; Mon, 22 Feb 2021 07:08:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 692C26F521;
	Mon, 22 Feb 2021 07:08:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 160331BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10F2583842
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QGf08hWdaRC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 07:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1956283841
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613977681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8cGC74PMCnaWbBAWCVUBDXRxKgEXEKkWJtgVHkIGS/0=;
 b=JTAd8oucxlMcKjdlUPZ1DOyX0bIFVaZX55eLth+AsZBBasBhc/TX5SLnUuRRBCRe8l/IdE
 l48SAcRWwpFsE+a9/K5fjgwJRGfxuyYcNbqz/5hnVsxMj2VzR9POrPEFONgDhN4PmhGez+
 Dcu0Y4aLPGmvhA3BjnuNgu7T4wxtbqU=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-WewXZRFSOvq7_t5WL5hwgQ-1; Mon, 22 Feb 2021 02:07:58 -0500
X-MC-Unique: WewXZRFSOvq7_t5WL5hwgQ-1
Received: by mail-pf1-f198.google.com with SMTP id s18so6665226pfe.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 23:07:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8cGC74PMCnaWbBAWCVUBDXRxKgEXEKkWJtgVHkIGS/0=;
 b=Osh9SXM7tcsIZRJEVzX2SmKgzSc0Y8pT4buMjT+WCI52Oe+LiDpuqSta700NWaR4EB
 C443PUTmyMUbm1OpQSAQPRQjdAy36nQKcn+vBXm3LVqNff35QDZ7zJWoAYFLOhqiK5Cu
 Hi0Frkp2MSGbE4RTjVmkMpNngRRxfZX0gVLUNvqAH39hbp9i1BXrRHsaOxypmofyQSHB
 esx79I0Bs35JQWZZwefcCr1H3Es2gl8Pc5AzOyvbwrim20ZcuzrKEUStgLGX5zDCm0ec
 IAj4EjtEvJQGnuXS+WrPSgG1bcz21SFtjqwHYLBA4VIrPfm4uLiDsdt7X5arfsSMa/9X
 0Y6g==
X-Gm-Message-State: AOAM530h1hHZJAVHJclMsNYFOxOsJLcysh2xp3kGctMMa/rdNFunsAmP
 6LAi9rJHGX2fObCGP585lajL47QsY6Wnt5tF/XSLzOdKRLF7oFHaeWx8W1o0ufVelUmkHxkbI9D
 kZTiyL3krlzGzs1zNNvMfwdGpATYkQg==
X-Received: by 2002:a63:3602:: with SMTP id d2mr18862401pga.81.1613977677767; 
 Sun, 21 Feb 2021 23:07:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzG0zRT+B2eqBSHJCG+woLse614WOgfmD0XJ5e3O9heRqpM5jj6GbtUXuwOa2JP1tEgm2+OsA==
X-Received: by 2002:a63:3602:: with SMTP id d2mr18862385pga.81.1613977677597; 
 Sun, 21 Feb 2021 23:07:57 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id ig12sm8527195pjb.36.2021.02.21.23.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 23:07:57 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 22 Feb 2021 15:07:01 +0800
Message-Id: <20210222070701.16416-5-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210222070701.16416-1-coxu@redhat.com>
References: <20210222070701.16416-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [RFC PATCH 4/4] i40e: don't open i40iw client for
 kdump
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
Cc: kexec@lists.infradead.org, open list <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
for 1GbE while "craskernel=auto" only reserved 160M. With the module
parameter "resource_profile=2", we can reduce the memory usage of i40iw
to ~300M which is still too much for kdump.

Disabling the client registration would spare us the client interface
operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
saved for kdump.

Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_client.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index a2dba32383f6..aafc2587f389 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -4,6 +4,7 @@
 #include <linux/list.h>
 #include <linux/errno.h>
 #include <linux/net/intel/i40e_client.h>
+#include <linux/crash_dump.h>
 
 #include "i40e.h"
 #include "i40e_prototype.h"
@@ -741,6 +742,12 @@ int i40e_register_client(struct i40e_client *client)
 {
 	int ret = 0;
 
+	/* Don't open i40iw client for kdump because i40iw will consume huge
+	 * amounts of memory.
+	 */
+	if (is_kdump_kernel())
+		return ret;
+
 	if (!client) {
 		ret = -EIO;
 		goto out;
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
