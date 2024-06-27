Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6891A3BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 12:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEDF6414CE;
	Thu, 27 Jun 2024 10:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BgqUftff2Lwu; Thu, 27 Jun 2024 10:29:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39636410DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719484172;
	bh=eHS7LFr3ygxN65FrABNXFVX0HTmvBqnyxGGQC1nxfUk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JPERg3sRfigaaabq0kYZ3ALYllnFDcYnSBaJnPR0V8dtQn04qhklkmWGfoLctnbVT
	 IhX5f/G3rVHfNEvW0otGBsVrr8x9GsncD02Nd2j6Hp4NU3w9UCTn+rzacHt1WM92vi
	 yO8yjsi0lpM5oPYMyQSniT1Ndq0aiL2DdYqWj0dq4+RKMHcaadBLX7iAV5xgNcySFt
	 U8OSxJZZbSjR3lJxIfowmOxF2DVjfSzKZXMlGUq+xCZuvOSDUIxYJjTNgHX6sss1rm
	 W041DXTJifX8Q1L8VFh0eqiXXsDPiZNpxNDPil2jRbplI06Fa4pdenWyQ/4o8/hZTh
	 IjMphnc5XrsXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39636410DC;
	Thu, 27 Jun 2024 10:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF09F1BF977
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 10:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AB4A41AA1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 10:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ovgSlDWL1vf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 10:29:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6B2041A92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6B2041A92
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6B2041A92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 10:29:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 64B5961E16;
 Thu, 27 Jun 2024 10:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C9AC32786;
 Thu, 27 Jun 2024 10:29:25 +0000 (UTC)
Date: Thu, 27 Jun 2024 11:29:23 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240627102923.GE3104@kernel.org>
References: <20240624080510.19479-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624080510.19479-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719484167;
 bh=B6qLxuM0d2P3IdWwCmCeueHLfRQ5hCafTkG1Z8S5GUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S1tWa1LIsJ2whl8aNX46uMj0ohEv/5SehBNcAO10Hut537l9b+lj5RLx4o/lErS2n
 BBFOErFdh0oP5YU+YryMquGFHk7yTHhjv6ivYVNY9pk9WIMPLWcvEzhbnS7TUTIPZK
 wFQCX2QPgKbK8ivimn2yIwCiz6yb7DHYkH82pb6n+vpEw8TKhC3wr6ZkNm6MVq2UKX
 EBEqzI4L/GJZQ6yiKOz9UtdUpNBjI77f77x3L1IgPKW1XFXyP309yC/JfJawzEFqoo
 mSFeIkrDvJ7/qy1Y7hKkcTVW9LPDnpfEgUbwZJwZTt2muosc62Gjl6qSLbjlTBv/s8
 g7jrrA/LWzHUQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=S1tWa1LI
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: remove eswitch rebuild
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
Cc: Wojciech.Drewek@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 24, 2024 at 10:05:10AM +0200, Michal Swiatkowski wrote:
> Since the port representors are added one by one there is no need to do
> eswitch rebuild. Each port representor is detached and attached in VF
> reset path.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

