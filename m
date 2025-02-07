Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E686CA2C026
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:03:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11D2F60F1F;
	Fri,  7 Feb 2025 10:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sj_rn4ENcOEZ; Fri,  7 Feb 2025 10:03:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B27360DED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738922619;
	bh=t30PxOVbYMN0u0ipzMaMY+mMVQC61/RiDj+NNvCMU1I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JlGLoaH4HLQ8N98evXCEMw/gS9cT0aKM2yuRrM/HKgpdEHf27+Ihw5qsFKHJXSIZP
	 ryx+WMgIkEeGa6fjyKUosjFb7sdrtGHOr9gWCqVwMXQmWV8bLIUD98fh9/U6p1QV14
	 Yh8sZVzrKyAC083Odi0uB7Y1FVanwYOBtgL4TCYoSB5SQ/jZhT4lVhHSh3DSZQbPxU
	 0il/0yj5chsOrpErXtZlOg2gGd1Q7+h/4rMxfqEN4O8GE/EHUpmWphrjloQgl8oILK
	 CGRaoYQMZR+BAhP/2+2xOYwxQC/822e63YJqrQOpwBqEEBb0OL1XhO9lExZZrz19cJ
	 L5vVXrxO7eA9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B27360DED;
	Fri,  7 Feb 2025 10:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23B98E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12F208405A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lATeYmPbECsJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:03:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76C518403C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76C518403C
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76C518403C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:03:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8D2FB5C4CE5;
 Fri,  7 Feb 2025 10:02:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD77CC4CED1;
 Fri,  7 Feb 2025 10:03:33 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:03:31 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250207100331.GJ554665@kernel.org>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-2-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250206083655.3005151-2-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738922615;
 bh=RGnkpRzNX1wHMm+X38Zfh1HcOja9meKUs+/O4gamjDo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gUXXEvG0IMm2aMA9Hl6/0W4n2R8covHwWbrNkeMh8T2AeSD0c68gbaAAB5Qvyy2nl
 MEJu/J3kjGFUsvJFvxZEQ8MFc4YDwsPU03etjSED13gFWSx9giaq9qwxsyipXJngeS
 S/WKB2wlBReiCosfG5K+InJ6Xd0nTl5Es+rGd6AC8lNIsmR7Y+MoAqP3jXt7ruU35U
 JJO9lGQ25v64tpR7oRbnz/jjrUefVJAR1U++cAtbVjDKrGFLvhsnTdxSOrwMXdpgZo
 2nbqCcut25c8pqwQiWif47/uZ/dpcedO9FIIxjhFlfouYYgWitmQmfv+EcKulFDwoE
 yS6b76NrYEXUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gUXXEvG0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: Add sync delay
 for E825C
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

On Thu, Feb 06, 2025 at 09:36:53AM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Implement setting GLTSYN_SYNC_DLAY for E825C products.
> This is the execution delay compensation of SYNC command between
> PHC and PHY.
> Also, refactor the code by changing ice_ptp_init_phc_eth56g function
> name to ice_ptp_init_phc_e825, to be consistent with the naming pattern
> for other devices.

Adding support for GLTSYN_SYNC_DLAY and the refactor seem
to be two distinct changes, albeit touching common code.

I think it would be slightly better to split this into two patches.

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

...
