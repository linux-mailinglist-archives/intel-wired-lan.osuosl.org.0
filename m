Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F832B55A1C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Sep 2025 01:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4E926131C;
	Fri, 12 Sep 2025 23:28:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id deVL0e3MR4qM; Fri, 12 Sep 2025 23:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D6076151A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757719716;
	bh=1HhVOWN7t6sGJZjnv5wPVtKRhfh03YjUUmgDtn1IVEg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AYHJuA5Rbhd5v6ta0sfInYp28ydO34ZlX7bGUyRUFe99ufNNxDxueX79Zv5HQIxXq
	 Rmee3GP/4SmqBeTv+AtFRVX8rUOVQ5VWY3nQv+a8a98Ok01qPQT2cPsp3RXihd0A2d
	 hMSyHqmGvYDORPaBfGun/E0R1A7abmu5taJIAmzFUMxfImffCSPMFo6nInU3UOWpiG
	 i3UBJZsy4PriE+2odcEE6bcT4nYnfEQZ3a8B2lqRDQp+thtcHg6egnW+iZ4KkTibWG
	 Z+WECDv4LCsPH9QYg0Puubfnwc9rgTg1jmALkfUS0OQqnNAVr6QRHbnKQTOd3l5Cph
	 8umUn+BvEKx7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D6076151A;
	Fri, 12 Sep 2025 23:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BE4392E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 23:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DBA74172E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 23:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7mNnl0Sw4-9d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 23:28:34 +0000 (UTC)
X-Greylist: delayed 534 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 12 Sep 2025 23:28:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DD1D4123F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DD1D4123F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DD1D4123F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 23:28:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A134B40482;
 Fri, 12 Sep 2025 23:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32246C4CEF1;
 Fri, 12 Sep 2025 23:19:39 +0000 (UTC)
Date: Fri, 12 Sep 2025 16:19:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250912161938.1647096b@kernel.org>
In-Reply-To: <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757719179;
 bh=UrZqa4/2SiaoFCc5EAhxYtQNEFH632XbA0HEGe/ZX0M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CLLT/K54kvwLLZ5okQVaydAuSG62KtIPGEMv0vmluDPtoSab359g/arQtHrJVvGqD
 WReV2UlJyy2DOOHys4v4KRlCh6EuhTtLdIQND2gh0dvoXEDpNkXztUpGhPpevNHSfM
 SdE2JDY/5pAnCXnyAZk6MbB2N7DCNdFRmrDu1VJBz1+vO6nq9x/ZuSr0wizt5JUezC
 wQLjFrvZUCvlVsqPH0OtSYkFRi8ui47suqTfz5ECU/SNNkEmYFZhAaSo3LZLbf9rx/
 tlo5uEM7VuxDbtd63DU9PFHUsu/WPHHdZ++I+kZAi33vUa6BbUC8z+J4zybY/8etPj
 xsRbiSA2/9AZg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CLLT/K54
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task
 start out of ice_init_pf()
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 12 Sep 2025 15:06:20 +0200 Przemek Kitszel wrote:
> +	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
> +	pf->serv_tmr_period = HZ;
> +	INIT_WORK(&pf->serv_task, ice_service_task);
> +	clear_bit(ICE_SERVICE_SCHED, pf->state);

I should just read the code, but this looks like an open-coded
deferred_work ?
