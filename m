Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4BE940EEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B39381140;
	Tue, 30 Jul 2024 10:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBTRdpcfpW2h; Tue, 30 Jul 2024 10:23:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81A748111F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722335012;
	bh=NjnpLSbGFiPff30vR0RPWgsn7beprcVCLuMkEixCNc8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EONbClEDy+LoVr5hQgyfWG325ARFsN0r0b/Qgvyao8m9D6jIwKEt2FmU1EFWZozr8
	 aaSPAYnKeVFOIPTv1YeG0/1qQpLeM8nb0DFaL67IhbuCiTO/PiBMDUOuGGcNImkJ9h
	 7NGDCdlFDmmubmWAknT0VBHZP5r9N/deuLpXpQctHqZYjwmSPtbONiEoj3nlfM5mgO
	 +KtZmtTTEMIgJ/hHVNqPUWgqZpbo7GXvDrJJ3D+Di8XaVx6a8L1TZqzpq8YKye5/5a
	 BvtKBdnybzkM/KkzlXKFO6sAHCIb7QWcZKRg4/cDn1MMr6PbNHxqd7Bf9gaLwlIMkB
	 AIFpcr5nOkEgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81A748111F;
	Tue, 30 Jul 2024 10:23:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 367C81BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F2A081138
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HSckGCk1Hxvp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:23:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 94B5F8111F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94B5F8111F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94B5F8111F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:23:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B9E5861777;
 Tue, 30 Jul 2024 10:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A49C32782;
 Tue, 30 Jul 2024 10:23:26 +0000 (UTC)
Date: Tue, 30 Jul 2024 11:23:24 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240730102324.GV97837@kernel.org>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
 <20240725220810.12748-9-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240725220810.12748-9-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722335008;
 bh=67OMBK5OtSZOYrk1GahfzAECnxtvjYjzquPXPhvYx9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NBw7NgVmfbyzy5zeYfkUEIHrmYKXj+cPWZDO3n8zT06utrQ679WotbNysX4ER7o1K
 CB92qVxh+bd2xajwTHXBiqwpGmSgDLN04ASir7niP7SEoFII+L6gXxBxAbJ0275Je/
 AKuA4WDKMKpxAWRHpZmrgnwXlsEn8m9X0qEPxgyIaOs22x/FLSKCkJBWxI+1mc0Tgd
 7V55sHcb2NiuOXJ5CZgQz4Hs5SSFNYVnCQsJMy49ETqRMlUKmWGufHzPH3CqC1pamu
 CxavP4ikuGZyIGnf8wT7jKVByfknfMekW+3u1t3nECbbyVZLg8Z7VWLRKmmGYMmznR
 6hB85f7ZCkm+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NBw7NgVm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/13] ice: add API for
 parser profile initialization
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

On Thu, Jul 25, 2024 at 04:08:04PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add API ice_parser_profile_init() to init a parser profile based on
> a parser result and a mask buffer. The ice_parser_profile struct is used
> by the low level FXP engine to create HW profile/field vectors.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

