Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BAAC2544
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2019 18:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90E5321503;
	Mon, 30 Sep 2019 16:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pv3ZSV5u3J+S; Mon, 30 Sep 2019 16:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 970B52107F;
	Mon, 30 Sep 2019 16:37:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B83C11BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B070B86599
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEB75Zie5QvZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 23:12:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 735668654C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 23:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:Subject:References
 :Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XeCZtUNseW2GHe2ZEi9YJRrHUwhbktgUjULEiuq7uvw=; b=m9WPAvUBB3Qhjsyy3kdy837y2t
 D+VFc85zKmRSz/RMlCSo277bmxSqpdAzDr63oCzAu6yj/b3QeILS6F//hF2YFOwJCKJH+1oBIFOPL
 musHbFATZo6u7ihvLkcXTAcwsmGAviEBre3toEMSzFSnGTqK6HO2iiLYHqIXxG79gXgpHen3oCnzZ
 SVQBIdRjyK1KHQG8czOjn2HNvY8k49BiCq52GPvcREYzVhbl6YVzB2LlipYXdGN6JfYz6pZATKMdn
 ljlskPLzmMnVt3o3rTLlCIQX0TgwwQwgVlgcst+eu6TzpE7JpaBXu9L2FnQXq1sUCc6vnqdQPx3OS
 REERNIRQ==;
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDzPM-0003co-1d; Fri, 27 Sep 2019 23:12:16 +0000
To: jacob.e.keller@intel.com
References: <20190129204319.15238-1-jacob.e.keller@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7b26e6cc-10ce-5df2-6375-1f95bc4da04e@infradead.org>
Date: Fri, 27 Sep 2019 16:12:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190129204319.15238-1-jacob.e.keller@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 30 Sep 2019 16:36:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH] namespace: fix namespace.pl script to
 support relative paths
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kbuild <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


re: https://lore.kernel.org/lkml/20190129204319.15238-1-jacob.e.keller@intel.com/

Did anything happen with this patch?

Please send it to linux-kbuild@vger.kernel.org and
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>

You can also add:
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>


I was just about to fix this script but I decided to first see if anyone else
had already done so.  Thanks.

-- 
~Randy
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
