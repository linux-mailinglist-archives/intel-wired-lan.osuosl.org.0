Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 749094DCAD7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 17:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDC6060B9F;
	Thu, 17 Mar 2022 16:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXb-kVvKewvT; Thu, 17 Mar 2022 16:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E380460ABD;
	Thu, 17 Mar 2022 16:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E87DB1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 16:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3FFD8481B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 16:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TEYQ27-ojnEj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 16:11:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C69C8481A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 16:11:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 50B4960F4F;
 Thu, 17 Mar 2022 16:11:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AF3FC340E9;
 Thu, 17 Mar 2022 16:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647533466;
 bh=DipHHogWaewP/FbS/bJMU0tYn92ipv83Ht+R98R5vt4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EXCr8puBCcTF1evc3yydkeMu6vvvojbBLLTdSyKk40ZNklT859Qnq6nnvbc0wipId
 +KnFe28cqBEFqFA+aYb3hLYP6OD7Qqi+LfklWIxbSDNtPgq/hqcWcS5PAPGGLhwF45
 LzHaJutqvOuTh/STuaLX7U8JMymrRm+vaGgfYjLbZkAMcVoCIw51hYF9k+JDxReoZH
 sICvY13gwyuTYYJDutbphlu3+pZuiwu6RP5ChyWquRbez1nTxcsTqLsfh71vT9Lp4r
 H8vUOkC2iXo/IeKX6k7TkaBwb255O/bJwyCw73oyaQOL8r+/KyfIP0ONefwhAg1GZb
 enxP06EGUVvKg==
Date: Thu, 17 Mar 2022 09:11:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20220317091104.1d911864@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220317104524.2802848-1-ivecera@redhat.com>
References: <20220317104524.2802848-1-ivecera@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix hang during reboot/shutdown
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
Cc: Ivan Vecera <ivecera@redhat.com>, Slawomir Laba <slawomirx.laba@intel.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Phani Burra <phani.r.burra@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 17 Mar 2022 11:45:24 +0100 Ivan Vecera wrote:
> Recent commit 974578017fc1 ("iavf: Add waiting so the port is
> initialized in remove") adds a wait-loop at the beginning of
> iavf_remove() to ensure that port initialization is finished
> prior unregistering net device. This causes a regression
> in reboot/shutdown scenario because in this case callback
> iavf_shutdown() is called and this callback detaches the device,
> makes it down if it is running and sets its state to __IAVF_REMOVE.
> Later shutdown callback of associated PF driver (e.g. ice_shutdown)
> is called. That callback calls among other things sriov_disable()
> that calls indirectly iavf_remove() (see stack trace below).
> As the adapter state is already __IAVF_REMOVE then the mentioned
> loop is end-less and shutdown process hangs.

Tony, Jesse, looks like the regression is from 5.17-rc6, should 
I take this directly so it makes 5.17 final?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
