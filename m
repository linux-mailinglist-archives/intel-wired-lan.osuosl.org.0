Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB182A71DC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 00:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F399E86420;
	Wed,  4 Nov 2020 23:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XxXgdE3RhgSa; Wed,  4 Nov 2020 23:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58C4486439;
	Wed,  4 Nov 2020 23:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7922F1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70009203A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id csHInKH8Lo0Y for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 23:35:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0927E2014B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 23:35:10 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0157C2074B;
 Wed,  4 Nov 2020 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604532909;
 bh=8naRRfx/ql8v5jXWWzNqjjDh4gEicz1wVBuT8pBmvGo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X6t8lCuI55tDwvF4xAFFt3dR62b9AkC8FfySCd63sqbbrAjo/8P7fKnN4P5rrauc6
 c0XPM/kp8kd0k64HLkJSHJtBi/ufoeIiJSm1cHJmUqPDo64P3Ir/vQgHS1jX5J1C2m
 d6bZWt/C70vBy+WHF/k4Ip79ZP011z4Jd23d0tic=
Date: Wed, 4 Nov 2020 15:35:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20201104153507.5df7c8d6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
 <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/6] i40e: introduce lazy Tx
 completions for AF_XDP zero-copy
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
Cc: maciejromanfijalkowski@gmail.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, jonathan.lemon@gmail.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 4 Nov 2020 15:33:20 -0800 Jakub Kicinski wrote:
> I feel like this needs a big fat warning somewhere.
> 
> It's perfectly fine to never complete TCP packets,

s/TCP/normal XDP/, sorry

> but AF_XDP could be used to implement protocols in user space. What
> if someone wants to implement something like TSQ?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
