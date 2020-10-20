Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2371294180
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 19:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81BEF8627E;
	Tue, 20 Oct 2020 17:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLcnRKl6rhDf; Tue, 20 Oct 2020 17:34:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F30E586654;
	Tue, 20 Oct 2020 17:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF3171BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 17:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E6ABE8692F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 17:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lkLo_8LZLqmy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 17:34:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD1C2868E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 17:34:45 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D5BD2222D;
 Tue, 20 Oct 2020 17:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603215285;
 bh=AD5oVSPzJ1zd5FClS+hyWvNYZp4xz20dNie3ffoZsRw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jSdfk20aErjXh9JkUEjItNT65BmMBv237o0NL8aGwAGZIo6cbsx0lHjnnvdydO0xD
 j6QS8Cr0nYkzoHTxkeD9/EiXLzJb4xW3KSpkEvlIZcEnpdEe+6akRUXKfKhlNKX1Gm
 29AXIHZTjDK7rhT+kMBAfBkCw2JoBFhCXxBT02DM=
Date: Tue, 20 Oct 2020 10:34:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: trix@redhat.com
Message-ID: <20201020103441.06dc6247@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201019172607.31622-1-trix@redhat.com>
References: <20201019172607.31622-1-trix@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: remove unneeded break
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
Cc: irusskikh@marvell.com, netdev@vger.kernel.org, bigeasy@linutronix.de,
 _govind@gmx.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, tglx@linutronix.de, davem@davemloft.net,
 benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 19 Oct 2020 10:26:07 -0700 trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> A break is not needed if it is preceded by a return or goto
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Applied, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
