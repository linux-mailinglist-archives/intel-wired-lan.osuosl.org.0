Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F239F4B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78A2287691;
	Tue, 27 Aug 2019 21:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHdVmAP20RYB; Tue, 27 Aug 2019 21:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A74CB8765E;
	Tue, 27 Aug 2019 21:06:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44F3E1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3CF892151F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74Rpki6Ja6s1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:06:35 +0000 (UTC)
X-Greylist: delayed 00:17:22 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0029.hostedemail.com
 [216.40.44.29])
 by silver.osuosl.org (Postfix) with ESMTPS id 544462039B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:06:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id A4FDD1804F190
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 20:49:14 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 1EB7B18224508;
 Tue, 27 Aug 2019 20:49:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3865:3872:3874:5007:10004:10400:10848:11658:11914:12297:12555:12760:13069:13141:13230:13311:13357:13439:14181:14394:14659:14721:21080:21451:21627:30054:30064,
 0, RBL:error, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0,
 LFtime:29, LUA_SUMMARY:none
X-HE-Tag: woman74_8a5aad7e28c2f
X-Filterd-Recvd-Size: 1713
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Tue, 27 Aug 2019 20:49:10 +0000 (UTC)
Message-ID: <bfdb49ae2c3fa7b52fa168769e38b48f959880e2.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Forrest Fleming
 <ffleming@gmail.com>, Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 27 Aug 2019 13:49:09 -0700
In-Reply-To: <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
References: <20190823191421.3318-1-ffleming@gmail.com>
 <c2279a78904b581924894b712403299903eacbfc.camel@intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] checkpatch: Allow consecutive close braces
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

checkpatch allows consecutive open braces, so it
should also allow consecutive close braces.

Signed-off-by: Joe Perches <joe@perches.com>
Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 287fe73688f0..ac5e0f06e1af 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -4687,7 +4687,7 @@ sub process {
 
 # closing brace should have a space following it when it has anything
 # on the line
-		if ($line =~ /}(?!(?:,|;|\)))\S/) {
+		if ($line =~ /}(?!(?:,|;|\)|\}))\S/) {
 			if (ERROR("SPACING",
 				  "space required after that close brace '}'\n" . $herecurr) &&
 			    $fix) {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
