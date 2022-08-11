Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8C8590830
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 23:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D65618300C;
	Thu, 11 Aug 2022 21:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D65618300C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660254121;
	bh=SAUepmg/SvRcy2MqEN7yaSv4LBxPY1sndo5m3r6dIbw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A7LsX/g9bnRxylpCYPo7KvKJm4OezSCFR/1KqOa8D4IGo2c6EhQVql1IMy/VD36tm
	 nQB96hJl+DR0/Ddav1gfUKBxixgqzMLp3FvV/4ALHHm97ZA3sNZk8vYGkz4ZyqgDxk
	 O8g5ZQDr4TVVxkgjW7sLpYghjbtk+49wYRDH3ZIWgY1tiMS+R2+/dDRClNEbYhdkUN
	 w5ypSYOw9Uditau2KXaTPOCo0bTO54OmMqaRZrhK3U/uBDg+FNNdYi2WzQ2V95Eyq4
	 FZSDf/k2XFY7BXzKYS7kKNlNp0b22kv0eooxglKH6fU2Cm5rRnCjwY5ZTfj/H/3rFb
	 W/+rSZ1oG1eoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fo7zRqVKsUbn; Thu, 11 Aug 2022 21:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CED6682FF9;
	Thu, 11 Aug 2022 21:42:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CED6682FF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06EBB1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 21:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBCDE60BC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 21:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBCDE60BC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id koDh1I9Y45XL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 21:41:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C24260BB9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C24260BB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 21:41:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 600A061491;
 Thu, 11 Aug 2022 21:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334E3C433D6;
 Thu, 11 Aug 2022 21:41:51 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 11 Aug 2022 22:41:48 +0100
Message-ID: <4759452.31r3eYUQgx@saruman>
In-Reply-To: <20220811202524.78323-1-vinicius.gomes@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <20220811202524.78323-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1660254112;
 bh=sHLc73KXR0K1Nu0toL5g8k604GueGzA6AHIHEoqrmAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EKcrpUtm5/KyTu5jd3Z8mzgNJjx3rqd4Z//uMXXc5qz1q2JGyTMBo+D9zjdHZVh3B
 ESB+tSIci7F7iVQmHJ5aQo06nMgSqkUMysFiHMIogi3+qXSNTDeCDTL3YE/OblaAis
 oV0BPaOD6wZ9Iumn4AaacvRCxGVL3mLb2RiE1mMOaCyYNgqvjW08blNbmWqhX+54PH
 YlfabiV86h6HiKxWp/uiZWuu+KcmlK+powNLWTagwOZ87FBOOCYvTYfZHC13Er9z+7
 2ISkUSptpXLA0I6+H1VIPGmLNRB3RqB3ECBwnje1lIDXXd8NghBWEWimsYs5o1gVm5
 DQVKKK0kdWriA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EKcrpUtm
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
> It was reported a RTNL deadlock in the igc driver that was causing
> problems during suspend/resume.
> 
> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
> caused by taking RTNL in RPM resume path").
> 
> Reported-by: James Hogan <jhogan@kernel.org>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Sorry for the noise earlier, my kernel config didn't have runtime PM
> enabled.

Thanks for looking into this.

This is identical to the patch I've been running for the last week. The 
deadlock is avoided, however I now occasionally see an assertion from 
netif_set_real_num_tx_queues due to the lock not being taken in some cases via 
the runtime_resume path, and a suspicious rcu_dereference_protected() warning 
(presumably due to the same issue of the lock not being taken). See here for 
details:
https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
