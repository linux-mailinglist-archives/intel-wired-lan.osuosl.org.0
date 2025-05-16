Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8CDAB9CDB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 15:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23E1661267;
	Fri, 16 May 2025 13:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdoSHO40UhTX; Fri, 16 May 2025 13:05:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 941F861299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747400710;
	bh=oLwsiAgrXILE27I7LmTOPRd8/T24/Hyi07iU8jHNWKA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hnna6igvmeSmvi8G9ukBW3g8y49/mBfUz2aPIixL0V2I7HlMsUI1VM0fbMfZN2DM6
	 SFB4TJdGpK+59GiTrxONqNvqxXhY5BSyt76TXCn9iwGWJqiE/kYrFY7buqB5x7V6tM
	 QSBtAuJgIZhNnpDqH3+RcTf4A86peN8PRsMNfx8JwA+oQefkePTB+xjldMSbXjiz6D
	 HMWF+3Ks00wz3q1ikNK7cS/YciGUdtNxkXn5r5R9D7CA1W73xY5/tMCVF9rHP6v6K+
	 TRWqcHFYgxjN+GRzzbqDC0YgGXMgXO58DwTKKK1908ak0Ytm2BKQkJ3fRt0GtHvg+l
	 reZYuV/MmX/pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 941F861299;
	Fri, 16 May 2025 13:05:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 360D9185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2713040BC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:05:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06c4yq7FdZRw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 13:05:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 828CE40AF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 828CE40AF1
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 828CE40AF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 13:05:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 35BCD440D0;
 Fri, 16 May 2025 13:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8FDC4CEE4;
 Fri, 16 May 2025 13:05:06 +0000 (UTC)
Date: Fri, 16 May 2025 14:05:05 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250516130505.GF3339421@horms.kernel.org>
References: <20250515091105.3005987-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515091105.3005987-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747400708;
 bh=IHdLTJ+PfmEGjfTFYWVFBLX32m3BFb+o6xTU+iLBmA8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K+WYhbjjKVPGWZUz7Wup3JQ7aKLTZtrA/lZXAeTTMNuUHU2WSjffYt0VPhzQr1wA1
 CHhv07ZFtQax9SJ6Jpdb5v8Jz2ANoZvBCNvvKVBN6ebWGwainGrsmCns8FHNIvDyIY
 eYhRKE+z1lh9uAyMluRFBAb0RzkZ4MTzu0Lo/WzbpCdj5im2eQFOQi5WvHxaHPPhrd
 0C/9jQvXLtOjTH2TAtpeRjYM/btrTcdKXq+CDknhmT9UKyi6huUrizWeH7wO2PbR1g
 vRtOqJWHNsrmpXDHLberrIsAm1CkdhzfwrWoleFM8cVgUT93cXEksVJgQv69TA4P44
 F7AYgNXcYK+kw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=K+WYhbjj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: add 40G speed to
 Admin Command GET PORT OPTION
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

On Thu, May 15, 2025 at 09:11:05AM +0000, Aleksandr Loktionov wrote:
> Introduce the ICE_AQC_PORT_OPT_MAX_LANE_40G constant and update the code
> to process this new option in both the devlink and the Admin Queue Command
> GET PORT OPTION (opcode 0x06EA) message, similar to existing constants like
> ICE_AQC_PORT_OPT_MAX_LANE_50G, ICE_AQC_PORT_OPT_MAX_LANE_100G, and so on.
> 
> This feature allows the driver to correctly report configuration options
> for 2x40G on ICX-D LCC and other cards in the future via devlink.
> 
> Example comand:
>  devlink port split pci/0000:01:00.0/0 count 2 
> 
> Example dmesg:
>  ice 0000:01:00.0: Available port split options and max port speeds (Gbps):
>  ice 0000:01:00.0: Status  Split      Quad 0          Quad 1
>  ice 0000:01:00.0:         count  L0  L1  L2  L3  L4  L5  L6  L7
>  ice 0000:01:00.0:         2      40   -   -   -  40   -   -   -
>  ice 0000:01:00.0:         2      50   -  50   -   -   -   -   -
>  ice 0000:01:00.0:         4      25  25  25  25   -   -   -   -
>  ice 0000:01:00.0:         4      25  25   -   -  25  25   -   -
>  ice 0000:01:00.0: Active  8      10  10  10  10  10  10  10  10
>  ice 0000:01:00.0:         1     100   -   -   -   -   -   -   -
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 6488151..f2c0b28 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -667,7 +667,8 @@ static int ice_get_port_topology(struct ice_hw *hw, u8 lport,
>  
>  		if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_100G)
>  			port_topology->serdes_lane_count = 4;
> -		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G)
> +		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G ||
> +					 max_speed == ICE_AQC_PORT_OPT_MAX_LANE_40G)

nit: I think it would be better to indent the line above like this.

		else if (max_speed == ICE_AQC_PORT_OPT_MAX_LANE_50G ||
			 max_speed == ICE_AQC_PORT_OPT_MAX_LANE_40G)

>  			port_topology->serdes_lane_count = 2;
>  		else
>  			port_topology->serdes_lane_count = 1;

Otherwise, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
