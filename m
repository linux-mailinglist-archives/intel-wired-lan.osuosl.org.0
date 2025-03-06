Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C31A541AF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 05:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C41D81D67;
	Thu,  6 Mar 2025 04:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o5DUfZiQm9tJ; Thu,  6 Mar 2025 04:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30BAD81DAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741235319;
	bh=0v8/ponHlmVhb8J3NhuUq+zhdTYH9aHgxDokaFCgcdU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lmwx7IIU6HmEyT5sVgB4zIPrNT2aG+6+tP0XIDAZp3CUJsxr7KYORMbhbNE1s4lWR
	 AkNVK5LFVy/ZOFlVde9BjO5OK28eerdlQU5fjcKPWWag8SjiM4ebJKwlDrJr1ShKZu
	 L6HtpJGDO1pX7+74vkceRuO1EGBupQwNQe9jHXup56HvdLqhzHjWcRornEyCPguejE
	 voOsDLaFXXnH+DgWnSdMyo+KVgHV4dUKjD4H/MvPR5ntPBLqciXCNwi5RthQBvKiv8
	 ystw4ujSUbvvPZPkeB8S43RuvvNH/+y0nzA9qpCg+1bkpa8+k1rADUo7bJBZluEYaV
	 lrPBIaNoZ8+Gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30BAD81DAB;
	Thu,  6 Mar 2025 04:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C54CC194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 04:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAF3581D11
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 04:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mg7G3CCCjL9a for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 04:28:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=yue.zhao@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1527381D67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1527381D67
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1527381D67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 04:28:34 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-6fd2587d059so1529867b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 20:28:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741235313; x=1741840113;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0v8/ponHlmVhb8J3NhuUq+zhdTYH9aHgxDokaFCgcdU=;
 b=V8gaGEZTsyzFaDJ2sDSaan8Y3a1jb6EHgRz+BUHK1O/XLlVQesQhzxMP+ac64tDW+6
 oizQtHECBJO3Ac3MnJBU44YeYsVLGjz4OWbrGrl8ZR7f9o/hrvYEAdgeVH/hJoBaM6WQ
 s+vwuvg/bRxzXO+wkvA2uguA11fM2/xS0kzexIOh/0fgzRbp+7XVW2GPX/fmlC3kSjJl
 Ju0zDpooBNI4L7p6EFyj+6Y4Xr8/9mkZ4+wiQQMGxYhENxlnIsXz1QIt9NWolZf1Ubk4
 /1QlvL9teg9AbdXQxlTAOoIo29BjOyKUsG7wqhrzc4cAV49s7AqJIYH145WPOaoyyb0M
 C6+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWy/JUeSZ/Vc2ACemx2kwf6y/eExtibgv2IPgaiHvffLj+9OyIPeWnJs6UtYGLI+ye11Y9BBIt3k4ADi6VB/oI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLWoQZBlajM76ha6x5hVup+CjpzbilJ8i3KIOvuNrQA1v8xzQt
 dDIDxklrTyWdbMMKwyjIKz4U080FnOMxIqnUvc06OmZG0HSipbh24v/6JszyfUf1sitb4wbxHd+
 6XxHvmrR9hVmYN6d1jrNm6kyXTY3cYkDxVpI2dw==
X-Gm-Gg: ASbGncvB9EVFhjMWrdffz+0hp58p0XviGPwMUEpY4n4O10Cg/dbkrbytJ0BOlm1RzGr
 dVowmhUxMwCFARV+vaci2Qr8M03DNrow1MzzsszFYlCjc7D9LHS5ibiBDx2UTJrBc670eYvLvV/
 renEAhwPNaYPGx/5yVJtm1DFMW
X-Google-Smtp-Source: AGHT+IH9INzKD/u5Ov0BwbmxOFzGOhtiKJi/mFxGpoUTOa/YYlXb1ujKHOydoPOp4beAe/NKKzmdJSjTc1gv1MtVlgQ=
X-Received: by 2002:a05:690c:3382:b0:6fd:359a:8fd2 with SMTP id
 00721157ae682-6fda30be72bmr86162677b3.26.1741235313446; Wed, 05 Mar 2025
 20:28:33 -0800 (PST)
MIME-Version: 1.0
References: <20241227035459.90602-1-yue.zhao@shopee.com>
 <61d14c4e-f59f-4e84-851a-917406510aaf@intel.com>
In-Reply-To: <61d14c4e-f59f-4e84-851a-917406510aaf@intel.com>
From: Yue Zhao <yue.zhao@shopee.com>
Date: Thu, 6 Mar 2025 12:28:22 +0800
X-Gm-Features: AQ5f1JreoYqBRgsOshWzEtYNwKZ-u2HOhoEskcCUm85FcvMK21FNQI0-7lgqKno
Message-ID: <CA+Rhe1H3RbLQecaPXujDjbqv7YhjeK46F2M41h4qoCgCjyG4nw@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, chunguang.xu@shopee.com, 
 haifeng.xu@shopee.com
Content-Type: multipart/alternative; boundary="000000000000543281062fa4f026"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1741235313; x=1741840113; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0v8/ponHlmVhb8J3NhuUq+zhdTYH9aHgxDokaFCgcdU=;
 b=X5jR7Dumo4xlekQwq0RB2odfVHCEThq063ehJIWNVlwboYuwuGmBCFEilMtMmDwxTU
 6Y4dZcUO0K1BdX/8xtSVC+1U9p/FZoYdg2Hu8+fwjb11NdlB1p7oupS/RKhxwNE67Ox0
 3e79SbpNOzkjO2AyoFaQ7hoTRFGTiELOwsw+qL2vEAUp4lU/xfpjsXxv08nqowHT3Ixy
 8Tp/y2LA3Us5KJO9W8yiUYSAZvHOr0f/+4hn9xwIw+F20dGCfHOXMAxX7i4j9NNKzga9
 I9W4nlFSN4YZNc6NvaBAwLkhE9KyUFocpNEWbDe1zxV2Cj0n4Esf+E3X88YD+TEbGp1l
 QVxQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=X5jR7Dum
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

--000000000000543281062fa4f026
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tony,

Our DELL servers are all out of warranty, so I cannot provide more
useful information from the communication with the vendor side.
Is there any possible fix via upgrading firmware or other components?

Thanks,
Best Regards

Yue

On Thu, Mar 6, 2025 at 8:47=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel.=
com>
wrote:

> On 12/26/2024 7:54 PM, Yue Zhao wrote:
> > Disable PCIe AER on the i40e device on system reboot on a limited
> > list of Dell PowerEdge systems. This prevents a fatal PCIe AER event
> > on the i40e device during the ACPI _PTS (prepare to sleep) method for
> > S5 on those systems. The _PTS is invoked by acpi_enter_sleep_state_prep=
()
> > as part of the kernel's reboot sequence as a result of commit
> > 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot").
>
> Hi Yue,
>
> We've contacted Dell to try to root cause the issue and find the proper
> fix. It would help if we could provide more information about the
> problem and circumstances. Have you reported the issue to Dell? If so,
> could you provide that to me (here or privately) so that we can pass
> that along to help the investigation?
>
> Thank you,
> Tony
>
> > We first noticed this abnormal reboot issue in tg3 device, and there
> > is a similar patch about disable PCIe AER to fix hardware error during
> > reboot. The hardware error in tg3 device has gone after we apply this
> > patch below.
> >
> >
> https://lore.kernel.org/lkml/20241129203640.54492-1-lszubowi@redhat.com/T=
/
> >
> > So we try to disable PCIe AER on the i40e device in the similar way.
> >
> > hardware crash dmesg log:
> >
> > ACPI: PM: Preparing to enter system sleep state S5
> > {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error
> Source: 5
> > {1}[Hardware Error]: event severity: fatal
> > {1}[Hardware Error]:  Error 0, type: fatal
> > {1}[Hardware Error]:   section_type: PCIe error
> > {1}[Hardware Error]:   port_type: 0, PCIe end point
> > {1}[Hardware Error]:   version: 3.0
> > {1}[Hardware Error]:   command: 0x0006, status: 0x0010
> > {1}[Hardware Error]:   device_id: 0000:05:00.1
> > {1}[Hardware Error]:   slot: 0
> > {1}[Hardware Error]:   secondary_bus: 0x00
> > {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x1572
> > {1}[Hardware Error]:   class_code: 020000
> > {1}[Hardware Error]:   aer_uncor_status: 0x00100000, aer_uncor_mask:
> 0x00018000
> > {1}[Hardware Error]:   aer_uncor_severity: 0x000ef030
> > {1}[Hardware Error]:   TLP Header: 40000001 0000000f 90028090 00000000
> > Kernel panic - not syncing: Fatal hardware error!
> > Hardware name: Dell Inc. PowerEdge C4140/08Y2GR, BIOS 2.21.1 12/12/2023
> > Call Trace:
> >   <NMI>
> >   dump_stack_lvl+0x48/0x70
> >   dump_stack+0x10/0x20
> >   panic+0x1b4/0x3a0
> >   __ghes_panic+0x6c/0x70
> >   ghes_in_nmi_queue_one_entry.constprop.0+0x1ee/0x2c0
> >   ghes_notify_nmi+0x5e/0xe0
> >   nmi_handle+0x62/0x160
> >   default_do_nmi+0x4c/0x150
> >   exc_nmi+0x140/0x1f0
> >   end_repeat_nmi+0x16/0x67
> > RIP: 0010:intel_idle_irq+0x70/0xf0
> >   </NMI>
> >   <TASK>
> >   cpuidle_enter_state+0x91/0x6f0
> >   cpuidle_enter+0x2e/0x50
> >   call_cpuidle+0x23/0x60
> >   cpuidle_idle_call+0x11d/0x190
> >   do_idle+0x82/0xf0
> >   cpu_startup_entry+0x2a/0x30
> >   rest_init+0xc2/0xf0
> >   arch_call_rest_init+0xe/0x30
> >   start_kernel+0x34f/0x440
> >   x86_64_start_reservations+0x18/0x30
> >   x86_64_start_kernel+0xbf/0x110
> >   secondary_startup_64_no_verify+0x18f/0x19b
> >   </TASK>
> >
> > Fixes: 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot")
> > Signed-off-by: Yue Zhao <yue.zhao@shopee.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 64 ++++++++++++++++++++=
+
> >   1 file changed, 64 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 0e1d9e2fbf38..80e66e4e90f7 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -8,6 +8,7 @@
> >   #include <linux/module.h>
> >   #include <net/pkt_cls.h>
> >   #include <net/xdp_sock_drv.h>
> > +#include <linux/dmi.h>
> >
> >   /* Local includes */
> >   #include "i40e.h"
> > @@ -16608,6 +16609,56 @@ static void i40e_pci_error_resume(struct
> pci_dev *pdev)
> >       i40e_io_resume(pf);
> >   }
> >
> > +/* Systems where ACPI _PTS (Prepare To Sleep) S5 will result in a fata=
l
> > + * PCIe AER event on the i40e device if the i40e device is not, or
> cannot
> > + * be, powered down.
> > + */
> > +static const struct dmi_system_id i40e_restart_aer_quirk_table[] =3D {
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge C4140"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R440"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R540"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R640"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R650"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R740"),
> > +             },
> > +     },
> > +     {
> > +             .matches =3D {
> > +                     DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +                     DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R750"),
> > +             },
> > +     },
> > +     {}
> > +};
> > +
> >   /**
> >    * i40e_shutdown - PCI callback for shutting down
> >    * @pdev: PCI device information struct
> > @@ -16654,6 +16705,19 @@ static void i40e_shutdown(struct pci_dev *pdev=
)
> >       i40e_clear_interrupt_scheme(pf);
> >       rtnl_unlock();
> >
> > +     if (system_state =3D=3D SYSTEM_RESTART &&
> > +             dmi_first_match(i40e_restart_aer_quirk_table) &&
> > +             pdev->current_state <=3D PCI_D3hot) {
> > +             /* Disable PCIe AER on the i40e to avoid a fatal
> > +              * error during this system restart.
> > +              */
> > +             pcie_capability_clear_word(pdev, PCI_EXP_DEVCTL,
> > +                                        PCI_EXP_DEVCTL_CERE |
> > +                                        PCI_EXP_DEVCTL_NFERE |
> > +                                        PCI_EXP_DEVCTL_FERE |
> > +                                        PCI_EXP_DEVCTL_URRE);
> > +     }
> > +
> >       if (system_state =3D=3D SYSTEM_POWER_OFF) {
> >               pci_wake_from_d3(pdev, pf->wol_en);
> >               pci_set_power_state(pdev, PCI_D3hot);
>
>

--000000000000543281062fa4f026
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tony,<div><br></div><div>Our DELL servers are all out o=
f warranty, so I cannot provide more=C2=A0</div><div>useful information fro=
m the communication with the vendor side.</div><div>Is there any possible f=
ix via upgrading firmware or other components?</div><div><br></div><div>Tha=
nks,</div><div>Best Regards</div><div><br></div><div>Yue</div></div><br><di=
v class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Mar 6, 2025 at 8:47=E2=80=AFAM Tony Nguyen &lt;<a href=3D"=
mailto:anthony.l.nguyen@intel.com">anthony.l.nguyen@intel.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 12/26/2024 =
7:54 PM, Yue Zhao wrote:<br>
&gt; Disable PCIe AER on the i40e device on system reboot on a limited<br>
&gt; list of Dell PowerEdge systems. This prevents a fatal PCIe AER event<b=
r>
&gt; on the i40e device during the ACPI _PTS (prepare to sleep) method for<=
br>
&gt; S5 on those systems. The _PTS is invoked by acpi_enter_sleep_state_pre=
p()<br>
&gt; as part of the kernel&#39;s reboot sequence as a result of commit<br>
&gt; 38f34dba806a (&quot;PM: ACPI: reboot: Reinstate S5 for reboot&quot;).<=
br>
<br>
Hi Yue,<br>
<br>
We&#39;ve contacted Dell to try to root cause the issue and find the proper=
 <br>
fix. It would help if we could provide more information about the <br>
problem and circumstances. Have you reported the issue to Dell? If so, <br>
could you provide that to me (here or privately) so that we can pass <br>
that along to help the investigation?<br>
<br>
Thank you,<br>
Tony<br>
<br>
&gt; We first noticed this abnormal reboot issue in tg3 device, and there<b=
r>
&gt; is a similar patch about disable PCIe AER to fix hardware error during=
<br>
&gt; reboot. The hardware error in tg3 device has gone after we apply this<=
br>
&gt; patch below.<br>
&gt; <br>
&gt; <a href=3D"https://lore.kernel.org/lkml/20241129203640.54492-1-lszubow=
i@redhat.com/T/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.o=
rg/lkml/20241129203640.54492-1-lszubowi@redhat.com/T/</a><br>
&gt; <br>
&gt; So we try to disable PCIe AER on the i40e device in the similar way.<b=
r>
&gt; <br>
&gt; hardware crash dmesg log:<br>
&gt; <br>
&gt; ACPI: PM: Preparing to enter system sleep state S5<br>
&gt; {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error S=
ource: 5<br>
&gt; {1}[Hardware Error]: event severity: fatal<br>
&gt; {1}[Hardware Error]:=C2=A0 Error 0, type: fatal<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0section_type: PCIe error<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0port_type: 0, PCIe end point<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0version: 3.0<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0command: 0x0006, status: 0x0010<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0device_id: 0000:05:00.1<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0slot: 0<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0secondary_bus: 0x00<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0vendor_id: 0x8086, device_id: 0x1572<=
br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0class_code: 020000<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0aer_uncor_status: 0x00100000, aer_unc=
or_mask: 0x00018000<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0aer_uncor_severity: 0x000ef030<br>
&gt; {1}[Hardware Error]:=C2=A0 =C2=A0TLP Header: 40000001 0000000f 9002809=
0 00000000<br>
&gt; Kernel panic - not syncing: Fatal hardware error!<br>
&gt; Hardware name: Dell Inc. PowerEdge C4140/08Y2GR, BIOS 2.21.1 12/12/202=
3<br>
&gt; Call Trace:<br>
&gt;=C2=A0 =C2=A0&lt;NMI&gt;<br>
&gt;=C2=A0 =C2=A0dump_stack_lvl+0x48/0x70<br>
&gt;=C2=A0 =C2=A0dump_stack+0x10/0x20<br>
&gt;=C2=A0 =C2=A0panic+0x1b4/0x3a0<br>
&gt;=C2=A0 =C2=A0__ghes_panic+0x6c/0x70<br>
&gt;=C2=A0 =C2=A0ghes_in_nmi_queue_one_entry.constprop.0+0x1ee/0x2c0<br>
&gt;=C2=A0 =C2=A0ghes_notify_nmi+0x5e/0xe0<br>
&gt;=C2=A0 =C2=A0nmi_handle+0x62/0x160<br>
&gt;=C2=A0 =C2=A0default_do_nmi+0x4c/0x150<br>
&gt;=C2=A0 =C2=A0exc_nmi+0x140/0x1f0<br>
&gt;=C2=A0 =C2=A0end_repeat_nmi+0x16/0x67<br>
&gt; RIP: 0010:intel_idle_irq+0x70/0xf0<br>
&gt;=C2=A0 =C2=A0&lt;/NMI&gt;<br>
&gt;=C2=A0 =C2=A0&lt;TASK&gt;<br>
&gt;=C2=A0 =C2=A0cpuidle_enter_state+0x91/0x6f0<br>
&gt;=C2=A0 =C2=A0cpuidle_enter+0x2e/0x50<br>
&gt;=C2=A0 =C2=A0call_cpuidle+0x23/0x60<br>
&gt;=C2=A0 =C2=A0cpuidle_idle_call+0x11d/0x190<br>
&gt;=C2=A0 =C2=A0do_idle+0x82/0xf0<br>
&gt;=C2=A0 =C2=A0cpu_startup_entry+0x2a/0x30<br>
&gt;=C2=A0 =C2=A0rest_init+0xc2/0xf0<br>
&gt;=C2=A0 =C2=A0arch_call_rest_init+0xe/0x30<br>
&gt;=C2=A0 =C2=A0start_kernel+0x34f/0x440<br>
&gt;=C2=A0 =C2=A0x86_64_start_reservations+0x18/0x30<br>
&gt;=C2=A0 =C2=A0x86_64_start_kernel+0xbf/0x110<br>
&gt;=C2=A0 =C2=A0secondary_startup_64_no_verify+0x18f/0x19b<br>
&gt;=C2=A0 =C2=A0&lt;/TASK&gt;<br>
&gt; <br>
&gt; Fixes: 38f34dba806a (&quot;PM: ACPI: reboot: Reinstate S5 for reboot&q=
uot;)<br>
&gt; Signed-off-by: Yue Zhao &lt;<a href=3D"mailto:yue.zhao@shopee.com" tar=
get=3D"_blank">yue.zhao@shopee.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/i40e/i40e_main.c | 64 +++++++++=
++++++++++++<br>
&gt;=C2=A0 =C2=A01 file changed, 64 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net=
/ethernet/intel/i40e/i40e_main.c<br>
&gt; index 0e1d9e2fbf38..80e66e4e90f7 100644<br>
&gt; --- a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; @@ -8,6 +8,7 @@<br>
&gt;=C2=A0 =C2=A0#include &lt;linux/module.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;net/pkt_cls.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;net/xdp_sock_drv.h&gt;<br>
&gt; +#include &lt;linux/dmi.h&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0/* Local includes */<br>
&gt;=C2=A0 =C2=A0#include &quot;i40e.h&quot;<br>
&gt; @@ -16608,6 +16609,56 @@ static void i40e_pci_error_resume(struct pci_=
dev *pdev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_io_resume(pf);<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +/* Systems where ACPI _PTS (Prepare To Sleep) S5 will result in a fat=
al<br>
&gt; + * PCIe AER event on the i40e device if the i40e device is not, or ca=
nnot<br>
&gt; + * be, powered down.<br>
&gt; + */<br>
&gt; +static const struct dmi_system_id i40e_restart_aer_quirk_table[] =3D =
{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge C4140&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R440&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R540&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R640&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R650&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R740&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.matches =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0DMI_MATCH(DMI_PRODUCT_NAME, &quot;PowerEdge R750&quot;),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0},<br>
&gt; +=C2=A0 =C2=A0 =C2=A0{}<br>
&gt; +};<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 * i40e_shutdown - PCI callback for shutting down<br>
&gt;=C2=A0 =C2=A0 * @pdev: PCI device information struct<br>
&gt; @@ -16654,6 +16705,19 @@ static void i40e_shutdown(struct pci_dev *pde=
v)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_clear_interrupt_scheme(pf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rtnl_unlock();<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (system_state =3D=3D SYSTEM_RESTART &amp;&amp;=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dmi_first_match(i40e_=
restart_aer_quirk_table) &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pdev-&gt;current_stat=
e &lt;=3D PCI_D3hot) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Disable PCIe AER o=
n the i40e to avoid a fatal<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * error during this =
system restart.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pcie_capability_clear=
_word(pdev, PCI_EXP_DEVCTL,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PCI_=
EXP_DEVCTL_CERE |<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PCI_=
EXP_DEVCTL_NFERE |<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PCI_=
EXP_DEVCTL_FERE |<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PCI_=
EXP_DEVCTL_URRE);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (system_state =3D=3D SYSTEM_POWER_OFF) {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pci_wake_from_d3=
(pdev, pf-&gt;wol_en);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pci_set_power_st=
ate(pdev, PCI_D3hot);<br>
<br>
</blockquote></div>

--000000000000543281062fa4f026--
