Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 450049E6F18
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 14:16:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EB6084543;
	Fri,  6 Dec 2024 13:16:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ti5VoqYbSghy; Fri,  6 Dec 2024 13:16:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F32484502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733491003;
	bh=YJzK3MZF44q4UjwD+TyIrkHe4PxnWbhlJGCmQv/7898=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7LNlFdT+d1Fj2QR34iGA+X0rkOpBEuDRIjDUMWr333H45PmpIPzmp6ZkF//dZxlMs
	 Qzd7F/B21XM6NT6Lc4kBgGmbXgzOMaae6i4rU86JwmXy0RfEjs/dsW02Nu51gaX1fB
	 AQ0gqE7IGbhjf8aGevV+SBsSbcEjxRGiZYW93NFSCCeFkbiX5qjYIH5Wz3N8arFVKD
	 ObyEcU0Tv8skIuRkl0zCyWOoUDQKHZ78Lke/X4P8XvToRjdBxUn+XpssgVp6SwBx1t
	 w3Y8buKA3GvhkIRFTXt8fr8hRnsDIOEfI6qZgh2eZDM5EbSQ98zSr6kiKIF7GJj5gg
	 x357P7F3XOCZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F32484502;
	Fri,  6 Dec 2024 13:16:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FD5AED2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1067143285
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:16:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ZfrpizObb5B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 13:16:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E21343284
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E21343284
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E21343284
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 13:16:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 477AA5C5F33;
 Fri,  6 Dec 2024 13:15:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D169C4CED1;
 Fri,  6 Dec 2024 13:16:37 +0000 (UTC)
Date: Fri, 6 Dec 2024 13:16:35 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20241206131635.GP2581@kernel.org>
References: <20241204094816.337884-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204094816.337884-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733490998;
 bh=wFMtQuON0MWgenzgJh4EM+D4LwMQ2n10g48psQOK3KY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PR6LEBKd4LUsl3PtshVfjsjCuocJt31lbOl++w9bQa3905LgBdSqgUdopjgT7uDIA
 3LFTjFWjfKW68YUcE24zdTUpcx6fBfugClJxdV/+df0EIrwrBfgPr4AeguSCCsdlky
 C6LUwvG7f9yKvzWVRtgCiHEXHyUFrH09Q2ptm5LpOyvciZanaCuUXygbpEQNSIz81Q
 yKR+Q1QxDZxCeNMM43XHGSnqDI+ZQzNvQ0aYelWR/Mjl2DsTkGdEgkDXJ9VsGldVT6
 af+imMkWTpK6omj74cdjLlQ5nbE0IVun9fBpUTBrtAF0sO7LWORht2l2Byva+ATorX
 knmv2CZqz3Gvg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PR6LEBKd
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: Add in/out PTP pin
 delays
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

On Wed, Dec 04, 2024 at 10:46:11AM +0100, Karol Kolacinski wrote:
> HW can have different input/output delays for each of the pins.
> 
> Currently, only E82X adapters have delay compensation based on TSPLL
> config and E810 adapters have constant 1 ms compensation, both cases
> only for output delays and the same one for all pins.
> 
> E825 adapters have different delays for SDP and other pins. Those
> delays are also based on direction and input delays are different than
> output ones. This is the main reason for moving delays to pin
> description structure.
> 
> Add a field in ice_ptp_pin_desc structure to reflect that. Delay values
> are based on approximate calculations of HW delays based on HW spec.
> 
> Implement external timestamp (input) delay compensation.
> 
> Remove existing definitions and wrappers for periodic output propagation
> delays.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V2 -> V3: rebased, renamed prop_delay to prop_delay_ns, reworded commit
>           message to be more descriptive
> V1 -> V2: removed duplicate gpio_pin variable and restored missing
>           ICE_E810_E830_SYNC_DELAY

Reviewed-by: Simon Horman <horms@kernel.org>

