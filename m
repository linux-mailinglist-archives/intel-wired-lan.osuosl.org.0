Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915CA2C035
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 11:05:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2ECE083FC0;
	Fri,  7 Feb 2025 10:05:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNpDArNUV3Xj; Fri,  7 Feb 2025 10:05:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E7C383F63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738922751;
	bh=eiq4CXDXCIKUdrOSkCJiz8MthGDYL2DqdKxS3uiuQ20=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m+jmAs34XASkoCKPE9wk7xvsVqXwq15dmvSRRWrghQ3IR5+FtVAXi3vo1/hBE2t3l
	 jSzhXpM02U+dxodwlxbKp6NxvM3tgbmUzDRRXPi1UE1UZt/3EpAjbWgkkbVSxJromW
	 /TAObYe9e5O5q80y6yKUfIEjEkHmMurqDayzPjDCgOx/+Ao3sE9DKp4OIVShefXCwU
	 uFHXhXepMZySMfPVGML4U+k1PQ6zMwPNGiCjMdsht61lcsd6wGUo4P78L5vEX2gMGW
	 LR/0Ej1NBks7/FvHLgDwY8uWltKsWImfVhdLfoEu9Wk33KGLmZS0GmltwP865t35zs
	 TpUjgTDqmX0rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E7C383F63;
	Fri,  7 Feb 2025 10:05:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD4501B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE35C417B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:05:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTUnZJS1Qsjd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 10:05:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0622B4179A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0622B4179A
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0622B4179A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 10:05:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4C639A41D9E;
 Fri,  7 Feb 2025 10:04:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 954B9C4CED1;
 Fri,  7 Feb 2025 10:05:45 +0000 (UTC)
Date: Fri, 7 Feb 2025 10:05:43 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20250207100543.GL554665@kernel.org>
References: <20250206083655.3005151-1-grzegorz.nitka@intel.com>
 <20250206083655.3005151-3-grzegorz.nitka@intel.com>
 <20250207100345.GK554665@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207100345.GK554665@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738922746;
 bh=MGNJPt+YsRpuH8tr53yUSWWSv+odu8ZuGiFak8uu0HA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uk0iWvUbxtRspeWHlVFjUbt3PdzfM+MHoDAwluv4OxLV/U7eEZfZfVTxNaVARPj8l
 RheCDhXge1E4j+nNxHN3iYECHXYwXG5o+AcFy6of8zN3O36b9eApAhGsPje5uIl06I
 ZYEupTrqaOB5Q53RvHyekVHV6ez/GLLVxrP83IIhYXvskPCjgI/ODGdCmg3Q4UGPV+
 +dftuB000PnEQ1bmea0jfotJPgL2rKswqJYNTAqq9ODfTnYopMuykmFFZbzHNsROb3
 SWRQQU/XKDnAgySxsg8igPmPxo9GAf8boPrllulRLs2hy8gzZGhkPBMvsk15X5tFB+
 ZIlcMa7wcpskA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Uk0iWvUb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Refactor E825C
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

On Fri, Feb 07, 2025 at 10:03:45AM +0000, Simon Horman wrote:
> On Thu, Feb 06, 2025 at 09:36:54AM +0100, Grzegorz Nitka wrote:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> > 
> > Simplify ice_phy_reg_info_eth56g struct definition to include base
> > address for the very first quad. Use base address info and 'step'
> > value to determine address for specific PHY quad.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Sorry, I failed to notice that the kdoc for ice_phy_reg_info_eth56g
needs to be updated to document base_addr instead of base.
