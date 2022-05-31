Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A5953934F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 16:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3347F61279;
	Tue, 31 May 2022 14:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ms5dgyPa71F9; Tue, 31 May 2022 14:48:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 433866116C;
	Tue, 31 May 2022 14:48:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BCD21BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22C6E41824
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvQTnKlHdE2K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 May 2022 14:47:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4732C4181D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 May 2022 14:47:59 +0000 (UTC)
Received: from [192.168.0.7] (ip5f5aeb8b.dynamic.kabel-deutschland.de
 [95.90.235.139])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 09EB361EA192A;
 Tue, 31 May 2022 16:47:56 +0200 (CEST)
Message-ID: <5fd93df2-a46f-114f-ca9b-eb30d9c2bd48@molgen.mpg.de>
Date: Tue, 31 May 2022 16:47:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20220531131818.3411-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220531131818.3411-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1 0/2] ice: Fix memory corruption
 in VF driver
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Mateusz,


Am 31.05.22 um 15:18 schrieb Mateusz Palczewski:
> Disable VF queues, when VF requests reset. Add error handling for
> VIRTCHNL_OP_CONFIG_VSI_QUEUES handler. Without this patch VF driver
> could experience memory corruption, which lead to crash:
> BUG: unable to handle kernel paging request at 00001b9780003237
> 
> Przemyslaw Patynowski (2):
>    ice: Add error handling for queue config fail
>    ice: Fix memory corruption in VF driver
> 
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++----------
>   2 files changed, 31 insertions(+), 27 deletions(-)

Thank you for the patches. Although you seem to have used 
`git-send-email`, the patches messages are not threaded below the cover 
letter. Do you have an idea why?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
