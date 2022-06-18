Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008755025A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jun 2022 05:17:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3759E404ED;
	Sat, 18 Jun 2022 03:16:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3759E404ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655522218;
	bh=Pcz+0Ym2iZDpUAOvUf5RHeJb/9mMHVXjczFnyCTxmZo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fj4vBLM+7naUi0G9KUYXWdv8tE2JmbPriuf/auqUaMuOY5V1FKVeS6kV0TTk/ZKwy
	 AXdtvDlgjdN1TOQOf6Wfgg101nNb6RSfXnV7C2f+wbzPWikgNGjfHFrWbUFl4djJy0
	 sGf0yPZVoOV3OorIWJk1KtwnkTH7oyc5wdR+7y7gj5TOitiG3l88Hurlxpm1EkJ3F+
	 yW9UuSrl+5K1zHzYKAohFa2/tM1cI9+yHL6dtuwUEzEVHSmYfo0HGJTb0+gtN6xNzZ
	 LtMOZFOLCyUsJUut6QnQRF71gv4hIPx2x+7XL9P9lK8t5sw5pU7CZwXPTQqSF9ZsYn
	 zGq7/V0e6R8+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3D2GPplq4JNa; Sat, 18 Jun 2022 03:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2184F40370;
	Sat, 18 Jun 2022 03:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2184F40370
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56D2B1BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3DBB640901
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DBB640901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FP_mu1uuK8R for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jun 2022 03:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2444040342
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2444040342
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jun 2022 03:16:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7D029B82D03;
 Sat, 18 Jun 2022 03:16:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEC43C341C4;
 Sat, 18 Jun 2022 03:16:45 +0000 (UTC)
Date: Fri, 17 Jun 2022 20:16:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20220617201644.368bab1b@kernel.org>
In-Reply-To: <108bf94b-85a6-98d4-175b-2c0d43e17b11@redhat.com>
References: <e5c01d549dc37bff18e46aeabd6fb28a7bcf84be.1655388571.git.lorenzo@kernel.org>
 <f137891f-eb33-b32b-5a16-912eb524ddef@intel.com>
 <108bf94b-85a6-98d4-175b-2c0d43e17b11@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix a use-after-free issue
 in igb_clean_tx_ring
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
Cc: netdev@vger.kernel.org, edumazet@google.com, brouer@redhat.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 17 Jun 2022 16:36:56 +0200 Jesper Dangaard Brouer wrote:
> On 16/06/2022 20.26, Jesse Brandeburg wrote:
> > On 6/16/2022 7:13 AM, Lorenzo Bianconi wrote:  
> >> Fixes: 9cbc948b5a20c ("igb: add XDP support")
> >> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>  
> > 
> > Thanks Lorenzo, @maintainers this fix seems simple enough you could 
> > directly apply it without going through intel-wired-lan, once you think 
> > it's ready.
> > 
> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

It got marked as Awaiting Upstream so the bot won't respond.
It's the commit 3f6a57ee8544 ("igb: fix a use-after-free issue 
in igb_clean_tx_ring") in net now.

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
