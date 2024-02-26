Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2F98681BD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 21:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55AC960B0E;
	Mon, 26 Feb 2024 20:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FnLDuaEYSn4T; Mon, 26 Feb 2024 20:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E3BC60683
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708978302;
	bh=lImKjhx3mbLC7/PeG7z/wsJLqj583nlyj7rKhyutm1Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u37mCFeCT+kiGOl3KjCXMZoa9QBrFFZQCc3Jl1mVJm7s/MqE2mB1nBX3PC44b03nV
	 Kot0iEwOMffDQs6MJIPv+U2LtuaQJp6GwgAl1gJp/cWqEP3+QNHXpNo7WRYCLhJ1R1
	 Rc0+eI8BGKD1ae0+qDKLVMJ4g3ViXaptRhVb94F+oad8lBALkzKrPm0bRSe3ztP5x5
	 b3DzhYQOvq+3mzYDzPW+Y5PRwQOB7T8LU7NafnPjXGWbcRK3S+Zq98jU6PICaUSjzY
	 c2eD+C4+aApbariUtIRvCA4BRxUYtaUMgcSnzZ7ZSGvnrK6ciHHoCBa6zm2cJ/6Uwr
	 IBZ9dpC9tGWiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E3BC60683;
	Mon, 26 Feb 2024 20:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 357521BF271
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E36281E4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydAMQPptEXly for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 20:11:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DEE0380EA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEE0380EA2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEE0380EA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 20:11:38 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-646-ogmgAI5hPiWYxC9lcjQU6Q-1; Mon, 26 Feb 2024 15:11:36 -0500
X-MC-Unique: ogmgAI5hPiWYxC9lcjQU6Q-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5656f696a00so2886896a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 12:11:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708978295; x=1709583095;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lImKjhx3mbLC7/PeG7z/wsJLqj583nlyj7rKhyutm1Y=;
 b=u0UFzLxobHwwzxq82mCwIB43Rvd4CYDPl7Vd+fQmmft5DANcmEjfTFgyySjrtZQEo5
 d68FifqXkISpm90fbSIsBXkfimu/hQtfSv6gz9kbNOjgQ+N2sFsO50HG0JEbK2DCu7Sl
 NwLG57eEmYhGqJo4UL/ELXf8GYjY12QFz9eVjFKP4GvTfnqwyu0WjJfXrnCJaIDF3xx4
 b14HEFXOf0Iu8scmLNYM+IlmQUjEkBpyyxFPpX0mSR7h/ByrYdEMZhFwycDxR0KeZKkk
 g5CVdTljKscFCIs62zqzCjAaPJmMFelS00un2gBUCZ4H2jb2XTlbIahdG0tj0vlihmQC
 A3Nw==
X-Gm-Message-State: AOJu0YxdzeeVW/tANI3S5oyLaua8CwrgYmn1DfHWel2LNFBbkHse56t6
 qoss+Aqhrk0maN9qZ4zEseAp9zCiSSHCtht9k8YzySMhZnvFew2zAKrbkZKKAQUkp2fPGuf0IhI
 JghJdE4fCMOWJUFPmTTAwdLJ+5wcgsxH+sXVLBeejAqnZJheeFh4RFPRh2XVpQ2X/hZHkfAIYAz
 r0+426YGv7csEgjqyKaTergwMeijOgFFSQpj/MstipWQ==
X-Received: by 2002:a17:906:6dcd:b0:a3e:7cd8:3db7 with SMTP id
 j13-20020a1709066dcd00b00a3e7cd83db7mr5543271ejt.68.1708978294908; 
 Mon, 26 Feb 2024 12:11:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDx/VXbHhc7+1+gW+s0W5/hQikc4xx1u9a4ebbDB3rYzlGs9rj31BBTAEOEIoWoY4BS5f2VOHpSaAFXvDvjpQ=
X-Received: by 2002:a17:906:6dcd:b0:a3e:7cd8:3db7 with SMTP id
 j13-20020a1709066dcd00b00a3e7cd83db7mr5543262ejt.68.1708978294605; Mon, 26
 Feb 2024 12:11:34 -0800 (PST)
MIME-Version: 1.0
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-3-mschmidt@redhat.com>
 <e03aabf2-2a97-4395-9060-909d3651bcf7@intel.com>
In-Reply-To: <e03aabf2-2a97-4395-9060-909d3651bcf7@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 26 Feb 2024 21:11:23 +0100
Message-ID: <CADEbmW19UZ2KvmHr_JrmJ9--yy2L4zOJKAUdJFtN53tWR5nkrA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708978297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lImKjhx3mbLC7/PeG7z/wsJLqj583nlyj7rKhyutm1Y=;
 b=IqIaDgxt9B57QJbZZAIUxxpm6MGBmhnnTeTs2GoLjy8pnjdgLzAQVPfKAaVxhAPkW1ZmBG
 l5Rb1ON22nEhvM4KHGtJq5ckS/TeIVHhgTyvsFrI4/DyRe1MWyhbnanKteANvLq6ij8Uyz
 B9C6a2oNDsVV27YeouME7CMAioOVR9Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IqIaDgxt
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: avoid the PTP
 hardware semaphore in gettimex64 path
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 26, 2024 at 8:36=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
> On 2/26/2024 7:11 AM, Michal Schmidt wrote:
> > The writing is performed indirectly, by the hardware, as a result of
> > the driver writing GLTSYN_CMD_SYNC in ice_ptp_exec_tmr_cmd. I wasn't
> > sure if the ice_flush there is enough to make sure GLTSYN_TIME has been
> > updated, but it works well in my testing.
> >
>
> I believe this is good enough. I don't know the exact timing involved
> here, but the hardware synchronizes the update to all the PHYs and the
> MAC and it is supposed to be on the order of nanoseconds.

Thanks, that's good to know.

> > My test code can be seen here:
> > https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock
> > It consists of:
> >  - kernel threads reading the time in a busy loop and looking at the
> >    deltas between consecutive values, reporting new maxima.
> >    in the consecutive values;
> >  - a shell script that sets the time repeatedly;
> >  - a bpftrace probe to produce a histogram of the measured deltas.
> > Without the spinlock ptp_gltsyn_time_lock, it is easy to see tearing.
> > Deltas in the [2G, 4G) range appear in the histograms.
> > With the spinlock added, there is no tearing and the biggest delta I sa=
w
> > was in the range [1M, 2M), that is under 2 ms.
> >
>
> Nice.
>
>
> At first, I wasn't convinced we actually need cross-adapter spinlock
> here. I thought all the flows that took hardware semaphore were on the
> clock owner. Only the clock owner PF will access the GLTSYN_TIME
> registers, (gettimex is only exposed through the ptp device, which hooks
> into the clock owner). Similarly, only the clock owner does adjtime,
> settime, etc.

Non-owners do not expose a ptp device to userspace, but they still do
ice_ptp_periodic_work -> ice_ptp_update_cached_phctime ->
ice_ptp_read_src_clk_reg, where they read GLTSYN_TIME.

> However... It turns out that at least a couple of flows use the
> semaphore on non-clock owners. Specifically E822 hardware has to
> initialize the PHY after a link restart, which includes re-doing Vernier
> calibration. Each PF handles this itself, but does require use of the
> timer synchronization commands to do it. In this flow, the main timer is
> not modified but we still use the semaphore and sync registers.
>
> I don't think that impacts the E810 card, but we use the same code flow
> here. The E822 series hardware doesn't use the AdminQ for the PHY
> messages, so its faster but I think the locking improvement would still
> be relevant for them as well.
>
> Given all this, I think it makes sense to go this route.
>
> I'd like to follow-up with possibly replacing the entire HW semaphore
> with a mutex initialized here. That would remove a bunch of PCIe posted
> transactions required to acquire the HW semaphore which would be a
> further improvement here.

Yes, I agree and I have already been looking into this.
Thanks,
Michal

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_adapter.c | 2 ++
> >  drivers/net/ethernet/intel/ice/ice_adapter.h | 6 ++++++
> >  drivers/net/ethernet/intel/ice/ice_ptp.c     | 8 +-------
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 3 +++
> >  4 files changed, 12 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net=
/ethernet/intel/ice/ice_adapter.c
> > index deb063401238..4b9f5d29811c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> > @@ -5,6 +5,7 @@
> >  #include <linux/mutex.h>
> >  #include <linux/pci.h>
> >  #include <linux/slab.h>
> > +#include <linux/spinlock.h>
> >  #include <linux/xarray.h>
> >  #include "ice_adapter.h"
> >
> > @@ -38,6 +39,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_=
dev *pdev)
> >       if (!a)
> >               return NULL;
> >
> > +     spin_lock_init(&a->ptp_gltsyn_time_lock);
> >       refcount_set(&a->refcount, 1);
> >
> >       if (xa_is_err(xa_store(&ice_adapters, index, a, GFP_KERNEL))) {
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net=
/ethernet/intel/ice/ice_adapter.h
> > index cb5a02eb24c1..9d11014ec02f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> > @@ -4,15 +4,21 @@
> >  #ifndef _ICE_ADAPTER_H_
> >  #define _ICE_ADAPTER_H_
> >
> > +#include <linux/spinlock_types.h>
> >  #include <linux/refcount_types.h>
> >
> >  struct pci_dev;
> >
> >  /**
> >   * struct ice_adapter - PCI adapter resources shared across PFs
> > + * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIM=
E
> > + *                        register of the PTP clock.
> >   * @refcount: Reference count. struct ice_pf objects hold the referenc=
es.
> >   */
> >  struct ice_adapter {
> > +     /* For access to the GLTSYN_TIME register */
> > +     spinlock_t ptp_gltsyn_time_lock;
> > +
> >       refcount_t refcount;
> >  };
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/eth=
ernet/intel/ice/ice_ptp.c
> > index c11eba07283c..b6c7246245c6 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -374,6 +374,7 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct =
ptp_system_timestamp *sts)
> >       u8 tmr_idx;
> >
> >       tmr_idx =3D ice_get_ptp_src_clock_index(hw);
> > +     guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
> >       /* Read the system timestamp pre PHC read */
> >       ptp_read_system_prets(sts);
> >
> > @@ -1925,15 +1926,8 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, =
struct timespec64 *ts,
> >                  struct ptp_system_timestamp *sts)
> >  {
> >       struct ice_pf *pf =3D ptp_info_to_pf(info);
> > -     struct ice_hw *hw =3D &pf->hw;
> > -
> > -     if (!ice_ptp_lock(hw)) {
> > -             dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
> > -             return -EBUSY;
> > -     }
> >
> >       ice_ptp_read_time(pf, ts, sts);
> > -     ice_ptp_unlock(hw);
> >
> >       return 0;
> >  }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/=
ethernet/intel/ice/ice_ptp_hw.c
> > index 187ce9b54e1a..a47dbbfadb74 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > @@ -274,6 +274,9 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_pt=
p_tmr_cmd cmd)
> >   */
> >  static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
> >  {
> > +     struct ice_pf *pf =3D container_of(hw, struct ice_pf, hw);
> > +
> > +     guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
> >       wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
> >       ice_flush(hw);
> >  }
>

