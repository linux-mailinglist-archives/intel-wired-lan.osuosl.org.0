Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B4E11D63B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2019 19:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB8D78716B;
	Thu, 12 Dec 2019 18:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2XpAmTgnWjn; Thu, 12 Dec 2019 18:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0BB48716A;
	Thu, 12 Dec 2019 18:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3EFE1BF313
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A87758716A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68YBkFT_xBoU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2019 18:50:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41A648715C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 18:50:00 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4215A153DCA8A;
 Thu, 12 Dec 2019 10:49:59 -0800 (PST)
Date: Thu, 12 Dec 2019 10:49:56 -0800 (PST)
Message-Id: <20191212.104956.2134616389786003650.davem@davemloft.net>
To: gomonovych@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191212105847.16488-1-gomonovych@gmail.com>
References: <20191212105847.16488-1-gomonovych@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 12 Dec 2019 10:49:59 -0800 (PST)
Subject: Re: [Intel-wired-lan] [PATCH] igb: index regs_buff array via index
 variable
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vasyl Gomonovych <gomonovych@gmail.com>
Date: Thu, 12 Dec 2019 11:58:47 +0100

> This patch is just a preparation for additional register dump in regs_buff.
> To make new register insertion in the middle of regs_buff array easier
> change array indexing to use local counter reg_ix.
> 
> ---
> 
> Basically this path is just a subject to ask
> How to add a new register to dump from dataseet
> Because it is logically better to add an additional register
> in the middle of an array but that will break ABI.
> To not have the ABI problem we should just add it at the
> end of the array and increase the array size.
> 
> ---
> 
> Signed-off-by: Vasyl Gomonovych <gomonovych@gmail.com>

Anything you put after "---" will be removed by git if someone actually
applies this patch, which means your signoff will disappear.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
