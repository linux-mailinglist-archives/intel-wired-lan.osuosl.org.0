Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E331BA36FC7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Feb 2025 18:29:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3372C40E5B;
	Sat, 15 Feb 2025 17:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dveuJJqfj3si; Sat, 15 Feb 2025 17:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F08B40E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739640573;
	bh=DUaiIw+ZiQPdSkg3VSygQ+p6d9+bA73bJf3EO3WcJWI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P+AiTV4ugNmdJqk3/HtDl7lDnVdjd3hi5fc3z2BNB+LXz5GrViep36crKzC2LQg95
	 WDidzFzkziBnalrcBo7GXSUX/G73PmfjSnj278Lpw46pqmuZIzv7zjrJAXOiYBlVE6
	 YBCAD3ikWBwO+nIkxGlptB9nbVvF6VRFcSZWriJc/od/8gmm6cTL+g5eRwgMUVdNcN
	 d1dAtIEKlhN9qTuqov61meF9ySOYRDfGpH9RxrEsMUwXO7rMec+V2VHJ+6gaIXeG+S
	 mrE4F1dkoh82wZ8BN+xLBH5cGqqhROFEHqhWlUz3opXyN6nQ2dhxnaC0gcpp+00mPC
	 O8BH0cbfmLFUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F08B40E24;
	Sat, 15 Feb 2025 17:29:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 562AFDF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D56140E32
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:29:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDXTLsVEbu0b for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Feb 2025 17:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EA6D40E24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EA6D40E24
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EA6D40E24
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Feb 2025 17:29:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DA2B3A405B8;
 Sat, 15 Feb 2025 17:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D475C4CEDF;
 Sat, 15 Feb 2025 17:29:27 +0000 (UTC)
Date: Sat, 15 Feb 2025 17:29:25 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 andrew@lunn.ch, pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250215172925.GT1615191@kernel.org>
References: <20250213074452.95862-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213074452.95862-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739640568;
 bh=IK6h/4TA/Iti4V46nu69BclTQgANpyGTmyc/wI2SVZc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jWZ6cxqT9XxRP9y3hkypd8VcpSr9sMxROT2H4C0mYerIefJIO6usUbdO2NwbEBkLJ
 uUTN+S6x0OjiDIAr6yIQ6NRWKGGu3uy1RshcV/kHxt2THB0hB32AFaUwxFyNkpeRoI
 rVOnpDHTj1gCiDYoi75maa2RSp6qlaaxjWHHhUYnzsSv1Go5WjIycYcjiC69LsAegA
 BXNsiE5xTvTLohRbbGONCh1r+c2Dbcd5ryQdM0mYJV7b+l2xXbuLzhrqPR3oSOJ3su
 xPPi98y9hS8aK04vtDJIAcDDTVPIw7uKDuUVoFbpMiB31d11xvps1AJipMce5Wlgfz
 AfHDGGok6BHRA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jWZ6cxqT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: add support for
 thermal sensor event reception
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

On Thu, Feb 13, 2025 at 08:44:52AM +0100, Jedrzej Jagielski wrote:
> E610 NICs unlike the previous devices utilizing ixgbe driver
> are notified in the case of overheating by the FW ACI event.
> 
> In event of overheat when threshold is exceeded, FW suspends all
> traffic and sends overtemp event to the driver. Then driver
> logs appropriate message and closes the adapter instance.
> The card remains in that state until the platform is rebooted.
> 
> This approach is a solution to the fact current version of the
> E610 FW doesn't support reading thermal sensor data by the
> SW. So give to user at least any info that overtemp event
> has occurred, without interface disappearing from the OS
> without any note.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2,3,4 : commit msg tweaks

Reviewed-by: Simon Horman <horms@kernel.org>

