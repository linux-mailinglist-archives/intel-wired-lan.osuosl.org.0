Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D6C1EDB9A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 05:22:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3DE286D94;
	Thu,  4 Jun 2020 03:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaxskaxkfCv8; Thu,  4 Jun 2020 03:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C33BC86DA6;
	Thu,  4 Jun 2020 03:22:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCB81BF96B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 03:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58537886DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 03:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AU704Qcw0As for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 03:22:48 +0000 (UTC)
X-Greylist: delayed 07:02:09 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0206.hostedemail.com
 [216.40.44.206])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7ADEC886AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 03:22:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 1A1D71801E384
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 03:15:57 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id B1C8218224D82;
 Thu,  4 Jun 2020 03:15:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1537:1560:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3868:3872:4321:5007:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:21080:21433:21451:21627:30012:30054:30055:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: trick31_1c06b4a26d94
X-Filterd-Recvd-Size: 1028
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 03:15:54 +0000 (UTC)
Message-ID: <d74c63e48bbc2f437f7d7aad1c0064dac2a47203.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Wed, 03 Jun 2020 20:15:52 -0700
In-Reply-To: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
References: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue v2] ethernet/intel: Convert
 fallthrough code comments
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

On Wed, 2020-06-03 at 20:07 -0700, Jeff Kirsher wrote:
> Convert all the remaining 'fall through" code comments to the newer
> 'fallthough;' keyword.

Maybe write it was scripted and

v2: removed unnecessary fallthrough; after break;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
