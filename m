Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1FF3369AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:35:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4007347141;
	Thu, 11 Mar 2021 01:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dH9lD4W8bMcw; Thu, 11 Mar 2021 01:35:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 161C342D9F;
	Thu, 11 Mar 2021 01:35:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 440001BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0A6B600C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lzeqkBqM-qU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2381960654
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:22 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id m186so2461873qke.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9h5JIDXWaMuHtL046jz2eeifrcDZUcEjclder2vbKCw=;
 b=bJqzqKWhqoWa6NNvwAfcvTw7nHfiu76+um6FzbiGsTQnOy7tZ550I813A8ukq69atc
 2u0+3tbja3zfK0gXm9iuOYure2m1l0TIe26JJ5S2Dx1MjCUBbv9xDBGD2l5v8dmN6AD0
 6WEmTK2584gnERQ0h88hIjTT3sLjES9tfE4yxjBueKJuIs+dLNa4/m862ESEr+hK4B91
 fZ6J2mMYJtM1MhsY9O/BHc+4rAKrpAhb+JOTo7K9QJm7+Oh/hRDT6rbm2ZOtxDN9O+m1
 FQpxoox4ifXk1+dyyT0rboyrMDr8F2AXpHEsXH/Js9TIdef0CYbvDqa+A1PXg7hCFgAG
 QTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9h5JIDXWaMuHtL046jz2eeifrcDZUcEjclder2vbKCw=;
 b=S8426rwUWjAhmD9RWGPNx08XMnV3OAy9/A/Pk3ujaS744IphooyR/CQYJ0WzKi0xfv
 uHjU91RmlWUtGHNcZmhQzXa/+Dl89U7U5U/3YmrR6rvaQXLvvtE7IqNpGwuukPfjPPp7
 Fdc/sa8BwxXaoF+QuC1bwlmpYmFRqKyYf2NiSOrnF6f1mx9GjiBpCpnA+YBO5yrN3o90
 SBtouqHJEtHVF6GnEAHQSxrcI+VRG01IGmsE+4hlA+fTHOqJ9EGlzSVS47Wq4WL/YNOD
 zVw8zBksGamo94fgD4nVdq9bwJp8K+hyLpZAPTBm93wclbBTYqqPCbCCFHl8PWpDh8qf
 qZCA==
X-Gm-Message-State: AOAM533lEWImJFPhvz0SL49xDtTz7YASChWqInoMbcmg24SJfNDGIELR
 w+2NW5xORkRp+psZXNS2aak=
X-Google-Smtp-Source: ABdhPJxcQI0alljtDMFhQQkSUfxARtssUyRqWAPlDHYhJM3hrVLJop7YeewZjLrwQstRQqCwWJ61Og==
X-Received: by 2002:a05:620a:4445:: with SMTP id
 w5mr5532438qkp.330.1615426520877; 
 Wed, 10 Mar 2021 17:35:20 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id p90sm749923qtd.66.2021.03.10.17.35.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:20 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:17 -0800
Message-ID: <161542651749.13546.3959589547085613076.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 01/10] ethtool: Add common function
 for filling out strings
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
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
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
index ec4cd3921c67..0493f13b2b20 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -571,4 +571,13 @@ struct ethtool_phy_ops {
  */
 void ethtool_set_ethtool_phy_ops(const struct ethtool_phy_ops *ops);
 
+/**
+ * ethtool_gsprintf - Write formatted string to ethtool string data
+ * @data: Pointer to start of string to update
+ * @fmt: Format of string to write
+ *
+ * Write formatted string to data. Update data to point at start of
+ * next string.
+ */
+extern __printf(2, 3) void ethtool_gsprintf(u8 **data, const char *fmt, ...);
 #endif /* _LINUX_ETHTOOL_H */
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 24783b71c584..44ac73780b6e 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -1844,6 +1844,18 @@ static int ethtool_get_strings(struct net_device *dev, void __user *useraddr)
 	return ret;
 }
 
+__printf(2, 3) void ethtool_gsprintf(u8 **data, const char *fmt, ...)
+{
+	va_list args;
+
+	va_start(args, fmt);
+	vsnprintf(*data, ETH_GSTRING_LEN, fmt, args);
+	va_end(args);
+
+	*data += ETH_GSTRING_LEN;
+}
+EXPORT_SYMBOL(ethtool_gsprintf);
+
 static int ethtool_phys_id(struct net_device *dev, void __user *useraddr)
 {
 	struct ethtool_value id;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
