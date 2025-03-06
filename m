Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD5AA542E0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 07:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D1DA408C7;
	Thu,  6 Mar 2025 06:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R8EruDU6mSO8; Thu,  6 Mar 2025 06:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 494674088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741243238;
	bh=w+wA1WaB3OL2kzFQROojbHnSmI5JAC1EOz5LW1lXrp4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2i6IvHo0q17I9omrbP/32b1jQRnX6zXiLrbas1E6FH6r81UYEir7bi1xmtL+qKy8b
	 2wLA6BTTRnNw/C0zUw1LMZ0Cvp5MAPx3yRq7Yar1erA11+TUouhBXnMjpWTg9hcayA
	 IrtK14y6adE5daTz7y3i3Oe8PmIxC0xwbYQvQZGZc0oNNE34Sqc6ZlpXV7wWEHrQeo
	 3D1ywU4QZzMyYqidfoVF68cu5qwsu7L8mi72CauEXMmeXjat7eyxUQkiz/cr8rPP8m
	 aKCIg6eScFIuRczEHW1cU/DuU1lxAX4pfZOedxDSXenKjpBAwvjzc6WXJhOej7nMD2
	 ExM2LpE3qs0Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 494674088D;
	Thu,  6 Mar 2025 06:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B714194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 06:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 065CB60BA0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 06:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zroVoLQqTjsx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 06:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1133; helo=mail-yw1-x1133.google.com;
 envelope-from=yue.zhao@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8153960F7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8153960F7F
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8153960F7F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 06:40:34 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-6fd6f7f8df9so2764067b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 22:40:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741243233; x=1741848033;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w+wA1WaB3OL2kzFQROojbHnSmI5JAC1EOz5LW1lXrp4=;
 b=jfSrK0yGaODxGiQC9z43A6yqfmP631DW9uYsbyF1lTkH3p72FMv/rFOccE41UlxlkK
 3Qvx79cKKtpHiuNa8QbSfEVjpjSo+OYw2hnvOrl22GF5VSNO1+EJVt140B3bww86CKk1
 9UfrSwct/0cSP9uPSCLBEtIkRCEF+d0B4KhbZ07rXLnAalgmYdGIX/o9yXbXWk/XDA6I
 L78l2PyApwyKNjnu6P1V5vDfe6unW9s1yh5rKowYNKOTILTgVQFUR7XzHFCribbftKL6
 WxgCPORgOqxq9sCPghESMVlawGn7HA23eHuNu+k9IMMH4l0mNQ/4vfCP7kTQfL2XY6Cl
 hi8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCW2DFa4m4xXv9NYtDJs5mzxDHt/xw6mmr7u7GOk7bzdGAy06wO/kfxWiMx9D/9/TjVriH9f3lHo66gVCPSoWPA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwIXpvf0l/Hl/2Cu19zdQBgMsgijkIVKJa5bX8hq2CJd688RYXF
 /RWrSjnVTPiXQtr6UzqAEmzQeLg+9ziJTheX1sHtdjxuTsPxeGFa/xuTOklSC6al2h5cTYshf36
 Bj+ErOT1JUY60NXYixQzHv1m/bWqdgEDSiLwC8g==
X-Gm-Gg: ASbGncsasTZnP+Mr+4yki+m1edTlMi9rVMsQo3iymIOJCiL7G3VPGs6tR+aVgNG55hE
 Ocl1iOh2JrArAJUgzP5Ha0Y3xq88QjKrXnUzAZ8TU17x362VzCgKCbwOou3vSrjDduhNADDZBGx
 Wq4G9korviaohD+fFw2RBe2gzV
X-Google-Smtp-Source: AGHT+IFJZbniMz+FePYkeNhJIXXQYby5pqDWg4b/uC3jGGrxa5dlAQxacZpYGGozFhW5+ZKU+VfGRs205pMsK4X4/3M=
X-Received: by 2002:a05:690c:64c5:b0:6fa:fd85:a2b6 with SMTP id
 00721157ae682-6feaeeda024mr31272057b3.13.1741243233027; Wed, 05 Mar 2025
 22:40:33 -0800 (PST)
MIME-Version: 1.0
References: <20241227035459.90602-1-yue.zhao@shopee.com>
 <61d14c4e-f59f-4e84-851a-917406510aaf@intel.com>
 <CA+Rhe1H3RbLQecaPXujDjbqv7YhjeK46F2M41h4qoCgCjyG4nw@mail.gmail.com>
In-Reply-To: <CA+Rhe1H3RbLQecaPXujDjbqv7YhjeK46F2M41h4qoCgCjyG4nw@mail.gmail.com>
From: Yue Zhao <yue.zhao@shopee.com>
Date: Thu, 6 Mar 2025 14:40:21 +0800
X-Gm-Features: AQ5f1JqzmVCb9zDgON5RYgSb_JnrAH6C5aLMp3K97cIq0o3Pnt6DOyU0gzkbCd8
Message-ID: <CA+Rhe1HuiKiJ-3JcAO0kuZEh1BczJqmai+gQ8V9weKM2fpDvCA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, chunguang.xu@shopee.com, 
 haifeng.xu@shopee.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1741243233; x=1741848033; darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w+wA1WaB3OL2kzFQROojbHnSmI5JAC1EOz5LW1lXrp4=;
 b=lttWwpkJO/YTSCUzjk6QJE5lP+Sd+A/q8Gwzf2BtmJVOi4dASRX/+Wu5CfQ+SilIRG
 mRjxgPHxiOpy1lupzsBQbqZ5bGu3ML0GD5wmjNQy05Pw4l2UU42dOIw5hd+DQH7U8Vid
 cbGBzftRBZSGpwmVm/IhNI93dJpQEsJxHXRvae5WBtxUNzejUb+Y2uJ0+P8HAoAN14j6
 1OFgPCE2eNq3u2egKfpRTN5MhxUax7ml6jWn8wHw/i9GWyZiyze5DE06vyiJffSuSEGQ
 N/Lg5rVk7yiDY36a3w2VAJEy/kcIcW7rjjXA7bOOlXb1CvVKTcRtdXiZURHy4NwQat2/
 LIvg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=lttWwpkJ
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Disable i40e PCIe AER on system
 reboot
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

Hi Tony,

I am resending as I realized I sent in Rich Text instead of Plain Text.
I am sorry if any of you got this duplicate email.

Our DELL servers are all out of warranty, so I cannot provide more
useful information from the communication with the vendor side.
Is there any possible fix via upgrading firmware or other components?

Thanks,
Best Regards

Yue


On Thu, Mar 6, 2025 at 12:28=E2=80=AFPM Yue Zhao <yue.zhao@shopee.com> wrot=
e:
>
> Hi Tony,
>
> Our DELL servers are all out of warranty, so I cannot provide more
> useful information from the communication with the vendor side.
> Is there any possible fix via upgrading firmware or other components?
>
> Thanks,
> Best Regards
>
> Yue
>
> On Thu, Mar 6, 2025 at 8:47=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@inte=
l.com> wrote:
>>
>> On 12/26/2024 7:54 PM, Yue Zhao wrote:
>> > Disable PCIe AER on the i40e device on system reboot on a limited
>> > list of Dell PowerEdge systems. This prevents a fatal PCIe AER event
>> > on the i40e device during the ACPI _PTS (prepare to sleep) method for
>> > S5 on those systems. The _PTS is invoked by acpi_enter_sleep_state_pre=
p()
>> > as part of the kernel's reboot sequence as a result of commit
>> > 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot").
>>
>> Hi Yue,
>>
>> We've contacted Dell to try to root cause the issue and find the proper
>> fix. It would help if we could provide more information about the
>> problem and circumstances. Have you reported the issue to Dell? If so,
>> could you provide that to me (here or privately) so that we can pass
>> that along to help the investigation?
>>
>> Thank you,
>> Tony
>>
>> > We first noticed this abnormal reboot issue in tg3 device, and there
>> > is a similar patch about disable PCIe AER to fix hardware error during
>> > reboot. The hardware error in tg3 device has gone after we apply this
>> > patch below.
>> >
>> > https://lore.kernel.org/lkml/20241129203640.54492-1-lszubowi@redhat.co=
m/T/
>> >
>> > So we try to disable PCIe AER on the i40e device in the similar way.
>> >
>> > hardware crash dmesg log:
>> >
>> > ACPI: PM: Preparing to enter system sleep state S5
>> > {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error S=
ource: 5
>> > {1}[Hardware Error]: event severity: fatal
>> > {1}[Hardware Error]:  Error 0, type: fatal
>> > {1}[Hardware Error]:   section_type: PCIe error
>> > {1}[Hardware Error]:   port_type: 0, PCIe end point
>> > {1}[Hardware Error]:   version: 3.0
>> > {1}[Hardware Error]:   command: 0x0006, status: 0x0010
>> > {1}[Hardware Error]:   device_id: 0000:05:00.1
>> > {1}[Hardware Error]:   slot: 0
>> > {1}[Hardware Error]:   secondary_bus: 0x00
>> > {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x1572
>> > {1}[Hardware Error]:   class_code: 020000
>> > {1}[Hardware Error]:   aer_uncor_status: 0x00100000, aer_uncor_mask: 0=
x00018000
>> > {1}[Hardware Error]:   aer_uncor_severity: 0x000ef030
>> > {1}[Hardware Error]:   TLP Header: 40000001 0000000f 90028090 00000000
>> > Kernel panic - not syncing: Fatal hardware error!
>> > Hardware name: Dell Inc. PowerEdge C4140/08Y2GR, BIOS 2.21.1 12/12/202=
3
>> > Call Trace:
>> >   <NMI>
>> >   dump_stack_lvl+0x48/0x70
>> >   dump_stack+0x10/0x20
>> >   panic+0x1b4/0x3a0
>> >   __ghes_panic+0x6c/0x70
>> >   ghes_in_nmi_queue_one_entry.constprop.0+0x1ee/0x2c0
>> >   ghes_notify_nmi+0x5e/0xe0
>> >   nmi_handle+0x62/0x160
>> >   default_do_nmi+0x4c/0x150
>> >   exc_nmi+0x140/0x1f0
>> >   end_repeat_nmi+0x16/0x67
>> > RIP: 0010:intel_idle_irq+0x70/0xf0
>> >   </NMI>
>> >   <TASK>
>> >   cpuidle_enter_state+0x91/0x6f0
>> >   cpuidle_enter+0x2e/0x50
>> >   call_cpuidle+0x23/0x60
>> >   cpuidle_idle_call+0x11d/0x190
>> >   do_idle+0x82/0xf0
>> >   cpu_startup_entry+0x2a/0x30
>> >   rest_init+0xc2/0xf0
>> >   arch_call_rest_init+0xe/0x30
>> >   start_kernel+0x34f/0x440
>> >   x86_64_start_reservations+0x18/0x30
>> >   x86_64_start_kernel+0xbf/0x110
>> >   secondary_startup_64_no_verify+0x18f/0x19b
>> >   </TASK>
>> >
>> > Fixes: 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot")
>> > Signed-off-by: Yue Zhao <yue.zhao@shopee.com>
>> > ---
>> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 64 +++++++++++++++++++=
++
>> >   1 file changed, 64 insertions(+)
>> >
>> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net=
/ethernet/intel/i40e/i40e_main.c
>> > index 0e1d9e2fbf38..80e66e4e90f7 100644
>> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> > @@ -8,6 +8,7 @@
>> >   #include <linux/module.h>
>> >   #include <net/pkt_cls.h>
>> >   #include <net/xdp_sock_drv.h>
>> > +#include <linux/dmi.h>
>> >
>> >   /* Local includes */
>> >   #include "i40e.h"
>> > @@ -16608,6 +16609,56 @@ static void i40e_pci_error_resume(struct pci_=
dev *pdev)
>> >       i40e_io_resume(pf);
>> >   }
>> >
>> > +/* Systems where ACPI _PTS (Prepare To Sleep) S5 will result in a fat=
al
>> > + * PCIe AER event on the i40e device if the i40e device is not, or ca=
nnot
>> > + * be, powered down.
>> > + */
>> > +static const struct dmi_system_id i40e_restart_aer_quirk_table[] =3D =
{
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge C4140"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R440"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R540"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R640"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R650"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R740"),
>> > +             },
>> > +     },
>> > +     {
>> > +             .matches =3D {
>> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
>> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R750"),
>> > +             },
>> > +     },
>> > +     {}
>> > +};
>> > +
>> >   /**
>> >    * i40e_shutdown - PCI callback for shutting down
>> >    * @pdev: PCI device information struct
>> > @@ -16654,6 +16705,19 @@ static void i40e_shutdown(struct pci_dev *pde=
v)
>> >       i40e_clear_interrupt_scheme(pf);
>> >       rtnl_unlock();
>> >
>> > +     if (system_state =3D=3D SYSTEM_RESTART &&
>> > +             dmi_first_match(i40e_restart_aer_quirk_table) &&
>> > +             pdev->current_state <=3D PCI_D3hot) {
>> > +             /* Disable PCIe AER on the i40e to avoid a fatal
>> > +              * error during this system restart.
>> > +              */
>> > +             pcie_capability_clear_word(pdev, PCI_EXP_DEVCTL,
>> > +                                        PCI_EXP_DEVCTL_CERE |
>> > +                                        PCI_EXP_DEVCTL_NFERE |
>> > +                                        PCI_EXP_DEVCTL_FERE |
>> > +                                        PCI_EXP_DEVCTL_URRE);
>> > +     }
>> > +
>> >       if (system_state =3D=3D SYSTEM_POWER_OFF) {
>> >               pci_wake_from_d3(pdev, pf->wol_en);
>> >               pci_set_power_state(pdev, PCI_D3hot);
>>
