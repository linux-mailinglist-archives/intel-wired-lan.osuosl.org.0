Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B041266014
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 15:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0565A8780D;
	Fri, 11 Sep 2020 13:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLVAuJBsXrW5; Fri, 11 Sep 2020 13:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD15C87829;
	Fri, 11 Sep 2020 13:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 607E71BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 13:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 948D38745E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 13:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EWPGG1fBdHJi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 13:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00A3787388
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 13:16:34 +0000 (UTC)
IronPort-SDR: VT0NC1mrXQlT6APXboeTz9gv4T5trl+SH6+wU2OnTHeGaELTSEMmRHq71YMz91QxZi9UK5UvdE
 h/gZX/qLLmSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156149909"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="156149909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 06:16:34 -0700
IronPort-SDR: +P15umNu7E6s9G4fsdhvpCFWZUI7rwKE/pmlbwgWaXgrF6JTUpzZmc/7IU8Y7CEu4iQveekacw
 c13egy1x5v+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="300927206"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga003.jf.intel.com with ESMTP; 11 Sep 2020 06:16:32 -0700
Date: Fri, 11 Sep 2020 15:10:27 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20200911131027.GA2052@ranger.igk.intel.com>
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
 <20200911120519.GA9758@ranger.igk.intel.com>
 <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 02:29:50PM +0200, Magnus Karlsson wrote:
> On Fri, Sep 11, 2020 at 2:11 PM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
> >
> > On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
> > > From: Magnus Karlsson <magnus.karlsson@intel.com>
> > >
> > > Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> > > reason, we only allowed main VSIs to be used with zero-copy, but
> > > there is now reason to not allow VMDQs also.
> >
> > You meant 'to allow' I suppose. And what reason? :)
> 
> Yes, sorry. Should be "not to allow". I was too trigger happy ;-).
> 
> I have gotten requests from users that they want to use VMDQs in
> conjunction with containers. Basically small slices of the i40e
> portioned out as netdevs. Do you see any problems with using a VMDQ
> iwth zero-copy?

No, I only meant to provide the actual reason (what you wrote above) in
the commit message.

> 
> /Magnus
> 
> > >
> > > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > index 2a1153d..ebe15ca 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > @@ -45,7 +45,7 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> > >       bool if_running;
> > >       int err;
> > >
> > > -     if (vsi->type != I40E_VSI_MAIN)
> > > +     if (!(vsi->type == I40E_VSI_MAIN || vsi->type == I40E_VSI_VMDQ2))
> > >               return -EINVAL;
> > >
> > >       if (qid >= vsi->num_queue_pairs)
> > > --
> > > 2.7.4
> > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
