Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D362EB2FB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70EA187264;
	Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-b-ezYK9fCG; Tue,  5 Jan 2021 19:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AA2C87257;
	Tue,  5 Jan 2021 19:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22EC21BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C83F86F93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gqp-nKj3zyzU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 545FE87248
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:57 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id dk8so1929988edb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eVeK9xT+cQg4LNXHEMfEbDRIq/x+/jlGFuxcqUdAXkk=;
 b=jcC1h1LA3LIffEisBnCLmI474BqldfIodx219oNGc+tt7jVCAeTtqKvTzzBz9wGywY
 xLXZnkXKRb4tJyGv2FSzJHQe3VCsEwbeyxT8AM+ZiOvrAmuwX60JfOgfKjjpTrCSdR17
 31gEckmvlt5ym/S4IPYsGKaPpRfbE8UmicBunfKEp+VmZp+4a4khM6JGxjI3Hp6mfIJ8
 SBgCA6Ud37X2fK6DaSkslK97YsA56gd1r+QXOt2owRbKPq8OTBsc1SvCxnroBUNP6LFZ
 KYUhIkh6CgrLu0+wPKq4g6GQqq79w3dVBQd9zkObnAhpZI5YaBcR4QNJ4qwqV8rd68uY
 AMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVeK9xT+cQg4LNXHEMfEbDRIq/x+/jlGFuxcqUdAXkk=;
 b=iMSbDtr8cxGh2SIaO7QY/jWou6Qj6Tz8qptTPmbL/qk4GNQPy90yaYfmiPXrFD+fg2
 Bb6SmRn8sDwSsHCUBgoyIvJRHnkTRLgNtUoqV6zc+8aDl1wKIdpmiZTYnWwHHT0ba6xV
 1Tge9XZm+F7WNta0SZOKoeNv/e+Kvc/+HHUGhvYouubj/jSKullej/pq5tJF06rUjC/6
 20O7A3ipplF1kpjExM8MQ5TsuJwtQO6OhJB9tQSBZbOUNnby03ZxqvR3ecVXJ52Ckqye
 Ud7O71w2UpP7I5tAbirc65L1blZd9vvreqPqBDmtU98OUqfVFp6AydUSB4n1sSqm3DI1
 yjmA==
X-Gm-Message-State: AOAM533EI2AcHB/DhDIglr8e8QpctgY809N6/QexO1nXR6jP95yWxREl
 F5LM63g45xh5ILcLMsb8GB4=
X-Google-Smtp-Source: ABdhPJywzGOkFcZAVkyk8PQ8M2oMIBob7kn/MLt8bOAZoMi0V7lOOqZiCgYYmkEvgxwjnb5ltoYSHw==
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr1249282edv.14.1609873255865; 
 Tue, 05 Jan 2021 11:00:55 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:55 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:56 +0200
Message-Id: <20210105185902.3922928-7-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 06/12] parisc/led:
 reindent the code that gathers device statistics
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 George McCollister <george.mccollister@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Gospodarek <andy@greyhouse.net>, dev@openvswitch.org,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Veaceslav Falico <vfalico@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Arnd Bergmann <arnd@arndb.de>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Benc <jbenc@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Florian Westphal <fw@strlen.de>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

The standard in the Linux kernel is to use one tab character per
indentation level.

Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-parisc@vger.kernel.org
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/parisc/led.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/parisc/led.c b/drivers/parisc/led.c
index 36c6613f7a36..3cada632a4be 100644
--- a/drivers/parisc/led.c
+++ b/drivers/parisc/led.c
@@ -359,16 +359,19 @@ static __inline__ int led_get_net_activity(void)
 	/* we are running as a workqueue task, so we can use an RCU lookup */
 	rcu_read_lock();
 	for_each_netdev_rcu(&init_net, dev) {
-	    const struct rtnl_link_stats64 *stats;
-	    struct rtnl_link_stats64 temp;
-	    struct in_device *in_dev = __in_dev_get_rcu(dev);
-	    if (!in_dev || !in_dev->ifa_list)
-		continue;
-	    if (ipv4_is_loopback(in_dev->ifa_list->ifa_local))
-		continue;
-	    stats = dev_get_stats(dev, &temp);
-	    rx_total += stats->rx_packets;
-	    tx_total += stats->tx_packets;
+		const struct rtnl_link_stats64 *stats;
+		struct rtnl_link_stats64 temp;
+		struct in_device *in_dev = __in_dev_get_rcu(dev);
+
+		if (!in_dev || !in_dev->ifa_list)
+			continue;
+
+		if (ipv4_is_loopback(in_dev->ifa_list->ifa_local))
+			continue;
+
+		stats = dev_get_stats(dev, &temp);
+		rx_total += stats->rx_packets;
+		tx_total += stats->tx_packets;
 	}
 	rcu_read_unlock();
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
