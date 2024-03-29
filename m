Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3612A8926A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 23:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D292082486;
	Fri, 29 Mar 2024 22:16:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 40Iy-tMbhPq8; Fri, 29 Mar 2024 22:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F28C824E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711750576;
	bh=djscu/jmiwXxbH3AC03/PHiIOo1aF//bXO1yS4Rq2WI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QxnFbFN6h3wBrdBzLO+egbierVIQm+tjaUbc28+cjo3Zy1nT5eGFSbKknd1eV4lh1
	 qNadUSOv2hyDDrOSw/Vj5Io+ily5cjkNQU/vWhtOTVxjRv8GfkZvQh1m39yD0AkfTP
	 Kq0X1Ip9mhW4BR3DaStMM8fNRXx2cnRorx78HmyeRV4T5kIVjuJRPpFSzMQpXjDsCL
	 H3lpWRtAzIk5n1iFiAPWzuMW+Uxpe2nnXi6eU1ydRSZ3Z82aZwzGZ9g5HcAOvrRxSd
	 PZDVHrgoC/nfQ1cXBwcwXpZBA1C0jEE2ftJshVEMzPdS2V7Vy21C3szrLrGEfAYkL7
	 Q2NhHMzy1mkxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F28C824E3;
	Fri, 29 Mar 2024 22:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5C881BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF1341720
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EccwwHqGQpva for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 22:16:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 26B684174F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B684174F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26B684174F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:16:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 893B161A08;
 Fri, 29 Mar 2024 22:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3AC2C433F1;
 Fri, 29 Mar 2024 22:16:04 +0000 (UTC)
Date: Fri, 29 Mar 2024 15:16:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240329151603.77981289@kernel.org>
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711750565;
 bh=433Lz/Y3OL0GQmpw2bh29J8eaSo3lDFYM4WPs7r2AHc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E0pT12slbEikvN3kyB87rQiIImPF/oVqRQPnogyTOrpr92SJK1j9FSQj+w3/pZCP4
 U845PaNqG0eXU58dSpySkBqyCipND6psVqJ7ahMozKcWyxSBkQdsAtZ7CmaFNJNe77
 1zkVSVRPsJefmfh8p3m6sh82nMCRWL5CSE6D14GTW4jXGAJNk7NdueVoe1fSBG/tyi
 vPinNQ+7/uKgJMHUupYlPB+JgU1DurTsHYatBO2gTKECco1hfuiw2s1GlARyYRNqYQ
 voMTXmfnHpyQYB35iN+lTQJVKLNcebxHadiEe4oDDZBvtVIPR+5oGton2vpLWhoMhD
 mHMppPCV34aUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=E0pT12sl
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: netdev@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Mar 2024 10:23:18 +0100 Wojciech Drewek wrote:
> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> module implementation to support new attributes that will allow user
> to change maximum power. Rename structures and functions to be more
> generic. Introduce an example of the new API in ice driver.

I'm no SFP expert but seems reasonable.

Would be good to insert more references to the SFP / CMIS specs
which describe the standard registers.

Also the series is suffering from lack of docs and spec, please
update both:

  Documentation/networking/ethtool-netlink.rst
  Documentation/netlink/specs/ethtool.yaml
