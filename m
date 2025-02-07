Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B7AA2C0E2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BCE6424DF;
	Fri,  7 Feb 2025 10:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2n7sKcjYixFt; Fri,  7 Feb 2025 10:47:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7942840B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738925230;
	bh=bLrZT96pS7vRRwJclpL3r/s8HjjXIJ+Zp1e41+4jezk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qMn0Bhxvy5PnQnu+4DDkB7W0hMf2cGNHx4zNQA2Cq7d6xg70gymteUv8poYavnEHs
	 kx7FMqlduOjz32anWNFnEJdqlHKQOZmrOaWCGO7UYv5CHQuVz8n9U2BC1tezZPfLAi
	 qZ4nFmYJLpG4iFaB2sknQeqYm3yCKL/FangJNv8GAZ48kKkGZfBD93AprPdcCDL79i
	 scfoHVjkP1MMD5ZhNYFZwroZe1LVPwEJj7sfPksa147/kGzipkM41+NZfvgfEmCwhS
	 ixyfhb3kJ7tSCLO5Kg01rE1hRyFBNW3b4reqp3iRj2BSkIfOYUs/XvBIliFv2bR9G3
	 CMLN83u4A80Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7942840B8F;
	Fri,  7 Feb 2025 10:47:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19D51C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0983C605FA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:47:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmQcxz92C9ga for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:47:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4DC456060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DC456060C
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DC456060C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:47:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 465E3A42767;
 Fri,  7 Feb 2025 10:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B709EC4CED1;
 Fri,  7 Feb 2025 10:47:04 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:47:02 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250207104702.GO554665@kernel.org>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203150328.4095-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738925225;
 bh=d5IJFjytcsT+LXZ87CAh0a76bYphLqRKFqt3F+ZSJPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nRHbNZrqVBXfpxiC2LzVJGxCO+28vt1yE9pYtnRAIWeIrorb8HiegUO4YIzNsKNgj
 7iwv/vmCIi8xXLXe8od/XZxoF3scXxpo5qL231t0sh0OnuM1MlXc71Mt0M/MrL/MxI
 GcFeI/G65l6xOnRHn17ZLx8GkONNMH7YgLSnGiIMM4npikPULXX1GDl5LkwQ61xktN
 8sjQCMLDFFJ4jiJlgYRU6mHVID1Uqu6AEfwNh1ku2NMIJ+t++kh4tr1a1gloDTcKWF
 oJPEmNK8DiBeG8onMGBX5dhuwJCtKXHynfiktgSkdJiuL2wsdV1dOJY4SZHJ3oPdEl
 0G72H9b13/mrw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nRHbNZrq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/13] ixgbe: add initial
 devlink support
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

On Mon, Feb 03, 2025 at 04:03:16PM +0100, Jedrzej Jagielski wrote:
> Add an initial support for devlink interface to ixgbe driver.
> 
> Similarly to i40e driver the implementation doesn't enable
> devlink to manage device-wide configuration. Devlink instance
> is created for each physical function of PCIe device.
> 
> Create separate directory for devlink related ixgbe files
> and use naming scheme similar to the one used in the ice driver.
> 
> Add a stub for Documentation, to be extended by further patches.
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
> new file mode 100644
> index 000000000000..ca920d421d42
> --- /dev/null
> +++ b/Documentation/networking/devlink/ixgbe.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +====================
> +ixgbe devlink support
> +====================

nit: the '=' lines are one character too short wrt the text they decorate.

Flagged by make htmldocs.

> +
> +This document describes the devlink features implemented by the ``ixgbe``
> +device driver.

...
