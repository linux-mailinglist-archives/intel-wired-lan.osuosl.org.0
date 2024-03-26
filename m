Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B788C07D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 12:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7F3560AB2;
	Tue, 26 Mar 2024 11:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2g9L4gcA8tMu; Tue, 26 Mar 2024 11:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10F1260AAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711452031;
	bh=j7/DOi4mHQpFRpC2gN1HtFtXEvGwmHUVgRQuWzq2HYE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d0FgZ6XaY4ARkmdiw6wpfzi1ov+/eyPtevyVI50d/xgoZdgsVh16cgSleb4Z8VGNX
	 1XpS3iyLL+e+8yGE8v1Cq4lb4LrkgBSV6UxgbZ+BYDElOcLL2ZuqydxCCP1vSuKlEc
	 ot+SolstkBx983ytNiTz1+YNJctmMMIqG6Ypu4ANcYbTdn9ZKYr5UeFNq4kL5fekrU
	 JNOmIlSafRYdCSq8ShHHGEX9k4P6rJNGDjo2BqzQv3LtLfHmurNnFLYNRcLshxKXfD
	 Ot3vTccArsVK8PsOmADVHxDTdqfYA52GbqCRiqqfpTpS3ldmDsE1s0qsD7MLg0T93R
	 xKKup8HnVAsgw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10F1260AAF;
	Tue, 26 Mar 2024 11:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1441BF45A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7585B4078F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0YiqjYjolBoL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 11:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E4F54028F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E4F54028F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E4F54028F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 11:20:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DE74860A78;
 Tue, 26 Mar 2024 11:20:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BB87C433F1;
 Tue, 26 Mar 2024 11:20:25 +0000 (UTC)
Date: Tue, 26 Mar 2024 11:20:23 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240326112023.GL403975@kernel.org>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
 <20240325213433.829161-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325213433.829161-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711452026;
 bh=rKe++Rz2WAQ6DvWQZx1Q6tqtL8Tl7Iu18OHMBTq2orQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dcJukP7+lgDuv2FBqGUKVAvYgPp00hcQ/opXeHXH4F1Xi8qMGRIeqqVEPITIa/rWd
 FGArHLyErjkGHshFFBg35uI2OQtbduTQWtM0j0hN4qoMYR/1CNWHMpkhw3D8U7yXY7
 5eMGYzUipgQHshq4ubWP9XVmJ0A+J1dy+bR0sXnAPbHknZg9QvbytBSLm5ukJYW4SO
 azOHB0VtwoDJKxthemP91Esiz7uzUMB797+/5o7pn9sjXlYXiz7hjKiweqJTR06rkQ
 SXs3HPlzROJZCKKyDCJCTmLUU+LPVQosHnBzNmHkChkJ+DhBDrmg0o35SWhLnrmiRz
 FCWbR08UXsLtQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dcJukP7+
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/3] ice: hold devlink lock for
 whole init/cleanup
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 25, 2024 at 10:34:33PM +0100, Michal Swiatkowski wrote:
> Simplify devlink lock code in driver by taking it for whole init/cleanup
> path. Instead of calling devlink functions that taking lock call the
> lockless versions.
> 
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

