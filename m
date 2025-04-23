Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 668A3A99668
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 19:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1398C6128F;
	Wed, 23 Apr 2025 17:21:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P1FjXVzLxtAT; Wed, 23 Apr 2025 17:21:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C06A61283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745428897;
	bh=7lTS8htftavndaqoP3t1tXAiwm/cUa/UaK8NxYVtnZk=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B8xjxw2W8DmEj89cMs3HcH9b+m5W2MxyvyRviLxZKhT4VhSmRsr7ylX5vX1n2Rc6K
	 EmBxghxIYS0ynNbYPx0v5O4gollUmNfZt3qonUMftRcmZLwJKnltd8HvuF45s7PNGx
	 ARekFEIYJXhLasZcWTN1WoYT+8CWidRwGSJ0mIAlq9ZvwXLFzEuCUc5ARlDMv8Mtw2
	 kh+OInDZuWN874RpUFOqszqHPZq4tUCGxF+evNp0QHexhUN6hxovUyCIn81GEPh6zl
	 u/exsman1bfNpkCrc3NXZyXo9P84iPpEKS7S0ia+axzbems4MPpGZ3CT7/673a7mmZ
	 XFx37ylx2oSuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C06A61283;
	Wed, 23 Apr 2025 17:21:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ABA02A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 17:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10D7E822DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 17:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x1twN4LmXmuZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 17:21:34 +0000 (UTC)
X-Greylist: delayed 516 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 23 Apr 2025 17:21:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 50D8782229
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50D8782229
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=129.97.134.17;
 helo=caffeine.csclub.uwaterloo.ca; envelope-from=lsorense@csclub.uwaterloo.ca;
 receiver=<UNKNOWN> 
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50D8782229
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 17:21:33 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 97DED460E57; Wed, 23 Apr 2025 13:12:54 -0400 (EDT)
Date: Wed, 23 Apr 2025 13:12:54 -0400
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Len Sorensen <lsorense@csclub.uwaterloo.ca>
Message-ID: <aAkflkxbvC8MB8PG@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
From: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=csclub.uwaterloo.ca
Subject: [Intel-wired-lan] Fix promiscous and multicast mode on iavf after
 reset
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

I discovered that anything that causes a reset in iavf makes breaks
promiscous mode and multicast.  This is because the host side ice
driver clears the VF from filters when it is reset.  iavf then correctly
calls iavf_configure, but since the current_netdev_promisc_flags already
match the netdev promisc settings, nothing is done, so the promisc and
multicast settings are not sent to the ice host driver after the reset.
As a result the iavf side shows promisc enabled but it isn't working.
Disabling and re-enabling promisc on the iavf side fixes it of course.
Simple test case to show this is to enable promisc, check that packets
are being seen, then change the mtu size (which does a reset) and check
packets received again, and promisc is no longer active.  Disabling
promisc and enabling it again restores receiving the packets.

The following seems to work for me, but I am not sure it is the correct
place to clear the saved flags.

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d7ba4d67a19..4018a08d63c1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3233,6 +3233,14 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_shutdown_adminq(hw);
 		iavf_init_adminq(hw);
 		iavf_request_reset(adapter);
+
+		/* Clear remembered promisc and multicast flags since
+		 * reset clears them on the host so they will get force
+		 * applied again through iavf_configure() down below.
+		 */
+		spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
+		adapter->current_netdev_promisc_flags &= ~(IFF_PROMISC | IFF_ALLMULTI);
+		spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
 	}
 	adapter->flags |= IAVF_FLAG_RESET_PENDING;
 

-- 
Len Sorensen
