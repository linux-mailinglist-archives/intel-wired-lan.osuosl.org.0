Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA2A6582A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 17:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72DD140D1A;
	Mon, 17 Mar 2025 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7hIeamth4dgw; Mon, 17 Mar 2025 16:34:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA22D40D91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742229249;
	bh=lEAS/dMOgky3SYKIzB2K3tdvG48sLpCOMQ5kkw7q2gY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rYVEXXkEMDssZb1Y6gFBIK0qqAs0178130ADy22kDQnD/MG1iXv0ttsG+3KoFZg4a
	 JSKzffB4m9ajuzyGErubehNNIZAp55vvoHrc/I+xG0MtTRNwBazWXAr8dUdDgnsSzU
	 ssYjth6z4Lr2zes3B6spm3FNY/RXSefvxUsm/YydI6Eyh8ANIEVgI1aVQ4HQ1Ey4J2
	 5foFSaOGlLCTBAGDVDP2mZj+kxAmcEtH+ayS28mRPwlB6bQhMqpFACgkHLLXbRt0mB
	 sP+Eif4T93IgSmH1fqjivqt30OOG9RcSslt8a3dqJ1jJmq7Q2Q6+sQkrQC7gRaENtC
	 Gp4osS9oREBfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA22D40D91;
	Mon, 17 Mar 2025 16:34:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1662612E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04E7860B0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_tw3WcLRKt2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 16:34:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C3B3C60B0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3B3C60B0D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3B3C60B0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 16:34:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1DFA2A4650F;
 Mon, 17 Mar 2025 16:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE070C4CEE3;
 Mon, 17 Mar 2025 16:34:01 +0000 (UTC)
Date: Mon, 17 Mar 2025 16:33:59 +0000
From: Simon Horman <horms@kernel.org>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250317163359.GC688833@kernel.org>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-2-grzegorz.nitka@intel.com>
 <aecd919b-fbb8-4790-af1f-69b50cc78438@molgen.mpg.de>
 <IA1PR11MB6219197D989E2DD57307AE8D92C82@IA1PR11MB6219.namprd11.prod.outlook.com>
 <IA1PR11MB62190A2A70EF90C94589A6F092D62@IA1PR11MB6219.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA1PR11MB62190A2A70EF90C94589A6F092D62@IA1PR11MB6219.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742229243;
 bh=mQw5qekmpzoK/qjP+ndIMzj8Aa7WTwL40recPHtQpcU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O4o2fvawsjGFwmkQ41AQd/G+0bs4SbyXkz3JG1ecTn46TJFhQU2m4k9qi7FmmzA7m
 gStpsOie82GW7IZ6oPLTSFGyL2dleYTpmd+iOCa4+8suUyIe6vIVMFl3fCSDJlnddm
 tEyLQ1xhExMEOS7BbgCVxBVOeILyCdk8ISbblsBNDS+tGzb7326l+DKTOmqVsdqzDC
 SwhwXu0KChx9bjiFxCOpr7PHyyKaOg/fCMGbTf+6bXdTAqT+pGUHw2nln8JJOQC9My
 OMlLQJ+mCC7VhwFfuKrvIFx6IolyV5K9pJD8nfNiU9i3zqgLRd6b3GQCAbwzldQqcQ
 GiT/LV3azdj4A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=O4o2fvaw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
 band access workaround for E825
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

On Mon, Mar 10, 2025 at 12:36:31PM +0000, Nitka, Grzegorz wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Nitka, Grzegorz
> > Sent: Tuesday, March 4, 2025 2:04 PM
> > To: Paul Menzel <pmenzel@molgen.mpg.de>; Kolacinski, Karol
> > <karol.kolacinski@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
> > band access workaround for E825
> > 
> > > -----Original Message-----
> > > From: Paul Menzel <pmenzel@molgen.mpg.de>
> > > Sent: Friday, February 21, 2025 10:16 PM
> > > To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; Kolacinski, Karol
> > > <karol.kolacinski@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
> > > Przemyslaw <przemyslaw.kitszel@intel.com>; Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
> > > band access workaround for E825
> > >
> > > Dear Grzegorz, dear Karol,
> > >
> > >
> > > Thank you for your patch.
> > >
> > > Am 21.02.25 um 13:31 schrieb Grzegorz Nitka:
> > > > From: Karol Kolacinski <karol.kolacinski@intel.com>
> > > >
> > > > Due to the bug in FW/NVM autoload mechanism (wrong default
> > > > SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
> > > > clients was disabled by default.
> > >
> > > I’d add a blank line between the paragraphs.
> > >
> > > > As the workaround solution, the register value was overwritten by the
> > > > driver at the probe or reset handling.
> > > > Remove workaround as it's not needed anymore. The fix in autoload
> > > > procedure has been provided with NVM 3.80 version.
> > >
> > > Is this compatible with Linux’ no regression policy? People might only
> > > update the Linux kernel and not the firmware.
> > >
> > > How did you test this, and how can others test this?
> > >
> > > > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > > > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > > ---
> > > >   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 23 ---------------------
> > > >   1 file changed, 23 deletions(-)
> > >
> > >
> > > Kind regards,
> > >
> > > Paul
> > >
> > >
> > 
> > Dear Paul, first of all thank you for your review and apologize for late
> > response (simply, I was out previous week).
> > 
> > Removing that workaround was a conscious decision.
> > Rationale for that is, that the 'problematic' workaround was provided
> > in very early product development stage (~ year ago).  Now, especially
> > when E825-C product was just officially announced, the customer shall
> > use official, approved SW ingredients.
> > 
> > Here are more details on this:
> > - introduction to E825-C devices was provided in kernel 6.6, to allow
> >   selected customers for early E825-C enablement. At that time E825-C
> >   product family was in early phase (kind of Alpha), and one of the
> >   consequences, from today's perspective,  is that it included 'unwanted'
> >   workarounds like this.
> > 
> > - this change applies to E825-C products only, which is SoC product, not
> >   a regular NIC card.  What I'd like to emphasize here, it requires even more
> >   customer support from Intel company in terms of providing matching
> >   SW stack (like BIOS, firmware, drivers etc.).
> > 
> > I see two possibilities now:
> > 1) if the regression policy you mentioned is inviolable, keep the workaround
> >    in the kernel code like it is today. Maybe we could add NVM version
> > checker
> >    and apply register updates for older NVMs only.
> >    But, in my opinion, it would lead to keeping a dead code. There shouldn't
> > be
> >    official FW (I hope I won't regret these words) on the market which
> > requires
> >    this workaround.
> > 
> > 2) remove the workaround like it's implemented in this patch and improve
> >    commit message to clarify all potential doubts/questions from the user
> >    perspective.
> > 
> > What's your thoughts?
> > 
> > Kind regards
> > 
> > Grzegorz
> > 
> 
> I've just submitted v2 of this series, but no changes in this area yet (except adding
> blank line suggestion)
> I'm waiting for feedback or confirmation if above justification is sufficient.
> I'll submit one more if needed.

Hi Grzegorz,

Sorry for not commenting on this earlier,
your question has been hanging out on the ML for a while now.

From my point of view the key part of your justification is that
Intel has sufficient control of the SW stack and availability of (SoC)
devices such that in practice users would not see a regression.
And in my view this is entirely reasonable and the approach taken by
this patch is fine.

I do, however, think some text regarding this belongs in the patch
description. And I'll respond in that vein to v3 [*].

[*] https://lore.kernel.org/netdev/20250310122439.3327908-2-grzegorz.nitka@intel.com/
