Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QChkOFUUGGrKbggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 12:09:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C95575F03C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 12:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D56C342A11;
	Thu, 28 May 2026 10:09:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id avFVBnzncez1; Thu, 28 May 2026 10:09:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44C2C42A03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779962962;
	bh=mXTcwOAxYCyeWUNvCluJGYFYmCjEQFu3Xz6J5KO3OCo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Ovq78UKUJtxvCZ2OVZHh4aTwadgXHfolviCTMBRkkbAans9EY7TNtCPzpj3MOHsD
	 1sTr48u8As5RHjkYNqq1xwhzkBTpJnR95OyhFbhL/wGLWP1FDX0jVFgAmJ3E/S3EV/
	 5POVGKSGCXW+YpInIUS+80Hdnq4s9iGzTZ3EgYI6RZ7lFnmEhMn8RTn6j6Z8a16RsX
	 nMFQzUehrlX5zHV1e3hwU866Ta5H2CWjsY/zxuArHmuDUdU3WZOvMftohkd3gEfB3D
	 IBjUZRxlHVnXqjqgnAmiq3nUIVETLJRtVY1fH3ONIae00BTeHMB+LdwNSXmijbBA8c
	 cTwSfaSjVg81g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44C2C42A03;
	Thu, 28 May 2026 10:09:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A08A9288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 10:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8195E617A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 10:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uaduhJlDMRQo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 10:09:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 95A61616B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95A61616B9
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95A61616B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 10:09:19 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 788DB605AE;
 Thu, 28 May 2026 10:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ED891F000E9;
 Thu, 28 May 2026 10:09:14 +0000 (UTC)
Date: Thu, 28 May 2026 11:09:12 +0100
From: Simon Horman <horms@kernel.org>
To: "MOESSBAUER, Felix" <felix.moessbauer@siemens.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Yan, Zheng" <zheng.z.yan@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Behera, VIVEK" <vivek.behera@siemens.com>,
 "Ertman, David M" <david.m.ertman@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20260528100912.GQ2256768@horms.kernel.org>
References: <20260505101141.2657169-1-felix.moessbauer@siemens.com>
 <20260508095659.GM15617@horms.kernel.org>
 <1c72678bab1eeca51b7f849a6f85999995b646f3.camel@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c72678bab1eeca51b7f849a6f85999995b646f3.camel@siemens.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779962958;
 bh=mXTcwOAxYCyeWUNvCluJGYFYmCjEQFu3Xz6J5KO3OCo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=LulWM921MeRbNQtw0y9fCJUcdUcT3z2gceurOxdgGEhcUsdKSqokqrpPIeRQ5raM5
 pCCQA9V48uTEpZnv+3EL+GZ9g1YmmrtC9EEs0kXX9gioN9qqu/Mv+K71ouoaUvOq3l
 TgshLq87W8ZuALUuep1w8TyYcnG/vG/7uhun3JnnyseokvJSBuPpTUU23x60QHcaVn
 OMg0j+JizsoL9gOhgtcQKl7bgNxcIkRBcO+BDKg91+lifdnsOWiyvnWq0zVwiM2kXg
 WLx8poGGsTWriYm/E0apkoTPgM83EjfvMUfmFcleggK8lhhTiDphFTZ0WEt9cW5sJK
 J6XtQYDRmMSHg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=LulWM921
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igb: Return state in
 pm_runtime_idle instead of power-down
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,siemens.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:felix.moessbauer@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:zheng.z.yan@intel.com,m:netdev@vger.kernel.org,m:vivek.behera@siemens.com,m:david.m.ertman@intel.com,m:sasha.neftin@intel.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,siemens.com:email,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C95575F03C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 07:53:53AM +0000, MOESSBAUER, Felix wrote:
> On Fri, 2026-05-08 at 10:56 +0100, Simon Horman wrote:
> > + David Ertman, Sasha Neftin, Heiner Kallweit
> > 
> > On Tue, May 05, 2026 at 12:11:34PM +0200, Felix Moessbauer wrote:
> > > The PM runtime_idle API expects to get an indication if the device can
> > > be powered down. Instead of returning the appropriate state, we
> > > currently directly power down the device (if not active) and return
> > > that the device is busy.
> > > 
> > > We change this by making the function side-effect free and just return
> > > the state.
> > > 
> > > Fixes: 749ab2cd12704 ("igb: add basic runtime PM support")
> > > Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> > > ---
> > >  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> > > index ce91dda00ec0e..e8ab0b506a104 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > @@ -9652,7 +9652,7 @@ static int igb_runtime_idle(struct device *dev)
> > >  	struct igb_adapter *adapter = netdev_priv(netdev);
> > >  
> > >  	if (!igb_has_link(adapter))
> > > -		pm_schedule_suspend(dev, MSEC_PER_SEC * 5);
> > > +		return 0;
> > >  
> > >  	return -EBUSY;
> > >  }
> > 
> > Hi Felix,
> > 
> > I am not sure this is the right approach, are you seeing a behavioural
> > problem?
> 
> I don't see a behavioral issue, but a clear API violation. That's why I
> also added a fixes tag.
> 
> > 
> > 
> > This pattern seems to also be present in at least e1000e, igc and r8169.
> > 
> > The igb and e1000e implementations seem to have co-evolved [1][2],
> > possibly in conjunction with OOT versions of each driver.
> > The igc implementation came later, perhaps copying e1000e or igb [3].
> 
> I'm fine with also changing the other drivers, however I'm not able to
> test these (except for e1000e).
> 
> > 
> > The git log for r8169 seems to provide a justification for why that
> > driver users this approach [4].
> > 
> >     - Let the idle notification check whether we can suspend and let it
> >       schedule the suspend. This way we don't need to have calls to
> >       pm_schedule_suspend in different places.
> 
> To me it still is a bit vague, why it was implemented like that. By
> implementing it as done prior to my change, we have pm_schedule_suspend
> in multiple places (along with a hard-coded delay of 5 secs).
> 
> > 
> > While the current e1000e implementation seems to address some reliability
> > issues [1], although it's not entirely clear to me how that relates to the
> > issue at hand.
> 
> I don't think that this relates, but I also found the igb_runtime_idle
> inconsistency while debugging why setting the mac addr on an igb nic
> without cable attached (no carrier) fails on some systems.
> 
> IOW: What I propose here is a drive-by fix based on me reading the code
> and the PM API.

Thanks,

I understand your position wrt API violation. But given the history of this
code, both in igb and other Intel drivers, I think we need some insight
from people familiar with this code regarding what is going on here.

> 
> Best regards,
> Felix
> 
> > 
> >     Fix issues with:
> >     RuntimePM causing the device to repeatedly flip between suspend and resume
> >     with the interface administratively downed.
> >     Having RuntimePM enabled interfering with the functionality of Energy
> >     Efficient Ethernet.
> > 
> >     Added checks to disallow functions that should not be executed if the
> >     device is currently runtime suspended
> > 
> >     Make runtime_idle callback to use same deterministic behavior as the igb
> >     driver.
> > 
> > [1] 63eb48f151b5 ("e1000e Refactor of Runtime Power Management")
> >     Fri Feb 14 07:16:46 2014 +0000
> > [2] 749ab2cd1270 ("igb: add basic runtime PM support")
> >     Wed Jan 4 20:23:37 2012 +0000
> > [3] 9513d2a5dc7f ("igc: Add legacy power management support")
> >     Thu Nov 14 09:54:46 2019 +020
> > [4] a92a08499b1f ("r8169: improve runtime pm in general and suspend unused ports")
> >     Mon Jan 8 21:39:13 2018 +0100
