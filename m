Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D957F375D78
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 01:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7464B83CF6;
	Thu,  6 May 2021 23:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYHnYrHrZ193; Thu,  6 May 2021 23:33:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2112483CF4;
	Thu,  6 May 2021 23:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4304A1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 23:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A8F340562
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 23:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeCGSr_IvpNE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 23:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E922B40560
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 23:32:59 +0000 (UTC)
IronPort-SDR: jQTMD0T3MpEklF2eMTp4VjiDBBbFvBT8Pggu34c0gbdh1ek57MlwuNq2Z0shWW/Vx3naTp9dEz
 hX2tGBuJxTnw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196583284"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="196583284"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 16:32:58 -0700
IronPort-SDR: SyYW2Uu45XN+OQnBcYgF7KtLJ/Ct2eQfE2TkRgO5N1AWRpzfcQwyu2GG/1T9WmGjQvHga6jIzw
 JkpsVkBTgnig==
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="389805902"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.202.181])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 16:32:57 -0700
Date: Thu, 6 May 2021 16:32:57 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210506163257.000036fe@intel.com>
In-Reply-To: <CAKgT0Uemubh8yP+UXh-n-YceheFRZO+hYpxtqs+=vedv7hbv4w@mail.gmail.com>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
 <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
 <20210423155836.25ef1e77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210426064736.7efynita4brzos4u@spock.localdomain>
 <CAKgT0Uemubh8yP+UXh-n-YceheFRZO+hYpxtqs+=vedv7hbv4w@mail.gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: Netdev <netdev@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Duyck wrote:

> On Sun, Apr 25, 2021 at 11:47 PM Oleksandr Natalenko
> <oleksandr@natalenko.name> wrote:
> >
> > Hello.
> >
> > On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> > > On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > > > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:
> > > > > > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > > > > > this condition or if it's okay to cover it up.
> > > > >
> > > > > I'm pretty sure it is okay to cover it up. In this case the "budget -
> > > > > 1" is supposed to be the upper limit on what can be reported. I think
> > > > > it was assuming an unsigned value anyway.
> > > > >
> > > > > Another alternative would be to default clean_complete to !!budget.
> > > > > Then if budget is 0 clean_complete would always return false.
> > > >
> > > > So, among all the variants, which one to try? Or there was a separate
> > > > patch sent to address this?
> > >
> > > Alex's suggestion is probably best.
> > >
> > > I'm not aware of the fix being posted. Perhaps you could take over and
> > > post the patch if Intel doesn't chime in?
> >
> > So, IIUC, Alex suggests this:
> >
> > ```
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > index a45cd2b416c8..7503d5bf168a 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> >                                                      struct igb_q_vector,
> >                                                      napi);
> >         bool clean_complete = true;
> > -       int work_done = 0;
> > +       unsigned int work_done = 0;
> >
> >  #ifdef CONFIG_IGB_DCA
> >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> > @@ -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
> >         if (likely(napi_complete_done(napi, work_done)))
> >                 igb_ring_irq_enable(q_vector);
> >
> > -       return min(work_done, budget - 1);
> > +       return min_t(unsigned int, work_done, budget - 1);
> >  }
> >
> >  /**
> > ```
> >
> > Am I right?
> >
> > Thanks.
> 
> Actually a better way to go would be to probably just initialize
> "clean_complete = !!budget". With that we don't have it messing with
> the interrupt enables which would probably be a better behavior.


Thanks guys for the suggestions here! Finally got some time for
this, so here is the patch I'm going to queue shortly.

From ffd24e90d688ee347ab051266bfc7fca00324a68 Mon Sep 17 00:00:00 2001
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu, 6 May 2021 14:41:11 -0700
Subject: [PATCH net] igb: fix netpoll exit with traffic
To: netdev,
    Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: Jakub Kicinski <kuba@kernel.org>, LKML <linux-kernel@vger.kernel.org>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>, Alexander Duyck <alexander.duyck@gmail.com>

Oleksandr brought a bug report where netpoll causes trace messages in
the log on igb.

[22038.710800] ------------[ cut here ]------------
[22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
[22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0

After some discussion and debug from the list, it was deemed that the
right thing to do is initialize the clean_complete variable to false
when the "netpoll mode" of passing a zero budget is used.

This logic should be sane and not risky because the only time budget
should be zero on entry is netpoll.  Change includes a small refactor
of local variable assignments to clean up the look.

Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead and improve performance")
Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---

Compile tested ONLY, but functionally it should be exactly the same for
all cases except when budget is zero on entry, which will hopefully fix
the bug.
---
 drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 0cd37ad81b4e..b0a9bed14071 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct igb_q_vector *q_vector)
  **/
 static int igb_poll(struct napi_struct *napi, int budget)
 {
-	struct igb_q_vector *q_vector = container_of(napi,
-						     struct igb_q_vector,
-						     napi);
-	bool clean_complete = true;
+	struct igb_q_vector *q_vector;
+	bool clean_complete;
 	int work_done = 0;
 
+	/* if budget is zero, we have a special case for netconsole, so
+	 * make sure to set clean_complete to false in that case.
+	 */
+	clean_complete = !!budget;
+
+	q_vector = container_of(napi, struct igb_q_vector, napi);
 #ifdef CONFIG_IGB_DCA
 	if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
 		igb_update_dca(q_vector);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
