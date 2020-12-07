Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A37A52D1E3F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 00:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55C522E218;
	Mon,  7 Dec 2020 23:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mK9r-jdYNXri; Mon,  7 Dec 2020 23:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AE802E2B8;
	Mon,  7 Dec 2020 23:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 242341BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E0A32E2B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1I+orhLnm-1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 23:22:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A6BB02E218
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 23:22:08 +0000 (UTC)
Date: Mon, 7 Dec 2020 15:22:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607383328;
 bh=wv8xR6yJxIIjebHMBmPqiXSKXoBduILUHwiJVvlS7W4=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=o3NKFNDs2FYOHBrBPOtQ+HOvC178lfS1q8Qh8smrsmcTuXN73TMJfiAq6vkZ5tvba
 x1xYh5nYRi6tkWkIfmVZGsHFYIjdpXYPnGytEDLv/2qe2Bo29labfs6Hsou+j0LbId
 3QfP2ZFnrgPZ+QXPBLNgYEV/BAiKa9BEzvhi5ayc1ZsFYJE7tfY9QBxNNQKO1u2cZT
 2cuefMczjvsWKkNTHjpvG4f/RsABQyQHi/wU0y3Acvn1NiMlKeTjy3NlUBZ6XMeRlz
 EBI6rOHofJfnBfh6klm8glE82f26ozl+KN3240irULShn0U+KWE493m1OTUeNZaV+V
 6LGuRqK+XH6Og==
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201207152207.0c0d6edd@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <87a6up1cw2.fsf@intel.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-7-vinicius.gomes@intel.com>
 <20201205100030.2e3c5dd2@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87a6up1cw2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 6/9] igc: Add support for
 tuning frame preemption via ethtool
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 07 Dec 2020 14:15:25 -0800 Vinicius Costa Gomes wrote:
> > WARNING: 'PREEMPTABLE' may be misspelled - perhaps 'PREEMPTIBLE'?  
> 
> In the datasheet the term PREEMPTABLE is used, and when refering to
> register values I chose to be consistent with the datasheet. But as the
> margin for confusion is small, I can change to use "preemptible"
> everywhere, no problem.

If there is a reason to it feel free to keep as is.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
