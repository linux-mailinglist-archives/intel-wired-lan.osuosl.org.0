Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E33073CA0D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jun 2023 11:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4F19811A9;
	Sat, 24 Jun 2023 09:23:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4F19811A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687598629;
	bh=7mK82tYmQlJL7cEHYwl3JRSshqyx0m5SyFVq1x0yUSY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pfTX+e27TH7g8mgkdGvmF32/+0WVMgy2WWNZu2oVN49Ce5mHEMOTsR0EqNbSBDGaT
	 gY4cAM74YN8021KBsBXeWLLs6CNcRu8UOvjWTlLrQ4+meyfAz3wuyKPBLZtv5Vamq6
	 U/XeBrF3gn3NlejL+Sw95reSXctjfKi8Q6S0RXZoqCXxbudYPmPqiUPY7K0lXQOUQO
	 aus4NvfxhVhrAtmgcFyzfsvqI/iCKPhYAAy0LpxYW/Lwumrecl+fLe11t1U9PqtzPA
	 5A75Xui25Lg8kMRo/M7+MndHCcY3YMWbVbnoulbBVltLguh41qIB7NzQk6II9/yC/6
	 4R8BXOeA6/vcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGI4ke49A3Jn; Sat, 24 Jun 2023 09:23:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1D6580F03;
	Sat, 24 Jun 2023 09:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1D6580F03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C30461BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jun 2023 09:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A91040120
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jun 2023 09:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A91040120
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m5KDUeP-RZwB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Jun 2023 09:23:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FC2540111
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FC2540111
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jun 2023 09:23:40 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-98746d7f35dso197104866b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Jun 2023 02:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687598619; x=1690190619;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EuyyoXYkLcFUjNW6aU0LWhkMHFG4qPaiZWIPRvxeeTA=;
 b=KxL9GMoYkOCIqLlEw4F2Nbv9NKzHt4l+GtO4upI7FWMMdGNeq5RdDDpq7ChWVnOSi2
 gM2fZeSXV3PVt2aLzbdVuFMoZti8A/hkpm6eltMTj6JiMDJWGObWAHHF3DTfnTILbuVU
 ICTRzOZZQRrF5nMZRA4ocDX4DwaCOgMHJETq5MPwcWiwmj1E9m8tK0lyRRSsAkBGBreH
 ef2H64f+QAmEqM+HvBwQ+ukNwZJeYMofxdxsUCc5BOcBHe/2+9RdyXzbGYIbU1daHR7q
 xqZ1F+S+45DykkppcSzgTk8BcGmFULjtu92pF1iJ5MP85XGA0U7at0VybyRFOsuCuD+I
 8T1Q==
X-Gm-Message-State: AC+VfDxF2nJRBm3K31JrI6TmhZJ8W/KrssNLSwzWiCQETyN8E68NVEyb
 zcXssMMXx30hdPnwXxrdMoAMzA==
X-Google-Smtp-Source: ACHHUZ7Hm22TLuZ2uNMqorvhvVqmtSRdvFVMVJyZ7P02nHMQr1v41Obhbu8aAZ5ky21fmiU2Y7E37A==
X-Received: by 2002:a17:907:2bc8:b0:98d:758:75ed with SMTP id
 gv8-20020a1709072bc800b0098d075875edmr6033410ejc.75.1687598618680; 
 Sat, 24 Jun 2023 02:23:38 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 q22-20020a17090622d600b009895af2580asm671367eja.36.2023.06.24.02.23.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Jun 2023 02:23:37 -0700 (PDT)
Date: Sat, 24 Jun 2023 11:23:36 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZJa2GEr6frhHQrS0@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJW37ynDxJCwHscN@nanopsycho> <20230623085336.1a486ca3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230623085336.1a486ca3@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687598619; x=1690190619; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=EuyyoXYkLcFUjNW6aU0LWhkMHFG4qPaiZWIPRvxeeTA=;
 b=g66y85pUmxbEk8gM1Z1/c1SSekEW4T1k4oAFY2odQs17Fe0i5NQtNAg8YfQ0y5PXDO
 JQ0h5TKyFH8kEJexF4E5uUAYUUTvoLrtDbttalI/TpRRut0MeLBi39qT+qPR9h2crIJ4
 twd4vI/Sgf2PrnmqyK4K7Wfk3B5izATUbxSr/5XJzNoy2H7OMyCEm4o7a+q8aRj8ALE4
 dqMLqsB7Vh2D8EfuzTaNFD6MfGlIax3uCuCFL0a+TPqcfaqOdGNmhNNnmzTkV7GZQG27
 WzW2S7rjCG8vBIjq8J0kwEv7E4teVB6wT4a9BZsQ0gYmst95bLhaIEBSGkJK5s+jxcOj
 U1Zw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=g66y85pU
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
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

Fri, Jun 23, 2023 at 05:53:36PM CEST, kuba@kernel.org wrote:
>On Fri, 23 Jun 2023 17:19:11 +0200 Jiri Pirko wrote:
>> I don't understand. The discussion in the RFCv8 thread is still going
>> on. The things I mentioned there are ignored. Like for example:
>> 1) mode_set op removal
>> 2) odd ice dpll locking scheme (either fix or describe why it is ok -
>> 				that's the unfinished discussion)
>> 3) header file bits squash I suggested. Vadim wrote that it sounds
>>    reasonable, yet nothing changed
>> 
>> I thought we are past this. Why I have to point the same issues over and
>> over?
>
>FWIW I'm lost in the previous thread, so for me there's value in
>refreshing the series.
>
>But you're right, at the very least there should be a summary of
>outstanding issues / open items / ongoing discussions in the cover
>letter.

Well I would like to conclude discussion in one thread before sending
the next one. What should I do? Should I start the same discussion
pointing out the same issues in this thread again? This can't work.

Even concluded items are ignored, like 3)

IDK, this is very frustrating for me. I have to double check everything
just in case it was not ignored. I don't understand this, there is no
justification.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
