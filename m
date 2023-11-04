Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516187E1012
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 16:25:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D114540A6F;
	Sat,  4 Nov 2023 15:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D114540A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699111548;
	bh=Reowh79br0P5c3nf7Aco1WeFQ7QDIis/DIPU3CNHkxk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oy7I1NtcbJAVSTIl4ws6yt+EctwaFyKiIZ5s0pPNg/9CSDu8MOwZBDGBHJEbO7Cw7
	 ahEEgY8SOZ5i4f78I7SM6ijqzkmMxO0wHatwMrsGISv1ju9i/3GuZVzYkEJW6/zBkm
	 pVPjI2xYyc9WTHzIbB06GazAT11/g5Y91YKm3J6MTfOVfUr72+oONnh5seAlpvLV4V
	 UIFU4XU7k/dBr/6tUX+ZjnD8uxgH4Q7Pfh4pvo6uJo+n3aovE1XoWPkDWqoc42gC/h
	 OIfGXAtl5H/jCEpRcFC7e9RM0iNmvIKWMZRiuFunvJ72QsBf0uiRi/1V7BAkN9UFSi
	 eTCFZ6BYkPCiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWxphMfbwGTg; Sat,  4 Nov 2023 15:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C1F3409C8;
	Sat,  4 Nov 2023 15:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C1F3409C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9920B1BF584
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70F2F60F44
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70F2F60F44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23xweoo-Ufic for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 15:25:40 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C45C60F41
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C45C60F41
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0BA8BCE0229;
 Sat,  4 Nov 2023 15:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C433C433C7;
 Sat,  4 Nov 2023 15:25:30 +0000 (UTC)
Date: Sat, 4 Nov 2023 11:25:23 -0400
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20231104152523.GI891380@kernel.org>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
 <20231103234658.511859-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231103234658.511859-4-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699111537;
 bh=RXC0aVEzXpNQmrr7IVwVsn2Tuc9ENbNnCqjKZnXeNuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vFbreeA4celmK7CrhDLD7TDVutpD9Zl/06XOmuhANy00F0FjW+htciPxTCMz9PbTt
 C7ht5vYsiO+I5zEuFao7Cc1PDhw3sagdQAdSbFOUolNDVNiYl2+/rX+O0Q/QmRzsR8
 s6VR94JRGX9eBaDNb1iI3yhK8iZATpW7S2BUS4pipVtB2zHvGnZOsOTJFI6Ntee0Rn
 OwPS2hbvSQpEGcvfiBWV0W6COmLAPqFf/Y4PC83rYFiqy4ICx99yfFMdL1bmdvoQhd
 7ir2RMNGXTWeqpkDtGCPfn0fzEGCvueXn4Buco5G5HwoLVjIBWgENif4f8pRnWvaRI
 DDqLO3yUZoXxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=vFbreeA4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: restore timestamp
 configuration after device reset
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 03, 2023 at 04:46:58PM -0700, Jacob Keller wrote:
> The driver calls ice_ptp_cfg_timestamp() during ice_ptp_prepare_for_reset()
> to disable timestamping while the device is resetting. This operation
> destroys the user requested configuration. While the driver does call
> ice_ptp_cfg_timestamp in ice_rebuild() to restore some hardware settings
> after a reset, it unconditionally passes true or false, resulting in
> failure to restore previous user space configuration.
> 
> This results in a device reset forcibly disabling timestamp configuration
> regardless of current user settings.
> 
> This was not detected previously due to a quirk of the LinuxPTP ptp4l
> application. If ptp4l detects a missing timestamp, it enters a fault state
> and performs recovery logic which includes executing SIOCSHWTSTAMP again,
> restoring the now accidentally cleared configuration.
> 
> Not every application does this, and for these applications, timestamps
> will mysteriously stop after a PF reset, without being restored until an
> application restart.
> 
> Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:
> 
> 1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
>    timestamping logic in ice_ptp_prepare_for_reset() and ice_ptp_release()
> 
> 2) ice_ptp_restore_timestamp_mode() which calls
>    ice_ptp_restore_tx_interrupt() to restore Tx timestamping configuration,
>    calls ice_set_rx_tstamp() to restore Rx timestamping configuration, and
>    issues an immediate TSYN_TX interrupt to ensure that timestamps which
>    may have occurred during the device reset get processed.
> 
> Modify the ice_ptp_set_timestamp_mode to directly save the user
> configuration and then call ice_ptp_restore_timestamp_mode. This way, reset
> no longer destroys the saved user configuration.
> 
> This obsoletes the ice_set_tx_tstamp() function which can now be safely
> removed.
> 
> With this change, all devices should now restore Tx and Rx timestamping
> functionality correctly after a PF reset without application intervention.
> 
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
