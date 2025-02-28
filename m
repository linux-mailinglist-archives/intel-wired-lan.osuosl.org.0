Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7A0A4A050
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33E8D8603C;
	Fri, 28 Feb 2025 17:26:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uVcHRPokrTee; Fri, 28 Feb 2025 17:26:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F1F386039
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740763562;
	bh=4nlX9U4SksBo51Z53s3qXaxDlaAM5be/GmE13fkvghM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zqhfkkhXulARr4P7zalsvXt8FNaYmrZLB7RbugNw6H6YHHxR8PjjZMA0HOqJoQ+ce
	 bLcdfvyVEM+rpRzJJd4sUQyKRz+u3A9WRslJgYD3Egr7zF00zOeGTiSzCAS8RoWiCu
	 iyTiuYEgCqVaM6WofD7khZQcY1mtRNdcGK87uZIiypdl0xV3KXAb1DmGbQI+sMwgjA
	 SLbIfMJaHPo5hnU59nelkqUF7PDSK/NNgwyH6LpA4LL3JE+4orop+GKtKhdZwWdunH
	 HUdiS+M6awLa53AsJi9JFeARkmhzSibVc/FwS7K6RPamIHYfkQCiveEeNitVZMB/Nm
	 mb7Zh5DOmf3+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F1F386039;
	Fri, 28 Feb 2025 17:26:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 102E91CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B2424F005
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:18:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ROa1liWyPan for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:18:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D23A05096A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D23A05096A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D23A05096A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:18:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BD7F65C67C9;
 Fri, 28 Feb 2025 17:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD0FC4CED6;
 Fri, 28 Feb 2025 17:18:21 +0000 (UTC)
Date: Fri, 28 Feb 2025 17:18:19 +0000
From: Simon Horman <horms@kernel.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jan Glaza <jan.glaza@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <20250228171819.GM1615191@kernel.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-5-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225090847.513849-5-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740763103;
 bh=xbrkC9wQmBAJq136ugYGbFVex3ldm3gZ7hWF2a+WG+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bEClTUQYb5N66+eanwlWPzSIy3au/N9+juhIcnpu4xPC5GuegR6xOdiVGYQTCbBoG
 F4PoULe1S6HNYvqje7H0TGXOa/D2V2Brmr2xDd/E/YA13KwItYymD+xNJ+Q5xbwxzR
 qzjrvZrPD4BA4elcB89OKGEUe5qe2Uwobk6NttLPRKj60jb2UYsn2tQSXpR70trE8S
 JEZqvsCScBurBbczLT1EXq0mmHfAV0gzuSvvMsh05PlffyMRH02+vgB3FfCdmZ6ebX
 FgRFM5xNY1zlMgrUtn7F3or6Kdo/Wdm7+FXX7yEQt2b8PvQITeZtyJLOFaa6/lMBXJ
 1pq70NoB5baKA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bEClTUQY
Subject: Re: [Intel-wired-lan] [iwl-net v2 2/5] ice: stop truncating queue
 ids when checking
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

On Tue, Feb 25, 2025 at 10:08:46AM +0100, Martyna Szapar-Mudlaw wrote:
> From: Jan Glaza <jan.glaza@intel.com>
> 
> Queue IDs can be up to 4096, fix invalid check to stop
> truncating IDs to 8 bits.
> 
> Fixes: bf93bf791cec8 ("ice: introduce ice_virtchnl.c and ice_virtchnl.h")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

