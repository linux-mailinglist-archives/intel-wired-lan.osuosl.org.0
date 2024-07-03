Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2540A9267F6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:19:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60D9241B4B;
	Wed,  3 Jul 2024 18:19:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4Sgl4HZUoaZ; Wed,  3 Jul 2024 18:19:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9554A41B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030793;
	bh=cUrUz0ZfIJK2hE2xZihG0TmZfFOGh0/lLNVQvDMA4F8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wNO+41kBHwgpRbuR+RgkgfqCbGUZw/8FvWkn7FbcSHAn/qcHSqjfsAymtGZlX21dx
	 QTSUBRYiCOUl3Ja7MhL6/5GKqdo2DFbALqLCZgs3P9tuAmg6ro6QS+rOQbF3vzZs7a
	 /E56Ya5gdcInkeWRHmOncl5bAB810znd0RsMrBO8qt29IDUNYFckDpCNN+h4VefPHc
	 fT6lgiQx0BTbL9eYkJqelUngl3q/WefqC5rVRPOGOvo6PoVVUq9QltPHYL3Yll4KFn
	 Db0ylCir5qVY2uKltD0vJX7NF6QKgE7U0lyC954acpKToKF9U+RV/PKzk4Ii0UxLuK
	 L85hkdSmzJY+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9554A41B41;
	Wed,  3 Jul 2024 18:19:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BFBDB1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B785C4198B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:19:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 54l46o7NYREO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:19:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DA0484198A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA0484198A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA0484198A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:19:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0B3A760C2D;
 Wed,  3 Jul 2024 18:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EA0BC2BD10;
 Wed,  3 Jul 2024 18:19:48 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:19:46 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703181946.GJ598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-10-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-10-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030789;
 bh=cF2H4jyUtOE6hWkWsSubltzoLKDLzna4vo4o5UYxqaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lkGCeR2yOyw9KTbWKcsVYhlpS6U15CtYJEdNhdcnJFGeUU4Wup1M7MpvOlTZtZARM
 zYi39TdignhAs0G+t99rm48lTBbZk+pSJLI7AjTMKPOxgAsBCcvBnwUzyV7Slkq1SA
 UmgiNVAPO4d9b3NnbFxw1FDtryzG0YRgUw5BDBzB33rUDI91rIY5HC+YYfwRI57Zqj
 AbGj29g0j0YU4uI45M1jYx2uIGnhBM7rgmj6fA9Vzu6/6EadpQBTz708P8M8CSKm0y
 WINLlikU/5BW+toyfJrGABPGZTbc4NP+8vYiZ2OjoUJobFLsitWXMc6pmZe4gs693e
 wpG3y+FJoQUuQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lkGCeR2y
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/7] ice: Implement
 ice_ptp_pin_desc
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:30PM +0200, Karol Kolacinski wrote:
> Add a new internal structure describing PTP pins.
> Use the new structure for all non-E810T products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Removed unused err variable

Reviewed-by: Simon Horman <horms@kernel.org>

