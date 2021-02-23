Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 527C43231FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 21:22:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7101F4CD89;
	Tue, 23 Feb 2021 20:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wIGwcDWZ_qbK; Tue, 23 Feb 2021 20:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C4914CB7B;
	Tue, 23 Feb 2021 20:22:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB4A51BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 20:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B96DF82977
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 20:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoagwnHfuCrP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 20:22:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DA5A83A87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 20:22:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6189764E4B;
 Tue, 23 Feb 2021 20:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614111731;
 bh=8laCGD7U3MYSyfadsQn88ZtEeX4T0liVLcz0GRwyYPQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ptB8CxddL8YW1QWoe5c+F2+mjCCPOjZ5mvl4BJ1Lg1ajOaPrSNldFAHh+oS+pNkZC
 2+6bIMBBxI7b2lC7leRQ81c78RiYHbw9ZS6uzxNZ1a6f427EtC4bc6qit+8HP5v0iC
 woponyIisbOLVjymtcU7CoIidFKbLhM/f9xFmrwZhlp6r5sN2s7mEDKaXUBhl6Jkv2
 Z4QTDhkf3deSqAf1n7UZ7WiQOY6BPmWNwCgiKHTbsauKJUyE0/R95tSyzHzXJFcZRA
 Jsk6NF8eDzk+w4qMN13Yrft7FUxdmZ5JXv0gI2CWaH4LJTaF2ShvzS3Ijg7TTPw+Ni
 zDiTyfjCnBWIw==
Date: Tue, 23 Feb 2021 12:22:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Message-ID: <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210222070701.16416-5-coxu@redhat.com>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 4/4] i40e: don't open i40iw client
 for kdump
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
Cc: netdev@vger.kernel.org, kexec@lists.infradead.org, open
 list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 22 Feb 2021 15:07:01 +0800 Coiby Xu wrote:
> i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
> i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
> for 1GbE while "craskernel=auto" only reserved 160M. With the module
> parameter "resource_profile=2", we can reduce the memory usage of i40iw
> to ~300M which is still too much for kdump.
> 
> Disabling the client registration would spare us the client interface
> operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
> saved for kdump.
> 
> Signed-off-by: Coiby Xu <coxu@redhat.com>

Is i40iw or whatever the client is not itself under a CONFIG which
kdump() kernels could be reasonably expected to disable?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
