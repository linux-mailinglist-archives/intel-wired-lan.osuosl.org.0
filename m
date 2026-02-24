Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEYWNE48nWkGNwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:51:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DE18234D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:51:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F6F361370;
	Tue, 24 Feb 2026 05:51:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Vsrdi2igLn6; Tue, 24 Feb 2026 05:51:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B25686136B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771912266;
	bh=C/k6wjS012iKn7UVT9p7FD0rLvmZUFsoJ20hzsHqEzo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4kz1C/eoWPvYkWfXbcWwun0fVQhvxDtRTFZAD0nCvqhDR7D2lEwjGGC6OczpcrrMr
	 MtbkwohAlWf8OeDl4cnHfYARt++AZ4DWIS2URpwAAJzu2bWpFBb7ofCkwORfB8chLn
	 2Gm0WOtaYIWkV+IBXfwlMgwBuCtfzn2lbCP/Jbz4iq1VtPpI6C2dqErICIjBfo3soB
	 oeONS6CXIMIXUNnNWhPoZ9Ze5zqUfFtiPP4MS32cXodMi3SZnJWEQjaEXB1THI3hGB
	 5x6U6/Ygr9OYPSY3fK23xpqlXgEvWg6YlgXbwTe0hwMIMgJn/8V45je9BBTeTbwNYB
	 yugcYTUnYqhtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B25686136B;
	Tue, 24 Feb 2026 05:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 90EE8249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76978400EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:51:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ZBmT5SWyeoU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 05:51:04 +0000 (UTC)
X-Greylist: delayed 902 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 24 Feb 2026 05:51:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F00EA402E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F00EA402E5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id F00EA402E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:51:01 +0000 (UTC)
X-AuditID: a67dfc5b-c45ff70000001609-ae-699d38bcc761
From: Byungchul Park <byungchul@sk.com>
To: netdev@vger.kernel.org,
	kuba@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel_team@skhynix.com,
 harry.yoo@oracle.com, david@redhat.com, willy@infradead.org,
 toke@redhat.com, asml.silence@gmail.com, almasrymina@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Feb 2026 14:35:46 +0900
Message-Id: <20260224053546.62757-1-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPLMWRmVeSWpSXmKPExsXC9ZZnke5ei7mZBqfWclus/lFhsfzBDlaL
 3Rd+MFnMWbWN0WLO+RYWi6/rfzFbPD32iN3i/rJnLBb/b/1mtbiwrY/V4vKuOWwWxxaIWXw7
 /YbR4vbSq0wWlw4/YrH4/WMOm4OAx5aVN5k8ds66y+6xYFOpx+YVWh6L97xk8ti0qpPN42Rz
 qcfOHZ+ZPD4+vcXi8X7fVTaPz5vkArijuGxSUnMyy1KL9O0SuDLWdi5lLHjAXtF5bS9TA+Nh
 ti5GTg4JAROJpw0fmWDsja2TweJsAuoSN278ZAaxRQR0JbZ2TWHtYuTiYBZoZpa4cOEiC0hC
 WMBbonvmM7AiFgFVie7T28CaeQVMJV5dfcEKMVReYvWGA8wgzRICR9gklt5YBbVZUuLgihss
 Exi5FzAyrGIUyswry03MzDHRy6jMy6zQS87P3cQIDNZltX+idzB+uhB8iFGAg1GJhzchdk6m
 EGtiWXFl7iFGCQ5mJRHe379nZQrxpiRWVqUW5ccXleakFh9ilOZgURLnNfpWniIkkJ5Ykpqd
 mlqQWgSTZeLglGpgjNq76oP9ny0SwdFz3zzZWdW7arJ5+GPl47vi+6sNrmU8/nLUpN/s4tPl
 hjGCX+9GXv88U/rWmTmcXq5fLwlXzGC+uubqWq2w4IcPnHsZDJ0nN++JDf/ssMJzZcl3iznF
 GzyfNnP6VWxg7V2/PuqcafzhiZazb5kdY7oiLLLjZUcls1r5uWvPmJVYijMSDbWYi4oTAQoY
 ztZSAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGLMWRmVeSWpSXmKPExsXC5WfdrLvHYm6mwcFzxharf1RYLH+wg9Vi
 94UfTBZzVm1jtJhzvoXF4uv6X8wWT489Yre4v+wZi8X/W79ZLQ7PPclqcWFbH6vF5V1z2CyO
 LRCz+Hb6DaPF7aVXmSwuHX7EYvH7xxw2B0GPLStvMnnsnHWX3WPBplKPzSu0PBbvecnksWlV
 J5vHyeZSj507PjN5fHx6i8Xj/b6rbB6LX3xg8vi8SS6AJ4rLJiU1J7MstUjfLoErY23nUsaC
 B+wVndf2MjUwHmbrYuTkkBAwkdjYOhnMZhNQl7hx4ycziC0ioCuxtWsKaxcjFwezQDOzxIUL
 F1lAEsIC3hLdM5+BFbEIqEp0n94G1swrYCrx6uoLVoih8hKrNxxgnsDIsYCRYRWjSGZeWW5i
 Zo6pXnF2RmVeZoVecn7uJkZg6C2r/TNxB+OXy+6HGAU4GJV4eBNi52QKsSaWFVfmHmKU4GBW
 EuH9/XtWphBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFer/DUBCGB9MSS1OzU1ILUIpgsEwenVAPj
 +csT58yUmLo19+aZHRubi6obJQ6c29VjZCN6y92S6U3bvgs26geTJ8218mv3bvJp+7Wx6ax2
 1dM3l/6Hm7/429um+FWRcc7ymiM/tjsbPbmjKlit+WKh3cbXR+6cmP/m9dW4FUuLDp6bYTE1
 XdOreIrTaa5Fl74V/SwVcugMiL15U8RLeFEalxJLcUaioRZzUXEiAB4e0qw5AgAA
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [RESEND PATCH] ice: access @pp through
 netmem_desc instead of page
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel_team@skhynix.com,m:harry.yoo@oracle.com,m:david@redhat.com,m:willy@infradead.org,m:toke@redhat.com,m:asml.silence@gmail.com,m:almasrymina@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:asmlsilence@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,skhynix.com,oracle.com,redhat.com,infradead.org,gmail.com,google.com,intel.com,lunn.ch,davemloft.net,lists.osuosl.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[byungchul@sk.com,intel-wired-lan-bounces@osuosl.org];
	DMARC_NA(0.00)[sk.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 025DE18234D
X-Rspamd-Action: no action

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make ice driver access @pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c6bc29cfb8e6..c16e54dbe75b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
 		rx_buf = &rx_ring->rx_fqes[i];
 		page = __netmem_to_page(rx_buf->netmem);
 		received_buf = page_address(page) + rx_buf->offset +
-			       page->pp->p.offset;
+			       pp_page_to_nmdesc(page)->pp->p.offset;
 
 		if (ice_lbtest_check_frame(received_buf))
 			valid_frames++;
-- 
2.17.1

