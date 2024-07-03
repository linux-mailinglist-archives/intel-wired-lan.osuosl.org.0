Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C658F9267FC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7406F41B59;
	Wed,  3 Jul 2024 18:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I8-qgQQ8Fg9d; Wed,  3 Jul 2024 18:20:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91021401ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030840;
	bh=+9c2pCcc2dgGtabt1j4lWHORiNzFUUO1KoOjl+jH688=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gnGh8gDVMYLcwN7dBApwFIO1ZFYY+2y0cxM3BPgUzL1/3R16qByuDlInA1bRWaWyK
	 8YGCIjfiv69cyWUEd9C1kXtfhfc93V0JZwXHro06BPjwqu4bdVIyDMNFw89/XMwXu/
	 LOmMnoMb/rL/6K2onT9PbKUx0WwoRSx8EahvLgrQUuCtC5SvPkXV5HxUbYZvYQrJNv
	 N59xBSE2amUS4+fu7rKKtnPMRvYOYF0twujQcPV9b78/rnfJeBfjDx1mMZLjY3/GPq
	 PY0r7HXahb1ezj8X1s+il5qUcaFc+AO828kEN140noZsttLJljFQMoOoZNI9C6gh/s
	 bZb3LIJuzyjew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91021401ED;
	Wed,  3 Jul 2024 18:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD6F1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24124419AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7jXw8jb3fnm6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:20:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 70BC1419AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70BC1419AD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70BC1419AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 97A2160C2D;
 Wed,  3 Jul 2024 18:20:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2B20C2BD10;
 Wed,  3 Jul 2024 18:20:34 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:20:32 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703182032.GM598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-13-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-13-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030836;
 bh=3SaaX/yGkke6j5+pzv/5pvphG17t4bjiF8PTudDUSMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X/xgocVDw9BxcR0MbGGAD2isD5kYRHekbI6gffXdWDK1KiWqtXISUKERwUrStkTlz
 2nZcITzCY1E4SGQHpWA+CmihoGkkZGut+w8qS4/Gr/oRzk/MniAUFQyfvzyW68Jij9
 6Rwt/QVRSEVY1m8od4tNcqfrWooH10PdJK77WJrbvSj6bwGuLvHKFijsnuk54JLcfi
 WCNEDXa4lyMqd1KJs7UCs3R1/10fnpQ8QMFSROlqNmJcAcN2r8oXDLRU2kRZXrFuTu
 Xx0S4ndA/iOKgUhRP5BG9lYD24lwy7p/8t/B6Ez2YvFYlDwst3HudRr/zo4FAkJdL8
 vEtS7yLVRRL4w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X/xgocVD
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 4/7] ice: Cache
 perout/extts requests and check flags
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

On Tue, Jul 02, 2024 at 03:41:33PM +0200, Karol Kolacinski wrote:
> Cache original PTP GPIO requests instead of saving each parameter in
> internal structures for periodic output or external timestamp request.
> 
> Factor out all periodic output register writes from ice_ptp_cfg_clkout
> to a separate function to improve readability.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

