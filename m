Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F924940EEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A54E181138;
	Tue, 30 Jul 2024 10:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4iIvcUQrl3X; Tue, 30 Jul 2024 10:23:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D5108115D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722335028;
	bh=ksdXwC/oJ4+sR6UJnarAWnphmNgZcZbQi7nhwMaDpfg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XIGxo6fKNReWTs768a7P8WdqgWO3uYdDr7i29/iF4ezfBMI5cjjuk9VdVtuF60xBO
	 0JJTsidJJ/wOfuvsL3124Hr89oc9NqZH7zBhnXHP27tup/XDIIi/FxQ/liViCxta8x
	 wZPMyABScf5O1jIogiEf29kpgYeu1ENE3n7ClEU1/7p6eS4WtxuPTgMvk3D1/vvmtE
	 yxWfQoSpw3leLtecqzq2GX+tvhjtEnetHzGBaU3y4cC26nR95iZEHVvxN1g8wuFaEJ
	 4IbXYBATIa0NIXNuMXFiTugTn0JjP7gvRDIGn/L2wIKIaarp8fKxpWdyCVou6vo+mj
	 ZLvYyBNPiojnQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D5108115D;
	Tue, 30 Jul 2024 10:23:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 451101BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B28D4023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aKeru5TtaOI5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:23:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E31D4057F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E31D4057F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E31D4057F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BB25A61C5D;
 Tue, 30 Jul 2024 10:23:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A61E4C32782;
 Tue, 30 Jul 2024 10:23:41 +0000 (UTC)
Date: Tue, 30 Jul 2024 11:23:39 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240730102339.GW97837@kernel.org>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
 <20240725220810.12748-11-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725220810.12748-11-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722335023;
 bh=63xEIcvXjlR02Hfdugx6BZutPkEtvIG450jNMfawbKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mbE3e+xpn6vyHWMeQ+uoHM97DCxhzDqPtRSeB/HzeXGjBdF082v43QB6oRPAiGxS0
 UmwlGWpctecsIAKDTFpghzwHBSUbsH9Geywt5Uk+SqyT+Mvg7O79rvLZ5kdlr8Iax4
 +/cqwUFyE/kJOQBh/pVOwwacUyPUxCr85iKbOeDxiNFMIo1wxP3MpvMemugtZABooz
 +DDgYws5CO5tJKQMIv5HWZmjO1yJjyRcFlwIR2pV0EczTKZBrvl7fV7JdyCL1RXdqO
 hviHGkBve7kYUkh7cTAhZm0yK7vj13aFql52YySgvezKt6QFuTFURrew8iNGG/ocb3
 5sxVsp/R5Mj1g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mbE3e+xp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 10/13] ice: add method to
 disable FDIR SWAP option
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
Cc: netdev@vger.kernel.org, hkelam@marvell.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Junfeng Guo <junfeng.guo@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 25, 2024 at 04:08:06PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> The SWAP Flag in the FDIR Programming Descriptor doesn't work properly,
> it is always set and cannot be unset (hardware bug). Thus, add a method
> to effectively disable the FDIR SWAP option by setting the FDSWAP instead
> of FDINSET registers.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

