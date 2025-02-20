Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D44A3DAFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 14:13:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C1CD83AA5;
	Thu, 20 Feb 2025 13:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2L1ytJWmAed2; Thu, 20 Feb 2025 13:13:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0418583A7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740057237;
	bh=OoojrHiU5bN53H7i/4TlMLC3Z95+LO74/4L6nIIdBOQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WfY8t7xdSjIKe8h01G1BcssZhuaRQskIoOd2Nto4Ffhz8BSv+HLU79Fw6uzsYMPeG
	 d77+uRyFDOh9cPJ8WfBQrkGE5e3YE99TQ8Rnw1P8zD/4vRFXcqJe86nAZh/d3NLygI
	 UYSHPb0pE20Cv3eUVC9osBvROTvSXt9b2pngALIPB1icrQTVtIJSn2eDdNMTL9o/o0
	 +FYIyIpla6DR15j3FC4T5E9vdQIEqKqEFtFt+Yg0iRo+eLpIWnG7b/Xgj/o/WyzCkM
	 tzCGGTJ7EzqTojcbNLsEYkFjnJH8/VdaoCmc7FsY6NrASZ5E15ZHp27Bq2RZCdPFc5
	 BMh9muovK+B8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0418583A7F;
	Thu, 20 Feb 2025 13:13:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D3C3194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59288839E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1xTa_oVRNZK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 13:13:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CEE3D838B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEE3D838B2
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEE3D838B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EBC835C5E2A;
 Thu, 20 Feb 2025 13:13:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A076FC4CEE6;
 Thu, 20 Feb 2025 13:13:52 +0000 (UTC)
Date: Thu, 20 Feb 2025 13:13:50 +0000
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250220131350.GX1615191@kernel.org>
References: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
 <20250207180254.549314-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207180254.549314-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740057233;
 bh=/Ciqt9+VmCU3tG3mttYEOW1/IAdXU9Lb/5EGlSTFg18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nY4dba5ZZputj+SHsvqo1hN6IodEJipUgETNhg02/WKGJhhgskbCcPgffSkGMfKta
 D8Yp0YwDpqQe+uRe7zKNeLCIq3+YcPW94ZhJleh3q4TfSdtwiMyjFd/vrM1LzyIaqb
 nZbfyqaT/7pWjXFmOv0PQ3rldFyIwaDG4wD/1pDbk2XQUZ0ZK0Lihsy/PsfEVQbXtP
 XKrIzz0ov/Qwwdi9hSRsuapTwaft2+GQUzfyUP0N6xi4AQl6rbCT0TH+Jq5ehQLei9
 8//EF7i9SXEYiwTCcP8epYwbt5n0tc2XIyt4pcZ1UB/KlDuLyMpNPjH48rGCWtHiC1
 k+2Sfas6SjMzw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nY4dba5Z
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: add ice driver PTP
 pin documentation
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

On Fri, Feb 07, 2025 at 07:02:54PM +0100, Arkadiusz Kubalewski wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Add a description of PTP pins support by the adapters to ice driver
> documentation.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

