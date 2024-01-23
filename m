Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1388395DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 18:07:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACDF6403FB;
	Tue, 23 Jan 2024 17:07:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACDF6403FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706029643;
	bh=YYP3lV+I7wKiAAuWHnQM4MJY8WojS2IgTThn4HtRoXE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=APxtPbR7F4qV5KzCIcO+ORnx7hjHbr+ZCxTpJnKg85KwkZbh+P16AykjQRjI4XEha
	 +ZBVQtzxvaqLA0uem8zDOlSDqNFkFhzm2DkhXAlDqHAvRcyDD3GYCcb5iL5Sx2xyJ6
	 0bYe925hBKxz9KJBvcHxKt7zPt2R7gj2aL2oyalcfIASvEFmVmhapTgawM8KvKTAOw
	 GgfeG4QuwKIBFvmbV+mA96NDcxwbRpPFZTT1HUVXIwcgOaBswpbQH4QjeqHDNtKbWm
	 BhqD1ur3+Qi7zK6ZJGRPFozZemGehmaT1rh4T3Qj2Ll3+kGUdnmgTgrgp8UaWf3DWU
	 k/btVw8Awwwtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MC1vZ8QEG-Xq; Tue, 23 Jan 2024 17:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A362840491;
	Tue, 23 Jan 2024 17:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A362840491
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 341E31BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B01640414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B01640414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dm4-tq5KXLBk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 17:07:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 381BA403FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 17:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 381BA403FB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6B7F161C0A;
 Tue, 23 Jan 2024 17:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEFD7C433F1;
 Tue, 23 Jan 2024 17:07:13 +0000 (UTC)
Date: Tue, 23 Jan 2024 17:07:11 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123170711.GL254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-7-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-7-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706029635;
 bh=wpbM9x7x1JCmm5dR/KOBtftHAc6l/wBK2x9iHxRpaRw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sh1gGDQNxukoNdgoRrl8bGFO1xwzQczRNhj93Uf7HbdHR+DsOORXnk3A3o6B3Zisj
 1gkP5TefdckfqOUDr1L0+sVXxXptBo6WFRZth2cW02RjdZ4KrvYeJnDUli4uG2ymHH
 VtXLRehJFEXBlY/JoCcvWpnfl+BO/P+VeNoOzJQKmO8QENcewp9OUbA5IgoU350BC6
 wZxW6VvQw//iApftxJr6ah8Kml8+2iOBieLbpVoJdBG2o3eNaCJ3ZiLxU/9Dxr0Mfg
 PtdiqPqXCzsSB3s7ZTHRIe1q7o7zJDbE893L0RRwePneF2vDAxsinsuRmYWrr7dqhu
 8OioapS3WSLjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sh1gGDQN
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 6/7] ice: factor out
 ice_ptp_rebuild_owner()
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:30AM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_reset() function uses a goto to skip past clock owner
> operations if performing a PF reset or if the device is not the clock
> owner. This is a bit confusing. Factor this out into
> ice_ptp_rebuild_owner() instead.
> 
> The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
> functionality after a device reset. Follow the convention set by the
> ice_main.c file and rename this function to ice_ptp_rebuild(), in the
> same way that we have ice_prepare_for_reset() and
> ice_ptp_prepare_for_reset().
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

