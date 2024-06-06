Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADD48FF472
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79CE14187A;
	Thu,  6 Jun 2024 18:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AqPuI7W55bbI; Thu,  6 Jun 2024 18:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6718840567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697663;
	bh=826Z9AW4i6nvODe6C9yQtwFLeBGRB9/lhe6gAhbJxzI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dhkOr9wBjd2UqDmkt8JZPtwbim7dq9DT74u0vSuC6yeRgbszrKzVmPNLWmnX81xCd
	 xmLJ6EJN5wN55gUBPZr4yDz5sUpbQs4fH64R8BZpU/nxo6fuQj8rz1N9EM1lSfxpSM
	 19gyAtH8xoPcSRyNI2mMC7m31bvnK/Lqfw8os7Jc5ahh1rFp/Be5bH2JAA1fC5jyJP
	 KIpybdu6EFop+QRqeTAKVUypfl+vrtwWo96tp75qAgcrO4t2EIH0Do8SnY3KG7HNw9
	 oCU41m9zURPn4ZNYFCGLySt0+glZXU/XoncBhBMjqU5F1z7qIS/4Ph2hmj7n7NbiVi
	 Hmx6hvIDzcoeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6718840567;
	Thu,  6 Jun 2024 18:14:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75B391BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 618174042C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id riWvm-C7Qti3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 00:05:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.18;
 helo=mout.gmx.net; envelope-from=schaecsn@gmx.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F33D402F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F33D402F5
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F33D402F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:05:15 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.209] ([173.228.106.93]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N5VDE-1sUh7g1IVu-015p2N; Thu, 06
 Jun 2024 02:04:50 +0200
Message-ID: <5184214b-22ed-41cf-a1b0-6db2d4ff324c@gmx.net>
Date: Wed, 5 Jun 2024 17:04:44 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ying Hsu <yinghsu@chromium.org>, netdev@vger.kernel.org
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
Content-Language: en-US
From: Stefan Schaeckeler <schaecsn@gmx.net>
In-Reply-To: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:2sGrUvc3PHnzAcSphue5/9NxtCWMLYz7ePYixbE16WMjDu+gLnf
 5e9fXL0+/OlbGQDe6/5l1/bjMKHf1JBb9IHM+KsABE0EzsavleNNSFephzyw2mNJaevckdO
 UUY9yPa1erZdFxmP6nvjS7WGwA+TexSQx8G7I7OJyrWL+9n23GTI6m92WAWicealIX2pMkS
 aCQHnTRKjkAHBjBVwkTDA==
UI-OutboundReport: notjunk:1;M01:P0:KWWeZ9g3alg=;99gwe/elhCTmGLMwbO75dh3MVzh
 +eCsZrZ3Jgm4ZeEFAliyH1kwdKNwvm++EWF6yOTMm0Gw0Z5H1ZLk4vdF16DH7DFV6rS+OGdkU
 Sr0oslnFuC4lxrgHxlAbjSIbz6c8yJI4QfYrx8YBEnDM31K5MhgCqstxNtXmY9KK0vPpsHSA4
 9Jr3oU+ljrXAk+zx27gdCua6BZ49mlHa05P1LDjFSFsyDPT6BOWc9gA/FuDdIT7Uijwxt0roD
 +4/XMGybdbeUaqUc8hLZAOe1Ih6VJQZEIvMG+qNSAjHrSgWQOri8BvIOuegmKsQIqDBoBcEEu
 E/tvAKDHsvgEX0LS5jgNYW8HKirzqO7Se36IIGWR1h5JyO4YnyfoLk9af+8MEtx8CTaCjqWBL
 HlTzcJSDe3vEIj+DkOJQoPvNQEAZZEmaQwYnxkWbIdfdlaNTfvS+7wQjbNWwMph7nUg/7lXRV
 gYNVU8n6WUexoW6BXAJVXaSA66zQJUKjyYXrf2qZy+npmiWlibllD5EXbFUuEJKZaJcaMwXMH
 C5D0SHSrBqB40WdtR1iJDgtwsPgvBMKTxz+eJQpqdz3MlAumnXv1Fp+WW9kg9bZy87cL77flS
 5wRLCijDGCuxTIabDdOy/kRy73plSG36sr36mcuFVQgA3ATCP3MzIOpRnCBLYTmv/vINeoAOe
 AnpDr+w0+94vFIcCfrHXICg1YV/2zjLnQtTx1qjXNcBhXGbTodO5EFvvo37flev2+pZz/S4xV
 6IafC5iE9M4iS/W4HLVrEju5J0x8MOEPzTjY3j37lGnT1FCRnWmPxxHrGFbBj2jSxZefvzj9m
 9Pem4V59Gj2cRC3a+2CN2UzYwuS+rPgmDed2RzvjqBNXs=
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.net; 
 s=s31663417; t=1717632290; x=1718237090; i=schaecsn@gmx.net;
 bh=826Z9AW4i6nvODe6C9yQtwFLeBGRB9/lhe6gAhbJxzI=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=S5TaEB9PW9WsXuK/aMEygZLjrYzwrqFfRZR1P9f5Z486utsuYIU1b9d5+CZUv46Q
 hzVVpyvnuaLrFJRvnyypH1+Fi2WveCxn/2UAMP7QIdWFNG9ZXofXWiRE+XdwQt4Sg
 ObboSkLXIytjDnpjxRj4vY0Ym/oDkDVTtT093LSOF4BYp0TliOGYw1JAj1kOHWIrV
 26zu7vtl7+HunJy7ftilp4b3zgRGY7+LRUIGYOOAP4MND7yjSUQfXrQVHXVIR+4Pr
 XPKr6HnVXdbYsOGVrUJ103z2OQvpkTtffH3bvZywdIip0mq9S0+/bxH24/XTi0+gi
 G6eNCkPubkDhy7CNxA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmx.net header.i=schaecsn@gmx.net header.a=rsa-sha256
 header.s=s31663417 header.b=S5TaEB9P
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
Cc: grundler@chromium.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This commit introduced a regression. What does not work with this commit i=
s an AER without a surprise removal event.


On 5/18/23 00:26, Ying Hsu wrote:
> In a setup where a Thunderbolt hub connects to Ethernet and a display
> through USB Type-C, users may experience a hung task timeout when they
> remove the cable between the PC and the Thunderbolt hub.
> This is because the igb_down function is called multiple times when
> the Thunderbolt hub is unplugged. For example, the igb_io_error_detected
> triggers the first call, and the igb_remove triggers the second call.
> The second call to igb_down will block at napi_synchronize.
> Here's the call trace:
>     __schedule+0x3b0/0xddb
>     ? __mod_timer+0x164/0x5d3
>     schedule+0x44/0xa8
>     schedule_timeout+0xb2/0x2a4
>     ? run_local_timers+0x4e/0x4e
>     msleep+0x31/0x38
>     igb_down+0x12c/0x22a [igb 6615058754948bfde0bf01429257eb59f13030d4]
>     __igb_close+0x6f/0x9c [igb 6615058754948bfde0bf01429257eb59f13030d4]
>     igb_close+0x23/0x2b [igb 6615058754948bfde0bf01429257eb59f13030d4]
>     __dev_close_many+0x95/0xec
>     dev_close_many+0x6e/0x103
>     unregister_netdevice_many+0x105/0x5b1
>     unregister_netdevice_queue+0xc2/0x10d
>     unregister_netdev+0x1c/0x23
>     igb_remove+0xa7/0x11c [igb 6615058754948bfde0bf01429257eb59f13030d4]
>     pci_device_remove+0x3f/0x9c
>     device_release_driver_internal+0xfe/0x1b4
>     pci_stop_bus_device+0x5b/0x7f
>     pci_stop_bus_device+0x30/0x7f
>     pci_stop_bus_device+0x30/0x7f
>     pci_stop_and_remove_bus_device+0x12/0x19
>     pciehp_unconfigure_device+0x76/0xe9
>     pciehp_disable_slot+0x6e/0x131
>     pciehp_handle_presence_or_link_change+0x7a/0x3f7
>     pciehp_ist+0xbe/0x194
>     irq_thread_fn+0x22/0x4d
>     ? irq_thread+0x1fd/0x1fd
>     irq_thread+0x17b/0x1fd
>     ? irq_forced_thread_fn+0x5f/0x5f
>     kthread+0x142/0x153
>     ? __irq_get_irqchip_state+0x46/0x46
>     ? kthread_associate_blkcg+0x71/0x71
>     ret_from_fork+0x1f/0x30
>
> In this case, igb_io_error_detected detaches the network interface
> and requests a PCIE slot reset, however, the PCIE reset callback is
> not being invoked and thus the Ethernet connection breaks down.
> As the PCIE error in this case is a non-fatal one, requesting a
> slot reset can be avoided.
> This patch fixes the task hung issue and preserves Ethernet
> connection by ignoring non-fatal PCIE errors.
>
> Signed-off-by: Ying Hsu <yinghsu@chromium.org>
> ---
> This commit has been tested on a HP Elite Dragonfly Chromebook and
> a Caldigit TS3+ Thunderbolt hub. The Ethernet driver for the hub
> is igb. Non-fatal PCIE errors happen when users hot-plug the cables
> connected to the chromebook or to the external display.
>
>  drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/eth=
ernet/intel/igb/igb_main.c
> index 58872a4c2540..a8b217368ca1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -9581,6 +9581,11 @@ static pci_ers_result_t igb_io_error_detected(str=
uct pci_dev *pdev,
>  	struct net_device *netdev =3D pci_get_drvdata(pdev);
>  	struct igb_adapter *adapter =3D netdev_priv(netdev);
>
> +	if (state =3D=3D pci_channel_io_normal) {
> +		dev_warn(&pdev->dev, "Non-correctable non-fatal error reported.\n");
> +		return PCI_ERS_RESULT_CAN_RECOVER;
> +	}
> +
>  	netif_device_detach(netdev);
>
>  	if (state =3D=3D pci_channel_io_perm_failure)

We are currently stuck with the 5.4 kernel - our embedded system can't eas=
ily boot arbitrary kernel versions. The igb driver code has not changed an=
d I'm quite positive the issue still persist in the latest upstream kernel=
.

This issue is reproducible with aer_inject. 09:00.0 is our i210 which is d=
irectly connected to the cpu root port 00:01.1:


- - - snip - - -
[node0_RP0_CPU0:~]$cat aer.log
AER
PCI_ID 09:00.0
UNCOR_STATUS COMP_TIME
HEADER_LOG 0 1 2 3
- - - snip - - -

- - - snip - - -
[node0_RP0_CPU0:~]$aer-inject aer.log
[369145.900845] pcieport 0000:00:01.1: aer_inject: Injecting errors 000000=
00/00004000 into device 0000:09:00.0
[369145.912726] pcieport 0000:00:01.1: AER: Uncorrected (Non-Fatal) error =
received: 0000:09:00.0
[369145.923124] igb 0000:09:00.0: AER: PCIe Bus Error: severity=3DUncorrec=
ted (Non-Fatal), type=3DTransaction Layer, (Requester ID)
[369145.936791] igb 0000:09:00.0: AER:   device [8086:1537] error status/m=
ask=3D00004000/00000000
[369145.947068] igb 0000:09:00.0: AER:    [14] CmpltTO
[369145.954602] igb 0000:09:00.0: Non-correctable non-fatal error reported=
.
[369145.984564] ------------[ cut here ]------------
[369145.990285] kernel BUG at include/linux/netdevice.h:529!
[369145.996860] invalid opcode: 0000 [#1] SMP PTI
[369146.002267] CPU: 3 PID: 142 Comm: irq/26-aerdrv Kdump: loaded Tainted:=
 G           O      5.4.251-yocto-standard #1
[369146.015073] Hardware name: Cisco System Inc. SF-D8/Type2 - Board Produ=
ct Name1, BIOS 1-29-g46d9e72a-s 05/03/2019
[369146.027570] RIP: 0010:igb_up+0x51/0x160 [igb]
[369146.032974] Code: d2 eb 16 f0 80 60 60 fe f0 80 60 60 f7 48 83 c2 01 3=
9 93 14 02 00 00 76 13 48 8b 84 d3 08 0f 00 00 48 8b 48 60 83 e1 01 75 d9 =
<0f> 0b f6 83 11 02 00 00 20 0f 85 c0 00 00 00 48 8b bb 08 0f 00 00
[369146.055938] RSP: 0018:ffffb29b0045bcf0 EFLAGS: 00010246
[369146.062399] RAX: ffff8d938d99e400 RBX: ffff8d9398a08740 RCX: 000000000=
0000000
[369146.071186] RDX: 0000000000000000 RSI: 0000000000000004 RDI: ffff8d938=
d99e2c0
[369146.079974] RBP: ffffb29b0045bd00 R08: 00000000000002ec R09: ffffb29b0=
02fa000
[369146.088761] R10: 0000000000006f80 R11: 000000000090ef2c R12: ffff8d939=
8a08000
[369146.097547] R13: ffff8d9398a08740 R14: ffff8d939ae92c00 R15: ffff8d939=
ae92c28
[369146.106335] FS:  0000000000000000(0000) GS:ffff8d939fcc0000(0000) knlG=
S:0000000000000000
[369146.116286] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[369146.123381] CR2: 000056318eb418e8 CR3: 000000084e744002 CR4: 000000000=
03606e0
[369146.132170] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000000=
0000000
[369146.140960] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 000000000=
0000400
[369146.149747] Call Trace:
[369146.152826]  ? show_regs.cold+0x1a/0x1f
[369146.157592]  ? __die+0x90/0xd9
[369146.161408]  ? die+0x30/0x50
[369146.165002]  ? do_trap+0x85/0xf0
[369146.169029]  ? do_error_trap+0x7c/0xb0
[369146.173695]  ? igb_up+0x51/0x160 [igb]
[369146.178355]  ? do_invalid_op+0x3c/0x50
[369146.183019]  ? igb_up+0x51/0x160 [igb]
[369146.187681]  ? invalid_op+0x7c/0x90
[369146.192027]  ? igb_up+0x51/0x160 [igb]
[369146.196691]  ? hrtimer_try_to_cancel+0x2c/0x110
[369146.202305]  ? schedule_hrtimeout_range_clock+0xa0/0x110
[369146.208871]  ? hrtimer_init_sleeper+0x90/0x90
[369146.214277]  ? igb_rx_fifo_flush_82575+0x32/0x270 [igb]
[369146.220738]  ? igb_configure+0x417/0x650 [igb]
[369146.226247]  ? igb_up+0x51/0x160 [igb]
[369146.230913]  igb_io_resume+0x31/0x50 [igb]
[369146.235998]  report_resume+0x5c/0x80
[369146.240449]  ? pcie_portdrv_probe+0x70/0x70
[369146.245631]  pci_walk_bus+0x75/0x90
[369146.249966]  pcie_do_recovery+0x163/0x280
[369146.254947]  aer_process_err_devices+0xa2/0xd1
[369146.260455]  aer_isr.cold+0x52/0xa1
[369146.264799]  ? __schedule+0x2bf/0x680
[369146.269349]  ? irq_finalize_oneshot+0xf0/0xf0
[369146.274754]  irq_thread_fn+0x28/0x50
[369146.279205]  irq_thread+0xf8/0x180
[369146.283445]  ? wake_threads_waitq+0x30/0x30
[369146.288638]  kthread+0x104/0x140
[369146.292666]  ? irq_thread_check_affinity+0x80/0x80
[369146.298597]  ? __kthread_cancel_work+0x40/0x40
[369146.304106]  ret_from_fork+0x35/0x40
- - - snip - - -

BUG_ON() comes from

- - - snip - - -
static inline void napi_enable(struct napi_struct *n)
{
        BUG_ON(!test_bit(NAPI_STATE_SCHED, &n->state));
        smp_mb__before_atomic();
        clear_bit(NAPI_STATE_SCHED, &n->state);
        clear_bit(NAPI_STATE_NPSVC, &n->state);
}
- - - snip - - -

The stack-trace shows that the AER handler starts here and goes into igb_u=
p():

- - - snip - - -
static void igb_io_resume(struct pci_dev *pdev)
{
        struct net_device *netdev =3D pci_get_drvdata(pdev);
        struct igb_adapter *adapter =3D netdev_priv(netdev);

        if (netif_running(netdev)) {
                if (igb_up(adapter)) {
                        dev_err(&pdev->dev, "igb_up failed after reset\n")=
;
                        return;
                }
        }

       ...
}
- - - snip - - -
Three functions come into the picture:

igb_io_error_detected() { // runs upon AER detection
  igb_down();  // before this commit
  noop;        // with this commit
}

igb_io_resume() { // runs upon AER handling
  igb_up()
}

igb_remove() { // runs upon rmmod igb, or surprise down removal (as shown =
in the commit log)
  igb_down();
}

Before this commit, the flow for an AER on 09:00.0 was
 igb_down; // from igb_io_error_detect() - this sets the NAPI_STATE_SCHED =
bit
 igb_up;   // from igb_io_resume()       - that works as it finds a set NA=
PI_STATE_SCHED bit (and then clears it)

Now with this commit, the flow for an AER on 09:00.0 is
 noop;     // from igb_io_error_detect() - the NAPI_STATE_SCHED bit is not=
 touched, e.g. it remains cleared
 igb_up;   // from igb_io_resume()       - BUG_ON() is triggered as it fin=
ds a cleared NAPI_STATE_SCHED bit


I don't have a means to reproduce this i210 on thunderbolt issue and don't=
 completely understand its flow. Before this commit, the "expected" flow f=
or i210 on thunderbolt was probably

 igb_down; // from igb_io_error_detect() - this sets the NAPI_STATE_SCHED =
bit
 igb_up;   // from igb_io_resume()       - that works as it finds a set NA=
PI_STATE_SCHED bit and cleans it.
 igb_down; // from igb_remove()          - that works b/c of the previous =
igb_up()

The bug report shows that this was not the case. I don't completely unders=
tand the reported problem: what happens to and in igb_io_resume() and its =
call to igb_up()? In the commit log backtrace, I see igb_remove() eventual=
ly calling __dev_close_many() which clears the __LINK__STATE_START bit. ig=
b_io_resume() does check this bit via netif_running() and calls only then =
igb_up(). My guess is igb_io_resume() executes after igb_remove() and skip=
s therefore the execution of igb_up(). As we see from the commit log backt=
race, that makes igb_remove() starve now in igb_down()->napi_synchronize()=
.

How to fix that, I don't know.

 Stefan


