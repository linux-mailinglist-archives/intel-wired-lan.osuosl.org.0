Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D1A2A8279
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 16:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16F708666B;
	Thu,  5 Nov 2020 15:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTeVWBWQyQX4; Thu,  5 Nov 2020 15:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68AE086477;
	Thu,  5 Nov 2020 15:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5599F1BF3E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 15:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 510FA8362D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 15:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HU764kb1yqnZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 15:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DEE4583626
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 15:45:13 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FF3B206FA;
 Thu,  5 Nov 2020 15:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604591113;
 bh=RYfcojP3xQPdgNO24dCEuSYbe3kFwBI9UaElG668AGk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WUwkmm5MK3MfjMJKe/ZGRT7ERL++vJOrKm12aDuXQEi30a6pVcfAU6unoYTvoEOlF
 I+zYBqAGCEYm9vIR+7awtLUxv0p75nKTNY/qrgObV4Ns3gOD1775K0cM1XKiYZM6bd
 P6Pq35Qn0c69LObw3Lo2vkRNCDgGpXO27/tg2Q84=
Date: Thu, 5 Nov 2020 07:45:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20201105074511.6935e8b7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAJ8uoz3-tjXekU=kR+HfMhGBcHtAFnKGq1ZvpFq99T_S-mknPg@mail.gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
 <20201104153320.66cecba8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAJ8uoz3-tjXekU=kR+HfMhGBcHtAFnKGq1ZvpFq99T_S-mknPg@mail.gmail.com>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFQ=?= =?UTF-8?B?w7ZwZWw=?= <bjorn.topel@intel.com>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 5 Nov 2020 15:17:50 +0100 Magnus Karlsson wrote:
> > I feel like this needs a big fat warning somewhere.
> >
> > It's perfectly fine to never complete TCP packets, but AF_XDP could be
> > used to implement protocols in user space. What if someone wants to
> > implement something like TSQ?  
> 
> I might misunderstand you, but with TSQ here (for something that
> bypasses qdisk and any buffering and just goes straight to the driver)
> you mean the ability to have just a few buffers outstanding and
> continuously reuse these? If so, that is likely best achieved by
> setting a low Tx queue size on the NIC. Note that even without this
> patch, completions could be delayed. Though this patch makes that the
> normal case. In any way, I think this calls for some improved
> documentation.

TSQ tries to limit the amount of data the TCP stack queues into TC/sched
and drivers. Say 1MB ~ 16 GSO frames. It will not queue more data until
some of the transfer is reported as completed. 

IIUC you're allowing up to 64 descriptors to linger without reporting
back that the transfer is done. That means that user space implementing
a scheme similar to TSQ may see its transfers stalled.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
