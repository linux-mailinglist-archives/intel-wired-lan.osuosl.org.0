Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77680A0266B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 356D28127F;
	Mon,  6 Jan 2025 13:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DxHwKkJhYx22; Mon,  6 Jan 2025 13:23:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A717E80DB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736169820;
	bh=GmJv8G6x7WNsLwEESXANv3TlKPpxYbYcyEZMJ/ic5Io=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=589CdBtwvdla+nbzJUn6h4w6KZzE0a/ujxpPZmLiw5JjOgm4WX2ZejoeW8yHJ4D13
	 WmwEp0vTaoxcSm+9JQ3mvW+QpuY78w+T+H2L2N/7ukaa1jH3R2Ebh/+lBx/o5Ayfb3
	 PK3XO7W+QH0ry8WVXvlTqVZ3NblwR/zpHaXp2ghp9KkCtN+9OdHfCvPntONPNzW78n
	 gfbgCDJFxowJrXQM/lh//jGl0U4CVaGdnDvNpjB/hK6fM7oxNaqR4SnUNoulOFkGWH
	 3xLe2MMV9DKKh03FX/XMsBs+u4GYYVcGPWQ1SHIlBqMl2xy0gD/zwMneAO1NUIkgzM
	 q6j+SPScECGjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A717E80DB6;
	Mon,  6 Jan 2025 13:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8AFDF1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAC8280E45
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p2Z6pOp8p2uo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37BFC80DB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37BFC80DB6
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37BFC80DB6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:23:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B1C84A41779;
 Mon,  6 Jan 2025 13:21:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B1CC4CED2;
 Mon,  6 Jan 2025 13:23:33 +0000 (UTC)
Date: Mon, 6 Jan 2025 13:23:32 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106132332.GM4068@kernel.org>
References: <20241226165215.105092-1-linux@treblig.org>
 <20241226165215.105092-4-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226165215.105092-4-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736169816;
 bh=L4OA+feQosfJTkawacRl0+DS1U+OYOOVlzLoU/75aEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BbWB128wg42ils3gP/xsomnuOTXKWmOjJarqqghzUseyWUNEYAjyNiw8EiKE/7GIo
 QW95awNRMDAJjYjbxAzGkQWptp7qi6U+sn6sIknIBlplFIcZgzlHbTtSIcAbtuD1LC
 WiJF2erZmD8liQ4RMtalfpHo4Sv2XANn/dCFzzFSWNKRFchjwe5F2R+y6vet2HN/t8
 8TMOtuxhTZjhvdicj5CgENtGscbeQ4DmkrnzePQ2+SwsLaOCfoZQn2oEPSFLmykhVg
 f8jvgVa8OMIIvjWxdBIYYkmkq+pUCEz/k8RbOvs1Civrwy+goKQ4xPTDc3wUBb2cAQ
 2uF5c6pVTpKdQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BbWB128w
Subject: Re: [Intel-wired-lan] [RFC net-next 3/3] igc: Remove unused
 igc_read/write_pcie_cap_reg
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

On Thu, Dec 26, 2024 at 04:52:15PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The last uses of igc_read_pcie_cap_reg() and igc_write_pcie_cap_reg()
> were removed in 2019 by
> commit 16ecd8d9af26 ("igc: Remove the obsolete workaround")
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

