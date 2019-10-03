Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE52CAB8A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 19:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6D30868C8;
	Thu,  3 Oct 2019 17:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XrSmpIvU6fLU; Thu,  3 Oct 2019 17:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25F9C86591;
	Thu,  3 Oct 2019 17:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3531BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 914A885B3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g7kQrfYsahNK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 17:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8F9E8626B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 17:40:01 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q203so3244669qke.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2019 10:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F4BANh4jYufVlD3yr9K5ti4yNN2QxjNsJv2HL10KC7Q=;
 b=E3CklpvfMzqofh3/d/MYvH+IMRSZL64nyVP7noUQOtvqvLhML7zXDv2JX81PwDTriG
 Mc1vXfC77IHwsRJhCoTCFZflcR0wWMH28iLEoYxwN6lU8qxBmYd3rou5QhT+lrrQn2Jl
 2QNmX3d7XKjYg1dsQjRxDttu8zmPfccNm8dj5UHDsXdn7+6xbyYc0K96CFlKhj2Mp8J3
 e0cmJ3hwN8RXLG2oZyzkYZlQ0GtbRjlrugDkdSxdsfsZv/H8DuYKZuN62gppYQIl+hub
 QMvTM6eKjggx5qazaDHGzB86YoVCMLhVMK8ClwNl7fx+W+kb3IGq2j/j7ng3zpcjiVJH
 WYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F4BANh4jYufVlD3yr9K5ti4yNN2QxjNsJv2HL10KC7Q=;
 b=REiskfxekVoKeobeijxz2M5K0EfrS6bYA7+Iluvzn0Qm6iLM944zl68SjU77IxYA3i
 UO+43xR5MZ6FnUvf1oboOVkYC42rWz1Ek7QSSEYq0eFstbqGYDmJrE7gs/VhH2n5X/0E
 KXnGwNXsUh/NZpwUDm2VgHCAqdMTroKybtwZ77/rTNQL3vDl5rURu4jPRsh3Pel+sow1
 191qV2IeTKRWDkSRx0z8A/Zzpo5m4DmyrgadhpIJR7XKEfoBlFVkgduiZPDbblbzgmjO
 HrnEJxk+j0EOwUQmT3L5J2WEVjQXmvypL1SN+376/0keqUH/kSYhB4UgwQ5/EWwbVkJ3
 LZnQ==
X-Gm-Message-State: APjAAAVjt3wtuzKJKWzKmHEU7eN9LuXJR3DpwH7ynsLIeC5Hi00Qm8tC
 t9tDMqRNyacr7AiTykOl1gh+2qb+t788hQtCNDg=
X-Google-Smtp-Source: APXvYqxcw1iiyKTIaWlMALLu1SIiLnBEhqmQUcvXKh/g7GsD/FPGgDPe2jnhBf9a0lyCI4xaSLzIkbeQMvujiaYmftY=
X-Received: by 2002:a05:620a:249:: with SMTP id
 q9mr5601851qkn.491.1570124400731; 
 Thu, 03 Oct 2019 10:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com>
In-Reply-To: <1570121672-12172-1-git-send-email-zdai@linux.vnet.ibm.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 3 Oct 2019 10:39:49 -0700
Message-ID: <CAKgT0Udz7vt5C=+6vpFPbys4sODAZtCjrkSvOdgP80rX7Ww+Ng@mail.gmail.com>
To: David Dai <zdai@linux.vnet.ibm.com>
Subject: Re: [Intel-wired-lan] [v1] e1000e: EEH on e1000e adapter detects io
 perm failure can trigger crash
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, zdai@us.ibm.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 3, 2019 at 9:59 AM David Dai <zdai@linux.vnet.ibm.com> wrote:
>
> We see the behavior when EEH e1000e adapter detects io permanent failure,
> it will crash kernel with this stack:
> EEH: Beginning: 'error_detected(permanent failure)'
> EEH: PE#900000 (PCI 0115:90:00.1): Invoking e1000e->error_detected(permanent failure)
> EEH: PE#900000 (PCI 0115:90:00.1): e1000e driver reports: 'disconnect'
> EEH: PE#900000 (PCI 0115:90:00.0): Invoking e1000e->error_detected(permanent failure)
> EEH: PE#900000 (PCI 0115:90:00.0): e1000e driver reports: 'disconnect'
> EEH: Finished:'error_detected(permanent failure)'
> Oops: Exception in kernel mode, sig: 5 [#1]
> NIP [c0000000007b1be0] free_msi_irqs+0xa0/0x280
>  LR [c0000000007b1bd0] free_msi_irqs+0x90/0x280
> Call Trace:
> [c0000004f491ba10] [c0000000007b1bd0] free_msi_irqs+0x90/0x280 (unreliable)
> [c0000004f491ba70] [c0000000007b260c] pci_disable_msi+0x13c/0x180
> [c0000004f491bab0] [d0000000046381ac] e1000_remove+0x234/0x2a0 [e1000e]
> [c0000004f491baf0] [c000000000783cec] pci_device_remove+0x6c/0x120
> [c0000004f491bb30] [c00000000088da6c] device_release_driver_internal+0x2bc/0x3f0
> [c0000004f491bb80] [c00000000076f5a8] pci_stop_and_remove_bus_device+0xb8/0x110
> [c0000004f491bbc0] [c00000000006e890] pci_hp_remove_devices+0x90/0x130
> [c0000004f491bc50] [c00000000004ad34] eeh_handle_normal_event+0x1d4/0x660
> [c0000004f491bd10] [c00000000004bf10] eeh_event_handler+0x1c0/0x1e0
> [c0000004f491bdc0] [c00000000017c4ac] kthread+0x1ac/0x1c0
> [c0000004f491be30] [c00000000000b75c] ret_from_kernel_thread+0x5c/0x80
>
> Basically the e1000e irqs haven't been freed at the time eeh is trying to
> remove the the e1000e device.
> Need to make sure when e1000e_close is called to bring down the NIC,
> if adapter error_state is pci_channel_io_perm_failure, it should also
> bring down the link and free irqs.
>
> Reported-by: Morumuri Srivalli  <smorumu1@in.ibm.com>
> Signed-off-by: David Dai <zdai@linux.vnet.ibm.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index d7d56e4..cf618e1 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -4715,7 +4715,8 @@ int e1000e_close(struct net_device *netdev)
>
>         pm_runtime_get_sync(&pdev->dev);
>
> -       if (!test_bit(__E1000_DOWN, &adapter->state)) {
> +       if (!test_bit(__E1000_DOWN, &adapter->state) ||
> +           (adapter->pdev->error_state == pci_channel_io_perm_failure)) {
>                 e1000e_down(adapter, true);
>                 e1000_free_irq(adapter);

It seems like the issue is the fact that e1000_io_error_detected is
calling e1000e_down without the e1000_free_irq() bit. Instead of doing
this couldn't you simply add the following to e1000_is_slot_reset in
the "result = PCI_ERS_RESULT_DISCONNECT" case:
    if (netif_running(netdev)
        e1000_free_irq(adapter);

Alternatively we could look at freeing and reallocating the IRQs in
the event of an error like we do for the e1000e_pm_freeze and
e1000e_pm_thaw cases. That might make more sense since we are dealing
with an error we might want to free and reallocate the IRQ resources
assigned to the device.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
