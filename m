Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 448B22D9CBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 17:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 572C6203D5;
	Mon, 14 Dec 2020 16:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PykQC22fvNuf; Mon, 14 Dec 2020 16:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4003820490;
	Mon, 14 Dec 2020 16:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0491D1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:31:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0048486E5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yA-AN2RbI02f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 16:31:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 251C086DF1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:31:52 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id d9so17454601iob.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 08:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nv58MUdpB9ubSeR3Rp7F7zFWbdJGuJYvWF+YDGXL1aA=;
 b=Jnjq5tGvJ138exAW59qwAkY8we1//GkuYWh7NqpLzYrXaeVNvhJCNe2VqpuR4qU0fg
 541aI+5TQFd0HUZmaxsCg7oqCT3/ULqTYDRkd+39KWCvp3VKU7lp0NuhDBA6Ohyo+Ezg
 g7UAWYW4nP5izg71JuaXDyawJPpZKh3rAqoJLu4ixS/LRFQgkkM/5VXUa+vVwk5ZFdw1
 FC7XrqRin3o9hVfautAeqikgZGgJlnc4ZJ6KCIvOiEGBhQuCY/I2st2vG9hQADILK9k1
 0QbwmuTiyopEq4h2rAfJxkhzVNm8Q4iRJCv7AmxNwCvwlFmOiyqPhcBKp3VB5u2mO0w5
 KVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nv58MUdpB9ubSeR3Rp7F7zFWbdJGuJYvWF+YDGXL1aA=;
 b=A/7QKaE10hZAAZEJ+57X9+TPB+XHNOZPcvnLeYheg/bPekmfRUKm5Ad1oQOEBTy3hQ
 wK9Qat1hNDUF8C6msRo4fERsbAMqNmMYJx9qEp9mVymGfPh1iZhpCLT+ZvQAiDY2RQzp
 ZfPZkelBz6E3BznpQT9MFIOqnvPvT6B0FeOCh6sfv+fP1jQrT7YDKSKX6e+hyoWuDNSW
 Ugj0q0LLgRsESdJ8V07VqaQwo9dzFpzXN7BG1Lf4spyq8xKYIqdj1kpf1S/hlpKcq8Cg
 O5GsGQgE9D1+vb6CZBZa/xObUgFtVkCYaNwhfpqjkDGcwgcF1lPQBNZzzvvMTVdeKFd+
 tsDg==
X-Gm-Message-State: AOAM531cnEHzzX3CuUSUuM/u5j2uFGzUX6tEB/Jj4SyIQfLovwe6dMWC
 XY9V0hTZFRsjEv+mDh66fDm9U3yP0hPc126D1zU=
X-Google-Smtp-Source: ABdhPJwfmzK8WCTYha4UWKB9Uku2esxfwx+5arc8g2JQSduSOpdw5bJ6849YO0DK3prH04tPLo/GVeh6jkEjZnmqVGo=
X-Received: by 2002:a05:6602:152:: with SMTP id
 v18mr33036091iot.187.1607963511213; 
 Mon, 14 Dec 2020 08:31:51 -0800 (PST)
MIME-Version: 1.0
References: <20201203133236.222207-1-andrew@daynix.com>
 <CAKgT0UeoKDcDeMMG7KGMSKXP26txrwNuc73HKFPa57y=Vuo-kg@mail.gmail.com>
 <CABcq3pG78o4ttn8R_a-4hHVaqnx9MXg4CyA0ozS2W9trK4qJPg@mail.gmail.com>
In-Reply-To: <CABcq3pG78o4ttn8R_a-4hHVaqnx9MXg4CyA0ozS2W9trK4qJPg@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 14 Dec 2020 08:31:35 -0800
Message-ID: <CAKgT0Uc9Z93M_7QtbJMRzJ6k6Pr=bi8MsoteDhV_GVA2Eceb=A@mail.gmail.com>
To: Andrew Melnichenko <andrew@daynix.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Added ICR clearing by
 corresponding IMS bit.
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>, qemu-devel@nongnu.org,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Okay. That sounds reasonable. You should repost this with your more
thorough explanation of the problem and how this solves it in the
patch description.

Thanks.

- Alex

On Mon, Dec 14, 2020 at 3:09 AM Andrew Melnichenko <andrew@daynix.com> wrote:
>
> Hi,
> The issue is in LSC clearing. So, after "link up"(during initialization), the next LSC event is masked and can't be processed.
> Technically, the event should be 'cleared' during ICR read.
> On Windows guest, everything works well, mostly because of different interrupt routines(ICR clears during register write).
> So, I've added ICR clearing during read, according to the note by
> section 13.3.27 of the 8257X developers manual.
>
> On Thu, Dec 3, 2020 at 7:57 PM Alexander Duyck <alexander.duyck@gmail.com> wrote:
>>
>> On Thu, Dec 3, 2020 at 5:00 AM Andrew Melnychenko <andrew@daynix.com> wrote:
>> >
>> > Buglink: https://bugzilla.redhat.com/show_bug.cgi?id=1707441
>>
>> So the bugzilla seems to be reporting that the NIC operstate is being
>> misreported when qemu has configured the link down. Based on the
>> description it isn't clear to me how this patch addresses that. Some
>> documentation on how you reproduced the issue, and what was seen
>> before and after this patch would be useful.
>>
>> > Added ICR clearing if there is IMS bit - according to the note by
>>
>> Should probably be "Add" instead of "Added". Same for the title of the patch.
>>
>> > section 13.3.27 of the 8257X developers manual.
>> >
>> > Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
>> > ---
>> >  hw/net/e1000e_core.c | 10 ++++++++++
>> >  hw/net/trace-events  |  1 +
>> >  2 files changed, 11 insertions(+)
>> >
>> > diff --git a/hw/net/e1000e_core.c b/hw/net/e1000e_core.c
>> > index 095c01ebc6..9705f5c52e 100644
>> > --- a/hw/net/e1000e_core.c
>> > +++ b/hw/net/e1000e_core.c
>> > @@ -2624,6 +2624,16 @@ e1000e_mac_icr_read(E1000ECore *core, int index)
>> >          e1000e_clear_ims_bits(core, core->mac[IAM]);
>> >      }
>> >
>> > +    /*
>> > +     * PCIe* GbE Controllers Open Source Software Developer's Manual
>> > +     * 13.3.27 Interrupt Cause Read Register
>> > +     */
>> > +    if ((core->mac[ICR] & E1000_ICR_ASSERTED) &&
>> > +        (core->mac[ICR] & core->mac[IMS])) {
>> > +        trace_e1000e_irq_icr_clear_icr_bit_ims(core->mac[ICR], core->mac[IMS]);
>> > +        core->mac[ICR] = 0;
>> > +    }
>> > +
>> >      trace_e1000e_irq_icr_read_exit(core->mac[ICR]);
>> >      e1000e_update_interrupt_state(core);
>> >      return ret;
>>
>> Changes like this have historically been problematic. I am curious
>> what testing had been done on this and with what drivers? Keep in mind
>> that we have to support several flavors of BSD, Windows, and Linux
>> with this.
>>
>> > diff --git a/hw/net/trace-events b/hw/net/trace-events
>> > index 5db45456d9..2c3521a19c 100644
>> > --- a/hw/net/trace-events
>> > +++ b/hw/net/trace-events
>> > @@ -237,6 +237,7 @@ e1000e_irq_icr_read_entry(uint32_t icr) "Starting ICR read. Current ICR: 0x%x"
>> >  e1000e_irq_icr_read_exit(uint32_t icr) "Ending ICR read. Current ICR: 0x%x"
>> >  e1000e_irq_icr_clear_zero_ims(void) "Clearing ICR on read due to zero IMS"
>> >  e1000e_irq_icr_clear_iame(void) "Clearing ICR on read due to IAME"
>> > +e1000e_irq_icr_clear_icr_bit_ims(uint32_t icr, uint32_t ims) "Clearing ICR on read due corresponding IMS bit: 0x%x & 0x%x"
>> >  e1000e_irq_iam_clear_eiame(uint32_t iam, uint32_t cause) "Clearing IMS due to EIAME, IAM: 0x%X, cause: 0x%X"
>> >  e1000e_irq_icr_clear_eiac(uint32_t icr, uint32_t eiac) "Clearing ICR bits due to EIAC, ICR: 0x%X, EIAC: 0x%X"
>> >  e1000e_irq_ims_clear_set_imc(uint32_t val) "Clearing IMS bits due to IMC write 0x%x"
>> > --
>> > 2.29.2
>> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
