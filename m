Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D99DBB1E999
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9727040BF2;
	Fri,  8 Aug 2025 13:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bcr7AQ_RA6JR; Fri,  8 Aug 2025 13:53:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A81140BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754661209;
	bh=WrejizDi7/0x70xAY10jGw+5BxxTRsG30W6FJpT2X5w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JE5OeYgEZcmYWFsBPvZIc3apWjsTW6+1nGMRFMNIJ8L6frLFD1TTDCNj1nDQNqkT5
	 Sp95IC5sYKv/2fCtnx8sqGJp81QWx0ZnNDSitLaGKt0Te5BzSc1hnRHcflmPXJ/uHo
	 UxblXT7oRMOQU13SfYfgS/eZQhbQMXvoH0T5ztVDG24OfvVcKTww8jb2UpcwNx2Y4m
	 lcCUrcLJI7qnMRoISkWeWZzau73HssU+2MOuRFEUPrrv0QgdoeK0/qhlk/bB855YRL
	 LNIwCJlHd2f9GiqvhgUQ27muYop7T2GE7yxVGDsegEyTqxFjGC/9EfLg6AH+nDXZ04
	 C/er7oKUfCFlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A81140BF5;
	Fri,  8 Aug 2025 13:53:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A781D31
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4DF940BDC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2GObNT2hhkO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
X-Greylist: delayed 557 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 13:53:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2FE2340ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FE2340ABE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FE2340ABE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3F75E61429;
 Fri,  8 Aug 2025 13:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01973C4CEED;
 Fri,  8 Aug 2025 13:44:45 +0000 (UTC)
Date: Fri, 8 Aug 2025 14:44:43 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250808134443.GD4654@horms.kernel.org>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <8ae30b40-04e5-4400-92fb-86101b5c667d@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ae30b40-04e5-4400-92fb-86101b5c667d@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754660687;
 bh=Fjd74z6nl1sIEBfOGJhqPzlxzMvI3qYffQ5FwgvdElo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mvc9tXR57pefvA1PnVW0wnrR3PuOYiTWpjNJAG02qMdbZy7EhHwXzUvQ3fJJiG/Ew
 0D93wGg+Y7K0uZ4W7HzPIBHrLVZJX0LcRjhtGyH+nf5cWi9QTQ8NsaeBtH/0D2ajLY
 TIju01DgC2tolEmwQ7PJTAwqDlp1l0iMIN1YqqP09Hz9PcjzO1u4L3uV3AKcJ3Wtbx
 MZvwT1fCIqFn98eHeKVKcr06x4VcX0aygXXtkgI4XFiOHuW0hsqdHosymeIZPUk0yj
 E1Gfmox2Lc9HpYsrZRjIrVISHfc8j89WN0XX4d42KfiqP1YPf6TlrWB9013TUyle5u
 wHq2OAM1L5vXw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mvc9tXR5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/5] igc: drop unnecessary
 constant casts to u16
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

On Wed, Jul 23, 2025 at 10:55:20AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> C's integer promotion rules make them ints no matter what.
> 
> Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

