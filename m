Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1548147AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 13:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 858EF41E81;
	Fri, 15 Dec 2023 12:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858EF41E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702642042;
	bh=dAWb9FUXTuCmhtavmLGn+9OGxmU3w1yn/wyFayXlCro=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Prdy2k4xeeHOi70hfVDX0vGbmFnhhtU1WyI13H7kfPNddn8xcmlPoUS3gQMTU5p7Y
	 bzAgvO7HZ+V+4C8acijwYeq4ReAFjXVyFH4pHd9eDTJNpmwUDKSvToDsH9Ua2UpgkR
	 1vL3E4MpyCh4zm9lnj7neomOjuFReCmWsTbgmyzJITm9dAaYf+r0oSIkUosIekCE2u
	 spt8+iFrhfL91pE+WT7wwzKjqXhOH2/Z5azHDAvup1alMmlBSPV9h4sA7h1Y186O5n
	 BhXiVUSCkbmUX+95bnaRrvFj37HngkiNGMxQE1DGxE/FwJFnMB1z3YI0q/rELJg3T9
	 tYHj5nS3Yh24w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JH70xYy59koy; Fri, 15 Dec 2023 12:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D68B409AB;
	Fri, 15 Dec 2023 12:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D68B409AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00AA61BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8E4F60F2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8E4F60F2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g_kXzgTMWPIC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 12:07:14 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 722CE61003
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 722CE61003
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CABEDCE2DA3;
 Fri, 15 Dec 2023 12:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CBCDC433C7;
 Fri, 15 Dec 2023 12:07:07 +0000 (UTC)
Date: Fri, 15 Dec 2023 12:07:05 +0000
From: Simon Horman <horms@kernel.org>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20231215120705.GI6288@kernel.org>
References: <20231211211928.2261079-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231211211928.2261079-1-david.m.ertman@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702642029;
 bh=4tWBusSmYJLXRPcmH1m3PdCWbkmgh9r9Ow3XFChuPbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MhhcqzWFthAIlZ+JK7dmrjjP06nDzIhoI1jUNBVORrRM2JI2PZEeTMTsG3wzoXl8w
 DWj1k7093eDUWJZH63j8c+/TRvL0Y0eqrZ1dTkWTRTmgPm92aud0RMCLjaOoVwu9EV
 6Q4IqXqLXMdYk6Qj79lTb/PeRgJDvZFaPl/AcmAEfpBm87zOYKisQ5udBtZlvLcR6K
 8bfXuRqVsq1vYlCwXbDX8ufhANUfvdZobkKVGNeSZZfT8HTKLyhGwTFrQzrjda1hg2
 CeOsZFTo1Cq2dfBmzNDXzQivWIzp3LORgSmfZ+eYalSYrv+gvo+r9ImzSgwtKl/nDf
 d0BZwNdHPBrxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MhhcqzWF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: alter feature support
 check for SRIOV and LAG
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 11, 2023 at 01:19:28PM -0800, Dave Ertman wrote:
> Previously, the ice driver had support for using a hanldler for bonding
> netdev events to ensure that conflicting features were not allowed to be
> activated at the same time.  While this was still in place, additional
> support was added to specifically support SRIOV and LAG together.  These
> both utilized the netdev event handler, but the SRIOV and LAG feature was
> behind a capabilities feature check to make sure the current NVM has
> support.
> 
> The exclusion part of the event handler should be removed since there are
> users who have custom made solutions that depend on the non-exclusion of
> features.
> 
> Wrap the creation/registration and cleanup of the event handler and
> associated structs in the probe flow with a feature check so that the
> only systems that support the full implementation of LAG features will
> initialize support.  This will leave other systems unhindered with
> functionality as it existed before any LAG code was added.
> 
> Fixes: bb52f42acef6 ("ice: Add driver support for firmware changes for LAG")
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Hi Dave,

I'm interpreting this as fixing a regression of an existing feature.
In that context:

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
