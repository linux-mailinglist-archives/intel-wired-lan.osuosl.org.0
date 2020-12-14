Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8743F2D9CCE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 17:39:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E047B84DF9;
	Mon, 14 Dec 2020 16:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q8YTe-z6eKb3; Mon, 14 Dec 2020 16:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAAF084DFF;
	Mon, 14 Dec 2020 16:39:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BBAF1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42334203D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRN+yl32KPgq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 16:39:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 41177203C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 16:39:14 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id n9so5403259ili.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 08:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZzQAX3OTtnVfAh68IFiHEJAtHPixTEJsh0l+VUazkzs=;
 b=FpqI/C2Lw1zaZwIU9Q2geAe2b+Dx9dq327jdZq9trPuxavemNvW3M4lIsBFEnANTu8
 vLWLyura2QO2zrGeKFOFPJFBxfqgA2Dr49YNC1vA4DwYVbZJnSy6e+xwyDfwivI9yBjF
 w9MVlq7KQtQEfHSwwMugDHJowAsPfHWrimx9OuRPrHTTnInUaoMe/1aqu1W/FmO98M63
 /16jlrmXc2x+Qkfd7F5J/U6dgxZIy1jAh/gdnuqxI0KoCa3TkG8Tc7eBLZcc3ll82LrJ
 5v/YAOvFpB23RJU6L1YYOofUXQvTGuicrNoD96VXfO5cIKUdHCnXm7wFV/q663dd1IUp
 nyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZzQAX3OTtnVfAh68IFiHEJAtHPixTEJsh0l+VUazkzs=;
 b=t5qMW5BjABbMw5U6QzMsDsd3gJxrG9/22W0A2XJA8X/j/AuBx4wAzcso6m0WM+HvZc
 M1TacDMeJ7Sy5SVREGxTkpv5/VWMKr0A4DyG7cAeLlhsZ94J2Fw/uq+ol3Q80/va4BCa
 aYsUKUkcjIYPStL6PbMePUYy8JXrDm0tKOhB8BZ2xSpy6YV4aBYJC9w7f2fB2Nq6hGYK
 geH6QVOM+US0SrNX4LXYHE5giu528UoAB8Xz2AZrF6SpXKLKeex9w344IFQj2TsoD1Mb
 +UYBhyd3k8fx2nO/NVc0kBPSc33iagYn4BPvdwT8cqBfaG+lWUjurg0/M0lLFAuBBjLR
 PdrQ==
X-Gm-Message-State: AOAM5315PhwkQ2YDYTBmcb8VVs/aXS90HcsRagTplr7Yea82GnUnJWFg
 NysSFFPtmJ8zJg4k9YWdwzmnxAzo+hec2oKSOOE=
X-Google-Smtp-Source: ABdhPJzVChOyL4APOxK4QH4vXoPjci6MSc+GIbk2oYNY6T0rrNrmq/h5h3qtkCbdg6I51KTqqUNanK5NTgl+DS4y8LA=
X-Received: by 2002:a92:d8cc:: with SMTP id l12mr35335239ilo.64.1607963953418; 
 Mon, 14 Dec 2020 08:39:13 -0800 (PST)
MIME-Version: 1.0
References: <20201214153450.874339-1-mario.limonciello@dell.com>
In-Reply-To: <20201214153450.874339-1-mario.limonciello@dell.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 14 Dec 2020 08:39:01 -0800
Message-ID: <CAKgT0UfSeW_mod5kqNFL71Nepbk+Kg65Vw_HeLVLjykX98u=xg@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@dell.com>
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
Cc: Hans de Goede <hdegoede@redhat.com>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>, Yijun Shen <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>, Anthony Wong <anthony.wong@canonical.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 14, 2020 at 7:35 AM Mario Limonciello
<mario.limonciello@dell.com> wrote:
>
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

The changes look good to me.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
