Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F692EB2FE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CDD487275;
	Tue,  5 Jan 2021 19:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ol3yY5qJt44w; Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C8B887258;
	Tue,  5 Jan 2021 19:02:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 504A51BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BCAA87248
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id trcIYwcQoBql for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6115D86F93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:59 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id ga15so1873466ejb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pumKytNb6HfM0fji93xr5G/BhQEYT7JsjEW2ZBlR5iU=;
 b=JEckJaQsFgR2VLSNLG5i7z0+KlnFs83ZYxvR0iQpvNPQVQcSticPBwdGCbSF9D1XDP
 faMVx76guT6YBo+oghMniuv45XGzCI9kOXx34jKAUzWzgH3l2lWQ8qRYGB6JP12yfGdf
 PXk1Uyi+mFeT3ptjmyVyAmzEG8s03OO8PMaQEcI5fSbhi+CZdoBgQozSyOlIBYee4ka/
 TuQC8hW7oOtFk41zzRi7d5iy1v8jOvtmUcz3y0ARCtdpxBwKE5wnx5JZLZIicLXqTBHJ
 Aqa1KrvCJBQmuvF7CwMtnx1arxBqIA8R27l2ApWKEoYhQLef8w9qWcrMbb+cWzRe4dls
 E77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pumKytNb6HfM0fji93xr5G/BhQEYT7JsjEW2ZBlR5iU=;
 b=nvOK0W/r7AoOLPlLkNMhitEIUCv/T8qXLozHp4wWNSsYnmj5RzeAODQl7NkhsjA1nr
 n1byN+H17X2A7QCOT9mS0Fhg05Uk6bBdrow+x8QEFGXytkEvLVnqHvWtcmZ/R/LUlfrr
 lMkFl6m28iOATZ0YRoce539Ngw+GQbXGivCgTR0zgGCUZpN1FFWE6ndGYqj3RGcMvL+Q
 9Ui/2Zs0r3P+RWgaBdQCH6CfN7WpYpMx86RxRY7xFkIth+RXwP+DqqhiToczXw9BjvkV
 pFwZaJClDDjcX1n/jknV/zGF/ZTH7wkAQp2Mr6nKPxa/gUIxWxsjREVApg3BYbhCeTIX
 Lxqw==
X-Gm-Message-State: AOAM531avdL47Oip/l2fOa1Tz66EzvByvrLCoKSFXp6i9HKZWUajx7Xd
 KQ86KRh5RrRnRfoCSPBpcRw=
X-Google-Smtp-Source: ABdhPJz+1ICzC5RVM3oZs0oQoaJmiaftG0zPzA6tae5qdGfc+GpxdTiRp0F9FQexln0n4DdvvvIthg==
X-Received: by 2002:a17:907:d10:: with SMTP id
 gn16mr478354ejc.496.1609873257847; 
 Tue, 05 Jan 2021 11:00:57 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:57 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:57 +0200
Message-Id: <20210105185902.3922928-8-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 07/12] parisc/led: hold
 the netdev lists lock when retrieving device statistics
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

In the effort of making .ndo_get_stats64 be able to sleep, we need to
ensure the callers of dev_get_stats do not use atomic context.

The LED driver for HP-PARISC workstations uses a workqueue to
periodically check for updates in network interface statistics, and
flicker when those have changed (i.e. there has been activity on the
line). Ignoring the fact that this driver is completely duplicating
drivers/leds/trigger/ledtrig-netdev.c, there is an even bigger problem.
Now, the dev_get_stats call can sleep, and iterating through the list of
network interfaces still needs to ensure the integrity of list of
network interfaces. So that leaves us only one locking option given the
current design of the network stack, and that is the netns mutex.

Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-parisc@vger.kernel.org
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/parisc/led.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/parisc/led.c b/drivers/parisc/led.c
index 3cada632a4be..c8c6b2301dc9 100644
--- a/drivers/parisc/led.c
+++ b/drivers/parisc/led.c
@@ -38,7 +38,6 @@
 #include <linux/ctype.h>
 #include <linux/blkdev.h>
 #include <linux/workqueue.h>
-#include <linux/rcupdate.h>
 #include <asm/io.h>
 #include <asm/processor.h>
 #include <asm/hardware.h>
@@ -355,25 +354,29 @@ static __inline__ int led_get_net_activity(void)
 	int retval;
 
 	rx_total = tx_total = 0;
-	
-	/* we are running as a workqueue task, so we can use an RCU lookup */
-	rcu_read_lock();
-	for_each_netdev_rcu(&init_net, dev) {
+
+	/* we are running as a workqueue task, so we can sleep */
+	netif_lists_lock(&init_net);
+
+	for_each_netdev(&init_net, dev) {
+		struct in_device *in_dev = in_dev_get(dev);
 		const struct rtnl_link_stats64 *stats;
 		struct rtnl_link_stats64 temp;
-		struct in_device *in_dev = __in_dev_get_rcu(dev);
 
-		if (!in_dev || !in_dev->ifa_list)
+		if (!in_dev || !in_dev->ifa_list ||
+		    ipv4_is_loopback(in_dev->ifa_list->ifa_local)) {
+			in_dev_put(in_dev);
 			continue;
+		}
 
-		if (ipv4_is_loopback(in_dev->ifa_list->ifa_local))
-			continue;
+		in_dev_put(in_dev);
 
 		stats = dev_get_stats(dev, &temp);
 		rx_total += stats->rx_packets;
 		tx_total += stats->tx_packets;
 	}
-	rcu_read_unlock();
+
+	netif_lists_unlock(&init_net);
 
 	retval = 0;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
