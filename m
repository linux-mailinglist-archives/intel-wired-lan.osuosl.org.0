Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DEC8394EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:38:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F84040491;
	Tue, 23 Jan 2024 16:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F84040491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706027909;
	bh=JtSi1DPjchm+io+iEWDnkuWbq3vhD11YxTPw8EqKf3Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L2tS9vRdV+VCn07oWXCeAW0eMMZgqeWPM4/BM6BXOOcEZY6JwDIiW0SmxWERKMCp0
	 otUss/TPef5LtLmg1zusaiFP05vKqm5iSc05jewzEgO5u+z+Y+ZD98oznLVEEC4fdA
	 Mq4rbJSx9fRwJep/KsKmMzyfgBo8hHteKPooYbMQUU43H3sd0Lur7I9nlgjFJLD/bl
	 6ur9w8CFp/4oUUbS0BzSbasZaSCAClW1CEqNY7yZCtUN6rx0dGaLnWReSjW/iB6cpA
	 2LjLrxx+KNguzfHThPxolqheFmymVvGr2ug6DENKOWql8As6Ld3eVjs9RLVPpLIXK5
	 blJfULGEYZHdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mnLTsgNCA8Ce; Tue, 23 Jan 2024 16:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30CF7402C3;
	Tue, 23 Jan 2024 16:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30CF7402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6A5D1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B96E5402C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B96E5402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T0xrbBstrW4t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:38:22 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7E6B40217
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7E6B40217
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C379A61378;
 Tue, 23 Jan 2024 16:38:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14C09C433C7;
 Tue, 23 Jan 2024 16:38:18 +0000 (UTC)
Date: Tue, 23 Jan 2024 16:38:16 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123163816.GE254773@kernel.org>
References: <20240118174552.2565889-1-karol.kolacinski@intel.com>
 <20240118174552.2565889-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118174552.2565889-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706027900;
 bh=neiDqjqlrAq+P9Dr03DcL5TOcjt9yIK/jkFGhWRFMI4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=esa6oijTUzGsIB68xmQGVR3YIm2FmzzQ2URUJt3Y/kqVyeMQkpJiibfFcpoLjaIyA
 6/Q1zWaLXLtsABbNN93v3d6vZS48Jq60K7rUfZsbCBFehQj2Du7XmAZzU5gHmr7aBZ
 gVofmds9R4BKYUupCr+nhqWpkvPYZoeiqWl7fV1MdEMTJjSDx5e7c4OIvoyvBgQ+DF
 4Bkm9pxOFLT1nP+TSuJvdoWK/W9UleXq1QDoj2B/hgUKOU2x8m+/hi2/BW1XiupsqR
 8QjOHpz/42/G7BL5M04HDfS3CJYrxWQ2F5jg9kT7ROMZKkWQNgL74vUCW71zLGG+lD
 C+sb9/DCJyQsA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=esa6oijT
Subject: Re: [Intel-wired-lan] [PATCH v6 iwl-next 1/7] ice: introduce PTP
 state machine
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

On Thu, Jan 18, 2024 at 06:45:46PM +0100, Karol Kolacinski wrote:
> Add PTP state machine so that the driver can correctly identify PTP
> state around resets.
> When the driver got information about ungraceful reset, PTP was not
> prepared for reset and it returned error. When this situation occurs,
> prepare PTP before rebuilding its structures.
> 
> Co-authored-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> V5 -> V6: refactored prepare_for_reset() bit in ice_ptp_reset()

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

