Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B4C1F322A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 04:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A95B86D65;
	Tue,  9 Jun 2020 02:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 45_IGAQQ-9Z4; Tue,  9 Jun 2020 02:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2C9886D78;
	Tue,  9 Jun 2020 02:03:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DF291BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 02:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F28162283C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 02:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7V+l+ZM4crVi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 02:03:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F82D22817
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 02:03:53 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C6D22128A2F9A;
 Mon,  8 Jun 2020 19:03:51 -0700 (PDT)
Date: Mon, 08 Jun 2020 19:03:51 -0700 (PDT)
Message-Id: <20200608.190351.685181495758257506.davem@davemloft.net>
To: jarod@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200608210058.37352-2-jarod@redhat.com>
References: <20200608210058.37352-1-jarod@redhat.com>
 <20200608210058.37352-2-jarod@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 08 Jun 2020 19:03:52 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] xfrm: bail early on
 slave pass over skb
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
Cc: steffen.klassert@secunet.com, herbert@gondor.apana.org.au,
 j.vosburgh@gmail.com, linux-kernel@vger.kernel.org, vfalico@gmail.com,
 netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


net-next is closed, thank you
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
