Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2FEB37FFF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 12:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0329340AD3;
	Wed, 27 Aug 2025 10:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdvuXNzoXyty; Wed, 27 Aug 2025 10:37:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1593B40AC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756291036;
	bh=9vt7D/fNqzXI4tAg+o2IQ/c6Q5VaeLHycGlQ8IENPzM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dMYgDxs+Z4kLV7aDfzcLgy1FimJwM3sNEuCzp6aodZ3u1kKwFYwzfMcOrOxGXbQlT
	 lefvU2CwKnrPuzSp/oHQpsh7KRRf9pa2njzlOZfjSqilflxzwF/9w/h5NUevEG2lyc
	 wI0vAG7YQRfRpiz5zDtZZ2d77lfjqNoIJatlIGKQG+dTnm3+Q7VpierAv13dkH5I2n
	 iPl2B27Pf4RtGQc76sx89fXgwhcvMFb3n+RA75pD7niab5QnwLhPhcFvjGCDg7qC2t
	 UploYlQFQZFr75dfBd3bmF9MQl7HNK6OkGttQKTaWIX49PWutcTse7DWXcSSHVbBHV
	 A8GZ9YTNIcOnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1593B40AC8;
	Wed, 27 Aug 2025 10:37:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B307114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 10:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32FF381204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 10:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rf4hYFWp7Mkr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 10:37:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3AA15811FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AA15811FC
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AA15811FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 10:37:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5B55460254;
 Wed, 27 Aug 2025 10:37:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E18FC4CEEB;
 Wed, 27 Aug 2025 10:37:09 +0000 (UTC)
Date: Wed, 27 Aug 2025 11:37:07 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: kheib@redhat.com, Paul Menzel <pmenzel@molgen.mpg.de>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Message-ID: <20250827103707.GA18629@horms.kernel.org>
References: <20250815-jk-fix-i40e-ice-pxe-9k-mtu-v2-1-ce857cdc6488@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250815-jk-fix-i40e-ice-pxe-9k-mtu-v2-1-ce857cdc6488@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756291031;
 bh=zz0HnrV5d51b3sZWgXThN2FcD8pbBRycJmJ5peYukvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E7pSloHxOHT0+mKcggOKnM4Nd1lfd1GQkk+Ggj+UbV1dNXwOcHmTfvz0nJc2HPRid
 Jn7FuVbu+ZOfAJ8cF/ghOYY6shgpipWNTbp0EJ+Cwycxl/ljifom7w6b1f2z9eAiOR
 NfCrLMkMq5qm2h+LPPXd4g2eN9pTZkYR0gFcCERFnmVxRcbybTeT8hR8ajFrb/eneN
 Ti+kPeWoaPHB52g8kOdXmT3SzYt26cf7S8HO780mX+hkw2zM85yHDHvkdAED4aIgWJ
 WymdxS94tQvEwh07TMgXBahFpOOX7NxoNde/pZxwbDQ73kAaIq00L1IzqknEtj5eIS
 Gmq5FWReNkSWg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=E7pSloHx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix Jumbo Frame
 support after iPXE boot
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

On Fri, Aug 15, 2025 at 05:20:39PM -0700, Jacob Keller wrote:
> The i40e hardware has multiple hardware settings which define the Maximum
> Frame Size (MFS) of the physical port. The firmware has an AdminQ command
> (0x0603) to configure the MFS, but the i40e Linux driver never issues this
> command.
> 
> In most cases this is no problem, as the NVM default value has the device
> configured for its maximum value of 9728. Unfortunately, recent versions of
> the iPXE intelxl driver now issue the 0x0603 Set Mac Config command,
> modifying the MFS and reducing it from its default value of 9728.
> 
> This occurred as part of iPXE commit 6871a7de705b ("[intelxl] Use admin
> queue to set port MAC address and maximum frame size"), a prerequisite
> change for supporting the E800 series hardware in iPXE. Both the E700 and
> E800 firmware support the AdminQ command, and the iPXE code shares much of
> the logic between the two device drivers.
> 
> The ice E800 Linux driver already issues the 0x0603 Set Mac Config command
> early during probe, and is thus unaffected by the iPXE change.
> 
> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), the
> i40e driver does check the I40E_PRTGL_SAH register, but it only logs a
> warning message if its value is below the 9728 default. This register also
> only covers received packets and not transmitted packets. A warning can
> inform system administrators, but does not correct the issue. No
> interactions from userspace cause the driver to write to PRTGL_SAH or issue
> the 0x0603 AdminQ command. Only a GLOBR reset will restore the value to its
> default value. There is no obvious method to trigger a GLOBR reset from
> user space.
> 
> To fix this, introduce the i40e_aq_set_mac_config() function, similar to
> the one from the ice driver. Call this during early probe to ensure that
> the device configuration matches driver expectation.
> 
> In addition, instead of just checking the I40E_PRTGL_SAH register, update
> its value to the 9728 default and write it back. This ensures that the
> hardware is in the expected state, regardless of whether the iPXE (or any
> other early boot driver) has modified this state.
> 
> This is a better user experience, as we now fix the issues with larger MTU
> instead of merely warning. It also aligns with the way the ice E800 series
> driver works.
> 
> A final note: The Fixes tag provided here is not strictly accurate. The
> issue occurs as a result of an external entity (the iPXE intelxl driver),
> and this is not a regression specifically caused by the mentioned change.
> However, I believe the original change to just warn about PRTGL_SAH being
> too low was an insufficient fix.
> 
> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
> Link: https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9bcd689c3bc8e
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

