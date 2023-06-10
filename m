Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA5C72A9EE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 09:32:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 467EE84274;
	Sat, 10 Jun 2023 07:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 467EE84274
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686382370;
	bh=fR90d2yRyZyfB5+wmWXBKTMLmr0xO3ZLhd7bM7VBl6w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpS5hbgHu5od7cTgVG/1N8v5BLXGQyYMsaYQyZ25RL/EaK8SGdvTU1wwwJodd4Arz
	 KdOui+adR+JIXkHHE9P7EHwIlX6DzR/0q9M4TCowrMMGex3er59uvU4tJf16//RRLs
	 p5T+Zucze+KK3qiJ5aY0f1/8ExQNjYvgXpYwQAsyZyCn+MKrHzpkR5RPUYOjY6SkFT
	 j88NJDRMjocEbicKHDl9NdpjZorkZlJ2OTAkjCv4WrZgUIlaZsVW7ifK11OXp73aG8
	 qRBdsOH+h6w+WFLAYx1BtOn1Usg3uCTw3IGbwKOBqCxIHsphBs1roPA4XXgs2xdrFm
	 pqlFeMfU6XOgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEuq-vHJKo4L; Sat, 10 Jun 2023 07:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 214AD83C6E;
	Sat, 10 Jun 2023 07:32:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 214AD83C6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21B211BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E769383C6E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E769383C6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCAPXvmCDWCb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 07:32:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6BAC83C5B
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6BAC83C5B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:32:41 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-977e83d536fso369661466b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686382360; x=1688974360;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l7M0YngHom5+WNuAaqS8ORg1O1Fioma4l8vDyZ5uMCE=;
 b=guLB/QaB5pE3X5wiMmSWj5zBKBH+pFLxPT6Ix3hTyFsdhEcr2h+t94JWpykLcGtuLm
 GMRi6hanwQwJmu+qIaMTRTUAGuWvJI5dxN0aZUCsQ2IxI3REK2Tckp/oAJxpwBJG82M/
 begs2z0wSGAhXlOFqp8RH6E+nEWEhB3i40vCFAvEiodfEqE63nWAXH0ZCcCdfYbso6pX
 Ejp0WU5nIjYJ3LiN4JsMQxJefrlJsPqs/aK/vPxbeuNOdERHZgmpYjIRBw1iImEe017p
 PnjCdoGLjMxgonKvtArqYrpwghb/ezMttEyFiBdZRn/j+1GCBtTnyFcYcZlfV2HPJyJC
 CpPg==
X-Gm-Message-State: AC+VfDwk1jGeCeB9lDAOJ8PAliyaU3C5H0LHt9/Uvc0mTpLicEIQgs2g
 OqNlON5WLWyPwaBC0cc1ii7wzw==
X-Google-Smtp-Source: ACHHUZ6TNnOo+D3MGLaaLLt1WOqYeiIrCCME57vcIFwab6WYjt9d7cZidy6pJt20xNgdAB/dJoH9Sg==
X-Received: by 2002:a17:907:7212:b0:978:8a30:aaf with SMTP id
 dr18-20020a170907721200b009788a300aafmr3607778ejc.64.1686382359799; 
 Sat, 10 Jun 2023 00:32:39 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 f10-20020a170906824a00b00971433ed5fesm2223482ejx.184.2023.06.10.00.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 00:32:39 -0700 (PDT)
Date: Sat, 10 Jun 2023 09:32:38 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIQnFqRBhmv3+SF8@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686382360; x=1688974360; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=l7M0YngHom5+WNuAaqS8ORg1O1Fioma4l8vDyZ5uMCE=;
 b=FD2ljasmKR4FCNVKlrbvbiFQif9C0mf2yzEBy4Qx3/P9vPzkYiPKpRpLusAqq+LHU7
 WwEwp25JWtWMjVCKxCuTx0YY3fuyrcT2TpwayU1x39KF3SCY/fcG2yn991d4FPSgfhla
 r0KE1RndWSboXnv9iOkGlNuoupLmUH2YEGQmtcZGgLTcODd51dqFJM+aIHbP7c2tgf71
 QGppQ21EIY9jI+eGnPzKAJaT7WZ3veTnSShuNlv/p4ciM6sXWwP8AVd0XK2uW1zlWrVD
 fcLnhGqEwqo4wbPZy2gc35QP+i9fF+Jg8QnKyIoDm39/3JVCx0GpfJ/G8E4PGnuB3/uE
 7LpQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=FD2ljasm
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 05/10] dpll: api header: Add
 DPLL framework base functions
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

Fri, Jun 09, 2023 at 02:18:48PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>

[...]

>+struct dpll_device_ops {
>+	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>+			enum dpll_mode *mode, struct netlink_ext_ack *extack);
>+	int (*mode_set)(const struct dpll_device *dpll, void *dpll_priv,
>+			const enum dpll_mode mode,
>+			struct netlink_ext_ack *extack);
>+	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
>+			       const enum dpll_mode mode,
>+			       struct netlink_ext_ack *extack);
>+	int (*source_pin_idx_get)(const struct dpll_device *dpll,
>+				  void *dpll_priv,
>+				  u32 *pin_idx,
>+				  struct netlink_ext_ack *extack);

I'm pretty sure I wrote this to the last patchset version as well.
You call this op from anywhere, it's a leftover, please remove it.
In ptp_ocp remove it as well and implement the state_on_dpll pin op
instead. I'm pretty sure no one tested ptp_ocp with this patchset
version otherwise this would show-up :/

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
