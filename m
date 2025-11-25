Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D229BC8469B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:16:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8491F6081E;
	Tue, 25 Nov 2025 10:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IjmkBjCnYVg3; Tue, 25 Nov 2025 10:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0134060FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764065798;
	bh=TetX4l+WgxRtvj8B+Ro8HemF14SDJ4C0ROoIyMI5/Iw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=btaMrq+bA9opuso+DfIuk3amTNC7JriS5db9kQqnYidM+ttTny6KiV6BvU/A0HzKp
	 QH9o3+p8icYpzyjhyvEACd4So+Vmp8uyjPwBjgLMn3WQhN+UcBRnkqC956IRNGlzhi
	 UDzFmwX3xtqEdvDDp3wTMuSJ1L2ZZIp1DuPInuL3Vdm9ahRKoQRilHWdDZ2z051uMI
	 sRy2OKlK4yPGJoCxGLIiVL1vSvVNdlUMm10qZIodwAPdjHaTkCMPndu865kngWR5s1
	 oueH/EEW8L70YaM8/HXLH7v6mN0PqaefQUhWOFDYYGqN82XaYYEXtPFxvuUXhQRsqm
	 wQBWEsfGT5OgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0134060FC0;
	Tue, 25 Nov 2025 10:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45A18359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 376AE60F9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IYmM2mfVOQHk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:16:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 493EE6072D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 493EE6072D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 493EE6072D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:16:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0F0D440B81;
 Tue, 25 Nov 2025 10:16:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74DA6C4CEF1;
 Tue, 25 Nov 2025 10:16:33 +0000 (UTC)
Date: Tue, 25 Nov 2025 10:16:31 +0000
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aSWB_yLwW-DKvuc_@horms.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764065794;
 bh=7E9Z3qVoq+7y8LsemeRstJN9txhp8hp5rPn+YXZEZ7o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jHUsFJK0FOB2Rk0SKdN7vFe+USWSskei3ELRJ0LnIo6BxrL3WGUw4ALkDQthb7ePT
 L3ge5lhLDsOJdQ3vehsxLMqh+hhwAQEBV45+suPUVIA9EwkidBuSSUFZvpgampmO76
 RjvmUGcbMjaM4OpwDoklT6xKbBD6D2vwi60pjJQ5pxjoCntRnrC85/+IWGP9HR8f9T
 OjJ+0665pc9yb4spxBoQi0pOfm6q8d9WyuJhUN94w3b+wmeWK37bak1zg7NJMeACkz
 htzWkTymrHR79fifxPe5KihV8Peg3iqaeO0nf9UwpGgvXktJ+Ar8kY4Xvbxe2UkPld
 1lVpMdH9fU+bg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jHUsFJK0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: remove
 ice_q_stats struct and use struct_group
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

On Thu, Nov 20, 2025 at 12:20:43PM -0800, Jacob Keller wrote:
> The ice_qp_reset_stats function resets the stats for all rings on a VSI. It
> currently behaves differently for Tx and Rx rings. For Rx rings, it only
> clears the rx_stats which do not include the pkt and byte counts. For Tx
> rings and XDP rings, it clears only the pkt and byte counts.
> 
> We could add extra memset calls to cover both the stats and relevant
> tx/rx stats fields. Instead, lets convert stats into a struct_group which
> contains both the pkts and bytes fields as well as the Tx or Rx stats, and
> remove the ice_q_stats structure entirely.
> 
> The only remaining user of ice_q_stats is the ice_q_stats_len function in
> ice_ethtool.c, which just counts the number of fields. Replace this with a
> simple multiplication by 2. I find this to be simpler to reason about than
> relying on knowing the layout of the ice_q_stats structure.
> 
> Now that the stats field of the ice_ring_stats covers all of the statistic
> values, the ice_qp_reset_stats function will properly zero out all of the
> fields.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

I agree this is both more consistent and cleaner.

I do feel there might be a yet cleaner way to handle things
in place of multiplication by 2. But I can't think of such
a way at this time.

Reviewed-by: Simon Horman <horms@kernel.org>
