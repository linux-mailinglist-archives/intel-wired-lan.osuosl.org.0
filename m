Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4235487FCFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 12:36:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4709D81E3D;
	Tue, 19 Mar 2024 11:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FV2P5lwRuIq; Tue, 19 Mar 2024 11:36:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABD4C81E40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710848203;
	bh=o5IyDIEIM67VVhRZHfwfjPIytH0Om14JhKGMMTugW18=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F2sUz6vMqzDEbKdfKinIbS9xfnNqIvEFFfKTa5WcE7bPWU+QuZfZjMOazYZFiRw/i
	 z1vVahBQVzRCJPBf0OCTjgZ73/Lg5gw5XiZ4OT78ht4s0zfRKGESFHbrhJXidUW85h
	 GMhF3iHi9Ttv6P1oK3DimrLjVR2gsd438VhwMsssLA5pUn8ufUGE8VcLwbA3TRMayE
	 aet6PBF8ghqjoAEEprBSMFjOPrAV7JmjKPZ0hYRuA7mfxY/SycuRIUAeDjophMP1jw
	 lDk73QVXz+MHfaIT24AmrCGjJOsZgQVjVrY4PEaHVA/y6429Ek06+4K/6Bb7lv4vyo
	 rVdN1tyAJrCfA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABD4C81E40;
	Tue, 19 Mar 2024 11:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2A0E1BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE16681E3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ojLXi-PH9OHg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 11:36:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1401B81E3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1401B81E3D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1401B81E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 11:36:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DA90060DED;
 Tue, 19 Mar 2024 11:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8670CC433F1;
 Tue, 19 Mar 2024 11:36:38 +0000 (UTC)
Date: Tue, 19 Mar 2024 11:36:36 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240319113636.GF185808@kernel.org>
References: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
 <20240315110821.511321-3-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240315110821.511321-3-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710848199;
 bh=6ARo1R91Z3X03YFtm+KdSQz7S43+x+fm/D5nUt8Jw3E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mLgs7PekiPiooXZoJQR9B/WIaoMCj+14qxU7NpR+dchzcH6C/dRv8mkEKmjPXm+Wv
 N5vm5U/g3jsVrbuv6XRDwdY+FzwX1nUYVCMpQ4hvmbBOUzoibBVUu25go3Rfpfho9F
 SR+H8AQlBsL6tA0hfXMzEtGOkZZWEnn6q/RL8O3Kh67are959bhYdqCcP7Aj3/MHyd
 N1XzZIHUj5F7OdgYGiZ/u8QpLi+9DRwSdnNnw9fXwM8O7Rbu49AD7IQ2afrCeDLOd7
 Vk6+TyOaZJABlkLZAsD9kwTnW81/xGw0Q3esmT2aVC9HTfcBKE3megAD5bM3ysrnXb
 i8rEKpJEgHJjg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mLgs7Pek
Subject: Re: [Intel-wired-lan] [iwl-net v1 2/2] ice: tc: allow zero flags in
 parsing tc flower
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 15, 2024 at 12:08:21PM +0100, Michal Swiatkowski wrote:
> The check for flags is done to not pass empty lookups to adding switch
> rule functions. Since metadata is always added to lookups there is no
> need to check against the flag.
> 
> It is also fixing the problem with such rule:
> $ tc filter add dev gtp_dev ingress protocol ip prio 0 flower \
> 	enc_dst_port 2123 action drop
> Switch block in case of GTP can't parse the destination port, because it
> should always be set to GTP specific value. The same with ethertype. The
> result is that there is no other matching criteria than GTP tunnel. In
> this case flags is 0, rule can't be added only because of defensive
> check against flags.
> 
> Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

