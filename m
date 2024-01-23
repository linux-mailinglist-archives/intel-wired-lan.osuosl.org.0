Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD106839531
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:48:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 694AC40414;
	Tue, 23 Jan 2024 16:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 694AC40414
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706028492;
	bh=zwYoN4OnpprA91xBuaEPvfgZQ11TM8xE/D00v9Thcj4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RjpGMKNY2+cH3cUnbak975kke1VQiCjXvp+szSAyUuUKcmT5b0oOGy8cIo77/q0KS
	 MBsQpSmuyfdrCHgMy/KXAIcc1Lxpf1CNF/StGo1lscsy045xXLCO1aham4amEkZykd
	 U2IAV8G+SQQ2kxNJx5kHdijuguSRY5bc5zNo6x0ddpnTP96Pz4Cdv/9FKO1t4kttfc
	 bt2Jm/IjYbmvYrlz7ucbaEG8np2lvfRcH2zb/+JOOVgzZFR9q3Qwyh0S6CNtp0OlcE
	 w9jxDFG544pFGPisz/EzfXxDq3PUU83YOn4o3Y7hNZmsVX6lEJT+t9vzExD3ZuTf9v
	 PjdQjvc98+6ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQz6ehIz6YlN; Tue, 23 Jan 2024 16:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A19E403E5;
	Tue, 23 Jan 2024 16:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A19E403E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C21911BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9979D607E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9979D607E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xa7fsUStJ0zp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:48:05 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13173607A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13173607A1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D2BD161DE3;
 Tue, 23 Jan 2024 16:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 203C0C433C7;
 Tue, 23 Jan 2024 16:48:01 +0000 (UTC)
Date: Tue, 23 Jan 2024 16:47:59 +0000
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240123164759.GG254773@kernel.org>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123105131.2842935-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706028483;
 bh=s2MvNDMwQDf6Fks/boYZD731v1ByeIuexIheT6lCcUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tZnYjD3wm28FB0uRiRR/EZsHVoYUvKbtuKWwbSV5dU9NHnf4oz+ZVuQceGvl6a4Bs
 mu1M6LhEsXNXzJkItEiMAej44VkLiAVMr198cWcrWo8MzXQjnFO2PGL21kxjqzy2sn
 jIXmd3wkTEF62iBbjIDjZUoO5b6Za50/xfyCzYufIEyHixWULyNLxVCznwxFFYFVG1
 WAZF9dc1+ET59kqurJVXUqMQc55lkBsc/ugUwu/3HmmtyrZAPT4OnF5MTlYszo2dCL
 PowXyq33GEWDVEkfI5OaQpI07R6PlEEzO9JuSzvqpmw+iDbvQDOix70FOFEQcTm96N
 9Xr5vp88oxUCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tZnYjD3w
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 1/7] ice: introduce PTP
 state machine
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
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 11:51:25AM +0100, Karol Kolacinski wrote:
> Add PTP state machine so that the driver can correctly identify PTP
> state around resets.
> When the driver got information about ungraceful reset, PTP was not
> prepared for reset and it returned error. When this situation occurs,
> prepare PTP before rebuilding its structures.
> 
> Co-authored-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Sorry, I sent this just now for v6, not realising that v7 had been posted.

Reviewed-by: Simon Horman <horms@kernel.org>
