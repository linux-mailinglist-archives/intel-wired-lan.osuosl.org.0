Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C35CD32111F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 08:07:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68D598381F;
	Mon, 22 Feb 2021 07:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Xs9VBfZ62DT; Mon, 22 Feb 2021 07:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 434C983777;
	Mon, 22 Feb 2021 07:07:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82FFA1BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E4E883777
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rW687Tp3-xow for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 07:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DAF983518
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613977665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gAp2I2H4ORRdIzGQOTnp0OVejY1BSXenzSWMruiT71M=;
 b=NFU5Sf5kEfWchApMuobgiGkKDzbrmTgczhVWC0OCBueDNoAmhnmp/nUgt81smUs4meEw52
 DORgjc0BAjJUKmkV/RtNYoYTztZPk7QDi24U5Bud6oW0eRLieSN526IoWTX3+HT2WXH/7U
 eiXlyYwKL66yB5PBACMGwPJWoqju8wM=
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-7oYKoSp5M6ChzDvdZHgtSQ-1; Mon, 22 Feb 2021 02:07:41 -0500
X-MC-Unique: 7oYKoSp5M6ChzDvdZHgtSQ-1
Received: by mail-pj1-f72.google.com with SMTP id w2so1673331pjk.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 23:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gAp2I2H4ORRdIzGQOTnp0OVejY1BSXenzSWMruiT71M=;
 b=Q8+oZdvOhvbi+7kWZH2+LAzkvHtw65VCsczDPo/lH2jw4xqYnG54R6wZkMkVHrfwCy
 O4ggWayG6EfMxc4upkfsiVGIM6gUKc8Nmq+NC64Sdgd0d66l+9tgXKcqjycZkDzrDBoA
 tzcv3Ip5OwDfLlcgtK3YkL3hXEv+bglPKTwYmkRmLJGfwJrocl44Zg6rz3Ehuyp3B2QL
 5GzvMWfCASX3ljIEl4T7b55/5rhGp6fprZsX7vhvsGVPiCtgFkhL+m7H/Qa09XH69fHx
 vEoEeNOyVlxY8Bf4VAKNDq1tDqQ2RydeJDvyCCANMlDBKAGxys7uPDLGbe1/ZSTswSO+
 mwrQ==
X-Gm-Message-State: AOAM530CGq97G6TS91X2BfoMiKdm7HQu1zrh4lo/zpQ6bLzFQovH/zQ8
 I4348tNAglaYkMCseqQMW+tyi1yh1rTT+D0PbVyOsnqm1f8J60FP7p+tAl9ZvzqrVykhPFYBApZ
 +ZoOjA4Vrmd2LmhpFP5OzGHasc6UXfg==
X-Received: by 2002:a17:90a:194b:: with SMTP id
 11mr21935619pjh.100.1613977660051; 
 Sun, 21 Feb 2021 23:07:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx1p7DWcYJD3VbncV/CfHu7aM+wNHjZQUVuys68WjauioDf0PpZYeqnLQl9yRTiF9YT6Xnl0w==
X-Received: by 2002:a17:90a:194b:: with SMTP id
 11mr21935603pjh.100.1613977659906; 
 Sun, 21 Feb 2021 23:07:39 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id h186sm13422121pgc.38.2021.02.21.23.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 23:07:39 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 22 Feb 2021 15:06:59 +0800
Message-Id: <20210222070701.16416-3-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210222070701.16416-1-coxu@redhat.com>
References: <20210222070701.16416-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [RFC PATCH 2/4] i40e: use minimal rx and tx ring
 buffers for kdump
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

Use the minimum of the number of descriptors thus we will allocate the
minimal ring buffers for kdump.

Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 069c86e2f69d..5307f1744766 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10552,6 +10552,11 @@ static int i40e_set_num_rings_in_vsi(struct i40e_vsi *vsi)
 		return -ENODATA;
 	}
 
+	if (is_kdump_kernel()) {
+		vsi->num_tx_desc = I40E_MIN_NUM_DESCRIPTORS;
+		vsi->num_rx_desc = I40E_MIN_NUM_DESCRIPTORS;
+	}
+
 	return 0;
 }
 
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
