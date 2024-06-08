Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 295A7901193
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D353D81194;
	Sat,  8 Jun 2024 12:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ayFk4wPLsTiA; Sat,  8 Jun 2024 12:59:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 018828116A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851553;
	bh=3Zn5cjJB9OCn9fyU4jzTTq7GcvCRnQU7jPh/W9P65uw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F8Hv6mCF0aEoc71MMUE2FtO6lQWpBSSJMyKg+jOhnoUcc0y5RVzKEiax0bV8xtqD4
	 YrMibGwZoEQF0yT81/kN6qt+J+FqAmtcqmhvMbBLYs/xoGpO+OsJSqSw/kWsKXAbRo
	 afbo2lRXcbVyNLbChH6RS2FeoUONpb3S98JrCTcwWpo12pg2eeSk5KDMR2IatwwuDu
	 wYcjPjkCninC2roAG57J/1Deg35qvmwNdqwDGPBA3BZ7vBXkLbu/Rb5mMHps40W+tA
	 tIPR9FT2US0FXyatWxUgK8tlq+USseDxcqgnArDmyRrhcgJPRIzHtTtTlYt7HCvLa1
	 UgAJaOlqIM92g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 018828116A;
	Sat,  8 Jun 2024 12:59:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8931BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 592A78116A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id coiUX3eZoZ_N for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:59:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 89D5281139
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89D5281139
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89D5281139
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 53EC3CE1D29;
 Sat,  8 Jun 2024 12:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53CC1C2BD11;
 Sat,  8 Jun 2024 12:59:06 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:59:04 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125904.GZ27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-8-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-8-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851547;
 bh=/mfXYyiZLGR+cGtCegAQMVUyskz7NtbY6gJqGOnLYCg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c4bhP3bvDJ5LdTjkPZsPah0kxjtCs9l0uGFNYr1xeyfhS5054lRPLcMYUedluZfOh
 bOj/IWF1Ll2rGMKp+H4/YV98Us/VJMdlj01+olUBd/2wPOb1KBCN7OCtImB7ryr8Fe
 mL9XKiCiNWdE7NSQZquUGCfvxDihrvJjlo0BbCLR+nQwCG/qm+z/8IJfDy82YHLMe5
 DNFfLPaX9DTIfAh2xwNeDn0OMnf8/2jkNBXnrk8cVt7psRoFKJg9P9mngkt2MtNet7
 rX8UU9LfnxGxY48yxDAA1zumlEPEYfzXzs6WZPsgiqf4mgeOTE7xmkiDaDV++O/BQO
 UVo8txHpwpqEQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c4bhP3bv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 07/12] iavf: add support
 for indirect access to PHC time
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:55AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
> 
> Based on some simple tests with ftrace, the latency of the indirect
> clock access appears to be about ~110 microseconds. This is due to the
> cost of preparing a message to send over the virtchnl queue.
> 
> This is expected, due to the increased jitter caused by sending messages
> over virtchnl. It is not easy to control the precise time that the
> message is sent by the VF, or the time that the message is responded to
> by the PF, or the time that the message sent from the PF is received by
> the VF.
> 
> For sending the request, note that many PTP related operations will
> require sending of VIRTCHNL messages. Instead of adding a separate AQ
> flag and storage for each operation, setup a simple queue mechanism for
> queuing up virtchnl messages.
> 
> Each message will be converted to a iavf_ptp_aq_cmd structure which ends
> with a flexible array member. A single AQ flag is added for processing
> messages from this queue. In principle this could be extended to handle
> arbitrary virtchnl messages. For now it is kept to PTP-specific as the
> need is primarily for handling PTP-related commands.
> 
> Use this to implement .gettimex64 using the indirect method via the
> virtchnl command. The response from the PF is processed and stored into
> the cached_phc_time. A wait queue is used to allow the PTP clock gettime
> request to sleep until the message is sent from the PF.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

