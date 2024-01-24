Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E1C83B3E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 22:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D47640A42;
	Wed, 24 Jan 2024 21:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D47640A42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706131627;
	bh=CkxtFHbjk2B8uv/Bp7rwir4anSOwgO1625h1RichXdc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=joIEx8p3kUdjCZSC9mOuf/owdiPSRWVgsuYrpGJ1QJR6pI/i40C3LpWEQO4lzMagV
	 PvLpV+ipEXwUlfwY5bLu46GPtX+53GpgLWlpqLiFR/GsGszwL16m6NHQY2tjccOxea
	 u3I8piYmxMdEST7DQNkP8NGp3t9CTU0RIWKJzcE4yCwhvVtcPGqK5wD+ft6sAvzAbD
	 /SuCC+VU1BaeCDOHYiglJo+IHwWC/b5pSSOKwbGSlLmmfeahVnDJfS+tW9Y3huWvbm
	 jQI9sPntvBbgT14PozjrUX4TgkOFJqriw5lJqvS+ACT0T5DJUPLWc/ki0DttKkl4I6
	 nGgeSHF7Dk2gA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z0OTmbg2ImUl; Wed, 24 Jan 2024 21:27:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BD9C40970;
	Wed, 24 Jan 2024 21:27:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BD9C40970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C327C1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A24781B0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A24781B0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Tj-cAujQ16Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 21:27:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B1CE81778
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 21:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B1CE81778
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EFD8861E57;
 Wed, 24 Jan 2024 21:26:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69485C433C7;
 Wed, 24 Jan 2024 21:26:57 +0000 (UTC)
Date: Wed, 24 Jan 2024 21:26:54 +0000
From: Simon Horman <horms@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240124212654.GA348897@kernel.org>
References: <20240122182419.889727-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122182419.889727-1-anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706131618;
 bh=lCOjQOk7wxMizEVQCLQ7fNTuC0MebLxnMQwmgJUQwb4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OzaGWpM7ggNujGT2ILNyXDOxpDxaPfJ6oDnDbvC3QwR3RzPzbcaUEf+Vbeo+FN+1e
 xlw3j8av8cwhrJtpjIazRp9AYsLcW3MzRahzsxBVYl16tybSoNpWm+w+Gsn5xsAPnM
 YCTBVPonkr2cvk3n+bhRXMk0FiTFErjUOSXocFF6wmnpIYdXaAO+uN5sHPSSM3A2+f
 JnBI7unAq8gbSI2vR+hcIyGqF0pY6vFDaXZ21Pa74ZJntiQDqDQYB0bCORfV9RdJeb
 C0pbGCbtqwFBYOAkFKpaLWykX7ltVrilqh9REMGu3JYinvx9m8q4PtqDVjwA86mHdq
 xyyTwpGtXieUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OzaGWpM7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove duplicate comment
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 22, 2024 at 10:24:17AM -0800, Tony Nguyen wrote:
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> Remove a comment that was not correct; this structure has nothing
> to do with FW alignment.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

Sure, but the subject doesn't seem to match the patch description.
And, Tony, your Sob seems to be missing.

> ---
>  drivers/net/ethernet/intel/ice/ice_debugfs.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index c2bfba6b9ead..85aa31dd86b1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -64,9 +64,6 @@ static const char * const ice_fwlog_level_string[] = {
>  	"verbose",
>  };
>  
> -/* the order in this array is important. it matches the ordering of the
> - * values in the FW so the index is the same value as in ice_fwlog_level
> - */
>  static const char * const ice_fwlog_log_size[] = {
>  	"128K",
>  	"256K",
