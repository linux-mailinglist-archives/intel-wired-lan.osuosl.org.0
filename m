Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359772CFC54
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Dec 2020 19:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43F3B87600;
	Sat,  5 Dec 2020 18:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qrap-xv7s5Dc; Sat,  5 Dec 2020 18:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF151871FB;
	Sat,  5 Dec 2020 18:00:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E21FF1BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 18:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D4504228A0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 18:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8ky0aOa4KRN for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Dec 2020 18:00:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A45122875
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 18:00:32 +0000 (UTC)
Date: Sat, 5 Dec 2020 10:00:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607191232;
 bh=uck9HMwEih3IHUnkTrO3IT7M00NIKjBuKnwsqXY/FF0=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=vGXa3vuIOQSvYx0qhBXENKVePy6swpuQ0v8UpV6bZ70Ti4yDrGpGuN0MffvaKmq7u
 p5jl/FNf0PLft9vGobcXS8FYmNhQ1ahgIU3kOWpe+qJGf5WGjzVsvWAK6m4h0gI115
 XihWUEKr9tNDVVgTzrFMd9e0nxZdGm3Na/ASuktD3nMmAvFzBbOhMsHo6ttbgw0ZAO
 xiW5mHqkLy4OjGqG6MmZSuY9s8ea2XOzYRhWMJMtDZ+UuKmQVs4Ewr2IFb7WeNTCX3
 z/9IWypo7jqt77IyFvUu/xase+SInI1+JtaQJ7Yp+EQjDHss88DEs8fFMh1ioRXm2K
 UW3YUPN2SLu/w==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201205100030.2e3c5dd2@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201202045325.3254757-7-vinicius.gomes@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-7-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 6/9] igc: Add support for
 tuning frame preemption via ethtool
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Dec 2020 20:53:22 -0800 Vinicius Costa Gomes wrote:
> The tc subsystem sets which queues are marked as preemptible, it's the
> role of ethtool to control more hardware specific parameters. These
> parameters include:
> 
>  - enabling the frame preemption hardware: As enabling frame
>  preemption may have other requirements before it can be enabled, it's
>  exposed via the ethtool API;
> 
>  - mininum fragment size multiplier: expressed in usually in the form
>  of (1 + N)*64, this number indicates what's the size of the minimum
>  fragment that can be preempted.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

WARNING: 'PREEMPTABLE' may be misspelled - perhaps 'PREEMPTIBLE'?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
