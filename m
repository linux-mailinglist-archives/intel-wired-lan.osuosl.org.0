Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3254D5409
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 22:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 471A384792;
	Thu, 10 Mar 2022 21:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aABpVzRWIutf; Thu, 10 Mar 2022 21:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 414AF842CB;
	Thu, 10 Mar 2022 21:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82A0D1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 21:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EAB0842CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 21:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4yacXLc1p4e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 21:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB972842C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 21:59:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DCD7AB8287A;
 Thu, 10 Mar 2022 21:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49848C340E8;
 Thu, 10 Mar 2022 21:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646949542;
 bh=UkTta+mJNOiFDvaEmTZvAluAm01tKTqeCObiTi1om6s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EfLj4rQ5ncUAmzUrV1VxHBVwUHfRsjkyhGeidtsw1TgfV1+ucYcO9p0kGuYxUQ1/m
 LZZsyVuR3mFA82Ns0Dy5obJTr37C28pPokJys+lYABbHXTq7gVuyIjHtuGfHN52Ukc
 erEKcE0/rRIODCLkZf420AZymkR0jOvw86TGRH9ElYHGF0GGtvguN4uCYvhkI2BjsU
 nYa98vSPRuFJduEA75K3SncU8j7qNCJtRch4an24KWEzIriauRHNt6ruG0h/HXV2n8
 IMMOt02fGEIoxbes5r7ELa1uIg7QMicasHiz70gUpJu5bjmSww48U1DWKDZdr8Znbh
 MC0FczHVY7kXg==
Date: Thu, 10 Mar 2022 13:59:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220310135901.39b1abdf@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220310171641.3863659-1-ivecera@redhat.com>
References: <20220310171641.3863659-1-ivecera@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race condition during
 interface enslave
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
Cc: netdev@vger.kernel.org, Petr Oros <poros@redhat.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 10 Mar 2022 18:16:41 +0100 Ivan Vecera wrote:
> Commit 5dbbbd01cbba83 ("ice: Avoid RTNL lock when re-creating
> auxiliary device") changes a process of re-creation of aux device
> so ice_plug_aux_dev() is called from ice_service_task() context.
> This unfortunately opens a race window that can result in dead-lock
> when interface has left LAG and immediately enters LAG again.
> 
> Reproducer:
> ```
> #!/bin/sh
> 
> ip link add lag0 type bond mode 1 miimon 100
> ip link set lag0
> 
> for n in {1..10}; do
>         echo Cycle: $n
>         ip link set ens7f0 master lag0
>         sleep 1
>         ip link set ens7f0 nomaster
> done

What's the priority on this one? The loop max of 10 seems a little
worrying.

Tony, Jesse, is it important enough to push into 5.17 or do you prefer
to take it via the normal path and do full QA? The blamed patch come
in to 5.17-rc it seems.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
