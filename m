Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7347586E444
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:26:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E3BD610F1;
	Fri,  1 Mar 2024 15:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWmUc5u8bWd2; Fri,  1 Mar 2024 15:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F78761070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306793;
	bh=rBcILteF0nZuPmD1a0EF64QSg7bUeN70mLXpxkWp0I0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CftcMgEIBTltyESPFya2OeqRBnenrsYXYHWbPjXd2PjfXMRLZVDvPirP82V1a7rsr
	 vky0DES9hPGogRdFOSBVy0wSgicQOTmpeHdURswjVf1DsGtVFmmT8oFcw1J2O0tai0
	 joGK1pBwlqffOuYvdyb2g4mWsXdu1+3Bj81I0UZU+q2EjJqNm5eYzz+/q31oeCT1bH
	 57sb3XDqcqncBbph5ThZhdIDwW9l4eepyn7NBIvVcqHeimgCaNGV5W1rNnkeTd9ScR
	 7CQJm8DElWSxxK5YdoTZSPdENYJGXX4r10o3adOhBaPWTgCDClHTgKcpeKicFWIvx+
	 rhvOU6fWkIOLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F78761070;
	Fri,  1 Mar 2024 15:26:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0B11BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56A0D82F51
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXFRHYWW_HOR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:26:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A0AF82EBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A0AF82EBA
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A0AF82EBA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:26:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9D10CCE2583;
 Fri,  1 Mar 2024 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B606C433C7;
 Fri,  1 Mar 2024 15:26:23 +0000 (UTC)
Date: Fri, 1 Mar 2024 15:26:21 +0000
From: Simon Horman <horms@kernel.org>
To: Rand Deeb <rand.sec96@gmail.com>
Message-ID: <20240301152621.GC403078@kernel.org>
References: <20240228155448.121603-1-rand.sec96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228155448.121603-1-rand.sec96@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709306785;
 bh=zgiUj9sVZV5Oq0DjxQko+Hccbg5xqEMZ+xVejxKhGoo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DrUU4ngcFNuRchLFpsKXqbpsoJake9L5IrlGQHhdba6XZQQA7QmPYrzqnRwFZkOJz
 IEZgslEEPDxH8GLYLMk5OhBn5pvWiJbLO1zTozo/x1dSVXBkgS/imxQ4AM26lQMA1Z
 Aavg7kEoioO9ltWD3rRBBGTFU1mpfxURNQwdfzKxt96pWuriqGXNedqPma6cX5xuqm
 oGXzNUV/HCG5aXiou4uJffUrPU/Ho1FWwX20zmOR2ixHRcVxMcYWJlTx8x7sJOeKI4
 ObjXl+sM3wpWz3EzsbaB/GMGxDWG0xq6r67PP57lOqGGzwTjpmfIwl9Bfu8BJJAcde
 ofC6W9/d0mVrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=DrUU4ngc
Subject: Re: [Intel-wired-lan] [PATCH] net: ice: Fix potential NULL pointer
 dereference in ice_bridge_setlink()
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
Cc: voskresenski.stanislav@confident.ru, lvc-project@linuxtesting.org,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 deeb.rand@confident.ru, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 28, 2024 at 06:54:48PM +0300, Rand Deeb wrote:
> The function ice_bridge_setlink() may encounter a NULL pointer dereference
> if nlmsg_find_attr() returns NULL and br_spec is dereferenced subsequently
> in nla_for_each_nested(). To address this issue, add a check to ensure that
> br_spec is not NULL before proceeding with the nested attribute iteration.
> 
> Signed-off-by: Rand Deeb <rand.sec96@gmail.com>

Thanks Rand,

I do wonder if for some reason this cannot ever occur.
But assuming it can then I agree with the fix.

Reviewed-by: Simon Horman <horms@kernel.org>

As a fix I think it probably warrants a fixes tag and
being applied to net. As such, the following seems appropriate.

Fixes: b1edc14a3fbf ("ice: Implement ice_bridge_getlink and ice_bridge_setlink")

...
