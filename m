Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC0/FfmhvGns1gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC66D2D4A48
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 02:25:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9124941BB9;
	Fri, 20 Mar 2026 01:25:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1c9Vf_b0RBHz; Fri, 20 Mar 2026 01:25:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF66941BB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773969910;
	bh=7EJnW3kdUcA/mWdICiYp+Buoz7NoSHqg/f92gpxvDwE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3xtOQc1uc+oH/M6RfBlMDvN3PTNZDadjDL9UmmCaE632kVEeAGV9cxhTKJFpkY3NE
	 /8bVcUED3P0Q2uGbJDga2CnHQ49AwrF+W2mLCEmOQYGl7dNYXnPVUAoka2JglAPnsR
	 wXTUf7IZ+sgEtUGdEqQrEgbvo99en0sED11TwJ5M9DRX8WGxgqczH8T8fkOZJLDcpq
	 Ikbju1X5KTgqGRrF/rwgnKoMISFFmbo6T1ZRhlGaG6Se+wVQUH3zj3/9lgzWHl5Kco
	 PDxBP+EzW42UpigzhDhVzcwqHInR4Nkzu468hsy7bt/JmrrKlrYW0DRS1WcYlE71ti
	 2CAMVUN3dVRqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF66941BB4;
	Fri, 20 Mar 2026 01:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EC284265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85AB540381
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2tEd25vSIMY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 01:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.51;
 helo=mail-dl1-f51.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BEB4241326
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEB4241326
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEB4241326
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 01:25:06 +0000 (UTC)
Received: by mail-dl1-f51.google.com with SMTP id
 a92af1059eb24-128e4d0cc48so153574c88.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773969906; x=1774574706;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7EJnW3kdUcA/mWdICiYp+Buoz7NoSHqg/f92gpxvDwE=;
 b=X6V3G5w4yF9IUalvBDtvcUjaEwb0bYcsweQYSjC65WNKxl/hpdMDyrejq1ZSHDFZyG
 wlAugw9EFT7iCGEamMHowLYzhsGsttwWwvRqM+TPa34GOhHr+yNT0BAPy8UtFa7oi1W9
 Gzh9znO0TVLs/n0ARqYcEVP6Bx9k41hVZ06/x6kdG+5nxvkb5a0JJ+lxuRLXCLFz7eM5
 449OXmqUmB9mE8KX/WvANnl0QKsOmWtGCV7NUGW/WKk1Lt6XKMmMh+GY5hJnLk9/GNiE
 01Yg6TiJdf/iPdwneqvM3Ls20aJ63EETBRNjF3BxJvb5n/I3D2ckl0t9aHtWjDu8t0bG
 NsAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMR6MB46VqcY/k+1LKiicvRIFSyTa5ct7IyKCvgylpJza41LiyyeXRCnO7H2qNX6heldjOWDFz4C3gfzP65FE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvVvgV1WQzZ0Lu4LA8QMA6SHd2x+UP5rpB1rRCsaPoKulz68t4
 BRW6P4hGBgjmZV4p1x5B+WrxDFftZoxWYctQB9GQbbe1+zh/A1IRd1w=
X-Gm-Gg: ATEYQzzZ9gjKZ/NnhcyDvGje//OJGaUeoqVgosoRXlyneJnlooC0gehTAfo1DxzJHry
 c8K4tZov5rjv6jCiQEZZ0iMhfGZFEMCVwvE5ivTArEsCWP3ta9XJWxLslnvfcxvepoNK1UcZ4SF
 uAVxjIXmoM0UBhOpKqApYuWHdx0ZLCeDe54oykeHfAlEtgqNTdhSFUYIwuN99fV0ld0QiZfMSmD
 Xm4jLr8dqzO+xf+I7olHQvxuFH8GdQEesNauI+NbqnPVXbGSTzTwrC5Qjef7YUKXbXOdwG0UKD/
 Mnr9oP+SWgyzeBQFyHNt8zQTwm2laWY9mfCC6sv3V8ifWNTU8HA75GcjlvQd7jMMHegOTzFgSyH
 icqjp4LcFa5S1EIL9TeZwbhv2Ffhi3gp2fl105z13SsYQWVBSUeR4uoSRoTIQvcUNxl7RTOmbSp
 Tceq2oNE+/wljU+ZZ56EZ/b6iyuCXrB75B0Y0Zm0EqWJ3W49vcpzBsU10VP/sfVXUM8FO7UM7yA
 5j/zc+YL9pvrK+LKQ==
X-Received: by 2002:a05:7022:ec18:b0:128:d17b:e7ab with SMTP id
 a92af1059eb24-12a726f6573mr546108c88.36.1773969905386; 
 Thu, 19 Mar 2026 18:25:05 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12a736b952asm749391c88.12.2026.03.19.18.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 18:25:05 -0700 (PDT)
From: Stanislav Fomichev <sdf@fomichev.me>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 sdf@fomichev.me, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 aleksandr.loktionov@intel.com, kees@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Thu, 19 Mar 2026 18:24:50 -0700
Message-ID: <20260320012501.2033548-3-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320012501.2033548-1-sdf@fomichev.me>
References: <20260320012501.2033548-1-sdf@fomichev.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v3 02/13] wifi: cfg80211: use
 __rtnl_unlock in nl80211_pre_doit
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[fomichev.me];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DC66D2D4A48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

nl80211_pre_doit acquires rtnl_lock and then wiphy_lock, releasing
rtnl while keeping wiphy_lock held until post_doit. With the
introduction of rx_mode_wq and its flush in netdev_run_todo, calling
rtnl_unlock here creates a circular lock dependency:

  Chain exists of:
    (wq_completion)rx_mode_wq --> rtnl_mutex --> &rdev->wiphy.mtx

   Possible unsafe locking scenario:

         CPU0                    CPU1
         ----                    ----
    lock(&rdev->wiphy.mtx);
                                 lock(rtnl_mutex);
                                 lock(&rdev->wiphy.mtx);
    lock((wq_completion)rx_mode_wq);

Switch to __rtnl_unlock to skip netdev_run_todo in nl80211_pre_doit.
This seems safe because we run before the op.

Link: http://lore.kernel.org/netdev/69b5ad67.a00a0220.3b25d1.001a.GAE@google.com
Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
---
 net/core/rtnetlink.c   | 1 +
 net/wireless/core.c    | 1 +
 net/wireless/nl80211.c | 2 +-
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index dad4b1054955..b1bfb4a4aedd 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -150,6 +150,7 @@ void __rtnl_unlock(void)
 		head = next;
 	}
 }
+EXPORT_SYMBOL_NS_GPL(__rtnl_unlock, "NETDEV_INTERNAL");
 
 void rtnl_unlock(void)
 {
diff --git a/net/wireless/core.c b/net/wireless/core.c
index 23afc250bc10..a78a9b613c94 100644
--- a/net/wireless/core.c
+++ b/net/wireless/core.c
@@ -41,6 +41,7 @@ MODULE_AUTHOR("Johannes Berg");
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("wireless configuration support");
 MODULE_ALIAS_GENL_FAMILY(NL80211_GENL_NAME);
+MODULE_IMPORT_NS("NETDEV_INTERNAL");
 
 /* RCU-protected (and RTNL for writers) */
 LIST_HEAD(cfg80211_rdev_list);
diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
index e15cd26f3a79..f8ed8730cf1c 100644
--- a/net/wireless/nl80211.c
+++ b/net/wireless/nl80211.c
@@ -18203,7 +18203,7 @@ static int nl80211_pre_doit(const struct genl_split_ops *ops,
 		__release(&rdev->wiphy.mtx);
 	}
 	if (!(internal_flags & NL80211_FLAG_NEED_RTNL))
-		rtnl_unlock();
+		__rtnl_unlock();
 
 	return 0;
 out_unlock:
-- 
2.53.0

