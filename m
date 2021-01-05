Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935152EB2F6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:02:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C3ED87263;
	Tue,  5 Jan 2021 19:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWfZamQ3u8xC; Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BA0F87251;
	Tue,  5 Jan 2021 19:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4C291BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A998203F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btSra7hDF9CY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by silver.osuosl.org (Postfix) with ESMTPS id BA7CC2035B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:47 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id cm17so1904180edb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mNfzPBhLMMZWAzE97w1+ZZWCiryTh9dlLPyVpfooGOM=;
 b=htjenFF8D1wjRCV3Ivb7XsHIeCHimPGwGS2vuqUQM1szLxo7iNRaUPr0j5UQSyh838
 M9lHVFoIKQisFHKPJEYMX0TPnYxmdiycPagXmEL5LnARRCIep2pYeuiVZCfz7sv9k+iy
 u8L6iEtVRj1jiyR22zkYxi24d5xHEgRbvGJM1p3ZqXPnXIaNZuO9Fk5UA+A69hClpIup
 RpS6hCqZhtFo3SvTeU1SSoqOHA+cy5BcR9d/deiGTtNdOXL1mfJemeHwtgYvcl66JlTI
 zSu3YJJ/PEMtTfAUPW0I0K2mw37nolU4LqM6g68W/BVIxz82ESI2k66h2BM6h5c0DvL6
 uAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mNfzPBhLMMZWAzE97w1+ZZWCiryTh9dlLPyVpfooGOM=;
 b=B+EsbXLxEzI1kI5h5xxz7/ylbdiWPwOEAuuMbRpqQCrXKvmqSrUZGKnQSDXHwVHRJ3
 W2jKj0OG0CMmTjyAHXeqrnwe/UgM83MSV/IGOer4b2F099NdNva/NyXi33XeN7x+USgj
 J60B9x6tBOL8q8HEQlVEn5TxMgaKw8J7P8ZgMSUzGSGMASTrUy609KfdAq4ZQllcfhvI
 v4DVAuDtyzGNAXcURJoczMmh4N6H+QOM2bN2t3CoXYWMpOznpreD1+EN9LHT5CTCNyUj
 6uhTlMNaV+qzEOZcJ2/xl2tp9pvpN+H3taZU7EWmIGAkHyh662219VVZqapukHTaMzVu
 uq2A==
X-Gm-Message-State: AOAM530MIHQp2OJt0oUovT2HDUl6kfmDUv19C5K3ajkXN2sBmzgfqfU2
 Hg4ZHqCBbwvuHxEL1QO7fO0=
X-Google-Smtp-Source: ABdhPJx4rUUBv+jkf79k31dTgo8if/HFn3r0jcnyalTjeVo11EAzybHYg2Gskk4tCRAHxNA1SnVCyA==
X-Received: by 2002:a50:ec18:: with SMTP id g24mr1236916edr.6.1609873246100;
 Tue, 05 Jan 2021 11:00:46 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:45 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:51 +0200
Message-Id: <20210105185902.3922928-2-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 01/12] net: mark
 dev_base_lock for deprecation
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

There is a movement to eliminate the usage of dev_base_lock, which
exists since as far as I could track the kernel history down (the
"7a2deb329241 Import changeset" commit from the bitkeeper branch).

The dev_base_lock approach has multiple issues:
- It is global and not per netns.
- Its meaning has mutated over the years and the vast majority of
  current users is using it to protect against changes of network device
  state, as opposed to changes of the interface list.
- It is overlapping with other protection mechanisms introduced in the
  meantime, which have higher performance for readers, like RCU
  introduced in 2009 by Eric Dumazet for kernel 2.6.

The old comment that I just deleted made this distinction: writers
protect only against readers by holding dev_base_lock, whereas they need
to protect against other writers by holding the RTNL mutex. This is
slightly confusing/incorrect, since a rwlock_t cannot have more than one
concurrently running writer, so that explanation does not justify why
the RTNL mutex would be necessary.

Instead, Stephen Hemminger makes this clarification here:
https://lore.kernel.org/netdev/20201129211230.4d704931@hermes.local/T/#u

| There are really two different domains being covered by locks here.
|
| The first area is change of state of network devices. This has traditionally
| been covered by RTNL because there are places that depend on coordinating
| state between multiple devices. RTNL is too big and held too long but getting
| rid of it is hard because there are corner cases (like state changes from userspace
| for VPN devices).
|
| The other area is code that wants to do read access to look at list of devices.
| These pure readers can/should be converted to RCU by now. Writers should hold RTNL.

This patch edits the comment for dev_base_lock, minimizing its role in
the protection of network interface lists, and clarifies that it is has
other purposes as well.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/core/dev.c | 33 ++++++++++++++++-----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index a46334906c94..2aa613d22318 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -169,23 +169,22 @@ static int call_netdevice_notifiers_extack(unsigned long val,
 static struct napi_struct *napi_by_id(unsigned int napi_id);
 
 /*
- * The @dev_base_head list is protected by @dev_base_lock and the rtnl
- * semaphore.
- *
- * Pure readers hold dev_base_lock for reading, or rcu_read_lock()
- *
- * Writers must hold the rtnl semaphore while they loop through the
- * dev_base_head list, and hold dev_base_lock for writing when they do the
- * actual updates.  This allows pure readers to access the list even
- * while a writer is preparing to update it.
- *
- * To put it another way, dev_base_lock is held for writing only to
- * protect against pure readers; the rtnl semaphore provides the
- * protection against other writers.
- *
- * See, for example usages, register_netdevice() and
- * unregister_netdevice(), which must be called with the rtnl
- * semaphore held.
+ * The network interface list of a netns (@net->dev_base_head) and the hash
+ * tables per ifindex (@net->dev_index_head) and per name (@net->dev_name_head)
+ * are protected using the following rules:
+ *
+ * Pure readers should hold rcu_read_lock() which should protect them against
+ * concurrent changes to the interface lists made by the writers. Pure writers
+ * must serialize by holding the RTNL mutex while they loop through the list
+ * and make changes to it.
+ *
+ * It is also possible to hold the global rwlock_t @dev_base_lock for
+ * protection (holding its read side as an alternative to rcu_read_lock, and
+ * its write side as an alternative to the RTNL mutex), however this should not
+ * be done in new code, since it is deprecated and pending removal.
+ *
+ * One other role of @dev_base_lock is to protect against changes in the
+ * operational state of a network interface.
  */
 DEFINE_RWLOCK(dev_base_lock);
 EXPORT_SYMBOL(dev_base_lock);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
