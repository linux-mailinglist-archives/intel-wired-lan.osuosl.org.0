Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7B18D64FA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 16:56:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6677E423A2;
	Fri, 31 May 2024 14:56:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MdIfPzaPQlBf; Fri, 31 May 2024 14:56:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95FA0423A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717167364;
	bh=cwvuOfucQPGRB+S0zcJBZFdnOJq+1sfg4M5YNfqmzKg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S910xWEVLPM9ePYuF72NpuqX+3VpT32hyCbwS1St3PZEuXfTgZxLcQIXX+QJRG65D
	 CpiMdEajI6wfUCTKq9ZpjJwSeBk3/wlxTcgmLpDUvejnDlkCXr2QO6wfiX82OxErP9
	 xA965IZdLoHYe019Q9ORxkHFlTSTZ/PUwB6vPQs9LPm2hx5cWHtlJYg0+A7RGmlZFu
	 /mfcU76j+cg4fZ4z3zINPyBLd5/8xZ+nR2Em9G0JWiwgan2XAxTIjQXcBi0OJiBfFd
	 4SDCxbbFpUu29O4ELfhwuFcW3NHoHKfovrx9PtmwJHewtgPJiMTz2MwjhGzUykCjrH
	 Nyt7/irVSUSng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95FA0423A4;
	Fri, 31 May 2024 14:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBB821D53A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C781D403BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5Ntl0DpbSNU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 14:56:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2CCF9400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CCF9400DC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2CCF9400DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 14:56:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 61EF862BEC;
 Fri, 31 May 2024 14:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D42AC116B1;
 Fri, 31 May 2024 14:55:59 +0000 (UTC)
Date: Fri, 31 May 2024 15:55:58 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240531145558.GM123401@kernel.org>
References: <20240527151023.3634-1-piotr.kwapulinski@intel.com>
 <20240527151023.3634-7-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527151023.3634-7-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717167361;
 bh=Q65pr34IRb5qsqtEq4pcYmrmq9rUc1aeuM031NMmJx4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NeRPqkSFyrG3t+wNBoVMTF1DwaLs08TRTIzw4YPwFPsYnJteHTfKXMNH9IB7vU+F/
 Y/3Ox0B9IdH/Kg1wMiS/OX75jVuIYX4A1T93b2LvzZhfpAdnhEAEw40M+gZ6A7zsO9
 Kxf52PMN+8+HmPE1qrc+hAPTQxs/EHv8Higy3MWi65vusQNJUHul1I9zjGgsqHEb69
 CIyhnHfEy1AAsX8GeU23RdX4YlLTOGrC8ikVCXlNXdeyWGi4StjVc0vpr4PjaCkppi
 bJJX3Xs4Da5L+Mny484o+qVjeYgp6i6+dEMHMZ6ixpJZaGvyLcuZoy4Qe0uf9KDF7I
 ZSWPIcoHPD4vA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NeRPqkSF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 6/7] ixgbe: Clean up the
 E610 link management related code
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 05:10:22PM +0200, Piotr Kwapulinski wrote:
> Required for enabling the link management in E610 device.
> 
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

