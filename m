Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0C1A6D02A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Mar 2025 18:12:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BC7960A6C;
	Sun, 23 Mar 2025 17:12:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42WEhwKCSdXY; Sun, 23 Mar 2025 17:12:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4514608EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742749948;
	bh=OaX+9JmbIUoHbwODVodshJYQjzU7EnCriOn7VoD2pVw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yMNeIv9GiJy+cjCAX9cUgr3gPwEXvwWBTncvt+7YnK+QEEMa8iLv7q2UKmA/3d/A+
	 pQc10rX9txKfPzVuEatz3dBrMXTUwE32lRuXjFDovO1wkyzEJoC3qw8AL7GFHCV+LQ
	 5t8xjyqyJIQ96G/iw4DcnoRn3JzU4SHrIagucnZWsha3MKgnuyH5uUj+4XrTFnH1vb
	 xanDdkJnZaed3rGOPGE+1OdulFDVL4z3zG6073aGaodIHyrsSPj1soIIQHFd6t9pYY
	 OHPZB4qP7T9qT1Mp99pkVexdsIATKh8Zvz3RkC2dQt5CjbP1yDAfeirqQKH0zTTwVm
	 RT3nzi3ousgtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4514608EB;
	Sun, 23 Mar 2025 17:12:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D2161C9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Mar 2025 17:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16C488143B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Mar 2025 17:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iu8lHuKUwT9G for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Mar 2025 17:12:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8CDCE8143A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CDCE8143A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CDCE8143A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Mar 2025 17:12:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 725215C5A5E;
 Sun, 23 Mar 2025 17:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40347C4CEE2;
 Sun, 23 Mar 2025 17:12:23 +0000 (UTC)
Date: Sun, 23 Mar 2025 17:12:20 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250323171220.GT892515@horms.kernel.org>
References: <20250320131538.712326-1-grzegorz.nitka@intel.com>
 <20250320131538.712326-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320131538.712326-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742749944;
 bh=6vTLHja0lc6DMhMyhdlBwZOJMjDznhKcLs1eZuRtQ+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UR2fbwu6tQlRQxdBwmXXQb8EuaNbBMaaksKoK+9upfrxf9wWwEePYLmYhunLNHkik
 WYxN9CZOeGVX9DUurq+EWqkAagi3cRvuiKbnwB0b6+rnmSLRYjUa5GkEp2Afuctudz
 e0Tk0H2CApMbJn6SBP+582qfEgcSBLH425dlXvjti/1NALY0xNNjiptgLpi0EyU3Eg
 /SXYByyTbjggoOWdqivzejoL3u+79JC2LHIv1COC+PQabf0J0i6y0SNx+ufipS0j/N
 3LMwhDQDv/0r3KqNeXpXNUkTm2oFnODuUZuMT/bsgfjiGNJMiHEwVJ1kmEDCL08bf1
 li7/JeeUJE4JQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UR2fbwu6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove SW side
 band access workaround for E825
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

On Thu, Mar 20, 2025 at 02:15:36PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Due to the bug in FW/NVM autoload mechanism (wrong default
> SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
> clients was disabled by default.
> 
> As the workaround solution, the register value was overwritten by the
> driver at the probe or reset handling.
> Remove workaround as it's not needed anymore. The fix in autoload
> procedure has been provided with NVM 3.80 version.
> 
> NOTE: at the time the fix was provided in NVM, the E825C product was
> not officially available on the market, so it's not expected this change
> will cause regression when running with older driver/kernel versions.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

