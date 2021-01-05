Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6632EB302
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4FCF02035B;
	Tue,  5 Jan 2021 19:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z120KFTP5HSz; Tue,  5 Jan 2021 19:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE3A920456;
	Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF0E1BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 056F6203F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcZGujYeIbXj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by silver.osuosl.org (Postfix) with ESMTPS id C154E2035B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:08 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id j16so1942301edr.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o9S5VetFLcZ6A9nQu4WMhm39cSlo6GMb/Zh6iH2PAWo=;
 b=YWokJ4VPJ94sBnkT+J4C7IXLt2kDzNBiTghXcM82L4KlMYRDSQqifLNZOGQ5Ut9y9y
 ZYiZ82rB9AIHdypa4FsXAC26qJoxHElT0kBMRGUjrsc29JcTFDlY94P4nE2dlq8lkW5p
 RObbbo/amQfqkKgkEHtgtEG6GmOiOS8vXyggValuLbpZUJLcOgUnstTIgSnT4Cl+PF0r
 M7LICV5lt5TZgUn1E3t7REd9NPVkyHWhDTfuYNvSIgwZAWGeCko00gqk4ZhFi44rujaV
 0754bHfrxdO5Y9swDHvq9Ejhryrsc5R+dyJJGPIwMT7udP2PqylpCYgrjVtcl5BRYJ9I
 0TPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o9S5VetFLcZ6A9nQu4WMhm39cSlo6GMb/Zh6iH2PAWo=;
 b=qUJiG/Nzcac06Oj/gjIxIPDDgAyQPhNTSL5q+SEnu+hAOSyL0SU1FcPUgtXZefxCgm
 DGi/c8n2oItSnib4w0yMimer41NMsxwWS1YasrVGtWfhCtPBX6SNg7LFd0ZLzE6cfqW2
 hjqhUR1aMsBJdMNnwWMaBzjUS9hrQADsxwSQs+DQXFY3kmIUGAfLoDFx/e8b2qd/+0o1
 AJiF3wnU6bbNZBZiCP74Gq8kZHMPFv4yDnNR42IokWDrSig9oTUBfBfEBjRZIfAJH64w
 TrbQEHAE9sGtfrIVR9BcSi660vboNajBjfuCA1013y8zcHKibGKbBB9fZSNY0GMjYqSN
 4pUw==
X-Gm-Message-State: AOAM530TgzrO4/kSY9wZ/r6uIVOUAix1UQXPIYrnsbmbSwh6xWFXecDU
 +C+iR17uokchBDOHMcJSjXU=
X-Google-Smtp-Source: ABdhPJxjE2k61m92yxHS+AwU9WB9vDDtGHYZ1kuHbwT7yr8ORT7g6VgNhr8Kz8oPy6UDV4hKTq121A==
X-Received: by 2002:a05:6402:310f:: with SMTP id
 dc15mr1186577edb.225.1609873267285; 
 Tue, 05 Jan 2021 11:01:07 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:01:06 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:59:01 +0200
Message-Id: <20210105185902.3922928-12-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 11/12] net: mark
 ndo_get_stats64 as being able to sleep
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

Now that all callers have been converted to not use atomic context when
calling dev_get_stats, it is time to update the documentation and put a
notice in the function that it expects process context.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 Documentation/networking/netdevices.rst | 8 ++++++--
 Documentation/networking/statistics.rst | 9 ++++-----
 net/core/dev.c                          | 2 ++
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/networking/netdevices.rst b/Documentation/networking/netdevices.rst
index 5a85fcc80c76..944599722c76 100644
--- a/Documentation/networking/netdevices.rst
+++ b/Documentation/networking/netdevices.rst
@@ -64,8 +64,12 @@ ndo_do_ioctl:
 	Context: process
 
 ndo_get_stats:
-	Synchronization: dev_base_lock rwlock.
-	Context: nominally process, but don't sleep inside an rwlock
+	Synchronization:
+		none. netif_lists_lock(net) might be held, but not guaranteed.
+		It is illegal to hold rtnl_lock() in this method, since it will
+		cause a lock inversion with netif_lists_lock and a deadlock.
+	Context:
+		process
 
 ndo_start_xmit:
 	Synchronization: __netif_tx_lock spinlock.
diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
index 234abedc29b2..ad3e353df0dd 100644
--- a/Documentation/networking/statistics.rst
+++ b/Documentation/networking/statistics.rst
@@ -155,11 +155,10 @@ Drivers must ensure best possible compliance with
 Please note for example that detailed error statistics must be
 added into the general `rx_error` / `tx_error` counters.
 
-The `.ndo_get_stats64` callback can not sleep because of accesses
-via `/proc/net/dev`. If driver may sleep when retrieving the statistics
-from the device it should do so periodically asynchronously and only return
-a recent copy from `.ndo_get_stats64`. Ethtool interrupt coalescing interface
-allows setting the frequency of refreshing statistics, if needed.
+Drivers may sleep when retrieving the statistics from the device, or they might
+read the counters periodically and only return in `.ndo_get_stats64` a recent
+copy collected asynchronously. In the latter case, the ethtool interrupt
+coalescing interface allows setting the frequency of refreshing statistics.
 
 Retrieving ethtool statistics is a multi-syscall process, drivers are advised
 to keep the number of statistics constant to avoid race conditions with
diff --git a/net/core/dev.c b/net/core/dev.c
index d48b75479b3e..6b7cdf8ab875 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10389,6 +10389,8 @@ void dev_get_stats(struct net_device *dev, struct rtnl_link_stats64 *storage)
 {
 	const struct net_device_ops *ops = dev->netdev_ops;
 
+	might_sleep();
+
 	if (ops->ndo_get_stats64) {
 		memset(storage, 0, sizeof(*storage));
 		ops->ndo_get_stats64(dev, storage);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
