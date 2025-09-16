Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2051BB5A0E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7042826B0;
	Tue, 16 Sep 2025 19:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6XSDrmS_xxa4; Tue, 16 Sep 2025 19:04:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E210826B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758049460;
	bh=HXOAPEjzekOAjE4mciNBEhLhGsM198o+7B85xHhnuzA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DLjBIqNnIyL0epQqETZq5GiK9sY84iKdfC08PNPZgG9X1xMJflwiWqbQKLwSEH5GD
	 GBrDUNYL/LvnbUfEKq567IZiSq3XovOdGmhjn8CH5cUcbuvW1Qs7nHBeHhZKIUTcPG
	 L1Gap/wgblSPyqTs4d+AJaM9chvWD5Tcrk0KLtswRCmP7masB/TAymIS3Dv5XtKcyp
	 zPPoaJxjuc+WLVVpx65uuGuO8jmlMNF1PsyOpvIA83XK83aa3B7hwjz5UAk9GY12ai
	 eUSzT20FDTF+6QNAs6JUZ8nH6hFaNQ05xHWNX4FiUmhgPpBWhaLjc5ftu7KQLcvSu0
	 llaEXrI0kZJYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E210826B7;
	Tue, 16 Sep 2025 19:04:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA8C012D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0CBA826A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:04:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xaMaKgChmqnc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:04:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b4; helo=out-180.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EA100826B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA100826B4
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA100826B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:04:15 +0000 (UTC)
Message-ID: <d605d4af-69dc-491d-85a3-b1681b89abd7@linux.dev>
Date: Tue, 16 Sep 2025 20:04:04 +0100
MIME-Version: 1.0
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250916160118.2209412-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758049451;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HXOAPEjzekOAjE4mciNBEhLhGsM198o+7B85xHhnuzA=;
 b=aQEk3/vfn2molZrZKNuI31cy6yCYMkCI7CiNCMpqf1iPYO5lrulrKVailmopFUznZ86QU7
 tsSsgwMKsfaAuhZf5ARVKNEwUicYVqghTmaaeLua0aGGC7zp4jipiFyRfROryJqLfIEkKh
 XLiC2oDRJgC3dygNGBLNW4+Vblncp8k=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=aQEk3/vf
Subject: Re: [Intel-wired-lan] [PATCH net-next] libie: fix linking with
 libie_{adminq, fwlog} when CONFIG_LIBIE=n
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 nxne.cnse.osdt.itp.upstreaming@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 16/09/2025 17:01, Alexander Lobakin wrote:
> Initially, libie contained only 1 module and I assumed that new modules
> in its folder would depend on it.
> However, Michał did a good job and libie_{adminq,fwlog} are completely
> independent, but libie/ is still traversed by Kbuild only under
> CONFIG_LIBIE != n.
> This results in undefined references with certain kernel configs.
> 
> Tell Kbuild to always descend to libie/ to be able to build each module
> regardless of whether the basic one is enabled.
> If none of CONFIG_LIBIE* is set, Kbuild will just create an empty
> built-in.a there with no side effects.
> 
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/all/202509140606.j8z3rE73-lkp@intel.com
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Closes: https://lore.kernel.org/all/CA+G9fYvH8d6pJRbHpOCMZFjgDCff3zcL_AsXL-nf5eB2smS8SA@mail.gmail.com
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
> Sending directly to net-next to quickly unbreak net-next and
> linux-next builds.
> Also to net-next as the blamed commit landed recently and is
> not present in any other tree.
> ---
>   drivers/net/ethernet/intel/Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
> index 04c844ef4964..9a37dc76aef0 100644
> --- a/drivers/net/ethernet/intel/Makefile
> +++ b/drivers/net/ethernet/intel/Makefile
> @@ -4,7 +4,7 @@
>   #
>   
>   obj-$(CONFIG_LIBETH) += libeth/
> -obj-$(CONFIG_LIBIE) += libie/
> +obj-y += libie/
>   
>   obj-$(CONFIG_E100) += e100.o
>   obj-$(CONFIG_E1000) += e1000/


Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
