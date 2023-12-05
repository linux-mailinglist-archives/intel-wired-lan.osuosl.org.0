Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75384805E75
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 20:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEEAB435C0;
	Tue,  5 Dec 2023 19:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEEAB435C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701803775;
	bh=rkhWEPvg04qStLgMRPYpeugSKrnS/6R8CSko7pe5hDw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s7uFdpVNEfzD04P9cpzzM7vHdp4hucVXqDVj9aAdKv5Qd16QLnh4wzerQtttriaVe
	 7DySWWGWVrbYChfYTH4FrzBql31E7YKs6JSV2R0GTtL0cCzV9ovlITjbqKNu3UqWnI
	 uL02jcwUxyVzDkL1p1KoiTmHMYqVq1aymBEszRqQ1Jb5pGa+X31gugqYXIQQAx/C1j
	 /gmrYK6/s8xnYsdG9Ln7EKzKiTsl/B7IBKyb5Z2F+nx94ycYQXJgC1jT5KbY7EzD0O
	 oow6fSOClvE+6I9h+eylIMjk3pJvwWsRVj/dVvBX4Jutl0AmM+tDOr5WXzyS+CdQ/q
	 P0PDsjiZ1eh6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7hLxPpAWTH0; Tue,  5 Dec 2023 19:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65BC4435BB;
	Tue,  5 Dec 2023 19:16:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65BC4435BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 371EA1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E249435BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E249435BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JhUuu3CdnpQx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 19:16:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4567E435AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4567E435AD
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 73638612DB;
 Tue,  5 Dec 2023 19:16:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69924C433C9;
 Tue,  5 Dec 2023 19:16:05 +0000 (UTC)
Date: Tue, 5 Dec 2023 19:16:02 +0000
From: Simon Horman <horms@kernel.org>
To: Steven Zou <steven.zou@intel.com>
Message-ID: <20231205191602.GU50400@kernel.org>
References: <20231201062502.10099-1-steven.zou@intel.com>
 <20231201062502.10099-2-steven.zou@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231201062502.10099-2-steven.zou@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701803767;
 bh=dFHThxBmnjrmmteNpPiNVEIBTX15vyVkyAINGkaYRe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HzHDlKjWO3GvAifXp8J72cUctfpy+jZDLA0bBhY2yeXgqOzotz944ixeLAlzh/Nan
 jYrRdd8fkHORjFD7cyc5aqjKqy9mzCD94T3vrejrcn+MUevuBLDoHSYNVfl2C+JWA0
 9TuRExl15t3bLIpeu5foPvdlPcYTEozi12JwnjWw/ilz8pMjy3xJiHE3qSA3Gdaq1W
 JXWpMe5FMQ8oBolm0cUuIb+P22pszymtWg2bL3X38nKKwUA1jht+gsnklq8yCxD1FI
 wMHSUV+R+Bpo46VAyuKxtcLUnDjWrH7X5fbakpHv3/DPu2opxovA6IXLvgioNLtM2V
 fRSCYUbfz/NZg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HzHDlKjW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Refactor FW data
 type and fix bitmap casting issue
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, andrii.staikov@intel.com,
 aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 01, 2023 at 02:25:01PM +0800, Steven Zou wrote:
> According to the datasheet, the recipe association data is an 8-byte
> little-endian value. It is described as 'Bitmap of the recipe indexes
> associated with this profile', it is from 24 to 31 byte area in FW.
> Therefore, it is defined to '__le64 recipe_assoc' in struct
> ice_aqc_recipe_to_profile. And then fix the bitmap casting issue, as we
> must never ever use castings for bitmap type.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Steven Zou <steven.zou@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
