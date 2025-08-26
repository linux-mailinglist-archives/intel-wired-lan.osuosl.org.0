Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5577B3707B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41D26404C7;
	Tue, 26 Aug 2025 16:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CPShOf_wN206; Tue, 26 Aug 2025 16:35:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAF91404BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226109;
	bh=sMCMEoZiNRbinWDWAhjd4RnbfkqT+XEVSpUnoVyKL9k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qonS6OKasxkscJDYsvs6PFWahoa3fPazpdCkmZLD8hn2bxrr//iYQy6Cp3asZJvm7
	 FBulo3/AxjZHkGvagAhAB3psP1/6o5lXh71eByDmvYFDtEH69XcgtB5ehHCUrO3vMt
	 AeHAZxOUKeuAS2pxXit3I9oHBZRWbxJLwH+mAszTYv5NhvGO6sgxoEdwxT/R8CBqx7
	 /BRsNU9D9H13gsrHWpHIW6nTB2GBrX1GWyHspAViO/ll5g+sLZ6ruMozMKR1nExxtE
	 Qr7+XTHNVQan+wHuzeyhemNgGFrcMVjViwRzfy1ZgiAkZnwffLVNyLxV/wmOsJaOGM
	 3nnHkGf3OxVlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAF91404BE;
	Tue, 26 Aug 2025 16:35:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 26255114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18415404B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOMA3TZ91nXG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:35:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94720404B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94720404B5
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94720404B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8D6CE601F5;
 Tue, 26 Aug 2025 16:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D65AC4CEF1;
 Tue, 26 Aug 2025 16:35:04 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:35:01 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163501.GF5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226106;
 bh=W1n1sAkc0JdMu9jx8ALDS1TpplDfSrk9aAQmda91AvQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DQRDt+WDihtX4TcTVNG69PKKYdZvbWuk3GduAi+PG8mmnqkdY+I75+5WL3MLjqUXt
 0uvdovT8cvi3c5dNJXc9UcAgWAN35sT9IyJMoDQRx0RFxID4fS+OP8yPVxJg3kfteN
 cihs4iALoR1PVttxSqwgY7Vl+yjkBBFPDkMngA+latfzW1XpP8yrCDsPix1AaRkx1z
 4aYi/jrj1M3AyWY2O0ALmVQMjFYVZzh8cU2E70ja+HySQgvfXwmEYaHma8BEd3g1a3
 rsydI65KtNxkVjGzM/gIDz/mJJXBpZWMkxnmwhOqF4wgbMXC/KtK19EuVeFUHMqEvk
 WirbedRT1fiaw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DQRDt+WD
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/8] i40e: add validation for
 ring_len param
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

On Wed, Aug 13, 2025 at 12:45:11PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> The `ring_len` parameter provided by the virtual function (VF)
> is assigned directly to the hardware memory context (HMC) without
> any validation.
> 
> To address this, introduce an upper boundary check for both Tx and Rx
> queue lengths. The maximum number of descriptors supported by the
> hardware is 8k-32.
> Additionally, enforce alignment constraints: Tx rings must be a multiple
> of 8, and Rx rings must be a multiple of 32.
> 
> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

