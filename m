Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F10A61DC3F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 17:53:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7EED81F8A;
	Sat,  5 Nov 2022 16:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7EED81F8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667667227;
	bh=//qy7iZjDlbvWYn30xfZlkVNwJsXRzUfzzJfRYEnd4g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WrVH+FfxtleDHnPP4t6y29ONXgSiBNsB9to2MDy5heri60J8TeP888/EGXMcngB/p
	 qpyFvQaFKLS7YzRt/m5WwzeoydZdu2Misj4FbXv81IC1Cwaho6jKUC/vhCz2meG2ga
	 m57pt4gS0tux361L0RH6k/iHBN498c21CrV52qKd9H/W0eVCsIJOkq1ylK+VA/bTn8
	 jNArx5mTlS0umI42TUyI5v1K6g+Rjrqj+EQ6g7FzUBGRPPRz8ngJ9qvHTrNJLneRap
	 YVWRkcTuVAAFNVM5IRN09baZZ0HfRimYGVgRzdrfcXOBgY64NpeyEXe5ZbWYc8sGJ4
	 xEFW473QO0yCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6SyHM7aTU-5; Sat,  5 Nov 2022 16:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FE6A81F34;
	Sat,  5 Nov 2022 16:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FE6A81F34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96EC71BF38C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70B7481F38
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70B7481F38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 425B7Uk63zWz for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 16:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2147E81570
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2147E81570
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 16:53:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 09A46B80317;
 Sat,  5 Nov 2022 16:53:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28704C433D6;
 Sat,  5 Nov 2022 16:53:35 +0000 (UTC)
Date: Sat, 5 Nov 2022 12:53:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Message-ID: <20221105125333.5d718591@rorschach.local.home>
In-Reply-To: <20221105123642.596371c7@rorschach.local.home>
References: <20221105060024.598488967@goodmis.org>
 <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
 <20221105123642.596371c7@rorschach.local.home>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4a 00/38] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 5 Nov 2022 12:36:42 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Sat, 5 Nov 2022 08:59:36 -0700
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
> > On Fri, Nov 4, 2022 at 11:01 PM Steven Rostedt <rostedt@goodmis.org> wrote:  
> > >
> > > Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
> > > del_singleshot_timer_sync() for something that is not a oneshot timer. As this
> > > will be converted to shutdown, this needs to be fixed first.    
> > 
> > So this is the kind of thing that I would *not* want to get eartly.  
> 
> So I'll have to break up patch 5 to not update the
> del_singleshot_timer_sync() to a timer_shutdown_sync(), because that
> breaks this code.
> 
> Hmm, since that is a functional change, it probably should wait till
> the merge window. I'll move this patch and that part of patch 5 to the
> second part of the series for the merge window.
> 
> > 
> > I really would want to get just the infrastructure in to let people
> > start doing conversions.
> > 
> > And then the "mindlessly obvious patches that are done by scripting
> > and can not possibly matter".
> > 
> > The kinds that do not *need* review, because they are mechanical, and
> > that just cause pointless noise for the rest of the patches that *do*
> > want review.
> > 
> > Not this kind of thing that is so subtle that you have to explain it.
> > That's not a "scripted patch for no semantic change".
> > 
> > So leave the del_singleshot_timer_sync() cases alone, they are
> > irrelevant for the new infrastructure and for the "mindless scripted
> > conversion" patches.
> >   
> > > Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
> > > some drivers to better namespace names.    
> > 
> > Ok, these are relevant.
> >   
> > > Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
> > > that disable re-arming the timer after they are called.    
> > 
> > This is obviously what I'd want early so that people can start doign
> > this in their trees.  
> 
> But will need to remove the part that it changes del_singleshot_timer_sync().
> 
> 
> >   
> > > Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
> > > kmem_cache_free() and one call_rcu() call where the RCU function frees the
> > > timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
> > > called on that timer, and there's no extra exit path between the del_timer and
> > > freeing of the timer.    
> > 
> > So honestly, I was literally hoping for a "this is the coccinelle
> > script" kind of patch.  
> 
> The above actual was, but I walked through them manually too, because I
> don't trust my conccinelle skills. All but the call_rcu() one was
> caught by conccinelle. That's why I pointed out the worqueue one. I'll
> remove that from this series.
> 
> > 
> > Now there seems to be a number of patches here that are actualyl
> > really hard to see that they are "obviously correct" and I can't tell
> > if they are actually scripted or not.  
> 
> Yes they are. The script that found these were:
> 

Julia,

Perhaps you can help me here. I have the following script to find
places that call del_timer*() that need to be converted to
timer_shutdown*() if  later on in the same function the timer is being
freed.

> ----------------------8<------------------------
> @@
> identifier ptr, timer, rfield, slab;
> @@
> (
> -	del_timer(&ptr->timer);
> +	timer_shutdown(&ptr->timer);
> |
> -	del_timer_sync(&ptr->timer);
> +	timer_shutdown_sync(&ptr->timer);
> )
>     ...
> (
> 	kfree_rcu(ptr, rfield);
> |
> 	kmem_cache_free(slab, ptr);
> |
> 	kfree(ptr);
> )
> ---------------------->8------------------------  
> 

Above is the code I used. But it gets more than it should, see below.


> So any function that had a del_timer*(&obj->timer) and then that obj
> was freed with kfree(), kfree_rcu() or kmem_cache_free() was updated.
> 
> What I did manually was to make sure there was no exit of the routine
> between those two calls. I'm sure coccinelle could do that too, but I'm
> not good enough at it to add that feature.
> 
> The reason the patches don't look obvious is because the distance
> between the del_timer() and the free may be quite far. I walked through
> these patches at least 3 times manually to make sure they are all OK.
> 
> 
> > 
> > They don't *look* scripted, but I can't really tell.  I looked at the
> > patches with ten lines of context, and I didn't see the immediately
> > following kfree() even in that expanded patch context, so it's fairly
> > far away.  
> 
> Yes, some are like a 100 lines away.
> 
> > 
> > Others in the series were *definitely* not scripted, doing clearly
> > manual cleanups:
> > 
> > -    if (dch->timer.function) {
> > -        del_timer(&dch->timer);
> > -        dch->timer.function = NULL;
> > -    }
> > +    timer_shutdown(&dch->timer);
> > 
> > so no, this does *not* make me feel "ok, this is all trivial".  
> 
> Sorry, I'll remove that. It's basically open-coding the
> timer_shutdown() as the way it shuts down the timer is simply by
> setting the timer.function to NULL.
> 
> > 
> > IOW, I'd really want *just* the infrastructure and *just* the provably
> > trivial stuff. If it wasn't some scripted really obvious thing that
> > cannot possibly change anything and that wasn't then edited manually
> > for some reason, I really don't want it early.
> > 
> > IOW, any early conversions I'd take are literally about removing pure
> > mindless noise. Not about doing conversions.
> > 
> > And I wouldn't mind it as a single conversion patch that has the
> > coccinelle script as the explanation.  
> 
> I'll need to update the coccinelle script (or ask someone to give me a
> fix) that catches the case of:
> 
> 	del_timer(&obj->timer);
> 
> 	if (x)
> 		goto out;
> 
> 	kfree(obj);
> 
> out:
> 	return;
> 

The above should not be converted.

> 
> I'm sure it's a trivial change. I'll look into it some more.
> 
> I'm guessing you don't care about the case of:
> 
> 	del_timer(&obj->timer);
> 
> 	if (x)
> 		goto label;
> 
> label:
> 
> 	kfree(obj);

Although the above is fine, we probably shouldn't covert it for the rc
release.


I need a way to determine if something gets patched based on what
happens later, not before. Could you tell me how to go about that in
Coccinelle?

Thanks!

-- Steve


> 
> As that's a bit more complex if we avoid the first goto case?
> Even though the second case is obviously correct.
> 
> I believe both of these cases exist in the kernel. I manually removed
> the places that my script found for the first case.
> 
> > 
> > Really just THAT kind of "100% mindless conversion".  
> 
> I'll look at making the most obviously correct case, where del_timer
> and kfree have no goto or returns between them. We can always add the
> rest in the merge window.
> 
> -- Steve

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
