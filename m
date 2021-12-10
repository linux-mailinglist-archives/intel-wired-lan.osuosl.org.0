Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4FA4731C1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 17:27:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E66D85AF5;
	Mon, 13 Dec 2021 16:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cMAU8DkJcYq7; Mon, 13 Dec 2021 16:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BCAE85AD7;
	Mon, 13 Dec 2021 16:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1FBC1BF573
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB1506077F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvcgB6OaZRyP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 13:46:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0ABA8606E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1639143951;
 bh=61z20EaDAfzSCQr3yBAxHGxcXWTwpxearHS+Ef3CY0c=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date:In-Reply-To:References;
 b=hnzBPI1S1qfFM5zIjh5di8mnnF3KwV8eNJLuqHKRcVb549fRKOAeEdv0uf4iAF7CT
 FIqAwMFJwE8lOjCyaihcl8eSS7P5Z07ZM3UqqClAQWcvecBmvsDYvKChwWxv7FGc8I
 OAAi2otEjW0Vt43KQ4PkQqtAN7GUkmRyQ79H2S5s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from machineone.fritz.box ([84.190.134.104]) by mail.gmx.net
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M4JqV-1mvPEl328X-000PQY; Fri, 10 Dec 2021 14:45:50 +0100
Message-ID: <8e59b7d6b5d4674d5843bb45dde89e9881d0c741.camel@gmx.de>
From: Stefan Dietrich <roots@gmx.de>
To: Thorsten Leemhuis <regressions@leemhuis.info>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>
Date: Fri, 10 Dec 2021 14:45:49 +0100
In-Reply-To: <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
 <87o85yljpu.fsf@intel.com>
 <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:jZZVxBuaO27//eAiaoMzoPSyG25joqjIan2Q429Vkq1mIPPqinR
 sjzuwgw5hxJWkxzlUWfI19eyo/Q8BQkz5AlnfoV5xRzobVCq9hEBbMRgou0lYbTmMdlv+lM
 dmlDVqGs07RUDbVzCY0s+rRZcH07IIElLvl5bTEmfFlMHOS6d7R6MszSCzDI/ngWUn/zQIN
 9Hieg/iemU5qQJ1BTb3wQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4JiWODPLsZw=:rtccyt+MnsV54LvDgAl4bF
 iBLwqbEghd5PU+3UOhBmAvNlcGj7Vj/kczcvv2NIODaqIcoo2F+EMeHoCM1CzbRmd8nEVbjNl
 9auQHea82qHlwNu4dLzgWv8ZJ4AEZpsxkIxVFXWyb0sTPzxGxr7PHILwIwjkE33P1DplRkXjt
 +z4Agp7wOR90Xim/TxElGc3Kh3r3s97BPbVzUikOVYVb+j3LDOGsMJfcwtGgHH8WnggTR571V
 Bo/qtsHEEJHUeZBg8cwbWFajEYfn3U+Tj0DuvYMRAomN+Gs6iXKaZ5ddUi4FBN+/N0cSaUyvy
 Tu2L1G9hEVnivZvz1KTTfWekS+lCa5fDOvaLy9vUjhGzgDEFwTX3me5TUzkrRod9jLUBq/cvS
 JL5JjNa1BXpTvxoNxGG/kd+cnooVwRnBAfOnLkiQIQvoxONga5yRz19seLOE4dt/SzwvCPqh7
 VmLSSO0dl2rooLIKOsrlYxxkW8whsm9tTFaskmXz0rRD4blbBhZEFsyp/Uq5+ePkVEjzkMYXh
 uTrasmKDUqYBsUs1cZ7sCUtmqOKyynq3/RGKaMLPk2+gdB+nx+fx39ofClvfwEaLqaG9yOP+8
 Vb5ug0kb/RgJ4HVefVXBSjuEZGctXQE99bgG01B2UdRbcdoiLKfLwhzWCQ/P0JvP2yZC1SQaf
 3mfPd+q86/pPgzkNqK+0JlLV/MEEeqYTPvZ0H9dvEOt0M1saOhHvcOdocYITmfYtqI7fjubq4
 vKfBj0p9pKRP58sChSkGMNkMH18csUh3owyFNuP8L8Vx70Sg5YCxx0o1I+qDfC423WJfyesfg
 6YEpL01ZbgtzUn3Pe+lRSgv53y1/VPKSyyAabWvjpSspsWX+Z9ObE9xTY/zy/k0S2KVJ3nGQU
 mVhnjSzjrN5e5CXX43ubVuXtQ8ZQldmpJPKS2TTSeN6l0+3S0Q9ZjjmomEHl/E2gBtt+43wOu
 uEZPAbTqCBCN5kF4WiapeFbgcI36+1BgdIZAtJ4b9NuHCVCrizAt9DkFKpdgVIwfAKt3eHb6/
 vWJ8C7mAuSHvfmfLJe8RH3DG9gAO09BpIzcBZUziiQNlXc3aw9rDTy0Iq7NWCvdEQo3rTsWhT
 0FH3eYaNmDNhw0=
X-Mailman-Approved-At: Mon, 13 Dec 2021 16:27:34 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Thorsten,

thanks for keeping an eye on the issue. I've sent the files in private
because I did not want to spam the mailing lists with them. Please let
me know if this is the correct procedure.


Cheers,
Stefan


On Fri, 2021-12-10 at 10:40 +0100, Thorsten Leemhuis wrote:
> Hi, this is your Linux kernel regression tracker speaking.
>
> On 02.12.21 23:34, Vinicius Costa Gomes wrote:
> > Hi Stefan,
> >
> > Stefan Dietrich <roots@gmx.de> writes:
> >
> > > Hi Vinicius,
> > >
> > > thanks for the patch - unfortunately it did not solve the issue
> > > and I
> > > am still getting reboots/lockups.
> > >
> >
> > Thanks for the test. We learned something, not a lot, but
> > something: the
> > problem you are facing is PTM related and it's not the same bug as
> > that
> > PM deadlock.
> >
> > I am still trying to understand what's going on.
> >
> > Are you able to send me the 'dmesg' output for the two kernel
> > configs
> > (CONFIG_PCIE_PTM enabled and disabled)? (no need to bring the
> > network
> > interface up or down). Your kernel .config would be useful as well.
>
> Stefan, could you provide the data Vinicius asked for? Or did you do
> that in private already? Or was progress made somewhere else and I
> simply missed this?
>
> Ciao, Thorsten, your Linux kernel regression tracker.
>
> P.S.: As a Linux kernel regression tracker I'm getting a lot of
> reports
> on my table. I can only look briefly into most of them. Unfortunately
> therefore I sometimes will get things wrong or miss something
> important.
> I hope that's not the case here; if you think it is, don't hesitate
> to
> tell me about it in a public reply. That's in everyone's interest, as
> what I wrote above might be misleading to everyone reading this; any
> suggestion I gave they thus might sent someone reading this down the
> wrong rabbit hole, which none of us wants.
>
> BTW, I have no personal interest in this issue, which is tracked
> using
> regzbot, my Linux kernel regression tracking bot
> (https://linux-regtracking.leemhuis.info/regzbot/). I'm only posting
> this mail to get things rolling again and hence don't need to be CC
> on
> all further activities wrt to this regression.
>
> #regzbot poke
>
> > > On Wed, 2021-12-01 at 10:57 -0800, Vinicius Costa Gomes wrote:
> > > > Inspired by:
> > > > https://bugzilla.kernel.org/show_bug.cgi?id=215129
> > > >
> > > > Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > > > ---
> > > > Just to see if it's indeed the same problem as the bug report
> > > > above.
> > > >
> > > >  drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++
> > > > ------
> > > >  1 file changed, 13 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > b/drivers/net/ethernet/intel/igc/igc_main.c
> > > > index 0e19b4d02e62..c58bf557a2a1 100644
> > > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > > @@ -6619,7 +6619,7 @@ static void
> > > > igc_deliver_wake_packet(struct
> > > > net_device *netdev)
> > > >  	netif_rx(skb);
> > > >  }
> > > >
> > > > -static int __maybe_unused igc_resume(struct device *dev)
> > > > +static int __maybe_unused __igc_resume(struct device *dev,
> > > > bool rpm)
> > > >  {
> > > >  	struct pci_dev *pdev = to_pci_dev(dev);
> > > >  	struct net_device *netdev = pci_get_drvdata(pdev);
> > > > @@ -6661,20 +6661,27 @@ static int __maybe_unused
> > > > igc_resume(struct
> > > > device *dev)
> > > >
> > > >  	wr32(IGC_WUS, ~0);
> > > >
> > > > -	rtnl_lock();
> > > > +	if (!rpm)
> > > > +		rtnl_lock();
> > > >  	if (!err && netif_running(netdev))
> > > >  		err = __igc_open(netdev, true);
> > > >
> > > >  	if (!err)
> > > >  		netif_device_attach(netdev);
> > > > -	rtnl_unlock();
> > > > +	if (!rpm)
> > > > +		rtnl_unlock();
> > > >
> > > >  	return err;
> > > >  }
> > > >
> > > >  static int __maybe_unused igc_runtime_resume(struct device
> > > > *dev)
> > > >  {
> > > > -	return igc_resume(dev);
> > > > +	return __igc_resume(dev, true);
> > > > +}
> > > > +
> > > > +static int __maybe_unused igc_resume(struct device *dev)
> > > > +{
> > > > +	return __igc_resume(dev, false);
> > > >  }
> > > >
> > > >  static int __maybe_unused igc_suspend(struct device *dev)
> > > > @@ -6738,7 +6745,7 @@ static pci_ers_result_t
> > > > igc_io_error_detected(struct pci_dev *pdev,
> > > >   *  @pdev: Pointer to PCI device
> > > >   *
> > > >   *  Restart the card from scratch, as if from a cold-boot.
> > > > Implementation
> > > > - *  resembles the first-half of the igc_resume routine.
> > > > + *  resembles the first-half of the __igc_resume routine.
> > > >   **/
> > > >  static pci_ers_result_t igc_io_slot_reset(struct pci_dev
> > > > *pdev)
> > > >  {
> > > > @@ -6777,7 +6784,7 @@ static pci_ers_result_t
> > > > igc_io_slot_reset(struct pci_dev *pdev)
> > > >   *
> > > >   *  This callback is called when the error recovery driver
> > > > tells us
> > > > that
> > > >   *  its OK to resume normal operation. Implementation
> > > > resembles the
> > > > - *  second-half of the igc_resume routine.
> > > > + *  second-half of the __igc_resume routine.
> > > >   */
> > > >  static void igc_io_resume(struct pci_dev *pdev)
> > > >  {
> >
> > Cheers,
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
