Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C466B908BEF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 14:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 203C4406E3;
	Fri, 14 Jun 2024 12:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EAupcFvAKziy; Fri, 14 Jun 2024 12:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 542614023C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718369035;
	bh=0DMyL3V1ZSVMOJPbQmUYCLeOkZtyGVsIEMb6jDQdJjg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Bf0WI8m7Zo0qsEzl3dhNEfytSxyGG0ykoyjra3qN11QtcwrrBWIExWxd97Xp07BK
	 Qjj55EiAZ6ml3yvqdO854Q6TKrGBMQRJZubDQwyV0n+hibh/GQvDaJuwbeDKyMG36u
	 xlALN8A5uJjaYk6PO4RjGYH7zzEASNf+NxB2Lvhs1UF7rTNuzDN47J1nVSLAXSHEtB
	 2Y2s7OOOBbnVTbIXIeJGuXEVjg7HcpVcgjjexyBGkJPq3ryqIWfDnSjJOOeI5qwoKO
	 r3kzNfFLBZ1PosIzkjSFOpl9WLyS3UIa/BqO3/x6aGkuSCg4FxK6rmm47J+g9ujgeT
	 P6AQOSV+AbLOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 542614023C;
	Fri, 14 Jun 2024 12:43:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 003B91BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED88540325
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-NVlL6NyyjI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 12:43:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14BEE4023C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14BEE4023C
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14BEE4023C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 12:43:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BEA88CE2AFF;
 Fri, 14 Jun 2024 12:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52D3CC2BD10;
 Fri, 14 Jun 2024 12:43:47 +0000 (UTC)
Date: Fri, 14 Jun 2024 13:43:45 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240614124345.GM8447@kernel.org>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
 <20240610074434.1962735-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240610074434.1962735-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718369030;
 bh=eHbspLPsRwN/mbeaXgB2lqHgAnRpJhQXTP9RTxxZ5eU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=baqVZebJYB6JQRjG1TbqtNy8NAJUp4PDkrD0TKpQa+gXFDIkLDXBtCgUECynQnNyq
 qq87MdlwMi8aOASAawHo4ZUAem3bCrB9zqjnywz62m6wFsygIQ60Vix1/EdaLHcFS+
 XyHDsFrLorhaC2AV1b5jhtGhDNSJU56fKK1JGwaM0K9l7SHAA5buumxAQ2aWPDCHOQ
 9XVTDQ/hGNNWF4pSILD/vGeNQidbiUDH/KqrYfDO/PqHvt4Tw/70PTH65Jw5RhVqm0
 Dxa4XILV7BSGLV3wL/vA72RhnV8AtYsJVw1PwUnVwdXDUsiizpkbyDm7A2+bwz2Ozt
 exNqhLNlzU+XA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=baqVZebJ
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/4] ice: store representor ID
 in bridge port
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kuba@kernel.org, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 10, 2024 at 09:44:31AM +0200, Michal Swiatkowski wrote:
> It is used to get representor structure during cleaning.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

