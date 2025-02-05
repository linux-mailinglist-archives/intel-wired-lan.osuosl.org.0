Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F562A29AC2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 21:10:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45F8B60E90;
	Wed,  5 Feb 2025 20:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uPgLtkBs0v6x; Wed,  5 Feb 2025 20:10:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A24DF60EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738786233;
	bh=2IqjJ/+bWYCH7oJchnwzVWpRxV+k/SRWqG5nWydhhcQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fAAQvGwgAC7lejXphosdiK8k2tj9RQ+aphgrKebXER5MYFeZQHQ0OaeDqnsI7cUJM
	 qtJJz1UCDUD43Oposh49FTdvvk9UcH7dJGnJ82Pgx3Tt7R9DS0owhy+5XGabvKoZrw
	 NDlznefk4SgvHAtakfexNByxtI6IyzGhPXYE9Pr7JcyGAsAfBMcP5E9jLS6mfV9K7m
	 GCI0lWUrroO3BD35ixXRrQtPIrCq+UDqrjGIrt8ELQqCA93Enfy/nyHdJoo7+C9pVs
	 tuwTLSg9o79767qUDEutCCLWPNxGAUUud9erxD8CM+eJgisbu7sJS8O8s7riS6ZPPA
	 n7D/Fn0tJDCFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A24DF60EBE;
	Wed,  5 Feb 2025 20:10:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C81812F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67B4160E66
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:10:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MqvXmJgPxuQq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 20:10:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D3EC160E49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3EC160E49
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3EC160E49
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 20:10:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E141E5C6E6C;
 Wed,  5 Feb 2025 20:09:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B01C4CED1;
 Wed,  5 Feb 2025 20:10:27 +0000 (UTC)
Date: Wed, 5 Feb 2025 20:10:25 +0000
From: Simon Horman <horms@kernel.org>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Message-ID: <20250205201025.GL554665@kernel.org>
References: <20250205023603.798819-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205023603.798819-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738786230;
 bh=n5Fu9QQKG274QOcfOnLbIuHfV+7+uC51NIfVkJyjpUY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s0vG1fwSrABA9KsB/GC3atYToYgUnehdtv5U1rahq7r6NUCKCxVDZRqW0LDgquv8M
 bEOWhROAEucIWEEcgrTrYL69PObFHuAfjtUjliTBKd7FWDuJjs4AkFW4ncLqq5yqQh
 z2lcMDUCzkgICFWMLPEYxEuvLdMGG1nriNejoGkpyNXQu7H1qjRXS2/Jc+aJEGaNRb
 iPrnu18g9s7G802Y0JOzyWoWhtmYYdmPdE/aRlQnDkU+f6alj/hNtM7E1WqyY9GnzL
 943ze64Hep2uRbCL10E/TJndQkGzur1fnttdrTZPcgivhCDWd9h1mLFXPctL2R1nQz
 FA6TTCGXE3xMQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s0vG1fwS
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Set buffer type
 for empty frames in igc_init_empty_frame
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

On Wed, Feb 05, 2025 at 10:36:03AM +0800, Song Yoong Siang wrote:
> Set the buffer type to IGC_TX_BUFFER_TYPE_SKB for empty frame in the
> igc_init_empty_frame function. This ensures that the buffer type is
> correctly identified and handled during Tx ring cleanup.
> 
> Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> Cc: stable@vger.kernel.org # 6.2+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
