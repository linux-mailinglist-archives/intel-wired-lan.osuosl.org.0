Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9138AA37068
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 20:31:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D2D741243;
	Sat, 15 Feb 2025 19:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QRIqwJppbuWM; Sat, 15 Feb 2025 19:31:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5302D40DAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739647872;
	bh=SIUXgueNkyGR13Y/gs9GoFmsKoDfztJRdODSqrLfdiU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qWxCq7wYi1/TvGuVbNuqNm/QxMaED3FzAl1hVbJeiZgU0xEM9jBE1kVsMCwJiFIHf
	 KW3aMAhF4SWMDIqDzcf1t2WmlGctSU5EamPCZTV7mdmfFHqTtDdL+CA9aoGOVB4nbK
	 W4NxLvPQROnIZV7sOmfAS1iI34Tsd2OXFdPqFjuWHBQPDacOnt8WskJrCe5y9hycjK
	 jBocSI5s7lPUeZK5AjMkPRhm8Ma5wVqy9hHvdrLqHYZ4UTl6tQvBSy7XhkZn18dYQ9
	 bvu0uFmDHQ7YPGmZlEUEPJTUYc6CiCR4lGYVb1z/Z5ZI2hAMbcZltVGZiGwiPC3NFY
	 Kth+2COrpQMEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5302D40DAB;
	Sat, 15 Feb 2025 19:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 115B6DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F059440AE7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:31:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qGJ4pxRGlokW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 19:31:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA6CB40A60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA6CB40A60
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA6CB40A60
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 19:31:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3E03FA409F5;
 Sat, 15 Feb 2025 19:29:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA66DC4CEDF;
 Sat, 15 Feb 2025 19:31:04 +0000 (UTC)
Date: Sat, 15 Feb 2025 19:31:02 +0000
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20250215193102.GV1615191@kernel.org>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
 <20250213105525.GJ1615191@kernel.org>
 <72975a9c-0daf-4100-b31a-cee0f52e2514@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <72975a9c-0daf-4100-b31a-cee0f52e2514@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739647866;
 bh=TXTdzNW0VGtfO466EM72fkTi81UqXLfTYU598Ty8rzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aIiparAn1uj6lU3nl882HdQsutxt0iki79X9Di4Y1si8bLhe+TD/IeJmoYCcOgetq
 SfYxawOI5bO3D8HiSVvjQPeqUws6ROyoGpvyG2/6gevKckDkBpUDVdgUuWC9cQ8DYq
 aaf2Fsa5JnteSx+OwK51t6BO+0xM2QkZdwNfgvTZdDjJxb2q1bxuDwugtsfNx5Vvoz
 DgKhPyMMujsoSiJz2GCIuM5FW7IzVsH3vCBbzIxbw7QeTvosR9mjkM2KuYI7tp15hk
 rjZZIekc4SYnQhh/EUlvX2Iq5wAY1CoohabZg7O0C+UjxfIpnSc0yWXb0VAYvogCYd
 qUR+qQ/k0AxTw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aIiparAn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix deinitializing
 VF in error path
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 13, 2025 at 01:32:38PM +0100, Marcin Szycik wrote:
> 
> 
> On 13.02.2025 11:55, Simon Horman wrote:
> > On Tue, Feb 11, 2025 at 06:43:21PM +0100, Marcin Szycik wrote:
> >> If ice_ena_vfs() fails after calling ice_create_vf_entries(), it frees
> >> all VFs without removing them from snapshot PF-VF mailbox list, leading
> >> to list corruption.
> >>
> >> Reproducer:
> >>   devlink dev eswitch set $PF1_PCI mode switchdev
> >>   ip l s $PF1 up
> >>   ip l s $PF1 promisc on
> >>   sleep 1
> >>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> > 
> > Should the line above be "echo 0" to remove the VFs before creating VFs
> > below (I'm looking at sriov_numvfs_store())?
> 
> Both "echo 1" commands fail (I'm fixing it in patch 2/2), that's why there's
> no "echo 0" in between. Also, in this minimal example I'm assuming no VFs
> were initially present.
> 
> Thanks for reviewing!

Likewise, thanks for the clarification.

...
