Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 644ABB38402
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 15:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 917D760B02;
	Wed, 27 Aug 2025 13:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PRFaefbXAil9; Wed, 27 Aug 2025 13:49:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C78D60B86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756302571;
	bh=rF5PFlDWvcGXqQGsZ17ctXZWUdK18wvfuWvqYzheyLk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D77OyiEPRrdi2C+AhWJlnSh+5iDKnhTeI9Zln0QTMnCWqZAHVvDvGGU1JdTbSRlZk
	 oHEpfCumb8Xe97lF7DYC3VxvGgVm2MKRVUVrTnj0DP2sp04t+p09a03IYpugnqS/x0
	 hMbZTuOg38zSFryuf0WQzsOgQTp0wJtlq693PdqvV4Db/3TKoDsR3tVFFaM7eM1TPy
	 h4NfJ6Z4bGBRs8GulILlhvRqhySIQV7xYNm83NmeNEWVmVlyxcCr8A/rL6o01uLy7q
	 rjbH3YRpi44f7me+jbyHqgwlpEbyRqYkp/G9Y+O9BVZOLp4MpmQEvAlbMmgwD/QRUn
	 /0OtzNSb/2eLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C78D60B86;
	Wed, 27 Aug 2025 13:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 39037B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 144AD40BF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2AzFmINQO7F1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 13:49:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFABA40BF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFABA40BF5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFABA40BF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:49:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 21B1360266;
 Wed, 27 Aug 2025 13:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3273BC4CEF0;
 Wed, 27 Aug 2025 13:49:23 +0000 (UTC)
Date: Wed, 27 Aug 2025 14:49:20 +0100
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com, Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20250827134920.GA5652@horms.kernel.org>
References: <20250818151902.64979-4-enjuk@amazon.com>
 <20250818151902.64979-6-enjuk@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818151902.64979-6-enjuk@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756302565;
 bh=Dpt8GGfeLnVmr0M6zmnyoYGC08US4tTed/rZezkvqNs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OOtippKzko2TKtCwDI35Ogr/YO2PjQWOoj13B8dT5h1/hATBhQfvwMJ08m+DKhXfn
 cezFaKFTYtWm29o9AzkgTbr3+Kh3wVFClkJDPz3qVfSuuJ3Y8C8R7kZ4LJeIqBzIB0
 +/9qdIedLLHPbQfeYd7biIoTgnUgYbk4uXAHbrT6AL5ZSixpxJqP0EzQXQ5YQoOWWD
 OopFahUco65XVC+L4hmZaeYpBTao3oW2QEBorNtH8VtO3/uV68oEb68F0MYHgy4lBs
 V/17hAgCznYPQWeAw9FByFMH9O9wLlwiK+2FoeFmKeTu2W+mIu9Bn70714b8z/jsVd
 a5YdP4jMucoJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OOtippKz
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/2] igbvf: remove
 redundant counter rx_long_byte_count from ethtool statistics
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

On Tue, Aug 19, 2025 at 12:18:27AM +0900, Kohei Enju wrote:
> rx_long_byte_count shows the value of the GORC (Good Octets Received
> Count) register. However, the register value is already shown as
> rx_bytes and they always show the same value.
> 
> Remove rx_long_byte_count as the Intel ethernet driver e1000e did in
> commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").
> 
> Tested on Intel Corporation I350 Gigabit Network Connection.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Simon Horman <horms@kernel.org>

