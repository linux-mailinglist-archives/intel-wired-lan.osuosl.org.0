Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA2D890727
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:25:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9EAC82349;
	Thu, 28 Mar 2024 17:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvwiGcQMWiY0; Thu, 28 Mar 2024 17:25:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F12D82116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646714;
	bh=b1MdRNy7bJKu1/MfJfDx8gNFI5ej1bZyAb5EjT3paNc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QzrDvBvJ880jMHZn/eQI/sOM9ZZXvSnGnlAatgiIhlJ13TzStlxBcpLsTSBUFkr4I
	 R/zNg6PES12FKk8kU4IRL4pHgKgUkIDzaBLwOhz5onggYnC4Zg5xBgJnU1vyH2OcOs
	 ndmz3EEfzLHDKMNMdz4EwB6/M2C6s2dS6ZmYLoydznfCMpziDGiQPcDT2IMSrz8FIc
	 RqQQQwSz89dOp510MOvE1r1Vtibvor7T2CGwCTdlCm2gSfsCe63VAyrlRs6Wy+cKSB
	 OGk6vN0CGLcaMqwf3E77LayR5MHUk7LeEzil6UUv8eFkExv2fiXMX03+FtJvUbv2su
	 wtmcxFQml6TQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F12D82116;
	Thu, 28 Mar 2024 17:25:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 486291BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40E1F401B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QKpR211PBdMp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:25:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A63FD400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A63FD400C1
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A63FD400C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:25:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D95BE617AE;
 Thu, 28 Mar 2024 17:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2763CC433C7;
 Thu, 28 Mar 2024 17:25:07 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:25:06 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172506.GG651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-8-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-8-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646710;
 bh=4a9MWViGRcqAECnsnUOxO078l7HkHOclyczdE+L8b8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dUiQfBepPA1AMjGJxnXohBg6QiEDNBLJomxDyDgNcW8B75CzH+ezeW+gLtvY7+sU5
 WC+RBJi5svnnsSTLvvxT2tjIkYskvRxRshDvWoFdgupCMwkckm+8uvBQzEhjDbhEDQ
 C2MovaXiTeODaQ0OX4QcbzcddvGpeUuEZHVOxlwF07scSjRLBHlNcpY/86iy6f2Rb2
 OIPXLQBTobxv3TL2ViatQmUxGmwKTREhHjtQG8RIhNkxPyKxtFrOKzKKJRSDXzUBi6
 0jIq3vnZC9uHb2DQxA3n0PmM4+f7/ASim9otgNOC+j2uDHRHcgZzPcKKPb+cHD0yaJ
 CMUiC3Wf0tU/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dUiQfBep
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 7/7] i40e: Add and use
 helper to reconfigure TC for given VSI
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:33AM +0100, Ivan Vecera wrote:
> Add helper i40e_vsi_reconfig_tc(vsi) that configures TC
> for given VSI using previously stored TC bitmap.
> 
> Effectively replaces open-coded patterns:
> 
> enabled_tc = vsi->tc_config.enabled_tc;
> vsi->tc_config.enabled_tc = 0;
> i40e_vsi_config_tc(vsi, enabled_tc);
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

