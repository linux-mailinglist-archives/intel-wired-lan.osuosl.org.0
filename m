Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB40A32C33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 17:46:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 949578116A;
	Wed, 12 Feb 2025 16:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a_-iv4X3Bm_7; Wed, 12 Feb 2025 16:46:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3F88811C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739378763;
	bh=WuN+5SOrfAk/XndP4+IgFzZrDayBkOfHU/mxiUd88KM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oOyn32FKRUIXerdkzeUVuUqMs4xDi8MYeYDgD0GlHFCNk/geeu1yloCoH5c/JVHdm
	 7dQTqg13c3Kku/dJPJ+2oZtjqzY8CyMYLYrmvp8cWfsBe8qseqicGRf+hyGrhsMslw
	 WwqtF5whFV+/iqa0uo+5VkGBsh3JBpG0Qv6ymMJJSpVoFNOLTCbiQLCaHcv8VwULvU
	 y1qhvOMfjtr4hF/5mgyVJIhph/WzrR3FFidIUsMaZjrcGypfbZahVozx+kDUiH4S25
	 CcLK8qn1QvSayS1OPdRMx5ZJoQ0tsihs8D20fgfo3OLPSA5rVyqd0SE+xgWu1WsSaJ
	 wmYlBdBElLqCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3F88811C4;
	Wed, 12 Feb 2025 16:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76796C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B0908130E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UkUVwOtemKDL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 16:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A79B9811C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A79B9811C4
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A79B9811C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:46:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 53744A400C2;
 Wed, 12 Feb 2025 16:44:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C0C3C4CEDF;
 Wed, 12 Feb 2025 16:45:57 +0000 (UTC)
Date: Wed, 12 Feb 2025 16:45:55 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250212164555.GE1615191@kernel.org>
References: <20250210141112.3445723-1-grzegorz.nitka@intel.com>
 <20250210141112.3445723-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210141112.3445723-3-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739378759;
 bh=0W+Ty3BPfd5R21VuddlUfeffZiNupXMXzYVKfGLPhCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o0TvkmT5AoMo1oi+TJbcUWGrFtROcA9lBSPrDeJU4z472DFtbIpYrMmCITCz9bTB5
 wnXJ36K8FbMjv0Ar+Qj9FVUpjs024Yh5VpvXM6ysB6oJmY/yPwG/tPhgi6b997sIrx
 umiZA/zJlAgwx8BqCZJNovuqL7mO2jBUDoc9N9y/Z0DBMaZ5430yg4238OFESb5leR
 ofadKwa+QwNE3o3BeC73zp8owTepwun3DATWaoB5C16pbgafwtoSViZlQaiK+Dpk0a
 aJK0IvR1stU5RTJXIf2H27+uVpTOFTPPIQpZhxolOEi2GU3/dffm1eRXw1c6uRLYFZ
 8ujouxV4Rgx0Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=o0TvkmT5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: Refactor E825C
 PHY registers info struct
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

On Mon, Feb 10, 2025 at 03:11:11PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Simplify ice_phy_reg_info_eth56g struct definition to include base
> address for the very first quad. Use base address info and 'step'
> value to determine address for specific PHY quad.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

