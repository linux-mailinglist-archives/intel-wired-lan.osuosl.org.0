Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4178425E2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 14:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18F8B82310;
	Tue, 30 Jan 2024 13:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F8B82310
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706620332;
	bh=OkLitXttwTUb/zXy/QPOOiy+a2/dYq/gNOT2sYOoFQw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lm7N8DkE0/Vno+493k4xV00f8kIYUhY56eaAKo6isYg+XeeSjH5/fkvbXcJNfOdJq
	 IwYUT1+sWzWbgG0Ip5OEjQDYZpOzIqOD1NpUjA6IwaOSdZqgejz4vWsX/niBOIRGdI
	 J9ycODV/xQh2J0Vj2+4o0D90PuPFwWatJINSetrmB4BbUJNxUMa8QuVHwVFuoFh4iL
	 THJMpePAMtnW3at/9FnQlhoUnpzyZUbbfgP9lBLVMhCjOVcEgLmRiT2wDA1XKiOqBM
	 SKyZIuNBwmm/gdbEHsTLr5tAF3U7u+D1bGBlTqJuAtzKFvLktBD2XD6Z70yYBo0v5B
	 h8nrIZqQF+/7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEkSINjmTNl0; Tue, 30 Jan 2024 13:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E91982325;
	Tue, 30 Jan 2024 13:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E91982325
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFFC71BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91C8341BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91C8341BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RrBjIHWJwDq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 13:12:03 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66C2A41B42
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 13:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C2A41B42
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 31894CE182E;
 Tue, 30 Jan 2024 13:11:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D12BAC433F1;
 Tue, 30 Jan 2024 13:11:42 +0000 (UTC)
Date: Tue, 30 Jan 2024 13:11:37 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20240130131137.GH351311@kernel.org>
References: <20240126130503.14197-1-jedrzej.jagielski@intel.com>
 <20240126130503.14197-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240126130503.14197-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706620318;
 bh=EJ7lOS3Ds/Vj4BBISEpE3TpcTQc+OaYbGCsQqTvbFTM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f2uErQRlD08eQ7ERt8Ru9DLzLIVy/uvJ3xUgzzW4e49v67dTtFngHQXX3A5Js2pwN
 +dKMV+T/4sI9y79Z+LYA/DEuFz81Haf7E2sktHAqBhl4qPUEcdBdLQ7k8OdnC+jWxx
 7zyvd9eT05Ek12b68PNaA9rFiqFuH9sO3Bb7p00sORoHfNidnYtWL/lkNQNip8Eyuq
 cC93/1llLN5Fect6XXuPbwNf31TuKuXksoADSqTGv28ujHbMeHTfk7Q2On1anzBadb
 i8yDziEuftqwzfj9HklzPZXzRod+LUJg4E6R2P3eWsYmI/eYT9v0yZ7/NL96eAAfLc
 S8eWXPVnIbWow==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=f2uErQRl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] ixgbe: Clarify the
 values of the returning status
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Dan Carpenter <dan.carpenter@linaro.org>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 26, 2024 at 02:05:03PM +0100, Jedrzej Jagielski wrote:
> Converting s32 functions to regular int in the previous patch of the series
> caused triggering smatch warnings about missing error code.
> 
> New smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2884 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3130 ixgbe_enter_lplu_t_x550em() warn: missing error code? 'status'
> 
> Old smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2890 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> 
> Fix it by clearly stating returning error code as 0.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202401041701.6QKTsZmx-lkp@intel.com/
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Thanks, nice to see this cleaned up.

Reviewed-by: Simon Horman <horms@kernel.org>
