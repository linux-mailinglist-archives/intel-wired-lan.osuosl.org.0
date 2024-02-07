Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3984F84CD9F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 16:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B446783777;
	Wed,  7 Feb 2024 15:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8pxr-gAkKrw5; Wed,  7 Feb 2024 15:05:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF16783474
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707318346;
	bh=i2S00ligjC8o6J+Fndqd1bd8BX6bFYtJ3JEaZadHA0o=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lBUtQw10xTgspyDCKvZivAwH62XRJvNH81r78Mb2wHNfS3gBdHmN9WlyJZ0kAuZae
	 qF55+VSYEQ5YrVeeJ9elZec0LmUgI6/pML87lxDMCdA2gDFETCFNsKOacjPxedka8s
	 KZndNeAJZqRtDtl4JtQRmfFCZhHvTUNhN5Gj5sE1TuHSLB9T1CTGG/6eNyV8iCmTTA
	 EJwpFALsLJzRtKpYGG8RQXTJjVwFecRqcPRzVv3qcCnPqOlVt12W7nwa3bDHLQyfJw
	 XBX50oxeOJURUUqar6MtAcQMdeFfpuVrd25UnUp+ercUpgLhm1zchzQGWsukqPgBXb
	 QKrNJxnZYGp3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF16783474;
	Wed,  7 Feb 2024 15:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 653201BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50D2541D89
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qlNW7XDRV2LF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 15:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E00141924
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E00141924
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E00141924
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 15:05:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1B5D3CE12F3;
 Wed,  7 Feb 2024 15:05:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AB56C433C7;
 Wed,  7 Feb 2024 15:05:36 +0000 (UTC)
Date: Wed, 7 Feb 2024 07:05:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240207070535.37223e13@kernel.org>
In-Reply-To: <c90e7c78-47e9-46d0-a4e5-cb4aca737d11@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <c90e7c78-47e9-46d0-a4e5-cb4aca737d11@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707318336;
 bh=xdYb7yvdmUvbOrysZ8nVH2p13juopXq78Qj4JrTKaYg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TBQ8kVxUG3u2NzR7vI0RyO7FcuDhOI5tK4ZCjq+i0nGarriA6z0+OMNNLw9BQRhhF
 QYGEG5Q+jAxdGz8V6LHRYhGKjEuMzD58gtHIRXbWHPsBQgxQVVrn+kcnCB+uDnxZqn
 FJo3I3Li5AEcbnecnLjkzDPzQigIPC2hUURhCt96+LnPIVPXcTRPVdIF3lXXojkHEs
 hv819gKkeEvra5H4sVpaDSFTBBZilFrO46/nIBURzzMJ6ag79dw7nBKF35uhGAVAHJ
 uagDuNzGyhi2e4cjjG/HVhyAhkRt3J+jkWDn3fCc3zjUL3IfcpO4eI80MrOoc1uncB
 kfa5ZsGA6uXQg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TBQ8kVxU
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/21] ice: add PFCP
 filter support
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Yury Norov <yury.norov@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 linux-kernel@vger.kernel.org, Jiri Pirko <jiri@resnulli.us>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 6 Feb 2024 13:46:44 +0100 Alexander Lobakin wrote:
> > Add support for creating PFCP filters in switchdev mode. Add pfcp module
> > that allows to create a PFCP-type netdev. The netdev then can be passed to
> > tc when creating a filter to indicate that PFCP filter should be created.  
> 
> I believe folks agreed that bitmap_{read,write}() should stay inline,
> ping then?

Well, Dave dropped this from PW, again. Can you ping people to give you
the acks and repost? What's your plan?
