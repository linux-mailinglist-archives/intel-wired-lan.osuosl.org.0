Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1D52CCBE3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 02:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA5D68774D;
	Thu,  3 Dec 2020 01:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALMsF4lauoan; Thu,  3 Dec 2020 01:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E4E787747;
	Thu,  3 Dec 2020 01:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71C551BF398
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 01:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E14B871EB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 01:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTcSRhqPBU1H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 01:53:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAF6D871E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 01:53:49 +0000 (UTC)
Date: Wed, 2 Dec 2020 17:53:47 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606960429;
 bh=qGJylSv/S3dB8ZwknctI8ONNkBho9UNAM1cSlTbraFk=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=r0PrjEMmvjTygwJAhSZ1UNBWefP90ioF8uVuRo9ZUWDolvUopiH05DF/ET5UtpBjP
 WCYO1zxnZiQplLk+U4RavO5l7OS10B8kP6Gc8rXKVGPBDKnE9LmIbZrVWdJlM560d7
 7TVbemcTFIjIY8eldzhRGgyM1HcGayiuYucPVffIEHlEQRHP+ehsLWgdU84oev2jv+
 RpJTdKZYrfC4ICzUOdmfcjO65C35je81SbFCPwel0DxElZKqs2kZ4hhdQDSfzjNPN3
 XS7XXgNUOPm/SdUGO6buE9RjdpTac5+CN2D8zqDmqe79FBE8GS74RX8wStMEFaQPz7
 2LdEUBc18YtKA==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201202175347.3ee19c51@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202045325.3254757-2-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, Michal Kubecek <mkubecek@suse.cz>,
 jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Dec 2020 20:53:17 -0800 Vinicius Costa Gomes wrote:
> Frame preemption (described in IEEE 802.3br-2016) defines the concept
> of preemptible and express queues. It allows traffic from express
> queues to "interrupt" traffic from preemptible queues, which are
> "resumed" after the express traffic has finished transmitting.
> 
> Frame preemption can only be used when both the local device and the
> link partner support it.
> 
> Only parameters for enabling/disabling frame preemption and
> configuring the minimum fragment size are included here. Expressing
> which queues are marked as preemptible is left to mqprio/taprio, as
> having that information there should be easier on the user.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

CC: Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
