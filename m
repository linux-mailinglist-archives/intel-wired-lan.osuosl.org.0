Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC63991AE1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 19:34:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C55960E53;
	Thu, 27 Jun 2024 17:34:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AvjQ6EqdT1Sk; Thu, 27 Jun 2024 17:34:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 091B160E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719509643;
	bh=uhj8lqZA+6KE3aV7Ry62zkW+H6P27WzPegxTAXyj6Fs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QBxQnnR0Lv9KNLF+V9ajnRUFu6FnVNTvfq1rxOevGfyDYvKjTk1jhbOyC4Hh1cNvK
	 blYQGUTQsx3/nYnJYGFPuqSJA/HkXJxRH4hXl54WjoRXnAmeKEG08UWVm8wE4DT9ZT
	 Ubj2LeiY6rHZtH+KMCGFZggyCSDIohft8Zn26f7+rtSQoEnxsEk26Ejy29/QVShGKy
	 PFEeNL7J/5wbGLZJg/fTfPX2dLnP1UOh31dsJHEqobY6VwOyeB83vQ8EMD/O5f/tlY
	 0AEbFrw2juLRvvNhN04b3e5kYr6pdEt16opwnmSCZDYvw9kuAXeBRQtT3CuRp5xBPd
	 NLOVsMoBr7vrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 091B160E5C;
	Thu, 27 Jun 2024 17:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 991F01BF487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 17:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92B0060E51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 17:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UkFT3Na0S8L5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 17:34:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25BB4606CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25BB4606CC
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25BB4606CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 17:33:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E3504CE338C;
 Thu, 27 Jun 2024 17:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD8ECC2BBFC;
 Thu, 27 Jun 2024 17:33:53 +0000 (UTC)
Date: Thu, 27 Jun 2024 18:33:51 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20240627173351.GH3104@kernel.org>
References: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625184953.621684-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719509635;
 bh=xW8BSegUXXjq3l04zqHTpEkRmdEOsnKZFH7nYj0E+y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gXOxwct0z4Icgj6y53z/0eBDvHlpikw1G+ZjekhY+sDLZN1Cgr0WvrJt1KJ1z4f5H
 tyyPkbL8jFSxMxHu8z5j4sjcPYOY+5u1Nz9wU6VsRFaILhLX9ISxVXBC9Iq1W++twg
 ZiIRxwduInRoK/cFSZ65TdRgBIr531StNnkXMJ6sC/CU8HknL53T7tSXieyo+YN1wx
 aXwqEPY9JQ/Pnoz1ZsdygVozGXSABelLr0gwD4pdzNYJltnV//dd1ivaIohmYfjadQ
 8OkVsUvChWLaeX0wT4RKgomsj8oGZVuzurhSg0K/28rJ5dq2CiKEOMsAPC0C0Qy0A3
 /rPvDGoEScc3Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gXOxwct0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: fix: remove needless
 retries of NVM update
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
Cc: anthony.l.nguyen@intel.com, Kelvin Kang <kelvin.kang@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 25, 2024 at 08:49:53PM +0200, Aleksandr Loktionov wrote:
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
> 
> After commit 230f3d53a547 ("i40e: remove i40e_status"), which should only
> replace F/W specific error codes with Linux kernel generic, all EIO errors
> suddenly started to be converted into EAGAIN which leads nvmupdate to retry
> until it timeouts and sometimes fails after more than 20 minutes in the
> middle of NVM update, so NVM becomes corrupted.
> 
> The bug affects users only at the time when they try to update NVM, and
> only F/W versions that generate errors while nvmupdate. For example, X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
> 
> Command for reproduction is just NVM update:
>  ./nvmupdate64
> 
> In the log instead of:
>  i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err I40E_AQ_RC_ENOMEM)
> appears:
>  i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM
>  i40e: eeprom check failed (-5), Tx/Rx traffic disabled
> 
> The problematic code did silently convert EIO into EAGAIN which forced
> nvmupdate to ignore EAGAIN error and retry the same operation until timeout.
> That's why NVM update takes 20+ minutes to finish with the fail in the end.
> 
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")
> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Hi Aleksandr,

Maybe I'm reading things wrong, I have concerns :(

Amongst other things, the cited commit:
1. Maps a number of different I40E_ERR_* values to -EIO; and
2. Maps checks on different I40E_ERR_* values to -EIO

My concern is that the code may now incorrectly match against -EIO
for cases where it would not have previously matched when more
specific error codes.

In the case at hand:
1. -EIO is returned in place of I40E_ERR_ADMIN_QUEUE_ERROR
2. i40e_aq_rc_to_posix checks for -EIO in place of I40E_ERR_ADMIN_QUEUE_TIMEOUT

As you point out, we are now in a bad place.
Which your patch addresses.

But what about a different case where:
1. -EIO is returned in place of I40E_ERR_ADMIN_QUEUE_TIMEOUT
2. i40e_aq_rc_to_posix checks for -EIO in place of I40E_ERR_ADMIN_QUEUE_TIMEOUT

In this scenario the, the code without your patch is correct,
and with your patch it seems incorrect.

Perhaps only the scenario you are fixing occurs.
If so, all good. But it's not obvious to me that is the case.

I'm likewise concerned by other conditions on -EIO
introduced by the cited commit.

> ---
> v4->v5 commit message update
> https://lore.kernel.org/netdev/20240618132111.3193963-1-aleksandr.loktionov@intel.com/T/#u
> v3->v4 commit message update
> v2->v3 commit messege typos
> v1->v2 commit message update
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> index ee86d2c..55b5bb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>  		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>  	};
>  
> -	/* aq_rc is invalid if AQ timed out */
> -	if (aq_ret == -EIO)
> -		return -EAGAIN;
> -

Perhaps it has already been covered, but with this change the aq_ret
argument of this function is longer used.  It could be removed as a
follow-up for iwl-next.

>  	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>  		return -ERANGE;
>  
> -- 
> 2.25.1
> 
> 
