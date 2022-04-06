Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C476B4F5828
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 11:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BEED417D4;
	Wed,  6 Apr 2022 09:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYLc3_OlMYDp; Wed,  6 Apr 2022 09:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5531408A0;
	Wed,  6 Apr 2022 09:00:24 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 951431BF307
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8205540002
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h_JQzoK0iy-K for <intel-wired-lan@osuosl.org>;
 Wed,  6 Apr 2022 09:00:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB0594059C
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:00:18 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef4f.dynamic.kabel-deutschland.de
 [95.90.239.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9A31D61E64846;
 Wed,  6 Apr 2022 11:00:15 +0200 (CEST)
Message-ID: <d8571528-4202-e6d7-e8b2-f9feb7e6f8f7@molgen.mpg.de>
Date: Wed, 6 Apr 2022 11:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Olivier Matz <olivier.matz@6wind.com>
References: <20220325140250.21663-1-olivier.matz@6wind.com>
 <Yk1MxlsbGi810tgb@arsenic.home>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <Yk1MxlsbGi810tgb@arsenic.home>
Subject: Re: [Intel-wired-lan] [PATCH net 0/2] ixgbe: fix promiscuous mode
 on VF
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
Cc: Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 stable@vger.kernel.org, intel-wired-lan@osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Nicolas Dichtel <nicolas.dichtel@6wind.com>,
 Hiroshi Shimamoto <h-shimamoto@ct.jp.nec.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Olivier,


Am 06.04.22 um 10:18 schrieb Olivier Matz:

> On Fri, Mar 25, 2022 at 03:02:48PM +0100, Olivier Matz wrote:
>> These 2 patches fix issues related to the promiscuous mode on VF.
>>
>> Comments are welcome,
>> Olivier
>>
>> Cc: stable@vger.kernel.org
>> Cc: Hiroshi Shimamoto <h-shimamoto@ct.jp.nec.com>
>> Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
>>
>> Olivier Matz (2):
>>    ixgbe: fix bcast packets Rx on VF after promisc removal
>>    ixgbe: fix unexpected VLAN Rx in promisc mode on VF
>>
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> Sorry, the intel-wired-lan mailing list was not CC'ed initially.
> 
> Please let me know if I need to resend the patchset.

Yes, please resend.


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
