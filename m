Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4341666043F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 17:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 715B460E6B;
	Fri,  6 Jan 2023 16:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 715B460E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673022473;
	bh=4t9SuysKfnV3ZEJdcewyDe7fJ9wNZnXVuMtzJnxL+FA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wXz2ebUcWoSaa7YmJOTaWfFdTJbsaEHpCLVJDsRL8tFlIXP5hJVkA2rkD4qUObeDJ
	 k4rKcbEnFN8e9qmriQ0wwl4ZnnE667opT15UQ3jhJxJpKuEq8qVWzzNUxpU6xYO9lX
	 t8IzwwtPSVuOqL+lA7ATGiuHXfyZ9Aod28KfkG+9hGi/uWeAUJELxcjoufZIqa/G3U
	 L34Zk0Qk20uqn1ZQNW0L5NG8hrOmHOl5Esp0IIz5EwrqUGBKPIO6LKR0a2SUyA+/tF
	 AUxZYlwZr4X9Q5suRDBUwRBD+sO9LICLsQqkRw0I6vIwkzRwWJP078E5qTXPSEFF/l
	 kj1ft0AtAioUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AnCaaD_m7Se3; Fri,  6 Jan 2023 16:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 638E560E6A;
	Fri,  6 Jan 2023 16:27:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 638E560E6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB64F1BF57B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 16:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95738821B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 16:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95738821B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b1MuEG68gWAT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 16:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52F27821A9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52F27821A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 16:27:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id CD7F5CE1D43;
 Fri,  6 Jan 2023 16:27:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E830AC433D2;
 Fri,  6 Jan 2023 16:27:37 +0000 (UTC)
Date: Fri, 6 Jan 2023 10:27:44 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y7hMALdQP7MC+mD7@work>
References: <20230105234557.never.799-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230105234557.never.799-kees@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673022459;
 bh=AzKGgYVMInMdjQmyjjFqHOTYxjbhsiHA9tT3/tUbEUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZDpwNPQ/qxOtAqUGh6oWYPqYoW+8fR5Rdb9DsxBjoXcyX4mhoBNctjDttvQkh+cmW
 AA60OgAQLh21G+T4GyaMeG8o3WYi5cLDIaZvVkOCnWAFirx0JwS1FvLCbEu7f+O7kC
 1p9HJyCCbwxqCSUD9jUJVjoedaIMkVM+jNUVQ+d63bjdkFFD1a0c9R+mpYYgONnkX9
 lrB2qw0ruuHEJk3DAJog6bfXyH3QuCe7YYnrwyHGqKPMY11wx6c1Xe3NKWZo9uzAKT
 lm0MWUqGejl4KhbN/7wZX8yY4lQifK+mIUiQ/zwitfn5t5nPZq7KZXVDQXK+inRtLq
 Z2kunqJCvvMGA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZDpwNPQ/
Subject: Re: [Intel-wired-lan] [PATCH] net/i40e: Replace 0-length array with
 flexible array
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 05, 2023 at 03:46:01PM -0800, Kees Cook wrote:
> Zero-length arrays are deprecated[1]. Replace struct i40e_lump_tracking's
> "list" 0-length array with a flexible array. Detected with GCC 13,
> using -fstrict-flex-arrays=3:
> 
> In function 'i40e_put_lump',
>     inlined from 'i40e_clear_interrupt_scheme' at drivers/net/ethernet/intel/i40e/i40e_main.c:5145:2:
> drivers/net/ethernet/intel/i40e/i40e_main.c:278:27: warning: array subscript <unknown> is outside array bounds of 'u16[0]' {aka 'short unsigned int[]'} [-Warray-bounds=]
>   278 |                 pile->list[i] = 0;
>       |                 ~~~~~~~~~~^~~
> drivers/net/ethernet/intel/i40e/i40e.h: In function 'i40e_clear_interrupt_scheme':
> drivers/net/ethernet/intel/i40e/i40e.h:179:13: note: while referencing 'list'
>   179 |         u16 list[0];
>       |             ^~~~
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#zero-length-and-one-element-arrays
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks!
--
Gustavo

> ---
>  drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 60e351665c70..3a1c28ca5bb4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -176,7 +176,7 @@ enum i40e_interrupt_policy {
>  
>  struct i40e_lump_tracking {
>  	u16 num_entries;
> -	u16 list[0];
> +	u16 list[];
>  #define I40E_PILE_VALID_BIT  0x8000
>  #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
>  };
> -- 
> 2.34.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
