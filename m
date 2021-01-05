Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B752EB2F9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:02:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FECE8728B;
	Tue,  5 Jan 2021 19:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8zjCs-uXCbAH; Tue,  5 Jan 2021 19:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1A2A87270;
	Tue,  5 Jan 2021 19:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77AEC1BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67D76203F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gr4xZPuwtwwk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E83920353
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:53 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id ce23so1808329ejb.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VqKUbghIDfYrfb3O7qIi6ZxV/2bVKA7+VXpaNALoN60=;
 b=o72EV0y5XH6HchkYJqkf18+T0vm0Uz19QPiFec6UrE0bJV5bAouj5tUFThd+IbUeaH
 yUe448KhNG1blJQxDZTQOSx3bw/rjUuPJafSLUnhGcVcmX+vwhSeVoHv6FFJBmfUSV+u
 a+CFVILyASpZpXFmOVMNnfqc28/9V6Dagm/1/RVHEVBz9ZLAMbGJ2DgFzJCl+FaHemvK
 1GjY//UjxbnawtELZ84EsOXDBNfazICZGH71XgnOA+CXCFm1CTMHQfQ9UV70yrAuXfPB
 oS/PFIl8l1oqOkgmzlk+HI19tTlFGLDsv257e3gWMIM1kgKEOxMeY7CZjnCo1NcYYmKo
 gsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VqKUbghIDfYrfb3O7qIi6ZxV/2bVKA7+VXpaNALoN60=;
 b=Ds/tboc46W9zCgBVhFZNtRGkaNiU1SY6YdwJU/78dps/4ysucuSHcvS6ycre/hWGGf
 tERxiKoePpJMd+lBN3Ucp2IcpH5dKzfWmHJTkrzOEqV+KrC4/IxPKj9SAJ1vxnaSdrrH
 iUg2UtcumN6c5onL6KKXO1AkUpryjDwe+NpZXe3xkT0IhGw3649fAGMWVqS8hmf3C+6c
 y92YO4X3AFxG+H+HTWMDyRh0pA0ZYUyxaz/T+uuKFyyQ04cxvZsndmVJIhw3IQ+0xkI8
 TctvIPxp0Wl04ozh6AsHNJG6kF3epBPLCHyNM2jJFHde8bLjOIXRZ1fr8akmPbwHUa+v
 9/Ag==
X-Gm-Message-State: AOAM532/BuU2NAVfUxgsrcD4IRRryGSjtiWXaw3cbE01prFXCMa1w0K5
 k9QXhcN0n85bHeiU2dwLX2w=
X-Google-Smtp-Source: ABdhPJz1wURDbCR0bNBYRS2W9HuLCgl2tOQ8FkzBLbjCThN+VIxGm1iq/S2lOXku8roTHNgJI/WFnQ==
X-Received: by 2002:a17:906:f0cc:: with SMTP id
 dk12mr488324ejb.480.1609873251916; 
 Tue, 05 Jan 2021 11:00:51 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:51 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:54 +0200
Message-Id: <20210105185902.3922928-5-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 04/12] net: sysfs: don't
 hold dev_base_lock while retrieving device statistics
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

I need to preface this by saying that I have no idea why netstat_show
takes the dev_base_lock rwlock. Two things can be observed:
(a) it does not appear to be due to dev_isalive requiring it for some
    reason, because broadcast_show() also calls dev_isalive() and has
    had no problem existing since the beginning of git.
(b) the dev_get_stats function definitely does not need dev_base_lock
    protection either. In fact, holding the dev_base_lock is the entire
    problem here, because we want to make dev_get_stats sleepable, and
    holding a rwlock gives us atomic context.

So since no protection seems to be necessary, just run unlocked while
retrieving the /sys/class/net/eth0/statistics/* values.

Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Eric Dumazet <edumazet@google.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/core/net-sysfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/core/net-sysfs.c b/net/core/net-sysfs.c
index 999b70c59761..0782a476b424 100644
--- a/net/core/net-sysfs.c
+++ b/net/core/net-sysfs.c
@@ -585,14 +585,13 @@ static ssize_t netstat_show(const struct device *d,
 	WARN_ON(offset > sizeof(struct rtnl_link_stats64) ||
 		offset % sizeof(u64) != 0);
 
-	read_lock(&dev_base_lock);
 	if (dev_isalive(dev)) {
 		struct rtnl_link_stats64 temp;
 		const struct rtnl_link_stats64 *stats = dev_get_stats(dev, &temp);
 
 		ret = sprintf(buf, fmt_u64, *(u64 *)(((u8 *)stats) + offset));
 	}
-	read_unlock(&dev_base_lock);
+
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
