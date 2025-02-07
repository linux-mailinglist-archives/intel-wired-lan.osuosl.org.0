Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80CA2C038
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C3C560C28;
	Fri,  7 Feb 2025 10:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8e0ZM_NQEQTi; Fri,  7 Feb 2025 10:07:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9667E60AAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738922845;
	bh=ikA3zlktc2CxiaNJdAtD9zK3/m1BdQ2KUP/Beh7+FUU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U0IfUzP8TmMI9SO5G7tEZXYEQFDDi44KZ9S7HP6hbh+Wcxpa5NKBYe2MVbeh8xWa1
	 eDdTRi0iJVWP9M3ffLTqxgpKZhwEkl5L+UxjuEvBh9prOec42yUz3M5ad+vm08dSNJ
	 g+CtaLt88e0/awjJJzM9vCcp2BWm+B/WpSkX4HrkFMWPVqfjnZMlhgdWoZ4Ftix/Rp
	 e19QbYUAtX8K9gOZ1yk/t3mdUe/qxBvQ28XznjzS9wW9Q/zSRM60UIXyfK4z4K0y6t
	 1gyWBubn1LvAAtaIvJMEXisfgWDZKVy38owty2PDTF1yKXhaaQLT8/nPmVC3HwFYCF
	 SYgiys0WcqOvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9667E60AAE;
	Fri,  7 Feb 2025 10:07:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 25F89C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1694B80B25
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:07:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyHA0Jw3h44k for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:07:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7322180A50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7322180A50
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7322180A50
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:07:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 78D0DA42C5D;
 Fri,  7 Feb 2025 10:05:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB608C4CED1;
 Fri,  7 Feb 2025 10:07:20 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:07:18 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250207100718.GM554665@kernel.org>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206083655.3005151-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738922842;
 bh=de+Z/14+ZPdvLxUTgHvhp+ZATkWvmwtCW4nxIYb53sE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KfBnP1/hNFz2iTCtPgEEYCOC3/eVudRfm+V+a+nGNW89hIAsr8NTuttaloo0h4WQB
 oCqgI2xdjjY3nxKVxV7okTIOhpBEVaDTYqLr0lkD4zP1wE1sUsjSSaIhayytznzP69
 actwWZ2mfEM7BAQ8CDxCBWLv0TtN0bAgofye+1Zp04Mokfmhu5mnvp4U3Fx5ecH4aj
 mnp32MxkmQz1d/6h5KaTC2iVpaeNgpvftAKb8ko34xfULkTKaWnSMumxZeeZ/GS01l
 pC3iIbQXnXWjFTIqC0RVU7Vo+42q3ILAjKb1MD3i4bIKyaLEc8lexxOzbMUL9Pmf0i
 EsdPv9ZpqiVhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KfBnP1/h
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: E825C PHY
 register cleanup
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 06, 2025 at 09:36:55AM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Minor PTP register refactor, including logical grouping E825C 1-step
> timestamping registers. Remove unused register definitions
> (PHY_REG_GPCS_BITSLIP, PHY_REG_REVISION).
> Also, apply preferred GENMASK macro (instead of ICE_M) for register
> fields definition affected by this patch.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

In reference to my comment on patch 1/3, this patch is also doing sevearl
things. But I think that is fine because: they are all cleanups; they are
somewhat related to each other; and overall the patch is still not so long.

Reviewed-by: Simon Horman <horms@kernel.org>

...
