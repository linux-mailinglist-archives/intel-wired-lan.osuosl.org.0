Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B9C786ACC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 10:56:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 632CB82304;
	Thu, 24 Aug 2023 08:56:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 632CB82304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692867405;
	bh=LFZeCzbqSJypttoyD5Y93IvMAE/5ma8z1gfQ2E9pNv4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qXbB47EKloqLCWf/ksSwEORxUVjmULD+dXaAdKpbgeo9yYECTFy5OCgas52p2AOl4
	 f2dPAT6lZG+dyB4bkksSOvBXbinzmsSwDnb1eQTqLYmosCpWkSWD1nIP8QLSFDHf9W
	 BuHwpqMpKdp5/vEnDlyD3kdl1EWLsegXWYxk6tXjU5WTax8E+51mTZBCJccVUIM2p4
	 jBUxOwvmQ0sfOyc76FTy0TfXx82oqtFDtB2QCNIghs7oFOeWoW2QM5IIl/W5G+pXpV
	 4WfhIdPhbWwhkEtrS3eI6bj3BCSPimmU+SWaLj7NNT/PI+bkX3BSAVJYtvOxtIwI02
	 tv39gtK91vkWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttGQwjJIYbWC; Thu, 24 Aug 2023 08:56:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E51D822CC;
	Thu, 24 Aug 2023 08:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E51D822CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E146A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA26841480
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA26841480
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x03KMsofn5-e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 08:56:39 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CA0C4144F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 08:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CA0C4144F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 085DE60B52;
 Thu, 24 Aug 2023 08:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A50ADC433C8;
 Thu, 24 Aug 2023 08:56:31 +0000 (UTC)
Date: Thu, 24 Aug 2023 10:56:24 +0200
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20230824085624.GF3523530@kernel.org>
References: <20230823035755.777005-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823035755.777005-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692867397;
 bh=ZUWm0K2MnPGB1veeUpEF6L7XCdzCb5blF6b1tMMnKdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MiCIGj1KmkZdDtpFaVxQRxlUcZfGjVeK74943F8wDmneiMHv0aZesvMI/VRc6zid/
 XTxa811vUC8so1lpn8fCR9CHw7LGGG75pWM8LT4OXuQViiWuCI909tLuDpKQJNDpCr
 DqjWPTuAl3hIZypXo/88wkTWpcw6FxTmrakZKJOxEY8jwctUyclK4yI+6pYNBAl2u4
 IhKb7wkKX4dTVGQ6ZicAsPmVJuhs8ao4MnUhl+0dt1+4I/uFDnvIinWrTKoc9vVu78
 iiOwqFdqGdRex54Ana8I0g0CW8/ZWKnfhQaoOU5B8pWQbdELJ/fRl3s/C2NrTikAUR
 sD1x1wz2eg0zQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MiCIGj1K
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add drop rule
 matching on not active lport
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 23, 2023 at 05:57:55AM +0200, Michal Swiatkowski wrote:
> Inactive LAG port should not receive any packets, as it can cause adding
> invalid FDBs (bridge offload). Add a drop rule matching on inactive lport
> in LAG.
> 
> Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
