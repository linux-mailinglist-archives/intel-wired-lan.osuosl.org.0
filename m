Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 734B3177B52
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 17:00:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B82285D70;
	Tue,  3 Mar 2020 16:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9I_IOLw6t5Um; Tue,  3 Mar 2020 16:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 561B585D3D;
	Tue,  3 Mar 2020 16:00:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2E9F1BF423
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBF9C860E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ew+YVVxlWwer for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2020 16:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A4CA86373
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 16:00:39 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id r4so3228653iln.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Mar 2020 08:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5nB5KliZFfDrFmGaiqqiN/kMb95eEp9p0bbqKdfRBHs=;
 b=jSz/1KUlvDtcxL9W6/vxFZJqjJNSgtudmmh54An+nx0SMXhfYWpeCjxg1e+gFsOiQZ
 inHLZSRCrpG0l7fdvJIJ0g9GwLQAJzxwl5HYalitBQe8zfuxKcCXi5UGZaSQ54wKMIq7
 7RaA5tS1vsN0CAarbZ972Di/BeCrZWdEgUTdqU2GYHPvuDe7IOR0WX+fGHqXJtNdX5+/
 O/nMQemyzxXXEDybBIF7/AaE0ghWDT2D0RdUR7fdiF4sUZRjvlaNVU84iJuaKntmqy4B
 P2nlZjb8hUnnf7Ec94k9Ky7PtW4UY9rMqqbqV10MAbQQ6cNOgS5LMxVT8KCgN4j9IKig
 sytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5nB5KliZFfDrFmGaiqqiN/kMb95eEp9p0bbqKdfRBHs=;
 b=EQUQzhQiWYYLA2AxduRAuJ/GkYN/HIAqGCXjFIkh7uUcae6eDp30g/p75bQF383YBf
 bsMi+/u2ZF9rpKXnPIr8AbwV4Rv28/Q1xR3gTqFNS1Rz3x3dd7zyNUZBji/uHP3p1oIe
 fvHSAd0KDgAd63ax+mF5yYGhkXEHGZRyzqMmuas8jiZYxeeeTXhwG2aFreYQVjzBMFRd
 FSXmVGPpGE+72t3v3u5/xgrn+K75904JDcJ3BiVmvL9/tvOReMDJX/NYVI2H0y5+SDw9
 cKqDipnfD/0RUch1jMvNl2iKOECto3UAlaH6YkCJcwaKds4PHg0QNIeq8eufqm/TNWIv
 LKew==
X-Gm-Message-State: ANhLgQ0jTA7jhq47u7hByZw5o24oSy0Nv5/fSGbpKMWNLNq/nloeSBAN
 pDVOaF0S0iIXAJ0EY2ZDJ+HlDJXP7IZENfxGXsY=
X-Google-Smtp-Source: ADFU+vu5fEGrqLhFjwWFJ7T5rLPmiHETg62LW/PS7AtOywMyIN6+e9m5Vr7yW9Z48xzVVr8gIK4GTg+pyc+FjmG6riM=
X-Received: by 2002:a92:d782:: with SMTP id d2mr5609468iln.42.1583251238293;
 Tue, 03 Mar 2020 08:00:38 -0800 (PST)
MIME-Version: 1.0
References: <20200302202307.23260-1-sasha.neftin@intel.com>
 <CAKgT0UdFW1KbAzsUX2o7-UDD1ay70euxs6Ts=RjYN4dfFEE6Fg@mail.gmail.com>
 <549bd226-b5fa-eb68-44a5-f77dcaf28c5a@intel.com>
In-Reply-To: <549bd226-b5fa-eb68-44a5-f77dcaf28c5a@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 3 Mar 2020 08:00:27 -0800
Message-ID: <CAKgT0Uc-nbt+8+gbNWabWrA0xZrUFqBtvUWNiNNpKMD-XhCCKg@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove copper fiber
 switch control
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 2, 2020 at 4:44 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>
> On 3/2/2020 13:26, Alexander Duyck wrote:
> > On Mon, Mar 2, 2020 at 12:23 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
> >>
> >> i225 device support copper mode only
> >> PHY signal detect indication for copper fiber switch
> >> not applicable to i225 part
> >>
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >
> > So there are a couple issues with this patch.
> >
> > All the changes in igc_ethtool.c are broken at this point. Once a
> > register is defined in regs_buff you cannot change it. Otherwise you
> > cannot debug this in the future. You would be better off just skipping
> > the register that you were storing CONNSW and let it default to zero
> > instead of doing all of the shifting you are doing. You can just skip
> > over the register in the dump in ethtool assuming there is even a file
> > for the device that hasbeen added.
> >
> This change not affected igc_ethtool.c behavior. I see the same behavior
> on my setup.
> Actually ethtool --register-dump not called (as properly).get_regs
> callback from igc_ethtool.c. This is not related to this patch and I
> need investigate and fix it.
> ethtool --register-dump <adapter> show me row generic data. Data is
> really from i225 registers, but not parcered as for other drivers.
>

Right. It isn't implemented yet, but you don't want to break it. The
logic for the register dump assumes the register locations are fixed.
So once you released this the first time you cannot move the registers
around. You can drop registers or add registers, but once they are in
the list they are permanently in that position. If you don't do that
you will never be able to decode the data.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
