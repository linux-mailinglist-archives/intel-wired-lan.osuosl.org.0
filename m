Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC2192A424
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 15:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C202D4094F;
	Mon,  8 Jul 2024 13:55:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oMdt4lxZmuYP; Mon,  8 Jul 2024 13:55:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F269240359
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720446937;
	bh=lfL9pKqna9Hvw5zif8kfCtYL7191qcWg/aKdG9oibyU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q8FTkZUzHn0N++SJc0MRMrlNEQo+cKUAkfnv0AibYj2Ld9YaNSwsBTJbgFXrZxEIO
	 wy7Ro3V3QfyINlesjIF4Kkq/ynGu5Q5GkMklvXUS4hNPXuXPZys9SMMvpa5w28tFDY
	 uKDwVZ4qezOtWghddyl00VvXYVtw52uhjAbbC6BqLF+3cPNx1yNloaaV7qsBiSQVPj
	 vcuYDr3s8IIZL+NVsPv2Pi7Tf/rJAqgHBPq+KMoFuG8se2LlTLmQMjsmFQqF0Zonn/
	 SB5gwpzQ8oO8BBSuCfmF8rAHRTs0AusCkzIfgpMmFx9AbCwJthyWg08cwdSt2oEnr9
	 c97SKBux0yQPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F269240359;
	Mon,  8 Jul 2024 13:55:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AFC91BF484
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5709740396
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WgvQ0oTAQ94N for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 13:55:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 89E3940359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89E3940359
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89E3940359
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 13:55:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B6FB860BBB;
 Mon,  8 Jul 2024 13:55:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 921D9C116B1;
 Mon,  8 Jul 2024 13:55:31 +0000 (UTC)
Date: Mon, 8 Jul 2024 14:55:29 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Message-ID: <20240708135529.GW1481495@kernel.org>
References: <20240704122655.39671-1-piotr.kwapulinski@intel.com>
 <20240704122655.39671-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240704122655.39671-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720446932;
 bh=os3BeGXRPspxFXn3m4faOMU69cBInTEvRSHgs+1ecoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MIHpFdgQSiWMM0oTbm6Z9TYcbE3hTsm0MzdzBuMb1yH53OLsNpV0dO+TMk/xgVpdv
 H/DVwDAoVvUIlfxYSasXsF1vusoorJHGFeI3Uo4OwvAH3v9ESzYCmU6ldYq32HgQF9
 JDP5vm1TIdoZAhP+OyplorLBhO+gy7PJMzKfKgpow9O1nDFsMFhmQ8MESbHtHVlit1
 Bj4zmwNWcAEw8h+XGgLBl8CKalpK7ZNmc3z928kd339ZtvgrBEES7/vVMnjC+7ZoKv
 OyAT4xDhchiGGrg5v7anCOFra0KVKtNHZNULtfjDxutMoNnZrfKW6DWfi5+vto+iuW
 QsAyLgw1TiQLg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MIHpFdgQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 5/7] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 04, 2024 at 02:26:53PM +0200, Piotr Kwapulinski wrote:
> Required to adopt x540 specific functions by E610 device.
> 
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

