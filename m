Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3710C2D1E39
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 00:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9A8C87920;
	Mon,  7 Dec 2020 23:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16tIBZ1DrBNo; Mon,  7 Dec 2020 23:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA9938797A;
	Mon,  7 Dec 2020 23:21:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 151C11BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF5D42E218
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17S46seFWPU4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 23:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EF8EE2E17F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:21:27 +0000 (UTC)
Date: Mon, 7 Dec 2020 15:21:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607383287;
 bh=SRNlGZC4K9HTW83j1nzXO6TnJE2kKMynAi+x8p3G47Y=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=NhV+70CLfixGuSRLjO9geWAiNruyrCqnDFSk9BgRi+S03/M2sX9/2LjXluMiPCtB4
 QcYfJu/UrXjcnd//WJGzV/X/kjcwHj1r8g8n6iXWEfzq1li1QGsc4+ULqeGQyevPsv
 Xv+KuKmLatduIABOYZl8Nc0sYCS18if4OAsfEcGFVsm/q+61Z/Q3Ivr/CSOR7RtbMJ
 hEp41SbTZcqYCQiMtDNPgxPQfSU8fzGpfJsjpYhV1AdNB3TytDyZ7WS4MXwVe5xhFv
 QsYwzztY+SmHNnRqmqmsvJs/zNoQwWowD25bBPUzFMVoS9Qjp1Hok9pRAeUp9PGAKO
 WEhvIZiHkrFGQ==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201207152126.6f3d1808@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <87eek11d23.fsf@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
 <20201205094325.790b187f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87eek11d23.fsf@intel.com>
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 07 Dec 2020 14:11:48 -0800 Vinicius Costa Gomes wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> >> + * @min_frag_size_mult: Minimum size for all non-final fragment size,
> >> + * expressed in terms of X in '(1 + X)*64 + 4'  
> >
> > Is this way of expressing the min frag size from the standard?
> >  
> 
> The standard has this: "A 2-bit integer value indicating, in units of 64
> octets, the minimum number of octets over 64 octets required in
> non-final fragments by the receiver" from IEEE 802.3br-2016, Table
> 79-7a.

Thanks! Let's drop the _mult suffix and add a mention of this
controlling the addFragSize variable from the standard. Perhaps 
it should in fact be called add_frag_size (with an explanation 
that the "additional" means "above the 64B" which are required in
Ethernet, and which are accounted for by the "1" in the 1 + X formula)?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
