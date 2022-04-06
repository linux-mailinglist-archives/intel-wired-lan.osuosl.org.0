Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9724F57BE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 10:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52B48417BF;
	Wed,  6 Apr 2022 08:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grkQgMCLc3Ye; Wed,  6 Apr 2022 08:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F5DA417BD;
	Wed,  6 Apr 2022 08:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A89841BF307
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 08:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95A1E60C03
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 08:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zuda0ojKP6pP for <intel-wired-lan@osuosl.org>;
 Wed,  6 Apr 2022 08:25:27 +0000 (UTC)
X-Greylist: delayed 00:07:10 by SQLgrey-1.8.0
Received: from smtpservice.6wind.com (unknown [185.13.181.2])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5969660A74
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 08:25:27 +0000 (UTC)
Received: from 6wind.com (unknown [10.17.250.37])
 by smtpservice.6wind.com (Postfix) with ESMTP id DDB706000E;
 Wed,  6 Apr 2022 10:18:14 +0200 (CEST)
Date: Wed, 6 Apr 2022 10:18:14 +0200
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Message-ID: <Yk1MxlsbGi810tgb@arsenic.home>
References: <20220325140250.21663-1-olivier.matz@6wind.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220325140250.21663-1-olivier.matz@6wind.com>
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
Cc: Hiroshi Shimamoto <h-shimamoto@ct.jp.nec.com>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Fri, Mar 25, 2022 at 03:02:48PM +0100, Olivier Matz wrote:
> These 2 patches fix issues related to the promiscuous mode on VF.
> 
> Comments are welcome,
> Olivier
> 
> Cc: stable@vger.kernel.org
> Cc: Hiroshi Shimamoto <h-shimamoto@ct.jp.nec.com>
> Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> 
> Olivier Matz (2):
>   ixgbe: fix bcast packets Rx on VF after promisc removal
>   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Sorry, the intel-wired-lan mailing list was not CC'ed initially.

Please let me know if I need to resend the patchset.

Thanks,
Olivier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
