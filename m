Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FEBA272EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 14:37:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A98360BE2;
	Tue,  4 Feb 2025 13:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XOxjIRY-lDCa; Tue,  4 Feb 2025 13:37:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A70960BCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738676230;
	bh=PCStreTrVh9tP8xMO5wmYLb432LvbhD5nRi2GiOKOyw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZM/p7bQq5iCLViXaNJ8jYLwgj4BYhfOPlS5xtVt4NN6nCz0laNl91hrdxL+BcBYQG
	 BTMZetgjFaysGIJU7pGQR4lvzcGodBnn2AuUqlY9uH5E0AXEe3AimQmMmtaeFRAqvX
	 2GXiD0cyNp+SWMBltZboJdHWyi19OwotAKVPm+HXSLWxTtiL/kXYA3dQ58Y0+NGEwZ
	 lYw6N5p8Tr77bIkNcAZLZsrp7pFoefoHAa962KchzKvHdJsJrpND/+yEA1bD/V1ApL
	 XFErLEVOmAtoZg6SjnqVqJFm7s/xNOA3xzK/AHQJZ2aKHTOLJ1vlg7qB0p64hlt+Nw
	 P+ylMXZIjcREw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A70960BCE;
	Tue,  4 Feb 2025 13:37:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 44F6912F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25DA341579
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZdkGF8DyFsjV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 13:37:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 68F2041578
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68F2041578
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68F2041578
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:37:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id ED22DA402CB;
 Tue,  4 Feb 2025 13:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3467DC4CEDF;
 Tue,  4 Feb 2025 13:37:04 +0000 (UTC)
Date: Tue, 4 Feb 2025 13:37:01 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250204133701.GB234677@kernel.org>
References: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738676225;
 bh=yPdM4mhas6vfFH1tkLfqIqvDt0VG5r+foA36y7ZL8RU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kp5wvko5A67TYzOnDyKxsaVpeGyiEKhJjEKQdp1HJ4rxi3ueq0d1srU0nr7uLRQL2
 pVMTTvAqojPIHGXErkir6e1Mew0WI21NMZKW3N8FmObFQi+5fL5y1KzKMBX5exfynC
 m1GxMjv2x4k0TYJl7oeDfm5MB/2rtlW2HXX5F9RpzUWkCnYCra3bXpEcct5ENePukY
 4q+xQRf1KDD3qxfO3CBHBfIjFFz1UH/vsBMZ9JF2k39ZjYCmHpy+T5ELEBjP+q3MIH
 wnjkvIVivtPrUzsOGamLzAbc8EKUHumDThHdZGiy1qtSu+jh8UpoyIJZIayfcepTpA
 Pm7Phl3lT7SVA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kp5wvko5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for
 E610 device
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

On Tue, Feb 04, 2025 at 08:12:59AM +0100, Piotr Kwapulinski wrote:
> Add PTP support for E610 adapter. The E610 is based on X550 and adds
> firmware managed link, enhanced security capabilities and support for
> updated server manageability. It does not introduce any new PTP features
> compared to X550.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c     | 13 +++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)

Reviewed-by: Simon Horman <horms@kernel.org>

