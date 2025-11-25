Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C499C846AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:17:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC6706072D;
	Tue, 25 Nov 2025 10:17:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2J6NZNTc0Vmm; Tue, 25 Nov 2025 10:17:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A28F6111E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065864;
	bh=051fyB/TOBD8zfKRD3gIWVBW3kwLPvXh5N8wp6FgVNI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UiAHJuaF1hxwvne94/zUqBUcBS4C2lS5d18JIezlpxixXUkHYGlkM64QgSiz3JasL
	 w4C9m1Qr34hmx0e/TYl5UDj7i3rDtruf32yYqpqhZBoxVwJLqSoVVoXaAFscHpGorm
	 8ZZtfSDUdeGHq7sr2gdY8/RTWVWF01uLwesP2SekXI2rvJ0zWCGzum/x/o9RhP0OFz
	 pktdHZKgC/F8kZAk3EHS7P8rZxwlcK7C1PDXsNop/lGnOtXCxvDicoPP2RADkP3Qne
	 fL3rWETe90eDVqBuOSITAq2WdUNs7VU/6pBC4woYg9ErOiS9D40AFK+4TjCMHVBQ8r
	 UMZyOiMf2VItQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A28F6111E;
	Tue, 25 Nov 2025 10:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 83B9A359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69CBC6081E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MKfJ3LKzveyp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:17:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 642DA6072D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 642DA6072D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 642DA6072D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:17:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 52FAF601A4;
 Tue, 25 Nov 2025 10:17:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F7C8C4CEF1;
 Tue, 25 Nov 2025 10:17:39 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:17:37 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWCQQsd-_cIKucF@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065861;
 bh=Y2I04+W2Tzn1zji+1k8DLZxgVIOQtEmlCmG5JzwSYjI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tm5nc7toIVNAGyC/LPx+6MCWPiY1uTwEHDLYAyNEFPwL5HqG/sODTw8G9xZwCPbqa
 5UMvuyh0+kbbpe7vlVVUEg6Pl3dLgWzTzIOWh4ZxO3vgtP4FIusiOID6DOJvMVUel9
 MaykBaUTn5UN2dPCaucYv5f4e9Tva1clvJ5gMhe1hruuohMhs7BbI1Z880NaAucg5m
 LBIzuUYZYKn4e0OI38cyZKZZgPcPAVgLOm9fz/F5fWzjC1PXCi7XhN2PqaikBjVgPa
 twBXZiqzse9OLTI1HOhWlj4AsXZDPgwbejpPLK3OhOXSent0FcEQSFMq7MvbF8KYmK
 TGtsvJTm/qSAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tm5nc7to
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: shorten ring
 stat names and add accessors
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

On Thu, Nov 20, 2025 at 12:20:45PM -0800, Jacob Keller wrote:
> The ice Tx/Rx hotpath has a few statistics counters for tracking unexpected
> events. These values are stored as u64 but are not accumulated using the
> u64_stats API. This could result in load/tear stores on some architectures.
> Even some 64-bit architectures could have issues since the fields are not
> read or written using ACCESS_ONCE or READ_ONCE.
> 
> A following change is going to refactor the stats accumulator code to use
> the u64_stats API for all of these stats, and to use u64_stats_read and
> u64_stats_inc properly to prevent load/store tears on all architectures.
> 
> Using u64_stats_inc and the syncp pointer is slightly verbose and would be
> duplicated in a number of places in the Tx and Rx hot path. Add accessor
> macros for the cases where only a single stat value is touched at once. To
> keep lines short, also shorten the stats names and convert ice_txq_stats
> and ice_rxq_stats to struct_group.
> 
> This will ease the transition to properly using the u64_stats API in the
> following change.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

I had to read this and the next patch a few times to understand what was
going on. In the end, the key for me understanding this patch is "...
accessor macros for the cases where only a single stat value is touched at
once.". Especially the "once" bit.

In the context of the following patch I think this change makes sense.
And I appreciate that keeping lines short also makes sense. So no
objections to the direction you've taken here. But I might not have
thought to use struct_group for this myself.

Reviewed-by: Simon Horman <horms@kernel.org>
