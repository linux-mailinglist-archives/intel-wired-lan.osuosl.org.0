Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1CB940F43
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28BF78115D;
	Tue, 30 Jul 2024 10:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRVV1MjpCoaB; Tue, 30 Jul 2024 10:28:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68DE88119E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722335323;
	bh=ftwnyNoTAYhYQxiI7Rech1h2g0bGdjCdnyCW+7pRQoA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FWeV9PW5693I0K2LVuKo0+rRCVL1Xhu1CnYgHcf508IJfHxD9E76hpAupRWgJcfM9
	 KXMg5maKETGAQXJuFD1vuDBNVKjVwXayiR+NFQURyicWdVxbeBEgwcrZzvzuCqiSti
	 FsGfFub1jfDu3mVozmvIwApwJ2XOPW85SlYvwFN7+pkK4B1NRKC5viffbRhuLAP+Z+
	 t8XAaeMPKsFCMxJiYOsMNjfw4tfmF4HRXklafAsWVAQD7cgH2PqJb+Xvg1fg6aBlKg
	 Ogx3PagvT5wGNpCOk/q0YJAGs2SlEF/wJk4pqsS6oAXhpyYR9c+ksjlbxLvLpvnm2w
	 7g7jsNVBnrhcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68DE88119E;
	Tue, 30 Jul 2024 10:28:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DFB81BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A4B34062A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4obYbMwk8WFQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:28:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5190840609
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5190840609
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5190840609
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:28:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9765C61C5D;
 Tue, 30 Jul 2024 10:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65B68C32782;
 Tue, 30 Jul 2024 10:28:38 +0000 (UTC)
Date: Tue, 30 Jul 2024 11:28:36 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240730102836.GX97837@kernel.org>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
 <20240725220810.12748-12-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725220810.12748-12-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722335320;
 bh=SZ4c15f7l1jB8rzYdsQuU2R5Kome+64Aq5Sa2WoTqmc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eyj+z7OTSqx00XpnL7l3F6uy1U1NdX/OPvPq+WAGw4TFek5aOw78lRfNei4PjiJmt
 idr07II31dRY0TAElAAQf9mwsFQTkTb4JJFFmjBqejJWwaeXgM+4jKkP4vD5+SGlUn
 /F+dK5GMzD8gu3ttC5aFh850lgJlW3XpP1EpgKucNo1Qk14EsIdEQDRxQmeMo2XzLL
 meDFYHqSWy/oQXy4GSZuZZrDNB8WD2YXdUcthgsZgzcav/c4CHWfh3chxsH5nouxkO
 jLyEPZEUZrDVXEk42n6TE2nDiwUocYRv0C/nT11p+x9FwrYkYrt3maHB3IrkMESrCI
 vNvyRAqNSTRbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eyj+z7OT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 11/13] ice: enable FDIR
 filters from raw binary patterns for VFs
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
Cc: netdev@vger.kernel.org, hkelam@marvell.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Junfeng Guo <junfeng.guo@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 25, 2024 at 04:08:07PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Enable VFs to create FDIR filters from raw binary patterns.
> The corresponding processes for raw flow are added in the
> Parse / Create / Destroy stages.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

