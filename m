Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D0D8395DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 18:06:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAC8A4048A;
	Tue, 23 Jan 2024 17:06:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAC8A4048A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706029617;
	bh=/H3nhiZdQaFWeeMyuAOcMccvfDJ7Mq1AK6XRiqMyPQQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=goqsgP2ZyTRUVGwwt9WoZMT54eO+vVd4HHQ8qIrFA0mQp+f2HCwGxWVwtJ6v87CVI
	 F/3uaCxa7Dm96dgll8OULS9QbFWUXVVaWaR0cswzynPZvkEWAUQ1tHlH2nxyKc7du6
	 sBt1fL+YWYtOQHzxZOBH5exBBhnFHvqZDjJC8h4zbZik4WrGhGK5dfeWLKp19QGzCQ
	 NDqBQn9udqvAJZHvlGCOzUIUe2ONUTeM3lIaScU85JojcuHYlnPoq1nHr1NG3Vpqj+
	 1V76gWSnnXKAInUD9eEPKonGQlnH64fCBg2J1R4ee6YKEY7HYta3t3TDr23obY4QeY
	 b+3HZ+MXL43eA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y_UkMDEe99WV; Tue, 23 Jan 2024 17:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4D6A40414;
	Tue, 23 Jan 2024 17:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4D6A40414
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7F231BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:06:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DA9740414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DA9740414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ7-Zqq7Wh98 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 17:06:50 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC6D4403FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC6D4403FB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2449ACE2EDC;
 Tue, 23 Jan 2024 17:06:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C6AC433F1;
 Tue, 23 Jan 2024 17:06:45 +0000 (UTC)
Date: Tue, 23 Jan 2024 17:06:43 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123170643.GK254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-6-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706029607;
 bh=Erfop9FrXjhItjBn5wwdGb8kCczIpV3oW69Bm/Hf82Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QJ7DvcCjdpteMgYgXZmEYHaAnuweBOZMjMOyY/DrbiupdYVawY+x+IuQLM2VASF14
 YQe8jFF/PBJ/aZfMy4b4UK++/fgTuVn3YvmKZRKQn7/zRD3584Icq3294SGwCxQOLI
 ir9yBb+QJ+2r5Vdn8m/moDdnU+rOMwZPz5p2fPiXQtjBP/QstnRrODTJx7CFO/lBOs
 6s1+iaz7yKPri71KeInsaOxoWBqhBsKsMBo4PmIuFsnjIcZ5+IMWxYcxoHNErYxPnE
 3+EhhuX1uMAc+8US8xqFTFcmfPTXBH4NJqlGazGyhY5Qj8zbS2Bba3FDujwJtF68Is
 rgBJCQt1q0isw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QJ7DvcCj
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 5/7] ice: rename
 ice_ptp_tx_cfg_intr
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:29AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_tx_cfg_intr() function sends a control queue message to
> configure the PHY timestamp interrupt block. This is a very similar name
> to a function which is used to configure the MAC Other Interrupt Cause
> Enable register.
> 
> Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
> more obvious to the reader what action it performs, and distinguish it
> from other similarly named functions.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

