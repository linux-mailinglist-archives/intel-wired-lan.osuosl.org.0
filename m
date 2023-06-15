Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41535731B40
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 16:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF15941910;
	Thu, 15 Jun 2023 14:25:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF15941910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686839116;
	bh=RH1uLGYI0YhDs93we2emLSAflenIuJywlNzyKdGLCBI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3SGjBAbwd3gQnRwxnAcbGYYNX2kZuTzGXygqGlEzdKhUu6Cl+FAPTvvEQkVgy9iJs
	 HOODkpDXuBwK4BIo/kZosAK+bpkV4LTGpvcVbRw0gQq52SaeGvHqPrxi76j1/Oca9h
	 Z8DgjoR0cJG9JiUWZHZiBwSK3/PUfB11FiFmmsXGXNchpnRaMmnPVh+JB3tGB1zqW0
	 y9XFVRGocCVEakwQ0S0xiXsUAz77ro/9yKRvvKUOXjIAq4hAGR9bF4ysiHuukLWItJ
	 hCpAIjqv3raNenPedaXr0ZAGBzGgomrXRyr9kDrImyd0R4iiscvYjwYmlS4pL8jxgc
	 pXlroh39kAwEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlqzVkXImEN3; Thu, 15 Jun 2023 14:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9FDB400D8;
	Thu, 15 Jun 2023 14:25:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9FDB400D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81E1B1BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6332D83EB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6332D83EB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qa49_NsZqPXD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 14:25:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D51AF83D35
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D51AF83D35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:25:08 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3f8d65ecdb8so20100615e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686839107; x=1689431107;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YnRaEq/R+qqN1l7MGLXRX4Jh2MLTeQ4xQu8xZjVF/9E=;
 b=VMOVk03fAAKOPzlpnWulqg6aoyZ1PQSWbDeB+pxue1BmbZ0aVS2hFRaVkiHND87B9z
 NZWCCCsBZo9vnHZZzs/67ehw8xREvkgbYBz1A9wm31v94olrCxDgfYOHL8vtFr1rFKe7
 ngX4eFgHNurxuAjQvxTPJfe40Ek5BB21NzCgKb0zIt8Kx2FxWWva9o7Z5N/3Xx/PD/sa
 FiNz2jFvH+jUzpUmy0MuYwO8f9hFK4ldFF+Ryc2Ei2LD8pf9eh+H2x8RTYM+PnWPE/1s
 Nvp8NPkUdegbKTzbt6tYEIe/kKpsJBXUwx5mszTHYvzNmRsx4I/RVnoRJKXYdOLLuyDu
 nDSw==
X-Gm-Message-State: AC+VfDzQfiBQ7ghXcqigGcEGnoV9sLEusH2lPIaUwdJ26vr1ezFgedS0
 goYzUDVTqgBtHICW/36h27THHg==
X-Google-Smtp-Source: ACHHUZ6/POVDebMNcxTEAlIgxHE9CAAQgcjr+eY2tthAxS4zMPp+MzA34nBwadH7vsqmMHlo1hEzlg==
X-Received: by 2002:a05:600c:255:b0:3f6:53a:6665 with SMTP id
 21-20020a05600c025500b003f6053a6665mr16182726wmj.19.1686839106865; 
 Thu, 15 Jun 2023 07:25:06 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 c12-20020a05600c0acc00b003f195d540d9sm20654630wmr.14.2023.06.15.07.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jun 2023 07:25:04 -0700 (PDT)
Date: Thu, 15 Jun 2023 17:25:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Simon Horman <horms@kernel.org>
Message-ID: <278e2ad2-847d-44a5-9bfe-46e11f4fea80@kadam.mountain>
References: <20230615-igc-err-ptr-v1-1-a17145eb8d62@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230615-igc-err-ptr-v1-1-a17145eb8d62@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686839107; x=1689431107;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=YnRaEq/R+qqN1l7MGLXRX4Jh2MLTeQ4xQu8xZjVF/9E=;
 b=noOMb35ytk+HSd7Sg7wpxWDhOqSYGWdXJ1rDSk0c9X/IZBV4KKQPOSTUPqjUnWYxPP
 pwIBnqTXLACqrH4kXUWkEioaJ3k+577u5bA5fZ7e9Ngr7K0ctQxKXtHPjDqVS1Cy/1tX
 X2L4wpGgPAxCsCAJUlAsQnTVCJSicdZb9Lp35b4SllE5FAln2tH/a/9lumdApRtSdUHB
 cWUMV10MSSClyOgvTosV1zEkcK/2Tnmm/x6t4w5aM36Ey5J9stGpw6Z5MNZbj0mzE1eV
 zU8nWLgf53oKIvcy8SZo2cJy8Npxbyq7IyyO675lDngEHZzx23kB6x42PzsEZrtJnphS
 sa6Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=noOMb35y
Subject: Re: [Intel-wired-lan] [PATCH RFC net] igc: Avoid dereference of
 ptr_err in igc_clean_rx_irq()
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The original code is okay.  Passing zero to ERR_PTR() is intentional.

On Thu, Jun 15, 2023 at 11:45:36AM +0200, Simon Horman wrote:
> In igc_clean_rx_irq() the result of a call to igc_xdp_run_prog() is assigned
> to the skb local variable. This may be an ERR_PTR.
> 
> A little later the following is executed, which seems to be a
> possible dereference of an ERR_PTR.
> 
> 	total_bytes += skb->len;


There is an IS_ERR() check in igc_cleanup_headers() which prevents
this.  Sort of tricky to see.  Do you have the cross function database
set up?  If so then Smatch shouldn't warn about this dereference.

> 
> Avoid this problem by continuing the loop in which all of the
> above occurs once the handling of the NULL case completes.
> 
> This proposed fix is speculative - I do not have deep knowledge of this
> driver.  And I am concerned about the effect of skipping the following
> logic:
> 
>   igc_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
>   cleaned_count++;
> 
> Flagged by Smatch as:
> 
>   .../igc_main.c:2467 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'

Linus once complained to me that this check is bogus and passing zero to
ERR_PTR() is fine and an intended use case.  But actually this test
does really find a lot of bugs.  I think for new warnings it is less
than 10% false positives.  But we fix the bugs so warnings which are
over three month old are probably 97% false positives.

regards,
dan carpenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
