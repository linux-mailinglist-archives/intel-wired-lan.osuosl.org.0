Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5157925AC45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 15:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EEDD8683C;
	Wed,  2 Sep 2020 13:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTXlNK-oghZl; Wed,  2 Sep 2020 13:47:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56FEE867F6;
	Wed,  2 Sep 2020 13:47:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67EA71BF303
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 13:47:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62E76867F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 13:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUvQvFfztmnw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 13:47:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64E5C84FB2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 13:47:37 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id E12B2460FF9; Wed,  2 Sep 2020 09:47:34 -0400 (EDT)
Date: Wed, 2 Sep 2020 09:47:34 -0400
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20200902134734.fvtyn5tbhpyssrbq@csclub.uwaterloo.ca>
References: <20200827183039.hrfnb63cxq3pmv4z@csclub.uwaterloo.ca>
 <20200828155616.3sd2ivrml2gpcvod@csclub.uwaterloo.ca>
 <20200831103512.00001fab@intel.com>
 <20200901013519.rfmavd4763gdzw4r@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901013519.rfmavd4763gdzw4r@csclub.uwaterloo.ca>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] VRRP not working on i40e X722 S2600WFT
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 31, 2020 at 09:35:19PM -0400,  wrote:
> On Mon, Aug 31, 2020 at 10:35:12AM -0700, Jesse Brandeburg wrote:
> > Thanks for the report Lennart, I understand your frustration, as this
> > should probably work without user configuration.
> > 
> > However, please give this command a try:
> > ethtool --set-priv-flags ethX disable-source-pruning on
> 
> Hmm, our 4.9 kernel is just a touch too old to support that.  And yes
> that really should not require a flag to be set, given the card has no
> reason to ever do that pruning.  There is no justification you could
> have for doing it in the first place.

So backporting the patch that enabled that flag does allow it to work.
Of course there isn't a particularly good place to put an ethtool command
in the boot up to make sure it runs before vrrp is started.  This has to
be the default. I know I wasted about a week trying things to get this to
work, and clearly lots of other people have wasted a ton of time on this
"feature" too (calling it a feature is clearly wrong, it is a bug).

By default the NIC should work as expected.  Any weird questionable
optimizations have to be turned on by the user explicitly when they
understand the consequences.  I can't find any use case documented
anywhere for this bug, I can only find things it has broken (like
apparently arp monitoring on bonding, and vrrp).

So who should make the patch to change this to be the default?  Clearly
the current behaviour is harming and confusing more people than could
possibly be impacted by changing the current default setting for the flag
(in fact I would just about be willing to bet there are no people that
want the current behaviour.  After all no other NIC does this, so clearly
there is no need for it to be done).

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
