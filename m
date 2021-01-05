Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EFF2EB2F8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:02:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD74987282;
	Tue,  5 Jan 2021 19:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ytmw3DYFzdhu; Tue,  5 Jan 2021 19:02:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE31687259;
	Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7F21BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86BFA86B17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwDDke2pneVF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9220586B15
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:51 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id 6so1855837ejz.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gXxH7XycmXvUqlZcFwUkejt1OoMf3vVYxjArYoaytKU=;
 b=k7aJk7JSeBhjkdQYFq1o74fF9008dhO4twF9GnhDJvNLCvysN5ghZY0MukuT6Ldx5r
 hjfmUJdABmhBk5KkOrsRUGqy0EapxPCvw1mhmSEDxpRuKg2aFvSKl40pSwwrWuOV3Hk0
 GSN6axVYXCoqvCJoZmhqklr+jXNapYiDSKpCfSYX0D2SPOo2HfWFN1L2/P7hd9Ctrvdr
 yqVyTWk2F8ND0tpE8NarPyhgoS7DeBdv5pU7bmV9kEcmM5lXdfcp1Q8dLMmFyQ4fH3kN
 F4q1o1beQ8QiB4w4k+5OJ7v09Lhd9FnBi26qe9nITMkNxJPdmGZg9xIeStMil/AoyFlW
 eVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gXxH7XycmXvUqlZcFwUkejt1OoMf3vVYxjArYoaytKU=;
 b=VANIxIdpV/AFtOgC5q0xdae0mDbq6DGpavpVloZ0LycRvIbBK5wTQfEgqRmZXdtN+K
 okscPdr3DL4RJhvihuEGmB2x77scFnCrnSkd/do2pCRtrGCVGADOadHB+2k5j+dJ68Eg
 uGnjLaTWAcFRELJW3trv1yipOyQ7rMUmoPzMuWhs9/v/A+qPlExoRSuDznhawee7DrdP
 UT2ew/6ZgZ2VH0eGopeDV74x8U9jMv6qcDGC7DTd2w/KIONrgAYYl0YkadBYDZw+cJs2
 83s/Zfo5q5tmnC9SlDpsldh88N8j+LbV47QG32pfmQzMjXGT/jqwquHIW0ww1PDLZPiV
 a0Rw==
X-Gm-Message-State: AOAM532CEf0TnYIRs/27OlhcO2DXEBW/UMR9znoeAIqmkvaHKiqzS787
 g1rKj3IZwXcPj16YtQwqd14=
X-Google-Smtp-Source: ABdhPJwpcymrW8DoPhCny1stgOREGqkJGxUm2ZUJNyqT3MOT+DQW0wnVqqZPBdtZFvzWUrkJqlkOyw==
X-Received: by 2002:a17:906:e94c:: with SMTP id
 jw12mr524669ejb.56.1609873249982; 
 Tue, 05 Jan 2021 11:00:49 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:49 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:53 +0200
Message-Id: <20210105185902.3922928-4-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 03/12] net: procfs: hold
 netif_lists_lock when retrieving device statistics
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

The /proc/net/dev file uses an RCU read-side critical section to ensure
the integrity of the list of network interfaces, because it iterates
through all net devices in the netns to show their statistics.

To offer the equivalent protection against an interface registering or
deregistering, while also remaining in sleepable context, we can use the
netns mutex for the interface lists.

Cc: Cong Wang <xiyou.wangcong@gmail.com>
Cc: Eric Dumazet <edumazet@google.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/core/net-procfs.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/net/core/net-procfs.c b/net/core/net-procfs.c
index c714e6a9dad4..4784703c1e39 100644
--- a/net/core/net-procfs.c
+++ b/net/core/net-procfs.c
@@ -21,7 +21,7 @@ static inline struct net_device *dev_from_same_bucket(struct seq_file *seq, loff
 	unsigned int count = 0, offset = get_offset(*pos);
 
 	h = &net->dev_index_head[get_bucket(*pos)];
-	hlist_for_each_entry_rcu(dev, h, index_hlist) {
+	hlist_for_each_entry(dev, h, index_hlist) {
 		if (++count == offset)
 			return dev;
 	}
@@ -51,9 +51,11 @@ static inline struct net_device *dev_from_bucket(struct seq_file *seq, loff_t *p
  *	in detail.
  */
 static void *dev_seq_start(struct seq_file *seq, loff_t *pos)
-	__acquires(RCU)
 {
-	rcu_read_lock();
+	struct net *net = seq_file_net(seq);
+
+	netif_lists_lock(net);
+
 	if (!*pos)
 		return SEQ_START_TOKEN;
 
@@ -70,9 +72,10 @@ static void *dev_seq_next(struct seq_file *seq, void *v, loff_t *pos)
 }
 
 static void dev_seq_stop(struct seq_file *seq, void *v)
-	__releases(RCU)
 {
-	rcu_read_unlock();
+	struct net *net = seq_file_net(seq);
+
+	netif_lists_unlock(net);
 }
 
 static void dev_seq_printf_stats(struct seq_file *seq, struct net_device *dev)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
