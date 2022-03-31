Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D68FC4EEEA4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 15:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28DEC41496;
	Fri,  1 Apr 2022 13:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jxc3LGuJoxfA; Fri,  1 Apr 2022 13:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B90EB41EC1;
	Fri,  1 Apr 2022 13:58:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBDD61BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4FE2840DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kwN0MMd4Rcf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 16:32:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91967840DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:32:42 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id t25so127934lfg.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 09:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b5EuL+gbnNFQ87YRYoAKBwPNNldsvEmstfa9tdC1Qjw=;
 b=sxdbgUE2Kaq4uw7gb73QHsWD6/kz3qaXOp4jtlQQ8zCWOGZchRXoS9h1kgGVgmwHMi
 0ovyZTnHlEv8jIe/t0cC86uBkO99V4EO8Uz5f6uPSjIGlmCW5dfk1M/WMMgmw59b/Vmr
 UaAH/7kYp3jq0L4a5oBQkDjGGm033na3bYjkJ0PSfFUGgdKTwJTImQPUAtxcu7+XlXvz
 2OjxZNPuXaMG+w58a5/U0wluu/5+wyuuUTsalUysgAJrKHCGhlMohRLo/Ao6Rozoy4M7
 vVa7GkNVeu1ikZU3b0NanTzbgz4haCidvDdbWRXlged7lJSNBHh2Wh1Z5C1S+UV2V2iS
 oshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b5EuL+gbnNFQ87YRYoAKBwPNNldsvEmstfa9tdC1Qjw=;
 b=esoDIQD1TwgltCzHB09ROLdNhHAdKbiqo7PhSxCE8ordbMPZyMAdMKX68YAnQtDvWf
 9rglNegnPgLj7s0c3bSgU1GcXAu6Yx4rIx98v9k9kEt/B5X+2MtqupIxeMeBeFN+Hk5J
 K+QA83HukEKzZo0nGB9ObpMWo4xh12fRrHTXciN0BJ1LKJ81lk52mgeWLrKmvHJRaR6a
 +B61imakceUb1+0wTY//QaMGcjA2R3fEa35zi7Dw2XNwoJelMO/6rYLVsZlmY3oKqiS5
 D7e2Wmst8eh0VK6mhRJ0Q7ePiz887DEMBAY+VhG3ynn0FXtc5OK+sXIv3UPGKZTdfVhX
 tvyQ==
X-Gm-Message-State: AOAM533WGzxpuzUATYKP/rOofBK8S0b8nNu6INnDLi4weknwGnyM4u9H
 QE0UYVQqSL31G/qpBJTQ0mhXVot66l7atVjv8ySo6g==
X-Google-Smtp-Source: ABdhPJzDKroUOn9WqA656ToUno9/DwyrFz+qIKbK639QDjkL6PIrlSnozMRN4BUf4+XJE6GzN91N3kg09SPyqja93/0=
X-Received: by 2002:ac2:4ed4:0:b0:44a:212e:fa1a with SMTP id
 p20-20020ac24ed4000000b0044a212efa1amr11109703lfr.372.1648744360087; Thu, 31
 Mar 2022 09:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220331105005.2580771-1-ivecera@redhat.com>
 <YkWpNVXYEBo/u3dm@boxer> <YkWp5JJ9Sp6UCTw7@boxer>
In-Reply-To: <YkWp5JJ9Sp6UCTw7@boxer>
From: Brett Creeley <brett@pensando.io>
Date: Thu, 31 Mar 2022 09:32:31 -0700
Message-ID: <CAFWUkrTzE87bduD431nu11biHi78XFitUWQfiwcU6_4UPU9FBg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Approved-At: Fri, 01 Apr 2022 13:58:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 mschmidt@redhat.com, open list <linux-kernel@vger.kernel.org>,
 poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 31, 2022 at 6:17 AM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Thu, Mar 31, 2022 at 03:14:32PM +0200, Maciej Fijalkowski wrote:
> > On Thu, Mar 31, 2022 at 12:50:04PM +0200, Ivan Vecera wrote:
> > > Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> > > because message sent from VF is ignored and never processed.
> > >
> > > Use mutex_lock() instead to fix the issue. It is safe because this
> >
> > We need to know what is *the* issue in the first place.
> > Could you please provide more context what is being fixed to the readers
> > that don't have an access to bugzilla?
> >
> > Specifically, what is the case that ignoring a particular message when
> > mutex is already held is a broken behavior?
>
> Uh oh, let's
> CC: Brett Creeley <brett@pensando.io>

My concern here is that we don't want to handle messages
from the context of the "previous" VF configuration if that
makes sense.

It might be best to grab the cfg_lock before doing any
message/VF validating in ice_vc_process_vf_msg() to
make sure all of the checks are done under the cfg_lock.

CC'ing Jake so he can provide some input as
well.

>
> >
> > > mutex is used to prevent races between VF related NDOs and
> > > handlers processing request messages from VF and these handlers
> > > are running in ice_service_task() context.
> > >
> > > Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
> > > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 10 +---------
> > >  1 file changed, 1 insertion(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > > index 3f1a63815bac..9bf5bb008128 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > > @@ -3660,15 +3660,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
> > >             return;
> > >     }
> > >
> > > -   /* VF is being configured in another context that triggers a VFR, so no
> > > -    * need to process this message
> > > -    */
> > > -   if (!mutex_trylock(&vf->cfg_lock)) {
> > > -           dev_info(dev, "VF %u is being configured in another context that will trigger a VFR, so there is no need to handle this message\n",
> > > -                    vf->vf_id);
> > > -           ice_put_vf(vf);
> > > -           return;
> > > -   }
> > > +   mutex_lock(&vf->cfg_lock);
> > >
> > >     switch (v_opcode) {
> > >     case VIRTCHNL_OP_VERSION:
> > > --
> > > 2.34.1
> > >
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
