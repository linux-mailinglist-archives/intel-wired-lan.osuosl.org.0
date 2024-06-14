Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC97908A46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 12:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88BD8843EA;
	Fri, 14 Jun 2024 10:40:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eqJvwqWC61Zx; Fri, 14 Jun 2024 10:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D595A843ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718361631;
	bh=4mIJ563gKzAv6KkUZixlCJruNlBb3l+igQPRzp5nWtk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=29Kb8p9zlb0N3wlPS4TxVQxKRQqA3IqKbdhLo1eSbla5jeNjFSOLHOycgcTadmeqj
	 yuIgSXLc2FrqG0WgkvB3u2Y2F4LdO1xsn1c8vZ9Hai5EA3ET8L6AGwlf6vCjgOs9QO
	 kmwKl2AbD2m5sS2RHokc1mYJMG/s31QHyyc0RZbN47X97b115oJiuM1jsb01Q30Spk
	 +C7xTAUB6eeHjmUIXG775MBlGVhI7If91xNsLEGpJiH9jwZrDs609RWCSc1+nrTbEq
	 u2YXz1tYS8uxjyPX7NzVS118xGLME0/AodfZysWy/FguDWPGnhUbqwmHFD4ziRzgmo
	 //xoNbMl+Sl/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D595A843ED;
	Fri, 14 Jun 2024 10:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 904371BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D36A843E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tERkmY6K5A6O for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 10:40:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD56E843E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD56E843E7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD56E843E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0B20861F0E;
 Fri, 14 Jun 2024 10:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014A3C4AF1D;
 Fri, 14 Jun 2024 10:40:24 +0000 (UTC)
Date: Fri, 14 Jun 2024 11:40:22 +0100
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240614104022.GD8447@kernel.org>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
 <20240606224701.359706-2-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606224701.359706-2-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718361626;
 bh=ideFO4/M7kKA58e4ofze6hWyuI7bXN54Y2r8g2Zu/AU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YxZ6zplCMdcJbuXAOPl614YWUninQEg9D96edlRimoWyN9fabjO5JdlPQwr91Vw9b
 B4zDH+PxogQLBZHvMT65Ww1rx+pZIG5900X48spIYQqi2jiJGmggUaJrhlhFGJ9GtO
 PzZNeLhzHYZsMLtWm5Pq1RMS8K6a4MTOYIbeWgwjp+0sInNCPASr5pxD3F8vjxyU52
 X67r8ouI1k4WXEAXo9QfcPLtAzxFJWhyPIgwatcpgndmkijMrKXFZs5FgrT+UJd7TC
 VNvqq3XPuLPGM/V9ykrLqGZcAncwpxYMFEFKUFOCvbL+tTQW2hIixn2/IcPIxyMurR
 +oRuD7L9u+3Lg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YxZ6zplC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] net: docs: add
 missing features that can have stats
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, corbet@lwn.net,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 03:46:55PM -0700, Jesse Brandeburg wrote:
> While trying to figure out ethtool -I | --include-statistics, I noticed
> some docs got missed when implementing commit 0e9c127729be ("ethtool:
> add interface to read Tx hardware timestamping statistics").
> 
> Fix up the docs to match the kernel code, and while there, sort them in
> alphabetical order.
> 
> Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

