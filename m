Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645018FF473
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E692F41888;
	Thu,  6 Jun 2024 18:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DepvgkkZURQY; Thu,  6 Jun 2024 18:14:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B094A40567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697664;
	bh=P0oFG8bq7yHSKq/amXLj6YkSDfn5J6Mv84WGLZXEbSo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y8XBjeuYOmw5tigX/fbQGEk2bcojrtLrpSeLAx4J1LOlVnu1EHt8s4rZSdgLjoF/T
	 SgXHyPQkSBmgbfjcIxDLicmv6jLFg/ffbipfg+0SKAemA+UJaZEnO+hmxbBqUfm8WB
	 Pj9DY2U/UGrqzAp3LQT7WYBDNJTSxPIaku4H/rhtIVmxoZuPoq/mcgf6F3+lkGTVsm
	 S1Spx8GaXzLsbJH92YAfYA3ONGX8k9QW7O65S6A8V1Rg1QJ11pKXwUEgOXzjIS9/Rp
	 JUQspn9GCGb8pdPgHSecRtv/PFHYyo5s5Cc7CYLqfwIzy1G9UVI3/WVckUL84eDlDv
	 7zVVIBUes8aoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B094A40567;
	Thu,  6 Jun 2024 18:14:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D6CA1BF95C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84F9C408C2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:04:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0YXOZUXfq9N for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 08:04:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=yinghsu@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 937A8408D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 937A8408D1
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 937A8408D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 08:04:44 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-a691bbb7031so89624666b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jun 2024 01:04:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717661082; x=1718265882;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P0oFG8bq7yHSKq/amXLj6YkSDfn5J6Mv84WGLZXEbSo=;
 b=FuSPW+A9i09Zhlh6AV2DGOizbD2TMqDoY4WA4L/GdjTa0EQO/6B1GyTDdtd0rvOqtj
 h50ULqzQqsJnvNUq4Bbg2PmaOb/RdPp6lnx91BeXjwZG+q9giC33crAIwA7f62LzA/gB
 UC2IVs5cwCCkYTJx10QAv9c9WM4oF/WPfhRZfQfmNjJ1s8qOuSSt3fE3OpUJgGeCovYz
 PDJGdxuJ3SSCub1vz73FdCPQN0y4ipLpMovCAFT6prhHtqmC/88NyHOcjyO0mvjjCuuF
 6vSuXoyxFiNjNxeCRlE7WiK2dM61N303mAQCx3RP/l4S4+eGrSKk60Wi/7Jxh8jcRvUZ
 +CDg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLq1Ml3F31k5dDFS54djiWApy+40vFjPvrmlpTnDghbIxoIOq8/bgAmD3PFxvzdctxy+Molf2bL7J32lRIWP7KpXjgIGXL/6QpdMgbIEyg7A==
X-Gm-Message-State: AOJu0YxLt4J2scHxbbko7HbW1obhyQj+9KontKKQ+dXXPnE/9RprGFyf
 8EI7nT39Hi7TM6x5HOtbr49aa1Ym8t83UTE5Xduy1Mb8RAufg9dO2x8gFnug/Plt1Ckf2M90u64
 =
X-Google-Smtp-Source: AGHT+IEjm2QPorLBHxsvw6dxPQDrsn/DGVxCDstrWVI54IQaDYTpsLlJ0bW9/fkAkelxPnTbkiSLQQ==
X-Received: by 2002:a17:906:f2d4:b0:a5c:eafb:5288 with SMTP id
 a640c23a62f3a-a699f671cc6mr362149066b.31.1717661081198; 
 Thu, 06 Jun 2024 01:04:41 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com.
 [209.85.218.54]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a6c8058197esm60660966b.10.2024.06.06.01.04.40
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Jun 2024 01:04:40 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-a691bbb7031so89616866b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Jun 2024 01:04:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXU/M3xBnS5zyKrd/M5gfY6ukpES6p3z+xx+M9VniZqXcKyCcRbjn3MUlA/lXze3zF9YOKEEKUdNILJEM9wv7beymDxMgd0SPtXToyipH6a1g==
X-Received: by 2002:a17:906:c945:b0:a68:b839:485a with SMTP id
 a640c23a62f3a-a69a002ba4amr345395366b.77.1717661078546; Thu, 06 Jun 2024
 01:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <5184214b-22ed-41cf-a1b0-6db2d4ff324c@gmx.net>
In-Reply-To: <5184214b-22ed-41cf-a1b0-6db2d4ff324c@gmx.net>
From: Ying Hsu <yinghsu@chromium.org>
Date: Thu, 6 Jun 2024 16:03:59 +0800
X-Gmail-Original-Message-ID: <CAAa9mD1HGJDKzoLoqZzyrR5wsk_6voWs+VmoZoo9ZontyvjUww@mail.gmail.com>
Message-ID: <CAAa9mD1HGJDKzoLoqZzyrR5wsk_6voWs+VmoZoo9ZontyvjUww@mail.gmail.com>
To: Stefan Schaeckeler <schaecsn@gmx.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1717661082; x=1718265882; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P0oFG8bq7yHSKq/amXLj6YkSDfn5J6Mv84WGLZXEbSo=;
 b=WikqmDQAsW2NNNKsNLp2woIalRDfhI2okiwewVyx4J2SMVw8WBpLJk8cMQrcaljgzr
 m8s3jNSoQ3rXHpiOB3QARyOMWEi9nIAoYPrL1jXjyZXMcQ7gsrOYMDOP9D8SMgO1Rn1q
 sCIOckWWRiZ5KPDOBU2FC3tM0p/c+a9sb/SAY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=WikqmDQA
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
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
Cc: grundler@chromium.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On the CalDigit Thunderbolt Station 3 Plus, we've encountered an issue
when the USB downstream display connection state changes. The
problematic sequence observed is:
```
igb_io_error_detected
igb_down
igb_io_error_detected
igb_down
```

The second igb_down call blocks at napi_synchronize.
Simply avoiding redundant igb_down calls makes the Ethernet of the
thunderbolt dock unusable.

If Intel can identify when an Ethernet device is within a Thunderbolt
tunnel, the patch can be more specific.

On Thu, Jun 6, 2024 at 8:04=E2=80=AFAM Stefan Schaeckeler <schaecsn@gmx.net=
> wrote:
>
> Hi all,
>
> This commit introduced a regression. What does not work with this commit =
is an AER without a surprise removal event.
>
>
> On 5/18/23 00:26, Ying Hsu wrote:
> > In a setup where a Thunderbolt hub connects to Ethernet and a display
> > through USB Type-C, users may experience a hung task timeout when they
> > remove the cable between the PC and the Thunderbolt hub.
> > This is because the igb_down function is called multiple times when
> > the Thunderbolt hub is unplugged. For example, the igb_io_error_detecte=
d
> > triggers the first call, and the igb_remove triggers the second call.
> > The second call to igb_down will block at napi_synchronize.
> > Here's the call trace:
> >     __schedule+0x3b0/0xddb
> >     ? __mod_timer+0x164/0x5d3
> >     schedule+0x44/0xa8
> >     schedule_timeout+0xb2/0x2a4
> >     ? run_local_timers+0x4e/0x4e
> >     msleep+0x31/0x38
> >     igb_down+0x12c/0x22a [igb 6615058754948bfde0bf01429257eb59f13030d4]
> >     __igb_close+0x6f/0x9c [igb 6615058754948bfde0bf01429257eb59f13030d4=
]
> >     igb_close+0x23/0x2b [igb 6615058754948bfde0bf01429257eb59f13030d4]
> >     __dev_close_many+0x95/0xec
> >     dev_close_many+0x6e/0x103
> >     unregister_netdevice_many+0x105/0x5b1
> >     unregister_netdevice_queue+0xc2/0x10d
> >     unregister_netdev+0x1c/0x23
> >     igb_remove+0xa7/0x11c [igb 6615058754948bfde0bf01429257eb59f13030d4=
]
> >     pci_device_remove+0x3f/0x9c
> >     device_release_driver_internal+0xfe/0x1b4
> >     pci_stop_bus_device+0x5b/0x7f
> >     pci_stop_bus_device+0x30/0x7f
> >     pci_stop_bus_device+0x30/0x7f
> >     pci_stop_and_remove_bus_device+0x12/0x19
> >     pciehp_unconfigure_device+0x76/0xe9
> >     pciehp_disable_slot+0x6e/0x131
> >     pciehp_handle_presence_or_link_change+0x7a/0x3f7
> >     pciehp_ist+0xbe/0x194
> >     irq_thread_fn+0x22/0x4d
> >     ? irq_thread+0x1fd/0x1fd
> >     irq_thread+0x17b/0x1fd
> >     ? irq_forced_thread_fn+0x5f/0x5f
> >     kthread+0x142/0x153
> >     ? __irq_get_irqchip_state+0x46/0x46
> >     ? kthread_associate_blkcg+0x71/0x71
> >     ret_from_fork+0x1f/0x30
> >
> > In this case, igb_io_error_detected detaches the network interface
> > and requests a PCIE slot reset, however, the PCIE reset callback is
> > not being invoked and thus the Ethernet connection breaks down.
> > As the PCIE error in this case is a non-fatal one, requesting a
> > slot reset can be avoided.
> > This patch fixes the task hung issue and preserves Ethernet
> > connection by ignoring non-fatal PCIE errors.
> >
> > Signed-off-by: Ying Hsu <yinghsu@chromium.org>
> > ---
> > This commit has been tested on a HP Elite Dragonfly Chromebook and
> > a Caldigit TS3+ Thunderbolt hub. The Ethernet driver for the hub
> > is igb. Non-fatal PCIE errors happen when users hot-plug the cables
> > connected to the chromebook or to the external display.
> >
> >  drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/et=
hernet/intel/igb/igb_main.c
> > index 58872a4c2540..a8b217368ca1 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -9581,6 +9581,11 @@ static pci_ers_result_t igb_io_error_detected(st=
ruct pci_dev *pdev,
> >       struct net_device *netdev =3D pci_get_drvdata(pdev);
> >       struct igb_adapter *adapter =3D netdev_priv(netdev);
> >
> > +     if (state =3D=3D pci_channel_io_normal) {
> > +             dev_warn(&pdev->dev, "Non-correctable non-fatal error rep=
orted.\n");
> > +             return PCI_ERS_RESULT_CAN_RECOVER;
> > +     }
> > +
> >       netif_device_detach(netdev);
> >
> >       if (state =3D=3D pci_channel_io_perm_failure)
>
> We are currently stuck with the 5.4 kernel - our embedded system can't ea=
sily boot arbitrary kernel versions. The igb driver code has not changed an=
d I'm quite positive the issue still persist in the latest upstream kernel.
>
> This issue is reproducible with aer_inject. 09:00.0 is our i210 which is =
directly connected to the cpu root port 00:01.1:
>
>
> - - - snip - - -
> [node0_RP0_CPU0:~]$cat aer.log
> AER
> PCI_ID 09:00.0
> UNCOR_STATUS COMP_TIME
> HEADER_LOG 0 1 2 3
> - - - snip - - -
>
> - - - snip - - -
> [node0_RP0_CPU0:~]$aer-inject aer.log
> [369145.900845] pcieport 0000:00:01.1: aer_inject: Injecting errors 00000=
000/00004000 into device 0000:09:00.0
> [369145.912726] pcieport 0000:00:01.1: AER: Uncorrected (Non-Fatal) error=
 received: 0000:09:00.0
> [369145.923124] igb 0000:09:00.0: AER: PCIe Bus Error: severity=3DUncorre=
cted (Non-Fatal), type=3DTransaction Layer, (Requester ID)
> [369145.936791] igb 0000:09:00.0: AER:   device [8086:1537] error status/=
mask=3D00004000/00000000
> [369145.947068] igb 0000:09:00.0: AER:    [14] CmpltTO
> [369145.954602] igb 0000:09:00.0: Non-correctable non-fatal error reporte=
d.
> [369145.984564] ------------[ cut here ]------------
> [369145.990285] kernel BUG at include/linux/netdevice.h:529!
> [369145.996860] invalid opcode: 0000 [#1] SMP PTI
> [369146.002267] CPU: 3 PID: 142 Comm: irq/26-aerdrv Kdump: loaded Tainted=
: G           O      5.4.251-yocto-standard #1
> [369146.015073] Hardware name: Cisco System Inc. SF-D8/Type2 - Board Prod=
uct Name1, BIOS 1-29-g46d9e72a-s 05/03/2019
> [369146.027570] RIP: 0010:igb_up+0x51/0x160 [igb]
> [369146.032974] Code: d2 eb 16 f0 80 60 60 fe f0 80 60 60 f7 48 83 c2 01 =
39 93 14 02 00 00 76 13 48 8b 84 d3 08 0f 00 00 48 8b 48 60 83 e1 01 75 d9 =
<0f> 0b f6 83 11 02 00 00 20 0f 85 c0 00 00 00 48 8b bb 08 0f 00 00
> [369146.055938] RSP: 0018:ffffb29b0045bcf0 EFLAGS: 00010246
> [369146.062399] RAX: ffff8d938d99e400 RBX: ffff8d9398a08740 RCX: 00000000=
00000000
> [369146.071186] RDX: 0000000000000000 RSI: 0000000000000004 RDI: ffff8d93=
8d99e2c0
> [369146.079974] RBP: ffffb29b0045bd00 R08: 00000000000002ec R09: ffffb29b=
002fa000
> [369146.088761] R10: 0000000000006f80 R11: 000000000090ef2c R12: ffff8d93=
98a08000
> [369146.097547] R13: ffff8d9398a08740 R14: ffff8d939ae92c00 R15: ffff8d93=
9ae92c28
> [369146.106335] FS:  0000000000000000(0000) GS:ffff8d939fcc0000(0000) knl=
GS:0000000000000000
> [369146.116286] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [369146.123381] CR2: 000056318eb418e8 CR3: 000000084e744002 CR4: 00000000=
003606e0
> [369146.132170] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 00000000=
00000000
> [369146.140960] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 00000000=
00000400
> [369146.149747] Call Trace:
> [369146.152826]  ? show_regs.cold+0x1a/0x1f
> [369146.157592]  ? __die+0x90/0xd9
> [369146.161408]  ? die+0x30/0x50
> [369146.165002]  ? do_trap+0x85/0xf0
> [369146.169029]  ? do_error_trap+0x7c/0xb0
> [369146.173695]  ? igb_up+0x51/0x160 [igb]
> [369146.178355]  ? do_invalid_op+0x3c/0x50
> [369146.183019]  ? igb_up+0x51/0x160 [igb]
> [369146.187681]  ? invalid_op+0x7c/0x90
> [369146.192027]  ? igb_up+0x51/0x160 [igb]
> [369146.196691]  ? hrtimer_try_to_cancel+0x2c/0x110
> [369146.202305]  ? schedule_hrtimeout_range_clock+0xa0/0x110
> [369146.208871]  ? hrtimer_init_sleeper+0x90/0x90
> [369146.214277]  ? igb_rx_fifo_flush_82575+0x32/0x270 [igb]
> [369146.220738]  ? igb_configure+0x417/0x650 [igb]
> [369146.226247]  ? igb_up+0x51/0x160 [igb]
> [369146.230913]  igb_io_resume+0x31/0x50 [igb]
> [369146.235998]  report_resume+0x5c/0x80
> [369146.240449]  ? pcie_portdrv_probe+0x70/0x70
> [369146.245631]  pci_walk_bus+0x75/0x90
> [369146.249966]  pcie_do_recovery+0x163/0x280
> [369146.254947]  aer_process_err_devices+0xa2/0xd1
> [369146.260455]  aer_isr.cold+0x52/0xa1
> [369146.264799]  ? __schedule+0x2bf/0x680
> [369146.269349]  ? irq_finalize_oneshot+0xf0/0xf0
> [369146.274754]  irq_thread_fn+0x28/0x50
> [369146.279205]  irq_thread+0xf8/0x180
> [369146.283445]  ? wake_threads_waitq+0x30/0x30
> [369146.288638]  kthread+0x104/0x140
> [369146.292666]  ? irq_thread_check_affinity+0x80/0x80
> [369146.298597]  ? __kthread_cancel_work+0x40/0x40
> [369146.304106]  ret_from_fork+0x35/0x40
> - - - snip - - -
>
> BUG_ON() comes from
>
> - - - snip - - -
> static inline void napi_enable(struct napi_struct *n)
> {
>         BUG_ON(!test_bit(NAPI_STATE_SCHED, &n->state));
>         smp_mb__before_atomic();
>         clear_bit(NAPI_STATE_SCHED, &n->state);
>         clear_bit(NAPI_STATE_NPSVC, &n->state);
> }
> - - - snip - - -
>
> The stack-trace shows that the AER handler starts here and goes into igb_=
up():
>
> - - - snip - - -
> static void igb_io_resume(struct pci_dev *pdev)
> {
>         struct net_device *netdev =3D pci_get_drvdata(pdev);
>         struct igb_adapter *adapter =3D netdev_priv(netdev);
>
>         if (netif_running(netdev)) {
>                 if (igb_up(adapter)) {
>                         dev_err(&pdev->dev, "igb_up failed after reset\n"=
);
>                         return;
>                 }
>         }
>
>        ...
> }
> - - - snip - - -
> Three functions come into the picture:
>
> igb_io_error_detected() { // runs upon AER detection
>   igb_down();  // before this commit
>   noop;        // with this commit
> }
>
> igb_io_resume() { // runs upon AER handling
>   igb_up()
> }
>
> igb_remove() { // runs upon rmmod igb, or surprise down removal (as shown=
 in the commit log)
>   igb_down();
> }
>
> Before this commit, the flow for an AER on 09:00.0 was
>  igb_down; // from igb_io_error_detect() - this sets the NAPI_STATE_SCHED=
 bit
>  igb_up;   // from igb_io_resume()       - that works as it finds a set N=
API_STATE_SCHED bit (and then clears it)
>
> Now with this commit, the flow for an AER on 09:00.0 is
>  noop;     // from igb_io_error_detect() - the NAPI_STATE_SCHED bit is no=
t touched, e.g. it remains cleared
>  igb_up;   // from igb_io_resume()       - BUG_ON() is triggered as it fi=
nds a cleared NAPI_STATE_SCHED bit
>
>
> I don't have a means to reproduce this i210 on thunderbolt issue and don'=
t completely understand its flow. Before this commit, the "expected" flow f=
or i210 on thunderbolt was probably
>
>  igb_down; // from igb_io_error_detect() - this sets the NAPI_STATE_SCHED=
 bit
>  igb_up;   // from igb_io_resume()       - that works as it finds a set N=
API_STATE_SCHED bit and cleans it.
>  igb_down; // from igb_remove()          - that works b/c of the previous=
 igb_up()
>
> The bug report shows that this was not the case. I don't completely under=
stand the reported problem: what happens to and in igb_io_resume() and its =
call to igb_up()? In the commit log backtrace, I see igb_remove() eventuall=
y calling __dev_close_many() which clears the __LINK__STATE_START bit. igb_=
io_resume() does check this bit via netif_running() and calls only then igb=
_up(). My guess is igb_io_resume() executes after igb_remove() and skips th=
erefore the execution of igb_up(). As we see from the commit log backtrace,=
 that makes igb_remove() starve now in igb_down()->napi_synchronize().
>
> How to fix that, I don't know.
>
>  Stefan
>
>
