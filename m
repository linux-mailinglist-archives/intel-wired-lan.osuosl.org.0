Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B620A27941A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 00:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7569D8769A;
	Fri, 25 Sep 2020 22:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYhf0kCM3siR; Fri, 25 Sep 2020 22:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC0B58769D;
	Fri, 25 Sep 2020 22:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D99B1BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1A12386D10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ycYnwVfn5RKU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 22:25:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BEA086BF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:07 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 5so3767762pgf.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 15:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBRmBAGcKu4lRBYEDyDAo9a/cZeUFzzfNrVmpyXvD88=;
 b=Dt6dM676KYkZi3XlM474+k5/+qt50lBLrSUv/f6p1K3WAhE7vwmQ2R+r3AsmnSpi6Z
 MFaEnhZ8BrqsQF5k06bvaParVgsHdn1d6YCP4+0X43ABC1P0dE0TkE5sBYbUlj7RmQNQ
 38oyo5/TBL+Q0iGgpGSyZBrStoKWbbkPVerWZ2KNe9Q14vvC4/RqlOxacaCXpwnmGpaJ
 dTfWlwYOB05RAnKXYQwEw98dUMCELbBhPE+oY+qDCsTkSBKri7/msGA3LbqSil6M8d23
 8wPMK49pTG6UWqiCUSnMBUOsrx3ZblvO747JPrXfWu39B3pZQMoEdrKrsvRKUVLbvxwN
 FKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBRmBAGcKu4lRBYEDyDAo9a/cZeUFzzfNrVmpyXvD88=;
 b=iHyOo3sbOwjrlpZvYEL7p3LtJCukHWH4UcsLhKJdydHfJzmdFfoekMYS+nT37ERkzf
 0rCTPhf5iQsI+SEUQesHxhBVXx8R1JBvPa2i9vXmtQolUM/sfcS2LAVKw5XtSEgGA84M
 StcjrVVpdfFOR+Ujc8e7/XiM+u77pfUk7XJHB3N2eGMoW101ZYd2Hlho6ubB2JEvHsR2
 6JSHXZhceijsBrmqu1tPo6/poK7BpRgKOziiKn0eHJR0W8jnFkLjznAJT8Z0U/OSAEwq
 HfeI1JAZG8ABqj6axeKlnbFcCVJngNbNs22NekEslNFW/7Pl2qDhL7cwktn53RRmPg3S
 2hkw==
X-Gm-Message-State: AOAM530mwMPu/JC0iIT/YPCyNBq3/ZWXG0n0iDkPLAclmfIMwCHvnZzR
 udGGwv7c/trnvyoI19wePT0=
X-Google-Smtp-Source: ABdhPJxIR04MB+SRSlDEh2QuBAilY6mUu/k33gVIw50wl43OjPvBbBra8S6EnaVPrflTT7VaU+R7WQ==
X-Received: by 2002:aa7:9ab0:0:b029:13c:1611:66bb with SMTP id
 x16-20020aa79ab00000b029013c161166bbmr1289978pfi.6.1601072707097; 
 Fri, 25 Sep 2020 15:25:07 -0700 (PDT)
Received: from jesse-ThinkPad-T570.lan (50-39-107-76.bvtn.or.frontiernet.net.
 [50.39.107.76])
 by smtp.gmail.com with ESMTPSA id q15sm169343pje.29.2020.09.25.15.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 15:25:06 -0700 (PDT)
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Sep 2020 15:24:44 -0700
Message-Id: <20200925222445.74531-9-jesse.brandeburg@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
References: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 8/9] sfc: fix kdoc warning
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
Cc: Edward Cree <ecree@solarflare.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

kernel-doc script as used by W=1, is confused by the macro
usage inside the header describing the efx_ptp_data struct.

drivers/net/ethernet/sfc/ptp.c:345: warning: Function parameter or member 'MC_CMD_PTP_IN_TRANSMIT_LENMAX' not described in 'efx_ptp_data'

After some discussion on the list, break this patch out to
a separate one, and fix the issue through a creative
macro declaration.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Edward Cree <ecree@solarflare.com>
---
v3: unchanged, but it should be noted that the kernel-doc script
    should be fixed by someone smarter than me, to not complain
    about the original code.
v2: split this patch out and used custom fix to work around
    kernel-doc script.
---
 drivers/net/ethernet/sfc/mcdi.h | 1 +
 drivers/net/ethernet/sfc/ptp.c  | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/sfc/mcdi.h b/drivers/net/ethernet/sfc/mcdi.h
index ef6d21e4bd0b..69c2924a147c 100644
--- a/drivers/net/ethernet/sfc/mcdi.h
+++ b/drivers/net/ethernet/sfc/mcdi.h
@@ -190,6 +190,7 @@ void efx_mcdi_sensor_event(struct efx_nic *efx, efx_qword_t *ev);
  * 32-bit-aligned.  Also, on Siena we must copy to the MC shared
  * memory strictly 32 bits at a time, so add any necessary padding.
  */
+#define MCDI_TX_BUF_LEN(_len) DIV_ROUND_UP((_len), 4)
 #define _MCDI_DECLARE_BUF(_name, _len)					\
 	efx_dword_t _name[DIV_ROUND_UP(_len, 4)]
 #define MCDI_DECLARE_BUF(_name, _len)					\
diff --git a/drivers/net/ethernet/sfc/ptp.c b/drivers/net/ethernet/sfc/ptp.c
index 2e8c4569f03b..aae208fe6b6e 100644
--- a/drivers/net/ethernet/sfc/ptp.c
+++ b/drivers/net/ethernet/sfc/ptp.c
@@ -326,7 +326,7 @@ struct efx_ptp_data {
 	struct work_struct pps_work;
 	struct workqueue_struct *pps_workwq;
 	bool nic_ts_enabled;
-	_MCDI_DECLARE_BUF(txbuf, MC_CMD_PTP_IN_TRANSMIT_LENMAX);
+	efx_dword_t txbuf[MCDI_TX_BUF_LEN(MC_CMD_PTP_IN_TRANSMIT_LENMAX)];
 
 	unsigned int good_syncs;
 	unsigned int fast_syncs;
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
