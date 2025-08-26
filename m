Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF8CB3658D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 15:49:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66EE36F90C;
	Tue, 26 Aug 2025 13:49:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HG_PAnDNbyf0; Tue, 26 Aug 2025 13:49:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A6076F907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756216140;
	bh=tLw3YRDXSxieAEUkQih90MyR4d5TxwOlKQ0gYxIPleg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GUlnaIqwiVRZ8xoYE2Cee8TmJC11DlCksCsRInsf8VJVCXPUcMxlTIZGrCjS5tHXE
	 R+xn3CNlBZaAxydSHvOlX4b6Ac/p4y/PN+vdrRkWGGb8Xisj5mtymYsHE5qmi7rdqw
	 Af5k6yw77kxCMySLViL2xXrAdr3hmikEofzolgu1xHX5Caw6BHeOb6SbVuYWEFvV2y
	 VdcWBcMRXv4UiOmpUJ2iCv9/GhAC6G9xOSppL5Yu+ZjqMcfobH9NOkzY9hPPVdisza
	 uvOjLEUaVbHz/eJzHsB4upIqxXAWhjE+wpRdw+06OHo5R+8Dh9tsD9q9hFUA4WO3xU
	 lMPZYskX4bXdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A6076F907;
	Tue, 26 Aug 2025 13:49:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C45C3B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 13:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B49258529C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 13:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVb-d0JSViqC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 13:48:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C53328529A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C53328529A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C53328529A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 13:48:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4118C602B0;
 Tue, 26 Aug 2025 13:48:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C97D0C4CEF1;
 Tue, 26 Aug 2025 13:48:53 +0000 (UTC)
Date: Tue, 26 Aug 2025 14:48:51 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com
Message-ID: <20250826134851.GA5892@horms.kernel.org>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756216135;
 bh=XGiRH+1trpEwpUcqcmaqq2E7b01zJv0ChUBF1gJeF4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mKEiW9a0GV2oQv268spDXPs54Scu4EjEUieeaLwcUXa6H4u/pp6g6xJ8SNH6r+pSs
 PFpkXMn6B2/ruJD9zUclcwYoanrGe3ffPoHCUne8nETzJq4c6/Sy+dqgkENbxs/qiQ
 fP8hNLuAZyTS9Y8O54WNEIyy5IG0evknX3lLI4lPhQpFZfa2s57/Opc3Zwf8D+i9LA
 2ycXxWZluVbQFj3DWAyYX6BKSgFS6l2TBXwjVSIKeakvvaHp5vyjwYu0uGhD5pnjAC
 xrDEirpGwgiRYlJuVrPr7MRdxufkCgNfaYdy7tCZDwLGbAtUN2NE52PeTprpwZ/yTQ
 s6ziis6N7lI7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mKEiW9a0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/15] Fwlog support in
 ixgbe
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

On Tue, Aug 12, 2025 at 06:23:21AM +0200, Michal Swiatkowski wrote:
> Hi,
> 
> Firmware logging is a feature that allow user to dump firmware log using
> debugfs interface. It is supported on device that can handle specific
> firmware ops. It is true for ice and ixgbe driver.
> 
> Prepare code from ice driver to be moved to the library code and reuse
> it in ixgbe driver.
> 
> v1 --> v2: [1]
>  * fix building issue in patch 9
> 
> [1] https://lore.kernel.org/netdev/20250722104600.10141-1-michal.swiatkowski@linux.intel.com/
> 
> Michal Swiatkowski (15):
>   ice: make fwlog functions static
>   ice: move get_fwlog_data() to fwlog file
>   ice: drop ice_pf_fwlog_update_module()
>   ice: introduce ice_fwlog structure
>   ice: add pdev into fwlog structure and use it for logging
>   ice: allow calling custom send function in fwlog
>   ice: move out debugfs init from fwlog
>   ice: check for PF number outside the fwlog code

nit: I think that patch 8/15 updates ice_fwlog_init()
     such that it begins with a blank line. I would delete it.

>   ice: drop driver specific structure from fwlog code
>   libie, ice: move fwlog admin queue to libie
>   ice: move debugfs code to fwlog
>   ice: prepare for moving file to libie
>   ice: reregister fwlog after driver reinit
>   ice, libie: move fwlog code to libie
>   ixgbe: fwlog support for e610

...

The nit above notwithstanding, this looks good to me.
Please feel free to add:

Reviewed-by: Simon Horman <horms@kernel.org>

