Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 043AE77C60B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 04:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B11060F0C;
	Tue, 15 Aug 2023 02:45:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B11060F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692067538;
	bh=SWSW/wlqD2ABA0nnGoEX5bSN6pAxlzFvJ7Vhuun//nw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aCAgKDrtMvODt1c6kRle7ejsPOgQw22zRX/SuqlBdpSng4boBE4sI1IXmbngl3As6
	 68NP08zd28Ve6QuP4IjDWRXSWwBlpiBnPbUYEpjtm374fT/UhbatDyeV6H2tlKeQtp
	 7an3375csFFNgbZJGnKoRTmF4vV7qOUuoq6zjty1ivQmuO//3Xwax8qpG9wIP9cDUa
	 5AhE8ANhW1gyuWKvg6try3pYi+LPKAyy8GR/lj7cZvaQ6CwxvaWKHDlB8R42TZ8jjr
	 f+sB+g4b8vXV7sgWJjnOET7SPGhGCx4j/clbFQR806uYgM/1sdErV6yg9JiCiCi7T+
	 w6lpijtmkvsDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QvvrLohsFhjc; Tue, 15 Aug 2023 02:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D2B460B03;
	Tue, 15 Aug 2023 02:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D2B460B03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2361BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44F9360EF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44F9360EF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z3dNdXzwr9fd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 02:45:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F28160B03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F28160B03
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DE640616EF;
 Tue, 15 Aug 2023 02:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93522C433C8;
 Tue, 15 Aug 2023 02:45:29 +0000 (UTC)
Date: Mon, 14 Aug 2023 19:45:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230814194528.00baec23@kernel.org>
In-Reply-To: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692067530;
 bh=0jae72dUtO4J4G32Ts+li+r0BcK6uWhskBdEb04ieUo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pw4JSgGeLqMB/Dk+f88EXTTHTWHIq2iCZ07YbYCATn5Coirn7DVm2pbYm04lYa3B4
 UdHBsgTTicgnOdvIm/C9xajI+2wotQKY6SDZM5S0xtG6dJMD/69UqnASNXNBGOcW0i
 xzYAQnjRQGpd+JN0Jvf6exZTIfbRNQkmnQOnHc/kn85RkU0Ar9e3HRaXWxL1q7F1K1
 KA7N9biVz+WU3VW1i4JhRae1UNAkV4r2/oAwLM5aHe23q1lTicB5o1eb5mWdp570U3
 rZpfaieGW2NakV9KhzI3fENLizbxEmBeoDHDoQY7iV80WAtTS1aiOkoTLBNADI82SP
 4VhE7jMLa621g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pw4JSgGe
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/9] Create common DPLL
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Aug 2023 21:03:31 +0100 Vadim Fedorenko wrote:
>  create mode 100644 Documentation/driver-api/dpll.rst
>  create mode 100644 Documentation/netlink/specs/dpll.yaml
>  create mode 100644 drivers/dpll/Kconfig
>  create mode 100644 drivers/dpll/Makefile
>  create mode 100644 drivers/dpll/dpll_core.c
>  create mode 100644 drivers/dpll/dpll_core.h
>  create mode 100644 drivers/dpll/dpll_netlink.c
>  create mode 100644 drivers/dpll/dpll_netlink.h
>  create mode 100644 drivers/dpll/dpll_nl.c
>  create mode 100644 drivers/dpll/dpll_nl.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.h
>  create mode 100644 drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>  create mode 100644 include/linux/dpll.h
>  create mode 100644 include/uapi/linux/dpll.h

Feels like we're lacking tests here. Is there a common subset of
stuff we can expect reasonable devices to support?
Anything you used in development that can be turned into tests?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
