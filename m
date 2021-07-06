Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8884B3BC6BB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 08:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 143614016F;
	Tue,  6 Jul 2021 06:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYWkij2Ifyz9; Tue,  6 Jul 2021 06:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AA1840104;
	Tue,  6 Jul 2021 06:42:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29BD21BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BD8B6068C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ruj1GHUzCTnd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 06:42:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49BDA6006A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:42:12 +0000 (UTC)
Received: from [222.129.38.159] (helo=[192.168.1.18])
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <aaron.ma@canonical.com>)
 id 1m0emX-0006MK-IK; Tue, 06 Jul 2021 06:42:09 +0000
To: Dave Airlie <airlied@gmail.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <CAPM=9twzx0aa5Dq-L5oOSk+w8z7audCq_biXwtFVh3QVY1VceA@mail.gmail.com>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <53691935-daee-9acc-93d2-414fb11ce2bc@canonical.com>
Date: Tue, 6 Jul 2021 14:42:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9twzx0aa5Dq-L5oOSk+w8z7audCq_biXwtFVh3QVY1VceA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/5/21 3:47 PM, Dave Airlie wrote:
> Drive-by, but won't this add a lot of overhead on every register
> access? has this been benchmarked with lots of small network transfers
> or anything?
> 

iperf3 is tested, the result is the same as before.
Due to the registers are rd/wr even after error_handler and remove.
Didn't find better fix.
Please let me know if you have any idea.

Thanks,
Aaron

> Dave.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
