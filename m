Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A272744BD63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Nov 2021 09:54:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3446B80FE8;
	Wed, 10 Nov 2021 08:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDw8Hp3JGRHD; Wed, 10 Nov 2021 08:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F8AD80DFD;
	Wed, 10 Nov 2021 08:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFC6B1BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 08:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA52B80BBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 08:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjjR7HpU3Z3o for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Nov 2021 08:53:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1348680B9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Nov 2021 08:53:53 +0000 (UTC)
Received: from [141.14.13.160] (g415.RadioFreeInternet.molgen.mpg.de
 [141.14.13.160])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EE63561E5FE00;
 Wed, 10 Nov 2021 09:53:50 +0100 (CET)
Message-ID: <89022668-5c63-bf19-a768-6bef2a3be3b0@molgen.mpg.de>
Date: Wed, 10 Nov 2021 09:53:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20211110081350.GI5176@kili>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211110081350.GI5176@kili>
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: missing unlocks in
 iavf_watchdog_task()
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
Cc: Jakub Pawlak <jakub.pawlak@intel.com>, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Dan,


Thank you for your patch.

For the future, just a nit for the commit message summary. Could you 
make it a statement by adding a verb (in imperative mood) [1].

 > iavf: Add missing unlocks in iavf_watchdog_task()


Kind regards,

Paul


[1]: https://chris.beams.io/posts/git-commit/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
