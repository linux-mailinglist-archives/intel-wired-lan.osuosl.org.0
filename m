Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DC3611FB5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Oct 2022 05:17:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 622A340363;
	Sat, 29 Oct 2022 03:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 622A340363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667013471;
	bh=lHmrSj0f53h+N2pcVaMbPk2ZAsExbTUkAw3iGvv+kBo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z54lsvRv7UvSyhQBiTXO0HUE6YftaFSiqPaixpGLhDr8bGFzNCGMPit39UqXF7xHc
	 2+e9o2D8793eK29FtNIEgi3q69DP/iutBLsk+CERtOtby2seFc/JpfuibpqeYT7SZX
	 fsvZ5GdW3dnDAftAwxCUTrcQxOLyzPjzvgGP4VsLQfDOHAI6vinCw2wBQFHV3jxcK1
	 +hz9/3uohmljoAsMzdLHbR4HpjoN1yTTu79nvIv7Y2PXiBPLEYZ0SQLq7HEyOet1ls
	 PXkmoLBxDVn0ZbMK1LdGTIx8b8dAkTwQr23SDljVTXuCxok4qEIhLe69r3nsJpTbAn
	 eFGoi/wrCMhGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpnGXEfuBye7; Sat, 29 Oct 2022 03:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6564A40180;
	Sat, 29 Oct 2022 03:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6564A40180
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D02101BF982
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA9E481413
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA9E481413
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-bQyrAygeQX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Oct 2022 03:17:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA4C88140E
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA4C88140E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:17:36 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 z5-20020a17090a8b8500b00210a3a2364fso9167467pjn.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 20:17:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Kd4BB28ylqUVziHfqM61lajVeO2UdyApWimbqI2dNa4=;
 b=2rioGfZ/bLtqeP67yO5tjNB5Qa5UWokB1/3mKcZaC0wlJi1XmVHDFrje5iJn91i7/M
 E476kLKNcB1G5L7Tolure1XwDGlBh8zuoiTLJEFj4tRbbKNAixHl9uOznJ5emYYhNMwT
 teK6xTjhSHbeaakIx5fXrjURm+aGSEkJDSJNqn8QnS1euO9AKWypGU2vVhDCE46IZjmn
 aAvSRXMYAXfZLO2dHqrRPK8Ixg2UxzkbowVfcSM8ff8Ik4EQv5EKkoDvJevXZd69SLDO
 wKKNmVzw1qUpVUAUA0HZ1DVMfrl52HGF7OXYIb3ziVniMPyhF2l6UiYWzxyslrMjGFt0
 qeTw==
X-Gm-Message-State: ACrzQf3GgdJSrlQfETjyri2JyC6DlRtWfkWbT7fFqXnYYDpsHDHgxx8f
 cH91HJggzUE27LdiK43iadanKQ==
X-Google-Smtp-Source: AMsMyM5me638ftMDuCR+ussBeXMeJ3H30jUxnuNmVqvD/NnEcnVWySgFAFBzkL8kvpWSPHr7p2FbHg==
X-Received: by 2002:a17:90b:3803:b0:213:9911:5efd with SMTP id
 mq3-20020a17090b380300b0021399115efdmr2546152pjb.94.1667013456327; 
 Fri, 28 Oct 2022 20:17:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 b12-20020a170903228c00b00186b55e3cd6sm187649plh.133.2022.10.28.20.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 20:17:35 -0700 (PDT)
Date: Fri, 28 Oct 2022 20:17:34 -0700
From: Kees Cook <keescook@chromium.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <202210282013.82F28AE92@keescook>
References: <20221018092340.never.556-kees@kernel.org>
 <20221018092526.4035344-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221018092526.4035344-2-keescook@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Kd4BB28ylqUVziHfqM61lajVeO2UdyApWimbqI2dNa4=;
 b=BGguppnicqHjW8WfEUzt0WRt/BtvsQBZ/hFQYeUQt7L0+j5PxnRag2L+5pR7ldJmYU
 fxSlt+6U+ssbdD6d90ZD3GEEvaArZ9CItsMeiHNkML+W/y/hV8zS7Fu7/Ma2ZBZyGjwF
 fRFvgWG2IXOYzu8hoN0h3BHns4z72AzKnFWX4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=BGguppni
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to
 kmalloc bucket size
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 18, 2022 at 02:25:25AM -0700, Kees Cook wrote:
> In preparation for removing the "silently change allocation size"
> users of ksize(), explicitly round up all q_vector allocations so that
> allocations can be correctly compared to ksize().
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Hi! Any feedback on this part of the patch pair?

> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 6256855d0f62..7a3a41dc0276 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -1195,7 +1195,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
>  		return -ENOMEM;
>  
>  	ring_count = txr_count + rxr_count;
> -	size = struct_size(q_vector, ring, ring_count);
> +	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
>  
>  	/* allocate q_vector and rings */
>  	q_vector = adapter->q_vector[v_idx];

Thanks! :)

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
