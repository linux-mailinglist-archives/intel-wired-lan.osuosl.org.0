Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D2690119D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 15:00:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99F3082146;
	Sat,  8 Jun 2024 13:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bz_BYVAx3zLl; Sat,  8 Jun 2024 13:00:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF93982141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851613;
	bh=Pje+4ZWKEn2kVlEeGTtRhvjkP37G67HMwMmj7v6lmR8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lX1KKy03YZCa4+vEu+GKDTUmpnvuUwQbMpzno2VoQsEMzb7P2yVvWK7XyR0i1Oyz+
	 lgPTzyEs3lio3oLJlVClb76UheBhss3ft4r5sQjhsrczgMKDT+c+a4u5vrzXOfSdDJ
	 0Fa97QfcKamtmJZpgqLktqF15CdZWG/mtA72AVKxtaeVO4bq/g5X5iuAhRBUwl9Uch
	 e4HfrFK90FmzPkai7AedNsn+DsB4mWZhWi0Gnv5uYhMYfLNeeTDV6cseLuSyn2H0B3
	 X8WnoNy3tkRD6ExNGNeIBpGKExpuSa90uoNgaiH1cmiyyVDr66c2Sh12nC63MndoJG
	 +bpN/uvONxbcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF93982141;
	Sat,  8 Jun 2024 13:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 878951BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81C0382141
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmHxPsABDmDF for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 13:00:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E909182078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E909182078
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E909182078
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 32B6061243;
 Sat,  8 Jun 2024 13:00:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82912C2BD11;
 Sat,  8 Jun 2024 13:00:05 +0000 (UTC)
Date: Sat, 8 Jun 2024 14:00:03 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608130003.GD27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-12-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-12-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851606;
 bh=Ko2dva2R0y33Pjh2cNh4af7X+bEVHxW+/W5sDQ09gG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mKPQqLxvj8+7ChKgF2jJGcPwLEhJ7C7pM2KxjbdgvYJwVDEo5gKvEe3Pmxx4IGXlb
 /Q82TbXoU1l+2qCau2DfbnukcJzI560nqH4ODQwIBleKx5a/+xdCh0xbfAS6iI8fCJ
 Xn/yAO9M1Oe5KG3esfxxYfXxZ6uH8WB1ZnYOcFif7X/gk7nNPch5YEj7PRZ1/dvwL8
 GJca/iMQWuc22MqV9Qk98my8yada43o2fja0wKMyZ0387D7Hkh5iDtWxzmmVLPAwup
 BLtqoUaoFM8xBoXjnL6pO+hq6EmHebS9FxFQKRuEgL1O1h76WujnLiviDhZoRmcDOD
 TVSfTaF3RENSA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mKPQqLxv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 11/12] iavf: handle set
 and get timestamps ops
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:59AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add handlers for the .ndo_hwtstamp_get and .ndo_hwtstamp_set ops which allow
> userspace to request timestamp enablement for the device. This support allows
> standard Linux applications to request the timestamping desired.
> 
> As with other devices that support timestamping all packets, the driver
> will upgrade any request for timestamping of a specific type of packet
> to HWTSTAMP_FILTER_ALL.
> 
> The current configuration is stored, so that it can be retrieved by
> calling .ndo_hwtstamp_get
> 
> The Tx timestamps are not implemented yet so calling set ops for
> Tx path will end with EOPNOTSUPP error code.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

