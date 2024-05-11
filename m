Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C77478C328D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 May 2024 18:38:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D92A840085;
	Sat, 11 May 2024 16:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pC6qMWDeQ0mM; Sat, 11 May 2024 16:38:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFC71423FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715445504;
	bh=7J1xmzGKPUM55K5Sly7CDs9dMAn1ZAdmK+bW5GRdQX0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ySPcnNy3EBE+EXE6DBWIJ4IZXKdzwIjkakO63OC4KS4GEz6SV+lgTit8nblGdi35w
	 Tar8XFAwoS64tq4/72dxbct2yxmR7v5eNnkDWTpMTDEKSZGsp6NDsaLwn2f43/uYtw
	 VFCKsiKUgbeJfA23hOYl6BlDbUOIDE6Njm/Mf1YhcXCBA3jaL5wuVH8QUKXAGerxY2
	 3wZYlaWvSj63E/cW22xjkIgod5xSTc6CcUupzVa2roq/ie8l51hZ2kPYsIMTS1R/X5
	 lilZJ4hvsDrKMqft6Hwa4r4xfWAQUB9t0DeqxHTHSMgPjGxjv5DAUP0Mvq1hmVzht9
	 3aT8xg98k2v2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFC71423FE;
	Sat, 11 May 2024 16:38:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44DD21BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30E706083D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:38:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tw0F5OzjhImA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 May 2024 16:38:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2579D60839
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2579D60839
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2579D60839
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:38:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E78C4CE09FA;
 Sat, 11 May 2024 16:38:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22C5AC2BBFC;
 Sat, 11 May 2024 16:38:12 +0000 (UTC)
Date: Sat, 11 May 2024 17:38:10 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240511163810.GN2347895@kernel.org>
References: <20240426154125.235977-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426154125.235977-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715445496;
 bh=e94BgLcLEdR+T6CinJz6xb5bntXFyDdNlBr4TIoWFHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BKfptXyBYmoClepdP/CjknBDwgtvv7FtGgfdpmQKpJSA8mp1gTDxw7zJEq1CPE+lP
 EQ+LzPPY6INJ6SyEqNngj5VixGphDfyn6Wlg3Wn+Dk22GlOggjq/oTiYnEg5lCU/fP
 Am7B+lRaSGxZC+8NU0FE3ia80oI/tgR9/mcJ+nznzHpnD8AyRMolsQg5fxz1UFC0Gg
 sWEUC0BgONbmRKBdifda+X66NiBZJw8u5JRvdqw8ggSrfmE0wv8Id/f1KwQw7HhVtm
 S+lkesdmCXnOMZEtGQOKotoXYZ6lM1zY5Qqi46qx01VZS0UmNV1AUIKHqmKLpT+tlf
 AhnTPdext5dGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BKfptXyB
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: Interpret
 .set_channels() input differently
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
Cc: maciej.fijalkowski@intel.com, Emil Tantilov <emil.s.tantilov@intel.com>,
 netdev@vger.kernel.org, joshua.a.hay@intel.com, linux-kernel@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 26, 2024 at 05:41:22PM +0200, Larysa Zaremba wrote:
> Unlike ice, idpf does not check, if user has requested at least 1 combined
> channel. Instead, it relies on a check in the core code. Unfortunately, the
> check does not trigger for us because of the hacky .set_channels()
> interpretation logic that is not consistent with the core code.
> 
> This naturally leads to user being able to trigger a crash with an invalid
> input. This is how:
> 
> 1. ethtool -l <IFNAME> -> combined: 40
> 2. ethtool -L <IFNAME> rx 0 tx 0
>    combined number is not specified, so command becomes {rx_count = 0,
>    tx_count = 0, combined_count = 40}.
> 3. ethnl_set_channels checks, if there is at least 1 RX and 1 TX channel,
>    comparing (combined_count + rx_count) and (combined_count + tx_count)
>    to zero. Obviously, (40 + 0) is greater than zero, so the core code
>    deems the input OK.
> 4. idpf interprets `rx 0 tx 0` as 0 channels and tries to proceed with such
>    configuration.
> 
> The issue has to be solved fundamentally, as current logic is also known to
> cause AF_XDP problems in ice [0].
> 
> Interpret the command in a way that is more consistent with ethtool
> manual [1] (--show-channels and --set-channels) and new ice logic.
> 
> Considering that in the idpf driver only the difference between RX and TX
> queues forms dedicated channels, change the correct way to set number of
> channels to:
> 
> ethtool -L <IFNAME> combined 10 /* For symmetric queues */
> ethtool -L <IFNAME> combined 8 tx 2 rx 0 /* For asymmetric queues */
> 
> [0] https://lore.kernel.org/netdev/20240418095857.2827-1-larysa.zaremba@intel.com/
> [1] https://man7.org/linux/man-pages/man8/ethtool.8.html
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

