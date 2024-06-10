Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A48901E8D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 11:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94D7C4048D;
	Mon, 10 Jun 2024 09:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qHhZ7ZCwMcR5; Mon, 10 Jun 2024 09:45:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DB8340635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718012742;
	bh=EPrtijkb/MoRPH/vAoImwB8HaFzNJAp0MboB3v0ejz4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxdEH7hUIa2pYphKELMnWVyaf76conPZoVN2D9gnqoGZjmh/7ikcGyIHQcswbaueN
	 4HCyyymRK+0tgosiV3qiYs63Z/KdxxQxtO/yJ1IV+AZRoCOPdxVHd1ZmFLXlA2DMw4
	 CwrtHLYOjTdkzvca93vAt+f3gKdDCQPqPTA3Ib2Kyso6PDA6hS46JnIMFhWzKvqWz5
	 JynGM87eRrbNemXTGOe+0YGY6UHwvpJkfusOc7P4CfIgkXaCs9gB5nI1O7zJKWQUev
	 UDoAgq+q08QDcYDDASujYyUm1JhMLnjwolm4b8agV2mj1AzF6+ZT00cTKQx5EMY49r
	 QEV7Apr7iSW6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DB8340635;
	Mon, 10 Jun 2024 09:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3438D1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DD1E406FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMkEIZ0a5-vQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 09:45:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E4454065C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E4454065C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E4454065C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:45:35 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B7BBC61E5FE01;
 Mon, 10 Jun 2024 11:45:17 +0200 (CEST)
Message-ID: <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
Date: Mon, 10 Jun 2024 11:45:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Kelvin Kang <kelvin.kang@intel.com>
References: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr, dear Kelvin,


Thank you for your patch.


Am 10.06.24 um 11:20 schrieb Aleksandr Loktionov:
> After 230f3d53a547 patch all I/O errors are being converted into EAGAIN
> which leads to retries until timeout so nvmupdate sometimes fails after
> more than 20 minutes!
> 
> Remove misleading EIO to EGAIN conversion and pass all errors as is.
> 
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")

This commit is present since v6.6-rc1, released September last year 
(2023). So until now, nobody noticed this?

> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Please give more details about your test setup. For me it’s also not 
clear, how the NVM content gets corrupted as stated in the 
summary/title. Could you please elaborate that in the commit message.

> ---
>   drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> index ee86d2c..55b5bb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>   		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>   	};
>   
> -	/* aq_rc is invalid if AQ timed out */
> -	if (aq_ret == -EIO)
> -		return -EAGAIN;
> -
>   	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>   		return -ERANGE;

The referenced commit 230f3d53a547 does:

```
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h 
b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index ee394aacef4d..267f2e0a21ce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -5,7 +5,6 @@
  #define _I40E_ADMINQ_H_

  #include "i40e_osdep.h"
-#include "i40e_status.h"
  #include "i40e_adminq_cmd.h"

  #define I40E_ADMINQ_DESC(R, i)   \
@@ -117,7 +116,7 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, 
int aq_rc)
         };

         /* aq_rc is invalid if AQ timed out */
-       if (aq_ret == I40E_ERR_ADMIN_QUEUE_TIMEOUT)
+       if (aq_ret == -EIO)
                 return -EAGAIN;

         if (!((u32)aq_rc < (sizeof(aq_to_posix) / 
sizeof((aq_to_posix)[0]))))
```

So I do not see yet, why removing the whole hunk is the solution.


Kind regards,

Paul
