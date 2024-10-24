Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63A9AE6DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 15:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D16B60A74;
	Thu, 24 Oct 2024 13:39:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hWSXignT1f8S; Thu, 24 Oct 2024 13:39:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9D4E60A6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729777162;
	bh=XzNpEROTFLEWKPWNKOAOoSKhQg/fAk/soznq6DS1uIk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yPVOBZIKnVlAIWLX3fac6OBjI1dlpfsCX+1tG5pZB2VC7tfc52c4StaTDM46lfyOz
	 2jVukPWRN1tdi2PbsNN3QhkGhonfMJsjina0iO6YW1vxuAxLGgB8+cfr37sOg1WtDt
	 d0KZ7ccMyO/N41FHNpPU9lNypsKdy3eRlKBW+EuZ4YVoE2iDXY8VaI9R6Zj7G2x3Jo
	 KrTr79zU1iX0e/ylP1z86LrrFValPpTKL/W1uFeGyngW/Qk0IutAh9yISqcWDVLVcZ
	 o7NdOskI271xJv73qlTWoX9RzYIeengUUz/yFua8hAb4S3y3EGqbKH+6ABixwJaQ1g
	 NhIljLOoDI8NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9D4E60A6E;
	Thu, 24 Oct 2024 13:39:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD2CE5A5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B43581458
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Pf9muLvwzKB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 13:39:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2FE281455
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2FE281455
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2FE281455
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 13:39:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A39685C5F96;
 Thu, 24 Oct 2024 13:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C13FC4CECC;
 Thu, 24 Oct 2024 13:39:17 +0000 (UTC)
Date: Thu, 24 Oct 2024 14:39:15 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20241024133915.GP1202098@kernel.org>
References: <20241023124358.6967-1-piotr.kwapulinski@intel.com>
 <20241023124358.6967-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241023124358.6967-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729777158;
 bh=3M9i7GhKjuaIzAYVTEEtcjwAA0cxScexGSaX2Mrj9+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=arBXWtlQNeSAQ0/U4XcsTbkZLXOtZrQ1YZ7WqDDUtqsUrztpfa4ukpnGtReP6C4Um
 wdhFKg5mDGPswL3i5vP5OisdQAo9p736DbKDBjDCMqJmTXhoDkcj0TwxrzODufplUY
 vV3FbiIa/xS3nCqyRbJruN1UdcpNHNd3qSi9WkFagiTbtSCOVKPRobRYTeuOytCkhd
 5wE2V7pkWptKiajxZmtWtTOrp/7k+O8r6J/sRLwZPgzr2CazcNQJsQHA7AYDhmM4sv
 qCYT31SROVE6gDDHX/C6bvV7H5I4chlQtf0DkFCaTgeoRa++3GHgI7zJ2doMu5VCLf
 TnLlDmncwFfhw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=arBXWtlQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 5/7] ixgbe: Add
 ixgbe_x540 multiple header inclusion protection
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

On Wed, Oct 23, 2024 at 02:43:56PM +0200, Piotr Kwapulinski wrote:
> Required to adopt x540 specific functions by E610 device.
> 
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

