Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE787901188
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7081481EB1;
	Sat,  8 Jun 2024 12:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOhfyDZcFQ_4; Sat,  8 Jun 2024 12:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF78E81DE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851424;
	bh=+9Zvc+saP/P+oau4Tydhv8lp7uN/BTddD0PTs9xZMQE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hgr/mZ6ScQCeLBo9CkvweruEm40pehgpSUp//RnjJEjnPR4iYDO/VnO2wVeoc42YU
	 g/MNwQZBgtvbRS0tBArQAR16w6XXszGWF7xliKrEwyHXmGzTbyU/R3MtuXqkP2PIf4
	 gF5gsyvQ1URQJc503XhckvajVZjgqjSWTYUyVHRHF1DMQfRBrEYnqZDx8tydPALHPx
	 dMfgwGqBCdHBC1f0llNQ0kNqEPTCb2YDQzzwnFlgDmPIFHhDPKHPdk8IxwUP4MUS3I
	 55VoapQjpK1T1fUhelu6zBK6yznKMJ4zRPIrQ6VN/nMQK72zgBPzdE1hkeUYeY/Fd9
	 8fBCShbR4uHEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF78E81DE9;
	Sat,  8 Jun 2024 12:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA7091BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A3972426DC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLR0po0gSBYE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AAE6A426DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAE6A426DB
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AAE6A426DB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:57:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 38FCFCE1D1B;
 Sat,  8 Jun 2024 12:56:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1E3C2BD11;
 Sat,  8 Jun 2024 12:56:55 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:56:53 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125653.GU27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-3-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-3-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851416;
 bh=HZknWNSIIncSkXQCPrlGguunTHGTQQfSZWo9fAXhlSo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AZSmXmWnf51RLe/wQY5EgMdlffbRhhtasVaV4kMHa1iyhVP8PS0p1ikfpBdvBe7yW
 CG4bspL/MC0qF13wnieGpoClvpHIIw6w5jnwaIZDvPhxA6Bg2hu6m3aiFKwy76QnxT
 quD5mbRn00NCK0mYI6NRd2FnrDmCsfdbzRPeHfez7nShKNaei0fVwyi2pZwDFsjey2
 MSTmdOqkXS8V0h47N5iaZcc/qCGqiNvS1D97EUsVQddHJzu0MV8RH+7Ph6PMCzKsZh
 Po0pDTOqC7E3kcCfHbxEEpg66wA8RJvcRZWJYcjQBtVUeRPd+20W1HxDtQvKfe+DkM
 zly6FgXGttJxg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AZSmXmWn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 02/12] ice: support Rx
 timestamp on flex descriptor
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
Cc: Simei Su <simei.su@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:50AM -0400, Mateusz Polchlopek wrote:
> From: Simei Su <simei.su@intel.com>
> 
> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
> the VF to request PTP capability and responded by the PF what capability
> is enabled for that VF.
> 
> Hardware captures timestamps which contain only 32 bits of nominal
> nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> To convert 32b to 64b, we need a current PHC time.
> VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the
> PF with the current PHC time.
> 
> Signed-off-by: Simei Su <simei.su@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

