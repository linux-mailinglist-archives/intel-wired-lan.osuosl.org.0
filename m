Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D51651632BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 21:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91C80204D7;
	Tue, 18 Feb 2020 20:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e7JIoY-OdtSi; Tue, 18 Feb 2020 20:16:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC8E2204CF;
	Tue, 18 Feb 2020 20:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B89DE1BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4B54204C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqwKMilWy3NG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 20:16:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 645C6204C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:16 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id s144so2976786wme.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 12:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VoDwB16SuE+XESOylFdFbMZhtyxQWDEo3Kn2cQMk/Ig=;
 b=XoWNbnGUmMt7KBVCcRP8yGX41WtBvXyiboHO/jy+N3jroImZcunKYAoAuJSra87Q3P
 j2VdKbgAwAqnw6B89KGRGq8M0vgWAsYh1liL1GbMzhZ0f70ywzJutu8dPXtH+kgQJkV4
 FFJxdCmE56e4tCORta8UcnK//R+EzxED0gPkTigLOmzvfuSm3k34HBFq6DtTWJ6ztKYn
 Tko81Rj4CK8oG4qiWLWw5I+A2R08QdV/cvS0cL+Z1ewxeiveY/Ad+mYi5V81DM6HFGBB
 r6iQ3tcDSltQOYu4GZqMN73d6fvb/G3oBDgwnkPoE7ze8eNubuO80ZG05Ajx14vv76p0
 LnnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VoDwB16SuE+XESOylFdFbMZhtyxQWDEo3Kn2cQMk/Ig=;
 b=In/fM8XFwu26yHS1PAfR2BvNy361ZE7iwyUsFr3pt5ttdo7h1XD4q0yaaNpzCLvRv9
 u/YFNLoZj6J8NDhMZoFSgVkW4D10OTRp9wwpULyr8EH3wz1ryrFVu2Pa/2ovEoA/T2KA
 UBaKDT+1lmkZNaBJdtLzD87+USM/0Fp8UsnKeUO4lyEAGY5AuAMNuJhhax4GDK+sO8mr
 YpuYUZ+Eix7DLugAlcdfcgN+uYAtQnus2VMZh3oFeMh1P028BG3Ld/y7aSbSuncD2edo
 SYqToqJH3YdIU+nW9q7oEhasw6mVL51caRrDdEruKlBUXQi4LhOa1iNw+n6dgShxMLnw
 XmUg==
X-Gm-Message-State: APjAAAX9erbguYhkDcHYZ9d+1RKiU90FAjCBPrBDnK+QutOyWgVgK+f0
 gdWq+84xtuSXRJAi5yqDVYl4fyIQ
X-Google-Smtp-Source: APXvYqz0iJyVWhzS3TWEjb0aiPmNZmsAU5SGBiGEo9x49CTL1lE3vcUUYblewvTLfkUE/5/XnzabnA==
X-Received: by 2002:a05:600c:114d:: with SMTP id
 z13mr460488wmz.105.1582056974499; 
 Tue, 18 Feb 2020 12:16:14 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id f1sm7668322wro.85.2020.02.18.12.16.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 12:16:14 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: David Miller <davem@davemloft.net>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>
References: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
Message-ID: <47621909-1b75-e8d1-cf32-857c1601e0af@gmail.com>
Date: Tue, 18 Feb 2020 21:05:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
Content-Language: en-US
Subject: [Intel-wired-lan] [PATCH net-next v2 06/13] e1000(e): use new
 helper tcp_v6_gso_csum_prep
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use new helper tcp_v6_gso_csum_prep in additional network drivers.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 6 +-----
 drivers/net/ethernet/intel/e1000e/netdev.c    | 5 +----
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 2bced34c1..f7103356e 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -2715,11 +2715,7 @@ static int e1000_tso(struct e1000_adapter *adapter,
 			cmd_length = E1000_TXD_CMD_IP;
 			ipcse = skb_transport_offset(skb) - 1;
 		} else if (skb_is_gso_v6(skb)) {
-			ipv6_hdr(skb)->payload_len = 0;
-			tcp_hdr(skb)->check =
-				~csum_ipv6_magic(&ipv6_hdr(skb)->saddr,
-						 &ipv6_hdr(skb)->daddr,
-						 0, IPPROTO_TCP, 0);
+			tcp_v6_gso_csum_prep(skb);
 			ipcse = 0;
 		}
 		ipcss = skb_network_offset(skb);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 0f02c7a5e..74379d2e9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5461,10 +5461,7 @@ static int e1000_tso(struct e1000_ring *tx_ring, struct sk_buff *skb,
 		cmd_length = E1000_TXD_CMD_IP;
 		ipcse = skb_transport_offset(skb) - 1;
 	} else if (skb_is_gso_v6(skb)) {
-		ipv6_hdr(skb)->payload_len = 0;
-		tcp_hdr(skb)->check = ~csum_ipv6_magic(&ipv6_hdr(skb)->saddr,
-						       &ipv6_hdr(skb)->daddr,
-						       0, IPPROTO_TCP, 0);
+		tcp_v6_gso_csum_prep(skb);
 		ipcse = 0;
 	}
 	ipcss = skb_network_offset(skb);
-- 
2.25.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
