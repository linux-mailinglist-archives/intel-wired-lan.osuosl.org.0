Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38570672334
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 17:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1A75813B5;
	Wed, 18 Jan 2023 16:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1A75813B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674059341;
	bh=11ucqV1vhY0oPi6DBU6o3Bk4gl41+qiYXJOfyrdMlrQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A7MJNgnoHy9OS9vP9sVuDYsQhhaXVweAzHHUBD9aI2GznXmlNAP8GIgJzD/oJC4BH
	 cEj/TGHVfBlUrfABXop2ryKn4/JdVIEDYcLT9fw6tUDGg2rG1BX9or1TLfsY3BU8DP
	 dmJ7s6DthY+JL2gzIY3ERRI/KYxH+AKzpWNg4lHTeNZTMkw3Z4VXYWTxq7XNasBMdt
	 ltPouRa2bmMEwboOkB0JbZxl9fVtf8gYJzkRvMui5VanSDqxsG2d8bRHDiTyqd5NQv
	 Lz2FnU7jUNQ9Y45qwbqr7ZLSPVnFjuxLnnhS1uTxIppN1giTf57nedMdmPnJe1Iz+h
	 ULten7vrVB84A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X9iu_gP2Y6_e; Wed, 18 Jan 2023 16:29:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84F4E81257;
	Wed, 18 Jan 2023 16:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84F4E81257
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D26721BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC88E60EFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC88E60EFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9hhw0q2Alj5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 09:08:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57C7160E84
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57C7160E84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:08:59 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id s21so4481514edi.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 01:08:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TK3qq2DIZCRKV3EaJMeG+kJeMf3Jk06Hg2r49DutS2I=;
 b=YFxxXKQT1A3DtsAv0Pa12rYVZDrpmxK9tvJbIM5nI9/W9YtpxCd7Dipg2U12D3Gtnc
 c+k1hoGzqJooCuTRx7Ssc8JhmXWL0tRKCWiE7+6yLVsSIEeL0Dzx/6KgoPRyd2L8pqpu
 6CS7vxRzkWDpl17wYT2i/9iO56GyYSvo0CG35CIC7YwD4obhVnnc14m96HX3pjaGiPGN
 47jTqMzt6ZL85kK5M6qqFP6101EkX5x5B7xr0N/M99WxZLq1fBmk3I18+uuw/l3vNn9Q
 qRQVxuYqWyRCl+9ztVCKGwulW07dsCsaqST7XWPcQWRDxsHRxC6iagneUb/MpjM4mIsQ
 FayA==
X-Gm-Message-State: AFqh2kpaQ7Dorg3b1xZbRhhFiFuJQI4OCth4ht2c+o99iYljLytQuC6L
 iy1FszLumWbiX6FvE0H91P1ouLWpWKcmYDYD3HM=
X-Google-Smtp-Source: AMrXdXt27Qm/P0OJ9NMULTf9tfxamPk7OkdvmaUnXQRQHp04wzC5i7h6K1ynpktCZZ9IKafJhd1jCUT26YRgag+pB0Y=
X-Received: by 2002:a05:6402:643:b0:46f:77af:10ff with SMTP id
 u3-20020a056402064300b0046f77af10ffmr808049edx.178.1674032937213; Wed, 18 Jan
 2023 01:08:57 -0800 (PST)
MIME-Version: 1.0
References: <20230117102645.24920-1-liujia6264@gmail.com>
 <9f29ff29-62bb-c92b-6d69-ccc86938929e@intel.com>
 <5d96deeb-a59d-366d-dbb2-d88623cdfa2d@intel.com>
In-Reply-To: <5d96deeb-a59d-366d-dbb2-d88623cdfa2d@intel.com>
From: Jia Liu <liujia6264@gmail.com>
Date: Wed, 18 Jan 2023 17:08:45 +0800
Message-ID: <CA+eZsiZ81+AL1-mLb4mONZnMqO=uUPFcw=QWFhEY36_jg9MpiQ@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Wed, 18 Jan 2023 16:28:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TK3qq2DIZCRKV3EaJMeG+kJeMf3Jk06Hg2r49DutS2I=;
 b=beBW8UEmmiP/XEulFLyOZ8zULhs3O8kJR1mGKaz5IB7yWI5puDGvj/ibNDyYEz7wBM
 nAZKmm9wcEV2x5zFbxRUnQ5pLAG+BTk2GpTGoL03kSsiKLO733Fk2VOr+DYVfL5LsLog
 B6Xrth4yzvh6vHP9MtKHZ1Xxz9oO2sW+nEvw80LX8HDY9qXgnPNvSZOhz3Lg0nTGKJhX
 j/E03chxWNiHVijx08eZk4b7lZ7ImA/7ZXTaW4U45g5hriSyJMk51unWYPrdC2mrmsoy
 ynG+Xud40Jjv0Yq590LD2jlCo76XukSunhXttKqSb4Newy8URoxnuj0+glfLQC4GS9zk
 MNaw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=beBW8UEm
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Add ADP_I219_LM17 to ME S0ix
 blacklist
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 18, 2023 at 1:20 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>
> On 1/17/2023 21:34, Jacob Keller wrote:
> >
> >
> > On 1/17/2023 2:26 AM, Jiajia Liu wrote:
> >> I219 on HP EliteOne 840 All in One cannot work after s2idle resume
> >> when the link speed is Gigabit, Wake-on-LAN is enabled and then set
> >> the link down before suspend. No issue found when requesting driver
> >> to configure S0ix. Add workround to let ADP_I219_LM17 use the dirver
> >> configured S0ix.
> >>
> >> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=216926
> >> Signed-off-by: Jiajia Liu <liujia6264@gmail.com>
> >> ---
> >>
> >> It's regarding the bug above, it looks it's causued by the ME S0ix.
> >> And is there a method to make the ME S0ix path work?
> No. This is a fragile approach. ME must get the message from us
> (unconfigure the device from s0ix). Otherwise, ME will continue to
> access LAN resources and the controller could get stuck.
> I see two ways:
> 1. you always can skip s0ix flow by priv_flag
> 2. Especially in this case (HP platform) - please, contact HP (what is
> the ME version on this system, and how was it released...). HP will open
> a ticket with Intel. (then we can involve the ME team)

HP released BIOS including ME firmware on their website HP.com at
https://support.hp.com/my-en/drivers/selfservice/hp-eliteone-840-23.8-inch-g9-all-in-one-desktop-pc/2101132389.
There is upgrade interface on the BIOS setup menu which can connect
HP.com and upgrade to newer BIOS.

The initial ME version was v16.0.15.1735 from BIOS 02.03.04.
Then I upgraded to the latest one v16.1.25.1932v3 from BIOS 02.06.01
released on Nov 28, 2022. Both of them can produce this issue.

I have only one setup. Is it possible to try on your system which has the
same I219-LM to see if it's platform specific or not?

> >>
> >
> > No idea. It does seem better to disable S0ix if it doesn't work properly
> > first though...
> >
> >>   drivers/net/ethernet/intel/e1000e/netdev.c | 25 ++++++++++++++++++++++
> >>   1 file changed, 25 insertions(+)
> >>
> >> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> >> index 04acd1a992fa..7ee759dbd09d 100644
> >> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> >> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> >> @@ -6330,6 +6330,23 @@ static void e1000e_flush_lpic(struct pci_dev *pdev)
> >>      pm_runtime_put_sync(netdev->dev.parent);
> >>   }
> >>
> >> +static u16 me_s0ix_blacklist[] = {
> >> +    E1000_DEV_ID_PCH_ADP_I219_LM17,
> >> +    0
> >> +};
> >> +
> >> +static bool e1000e_check_me_s0ix_blacklist(const struct e1000_adapter *adapter)
> >> +{
> >> +    u16 *list;
> >> +
> >> +    for (list = me_s0ix_blacklist; *list; list++) {
> >> +            if (*list == adapter->pdev->device)
> >> +                    return true;
> >> +    }
> >> +
> >> +    return false;
> >> +}
> >
> > The name of this function seems odd..? "check_me"? It also seems like we
> > could just do a simple switch/case on the device ID or similar.
> >
> > Maybe: "e1000e_device_supports_s0ix"?
> >
> >> +
> >>   /* S0ix implementation */
> >>   static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
> >>   {
> >> @@ -6337,6 +6354,9 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
> >>      u32 mac_data;
> >>      u16 phy_data;
> >>
> >> +    if (e1000e_check_me_s0ix_blacklist(adapter))
> >> +            goto req_driver;
> >> +
> >>      if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
> >>          hw->mac.type >= e1000_pch_adp) {
> >>              /* Request ME configure the device for S0ix */
> >
> >
> > The related code also seems to already perform some set of mac checks
> > here...
> >
> >> @@ -6346,6 +6366,7 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
> >>              trace_e1000e_trace_mac_register(mac_data);
> >>              ew32(H2ME, mac_data);
> >>      } else {
> >> +req_driver:>                /* Request driver configure the device to S0ix */
> >>              /* Disable the periodic inband message,
> >>               * don't request PCIe clock in K1 page770_17[10:9] = 10b
> >> @@ -6488,6 +6509,9 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
> >>      u16 phy_data;
> >>      u32 i = 0;
> >>
> >> +    if (e1000e_check_me_s0ix_blacklist(adapter))
> >> +            goto req_driver;
> >> +
> >
> > Why not just combine this check into the statement below rather than
> > adding a goto?
> >
> >>      if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
> >>          hw->mac.type >= e1000_pch_adp) {
> >>              /* Keep the GPT clock enabled for CSME */
> >> @@ -6523,6 +6547,7 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
> >>              else
> >>                      e_dbg("DPG_EXIT_DONE cleared after %d msec\n", i * 10);
> >>      } else {
> >> +req_driver:
> >>              /* Request driver unconfigure the device from S0ix */
> >>
> >>              /* Disable the Dynamic Power Gating in the MAC */
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
