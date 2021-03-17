Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2705233E2A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76F806F502;
	Wed, 17 Mar 2021 00:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBIFKvfgT6_O; Wed, 17 Mar 2021 00:30:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70F7160688;
	Wed, 17 Mar 2021 00:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFFE41BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF7E7431C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kpPS3H70wFYF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:30:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E47AD4304B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:30:40 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id n24so7089666qkh.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=zA5IcSkZdzMYjmL0nkp46xqZGTradm6C/26ke9+ROTc=;
 b=TpLoEjdNa97hWFKfqofPTdN001mZvlLvJEb9AGWHDzNqKHRH5Asbyb1wnUMS0Qh/QD
 rShQiIiMBtMHkHMhvQ8KLkIRZ525HAx/fO6TOLi9y4g6F00DnZM12OpmUtuzP57sx6RO
 r7gV0iiDbE6R4m7h6AeWl8ch2ovMZWV1RttwghvVz153EZ541qxskwZ5oZKF8dB8exuA
 uTpjRdSOfqYx4SJ14UnX6z1+smrmiKC/Aq87unUek6xQvrdTbncG6Z92V1LaDYMxao9i
 awTRXg2wUxMJUz08CQmK6tcf0wl2yQCqUlgKOja23nqLIqW5nClAhb54xxQjrUqcEysj
 FX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zA5IcSkZdzMYjmL0nkp46xqZGTradm6C/26ke9+ROTc=;
 b=XVxUc9TuWXUZNPxQV6nUb2BkTV1IuHQMhOtl+fyds6ihoIQ5AgWDOxJymKBeWEKn8b
 rVEpeFkMfhBzv+ig56kCiUVOGaX9D9R7PWWfE6mmhEt3QBQ+ybu59mwPr3ZMgkL66osM
 AMp7j1IiFi8+aQQ7VM3QhoqyqSymIP7rXvqi2N9c8qxhOX7s0CelsAbFhp8MVHdkyZC+
 s9lRs1p3owEA5ihRKj748Q2Bak3RFpVeITNCX5McJs9qlKd/E86vYJ1UGc/nQXCoS6RM
 eEVP5sQMaevhckurnSG7UKAdgEsBL7XA5Vt/U1crovqgmotE5bmV/mr0UiVyeDyKlqYt
 gkYA==
X-Gm-Message-State: AOAM530GUN99n9VIYg+nZZMruStYHsCxN8DSiJqdke0OeY2lg2FE95SH
 f8ds4RW9a5jm+mmd0glSURQ=
X-Google-Smtp-Source: ABdhPJytZ3Tsacfz9IW64ZwGkAjrYyUIBGH0J6VR40u4Q/xcv0EwU/SgPRPEyBAZtDewReiQjYKqiw==
X-Received: by 2002:a05:620a:214a:: with SMTP id
 m10mr1973501qkm.372.1615941039723; 
 Tue, 16 Mar 2021 17:30:39 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id f27sm15805825qkh.118.2021.03.16.17.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:30:39 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:30:36 -0700
Message-ID: <161594103620.5644.13159023537924919629.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 01/10] ethtool: Add common
 function for filling out strings
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Add a function to handle the common pattern of printing a string into the
ethtool strings interface and incrementing the string pointer by the
ETH_GSTRING_LEN. Most of the drivers end up doing this and several have
implemented their own versions of this function so it would make sense to
consolidate on one implementation.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 include/linux/ethtool.h |    9 +++++++++
 net/ethtool/ioctl.c     |   12 ++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index ec4cd3921c67..3583f7fc075c 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -571,4 +571,13 @@ struct ethtool_phy_ops {
  */
 void ethtool_set_ethtool_phy_ops(const struct ethtool_phy_ops *ops);
 
+/**
+ * ethtool_sprintf - Write formatted string to ethtool string data
+ * @data: Pointer to start of string to update
+ * @fmt: Format of string to write
+ *
+ * Write formatted string to data. Update data to point at start of
+ * next string.
+ */
+extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 24783b71c584..0788cc3b3114 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1844,6 +1844,18 @@ static int ethtool_get_strings(struct net_device *dev, void __user *useraddr)
 	return ret;
 }
 
+__printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...)
+{
+	va_list args;
+
+	va_start(args, fmt);
+	vsnprintf(*data, ETH_GSTRING_LEN, fmt, args);
+	va_end(args);
+
+	*data += ETH_GSTRING_LEN;
+}
+EXPORT_SYMBOL(ethtool_sprintf);
+
 static int ethtool_phys_id(struct net_device *dev, void __user *useraddr)
 {
 	struct ethtool_value id;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
