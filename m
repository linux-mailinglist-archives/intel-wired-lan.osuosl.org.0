Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FB1AB9BF8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 14:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACD9640DF6;
	Fri, 16 May 2025 12:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id poTkTTS2sfPi; Fri, 16 May 2025 12:26:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37A3040DC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747398393;
	bh=cpov9B1NoKsb9n59JPN0bQI4NqMRYk2ahMCVABoWf3k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pO30XNJpNbJSO43dtbNIN2wT4PX6wwtmzKK2dMoNg5+FCyE5ZWOg9j1vZN94ndYMs
	 9lhzRhdsSBw64+LbYwYRC7CgEm2id2LqKrQF50Oyhm7bBVj1WQAlfhnBk7PE4xJ/1t
	 /IT7t7HO9DHyQ4weaXzS2lbhCrwmMNAtwM2tYnQzeJ0ErF5S0YZF6BST3vZvtW0eKI
	 HsSh8iPe2zW/SCyyOFroLBgztMV/6VF+0EZw/La/I8b/C5uATHlfIzZTv/MGZ2mjjL
	 flQ0SaR23qsstuWf9R7+YLyWMK/D7VI1WZcbAqLo31vbJYdZl2CyPerUieucekSuCs
	 7SM72yu01KHMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37A3040DC4;
	Fri, 16 May 2025 12:26:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F10B185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C16F60A69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mp892RRNdXDC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 12:26:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD45F60E22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD45F60E22
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD45F60E22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6C667629F7;
 Fri, 16 May 2025 12:26:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D365C4CEE4;
 Fri, 16 May 2025 12:26:27 +0000 (UTC)
Date: Fri, 16 May 2025 13:26:25 +0100
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250516122625.GB3339421@horms.kernel.org>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-4-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513101132.328235-4-vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747398389;
 bh=rrrJY39WUsVKR4mN1I8MidxOAchZp2nqdeCYWmKpuZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tv7ymdFC3ANdYCOX6Of0UF9n0CESfkmk1WipLweY9qMefFBbhzwioh7V6qpRqEkdI
 jh+M9g4nC9kwe/LvUcp6/Q2EA0jO//Z/hllb0mEXq+Gi7hKToXfkds7jCGF554mFJa
 LojGdgsYal4IONuNxiDVVABrme9UhLeogx78t545iqawA0E9+jzXkReDhUK8HLhRRf
 rVqIIFjFl7EHy/mlErUKlQhh7xTCj6j++GjJVsbKcb1iXKrg089YBpIEPBRFlOcOo0
 I3ydXVOkXp2ifIJXOmJDCivFVQLqdK+YE9hXr2ZxLQfEj0tsX4CdxoMjNAK/BWUXmg
 xA6tp7/yvRBjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Tv7ymdFC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] igb: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Tue, May 13, 2025 at 01:11:30PM +0300, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel igb driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Simon Horman <horms@kernel.org>

