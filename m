Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D858940EEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0480B81254;
	Tue, 30 Jul 2024 10:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlD1rkbgan1a; Tue, 30 Jul 2024 10:23:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 476E781120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722334999;
	bh=rCTS8FfwxCtjq7fleEMvvzjrFTwEDMC/78cHZMprZX8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MExm1L1wOUhvr46w+cJJk6jdRtUSTccIsb5Gz8u+NqgNpcoYO2dhIcFMKRQHOnl8s
	 OKh3YcIIqNpU02qSIfXFVVxgWDr6fINT5Z34q+KtmsgcbjxFCEDrZS31iyGnwP23lR
	 xfAAQFywRd1hR4e0qLuHS4RzMoMecoq/uQ++WxPJyX0XABWn7SXzbkYQuQxoVRsSMx
	 QJx5FFjtd7FaeDBclnbNbpuYUZZyjvaCPpyeg86As+elC0LSUMbsJSM5UCKxS0VVRB
	 iT8MnQG4L2OTAiSaLEPFwAkxeU5e9k6DVm1kztwdDlVvVyb+JKMr5U3RROt+MVHP1E
	 n2d8cg0JTeu2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 476E781120;
	Tue, 30 Jul 2024 10:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C27E11BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACD7540609
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k1mTmp41Ci2Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:23:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0739840612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0739840612
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0739840612
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3744661DE7;
 Tue, 30 Jul 2024 10:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C1FCC4AF0B;
 Tue, 30 Jul 2024 10:23:12 +0000 (UTC)
Date: Tue, 30 Jul 2024 11:23:10 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240730102310.GU97837@kernel.org>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
 <20240725220810.12748-7-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725220810.12748-7-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722334993;
 bh=pT4+ay8DDR3nEJS/rR28xaqLvwI5HQMmBzAJq6x0P/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fktfH51WjzVxXOBHOw7WTdoaO8w/oJH8nQ309C+x2go71v6SfsR1Zsbq0VUuhZjEU
 JY2mqB/m5vXYtGG4mEC0+RL1GdTK6729SOJWF5uRd9oq+db92/rRY9Ptr46JjAcwEA
 E7cWI96cr7Z7Ncedg/LNa4eNkEMk5nSVD1MY3Z0fSHroq0FoZ6rbwA6pZ3Nm8jZ2VE
 V4uU6U/66uo7MTHJ/LxqzD9cOTCyMtzc47+XY2Cjs5B1aaD4uOozcs6UTlq26CPnwe
 nBpLTTjRKb+WRLvmyReoJmmaq+WeNDUVQco64elvflLsdYnB/f/stKhOP6f8K2il4S
 opZteaYHyGckg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fktfH51W
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 06/13] ice: support
 turning on/off the parser's double vlan mode
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

On Thu, Jul 25, 2024 at 04:08:02PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add API ice_parser_dvm_set() to support turning on/off the parser's double
> vlan mode.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

