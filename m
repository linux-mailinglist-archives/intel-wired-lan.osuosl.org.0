Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03007421D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 10:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 713D4400DA;
	Thu, 29 Jun 2023 08:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 713D4400DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688026435;
	bh=1+yi7iP8FQyR4nIMl1+bcffhnCVK3jgb4Z+DmdgKmw0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KXuRtv+FQ+GAcYlG3/R6fgYlae2x5p7tEX20lnVAORRRlsWtcByrlqVrAVY4YI8DF
	 odcdtjtqY8sKD0PUiYFldHXVQbOAghxA9JZQtVNcPzEd9S7eQLxPd/7Zw+yTg4rz8i
	 GS5/WYgvprcmwJ/Tw9OAioP9iJWoneaHuIMIXZxSH7fjDy9ulopGCL59Ze8v/ecjek
	 G285yRNcL30roJnWlFp/OVMGSVQk2wJ2+IGGcnp6FY9VTHEIGAmL36qSiDRh1J5tAT
	 MBBAeFEYnKLs+G+LKlE/Y4OVs2r2p2JPkvEmjHJ1TBnem4sBWntegrTH41MV8R72VO
	 fYj/dyWkCJBww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFl4zpHVjamz; Thu, 29 Jun 2023 08:13:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52B8540391;
	Thu, 29 Jun 2023 08:13:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52B8540391
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9DB1BF279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 646AE40391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:13:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 646AE40391
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Rzm4tKWcDXa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 08:13:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CABDA40199
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CABDA40199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:13:47 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-3fbab489490so4009975e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 01:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688026425; x=1690618425;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XCNcU+qQjqANE7miJnt/rRYeXCcZNW96kSXkJVN64sA=;
 b=hYsf96adG+o7mfBF0bungYbnm9gnzpm9Rzg3zAgPJaIaHgrDj8xDR6+9rtdVxrulQz
 imi0WzLN6qqGQGRhxDXDtDi4ytN5JNHm5cYImdUQhJSMTMAphSSww6X8k6f6v93eQFCO
 Dl3CqKRX0OmW3kyqPbxmaio8IuUlI/ZX5iLfGVlShBOiFztzZrfx74w3viuVF8+fHCJt
 EXxF1E+JkkBbV4mGQWp920k2X9qRqfT4wOhjqssstWHf0LCr5B40lj3SHiRLLDkZl7XD
 Moyi7yG86ITxY4U3TJs8jc3lY/F2Ggjk9sXIkQHufrLFx01MU/XCeNT0skTfdtQVyeVd
 5jig==
X-Gm-Message-State: AC+VfDxoO9iyHWzX51oG/VO54Ekyxh5dluVNWn9y6l2KYbI6T1DZizRK
 9y2dPoCi9fE+SbcfMdWaIIbHpA==
X-Google-Smtp-Source: ACHHUZ4Hq/Ygv5bP0PW9CWoZ78vG28FdK9CR3U+nUITIwO8dut4OijbZB0fTo6rEzYqGldh55avUEQ==
X-Received: by 2002:a1c:7417:0:b0:3f9:b87c:10db with SMTP id
 p23-20020a1c7417000000b003f9b87c10dbmr20901942wmc.3.1688026425228; 
 Thu, 29 Jun 2023 01:13:45 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 g11-20020a7bc4cb000000b003fbab76165asm5145964wmk.48.2023.06.29.01.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jun 2023 01:13:44 -0700 (PDT)
Date: Thu, 29 Jun 2023 10:13:43 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJ09N2TI4wHrA4rB@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <20230623123820.42850-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230623123820.42850-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1688026425; x=1690618425; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XCNcU+qQjqANE7miJnt/rRYeXCcZNW96kSXkJVN64sA=;
 b=t+jCRgWMe9clsMdvABkCIyCYTsRENxOd2x1gINk9t8cwUOVP4GpHwYsveP15/BaTxa
 IiY4bWtoAXAchtgGBvWVBSVHajfMyXWMfg8mH09pnBnYrxbBszocjJo87KBBFuLdyr8w
 gDwrrJMKhMocvsJEE+7i6hMpn6aw274D3+HbNb8XDLOh+TxC3BZS79vlWTwn34U7DwIo
 UrNO+xXIyioiE15XYWLzIOxMxZF4seSi5sOpw+1uwvmqFJjPMEFdZ2BjQAT25raMMQuc
 Hd/KixDUkzG8rXkE/gv8cxwnI39xp/f05IZEtVkXU+ZL/rGRqJy4MJyAOvyOgom44ue+
 K2zQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=t+jCRgWM
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 23, 2023 at 02:38:13PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>

One thing I forgot to point out the last time:

[...]	
	
>+int
>+dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>+		  const struct dpll_pin_ops *ops, void *priv)
>+{
>+	int ret;
>+
>+	if (WARN_ON(!ops) ||
>+	    WARN_ON(!ops->state_on_dpll_get) ||
>+	    WARN_ON(!ops->direction_get))

Please add check that you don't register to dpll instance which is
unregistered. Similar check needs to be added to pin_on_pin register.

Also, make sure you don't unregister dpll device/pin which has child
pins registered under it.


>+		return -EINVAL;
>+
>+	mutex_lock(&dpll_lock);
>+	if (WARN_ON(!(dpll->module == pin->module &&
>+		      dpll->clock_id == pin->clock_id)))
>+		ret = -EINVAL;
>+	else
>+		ret = __dpll_pin_register(dpll, pin, ops, priv);
>+	mutex_unlock(&dpll_lock);
>+
>+	return ret;
>+}

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
