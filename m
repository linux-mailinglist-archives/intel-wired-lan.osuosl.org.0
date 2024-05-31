Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA7F8D64F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33B7B423A8;
	Fri, 31 May 2024 14:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhzq1zv2OQGN; Fri, 31 May 2024 14:55:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7533741A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167351;
	bh=ZQfF7+PlkJvIw11ehIm0Wg9c06qJT2GnKpEgepWLjdc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PWeJLlSVFdW26NUAxOEeJMFPu0XX8sJkLmL5YJptI1LKpGghFa/QgT5udTCj+W9Zj
	 wEExqBV9p1oFkQlFx5pobsqaJtibHlgF7DTGDmeGLLHvpf7IulTYmrWG86deheYFw9
	 bIRyJfzaDuYbT+E6Ik8oxd4mwhzQK3S57saM2m1zwWLvepKvCG6YXUlpnnhw49p+8q
	 pApu29cOqzxcrYoZRAvYot6mjTdMu9rHhd59y9hA8W7Kufb3EmhoAu4XPSKusTFrGP
	 XRwXSBPU+F/2DPeqs/YpBtymAhs/UtV1du72+0z21DL0r0P5bV2rIkmsKirmnU0yp7
	 aXw/JiZj05WRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7533741A00;
	Fri, 31 May 2024 14:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EE1E1D53A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 894BB41A69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yr378GsC-ZzQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:55:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A60BD41A00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A60BD41A00
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A60BD41A00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:55:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 356CECE1CB5;
 Fri, 31 May 2024 14:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28545C116B1;
 Fri, 31 May 2024 14:55:41 +0000 (UTC)
Date: Fri, 31 May 2024 15:55:38 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145538.GL123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-5-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-5-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167344;
 bh=Hv2gYHqbGfnlZ96RHSeNWv1lmd20D/5nqOqdbNrMRmk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FBVzZkMTtUWtbHT7zCGF8kEf6qNAMK0uagz5pr2tiurGqbCKw+QMNg8/gokzCtuyR
 TY6As9J7mbi/toO/A2LGwu1Yj/tCfH5yPqpJ3nzvLg5bzTFiXr+eJFS14MKWdRG+vZ
 yNiCJoTyiFcV2mK2xPSZTOMBnQfqLEOlJq9ifirSAfzStfYl4zhTlZ9KHYDlMA/UmX
 +U42vlPzE3vngHef3tnNRwEEL1AeP4P0lYwHE6Ki6XsWtdRoyT+rzHpkSnfYpV0xwj
 4l2wEddmbEgLqPVZOSDe1hLccoKZMd1z1uZZMkPZLW71HLShHy0lFaM+KproD2rjBg
 CBlSXLSXX/Zug==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FBVzZkMT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 4/7] ixgbe: Add support
 for NVM handling in E610 device
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
Cc: Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:20PM +0200, Piotr Kwapulinski wrote:
> Add low level support for accessing NVM in E610 device. NVM operations are
> handled via the Admin Command Interface. Add the following NVM specific
> operations:
> - acquire, release, read
> - validate checksum
> - read shadow ram
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

