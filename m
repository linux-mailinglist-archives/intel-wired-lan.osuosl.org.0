Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AD84D1C4C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 16:50:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12D944090E;
	Tue,  8 Mar 2022 15:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lku0n20Yj4iv; Tue,  8 Mar 2022 15:50:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D559C402F3;
	Tue,  8 Mar 2022 15:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1D8C1BF380
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 15:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF04B400D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 15:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOy5pAI-5vDx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 15:49:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93C0A402F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 15:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646754595;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R6WaNRSHSX+0RU3BegpHhOCG4TsVZDgfukQA8TYB/xg=;
 b=B4mxav9lI+Ju0DHmWDxL6RHPclFx9W249RzLwtzN3Jo02x2OhlpgknfKTkFZ7mr7YLHUEc
 p7jU2zUI61ooodAFRx641V+/8qatyg23oTQabEHonkp1IHgban+60/vwaoUuFf6Mkh2HpS
 ErdD3KHjoo93Xcr7BFXDXccSRyirNfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-298-NiXtlvnaNXCexCtxWxOOYg-1; Tue, 08 Mar 2022 10:49:51 -0500
X-MC-Unique: NiXtlvnaNXCexCtxWxOOYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5BBE18766D0;
 Tue,  8 Mar 2022 15:49:50 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.36.112.5])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 74DC383780;
 Tue,  8 Mar 2022 15:49:50 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id E80B0A80C06; Tue,  8 Mar 2022 16:49:48 +0100 (CET)
Date: Tue, 8 Mar 2022 16:49:48 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <Yid7HCwekP1IsMN3@calimero.vinschen.de>
Mail-Followup-To: Sasha Neftin <sasha.neftin@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20220308092422.2971655-1-sasha.neftin@intel.com>
MIME-Version: 1.0
In-Reply-To: <20220308092422.2971655-1-sasha.neftin@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=vinschen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix BUG: scheduling while
 atomic: kworker/u64:0/9/0x00000002
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

On Mar  8 11:24, Sasha Neftin wrote:
> Replace usleep_range() method with udelay() method to allow atomic contects
> in low-level MDIO access functions.

The commit message is a bit on the short end.  It should probably quote
the reproducer from the below Bugzilla, rather than just pointing to the
Bugzilla, i.e.,

$ modprobe -r bonding
$ modprobe -v bonding max_bonds=1 mode=1 miimon=100 use_carrier=0
$ ip link set bond0 up
$ ifenslave bond0 eth0 eth1

leads to the following [shortened] kernel log:

[  120.198086] Voluntary context switch within RCU read-side critical section!
[  120.198093] WARNING: CPU: 3 PID: 10 at kernel/rcu/tree_plugin.h:318 rcu_note_context_switch+0x4ea/0x580
[  120.207310] bond0: (slave ens5f0): Enslaving as a backup interface with a down link
[  120.229488] [...]
[  120.754723] Workqueue: bond0 bond_mii_monitor [bonding]
[  120.779106] RIP: 0010:rcu_note_context_switch+0x4ea/0x580
[  120.803880] Code: 08 49 89 8e 40 08 00 00 4d 89 be 48 08 00 00 4d 89 07 e9 98 fe ff ff 48 c7 c7 48 83 94 b6 c6 05 74 3b e1 01 01 e8 35 fd 8a 00 <0f> 0b e9 67 fb ff ff 45 85 f6 0f 84 9e fe ff ff 4c 89 85 a8 00 00
[  120.890778] RSP: 0018:ffffa2f5c01bbbc8 EFLAGS: 00010082
[  120.915218] RAX: 0000000000000000 RBX: ffff938d6f8f1740 RCX: 0000000000000027
[  120.948713] RDX: 0000000000000027 RSI: ffff938d6f8dfcc0 RDI: ffff938d6f8dfcc8
[  120.982368] RBP: ffffa2f5c01bbc50 R08: 0000000000000000 R09: c0000000ffff7fff
[  121.016065] R10: 0000000000000001 R11: ffffa2f5c01bb9e0 R12: ffff938a022a9980
[  121.049504] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000001
[  121.082870] FS:  0000000000000000(0000) GS:ffff938d6f8c0000(0000) knlGS:0000000000000000
[  121.121993] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  121.151532] CR2: 0000556901ea4f28 CR3: 0000000482810001 CR4: 00000000001706e0
[  121.186337] Call Trace:
[  121.197543]  <TASK>
[  121.207444]  __schedule+0x9a/0x7b0
[  121.223316]  ? hrtimer_start_range_ns+0x11d/0x300
[  121.245293]  schedule+0x41/0xc0
[  121.259860]  schedule_hrtimeout_range_clock+0x83/0x100
[  121.283548]  ? hrtimer_init_sleeper+0x80/0x80
[  121.303830]  usleep_range_state+0x5b/0x80
[  121.322747]  igc_read_phy_reg_gpy+0x90/0x180 [igc]
[  121.345249]  igc_phy_has_link+0x7d/0x170 [igc]
[  121.365980]  igc_check_for_copper_link+0x60/0xd0 [igc]
[  121.390260]  igc_has_link+0x2a/0x80 [igc]
[  121.409093]  igc_ethtool_get_link+0x24/0x30 [igc]
[  121.431248]  bond_check_dev_link.isra.49+0x5a/0x120 [bonding]
[  121.458271]  ? pick_next_task_fair+0x3e/0x3b0
[  121.478749]  ? put_prev_entity+0x22/0xe0
[  121.497154]  ? put_prev_task_fair+0x1b/0x30
[  121.516903]  bond_mii_monitor+0x107/0x540 [bonding]
[...]

> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 40dbf4b43234..6961f65d36b9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -581,7 +581,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
>  	 * the lower time out
>  	 */
>  	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
> -		usleep_range(500, 1000);
> +		udelay(50);
>  		mdic = rd32(IGC_MDIC);
>  		if (mdic & IGC_MDIC_READY)
>  			break;
> @@ -638,7 +638,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
>  	 * the lower time out
>  	 */
>  	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
> -		usleep_range(500, 1000);
> +		udelay(50);
>  		mdic = rd32(IGC_MDIC);
>  		if (mdic & IGC_MDIC_READY)
>  			break;
> -- 
> 2.30.2

Tested-by: Corinna Vinschen <vinschen@redhat.com>


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
