Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D967F5F7200
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 01:45:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C98CE403A9;
	Thu,  6 Oct 2022 23:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C98CE403A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665099899;
	bh=ge9S5GLfQUIdjt7xzM+hlOKSwXvSpiaXP6dL04+49sw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L2CS8UrmOQxktmCe7BWuKfTopnahQ+1GtDKTYlD2V9OLOeB8sVoUYZGAX9piwuxKc
	 2Y6rsdGtAiI3x1VxcV9ar1Nm1N1q7alqSpdy7by0XvgEgmISluz7yXO4RVD0KzCGf6
	 2UI9P6tEYMqZasER4FUE0taSDGdOqRRO0oMAIdY46wBCY2tY3KykMff9jZlvgcppBb
	 +hjFJi2MYQPGnswRvbU9CGXYJGE6Npm4Nz1UjAx2Hd4YaxfMSR+gLwiUpwN8otQzcf
	 XHiyimqvXzwRbN4/jMH9ndJl8W5BbkDIKij2X7qkvq7vJBNX8BAUDy+OcOauIZCcVj
	 ZvNY2MJ2IcpPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 946z7Fsnh2IS; Thu,  6 Oct 2022 23:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB75940126;
	Thu,  6 Oct 2022 23:44:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB75940126
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 300B81BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A5D760F93
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A5D760F93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0g4K3meHEJK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 23:44:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D966560F67
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D966560F67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:49 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id a23so3152507pgi.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 16:44:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=jwMUynva3v1DJ48g8GZPV5kOtYwdeuv1XQ+L+jzceXe7UwrZFZejSZtxT8v+5PgjkI
 SNUTpm440qXcb8DveASJLaK1Me/5Cz9ETd+PI0okSrWXAcSHJBnMd2FMUDdaW1Uhdpx/
 0Pzp3lGTqeOL+olGbf6S86KiMPUcEvAR3xZX3TDK27pnLIixXRSKNod84cjjU9xXZ4SM
 7RCdmIntYdZ8PwSfEuFIdHcuuE1G7vvKLIa9hfwmcE8eixeWegBFq0i6UuLvU3VzKD/C
 dBmyF7xnm2r6YQUGxXusVQNok7q8AxcTc8cwZnF0dB+aIPbq27aatw1MbkXlSHJ4vCkM
 8JOA==
X-Gm-Message-State: ACrzQf3aoa2AfMGVVQOc3ZKKVbrEh+s80IyctDMWJUYeDgw98k1fg+r5
 kQDRWdXZ5RXFsK836rz1ySwW6gAYGSQTHaRTuYeQSToXWIE9yfS1jx6RH6flHl/EG42KQnvk1Hz
 27AbaIUYMX7xEXL6UDnko1OjZw/cabBqWw0MINkNLtfdtXmaNurvrMimdKCrqrbhOC1jO+9dmFS
 d9JrrTzg==
X-Google-Smtp-Source: AMsMyM6RHbKnxW53bQQnwAVI6lfHCITHB2Yxxj/1gw8QgizO4uWRcy6v4YZK+H1j2jnB6LScspj4Qg==
X-Received: by 2002:a05:6a00:1392:b0:561:8156:d8d8 with SMTP id
 t18-20020a056a00139200b005618156d8d8mr2327090pfg.43.1665099888971; 
 Thu, 06 Oct 2022 16:44:48 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 u4-20020a631404000000b0045935b12e97sm308124pgl.36.2022.10.06.16.44.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 16:44:48 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Oct 2022 16:43:55 -0700
Message-Id: <1665099838-94839-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=KYs5i1UtSKwff4LZqDYKTEYs6XamWF2jUJRPKUQ5EPA=;
 b=q79sAlRdGXhPz5dtP63w6mgBfEtup7KvbQmDgnUaYLrmFH3wb2FL5owr6t+Jdg7Mec
 0Bf1fNqXkuYbJW+RnQF8ij1o57WLj9AeQokUytJxBCUybXvLpJpbb1UXCRQrjs/JG/AQ
 WnwYTdt5dYqDmmG6EfzyPXnHJGy08FC43J0pQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=q79sAlRd
Subject: [Intel-wired-lan] [next-queue v3 1/4] i40e: Store the irq number in
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
