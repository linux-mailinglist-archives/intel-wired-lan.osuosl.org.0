Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710657D862B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 17:47:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F28A141ABC;
	Thu, 26 Oct 2023 15:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F28A141ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698335248;
	bh=ZJM0QusB50hflW2uWQaPcqy09pGLrIrb4hvkGokxJSE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aE37/cesMBklghPAWRW8xIkQdqPT8OIsOwpF4C7/cpUrA/ucTHB7gXvsLCgclLqqb
	 3KSKNLA4Yifv4wfOsOp5SKP5ARMihxXdAusOYgeZc8VOfuhntOOZb4auR+YFCsfqea
	 5LFKb/XSeDRj+WzswVy7EGmYRvMV1vaF+uOUx2rWYKrNvgAiOAHUq6UDVweQHNbXps
	 vxWkl3dPlQrOvDc86wQp1+EcRgaq64Xhuw/NN7CibJbL3MTYCawsk0xA9sQzukrRRa
	 XS1EXas1TdBp1aFIxg0PbjbERpaCOe+BXOqnTZxhc/g7G0ja6kJ7RANEChy1wuOP56
	 oahHRlTbsZhdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5U4bIgtRnKtv; Thu, 26 Oct 2023 15:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E1E94013B;
	Thu, 26 Oct 2023 15:47:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E1E94013B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 822451BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 669786F727
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 669786F727
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpBRt5ObYStC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 15:47:19 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C063D6F521
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:47:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C063D6F521
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-280011e94ddso425308a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:47:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698335239; x=1698940039;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xlBcWVOwKivgAn0UMjWC0U1b/ad+4cMpTB3lolYhGNU=;
 b=ChG9dWDGQdHROn0u4xj4Z8FkJj4pKnl6KX94AUimFt20V7Z0Nx5ajBpLP5PNfJK2ts
 yRucSSPpLAGN2WS4KaH4qRNx3eTRd/kELNRd7GE6/xbylNMlx8s/7sqKemKDa1RhLNQx
 SBvqml8pJYCMtkv99r1A5SSrUShefoWznBdvtwN3S/AnMsR8LVumB6XM5jlkjeCuiFl8
 fK6Z3mI+qcUQd3LBI6k/8auIqUtFCPbpefQETvpZMHSFnqp805S3ElCsFK5qfZR+DgO7
 +gF91JN4slGHBkvGVSW889bJrJ+qwzKrZX5+M97PJjZk/Z4pZKPd6yKGE8kLXVHAGVkc
 Gfmg==
X-Gm-Message-State: AOJu0YxkPoMaITifylw3rIz0yRaypESwYdsjeJXOsy5tk5fzAbeEMccn
 i6fGUjBgUKmB7nvI6lF+cA8dZA==
X-Google-Smtp-Source: AGHT+IE+QPVJnhPXypHjhY8uvISBKpa7dbbm+rvilNnSdebvclKGppTYd6ACyZS9wBGFhF/d0zryLA==
X-Received: by 2002:a17:90a:e38a:b0:27d:36df:8472 with SMTP id
 b10-20020a17090ae38a00b0027d36df8472mr15374711pjz.27.1698335239138; 
 Thu, 26 Oct 2023 08:47:19 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 30-20020a17090a195e00b0027cfd582b51sm2008331pjh.3.2023.10.26.08.47.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 08:47:18 -0700 (PDT)
Date: Thu, 26 Oct 2023 08:47:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <202310260845.B2AEF3166@keescook>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1698335239; x=1698940039; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xlBcWVOwKivgAn0UMjWC0U1b/ad+4cMpTB3lolYhGNU=;
 b=OjMT8Aq/HFLWnirOQBBvVr3sWDPh1RIpTHsNjc0cufmN0gWOkQAML3pdWf1JRyRiIL
 0dqSrKysvh6RotSw3FgL123WyZYkYUsId/eur1l/Rn7mnnMMu8bZWgQ9b5odyNprUUut
 iWb9DGVQzvDnkXh2x/723Y/Fqtp1sq2OuNJWY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=OjMT8Aq/
Subject: Re: [Intel-wired-lan] [PATCH 0/3] ethtool: Add ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Louis Peens <louis.peens@corigine.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Nathan Chancellor <nathan@kernel.org>, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Rasesh Mody <rmody@marvell.com>,
 David Arinzon <darinzon@amazon.com>, oss-drivers@corigine.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 25, 2023 at 11:40:31PM +0000, Justin Stitt wrote:
> @replace_2_args@
> identifier BUF;
> expression VAR;
> @@
> 
> -       ethtool_sprintf
> +       ethtool_puts
>         (&BUF, VAR)

I think cocci will do a better job at line folding if we adjust this
rule like I had to adjust the next rule: completely remove and re-add
the arguments:

-       ethtool_sprintf(&BUF, VAR)
+       ethtool_puts(&BUF, VAR)

Then I think the handful of weird line wraps in the treewide patch will
go away.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
