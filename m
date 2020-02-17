Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C0161EDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 03:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15B2684EB0;
	Tue, 18 Feb 2020 02:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPSBslenA3HP; Tue, 18 Feb 2020 02:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2546F84E68;
	Tue, 18 Feb 2020 02:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5101BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A2E42046E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZ-KvJ0CS8K3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2020 21:40:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F72D2042B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:40:14 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id m16so21456381wrx.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 13:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1aa7piJglqlHorzP0nTQ8z4WjoZxJmZqjfY8eaEkqu4=;
 b=tSRnrM/ojHaLMFsnjVlQrUwR6Gx/Zy6c3bJmmG8RXPmNT4t8iDXR01c5nf2DDk6Rra
 +95rTi2xqi2cvZgckQOl1A277GeLfG45IMp4aOLLygAN7UrkR3ZuNtOOTwygRv0HJunL
 ONfWQMrFYdki9B3gbYg3Fm1mXBY128L5Oj7GyobUsxXrRWefKBD1RPu1lvoYPOTqmz44
 G1PcXWLvX/H74ZNaUuGEmAhjvBM8gipj5LLiM+WAUR5HJVpZVyO6Z1fjY1XSqnW6bJLc
 bTzwRq5cYjFmw9kUwnECmPu6/tJDhu9H6sQD2ZGGSvyJ9g8KmqAhWP+dmUnTAEjI67Tu
 EK9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1aa7piJglqlHorzP0nTQ8z4WjoZxJmZqjfY8eaEkqu4=;
 b=Xw20SaJIGevCRXrZe+kQpdqmK0iSZHbPeQQlpUGWNi9zwioLKIqA0xYSFyKqvVxtpj
 O2/A0sfEmozXpiJL5Bc60BSECz8EIpx0CuG69oU2hSZyEazhvqhOixqOyBILS6Rw60j2
 UTfJLHzcr4rSVGHn7lbbh2WSoplMz0OChEdlPvciKIEjIcaSC8y9TiqdydOfkYRS9GL/
 ImEfn5TV9sj7dIfuUCR/X1HK8BOO6RgYDcBOOuaNAZ0VGv7e6tSOucoapXkzcE0WJvww
 qkhfWEfEFziatJ9uZQmbD7bnf8C4Ph4/817l86tENoZIjHS/hZv2QJqQmENyYXV5tb1I
 F0nQ==
X-Gm-Message-State: APjAAAX6nH/JN/lThiX+rHO2dhxwK4tNiVSREk063aJ2mB9/4H4ff4Qz
 Co0Hw+KL+frO47XmfzYmegE=
X-Google-Smtp-Source: APXvYqxpDuP1Xx08lq2ks3CZNSNGM4Ym+opjJUePriCfoPQEobPoub64oafkq5C/kkZLur1HGJAXKA==
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr25600402wrn.292.1581975612802; 
 Mon, 17 Feb 2020 13:40:12 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:41c6:31a6:d880:888?
 (p200300EA8F29600041C631A6D8800888.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:41c6:31a6:d880:888])
 by smtp.googlemail.com with ESMTPSA id t9sm2955065wrv.63.2020.02.17.13.40.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 13:40:12 -0800 (PST)
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
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
Message-ID: <9fdc5f0c-fdf0-122e-48a5-43ff029cf8d9@gmail.com>
Date: Mon, 17 Feb 2020 22:40:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 02:10:01 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/3] net: core: add helper
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
for preparing the TCP header. A difference is that some reset the
payload_len whilst others don't do this. Let's factor out this common
code to a new helper.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/net/ip6_checksum.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/net/ip6_checksum.h b/include/net/ip6_checksum.h
index 7bec95df4..ef0130023 100644
--- a/include/net/ip6_checksum.h
+++ b/include/net/ip6_checksum.h
@@ -76,6 +76,18 @@ static inline void __tcp_v6_send_check(struct sk_buff *skb,
 	}
 }
 
+static inline void tcp_v6_gso_csum_prep(struct sk_buff *skb,
+					bool clear_payload_len)
+{
+	struct ipv6hdr *ipv6h = ipv6_hdr(skb);
+	struct tcphdr *th = tcp_hdr(skb);
+
+	if (clear_payload_len)
+		ipv6h->payload_len = 0;
+
+	th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
+}
+
 #if IS_ENABLED(CONFIG_IPV6)
 static inline void tcp_v6_send_check(struct sock *sk, struct sk_buff *skb)
 {
-- 
2.25.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
