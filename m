Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C204A79140A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 10:55:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81BCD4097C;
	Mon,  4 Sep 2023 08:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81BCD4097C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693817709;
	bh=WAB48CkIQtdtdij7tbbpwfhlClcpwttdGfxvM37SN+g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oUa0sWi3M0XNWiQp8Fd0u73WlrBZndn+bWr27su/U01aUB2vXmjnABnpGvFRXRpSd
	 VbWxHwaPHJbjYhLAAxBb5d33WCbzNMzMCT+Vo8TcfgbNjlKdOjEjBzZOC+/lDwlMr7
	 Splxp737/ycppcWTobw6/0yWarftA/Wllpvo8uMcwgRxyXTK5PAvre1XfQsqNstQw1
	 RCCksjqxDTpOITrbGMikHrQs4m5UuKZLyZoYtXFz6WWfKYyt0EdcH6nBF9EoPoyZjv
	 yeVQy64gjgI+lv2RhxbUVDlWM+PSphqXUGZGpUH4bTfhrj8KFlvKSODMZQPeT1rtv1
	 z2ktEOTywqiNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZEUDHITCL0D; Mon,  4 Sep 2023 08:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A99C4098F;
	Mon,  4 Sep 2023 08:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A99C4098F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 946E81BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 08:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C14240538
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 08:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C14240538
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c2RO5Lvfcwpk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 08:55:02 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB6AF40382
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 08:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB6AF40382
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-3tiz3aioOPOQn5H7Mxq0Ug-1; Mon, 04 Sep 2023 04:54:57 -0400
X-MC-Unique: 3tiz3aioOPOQn5H7Mxq0Ug-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FD663811F25;
 Mon,  4 Sep 2023 08:54:57 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.40])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D372493114;
 Mon,  4 Sep 2023 08:54:57 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id A576AA806F3; Mon,  4 Sep 2023 10:54:55 +0200 (CEST)
Date: Mon, 4 Sep 2023 10:54:55 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: "David S. Miller" <davem@davemloft.net>
Message-ID: <ZPWbXzc+deQolIrR@calimero.vinschen.de>
Mail-Followup-To: "David S. Miller" <davem@davemloft.net>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20230831121914.660875-1-vinschen@redhat.com>
 <169374675330.16952.10821656752298867430.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <169374675330.16952.10821656752298867430.git-patchwork-notify@kernel.org>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1693817700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L0+D9s0B3rEwkJlC1rPYXTBqDO2niCy+wJy2STYhsXw=;
 b=Uh6jIxGKT4Hjs2+1MToX+7u5cTJhfJv9SrjeCjqitU/fBWAmSE1gYMNIj4Yx+0eesdDie+
 VanTm1inCNQ+tkFEyaF4tQPeE2+JNOThcebC4wS0x8/hgP8vGMHtVPtfJpvoJDeDH2JNdf
 6c6KvR8t/P6WV/81/47ndQcXaA2Y7hg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Uh6jIxGK
Subject: Re: [Intel-wired-lan] [PATCH v2 net] igb: disable virtualization
 features on 82580
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sep  3 13:12, patchwork-bot+netdevbpf@kernel.org wrote:
> Hello:
> 
> This patch was applied to netdev/net.git (main)
> by David S. Miller <davem@davemloft.net>:
> 
> On Thu, 31 Aug 2023 14:19:13 +0200 you wrote:
> > Disable virtualization features on 82580 just as on i210/i211.
> > This avoids that virt functions are acidentally called on 82850.
> > 
> > Fixes: 55cac248caa4 ("igb: Add full support for 82580 devices")
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> Here is the summary with links:
>   - [v2,net] igb: disable virtualization features on 82580
>     https://git.kernel.org/netdev/net/c/fa09bc40b21a

Thank you!  Will my first patch

  igb: clean up in all error paths when enabling SR-IOV

https://lore.kernel.org/netdev/20230824091603.3188249-1-vinschen@redhat.com/

get applied as well?  While I reproduced this on 82580 only, there might
be some other reason why pci_enable_sriov() fails, independent of the
actual NIC.


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
