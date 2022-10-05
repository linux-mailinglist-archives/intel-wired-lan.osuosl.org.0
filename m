Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 325225F5BA2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 23:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA63141828;
	Wed,  5 Oct 2022 21:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA63141828
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665004983;
	bh=ge9S5GLfQUIdjt7xzM+hlOKSwXvSpiaXP6dL04+49sw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m5jDn5jcC1LEM8mgz6NtquMX7JDajRsSH2c2fck3aoKpqtUkOAJ354OYTR5QawN7K
	 on3a6KL7mTuEUEh44GnrWz96Bdv5Fp5wh9RrdVJlatYsgjpi53aL5B78lNQUWWehKP
	 P9SJbTspVU9ecYDGESW8FA7234d0etL+V7DGiytEzF3B30on151F33N8CDY+JXKFy5
	 57C7TiwNHHBm5b9vYD7pqRUYg7aJaaDIRhlfpjiVPVGZMma7TjtfCPwLwks30ay7nm
	 N2E1p1Qqh7JTK1PTGN1Nv2I52/YQ3T7L/rPVbGZczXYRmQoD+HX0qZ4kIHaozy9ENs
	 ryqv+dspniGYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPfprCJeE5FY; Wed,  5 Oct 2022 21:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 685CF41820;
	Wed,  5 Oct 2022 21:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 685CF41820
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2A41BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6845383145
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6845383145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsqTRuU3vO66 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 21:22:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C261F82B1B
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C261F82B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:52 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id e129so16420262pgc.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 14:22:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=6pW0V9lOw/75kSYCcxKmC7Pr7JCpdXAlDXZ1B5MMEN8cCaymHbcG5Gr1VotIrqV2OG
 d0Va7ExKAXrEUs6Ivs/YF8aPlEFl7ztQW3+XG/kAD1vYkaZiRk9jUt8HgcK3aqAH72C5
 e3714vQJMOo6VjjN0jEXMPucHz7+9wzVYVMtI2RVyYv8DTLt97LxuQI3e5AiS1kyaTyE
 +tCXyWoTT/W+ZcBauJlBt6Qcsv4MHxe0uFKM4soxt6OrkWxAt8GEvMYBFqwFQ+kQWqMZ
 jHRbdrNOzTSnG2r51yOZjcQjFuQ2wiQ1Oli2EtxRk8dXdpzPq+pKi/XkipWGxaT2bwav
 5qmA==
X-Gm-Message-State: ACrzQf2GRSynhLcCRvd1Tql+jMb/TtmMKS3ydaPAloOtomxlfT/VqI/q
 2zpv4o4JqMZWjvi7NPf+XXIWq7G8oBSMuSweoFRfIqtJSHP67g4GCx0xmPK5yfYyIIji3Z1QSLp
 LmrvOH2KXYDMX7v3g3QDLCTPE84KUNmhM5GbUzzPKviVS3RXjT36dPyGgpZi5zzyfA4z30ULfFq
 84pRAfAg==
X-Google-Smtp-Source: AMsMyM6F/34DajcuFO5ZPtDyGeavPnnhWjOSTOEt+ArQFZVEWUxxDvySBHX1+F76e25DGu8FU97rxw==
X-Received: by 2002:a63:90c1:0:b0:450:75b5:29fe with SMTP id
 a184-20020a6390c1000000b0045075b529femr1465586pge.541.1665004971939; 
 Wed, 05 Oct 2022 14:22:51 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0017f7b6e970esm2404666plx.146.2022.10.05.14.22.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 14:22:51 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 14:21:50 -0700
Message-Id: <1665004913-25656-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=ENPx/W4zknC86eh1Xu472j51UA6rXQLfRPei8R9uLnX/hDyDxXhjrA8v6zygagjyqD
 9Mzgfovzgler6FWxpHIiYHsczVBQn1xlB9OV2qB4Cl/6pA9tGDxOix/cmhMimB1G5Mob
 w1xT1zN1REtpO2ModVqkNHoKoyKTbwcILCKpU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ENPx/W4z
Subject: [Intel-wired-lan] [next-queue v2 1/4] i40e: Store the irq number in
 i40e_q_vector
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make it easy to figure out the IRQ number for a particular i40e_q_vector by
storing the assigned IRQ in the structure itself.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 9926c4e..8e1f395 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -992,6 +992,7 @@ struct i40e_q_vector {
 	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
+	int irq_num;		/* IRQ assigned to this q_vector */
 } ____cacheline_internodealigned_in_smp;
 
 /* lan device */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6b7535a..6efe130 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4123,6 +4123,7 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
 		}
 
 		/* register for affinity change notifications */
+		q_vector->irq_num = irq_num;
 		q_vector->affinity_notify.notify = i40e_irq_affinity_notify;
 		q_vector->affinity_notify.release = i40e_irq_affinity_release;
 		irq_set_affinity_notifier(irq_num, &q_vector->affinity_notify);
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
