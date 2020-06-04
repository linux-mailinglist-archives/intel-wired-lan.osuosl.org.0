Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B57F01EDCA6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 07:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32AE28813C;
	Thu,  4 Jun 2020 05:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uqh1Tw3kZPZg; Thu,  4 Jun 2020 05:13:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C8ED88129;
	Thu,  4 Jun 2020 05:13:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CDB21BF853
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 05:13:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F1002261A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 05:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdbhIAakJB-Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 05:13:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0207.hostedemail.com
 [216.40.44.207])
 by silver.osuosl.org (Postfix) with ESMTPS id 74FC6220E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 05:13:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 26882181D341E;
 Thu,  4 Jun 2020 05:13:32 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2110:2393:2551:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3872:3873:4321:5007:7576:7904:9545:10004:10400:10848:11232:11658:11914:12043:12050:12297:12740:12760:12895:13069:13095:13311:13357:13436:13439:14181:14659:14721:21080:21433:21451:21627:30012:30054:30055:30063:30064:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: front38_3c1723a26d94
X-Filterd-Recvd-Size: 1805
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 05:13:31 +0000 (UTC)
Message-ID: <d85393e8e5676ffd808923f00bb1396309781e7a.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Date: Wed, 03 Jun 2020 22:13:30 -0700
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D94044986E9384@ORSMSX112.amr.corp.intel.com>
References: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
 <d74c63e48bbc2f437f7d7aad1c0064dac2a47203.camel@perches.com>
 <61CC2BC414934749BD9F5BF3D5D94044986E9384@ORSMSX112.amr.corp.intel.com>
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

On Thu, 2020-06-04 at 04:10 +0000, Kirsher, Jeffrey T wrote:
> > -----Original Message-----
> > From: Joe Perches <joe@perches.com>
> > Sent: Wednesday, June 3, 2020 20:16
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Subject: Re: [next-queue v2] ethernet/intel: Convert fallthrough code comments
> > 
> > On Wed, 2020-06-03 at 20:07 -0700, Jeff Kirsher wrote:
> > > Convert all the remaining 'fall through" code comments to the newer
> > > 'fallthough;' keyword.
> > 
> > Maybe write it was scripted and
> [Kirsher, Jeffrey T] 
> 
> Partially scripted, I used your script, but when I did a manual search for ' fall' or ' Fall', I found a few more hits.

Oh, nice.

It's a brainless script.
Good thing you used yours too.

cheers, Joe


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
