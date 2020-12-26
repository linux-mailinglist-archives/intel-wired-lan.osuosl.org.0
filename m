Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8912E2EC8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Dec 2020 18:47:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C77B920456;
	Sat, 26 Dec 2020 17:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZqPUE5EvMQ8; Sat, 26 Dec 2020 17:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92A322046C;
	Sat, 26 Dec 2020 17:47:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04BC71BF407
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Dec 2020 17:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDDA184E15
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Dec 2020 17:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tK51xQI910GU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Dec 2020 17:47:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0162.hostedemail.com
 [216.40.44.162])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 068C984DD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Dec 2020 17:47:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id C7DA318017FC8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Dec 2020 17:47:24 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 6A6C018225DF9;
 Sat, 26 Dec 2020 17:47:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2691:2828:3138:3139:3140:3141:3142:3622:3865:3868:4321:5007:6742:7652:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bulb63_150dd3d27484
X-Filterd-Recvd-Size: 1466
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Sat, 26 Dec 2020 17:47:20 +0000 (UTC)
Message-ID: <0d06aad61cdb5be1d9c8c17bcf938d726d028e3f.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: netdev@vger.kernel.org
Date: Sat, 26 Dec 2020 09:47:19 -0800
In-Reply-To: <d1ea50ed47e2e9ca65a67ffc2ca0eee08e662132.camel@perches.com>
References: <d1ea50ed47e2e9ca65a67ffc2ca0eee08e662132.camel@perches.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: Remove invalid trailers
 after %pI4
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
Cc: Ariel Elior <aelior@marvell.com>, Tom Rix <trix@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kernel@vger.kernel.org,
 GR-everest-linux-l2@marvell.com, Jiri Pirko <jiri@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 2020-12-26 at 09:10 -0800, Joe Perches wrote:
> Alphanumeric characters after vsprintf pointer extension %pI4 are
> not valid and are not emitted.
> 
> Remove the invalid characters from the %pI4 uses.

self-nak.  I believe I misunderstood the format specifier.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
