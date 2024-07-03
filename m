Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B8A926474
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 17:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78BE660EEE;
	Wed,  3 Jul 2024 15:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QXZrOQ7KKnB6; Wed,  3 Jul 2024 15:10:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B909A6066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720019447;
	bh=kM1t++HrEaT2x+xlNd3iSjAz8eCN2ImAAhdVopV5NTo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bRPsfiUJcrjj+4cgYeNOmqlDmneivAnu77mQ+uBzMoEGNp8OsYP2LrEMYHrV2SKTl
	 NbUgxOiuVYxSiB39RO3arFPTb6B95v46W6dvrmJW+jlOEb/Mm1fy5cZK4v2qv/O67a
	 r3eJATRCqDFqjLkLJlhy9MMOxoa0KUYZkywOdbbIS/IgaBoHhRlqs7rmxFgxJjO7CA
	 aoUVt/X3ceEh9qSIns6zJhgcxwS1zN9BaRwI+kMaTgUQMfednYXggVh9mOI1nEESDZ
	 AYJywNBRKhLrH3ZEIfJD+yzp/vyBdkigLLMYRXhiC/ctBcHQA+ta4LP/RrISKXS6Iz
	 d4iLi/KemJIPw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B909A6066D;
	Wed,  3 Jul 2024 15:10:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52F801BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4038E60EE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8AGfoS_SxT2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 15:10:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0E186066D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0E186066D
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0E186066D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EAADCCE2B02;
 Wed,  3 Jul 2024 15:10:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C715DC2BD10;
 Wed,  3 Jul 2024 15:10:37 +0000 (UTC)
Date: Wed, 3 Jul 2024 16:10:35 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20240703151035.GQ598357@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-5-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702040926.3327530-5-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720019440;
 bh=z5NT7nklWyh3rDy0r1YW8buRwoHbBrZ6LTh94YKUM84=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ip5Iq2HezpBHXYt/93hPbeMG7Zo/ec1gIvdcgAC9d8gL6AZN3LQUDCb874Tj88Cho
 4tKk+8DPYZFlQia57yoq0HWevC8Kw+XR+C7ZmDpCmXW+slcUp/I9w4zd/7EtxgG7K3
 /WrPDnpnK1Ki+fsWWSOAKR7hB6o4C05njYsnmFYyHb3sSeSCbaE30Mu2aXzk4YmoXx
 sEh9a5qkKq6KPKr+OGXfp4WnQLO2lYWnsouQXl3XbmCCMChZMbobi1MIsNNms/3yin
 cStctn9CCEXxDKaMmF1z0el9UOQDqR5yZADzGBYxR0vxXbC2LKEgiTpgXc5biTgHxC
 0drEK1adVdLxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ip5Iq2He
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 4/4] igc: Fix qbv tx
 latency by setting gtxoffset
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 12:09:26AM -0400, Faizal Rahim wrote:
> A large tx latency issue was discovered during testing when only QBV was
> enabled. The issue occurs because gtxoffset was not set when QBV is
> active, it was only set when launch time is active.
> 
> The patch "igc: Correct the launchtime offset" only sets gtxoffset when
> the launchtime_enable field is set by the user. Enabling launchtime_enable
> ultimately sets the register IGC_TXQCTL_QUEUE_MODE_LAUNCHT (referred to as
> LaunchT in the SW user manual).
> 
> Section 7.5.2.6 of the IGC i225/6 SW User Manual Rev 1.2.4 states:
> "The latency between transmission scheduling (launch time) and the
> time the packet is transmitted to the network is listed in Table 7-61."
> 
> However, the patch misinterprets the phrase "launch time" in that section
> by assuming it specifically refers to the LaunchT register, whereas it
> actually denotes the generic term for when a packet is released from the
> internal buffer to the MAC transmit logic.
> 
> This launch time, as per that section, also implicitly refers to the QBV
> gate open time, where a packet waits in the buffer for the QBV gate to
> open. Therefore, latency applies whenever QBV is in use. TSN features such
> as QBU and QAV reuse QBV, making the latency universal to TSN features.
> 
> Discussed with i226 HW owner (Shalev, Avi) and we were in agreement that
> the term "launch time" used in Section 7.5.2.6 is not clear and can be
> easily misinterpreted. Avi will update this section to:
> "When TQAVCTRL.TRANSMIT_MODE = TSN, the latency between transmission
> scheduling and the time the packet is transmitted to the network is listed
> in Table 7-61."
> 
> Fix this issue by using igc_tsn_is_tx_mode_in_tsn() as a condition to
> write to gtxoffset, aligning with the newly updated SW User Manual.
> 
> Tested:
> 1. Enrol taprio on talker board
>    base-time 0
>    cycle-time 1000000
>    flags 0x2
>    index 0 cmd S gatemask 0x1 interval1
>    index 0 cmd S gatemask 0x1 interval2
> 
>    Note:
>    interval1 = interval for a 64 bytes packet to go through
>    interval2 = cycle-time - interval1
> 
> 2. Take tcpdump on listener board
> 
> 3. Use udp tai app on talker to send packets to listener
> 
> 4. Check the timestamp on listener via wireshark
> 
> Test Result:
> 100 Mbps: 113 ~193 ns
> 1000 Mbps: 52 ~ 84 ns
> 2500 Mbps: 95 ~ 223 ns
> 
> Note that the test result is similar to the patch "igc: Correct the
> launchtime offset".
> 
> Fixes: 790835fcc0cb ("igc: Correct the launchtime offset")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

