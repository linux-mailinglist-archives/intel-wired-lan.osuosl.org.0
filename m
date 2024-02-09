Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA47484FAFF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 18:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C83B41DAF;
	Fri,  9 Feb 2024 17:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAOsBIT9FFcL; Fri,  9 Feb 2024 17:27:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AA8F41D36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707499639;
	bh=/TO+ybPkS88o0Bgxb1pWNDY4seuQxVLEM6ufXH313xk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a/98TG5Ce+XkB5oztTCRZIuqaI7a0u3i7RbCzk/et7obB342G+Vb2FL/nQxmMfx94
	 N40JLGp4P7519KbYFTpoiap2DYn8TC39KuWRS2lCA8C6KAzZCjbZc8LvzNU6dKLdrt
	 m9T+aNoDKo8wv3uhnHV6ru4upCaJjQNISu9FlK08BOTZARZ+eweXNFREcX5Bkt4Jaz
	 3ucICO9brVLyWVFxF7JJ8Mo0Bq4S473VZVMv8bikeMslzpHWHEczyJ7QHoOfoNEC/n
	 mcMt6ywX030jb/NuRwGXZ3CDT23ytNqxAatxDi/AAip6pqbjY0p9PQTkMCYp1Jm8B4
	 WamxYv9ZeAH6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AA8F41D36;
	Fri,  9 Feb 2024 17:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBB9B1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4BD1607D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m0BWEZ2OUtGn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 17:27:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5B29607BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B29607BD
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5B29607BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:27:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9A15262073;
 Fri,  9 Feb 2024 17:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97822C433C7;
 Fri,  9 Feb 2024 17:27:11 +0000 (UTC)
Date: Fri, 9 Feb 2024 17:25:39 +0000
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240209172539.GG1533412@kernel.org>
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
 <20240205130357.106665-3-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240205130357.106665-3-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707499633;
 bh=fJ6NONlFF7HHwdpssZytfNNj+QKkFtEm5uaVaeAR3HY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GD6mT/AYXR6MPkeJBHTv/5fMb5ykQN1CQTj+B8bHPSyueMiEuEfXScMtueL+bKB7n
 jfXOQbu6yTBSfPAtMkcRyLinZQgLmjDPhmgJpAmHPAxL5GdTQIUs4aN5UPgCYIvF9l
 Hta1EWpr/9saahDd2nc70OAxsC13uMK2XA8jqdaEIENf+esSRx/Cj6UU9G+kekJc5X
 kgiLUI85cmj7kGIsBa35KN9O/o7LXl8gdHxtqWd89vQXaNLmXAlm3CNFOsLRh57sL9
 qHeyUvOiAyNHTNIYPxFsxqxWwHkSZcH5y2ZT8/ddpyLNC/qoh2Mg7930gjhBami9Qb
 ji4U/gjMELF4Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GD6mT/AY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with
 devlink reload
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, bcreeley@amd.com,
 intel-wired-lan@lists.osuosl.org, paul.m.stillwell.jr@intel.com,
 przemyslaw.kitszel@intel.com, vadim.fedorenko@linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 05, 2024 at 02:03:57PM +0100, Wojciech Drewek wrote:
> During devlink reload it is needed to remove debugfs entries
> correlated with only one PF. ice_debugfs_exit() removes all
> entries created by ice driver so we can't use it.
> 
> Introduce ice_debugfs_pf_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit(),
> it makes more sense since ice_debugfs_init() is called in
> ice_module_init() and not in ice_probe().
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

