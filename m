Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E069C84692
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 092AD61018;
	Tue, 25 Nov 2025 10:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8MFOrhCMemXd; Tue, 25 Nov 2025 10:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E012610D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065784;
	bh=iUhJd6NxAvevHlST64UaYTjD+yjmtlesUdlh7v+jLZA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=urpziRgeZXN/sK8ArfWu//ktnkCJM9tH1SnJLQ5JirFuhOlpDs0D5iKfP0FuKI50P
	 xVNwYQt06R9U4hxI6PBR6lnn9RgEeMD2ysGC+xjWk6f8JFGRuG/CjvLdNi4I3EBP0M
	 WKo4Q6HWtT0kMehrmdKoScV+YbbC2Ag0nAWu360JeFFvqruibOz933UO3liyIgP7m0
	 Ko4GXhNooiOlFg22gRE3rX9T6XQxKofvgp35qyNAR/+6YcHYl6X9EC98IbW0E0e7Fd
	 6TcmZxUnjCKYtxM49AE+jvvc4F4UiCGC9xVfWvn7RD4LrNqzOJtUew4PgRfnUjbuoh
	 U1eO3RbUd3xXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E012610D4;
	Tue, 25 Nov 2025 10:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 40C33E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32A9182348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txTL2M1OoxJc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:16:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A3AF81767
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A3AF81767
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A3AF81767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E998C4065A;
 Tue, 25 Nov 2025 10:16:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB26C4CEF1;
 Tue, 25 Nov 2025 10:16:20 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:16:18 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWB8tuqClJGBqrg@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-2-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065781;
 bh=kUniJafciv27Xvx3LLc76+RtUt+Q5LB696ZK63CIuBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qxiMyivbYMU3Zko+9SnrDqE8PTPwt0wQ65N6xKMonvXm3aCfi3hO3/Gx7KhmvrbJs
 Mls7iEZ7PdcOrexJTKyU+OuamKLbsl5xtAudQVXN2tpy7JTVYgk/c40eIHUEUsTuMe
 ut5dtx9QXbEspGZEreIEv4phPKSUvyBAuxFErupzQPgQf6TOPQd4O0X0smKsbHe60+
 Uvl8bnGZUTkSDcwDA/4IcM/hN6IUd3/nUgjGIYrnHzru5t/IsxvEzUE4LOUIXQQA+A
 cocHyUOxjc9O8hDDQTioomwFQvLZT7HNt+95VZeXQ9k6C+ynKrZTA1c/MogNNn1uBY
 /yZ/wysZDFyqg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qxiMyivb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/6] ice: pass pointer to
 ice_fetch_u64_stats_per_ring
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

On Thu, Nov 20, 2025 at 12:20:42PM -0800, Jacob Keller wrote:
> The ice_fetch_u64_stats_per_ring function takes a pointer to the syncp from
> the ring stats to synchronize reading of the packet stats. It also takes a
> *copy* of the ice_q_stats fields instead of a pointer to the stats. This
> completely defeats the point of using the u64_stats API. We pass the stats
> by value, so they are static at the point of reading within the
> u64_stats_fetch_retry loop.
> 
> Simplify the function to take a pointer to the ice_ring_stats instead of
> two separate parameters. Additionally, since we never call this outside of
> ice_main.c, make it a static function.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

The *copy* was certainly working against us here.
But TBH, C syntax led me to read the code more than
once before seeing it.

Reviewed-by: Simon Horman <horms@kernel.org>
