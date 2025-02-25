Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0BFA443E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 16:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60D90401EE;
	Tue, 25 Feb 2025 15:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1CUpOUTShJC1; Tue, 25 Feb 2025 15:06:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EF2B401CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740496010;
	bh=Z0sjHE1wPooEyjNaVj1Sws+gIrX+fb8h4fu7UTPlCCQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oKtLrP7rNkvWjUj5xtUixRWvPAJ1V1uYqrwJAR3KcHhHc72D2bkprJVHrZN8CcTAd
	 hO2WIDgvH5B/wI7MaS3Z8w+0hQP/4feCnS1sDKlfcgit1IQYyCtzmfkQhOUDcwA0z1
	 Cqu6+H1Hm/Z9LvcsXA+tghtDtL3E4C55dMl33ndzWqZ1m/Zs/wpSHjsK0GsdimoIg2
	 3vPqeXllBKoUaytmpSkYnYX4Y8S5tdAMbJnUO8wwi8fee6apvpYYq42Od1KNaKNLOk
	 esUEk4fxolFjVeI+CYC6fU+V9phLE1BzwH5mYnIbNDR3b7VqpaH6apBnvexVktqDiW
	 aLpKYFbtBGRIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EF2B401CF;
	Tue, 25 Feb 2025 15:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ABFB2DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F243606E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:06:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J-SZB3a964qV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 15:06:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CA15606C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CA15606C1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CA15606C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 15:06:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 56D705C7012;
 Tue, 25 Feb 2025 15:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA5D9C4CEDD;
 Tue, 25 Feb 2025 15:06:45 +0000 (UTC)
Date: Tue, 25 Feb 2025 15:06:43 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250225150643.GA1615191@kernel.org>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221123123.2833395-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740496006;
 bh=E/a2lpB6c6eZoK/al/wVgvnVZyOyl53dAkRlV27hjA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tedXaNG0RlHShqBEeavX14Aq279CKcwWjqLX+cI9/cgjfR/o2jfhNj61KxO4PG+qd
 srz/ptO9/w4YLXAYEWHadUjEPyr6OJU5AZbOhMeukMoUu6J0wVgJiiVVr3HvdThsEc
 QXwXdMSeqHuPjDGW9iOpZIvU+jwMgctCvn4AxlUKIxpTufnzFGcNOtktugUaKPEpRf
 ra7TrPsPGmTtIsn3omhUGHsa6XwbsnNL/CDVhdJk3ZVibWC/ZQH+20BObSyd4bJi7l
 WRnt/sBqYv/0A14EHAICWWtkyUrPsoUgBrFTCVwsYR5sC6U2PKE/T94XwibxHKdHqN
 3/ZPZs4ix8zxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tedXaNG0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: enable timesync
 operation on 2xNAC E825 devices
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

On Fri, Feb 21, 2025 at 01:31:23PM +0100, Grzegorz Nitka wrote:

...

> +/**
> + * ice_pf_src_tmr_owned - Check if a primary timer is owned by PF
> + * @hw: pointer to HW structure

Sorry, I hit send for my previous email a little to early.

This should document @pf rather than @hw.

> + *
> + * Return: true if PF owns primary timer, false otherwise.
> + */
> +static inline bool ice_pf_src_tmr_owned(struct ice_pf *pf)
> +{
> +	return pf->hw.func_caps.ts_func_info.src_tmr_owned &&
> +	       ice_is_primary(&pf->hw);
> +}

...
