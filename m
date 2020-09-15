Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E026B26B1E9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Sep 2020 00:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 526A7228E3;
	Tue, 15 Sep 2020 22:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4z26UbkFzUH; Tue, 15 Sep 2020 22:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CAB1D22D10;
	Tue, 15 Sep 2020 22:37:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A2911BF57C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 22:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 037A6228E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 22:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YzudzBDGDoyJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 22:37:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id E2296204D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 22:37:30 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0236113757C27;
 Tue, 15 Sep 2020 15:20:41 -0700 (PDT)
Date: Tue, 15 Sep 2020 15:37:28 -0700 (PDT)
Message-Id: <20200915.153728.107358987807075865.davem@davemloft.net>
To: saeed@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <734f0c4595a18ab136263b6e5c97e7f48a93abe1.camel@kernel.org>
References: <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
 <20200915140326.GG3485708@lunn.ch>
 <734f0c4595a18ab136263b6e5c97e7f48a93abe1.camel@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Tue, 15 Sep 2020 15:20:42 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: andrew@lunn.ch, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Saeed Mahameed <saeed@kernel.org>
Date: Tue, 15 Sep 2020 13:03:03 -0700

> On Tue, 2020-09-15 at 16:03 +0200, Andrew Lunn wrote:
>> I would prefer we just enable W=1 by default for everything under
>> driver/net. Maybe there is something we can set in
>> driver/net/Makefile?
>> 
> 
> 
> Yes we can have our own gcc options in the Makfile regardless of what
> you put in W command line argument.

I definitely would like to see W=1 in drivers/net/Makefile eventually.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
