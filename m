Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 528C783608F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 12:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60B45416AE;
	Mon, 22 Jan 2024 11:07:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60B45416AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705921655;
	bh=nU5rYGS3itVFIYSFlq4h7KTmfnCa0z8VRwez/GcVW+Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nnWEnGKH7fFTHwnvplABDRE/dAHwEMxLSuWWkpvQKwqFRpXdPQ+ZIc/a3dff17FxZ
	 Yiodz6HKCzpyIxx5RzE83RTLbvJ3PfhizBUYB/KMvd4i3s8V4oDGQ8/73v25YdS+Ag
	 nA9stu8ZfQWR1QqiyeGo7wdnwcRGFLW6Gpw9XDn7rS0LraHk1MtflIoiyXLVfM9e7p
	 f9ywW6FdReCEMAVyBMOASGqNvWtShNQhqS1EKchp2fg/mvclgPEtQXy+B1AFy5dOMj
	 WjgXlWnz/J6q6vKZ2haOwqG37PdN5mZUlRuBmPyvs06GMVohTHZ8Lzn09q0nH9Xxph
	 owdFs/2z6dBXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2tTmfHfHabR; Mon, 22 Jan 2024 11:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CE31416C5;
	Mon, 22 Jan 2024 11:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CE31416C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82D031BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 11:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A21F60EE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 11:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A21F60EE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8RQz_fxAvzjS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 11:07:28 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98CB460B99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 11:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98CB460B99
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 855F9B80A26;
 Mon, 22 Jan 2024 11:07:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0B4DC433F1;
 Mon, 22 Jan 2024 11:07:21 +0000 (UTC)
Date: Mon, 22 Jan 2024 11:07:19 +0000
From: Simon Horman <horms@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <20240122110719.GC126470@kernel.org>
References: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705921644;
 bh=5gE+Km5fi/TLlf+ZbAr7bjFoCBGdCvtbA843YDHnPdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IuKILk40lppFwkQ3einuh+aBf9EHDFc+HzB4nd9+TtD9RD8cFXoLb9uH0b4wcO+l5
 ZgLolbB4kBvfbwMSNrdrt/DX6AdvlyCth5hF6iWkiIlyoyIRSFCRRp25OxYZNLH3y+
 hS6J8bEWWqa7aGoYc/N0uJ5A58jQBo7moXbm94fXOfi+eVUfAEAHY2Rr8blocQIcsO
 ajf6rqjrYgNlqJcKQ4SMOOBsFcXbNNRAsSAo+eNg6ghbMwFRi9I2q34o76bh7w4Q7n
 VTvdOtNITDJ0/WmwMVcBlOzG7leefF8TlyW8g72DnSu42/vcq2xUuXF7Zzg8g9L7g8
 KhDKkzWdD59sA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IuKILk40
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 ixgbe_read_iosf_sb_reg_x550()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Mark Rustad <mark.d.rustad@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jan 20, 2024 at 06:25:36PM +0100, Christophe JAILLET wrote:
> All error handling paths, except this one, go to 'out' where
> release_swfw_sync() is called.
> This call balances the acquire_swfw_sync() call done at the beginning of
> the function.
> 
> Branch to the error handling path in order to correctly release some
> resources in case of error.
> 
> Fixes: ae14a1d8e104 ("ixgbe: Fix IOSF SB access issues")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Simon Horman <horms@kernel.org>

