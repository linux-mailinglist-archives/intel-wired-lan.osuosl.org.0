Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6762A389693
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 21:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C535B8430F;
	Wed, 19 May 2021 19:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WigamfZRdAPZ; Wed, 19 May 2021 19:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA52C84258;
	Wed, 19 May 2021 19:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA7471BF3E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7C11606D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mgMLQU0oXRy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 19:23:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D03CF60591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:23:59 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 5AC0D4D25C1D0;
 Wed, 19 May 2021 12:23:57 -0700 (PDT)
Date: Wed, 19 May 2021 12:23:56 -0700 (PDT)
Message-Id: <20210519.122356.1201315264426214403.davem@davemloft.net>
To: anthony.l.nguyen@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <194cf154afa7b56b22d4284cad537f1a6b697f61.camel@intel.com>
References: <1621404885-20075-1-git-send-email-huangguangbin2@huawei.com>
 <194cf154afa7b56b22d4284cad537f1a6b697f61.camel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Wed, 19 May 2021 12:23:57 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] net: intel: some cleanups
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tanhuazhong@huawei.com, intel-wired-lan@lists.osuosl.org, lipeng321@huawei.com,
 kuba@kernel.org, huangguangbin2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Date: Wed, 19 May 2021 18:48:51 +0000

> On Wed, 2021-05-19 at 14:14 +0800, Guangbin Huang wrote:
>> This patchset adds some cleanups for intel e1000/e1000e ethernet
>> driver.
>> 
>> Hao Chen (5):
>>   net: e1000: remove repeated word "slot" for e1000_main.c
>>   net: e1000: remove repeated words for e1000_hw.c
>>   net: e1000e: remove repeated word "the" for ich8lan.c
>>   net: e1000e: remove repeated word "slot" for netdev.c
>>   net: e1000e: fix misspell word "retreived"
>> 
>>  drivers/net/ethernet/intel/e1000/e1000_hw.c   | 4 ++--
>>  drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
>>  drivers/net/ethernet/intel/e1000e/ich8lan.c   | 2 +-
>>  drivers/net/ethernet/intel/e1000e/netdev.c    | 2 +-
>>  drivers/net/ethernet/intel/e1000e/phy.c       | 2 +-
>>  5 files changed, 6 insertions(+), 6 deletions(-)
>> 
> 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
> Dave/Jakub - as these are just comment changes, did you want to pick
> this up?

Sure.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
