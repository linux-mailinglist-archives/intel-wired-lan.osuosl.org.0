Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 179C4163552
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 22:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59D6585C5E;
	Tue, 18 Feb 2020 21:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jd4P6-lJzuOu; Tue, 18 Feb 2020 21:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90B2285D3D;
	Tue, 18 Feb 2020 21:46:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 740121BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F8188591B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SJQnedoVMBw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 20:16:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AEB988516C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 20:16:10 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z3so25594026wru.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 12:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bFMbK7LyKRnHu/ZMhuK+JeN3P8TImavRX9bgAiZfMtk=;
 b=QXTAl6KeEOAmHWG0qH4S6XmPJj4USYFkCIZ78dT/rmi09maEvpVOzZ//BmyS1kesW5
 XI0TPXmZ4qZ31jlmuQf0h92ss4SwkWJD0CejHK2mP4ontx77GV16UeS5NSj1hJT9DdLM
 7Jp/3ahcbfRwH6xUmZPVnPH/+DZFAaM5OFoXpCQUaqd7lr2KciD2f1UX97+D9esFaXeb
 MHqm3+rmkAeECR3RkLCiE3l94YF4S6XbViZ/ur1ZSwK6SZ4lbKgVBkwNoCkeZWI37kMC
 WmvS9n0GQIDsgnLwBpALegvqZ7pIl5NjrlFPcg6hlF7QDFnkxvHaaQKfgGjjT9VCyVBW
 ytag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bFMbK7LyKRnHu/ZMhuK+JeN3P8TImavRX9bgAiZfMtk=;
 b=uga1JBhEt9xvUTMwNOvC+Af0okvN/oSh7kYFjJx4hQrfxY9/J7TAJpxo7SJl5ei+1C
 sUQnsRQjlayZZ0/CvM5OPPiNQ7E7cVv0NKkSR+AwqYAPexPO3TajvP1MQRdcmtl/CzZj
 bAn+d5lBgr4UqCPEUJwv4iiAgHhfPywTmJBxDe1TNjDtgNDz2knpikJ8TqfAjMj2punb
 QoZ2QL+udmBTgLCfD9lpHJ73cFV9GPw6BJC/LBWKjE4AjlR51EU6oGW9B3mf3y9Y+ZP7
 bDSFJlHa+mFrt43SbU1Z59BU1vAmyG0bxgHnbUT/7ZLOPaJU+v5WCSvZ7/ZZN47PvD2o
 vpVw==
X-Gm-Message-State: APjAAAUvLrjsgZyC44uNTEgI184Sg/y2B9GpVnBZlWZjfHeemhJNDSY7
 GyD8GCdAL026RPwJHFoJN9w=
X-Google-Smtp-Source: APXvYqx0o7TLaD/TAtGQo3xJ8sCR+Q65dDtECgJ0RmmNYCrQiqxI1MUf49p/dryUzt3jnppRFGzHDQ==
X-Received: by 2002:adf:f28f:: with SMTP id k15mr30535210wro.230.1582056968961; 
 Tue, 18 Feb 2020 12:16:08 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id p26sm4590202wmc.24.2020.02.18.12.16.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 12:16:08 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: David Miller <davem@davemloft.net>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Jay Cliburn <jcliburn@gmail.com>, Chris Snook <chris.snook@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, Christian Benvenuti <benve@cisco.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>, Shannon Nelson
 <snelson@pensando.io>, Pensando Drivers <drivers@pensando.io>,
 Timur Tabi <timur@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 Ronak Doshi <doshir@vmware.com>, "VMware, Inc." <pv-drivers@vmware.com>
References: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
Message-ID: <82ba1653-6a88-edf2-b22f-938b64e46655@gmail.com>
Date: Tue, 18 Feb 2020 20:56:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 21:46:38 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 01/13] net: core: add helper
 tcp_v6_gso_csum_prep
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
 linux-hyperv@vger.kernel.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Several network drivers for chips that support TSO6 share the same code
for preparing the TCP header, so let's factor it out to a helper.
A difference is that some drivers reset the payload_len whilst others
don't do this. This value is overwritten by TSO anyway, therefore
the new helper resets it in general.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 include/net/ip6_checksum.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/net/ip6_checksum.h b/include/net/ip6_checksum.h
index 7bec95df4..27ec612cd 100644
--- a/include/net/ip6_checksum.h
+++ b/include/net/ip6_checksum.h
@@ -76,6 +76,15 @@ static inline void __tcp_v6_send_check(struct sk_buff *skb,
 	}
 }
 
+static inline void tcp_v6_gso_csum_prep(struct sk_buff *skb)
+{
+	struct ipv6hdr *ipv6h = ipv6_hdr(skb);
+	struct tcphdr *th = tcp_hdr(skb);
+
+	ipv6h->payload_len = 0;
+	th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
+}
+
 #if IS_ENABLED(CONFIG_IPV6)
 static inline void tcp_v6_send_check(struct sock *sk, struct sk_buff *skb)
 {
-- 
2.25.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
