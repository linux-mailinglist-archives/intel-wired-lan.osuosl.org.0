Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B77A42D9EDC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 19:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E7771204DB;
	Mon, 14 Dec 2020 18:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8hYOucp3uEe4; Mon, 14 Dec 2020 18:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 494A220510;
	Mon, 14 Dec 2020 18:25:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0CE71BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 926FD86451
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uFEJxKC1blJX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 18:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A748B86442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 18:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607970297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CyLy54hfyhCtSUDgzjFrWItZ29I+gEb+W/XqxBJbwVA=;
 b=IGzQsOwlwL+PFRg0olPswSxQP5KN/rIRRBOKKMuCnGItj+hd4/Bt37gvNh1xqZh2fo3+kY
 c94zMDUnVeuWXhG0jn0Q7IiyQE9nk6J1rbA26q4usCZz86Mvp/TbPvKyFOg8jkO3W05PC9
 dG8n1KZmeK2MTS+j+x3nPUKi28ecJUw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-GEwgHiYYNJuggsweGEKLOA-1; Mon, 14 Dec 2020 13:24:51 -0500
X-MC-Unique: GEwgHiYYNJuggsweGEKLOA-1
Received: by mail-ej1-f70.google.com with SMTP id dv25so4839104ejb.15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 10:24:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CyLy54hfyhCtSUDgzjFrWItZ29I+gEb+W/XqxBJbwVA=;
 b=my4g2n0UoaX4g+apn9ZnnamjoBjxTbKfrJsnaeARNfkOOOJ8IoGCxmugQMN4z44jqX
 8mHl7PmPWcPPDFeR04IV2tYY++t6ofNbm8OOxM/IA0eKdPSTN1WhyikZm9BqvTgJy5IX
 nVHqcuz9rv7moG3Qp6k3Fk+2w0XI4MWqkV1VuA7vuFOPvfZawo0nSx/v+B1FeP9/XUYP
 kIjkIk9nmWSn18aw8r1nvdsE16NVobKxb7RVlqTRhoOht6l1y4/bigybzlfh+PFdR7O7
 OoAAp5BNnMWHfodIkqbEQFvMoW4mho0MV5LZ6dwHOX07Ahf43B6PEzP4n4a8/6GCkHhd
 rgLw==
X-Gm-Message-State: AOAM5330FPVequrWw5TUV0khuNo1JY80wuCfwZ1PqRKMD95F64Dwayv5
 Y4+KH7gS6dR2P8CiO+tkixeuLvDFog6IUDROm/tSWOqKUnMKbtqYse/9rajXx4dMGOmVruDiLVU
 0yaGHnz16DPBymaTyPtLVRJjZYj8q1Q==
X-Received: by 2002:a17:907:2116:: with SMTP id
 qn22mr23704529ejb.483.1607970290390; 
 Mon, 14 Dec 2020 10:24:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwqBaawG+erOxtewDg4zJ/4nQfEo0yh6A55cDwt5V85xmwcQr3cCu1EzOpabpv5a5miqlOQdQ==
X-Received: by 2002:a17:907:2116:: with SMTP id
 qn22mr23704499ejb.483.1607970290086; 
 Mon, 14 Dec 2020 10:24:50 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id b9sm14248650eju.8.2020.12.14.10.24.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Dec 2020 10:24:49 -0800 (PST)
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>,
 Mark Pearson <mpearson@lenovo.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
Date: Mon, 14 Dec 2020 19:24:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201214153450.874339-1-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 0/4] Improve s0ix flows for systems
 i219LM
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
Cc: Netdev <netdev@vger.kernel.org>, Perry.Yuan@dell.com,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Jakub Kicinski <kuba@kernel.org>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi All,

Sasha (and the other intel-wired-lan folks), thank you for investigating this
further and for coming up with a better solution.

Mario, thank you for implementing the new scheme.

I've tested this patch set on a Lenovo X1C8 with vPRO and AMT enabled in the BIOS
(the previous issues were soon on a X1C7).

I have good and bad news:

The good news is that after reverting the
"e1000e: disable s0ix entry and exit flows for ME systems"
I can reproduce the original issue on the X1C8 (I no longer have
a X1C7 to test on).

The bad news is that increasing the timeout to 1 second does
not fix the issue. Suspend/resume is still broken after one
suspend/resume cycle, as described in the original bug-report:
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1865570

More good news though, bumping the timeout to 250 poll iterations
(approx 2.5 seconds) as done in Aaron Ma's original patch for
this fixes this on the X1C8 just as it did on the X1C7
(it takes 2 seconds for ULP_CONFIG_DONE to clear).

I've ran some extra tests and the poll loop succeeds on its
first iteration when an ethernet-cable is connected. It seems
that Lenovo's variant of the ME firmware waits up to 2 seconds
for a link, causing the long wait for ULP_CONFIG_DONE to clear.

I think that for now the best fix would be to increase the timeout
to 2.5 seconds as done in  Aaron Ma's original patch. Combined
with a broken-firmware warning when we waited longer then 1 second,
to make it clear that there is a firmware issue here and that
the long wait / slow resume is not the fault of the driver.

###

I've added Mark Pearson from Lenovo to the Cc so that Lenovo
can investigate this issue further.

Mark, this thread is about an issue with enabling S0ix support for
e1000e (i219lm) controllers. This was enabled in the kernel a
while ago, but then got disabled again on vPro / AMT enabled
systems because on some systems (Lenovo X1C7 and now also X1C8)
this lead to suspend/resume issues.

When AMT is active then there is a handover handshake for the
OS to get access to the ethernet controller from the ME. The
Intel folks have checked and the Windows driver is using a timeout
of 1 second for this handshake, yet on Lenovo systems this is
taking 2 seconds. This likely has something to do with the
ME firmware on these Lenovo models, can you get the firmware
team at Lenovo to investigate this further ?

Regards,

Hans

p.s.

I also have a small review remark on patch 4/4 I will
reply to that patch separately.








On 12/14/20 4:34 PM, Mario Limonciello wrote:
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This was done because of some regressions
> caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> with i219-LM controller.
> 
> Per discussion with Intel architecture team this direction should be changed and
> allow S0ix flows to be used by default.  This patch series includes directional
> changes for their conclusions in https://lkml.org/lkml/2020/12/13/15.
> 
> Changes from v3 to v4:
>  - Drop patch 1 for proper s0i3.2 entry, it was separated and is now merged in kernel
>  - Add patch to only run S0ix flows if shutdown succeeded which was suggested in
>    thread
>  - Adjust series for guidance from https://lkml.org/lkml/2020/12/13/15
>    * Revert i219-LM disallow-list.
>    * Drop all patches for systems tested by Dell in an allow list
>    * Increase ULP timeout to 1000ms
> Changes from v2 to v3:
>  - Correct some grammar and spelling issues caught by Bjorn H.
>    * s/s0ix/S0ix/ in all commit messages
>    * Fix a typo in commit message
>    * Fix capitalization of proper nouns
>  - Add more pre-release systems that pass
>  - Re-order the series to add systems only at the end of the series
>  - Add Fixes tag to a patch in series.
> 
> Changes from v1 to v2:
>  - Directly incorporate Vitaly's dependency patch in the series
>  - Split out s0ix code into it's own file
>  - Adjust from DMI matching to PCI subsystem vendor ID/device matching
>  - Remove module parameter and sysfs, use ethtool flag instead.
>  - Export s0ix flag to ethtool private flags
>  - Include more people and lists directly in this submission chain.
> 
> Mario Limonciello (4):
>   e1000e: Only run S0ix flows if shutdown succeeded
>   e1000e: bump up timeout to wait when ME un-configure ULP mode
>   Revert "e1000e: disable s0ix entry and exit flows for ME systems"
>   e1000e: Export S0ix flags to ethtool
> 
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  1 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 40 ++++++++++++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 59 ++++-----------------
>  4 files changed, 53 insertions(+), 51 deletions(-)
> 
> --
> 2.25.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
