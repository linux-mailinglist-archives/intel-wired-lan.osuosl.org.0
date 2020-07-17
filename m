Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70853223D2D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 15:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 689A9204EC;
	Fri, 17 Jul 2020 13:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pQfH-o5BinU; Fri, 17 Jul 2020 13:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 51CFB2042C;
	Fri, 17 Jul 2020 13:45:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 236D61BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 13:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1E96287FD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 13:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLA1v+DkNOyV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 13:45:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21CCD86A7C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 13:45:42 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id k18so7586836qtm.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7ztCEXSrEjXV+aAu0HuFEs2AGLH1hENvLq4HsMbWxEI=;
 b=S2ZbeAA8JXp9Lxr0h3ChYgJvNn/ngCTG5TgFfYUb1sLbi4wW1sggCZkvOBrrxXsPny
 6MDtNBbIe0fktYFH29bjj/49iBw6/0lCI40Ieqek2e4g4qT67CYojkfJWloRJ+N8AVtg
 XrqQkniYHGbsLHYl6fLICisXQ2nV9juf0tG9ibr0DDIe3sCeLA/+fTR6k5xAFKqK3wCO
 E+n0MWS5GqTZP/UaGdPx3SvDxMOzCBl5LhkX0UvmLLWgwKBt2EfZbAToJBmLIZYpuDKD
 /5bsjWqjpOu2xL3QNCbjwtQvLQWxXHEINIi0N1DQTNWo6yqtA5Zx3ALf3C/4sq00Fhgg
 jPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7ztCEXSrEjXV+aAu0HuFEs2AGLH1hENvLq4HsMbWxEI=;
 b=okoX6KPU+KkxHTMtARwrywxVTTBmaAtWYSoWReuXWFzcuZCEc5wq8gjjNJoDPB6o2p
 fjb2JnsEM3ouunAHK4q3IoTvboGWtuEg5NEzZGoh3yT6Plvx+NoBY0r1pOuCK7wXrZme
 xw4yLY2mtClP0WJDdHIi5dbHa4SVxJtasavYuc4t2Ba+SKBeccnsw7LqTJkzSRWZBSKq
 aMyluSE40u7QZBK+PjY0BUOgYEwfOqDWlQhCZYn7TyqaWUbOblsteoWpYZ49Z56rnm6p
 YqrzGe0PFUVRvCiOs3a2JhusEwaAn4nPflr+QctKe6mVx3UswaeIRJsVmmagLRr4b0g6
 9nGA==
X-Gm-Message-State: AOAM533EPUaCWqQfs43J75Ddc9DO7tm90LApFmvUeHZU+IhNzA3vZRk/
 vBCQVolqW2GjJ4PAqng4PwiVz24OC+kZpFU4dFA=
X-Google-Smtp-Source: ABdhPJzIEL89z5WjJ9XR+W9nU6pzgyW3akuWkD48VzMRUqn6fI8lJJRFPuYrOK0Gbs1MYRPiFdNngZLREUbVevDjVdQ=
X-Received: by 2002:ac8:396c:: with SMTP id t41mr10476078qtb.45.1594993540859; 
 Fri, 17 Jul 2020 06:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
 <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
 <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZvnytPzpia_ROnkmJoZC8n4vUsrwTQh2UBs6u6g2Fgqxw@mail.gmail.com>
 <CAKgT0UdwsmE=ygE2KObzM0z-0KgrPcr59JZzVk41F6-iqsSL+Q@mail.gmail.com>
 <CAA85sZturDN7uOHMDhUnntM43PHjop=TNDb4qvEA2L=jdRa1MA@mail.gmail.com>
 <CAKgT0Uf42EhnM+zPSb-oL1R8hmo0vEdssGztptbkWKoHXS7ygw@mail.gmail.com>
 <CAA85sZtHNkocj840i0ohMVekh0B4byuojU02UunK_bR+LB1WiQ@mail.gmail.com>
 <CAKgT0UdDjabvShwDv0qiume=Q2RKGkm3JhPMZ+f8v5yO37ZLxA@mail.gmail.com>
 <CAA85sZt6B+rG8pUfRoNVOH=VqHn=rT-+2kHpFDzW+eBwvODxJA@mail.gmail.com>
 <CAKgT0UfhMjZ6kZSkfpEVHBbQ+4eHQqWRbXk5Sm4nLQD6sSrj0A@mail.gmail.com>
In-Reply-To: <CAKgT0UfhMjZ6kZSkfpEVHBbQ+4eHQqWRbXk5Sm4nLQD6sSrj0A@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 17 Jul 2020 15:45:29 +0200
Message-ID: <CAA85sZs5D_ReOhsEv1SVbE5D8q77utNBZ=Uv34PVof9gHs9QWw@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 17, 2020 at 2:09 AM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
> On Thu, Jul 16, 2020 at 12:47 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:

> > Sorry, tried to respond via the phone, used the webbrowser version but
> > still html mails... :/

> > On Thu, Jul 16, 2020 at 5:18 PM Alexander Duyck
> > <alexander.duyck@gmail.com> wrote:
> > > On Wed, Jul 15, 2020 at 5:00 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:

[--8<--]

> > > > Well... I'll be damned... I used to force enable ASPM... this must be
> > > > related to the change in PCIe bus ASPM
> > > > Perhaps disable ASPM if there is only one link?
> > >
> > > Is there any specific reason why you are enabling ASPM? Is this system
> > > a laptop where you are trying to conserve power when on battery? If
> > > not disabling it probably won't hurt things too much since the power
> > > consumption for a 2.5GT/s link operating in a width of one shouldn't
> > > bee too high. Otherwise you are likely going to end up paying the
> > > price for getting the interface out of L1 when the traffic goes idle
> > > so you are going to see flows that get bursty paying a heavy penalty
> > > when they start dropping packets.
> >
> > Ah, you misunderstand, I used to do this and everything worked - now
> > Linux enables ASPM by default on all pcie controllers,
> > so imho this should be a quirk, if there is only one lane, don't do
> > ASPM due to latency and timing issues...
> >
> > > It is also possible this could be something that changed with the
> > > physical PCIe link. Basically L1 works by powering down the link when
> > > idle, and then powering it back up when there is activity. The problem
> > > is bringing it back up can sometimes be a challenge when the physical
> > > link starts to go faulty. I know I have seen that in some cases it can
> > > even result in the device falling off of the PCIe bus if the link
> > > training fails.
> >
> > It works fine without ASPM (and the machine is pretty new)
> >
> > I suspect we hit some timing race with aggressive ASPM (assumed as
> > such since it works on local links but doesn't on ~3 ms Links)
>
> Agreed. What is probably happening if you are using a NAT is that it
> may be seeing some burstiness being introduced and as a result the
> part is going to sleep and then being overrun when the traffic does
> arrive.

Weird though, seems to be very aggressive timings =)

[--8<--]

> > > > ethtool -S enp3s0 |grep -v ": 0"
> > > > NIC statistics:
> > > >      rx_packets: 16303520
> > > >      tx_packets: 21602840
> > > >      rx_bytes: 15711958157
> > > >      tx_bytes: 25599009212
> > > >      rx_broadcast: 122212
> > > >      tx_broadcast: 530
> > > >      rx_multicast: 333489
> > > >      tx_multicast: 18446
> > > >      multicast: 333489
> > > >      rx_missed_errors: 270143
> > > >      rx_long_length_errors: 6
> > > >      tx_tcp_seg_good: 1342561
> > > >      rx_long_byte_count: 15711958157
> > > >      rx_errors: 6
> > > >      rx_length_errors: 6
> > > >      rx_fifo_errors: 270143
> > > >      tx_queue_0_packets: 8963830
> > > >      tx_queue_0_bytes: 9803196683
> > > >      tx_queue_0_restart: 4920
> > > >      tx_queue_1_packets: 12639010
> > > >      tx_queue_1_bytes: 15706576814
> > > >      tx_queue_1_restart: 12718
> > > >      rx_queue_0_packets: 16303520
> > > >      rx_queue_0_bytes: 15646744077
> > > >      rx_queue_0_csum_err: 76
> > >
> > > Okay, so this result still has the same length and checksum errors,
> > > were you resetting the system/statistics between runs?
> >
> > Ah, no.... Will reset and do more tests when I'm back home
> >
> > Am I blind or is this part missing from ethtools man page?
>
> There isn't a reset that will reset the stats via ethtool. The device
> stats will be persistent until the driver is unloaded and reloaded or
> the system is reset. You can reset the queue stats by changing the
> number of queues. So for example using "ethtool -L enp3s0 1;  ethtool
> -L enp3s0 2".

It did reset some counters but not all...

NIC statistics:
     rx_packets: 37339997
     tx_packets: 36066432
     rx_bytes: 39226365570
     tx_bytes: 37364799188
     rx_broadcast: 197736
     tx_broadcast: 1187
     rx_multicast: 572374
     tx_multicast: 30546
     multicast: 572374
     collisions: 0
     rx_crc_errors: 0
     rx_no_buffer_count: 0
     rx_missed_errors: 270844
     tx_aborted_errors: 0
     tx_carrier_errors: 0
     tx_window_errors: 0
     tx_abort_late_coll: 0
     tx_deferred_ok: 0
     tx_single_coll_ok: 0
     tx_multi_coll_ok: 0
     tx_timeout_count: 0
     rx_long_length_errors: 6
     rx_short_length_errors: 0
     rx_align_errors: 0
     tx_tcp_seg_good: 2663350
     tx_tcp_seg_failed: 0
     rx_flow_control_xon: 0
     rx_flow_control_xoff: 0
     tx_flow_control_xon: 0
     tx_flow_control_xoff: 0
     rx_long_byte_count: 39226365570
     tx_dma_out_of_sync: 0
     tx_smbus: 0
     rx_smbus: 0
     dropped_smbus: 0
     os2bmc_rx_by_bmc: 0
     os2bmc_tx_by_bmc: 0
     os2bmc_tx_by_host: 0
     os2bmc_rx_by_host: 0
     tx_hwtstamp_timeouts: 0
     tx_hwtstamp_skipped: 0
     rx_hwtstamp_cleared: 0
     rx_errors: 6
     tx_errors: 0
     tx_dropped: 0
     rx_length_errors: 6
     rx_over_errors: 0
     rx_frame_errors: 0
     rx_fifo_errors: 270844
     tx_fifo_errors: 0
     tx_heartbeat_errors: 0
     tx_queue_0_packets: 16069894
     tx_queue_0_bytes: 16031462246
     tx_queue_0_restart: 4920
     tx_queue_1_packets: 19996538
     tx_queue_1_bytes: 21169430746
     tx_queue_1_restart: 12718
     rx_queue_0_packets: 37339997
     rx_queue_0_bytes: 39077005582
     rx_queue_0_drops: 0
     rx_queue_0_csum_err: 76
     rx_queue_0_alloc_failed: 0
     rx_queue_1_packets: 0
     rx_queue_1_bytes: 0
     rx_queue_1_drops: 0
     rx_queue_1_csum_err: 0
     rx_queue_1_alloc_failed: 0

-- vs --

NIC statistics:
     rx_packets: 37340720
     tx_packets: 36066920
     rx_bytes: 39226590275
     tx_bytes: 37364899567
     rx_broadcast: 197755
     tx_broadcast: 1204
     rx_multicast: 572582
     tx_multicast: 30563
     multicast: 572582
     collisions: 0
     rx_crc_errors: 0
     rx_no_buffer_count: 0
     rx_missed_errors: 270844
     tx_aborted_errors: 0
     tx_carrier_errors: 0
     tx_window_errors: 0
     tx_abort_late_coll: 0
     tx_deferred_ok: 0
     tx_single_coll_ok: 0
     tx_multi_coll_ok: 0
     tx_timeout_count: 0
     rx_long_length_errors: 6
     rx_short_length_errors: 0
     rx_align_errors: 0
     tx_tcp_seg_good: 2663352
     tx_tcp_seg_failed: 0
     rx_flow_control_xon: 0
     rx_flow_control_xoff: 0
     tx_flow_control_xon: 0
     tx_flow_control_xoff: 0
     rx_long_byte_count: 39226590275
     tx_dma_out_of_sync: 0
     tx_smbus: 0
     rx_smbus: 0
     dropped_smbus: 0
     os2bmc_rx_by_bmc: 0
     os2bmc_tx_by_bmc: 0
     os2bmc_tx_by_host: 0
     os2bmc_rx_by_host: 0
     tx_hwtstamp_timeouts: 0
     tx_hwtstamp_skipped: 0
     rx_hwtstamp_cleared: 0
     rx_errors: 6
     tx_errors: 0
     tx_dropped: 0
     rx_length_errors: 6
     rx_over_errors: 0
     rx_frame_errors: 0
     rx_fifo_errors: 270844
     tx_fifo_errors: 0
     tx_heartbeat_errors: 0
     tx_queue_0_packets: 59
     tx_queue_0_bytes: 11829
     tx_queue_0_restart: 0
     tx_queue_1_packets: 49
     tx_queue_1_bytes: 12058
     tx_queue_1_restart: 0
     rx_queue_0_packets: 84
     rx_queue_0_bytes: 22195
     rx_queue_0_drops: 0
     rx_queue_0_csum_err: 0
     rx_queue_0_alloc_failed: 0
     rx_queue_1_packets: 0
     rx_queue_1_bytes: 0
     rx_queue_1_drops: 0
     rx_queue_1_csum_err: 0
     rx_queue_1_alloc_failed: 0

---
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
