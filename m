Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52143429992
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 00:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E23C404B3;
	Mon, 11 Oct 2021 22:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQ6M06JzBBdP; Mon, 11 Oct 2021 22:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73230404B9;
	Mon, 11 Oct 2021 22:58:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89B8D1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D277404B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4uMC0MQ5MP7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Oct 2021 22:58:09 +0000 (UTC)
X-Greylist: delayed 00:30:07 by SQLgrey-1.8.0
Received: from kanga.kvack.org (kanga.kvack.org [205.233.56.17])
 by smtp4.osuosl.org (Postfix) with ESMTP id BED2E404B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 22:58:09 +0000 (UTC)
Received: by kanga.kvack.org (Postfix, from userid 63042)
 id DAE92900002; Mon, 11 Oct 2021 18:28:00 -0400 (EDT)
Date: Mon, 11 Oct 2021 18:28:00 -0400
From: Benjamin LaHaise <bcrl@kvack.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20211011222800.GA17234@kvack.org>
Mime-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.4.2.2i
Subject: [Intel-wired-lan] i40e pppoe rss
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello all,

I have been trying to get RSS working for incoming PPPoE packets with the
Linux i40e driver.  After loading the DDP .pkgo file for PPPoE using
"ethtool -f enp43s0f0 ppp-oe-ol2tpv2.pkgo 100", packets still come in on a
single queue.  Changing destination IP addresses or port numbers in UDP
packets does not result in any change in the ingress queue.  Are the
ethtool commands required to enable RSS with PPPoE documented anywhere?
The only documentation seems to rely on test-pmd with DPDK, but I am using
the native Linux drivers and XDP.

		-ben
-- 
"Thought is the essence of where you are now."
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
