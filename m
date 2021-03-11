Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C5C3369B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 02:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D078D4651F;
	Thu, 11 Mar 2021 01:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5lBQhO0QaeUt; Thu, 11 Mar 2021 01:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92C1E45F30;
	Thu, 11 Mar 2021 01:35:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74F2A1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62CAF4651F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CBwfiucL515 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 01:35:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9821D454B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 01:35:53 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 a22-20020a17090aa516b02900c1215e9b33so8251993pjq.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 17:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=gjUKyxfRSZ9KQb0GApNYBSrbkiY1WDSvI3WYH/8KsxA=;
 b=u8cC+tH2OdI23NPwMUfM9q8AtQwkzyfBrjw/U5ZR+DyCtlCTM8RGpEXrj+Tzc9Gl/H
 BajYX7k/hg8P2P3gOfnqmw4FJ9iGMbOU3TlUGJS4dcmSPmXuISyq4ncwTjW66hHvzXmn
 BNqwWzVOmoBsTzgyxCaKANwAO/dgLFb9Jy2UxwhYMptaG/7KyuIr3NLWSCNauVmVr7+N
 PjNcgbdX/qrEsl3L7f271EL9/W/EEq4GrcFikvkfDe4kBzhxwLF0lqQS4ptMQhTh/ovG
 xFkXZOobFv4iES5CEhwc2u7Uv+c5cRyi6BU40BkC1T4HUOy5E3zfOvKEKwxo8cp30LYC
 ktXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gjUKyxfRSZ9KQb0GApNYBSrbkiY1WDSvI3WYH/8KsxA=;
 b=XtRq6qsS/Kq/5okGmUXHN+NixC5e0XOVkGE4BhWPm94pa1UJu58ycY36kAIfE98idW
 5UWXG/MLQCMOLjfSJPUcz/RoW6ZwuKnFJvWoyqCqYKf4651JiKCqjzs7D0H2IM0PJN2H
 Hua2spB+FKN0C9QzhVxK4pBIBzNBtup2L95JyPTm/GFa1fPCbjROveDDH1X9U2+58Sjd
 6MIQ+xpsEg9fPTEMOpq6Jj4edYSelrml82tru+IOxGCRJZH15JyYJGICxdnpbAXb/UJZ
 FdPZBMZZqwRaqKVaG4cCJ7BqvtsSgVFyJkjd+1/Js0xcmMvCP7m6Gcq4Y5QLxFEZzWN/
 aohA==
X-Gm-Message-State: AOAM5332xqU19L3jJo1ArGjTA8Ar3jVw9eiDOR3fDwmhREhE/5TaQP20
 +ncGKIKrF9t4wxKp5eaOU2k=
X-Google-Smtp-Source: ABdhPJzsaBtuYws+WbFc5ViRYd7HYPi/Jf+g7NHj24gJJRj+48fgZ6uhjjM1HaD18w9JcyXgU+j2wA==
X-Received: by 2002:a17:902:8306:b029:e6:125c:1a3a with SMTP id
 bd6-20020a1709028306b02900e6125c1a3amr5836539plb.65.1615426553036; 
 Wed, 10 Mar 2021 17:35:53 -0800 (PST)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id u17sm602970pgl.80.2021.03.10.17.35.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 17:35:52 -0800 (PST)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: kuba@kernel.org
Date: Wed, 10 Mar 2021 17:35:51 -0800
Message-ID: <161542655182.13546.1667822428160833259.stgit@localhost.localdomain>
In-Reply-To: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH 06/10] netvsc: Update driver to use
 ethtool_gsprintf
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

Replace instances of sprintf or memcpy with a pointer update with
ethtool_gsprintf.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/hyperv/netvsc_drv.c |   33 +++++++++++----------------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index 15f262b70489..4e8446a81c0b 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -1612,34 +1612,23 @@ static void netvsc_get_strings(struct net_device *dev, u32 stringset, u8 *data)
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < ARRAY_SIZE(netvsc_stats); i++) {
-			memcpy(p, netvsc_stats[i].name, ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ARRAY_SIZE(netvsc_stats); i++)
+			ethtool_gsprintf(&p, netvsc_stats[i].name);
 
-		for (i = 0; i < ARRAY_SIZE(vf_stats); i++) {
-			memcpy(p, vf_stats[i].name, ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ARRAY_SIZE(vf_stats); i++)
+			ethtool_gsprintf(&p, vf_stats[i].name);
 
 		for (i = 0; i < nvdev->num_chn; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_xdp_drop", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_gsprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_gsprintf(&p, "rx_queue_%u_xdp_drop", i);
 		}
 
 		for_each_present_cpu(cpu) {
-			for (i = 0; i < ARRAY_SIZE(pcpu_stats); i++) {
-				sprintf(p, pcpu_stats[i].name, cpu);
-				p += ETH_GSTRING_LEN;
-			}
+			for (i = 0; i < ARRAY_SIZE(pcpu_stats); i++)
+				ethtool_gsprintf(&p, pcpu_stats[i].name, cpu);
 		}
 
 		break;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
