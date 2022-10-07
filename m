Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEE25F7C9A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B02EC60769;
	Fri,  7 Oct 2022 17:58:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B02EC60769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665165505;
	bh=ge9S5GLfQUIdjt7xzM+hlOKSwXvSpiaXP6dL04+49sw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BKZXhB55PvqWjUiY6DU4W97D5DalaCEPWtey6mKq8RpPXRl8EhSIytRdzKUC1dq5c
	 vL9yPXsQgShwfb1Xe8ok+05ppsAbljwI2IsyklF0vJfSQtCnzVoAxI3UYB6yp2IgYy
	 b61qfI1MVPoO514Bo7wGRvfM72q7Xn9vQme+YIW8IQQnyIPTbfIg7yKeSwqJHQcBF4
	 tZobkgyN8kb/NZnnCjtxLMSrZH216v8DJwmrnnPi9KV2v1szMxhod+bCPCgpC3LFN0
	 hUXHK1BUAV8e9BFn3t7gQD+wJsN/aM5ueZEQexLdgLF831zMUn/YojkK+E1b8zaiN5
	 fS+m+8kP8wByw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6v8QRloOYB8; Fri,  7 Oct 2022 17:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AE3560746;
	Fri,  7 Oct 2022 17:58:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AE3560746
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9651BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 332A060746
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 332A060746
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5x1Eu6p5Oy8U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:58:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B3C1606ED
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B3C1606ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:18 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id c7so5269979pgt.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:58:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=GI9YplWcoxkl/b2oKWXJQJXb5sTlMZAlZiJcVSO4M8DPxTmrbuk2GQ7Inf5Uj/LnUf
 6ZntAd70l0ilg4SDItsT1DkHGld7qrBO2krzJFzg+HNu52JaRE1skdeNicLQYQfFvcal
 SAhLRpunzvOpV6gJx6O0cqJ1SglJiLtanhrs9XwW3JAk4u7dM1SdJ9lmT5B34ADSKPuY
 Dnz3mmyjv1+iEbkiLLTKn/leEAfmrWKVXiHy7a/s0AO+a/To65gVDI5PB4TF4JNHdJ/o
 5JrvhbJ0WJEmbur04MZTSGEEY+crvlf3wKam9lBiabzHVYP4yovmoTLHDuUIlDb7QVvN
 ULwQ==
X-Gm-Message-State: ACrzQf07cu4iP3KxlhGrWzA1rtu6Xym3GAazvItsw8UcHQ/COMjuTHTe
 nC8WU9jUDhvx79FxR6ruAPpiKIqev2BmwBbRNvU9eBO1rod6QXNyMv9egGgpf2+y3vq7w0Sb+eE
 uaKt8oUU7sroBkP01bRbrqYl1KDy7eCwjNEZiz4MxtFc0oLcHDyvrzXXz5zZSD4oEDgPEycf/2c
 hdcIk5pg==
X-Google-Smtp-Source: AMsMyM6W03wcqwAG9RpMDEjUqqAZTlA/ogFZ7vSBkI6/0T292dzmkF+4xoA0WXqqZ1lC2+ClDPlhZg==
X-Received: by 2002:a05:6a00:21c2:b0:52b:ff44:6680 with SMTP id
 t2-20020a056a0021c200b0052bff446680mr6492275pfj.57.1665165498124; 
 Fri, 07 Oct 2022 10:58:18 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 a29-20020a631a1d000000b0045c5a749a8fsm1937498pga.61.2022.10.07.10.58.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:58:17 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 10:57:24 -0700
Message-Id: <1665165447-1802-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=QQwz1yhXpBlKXl/lwsNiWYara4M4y1mpfLgFqQL9UrYYwCrCy+lM90LF1g+CCipFiR
 fYGhF6iuJUJ2A+lf/kpAXGb0dv0Ej4gchNBCTJ1dF17nG1ELHzajsa1RJkykNkHsK+QA
 rTM3EMkVOVWZAg6bcjbW2XxpqansrVbZN8bI4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=QQwz1yhX
Subject: [Intel-wired-lan] [RFC,
 next-queue 1/4] i40e: Store the irq number in i40e_q_vector
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
Cc: Joe Damato <jdamato@fastly.com>
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
