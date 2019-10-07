Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EFFCEDF9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 22:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F46787C11;
	Mon,  7 Oct 2019 20:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlEYluUeOb22; Mon,  7 Oct 2019 20:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EC3B87BB6;
	Mon,  7 Oct 2019 20:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B76621BF387
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 20:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3AF486BC9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 20:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6kmjrnhJtOx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 20:48:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com
 [216.40.44.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B547886272
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 20:48:34 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 4365453B4;
 Mon,  7 Oct 2019 20:48:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 80, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2893:2909:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3870:3871:3872:3873:4321:5007:8603:10004:10400:11026:11232:11473:11657:11658:11914:12043:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14096:14097:14659:14721:21080:21433:21627:30016:30054:30055:30070:30091,
 0, RBL:172.58.44.37:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: bone85_2d4ed97cd1412
X-Filterd-Recvd-Size: 2446
Received: from XPS-9350 (unknown [172.58.44.37])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Mon,  7 Oct 2019 20:48:31 +0000 (UTC)
Message-ID: <02fe65d8989ef1d030cf31c7134c574a242afc17.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: jeffrey.t.kirsher@intel.com, intel-wired-lan@lists.osuosl.org, netdev
 <netdev@vger.kernel.org>
Date: Mon, 07 Oct 2019 13:48:00 -0700
In-Reply-To: <a00c9af7d24ac0dd6af8698c9e545591392720fe.camel@intel.com>
References: <edf91d8284a2a19d956eb8b7e8b6c4984ceaa1ab.camel@perches.com>
 <a00c9af7d24ac0dd6af8698c9e545591392720fe.camel@intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] i40e_pto.c: Odd use of strlcpy converted from
 strncpy
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
Cc: Patryk =?UTF-8?Q?Ma=C5=82ek?= <patryk.malek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2019-10-07 at 13:44 -0700, Jeff Kirsher wrote:
> On Sun, 2019-10-06 at 10:19 -0700, Joe Perches wrote:
> > This got converted from strncpy to strlcpy but it's
> > now not necessary to use one character less than the
> > actual size.
> > 
> > Perhaps the sizeof() - 1 is now not correct and it
> > should use strscpy and a normal sizeof.
[]
> You are also missing you signed-off-by: and Fixes:, I can get your
> change under test in the meantime to confirm your fix.

I didn't sign off as all I intended was to bring it
to your attention.  The diff is just the simplest way.
It's trivial if it's a defect.

> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > index 9bf1ad4319f5..627b1c02bb4b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -700,8 +700,8 @@ static long i40e_ptp_create_clock(struct i40e_pf
> > *pf)
> >  	if (!IS_ERR_OR_NULL(pf->ptp_clock))
> >  		return 0;
> >  
> > -	strlcpy(pf->ptp_caps.name, i40e_driver_name,
> > -		sizeof(pf->ptp_caps.name) - 1);
> > +	strscpy(pf->ptp_caps.name, i40e_driver_name, sizeof(pf-
> > > ptp_caps.name));
> > +
> >  	pf->ptp_caps.owner = THIS_MODULE;
> >  	pf->ptp_caps.max_adj = 999999999;
> >  	pf->ptp_caps.n_ext_ts = 0;
> > 
> > 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
