Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93887A638
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 11:58:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F04C8140A;
	Wed, 13 Mar 2024 10:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6i4YGRcuEuUD; Wed, 13 Mar 2024 10:57:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C302581353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710327478;
	bh=efxCmx8/UACH6DRmnaqjXEP80UVxeHePFoSoYWSdqaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=96Tu5Dv3v6YnIDAomJza1bhJjus3TbwzfiBrfc8E3Q0nujNpMtFtUEiWnPrwDs35C
	 Aa/A9Xxjg8N/uDsSFmk52GhXEaVpXA92Ozr4oQouJhNlVBW9WlqadZegXU5Ygu1zC1
	 pOX99QxdmbdxIJLJurV1SlYyyGUIOwUfhJbTnQqFxpVO3yWeoPTv27+yTAT5NSlshF
	 BzddRjGyBs2LX8vL+o21Mi7bBQlXCzjVeE1Gi9oTx2EkGO4XKDmqYDwTPRGhCRbkdX
	 Dic6cdH2rS2ygQz+lUnjRpvCHwB1oS+djl9cJD/3tfRqXEgnmFIdh6xMsZTotMTH6g
	 CWo1bTOzGPyOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C302581353;
	Wed, 13 Mar 2024 10:57:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D55DF1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 10:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C05DE6080A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 10:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_z30uh27ZW5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 10:57:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8864360725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8864360725
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8864360725
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 10:57:52 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 895A161E5FE04;
 Wed, 13 Mar 2024 11:57:34 +0100 (CET)
Message-ID: <1fa71d41-dc3c-4c1a-8b6e-70aa4c9511c1@molgen.mpg.de>
Date: Wed, 13 Mar 2024 11:57:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240313095639.6554-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240313095639.6554-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix vf may be used
 uninitialized in this function warning
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Am 13.03.24 um 10:56 schrieb Aleksandr Loktionov:
> To fix the regression introduced by commit 52424f974bc5, which causes
> servers hang in very hard to reproduce conditions with resets races.
> Using two sources for the information is the root cause.
> In this function before the fix bumping v didn't mean bumping vf
> pointer. But the code used this variables interchangeably, so staled vf
> could point to different/not intended vf.
> 
> Remove redundant "v" variable and iterate via single VF pointer across
> whole function instead to guarantee VF pointer validity.
> 
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v1 -> v2: commit message change

Thank you very much. No need to resend, but I find it also always useful 
to have the exact warning pasted in the commit message.

[…]

> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 34 +++++++++----------
>   1 file changed, 16 insertions(+), 18 deletions(-)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
