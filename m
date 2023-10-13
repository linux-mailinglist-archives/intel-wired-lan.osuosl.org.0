Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487907C8426
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 13:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6491C403A9;
	Fri, 13 Oct 2023 11:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6491C403A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697195597;
	bh=3GxQrjz9pgG6qyCNZL9LGyhauQ+x+u00ALr+zfy6jvw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fmS8PHgDgSmLaOOXuFVFHSY2FmfGlsIUlIRniNrWTkNrKaT1pfD+sn35wK/Ep57wN
	 ZpNyeVMyIlnuauVWhatu5KqsiCxrBYRXTC57C842mPmRhAfHr6EYtcdmGrdsPbVZt9
	 ViMIfpCud3MUdPPb4ZARKCIcBK2fYZO/ZEcJELNjyP397WAVCHVcQsGSYq5txlIz6X
	 l1WFhWCcVj2GZKwxb2SUWosjzWSFq8QI58y1VuM/Gw72xkxzipyM88sqPAZ/F9E0IM
	 vqq3djiuyEb6dHwCIllGGIDWbIgB/rX2UxqXlE6BdFfQk3eCJ6C95v6XaLnaLTsTdN
	 xMmU6NL3TSkGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-wFpxhiUMas; Fri, 13 Oct 2023 11:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B75F6402E0;
	Fri, 13 Oct 2023 11:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B75F6402E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D57B51BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C86960E1A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C86960E1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLs_UyZNUw2F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 11:13:08 +0000 (UTC)
Received: from out-193.mta0.migadu.com (out-193.mta0.migadu.com
 [91.218.175.193])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D7A860767
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 11:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D7A860767
Message-ID: <b6fbabb3-f270-4762-8b31-399d48de1456@linux.dev>
Date: Fri, 13 Oct 2023 12:13:03 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 netdev@vger.kernel.org
References: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1697195585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CeDV7uvq+wU99a5k0tITH4O1+68ZHdKMz7Zl4hCUc0I=;
 b=JKJgQBxFdSSQ2zrX99jZyGeEFf3nDa1+Cm+EoBQM6pSIoy7c2BKOLh9ypwDnbwBBFX9XdX
 DwhP+WWg1ZNY9cW74OAn9AJKXFOyrq6jEn+8g/al8lWhss4PXEWkAqEa8gS/7mwZocvdv2
 zNojf9C4CAFsWhX2Teut0kHNbm5ncgk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=JKJgQBxF
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/5] dpll: add
 phase-offset and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/10/2023 11:12, Arkadiusz Kubalewski wrote:
> Improve monitoring and control over dpll devices.
> Allow user to receive measurement of phase difference between signals
> on pin and dpll (phase-offset).
> Allow user to receive and control adjustable value of pin's signal
> phase (phase-adjust).
> 
> v4->v5:
> - rebase series on top of net-next/main, fix conflict - remove redundant
>    attribute type definition in subset definition
> 
> v3->v4:
> - do not increase do version of uAPI header as it is not needed (v3 did
>    not have this change)
> - fix spelling around commit messages, argument descriptions and docs
> - add missing extack errors on failure set callbacks for pin phase
>    adjust and frequency
> - remove ice check if value is already set, now redundant as checked in
>    the dpll subsystem
> 
> v2->v3:
> - do not increase do version of uAPI header as it is not needed
> 
> v1->v2:
> - improve handling for error case of requesting the phase adjust set
> - align handling for error case of frequency set request with the
> approach introduced for phase adjust
> 
> 
> Arkadiusz Kubalewski (5):
>    dpll: docs: add support for pin signal phase offset/adjust
>    dpll: spec: add support for pin-dpll signal phase offset/adjust
>    dpll: netlink/core: add support for pin-dpll signal phase
>      offset/adjust
>    ice: dpll: implement phase related callbacks
>    dpll: netlink/core: change pin frequency set behavior
> 
>   Documentation/driver-api/dpll.rst         |  53 +++++-
>   Documentation/netlink/specs/dpll.yaml     |  30 +++
>   drivers/dpll/dpll_netlink.c               | 188 +++++++++++++++++-
>   drivers/dpll/dpll_nl.c                    |   8 +-
>   drivers/dpll/dpll_nl.h                    |   2 +-
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 220 +++++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
>   include/linux/dpll.h                      |  18 ++
>   include/uapi/linux/dpll.h                 |   6 +
>   9 files changed, 517 insertions(+), 18 deletions(-)
> 
For the series:
Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>

Thanks!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
