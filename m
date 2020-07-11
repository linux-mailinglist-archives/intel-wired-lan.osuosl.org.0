Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72A921C5A1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jul 2020 20:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 799C88964A;
	Sat, 11 Jul 2020 18:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f7ncQFETKY5p; Sat, 11 Jul 2020 18:14:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 753F48968B;
	Sat, 11 Jul 2020 18:14:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 416B51BF580
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2020 18:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 332DE2048D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2020 18:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rm2cU53D9kiK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Jul 2020 18:14:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4175920410
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Jul 2020 18:14:24 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BE4E20748;
 Sat, 11 Jul 2020 18:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594491263;
 bh=C4F2CENFbh78oJsEaEEuAKtaOqXY1fqsIkGderiL3Uc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=akfY3X5EhzfmC0E1n9ECTfWogwsLEhG7SAoDP3E8firF3xjDxVbAsTbbUKxJu9Lvs
 I0KFT38VtkyZUGxBHA7LC3eQl27KDE+O80Bk0s8+ip6z2tB1kfBG9VQHXlZ5crK/7k
 Zaqie4utNg+faVOiZR3x/yyWl8sSnttuHNQcVcZk=
Date: Sat, 11 Jul 2020 11:14:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yahui Chen <goodluckwillcomesoon@gmail.com>
Message-ID: <20200711111421.0db76fa9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1594462239-19596-1-git-send-email-goodluckwillcomesoon@gmail.com>
References: <1594462239-19596-1-git-send-email-goodluckwillcomesoon@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] xsk: ixgbe: solve the soft interrupt
 100% CPU usage when xdp rx traffic congestion
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 steven.zou@intel.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 11 Jul 2020 18:10:38 +0800 Yahui Chen wrote:
> 2. If the wakeup mechanism is used, that is, use the
> `XDP_UMEM_USES_NEED_WAKEUP` flag. This method takes advantage of the
> interrupt delay function of ixgbe skillfully, thus solving the problem
> that the si CPU is always 100%. However, it will cause other problems.
> The port-level flow control will be triggered on 82599, and the pause
> frame will be sent to the upstream sender. This will affect the other
> packet receiving queues of the network card, resulting in the packet
> receiving rate of all queues dropping to 10Kpps.

To me the current behavior sounds correct.. if you don't want pause
frames to be generated you have to disable them completely. The point 
of pause frames is to prevent drops.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
