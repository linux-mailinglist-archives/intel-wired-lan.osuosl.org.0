Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DECAB9079
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 22:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC9CE81340;
	Thu, 15 May 2025 20:02:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LsPPrFnVXMMJ; Thu, 15 May 2025 20:02:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 514EF81341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747339358;
	bh=BrrT0yB3/sutQf836mFTobusiryBCugaJrAaPO1OfQE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vl+vNMNwX5LmY2wewSqMZ49vbCKxKh6S2Hbs2uLeH2EelXTuAe/MK2yB1vK8d/ur+
	 zM8a791lGZ7Syf2D6QOTJT2AWfNEWBYYatLvdG1AIgGTG0I6MVCe0jjcG7twp2N+9W
	 HIN1a6nTkAoio3QPJCgyt37CHJGWMDWMs9HDKLwv+pY+Wba6Yf9eaw6ChZDtUGcTms
	 oF66DE4SGhewuMc33t8GVpi3/WsOvQZWePoEbMGVs+4HFVnB5qD4mFitM+B0y1i73b
	 DF9evCz7zbhxziU7/M8KMdywRVJQeWJinfBxrhmrh+7w9tjU8Kv6VbY/xlKuIH9pGm
	 qrCgYbWBOFXSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 514EF81341;
	Thu, 15 May 2025 20:02:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75886185
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72B79401CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:02:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Erh0blYS-IGO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 20:02:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B4A2740140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4A2740140
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4A2740140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 20:02:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2EF485C57A5;
 Thu, 15 May 2025 20:00:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BC5DC4CEED;
 Thu, 15 May 2025 20:02:34 +0000 (UTC)
Date: Thu, 15 May 2025 21:02:32 +0100
From: Simon Horman <horms@kernel.org>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Konrad Knitter <konrad.knitter@intel.com>
Message-ID: <20250515200232.GY3339421@horms.kernel.org>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747339355;
 bh=faEObyMxYfkwccsx+LjjZfjnpOCaiPTiz0+oED1ZxpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oOqp8xDxr5zGRaVYQT2t7J4h6IcX4Plu+uTFCf6NIhzyBHnflcIr/tFa/VP7ouiUK
 rDPDsZM3fvUg/LP/uvHLUWQSqzdnmMGjAvqAr+p6skJEb3aZQvWvTNQkdiAVb9YwVn
 dtVPt+vScCEmu6haXCTojEABsOXMqr8mxl63hw6p/7jlG1GXHmJX8kselSErjfx9zy
 GvkVxWUM1IEi9fM6w7rdYs6aXy02PstQIwESwpokoQm6i5YWoDaiCv+hNxd9ln5M5W
 7shv8pTbB8+LCt6FQpZwHSW91abn7adhI7+0El/QVZ+4Up1byXfYH9NpIihsb/I0ZE
 UuUEkxsxIZxrg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oOqp8xDx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

On Wed, May 14, 2025 at 12:46:32PM +0200, Dawid Osuchowski wrote:
> E835 is an enhanced version of the E830.
> It continues to use the same set of commands, registers and interfaces
> as other devices in the 800 Series.
> 
> Following device IDs are added:
> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
> 
> Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

