Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3DC7D87CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 19:50:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C9EC424B6;
	Thu, 26 Oct 2023 17:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C9EC424B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698342603;
	bh=+OhoYxm47Cw5KbrIEIvSe3jGpm9xHRT53H2DeHU2Pis=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gu9Ti+ksy5frYorhcFmTjvGQQGNeCOBpYpZOBEJ7q/jSIAsFkuK6nClXcv6L45f20
	 Zm5QWo5k3Dql8DTPHV7oyqkyRfrbw3xm3+G00VbSI2j0GreDprdr2HWHdt8sQ3UD5O
	 U/BvRqAUEVwrKS/Yllw40Z6d/0/vAxozNihjDperFSvAi5A6RSBU2n7PANQNxfxWzw
	 Q8iPhLViCuYbvm+LU/cu0mjInVsCZWGX4MM8FvrA/roFzz18qjarxYkgMNNpzMqyIk
	 jSafU4owlxQMNfIs3w94jvY8xtwKUESx66XHSlSzg8EaOKVuNW9pyJWS++68XAWE4g
	 Nk7J+O3Q9dP/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QEpoXWrAS85m; Thu, 26 Oct 2023 17:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE80D424AC;
	Thu, 26 Oct 2023 17:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE80D424AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 329661BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06D68424AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06D68424AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TspXVRkf-y4d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 17:49:55 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A62F416CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:49:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A62F416CB
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-6b20577ef7bso1132305b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 10:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698342594; x=1698947394;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XCBnAelfrExSVbW+xUZ57lPgMmCuRd7/6v3ahFmt0UQ=;
 b=pttWIghZx0NZVifGGwvnxxus37NULuAY7GrAbjhr0QIzvKiCTDlBCy5ugH9i+n6zck
 yS3dQw4lhwwilro0VLzhsACE7oMktsd0l+Nx1zJns2CX/+vyDZpMHPKMhPiG870RaI+H
 Jjwyga8paWPR4NVx24QGf51BaIxt/BvVLnB2c5dvRCuyg3nt0vjV7RRXYsKZi7XJQCAk
 0nfNzJEUgejihzrbbui8d1YIbLJoVWK6FnhbH7AUKgjAi4QQEW+MIxDGV/73YcShN4z3
 rAZVXE8qTw6thFy8h7RFCFlzvMg9P3GMIAuxlN4Zt63t2VIJ+jmxxTQkG6KInmcgVlCB
 8toQ==
X-Gm-Message-State: AOJu0YzmH87CfwTrHg8hzo8cfPIggZSNcHEf/A8YZSn7lFtVfp+G/xku
 UeOQ8yczVlQN6a4eioeA/SbeLA==
X-Google-Smtp-Source: AGHT+IG87R8BwwTXzaOKmt0xY+aN41MPhqHb5ClUMx1ejA2Lx369UqLmh7RXbmhIojMj+YrG8hOxiw==
X-Received: by 2002:a05:6a00:194c:b0:6bd:f224:c79e with SMTP id
 s12-20020a056a00194c00b006bdf224c79emr255124pfk.11.1698342594396; 
 Thu, 26 Oct 2023 10:49:54 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 k17-20020aa79d11000000b006933866f49dsm11781901pfp.19.2023.10.26.10.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 10:49:54 -0700 (PDT)
Date: Thu, 26 Oct 2023 10:49:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Message-ID: <202310261049.92A3FB31@keescook>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <202310260845.B2AEF3166@keescook>
 <39ca00132597c0cc4aac4ea11ab4b571f3981bcb.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39ca00132597c0cc4aac4ea11ab4b571f3981bcb.camel@perches.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1698342594; x=1698947394; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XCBnAelfrExSVbW+xUZ57lPgMmCuRd7/6v3ahFmt0UQ=;
 b=S/d36XQC6IAV/vfq3Wz8MazkvidvGeUdLRjflhiwDsrmm1OiK0C7vBNXwHPl4epnyB
 nJIyCh2fpcXx51HM6tlEW6iQocjgeGqP4IqpKcHou1Ty69dZB71JlykLlg932/OD2sev
 EwL+NTVIQ2YJREo9dx+0DPAtsyYPOTn/9VS8I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=S/d36XQC
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
 Wei Liu <wei.liu@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Nathan Chancellor <nathan@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Justin Stitt <justinstitt@google.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 09:33:17AM -0700, Joe Perches wrote:
> On Thu, 2023-10-26 at 08:47 -0700, Kees Cook wrote:
> > On Wed, Oct 25, 2023 at 11:40:31PM +0000, Justin Stitt wrote:
> > > @replace_2_args@
> > > identifier BUF;
> > > expression VAR;
> > > @@
> > > 
> > > -       ethtool_sprintf
> > > +       ethtool_puts
> > >         (&BUF, VAR)
> > 
> > I think cocci will do a better job at line folding if we adjust this
> > rule like I had to adjust the next rule: completely remove and re-add
> > the arguments:
> > 
> > -       ethtool_sprintf(&BUF, VAR)
> > +       ethtool_puts(&BUF, VAR)
> > 
> > Then I think the handful of weird line wraps in the treewide patch will
> > go away.
> > 
> 
> Perhaps this, but i believe spatch needs
> 	 --max-width=80
> to fill all 80 columns

Ah, yeah. Default is 78. Current coding style max is 100... I'll adjust
my local wrappers.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
