Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AD5AB991F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06B5D83C84;
	Fri, 16 May 2025 09:44:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z8hV2ekWYq61; Fri, 16 May 2025 09:44:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B6E283C85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388663;
	bh=GmRKn8oBE8RoaPqYxBl2spKd+EVPVz02gi6NJ9BKnL0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mA38imaWy4tr3bgn5/2yQZgLCxTVvmpc0UHBkTlHMhQf41ie55V/+5hsdNLEs6HZz
	 vCDUZzSXgMn/4RFfHICmZbwbqG7oA7ccAQv3OW0CTuc333Dwbd6bPJbbFVjRgH72js
	 06labkGEWeE+TsrIUN4jswHKO+mi6jDumrwvmTicTJ7XyPTWRW1wki3XPi7C4KG86w
	 d5eKukIJsBlstYdPiq4CpUl7AaTKSXbDA3D9GqW96zSohJ+U3LJ3dfvWLcpFW1K+NA
	 8xfOBhUq66x0PtdHDwkaDmZGRDfwfOzRx2VURAPgPq2q1tgvk7QwbXuiQToyb7YlvW
	 iRWVHywGn9IDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B6E283C85;
	Fri, 16 May 2025 09:44:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E484185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71F9083C84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S43KZpYBti3U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:44:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6A1A80F62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6A1A80F62
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6A1A80F62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E9224A4E677;
 Fri, 16 May 2025 09:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02905C4CEEB;
 Fri, 16 May 2025 09:44:16 +0000 (UTC)
Date: Fri, 16 May 2025 10:44:14 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250516094414.GJ1898636@horms.kernel.org>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-3-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514042945.2685273-3-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747388659;
 bh=ViLQOvXZ7YdUVRBAco/N6BvNCqjN1vNbQcT7t0hpYQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PgJSC7dep6wWZebWv0Eu3olDtkMJKJTsvZefEr1t/r+GzZ59D6Pe/eScKYZcxhBle
 BSKeosCKLu9SUspwMjSko6M8N1sY6UzPGvxvn0/GZMkXnnbwSt388NjMoMVsWTfsje
 6EfFMVFewQOu6UAgRZsOSPN+DKb5DZOrlpz18bcKCyB4Z2tgXbE1bpF2g8g1MWyali
 PGmuxzSELPV1cANbjgTS70AyMIGKh/rGEUGbKTtEtMHjk7z7xLsnThsU9m15XJkY8w
 1EN0zFJTeQGTsfS5b6vQ6exg1Ukkl9k0i9bnrQQe2SIvyiTXM/ZTFAqiIft0i7VeI0
 qE8pPtDqGsMKw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PgJSC7de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/8] igc: add DCTL prefix
 to related macros
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

On Wed, May 14, 2025 at 12:29:39AM -0400, Faizal Rahim wrote:
> Rename macros to use the DCTL prefix for consistency with existing
> macros that reference the same register. This prepares for an upcoming
> patch that adds new fields to TXDCTL.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

