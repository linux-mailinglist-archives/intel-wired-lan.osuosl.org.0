Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382DA676C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:48:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29C5582047;
	Tue, 18 Mar 2025 14:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzfvPJ3wYG4z; Tue, 18 Mar 2025 14:48:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 500AC82049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742309305;
	bh=NygJE02Zbw93sCWAwHSVqNM1sdstOlHGE44WfdShjy0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ufpzKmHR8AOTbY+1mdYzSZDtZQ6oXcUptxY3nsRUx4qcjWoX5wJkTaLtWJO1YWRjh
	 S1Up2HSB0EXjDof3qYNFrYpZhqz8Iq2INuieDHiiVf8wnQKrocA3U7ltdKnAqu51BG
	 eO8zJ9z0Uz4y/n+MQ+MikdwXCANJ3sjprsCl6Fy/9o6oIQgCKekt4JyeWMtlq1ExWH
	 jEzrsFVFVQhnGWGQoYfQbtl0c6f3uR/V12V+ukftYR+jXA3y/4bDLzQ+X8XgCSNBwD
	 2HzeD8tMNwouHsxFCxeOgLXexylEAE7aBbHru7Mq/TaKyAsnLYoKc8g2O3kskDpYVJ
	 tJT1DpZ2M2pHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 500AC82049;
	Tue, 18 Mar 2025 14:48:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 234DFD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1311D8203F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:48:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8WGdsCra-GK3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:48:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E53082038
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E53082038
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E53082038
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:48:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3DA3F5C57AE;
 Tue, 18 Mar 2025 14:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B06C4CEDD;
 Tue, 18 Mar 2025 14:48:20 +0000 (UTC)
Date: Tue, 18 Mar 2025 14:48:18 +0000
From: Simon Horman <horms@kernel.org>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 edumazet@google.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250318144818.GB688833@kernel.org>
References: <20250313093615.8037-1-rsalvaterra@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313093615.8037-1-rsalvaterra@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742309301;
 bh=/FEdHl3jk0n6rO675cBSNPnQPnOs8f+H3LcY5yHGvgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NzbucQmF9/xPVwzzXVdmF680I5od/ArclBuhZcObN9lUb7bnfAFYmhKNXzJtFTuWU
 bxV1EVqZQtqnKg62I1U+4Zwkgr98Onr3ltLTTHRHDbsYv5qJqYprbTW/cOzPVD+Bim
 vdgcGCLGS1CSZdbN7oG9w0Yl9qyBD51Sm6LGz+oQWbdE2lNCK2DpQ49en5HCeNySJi
 i87pDgQZzl6dZhz/Sb3F94WYo2UWCRkmFEjkTQ6bJBbBETOXl2jXgEIUUkh5i8ThK+
 ly9xAQ5dA9FQHJzzWn/0w9AKeGNSAQdxwVGy6YVoEEN5MC4Y53PL90ZZyeW5X8rz/B
 ntmlOponQjgNA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NzbucQmF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
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

On Thu, Mar 13, 2025 at 09:35:22AM +0000, Rui Salvaterra wrote:
> This is enabled by default in other Intel drivers I've checked (e1000, e1000e,
> iavf, igb and ice). Fixes an out-of-the-box performance issue when running
> OpenWrt on typical mini-PCs with igc-supported Ethernet controllers and 802.1Q
> VLAN configurations, as ethtool isn't part of the default packages and sane
> defaults are expected.
> 
> In my specific case, with an Intel N100-based machine with four I226-V Ethernet
> controllers, my upload performance increased from under 30 Mb/s to the expected
> ~1 Gb/s.
> 
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>

Thanks,

this seems entirely reasonable to me.

Reviewed-by: Simon Horman <horms@kernel.org>

Link to v1 for reference:
https://lore.kernel.org/all/20250307110339.13788-1-rsalvaterra@gmail.com/
