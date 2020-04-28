Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE311BCEFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2020 23:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0FEF88354;
	Tue, 28 Apr 2020 21:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttM-rMg4BHEO; Tue, 28 Apr 2020 21:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECB4F882E0;
	Tue, 28 Apr 2020 21:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B43351BF37C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 21:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AEDA287694
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 21:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-BiLys2HMm3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2020 21:40:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 184C487673
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2020 21:40:56 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0477E1210A3F2;
 Tue, 28 Apr 2020 14:40:53 -0700 (PDT)
Date: Tue, 28 Apr 2020 14:40:53 -0700 (PDT)
Message-Id: <20200428.144053.1011868905140234992.davem@davemloft.net>
To: mchehab+huawei@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1588024424.git.mchehab+huawei@kernel.org>
References: <cover.1588024424.git.mchehab+huawei@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 28 Apr 2020 14:40:54 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH 00/38] net: manually convert files to
 ReST format - part 1
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
Cc: linux-decnet-user@lists.sourceforge.net, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, lvs-devel@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, intel-wired-lan@lists.osuosl.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Tue, 28 Apr 2020 00:01:15 +0200

> There are very few documents upstream that aren't converted upstream.
> 
> This series convert part of the networking text files into ReST.
> It is part of a bigger set of patches, which were split on parts,
> in order to make reviewing task easier.
> 
> The full series (including those ones) are at:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=net-docs
> 
> And the documents, converted to HTML via the building system
> are at:
> 
> 	https://www.infradead.org/~mchehab/kernel_docs/networking/

Series applied to net-next, thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
