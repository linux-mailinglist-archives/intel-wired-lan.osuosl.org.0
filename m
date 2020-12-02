Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D0D2CC626
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 20:06:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A96FA87384;
	Wed,  2 Dec 2020 19:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCyOJTXwkida; Wed,  2 Dec 2020 19:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFFE18737B;
	Wed,  2 Dec 2020 19:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2F491BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 19:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 917BB2E273
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 19:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X77BeHggciwZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 19:06:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B920120382
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 19:06:42 +0000 (UTC)
Date: Wed, 2 Dec 2020 11:06:40 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606936002;
 bh=gQFVrdJVQ56bQPhxt6k8c/Mna8CvNDfQ+aEYrWOOSkA=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=XiOfdJCEzNFPZv5+ztVK6a0v1G9kfN4XAn2ggntFK7OD3HzzlfW0ru9hr9shGDyNh
 sUkWGUXEwOoHyRU8xgMNaYkWr25DM/0eAkQeDLpA/20DM63U5SorgRX+xnOqJY3mFR
 Ziutb5mI7pcUJNYF/7ocXDvwYHi5pq/r79M2HMW+Vsqc0/T4NK9R3GQky+tWx8ZO1C
 jf7ysQj0VoZBv7gTLaqvMgnb+Wd1pK92oto72yKP8oShfsRY0Wa6U4qXTHeZLx7Owo
 Xe5AOsR1SLRfG5douB6jScqD2gomPIez0j4fIVIrD38GFYM/malFjGxbDPBLm6rc5V
 egEIEZfjn0aDg==
From: Jakub Kicinski <kuba@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Message-ID: <20201202110640.27269583@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202161748.128938-1-mario.limonciello@dell.com>
References: <20201202161748.128938-1-mario.limonciello@dell.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Improve s0ix flows for systems
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun.Shen@dell.com, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  2 Dec 2020 10:17:43 -0600 Mario Limonciello wrote:
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This was done because of some regressions
> caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> with i219-LM controller.
> 
> Performing suspend to idle with these ethernet controllers requires a properly
> configured system.  To make enabling such systems easier, this patch
> series allows turning on using ethtool.
> 
> The flows have also been confirmed to be configured correctly on Dell's Latitude
> and Precision CML systems containing the i219-LM controller, when the kernel also
> contains the fix for s0i3.2 entry previously submitted here:
> https://marc.info/?l=linux-netdev&m=160677194809564&w=2
> 
> Patches 3 and 4 will turn the behavior on by default for Dell's CML systems.
> Patch 5 allows accessing the value of the flags via ethtool to tell if the
> heuristics have turned on s0ix flows, as well as for development purposes
> to determine if a system should be added to the heuristics list.

I don't see PCI or Bjorn Helgaas CCed.

You can drop linux-kernel tho.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
