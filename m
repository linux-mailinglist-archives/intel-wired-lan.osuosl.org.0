Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC659B92A8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 14:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6590F81F41;
	Fri,  1 Nov 2024 13:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m8s-rmHTQDAa; Fri,  1 Nov 2024 13:55:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C76D181FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730469334;
	bh=f4h/z4+Jnmk5GzKbNajme1Z8CN2loHdn1cz3Rvu3eJ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aX/Ten6OFe4B92A0tg84/22UU4Io8bMq+PZ5XDIZ0HhQrPsrgObzTfjYdzuBNYCJF
	 GSpGX3euNTNjGbAa8LQmf8QLdDEydU7c7d8TwazQBCZf3aZv+a2BU5I8O9vmO47EMf
	 9yrZxPNY3Bdt0bebfSPz8R0X+TptIJIjPtJWxJJQaPPpsMTEFUTY0HeGO6+w4JL52n
	 +1Q//X+Ji1tL118EdE30JFk1Pl98mb1tdTd0idTWiJRw4hn1uLvG6ibHWrIJ9BGuJA
	 M2x5vX9/8YG7+S/chKGr0aQGypJTF5ukCg7Dg+0iBgYS5jO5NM/HasDccFeYmx3TVc
	 Xwg/XSVQByjJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C76D181FE4;
	Fri,  1 Nov 2024 13:55:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 955EC3B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 13:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D91B42471
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 13:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLXMOClRLLr5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 13:55:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8D37D42465
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D37D42465
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D37D42465
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 13:55:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EEA515CC83D;
 Fri,  1 Nov 2024 10:29:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E95CC4CECD;
 Fri,  1 Nov 2024 10:30:17 +0000 (UTC)
Date: Fri, 1 Nov 2024 10:30:15 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241101103015.GE1838431@kernel.org>
References: <20241001102605.4526-1-mateusz.polchlopek@intel.com>
 <20241001102605.4526-2-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001102605.4526-2-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730457018;
 bh=sJEGBgvc3zgavo2T6T7nENSVwv1AiZk/aBUCUyw5FE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FP2eRis4QvOPHBR3Gt5+FhgcTKImDHDtrGZkDSYmRZ1KOSstCMiI1bv3YcyOXEQZc
 +AqakWn7aOswGUwtQD0b9cJTU8TAdS7mk9PRShXky6tbcmr4cAoUFOCYcQ5WkY4BZE
 RN1NY+uiZ5/f3W+v9pruQIIXAZyxfTRwpiySDc/bb2vAF8RsDvmW3ZyPmKsvFR6Q0d
 WuPpW0ZWusWKkP9wXA0W/IEIdfoY2wf/Y3GRtS8n+0eK3Qb4yBAqscKKRtdBxqLFWv
 qvfl/oqezuvQSU8cEYrVeLuN81forDenKU2b6BJGpsPXe+vHjVLBFEI+kINqJZTAFq
 kiUFqnIc+xPJw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FP2eRis4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: rework of dump
 serdes equalizer values feature
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

On Tue, Oct 01, 2024 at 06:26:04AM -0400, Mateusz Polchlopek wrote:
> Refactor function ice_get_tx_rx_equa() to iterate over new table of
> params instead of multiple calls to ice_aq_get_phy_equalization().
> 
> Subsequent commit will extend that function by add more serdes equalizer
> values to dump.
> 
> Shorten the fields of struct ice_serdes_equalization_to_ethtool for
> readability purposes.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

