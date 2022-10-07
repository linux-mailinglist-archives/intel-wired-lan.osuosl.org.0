Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FAF5F802A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:39:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E96A160B4C;
	Fri,  7 Oct 2022 21:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E96A160B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665178787;
	bh=bwtl2JYpWpDyGbmcHMPmgChKIIJxrDQS5Fo0U+iCi34=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JvSAJ3SbQf2A7DsUiDkmYweIYQkCw5ghftqEoTcmNzUf/suBbgYs+2W5JvQscsx9a
	 51MCFCTJl3Zam2twccS3j7NmM0Qt4d3lwh6xAg8jF0CcslF77MTGkrY41TxJnzBik4
	 fCtuw5vJimziGPEIsiDTjxOHYMdPZYl75hwqa+65DjHTE4AO2mvy+DLWWFhGIMACLA
	 3aKnJJ0PMKBncYSQVj+vO5KuCrMiMQcaN9kVMyhEKboybJMFykK/ksEsfFCKQWE7me
	 9vWvXL1vw1LxH9qOXz7tvqSJBD6AjwA/KwjQWWPOhMUhBtbEjmZhLbxN/LKCLcrud+
	 NHYm4D5UW577w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KElPIORD5b2h; Fri,  7 Oct 2022 21:39:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE3B460AFF;
	Fri,  7 Oct 2022 21:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE3B460AFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35A5F1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10FA64049B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10FA64049B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29_BLb3Ib5E4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:39:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C2BE4018F
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C2BE4018F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:37 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 x1-20020a17090ab00100b001fda21bbc90so8329005pjq.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 14:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eahtucVHdG81huhJm8/Cz/GmI9h1getEoGvrIDntCUs=;
 b=hbUtBHQZbZB6r7evPnV3hwWhNq9819stujw0ER8VOtSLtiuReNx7C1a03PwC4xV3U7
 nrUFAyvQsg3aT7U2rKh7NdASAE/OyM0n8vnyyC4vF9XfLU3D/ZKg1bvA+6eNNbnhFJMC
 3OLxsUVH49n3ElcyE20jsS1VlVnV0DMpRw6CdowU6N8rEpa4DpUPurEixAR3XZGb9IhW
 W0bvBak7VFXmsUYnoZkADtN6QnCqPhxuH107WIz6y4z5JUe2csrOQh1STMISUQh2mq2G
 rbIZlXzVj/78rqsSJ9Ww3B1PNt3MaBfnGSM878FNw+KyrZWH0Jy46rGncYescjRXr0KC
 JWoQ==
X-Gm-Message-State: ACrzQf1b0Opi7i/Lqz/oWqEoj0K1mflq7zWtL9yh/tQhw1JqhxYV6cxe
 Z3Mgol0rK+yoKvVlkqGbyL9BufoRhHVe5Ca1FqiZbRwQWaFUW2gnLxUEsXTasVDVIETd3+Rmq9w
 DpS5S4p8TER5yoDJtTLc8+Z/p/A68A88posUzvdKDij7gjT5Xs1yRj4vxC0TvlQRwvdVb/x/u4m
 FpgD+4Jg==
X-Google-Smtp-Source: AMsMyM52/lUKswCS/qZYuMBJ9BEqQth2q6NFgpmZ+k4uSbNmCL63VQOtZl3dYuhLGZOySTf1AZzGDQ==
X-Received: by 2002:a17:903:1d0:b0:178:1d5b:faf8 with SMTP id
 e16-20020a17090301d000b001781d5bfaf8mr6878942plh.9.1665178776544; 
 Fri, 07 Oct 2022 14:39:36 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 m24-20020a17090a7f9800b001f2fa09786asm2012655pjl.19.2022.10.07.14.39.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 14:39:36 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 14:38:40 -0700
Message-Id: <1665178723-52902-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=eahtucVHdG81huhJm8/Cz/GmI9h1getEoGvrIDntCUs=;
 b=yRBYm3Q1SVvY1Gms/XvF4cWbV6d5C+lkm6N9bQvWLNTX1hoEDMrjmDZV390YdoWDKB
 aN+24OuHYHPnMKLS2ws2LAzDWu6OMee5tV8Zsz2WwiABj2Iza5IWDGhIr6kD2yPkMCTs
 sfgoQBnijBo9uIDBaLuKaAhqFWTIBdK96NlX0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=yRBYm3Q1
Subject: [Intel-wired-lan] [next-queue v4 1/4] i40e: Store the irq number in
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
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
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
