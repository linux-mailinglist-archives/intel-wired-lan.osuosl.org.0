Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4AC90853E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 09:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1553A81747;
	Fri, 14 Jun 2024 07:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xjraheNGimFL; Fri, 14 Jun 2024 07:43:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 220DF816E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718351036;
	bh=gfKj5FON8ycAflPrP5rnntKrHQ09zDTxfSM06U+Z5Qs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FlWDWdx8lOPw/uifp9OwdIhkfhPqMM6gbMN65hxfjNfn5jyA3DWSPy8OIKGCu+9CS
	 kfMmtRixUOHih6AtcADTjpVBqjkN7fsLN+5Xg9zlOBM8R5o3TDqi5E9ZCnJgvEtO4j
	 CUEn1wJgZMiCNlEE8+fhzLTGQigvLkoFUSAafsM63CNmxSCTRSeWft7LWkk/c/AMFb
	 UMfysvzE/BJAr1sqk+vTEl9A0ytFvQNVAJxhoM809Upz5UkCpj1z28pUSyaLEAUyoF
	 RqfolHZr/rRE5D0Cr5Oe3OsbSSnif+ECwIRz0uth9yKDW1LQl3zBOpwNXCjjGYvxYD
	 lpgBww6VPHOBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 220DF816E3;
	Fri, 14 Jun 2024 07:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A69831BF334
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F0344094C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YHTjzwH3hHNP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 07:43:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0BA540109
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0BA540109
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0BA540109
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 07:43:51 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af505.dynamic.kabel-deutschland.de
 [95.90.245.5])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 738F561E5FE01;
 Fri, 14 Jun 2024 09:43:35 +0200 (CEST)
Message-ID: <178b72a4-0cb6-4e91-ad91-f0d52abef560@molgen.mpg.de>
Date: Fri, 14 Jun 2024 09:43:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240612110402.3356700-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix hot issue NVM
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
Cc: intel-wired-lan@lists.osuosl.org, Kelvin Kang <kelvin.kang@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Am 12.06.24 um 13:04 schrieb Aleksandr Loktionov:
> The bug affects users only at the time when they try to update NVM, and
> only F/W versions that generate errors while nvmupdate. For example X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
> 
> After 230f3d53a547 patch, which should only replace F/W specific error codes
> with Linux kernel generic, all EIO errors started to be converted into EAGAIN
> which leads nvmupdate to retry until it timeouts and sometimes fails after
> more than 20 minutes in the middle of NVM update, so NVM becomes corrupted.
> 
> Remove wrong EIO to EGAIN conversion and pass all errors as is.

I am still not convinced your change is correct with this statement. The 
blamed commit converts the error

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

> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> reproduction:
> ./nvmupdate64

Would be nice to have in the commit message, and also any error messages 
it throws.

> v2->v3 commit messege typos
> v1->v2 commit message update
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

… but you remove the check entirely. Why is that correct?

>   	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>   		return -ERANGE;
>   


Kind regards,

Paul
