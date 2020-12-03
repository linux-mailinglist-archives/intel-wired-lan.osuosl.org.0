Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913F22CD649
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 14:00:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3A5087AD9;
	Thu,  3 Dec 2020 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mLgjJ9ySezB; Thu,  3 Dec 2020 13:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F19A387ACB;
	Thu,  3 Dec 2020 13:00:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 253291BF344
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2070787ABE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Y4cj-xobqgq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 13:00:05 +0000 (UTC)
X-Greylist: delayed 00:07:17 by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3AD987A31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:00:04 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id l11so2609234lfg.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 05:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GX6ankB3VIUsz6cmu/u03hWEiPljuvEMQ/2K8vSivlU=;
 b=A9CQqJCErse/hXH48A+Qi4a0x0xT5tOXb7m5qt6e+AOv7v0HeDKRG5e0Ggsif8+zuT
 Jq/+dRp+4UcTcjh56eHN4iS5jUlZbNeMgcLcAsF+AwOEqe7hGsGiQ7CC33RqafX2qNBD
 rDt89IdCpHqQ7acBOhbInfhRCJGc3rvIo0Z3dQgiJxUtq8iXJGhebQ6QiD4ms4ge1OgT
 JEZbMNqlb+IpYZ+zKx2IlX58kYgq2jg0l2VWhr+dCqwbWRuqgqpX74w8xcee+uZ3CK7n
 GlGuUQmdyfCUXqGutJU69j+DALj21DIFJ/eFTsB/QoNQDZXAwCy8Ok/r4xkcqzo4mDUR
 Vupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GX6ankB3VIUsz6cmu/u03hWEiPljuvEMQ/2K8vSivlU=;
 b=eJJAfHEXvWk4gBg0JusW0+AtP1p9xGN3AsurQ1tHQCjckEOMwJRBJpKVkHxM0Yzknn
 XKc15PdgV0MEwEmrQPhfL5SKcpipnKjjlEsaJurydgMZN8LQgLUQR+yZokTX6qRUzj8T
 Dxf1ZfsEXlQQ0XpE+bGsQ0CA9Rc7s1sjG3Q4zFjxp3JeGk/W2HaNbljQgxuAzsOXTC1J
 fkzy+g86l4RiohDRzsEezEtSbQSujTsC3s2Bl+2U5wkMEO+0/sSo4YYs7KB6rNlkUQja
 zOWcEgmQ4tGUiF5h1bVYE63B6GYnPY8+ZovTbOHxbdqIcGIEBvmq1yHXROkeNjrA2E8C
 3Y+Q==
X-Gm-Message-State: AOAM530yWf+aMMXYXiKxL08h/XEGZE4O7J/6ztwLKWewzgemM/1yaygN
 84rHx0V/zWFXqn6YTefJXYmhkQ==
X-Google-Smtp-Source: ABdhPJylFHHLY18Fb8zi+WQREE8TeB2FnUUseCAGPw7ofIEJSw4KLcEcTA1B1JAEsMDRUNM2Tp1Qpg==
X-Received: by 2002:a05:6512:33bc:: with SMTP id
 i28mr1262566lfg.52.1607000402705; 
 Thu, 03 Dec 2020 05:00:02 -0800 (PST)
Received: from navi.cosmonova.net.ua ([95.67.24.131])
 by smtp.gmail.com with ESMTPSA id m7sm396487ljb.8.2020.12.03.05.00.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 05:00:02 -0800 (PST)
From: Andrew Melnychenko <andrew@daynix.com>
To: mst@redhat.com
Date: Thu,  3 Dec 2020 15:32:36 +0200
Message-Id: <20201203133236.222207-1-andrew@daynix.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] e1000e: Added ICR clearing by
 corresponding IMS bit.
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
Cc: intel-wired-lan@lists.osuosl.org, qemu-devel@nongnu.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Buglink: https://bugzilla.redhat.com/show_bug.cgi?id=1707441
Added ICR clearing if there is IMS bit - according to the note by
section 13.3.27 of the 8257X developers manual.

Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
---
 hw/net/e1000e_core.c | 10 ++++++++++
 hw/net/trace-events  |  1 +
 2 files changed, 11 insertions(+)

diff --git a/hw/net/e1000e_core.c b/hw/net/e1000e_core.c
index 095c01ebc6..9705f5c52e 100644
--- a/hw/net/e1000e_core.c
+++ b/hw/net/e1000e_core.c
@@ -2624,6 +2624,16 @@ e1000e_mac_icr_read(E1000ECore *core, int index)
         e1000e_clear_ims_bits(core, core->mac[IAM]);
     }
 
+    /*
+     * PCIe* GbE Controllers Open Source Software Developer's Manual
+     * 13.3.27 Interrupt Cause Read Register
+     */
+    if ((core->mac[ICR] & E1000_ICR_ASSERTED) &&
+        (core->mac[ICR] & core->mac[IMS])) {
+        trace_e1000e_irq_icr_clear_icr_bit_ims(core->mac[ICR], core->mac[IMS]);
+        core->mac[ICR] = 0;
+    }
+
     trace_e1000e_irq_icr_read_exit(core->mac[ICR]);
     e1000e_update_interrupt_state(core);
     return ret;
diff --git a/hw/net/trace-events b/hw/net/trace-events
index 5db45456d9..2c3521a19c 100644
--- a/hw/net/trace-events
+++ b/hw/net/trace-events
@@ -237,6 +237,7 @@ e1000e_irq_icr_read_entry(uint32_t icr) "Starting ICR read. Current ICR: 0x%x"
 e1000e_irq_icr_read_exit(uint32_t icr) "Ending ICR read. Current ICR: 0x%x"
 e1000e_irq_icr_clear_zero_ims(void) "Clearing ICR on read due to zero IMS"
 e1000e_irq_icr_clear_iame(void) "Clearing ICR on read due to IAME"
+e1000e_irq_icr_clear_icr_bit_ims(uint32_t icr, uint32_t ims) "Clearing ICR on read due corresponding IMS bit: 0x%x & 0x%x"
 e1000e_irq_iam_clear_eiame(uint32_t iam, uint32_t cause) "Clearing IMS due to EIAME, IAM: 0x%X, cause: 0x%X"
 e1000e_irq_icr_clear_eiac(uint32_t icr, uint32_t eiac) "Clearing ICR bits due to EIAC, ICR: 0x%X, EIAC: 0x%X"
 e1000e_irq_ims_clear_set_imc(uint32_t val) "Clearing IMS bits due to IMC write 0x%x"
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
