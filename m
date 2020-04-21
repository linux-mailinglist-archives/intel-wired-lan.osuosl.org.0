Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C341B4EE7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 23:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D62088448;
	Wed, 22 Apr 2020 21:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fK4upzXxnr9S; Wed, 22 Apr 2020 21:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A56E9880C1;
	Wed, 22 Apr 2020 21:12:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 626C01BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 22:46:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 58FB48680D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 22:46:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gX7jfHDcMzAB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 22:45:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8FBA866F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 22:45:59 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 93CE3128E9282;
 Tue, 21 Apr 2020 15:45:56 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:45:55 -0700 (PDT)
Message-Id: <20200421.154555.572490249375777103.davem@davemloft.net>
To: yanaijie@huawei.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200420123448.7382-1-yanaijie@huawei.com>
References: <20200420123448.7382-1-yanaijie@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 21 Apr 2020 15:45:57 -0700 (PDT)
X-Mailman-Approved-At: Wed, 22 Apr 2020 21:12:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Remove unneeded conversion to
 bool
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
Cc: songliubraving@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, yhs@fb.com, kpsingh@chromium.org,
 kuba@kernel.org, bpf@vger.kernel.org, andriin@fb.com, kafai@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Yan <yanaijie@huawei.com>
Date: Mon, 20 Apr 2020 20:34:48 +0800

> The '==' expression itself is bool, no need to convert it to bool again.
> This fixes the following coccicheck warning:
> 
> drivers/net/ethernet/intel/i40e/i40e_main.c:1614:52-57: WARNING:
> conversion to bool not needed here
> drivers/net/ethernet/intel/i40e/i40e_main.c:11439:52-57: WARNING:
> conversion to bool not needed here
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Applied to net-next.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
