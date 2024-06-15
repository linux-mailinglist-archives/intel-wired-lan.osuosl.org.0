Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032D190951F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jun 2024 02:56:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB9F5403AD;
	Sat, 15 Jun 2024 00:56:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5dpEgu6T-Yd; Sat, 15 Jun 2024 00:56:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15C6740390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718412966;
	bh=YfYPUr/6LuapLFsubEiJTpy9n4+3ednBXu0OlJpdbYA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GlrFo43p82yF/VqCxKuLnL90Lych5s42nNInjOTxkPLJnX1Dn/ZJx0Dj+rkt5dxzn
	 Jpt5/BRsPGKZClEUxD9g6LOe2VZrOxmBGvWgVb45tQrI2Dmx9mRumHQf3M+XjG6wpy
	 6NE3G9XhMq2gYbrKIt5zcWOu7pBXq+yvFHzkHZaUF+u1luyUfE2T8xLL+ujNRZbV2C
	 Dz2w06bvPOHYZS4hhNOnsbAZQkKyVnNIqiYlHT8knRDenmRXLlGqMxTqJSGNezCe9u
	 5qlCjaPv//3asy2rSlOD2ZqE4yBQJCdTaWVN3hTuEO076LGj6b8/fcHH7G1dVQFWLw
	 F1hSYHtjPoFAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15C6740390;
	Sat, 15 Jun 2024 00:56:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5F71BF969
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 00:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE3B2416F3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 00:56:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8O57eaKPx6G5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jun 2024 00:56:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5DDDA416DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DDDA416DB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DDDA416DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jun 2024 00:56:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0327C61F11;
 Sat, 15 Jun 2024 00:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF6BC2BD10;
 Sat, 15 Jun 2024 00:56:00 +0000 (UTC)
Date: Fri, 14 Jun 2024 17:55:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Anil Samal <anil.samal@intel.com>
Message-ID: <20240614175559.4826e4aa@kernel.org>
In-Reply-To: <20240614125935.900102-4-anil.samal@intel.com>
References: <20240614125935.900102-1-anil.samal@intel.com>
 <20240614125935.900102-4-anil.samal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718412960;
 bh=vfiMJ+3bv9cpjQwDMNPWKxLpb+EofwsYQJo95zaXp64=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kjjpjnkjY9tlL41Ve5eD4jCTycckrdnRIZxucfFPAp/AeS3qjaBPfiiWaV1duYmmI
 K3k9huH1xTmXH6ft8YQ0wYl1/uGNmOQ8SIARGjua2llxv02O7eJQIfx8CfZZw6mvcE
 R1sOHv2d5pCJnEwIC0X1ihfP2DEEPaxh2K5qUp+WMoP2GzdgOazyBHh0g+yEFJf7OA
 RQMaAzJ68H2b3kGWqn3zXZEL8W4wZrrdfMS/U67xRR0M/lyZaE/NJ+1Fy7UCSPCGqC
 VCGpPim0ViLOpgEigG80R+kFe1ho3e7e236VOpY0lrYGDGKbPrtwPh0L+n5I2N6Bi5
 ym0JCAnAiRRzQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=kjjpjnkj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 14 Jun 2024 05:58:17 -0700 Anil Samal wrote:
> To debug link issues in the field, serdes Tx/Rx equalizer values
> help to determine the health of serdes lane.
> 
> Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
> The following list of equalizer param is supported
>     a. rx_equalization_pre2
>     b. rx_equalization_pre1
>     c. rx_equalization_post1
>     d. rx_equalization_bflf
>     e. rx_equalization_bfhf
>     f. rx_equalization_drate
>     g. tx_equalization_pre1
>     h. tx_equalization_pre3
>     i. tx_equalization_atten
>     j. tx_equalization_post1
>     k. tx_equalization_pre2

I'd be tempted to create a dedicated way to dump vendor specific signal
quality indicators (both for Ethernet and PCIe). Feels little cleaner
than appending to a flat mixed-purpose dump. But either way is fine by
me, TBH. Much better than vendor tools poking into the BAR...
