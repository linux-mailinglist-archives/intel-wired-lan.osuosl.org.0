Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3427472998
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 10:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D823085D7E;
	Wed, 24 Jul 2019 08:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RUBLqm8Fi91i; Wed, 24 Jul 2019 08:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73D8485D90;
	Wed, 24 Jul 2019 08:13:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6831BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 08:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01FB585B68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 08:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRbZmSbyr-4T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 08:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5DB6785465
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 08:13:15 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id s49so11484407edb.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 01:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=+rNRJY68IIsD9nh+g9TvsIleBslPfLPXnzcgzuZEN48=;
 b=I3P1lO6M7mukJ8KziuxO4lwxZaCAEl58oUX+PO1XCwcZyQwz3JtUDGwgufNide1IPU
 Q7YNLXYcjqeHdQKGY8/cvpw/sv2h35skgV1k8YlZlW62GNfBPPbi2nnAOeqYJbShHm3v
 2F0rU4+6x5NgLoN7doN5wb9j0sy1IHdQNCfp9aGSubZjGl9sAGRLy9lZnO6NzIlopx6V
 RUIjlm5lSh9geksn3AT3RAcweH/lhkcgrj0rPndv/4XXANjOlLSnFo2VDcab+7jus4fg
 +zCdTioMfVUew0SNjSjaVkFZh4eQItDnlcrwolp7ZBtE4vMSr3/VpMqgYcWfJkk1GGDg
 bsmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=+rNRJY68IIsD9nh+g9TvsIleBslPfLPXnzcgzuZEN48=;
 b=czgHqPvK72tFlwl+89oIDgjK1DymZGKXv5uEWawSSgRo6AjTUOgnhkBiDV20R9p7xC
 AZxFCXX+7LsLHWkaiCCeQziIHxOHvC8bksjAemgxkAdJORhSMmQ4aU+3oTbI6O9wHIfJ
 lgts0O2iO8v4QVkazayvKpAkhGzU/bT5oNIPMPQQ1i/Xi78lJRZaMlBQmLyfoXruSCMa
 96e0kQ4Vm7tw9WU+T2NpItKX4Y05ctXBu+wbhDaOlIh3rtCGMhT5xORLclqsdVKn+o7p
 SIvrKs+1dju4I9Fq/72BEroJgSMU0ApCE3kmzvBugOyYQIbVI1njRFHrfuPxSErTnma0
 ma1A==
X-Gm-Message-State: APjAAAVAoCA8rZA8Ha/+heh/SNdrRmevVSfALOIphXVAVOX/tJitD5xg
 Gim+yqeYEaAGQdhhonNaNdr2WDlLYlDgakZQT/k=
X-Received: by 2002:a05:6402:896:: with SMTP id
 e22mt65279496edy.202.1563955993753; 
 Wed, 24 Jul 2019 01:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190724060512.23899-1-hslester96@gmail.com>
In-Reply-To: <20190724060512.23899-1-hslester96@gmail.com>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Wed, 24 Jul 2019 16:13:03 +0800
Message-ID: <CANhBUQ0gYF+cF1EjfSA-WVvAKipQHWgkasXN91mphHYsZV+uMQ@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] Use dev_get_drvdata
 where possible
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
Cc: Jay Cliburn <jcliburn@gmail.com>, GR-Linux-NIC-Dev@marvell.com,
 Rasesh Mody <rmody@marvell.com>, Chris Snook <chris.snook@gmail.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>,
 Prashant Sreedharan <prashant@broadcom.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Siva Reddy Kallam <siva.kallam@broadcom.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Michael Chan <michael.chan@broadcom.com>,
 Steffen Klassert <klassert@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2019 at 2:05 PM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> These patches use dev_get_drvdata instead of
> using to_pci_dev + pci_get_drvdata to make
> code simpler where possible.
>
> Changelog:
>
> v1 -> v2:
> - Change pci_set_drvdata to dev_set_drvdata
>   to keep consistency.
>

Hi all,
I checked the cases which mentioned the consistency
of get/set_drvdata usages.
The cases' commit IDs are
488d040e3a3452a0dceef5d3ec4f61942262f57f
b77c98780e682fe780d899b91543769d4cf94585

After checking, I think that the consistency problem
refers to inconsistency between probe and remove.
But the changes of these patches are not related
to probe and remove.

So I think the previously sent and applied v1 patches
which do not change pci_set_drvdata to dev_set_drvdata
are okay.
Therefore there may be no need to use these v2 patches.

Regards,
Chuhong


> Chuhong Yuan (8):
>   net: 3com: 3c59x: Use dev_get_drvdata
>   net: atheros: Use dev_get_drvdata
>   net: broadcom: Use dev_get_drvdata
>   e1000e: Use dev_get_drvdata where possible
>   fm10k: Use dev_get_drvdata
>   i40e: Use dev_get_drvdata
>   igb: Use dev_get_drvdata where possible
>   net: jme: Use dev_get_drvdata
>
>  drivers/net/ethernet/3com/3c59x.c               |  8 +++-----
>  drivers/net/ethernet/atheros/alx/main.c         |  8 +++-----
>  drivers/net/ethernet/atheros/atl1c/atl1c_main.c | 10 ++++------
>  drivers/net/ethernet/atheros/atlx/atl1.c        |  8 +++-----
>  drivers/net/ethernet/broadcom/bnx2.c            |  8 +++-----
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c       |  8 +++-----
>  drivers/net/ethernet/broadcom/tg3.c             |  8 +++-----
>  drivers/net/ethernet/intel/e1000e/netdev.c      |  9 ++++-----
>  drivers/net/ethernet/intel/fm10k/fm10k_pci.c    |  6 +++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c     | 10 ++++------
>  drivers/net/ethernet/intel/igb/igb_main.c       |  5 ++---
>  drivers/net/ethernet/jme.c                      |  8 +++-----
>  12 files changed, 38 insertions(+), 58 deletions(-)
>
> --
> 2.20.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
