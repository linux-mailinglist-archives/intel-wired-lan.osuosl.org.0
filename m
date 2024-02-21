Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109E85D581
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 11:29:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 869A581EEB;
	Wed, 21 Feb 2024 10:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BhHeQqGM_v6l; Wed, 21 Feb 2024 10:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0DCD81EBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708511341;
	bh=MqOclPKlARqWVrL8z63y5tpUGjFQZryNX7wyHkXaP24=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kD+KMC+tGwIl9y6A8w0Qgj2E9+sgrNK0myAxYj5HsxDSRP8xgM/YcpFPKHPk7hCVu
	 dOb7RGdUDe1sH2MxMo5UR0woiWvb7SDFbfiAcpzDVndx3ic2IsCpAl9EwrTixA6GRl
	 gPUws4m8BJK634J5BHMY9FF1VCv+Yiaary/gXOna8qx7TJG7sRXL/FOVFNIeX3xKCk
	 RKE7s/BLSFn9xQMc2Txqe1kkVjFO3x7DU+mC5hrazaHvqDJOc6+kjLQYQpULT9KYEa
	 C9S20SUKb0qjb1rcUrlcoCqBNB9+qm9mgSLcaiDBnvWBiZkhqh9delaNhqQzRTJz0o
	 ttF+jPw1vMwPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0DCD81EBA;
	Wed, 21 Feb 2024 10:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 307351BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16EFE405C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBbAgo9mkKGI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 10:28:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4066140017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4066140017
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4066140017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:28:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C994361479;
 Wed, 21 Feb 2024 10:28:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D54EFC43390;
 Wed, 21 Feb 2024 10:28:53 +0000 (UTC)
Date: Wed, 21 Feb 2024 10:28:51 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240221102851.GA352018@kernel.org>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
 <20240218-keee-u32-cleanup-v4-3-71f13b7c3e60@lunn.ch>
 <20240220124405.GB40273@kernel.org>
 <a52361ef-66ab-41bd-b245-ccd26fcbd957@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a52361ef-66ab-41bd-b245-ccd26fcbd957@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708511336;
 bh=bm8u3iY6apdYKRPco8f0Nqv9EVlR63UHDnzkoz1yF1o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lc35IEzyuobZxeZsjUNEzNQrHDqnOznMP+hUeZWXxQEKxj2NiOKeaQStwwLOW9oSZ
 GhjZ3wFVTd7CMEjyXU7qgnaqWw2j+wDWJUI7Vxstd4VtThzts68zAmgVIl6tWWRU1I
 0HKaWvo7q/ZPCUKTvPV/gyfPTeo/X9fwJAU8o+//Rv9wo6yD96YCwS3VHs4f8Ax7b/
 +qzXuC1tWvRLgYabMF5H48suClus9mAINrjd8bn+shErQKu2frfTGy9Ruvc85QTqwr
 Cj63MOFxT5MwvSb3XMgibxqhgAIlGUQHpVWkF61Dwd6h9fFraBn3aBL9vN/+tY+R5M
 3nF62OYp9W7RA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Lc35IEzy
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/9] net: qlogic: qede:
 Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 20, 2024 at 03:45:28PM +0100, Andrew Lunn wrote:
> > > +	unsupp = linkmode_andnot(tmp, edata->advertised, supported);
> > 
> > nit: Given the types involved, I might have written this as:
> > 
> > 	unsupp = !!linkmode_andnot(tmp, edata->advertised, supported);
> 
> linkmode_andnot() calls bitmap_andnot():
> 
> static inline bool bitmap_andnot(unsigned long *dst, const unsigned long *src1,
> 			const unsigned long *src2, unsigned int nbits)
> 
> It already returns a bool, so there is no need to force an int to bool
> conversion using !!.

Good point, sorry for missing that.
I assume there is a reason that the return type of
linkmode_andnot is not bool.
