Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE6D262F76
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Sep 2020 16:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B15D875FB;
	Wed,  9 Sep 2020 14:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wX6cvPZk03A; Wed,  9 Sep 2020 14:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D32F87636;
	Wed,  9 Sep 2020 14:05:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15D661BF419
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 09:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 112B3848A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 09:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fuGir76R_q_O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Sep 2020 09:38:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3AF34848A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Sep 2020 09:38:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 1FF631800175A;
 Wed,  9 Sep 2020 09:38:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3872:3873:4321:5007:6742:8603:10004:10400:11026:11232:11473:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21524:21611:21627:21990:30012:30054:30055:30056:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: alarm97_080d766270dc
X-Filterd-Recvd-Size: 2383
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Wed,  9 Sep 2020 09:38:39 +0000 (UTC)
Message-ID: <b75ac349af07ac363585ac72cba724e2fcf0c954.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Wei Xu <xuwei5@hisilicon.com>, netdev@vger.kernel.org
Date: Wed, 09 Sep 2020 02:38:38 -0700
In-Reply-To: <2530c5c8a596b7edd7e2273cffc3b76ac4b437c7.camel@perches.com>
References: <1599641471-204919-1-git-send-email-xuwei5@hisilicon.com>
 <2530c5c8a596b7edd7e2273cffc3b76ac4b437c7.camel@perches.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Sep 2020 14:05:07 +0000
Subject: Re: [Intel-wired-lan] [net-next] net: iavf: Use the ARRAY_SIZE
 macro for aq_to_posix
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
Cc: salil.mehta@huawei.com, jinying@hisilicon.com, tangkunshan@huawei.com,
 john.garry@huawei.com, linuxarm@huawei.com,
 shameerali.kolothum.thodi@huawei.com, zhangyi.ac@huawei.com,
 intel-wired-lan@lists.osuosl.org, huangdaode@hisilicon.com,
 jonathan.cameron@huawei.com, Jakub Kicinski <kuba@kernel.org>,
 liguozhu@hisilicon.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 shiju.jose@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2020-09-09 at 02:33 -0700, Joe Perches wrote:
> On Wed, 2020-09-09 at 16:51 +0800, Wei Xu wrote:
> > Use the ARRAY_SIZE macro to calculate the size of an array.
> > This code was detected with the help of Coccinelle.
> []
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.h b/drivers/net/ethernet/intel/iavf/iavf_adminq.h
> []
> > @@ -120,7 +120,7 @@ static inline int iavf_aq_rc_to_posix(int aq_ret, int aq_rc)
> >  	if (aq_ret == IAVF_ERR_ADMIN_QUEUE_TIMEOUT)
> >  		return -EAGAIN;
> >  
> > -	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
> > +	if (!((u32)aq_rc < ARRAY_SIZE(aq_to_posix)))
> >  		return -ERANGE;
> 
> If you want to use a cast,
> 
> 	if ((u32)aq_rc >= ARRAY_SIZE(aq_to_posix))
> 		return -ERANGE;
> 
> would be a more common and simpler style, though
> perhaps testing ac_rc < 0 would be more intelligible.
> 
> 	if (ac_rc < 0 || ac_rq >= ARRAY_SIZE(aq_to_posix))

(hah, I typed aq_rc wrong both times, so maybe it's not _that_
 much better...)

	if (aq_rc < 0 || aq_rc >= ARRAY_SIZE(aq_to_posix))

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
