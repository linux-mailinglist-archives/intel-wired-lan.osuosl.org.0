Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A42280E87E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CE45614E0;
	Tue, 12 Dec 2023 10:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CE45614E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702375313;
	bh=tKI8if3NQm1r25IxA7ri+02Xa/Hh4Lc8KiZaOVBnLIA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u6zE3fajyc7+KmNizJGG88PxPdHaNrEwYAOMaQcWlH7wzfIWZ/nBgkryY6eRQ+whC
	 61raaKssgDQ1LVKqfm3mm1fw5h1FKLNNo8YagOOubNzQj9nHJNVKz0msnPGbuaXmo1
	 WxbRZXExA/VMp6MoHDnrXrO457u1xAT/tu/Rw41oPva8Nor1jCzbthv5dMwqJl476Y
	 ZZl+AgLL0fCiW5QaMbfnfeEOvbNxth1EHBMeOBgV9v6dJ+CKCz1idprIugMnACogS7
	 13RjXSo+MguuFQBB1IjqAMUt44KVQTUsAm4hbS/gckT6j8HUeYlA41WbJri1ueTdXE
	 5upjgbwmdMzhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buZkZzRB7COy; Tue, 12 Dec 2023 10:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A7DF60E13;
	Tue, 12 Dec 2023 10:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A7DF60E13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D89AA1BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFA1040266
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFA1040266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nd98WiZiyemx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:01:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C04240267
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C04240267
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CB03D6176A;
 Tue, 12 Dec 2023 10:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C1C6C433C8;
 Tue, 12 Dec 2023 10:01:43 +0000 (UTC)
Date: Tue, 12 Dec 2023 10:01:41 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <20231212100141.GV5817@kernel.org>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
 <20231206192919.3826128-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206192919.3826128-3-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702375304;
 bh=B+5T+s4PK5i1mJ0rTjs0h4mORh1VsN0iffa+WjrSqB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BPz4BfaBbLa4e3su/aPgC6VkI/bt02KQ5FkakG1gxwWir+3rfjIo8IQ/vVFpQSRAA
 nQYbAGXs0reTFq8IwAnD0Ks3Rk3yoqos8S3b/pyZlBzoQPYmPXVQYE3EsSFwOozeeH
 SrMnBlq7Cr5R3Yq77t1XRqR5EAAA+LQgQtY2czmdPP1jKMcECXfw0uhZxi2iIw3ONQ
 +EK2UIHT77JcMuTN0GbKUlMaRLmEtSTgFbwQoNLYH/xET9rjGAhZIgd/HmzGK9teuO
 DZ3avsu66QOSF/7VyTxS2hp7dK4L02OgPSIXOfm2DYdWA+Q2dG+HTJpcpvRt47T+RL
 yJKD+LiS1JV1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BPz4BfaB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Add helper
 function ice_is_generic_mac
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
Cc: netdev@vger.kernel.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 06, 2023 at 08:29:18PM +0100, Grzegorz Nitka wrote:
> E800 series devices have a couple of quirks:
> 1. Sideband control queues are not supported
> 2. The registers that the driver needs to program for the "Precision
>    Time Protocol (PTP)" feature are different for E800 series devices
>    compared to other devices supported by this driver.
> 
> Both these require conditional logic based on the underlying device we
> are dealing with.
> 
> The function ice_is_sbq_supported added by commit 8f5ee3c477a8
> ("ice: add support for sideband messages") addresses (1).
> The same function can be used to address (2) as well
> but this just looks weird readability wise in cases that have nothing
> to do with sideband control queues:
> 
> 	if (ice_is_sbq_supported(hw))
> 		/* program register A */
> 	else
> 		/* program register B */
> 
> For these cases, the function ice_is_generic_mac introduced by this
> patch communicates the idea/intention better. Also rework
> ice_is_sbq_supported to use this new function.
> As side-band queue is supported for E825C devices, it's mac_type is
> considered as generic mac_type.
> 
> Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
