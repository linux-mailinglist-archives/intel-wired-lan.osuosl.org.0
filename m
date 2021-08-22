Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCDE3F3D02
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Aug 2021 03:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F55C80E66;
	Sun, 22 Aug 2021 01:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1N0dbCoxEqok; Sun, 22 Aug 2021 01:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E591B80E68;
	Sun, 22 Aug 2021 01:26:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC0831BF95A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA01A80E65
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:25:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUGemJbXjqfN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Aug 2021 01:25:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6312180E64
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 01:25:56 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id g14so12105074pfm.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Aug 2021 18:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uhQUv8RqFzAiliaNh7mZeYamCoPUY3mAves2nkndBfA=;
 b=M0aunCSGOz9EN86Xmb8Wj5OyWi3/c0Eih31tXxb2SZcd64Ot7YvEkUNKS94ddVOr7t
 MhYxJOpRGOHpaAEc5WnGUMiBrRIuFi9vNcHuaTMzexMRn9XOpTjhaMbc9KlkHJrE87TJ
 L9aInV3qB1eTlaFesbTP6WGonGb03G8VsJC/anu443nXS/jGQ1UMn48r/u9yFwVFJ5BZ
 Zpnslu0sT/7gL7keRTAJlvCRx0PpV9kI2dUhuY2MRQ8rXIJAhtsRIgAACY3RTuX72EWL
 7i2FdKFlei8MT+LTOxAniJoMyY/uxKUjw6jFd5aGjGeV5Hk/M+EzuS34dhO/ylEA7Nwf
 RhYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uhQUv8RqFzAiliaNh7mZeYamCoPUY3mAves2nkndBfA=;
 b=sb/FlR44y4Tp9EM+Os5h/1KtXCA5YsLL5EdgWP1DPb3y2YooVtQ0GR0l7DoOxgA5BC
 K+98v4Ps85CmwBOGtEhuRG6ujt3aHXOyFa7uTFNysaq+D2ua1ZG0Ue5PBiqqmy/T75c7
 /eI9CgSjI31Z6ON3cXtL2Lz8hJ8+eF31kh8z3XHZSrbryqP8VzvZ7CddtvKnQZXxrgvx
 D71Tpnmr6bs+mQmbwHVbu7XSrlXztH23nBSlUL4jhcKYo9NNqA4viPd/+Uo6eNZx2LVe
 2HJgj4lNcZgQjgLAdAoXYcW5hotT3W3+hznzdqWvxK6V7bGpaSUqiNK/n/G9xZQywqhf
 y4hw==
X-Gm-Message-State: AOAM531vbIQS5B9h4K15w/cvC5W0A9gPMXwCaCssly7GvADUd6BCUvsH
 ynYNrq07D3yUduMbrMCShAQ=
X-Google-Smtp-Source: ABdhPJzyuuk99pLRVPhdOqhP5AWTiNrfvA7xkqIz09D976/BUIGS8IY84uid60S5TmZRvIQLw3kuLw==
X-Received: by 2002:a65:414a:: with SMTP id x10mr13183658pgp.403.1629595555843; 
 Sat, 21 Aug 2021 18:25:55 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id m2sm11512054pfo.45.2021.08.21.18.25.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Aug 2021 18:25:55 -0700 (PDT)
Date: Sat, 21 Aug 2021 18:25:52 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210822012552.GA4545@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 4/7] net: add ioctl interface
 for recover reference clock on netdev
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 06:07:14PM +0200, Arkadiusz Kubalewski wrote:

> +/*
> + * Structure used for passing data with SIOCSSYNCE and SIOCGSYNCE ioctls
> + */
> +struct synce_ref_clk_cfg {
> +	__u8 pin_id;

How can the user know what values of 'pin_id' are valid and useful?

> +	_Bool enable;
> +};

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
