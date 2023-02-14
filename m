Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE8696ECE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 22:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A611D60FD1;
	Tue, 14 Feb 2023 21:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A611D60FD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676408495;
	bh=KC2CITFD3BxwLqTmdwDYAF9bpt3qLZv/G2aqYjDhlDc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wCOI7h8z1V1sBW8SZ6ergAS9POONxj6Uy9lA1uyUlXDJmShiXVGHV+1mppwQiOt58
	 TQf30DYK0bwi5uiNFxScqJNC+rSMqP2aXxiTu8dIriD9RsZicMZhvNtyMve8QXV5Od
	 XlKo4Pu+dxs4PjkdJToJKetyO7/ewftvIvviJkcIONRfCoAhGtXvXKM/vN/mBHs82F
	 ANq3BuMZ6Dx5P6Gl7x073WRdPdMdXK5afR3EVq4E/f6xP5AUDlbzNoZ4gqciopIVa2
	 Fd2lyXoSRRXMRyReJ+fMXY+fJtuWNcg070qHDps3IaT1mzJwLUSNxj5QNFoZk3JL9n
	 EVj7fQbiBsxew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xscp9MWXB3s6; Tue, 14 Feb 2023 21:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B089160F80;
	Tue, 14 Feb 2023 21:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B089160F80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E52A1BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAC2481E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAC2481E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klHZ4u6xnV82 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 21:01:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF0A81E55
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF0A81E55
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417490092"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="417490092"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:01:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="699677923"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="699677923"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:01:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	pabeni@redhat.com
Date: Tue, 14 Feb 2023 13:01:17 -0800
Message-Id: <20230214210117.23123-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230214210117.23123-1-jesse.brandeburg@intel.com>
References: <20230214210117.23123-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676408485; x=1707944485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XdQERGiLHuUWEuH1ilQnd8gcc6aswjrEnR65SaAwOpU=;
 b=iDMvTZ44RhPlbAQhk1FcMVnyddH9m7mgFR/Cj9XudEGQwTOdNDCIZfmA
 7opB3jOvqN74khDezer+PXzdaqRfTJMbIjsqANXxry540VXgklc0KbUc6
 PLXXRXn0uaxuMn8uZczTgzasyaHaW0poFU+VcXIWapX4u+ktNnh+4diZ8
 TtuCeeOA49n+E9C+aStxfqug/GZ/phqsk4/aM0I0YScqIOOQwd1uYhh3k
 tSasju13ZlVzDTZsAC99UgqyYyf6rkyHxNVgQrDJRwkW7EVgTP64pMd8f
 Qxr/HywTzKkkriBxicop3wSP6kJY1Gzv/w8TgnksG0JU0ZPouvQ1eWxwt
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iDMvTZ44
Subject: [Intel-wired-lan] [PATCH net-next v1 2/2] net/core: refactor
 promiscuous mode message
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel stack can be more consistent by printing the IFF_PROMISC
aka promiscuous enable/disable messages with the standard netdev_info
message which can include bus and driver info as well as the device.

typical command usage from user space looks like:
ip link set eth0 promisc <on|off>

But lots of utilities such as bridge, tcpdump, etc put the interface into
promiscuous mode.

old message:
[  406.034418] device eth0 entered promiscuous mode
[  408.424703] device eth0 left promiscuous mode

new message:
[  406.034431] ice 0000:17:00.0 eth0: entered promiscuous mode
[  408.424715] ice 0000:17:00.0 eth0: left promiscuous mode

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
I'm unsure about this one because it's changing a long standard kernel
message to a slightly different format. I think the new way looks better
and has more information.
---
 net/core/dev.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index ad1e6482e1c1..357081b0113c 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8321,9 +8321,8 @@ static int __dev_set_promiscuity(struct net_device *dev, int inc, bool notify)
 		}
 	}
 	if (dev->flags != old_flags) {
-		pr_info("device %s %s promiscuous mode\n",
-			dev->name,
-			dev->flags & IFF_PROMISC ? "entered" : "left");
+		netdev_info(dev, "%s promiscuous mode\n",
+			    dev->flags & IFF_PROMISC ? "entered" : "left");
 		if (audit_enabled) {
 			current_uid_gid(&uid, &gid);
 			audit_log(audit_context(), GFP_ATOMIC,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
