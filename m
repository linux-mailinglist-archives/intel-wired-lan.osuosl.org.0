Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99129930A5A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jul 2024 16:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D79E60636;
	Sun, 14 Jul 2024 14:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2On-NlOgE337; Sun, 14 Jul 2024 14:23:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B47B0600B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720967023;
	bh=xMdq4r6pDe29U3iQgsGEdHf6i0KXDDWbX9J20uZTW1I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l+Ow+n98qhSVhoK2AM3e0J95sb6HyhBlaqyX8+gFJ4iIAfsebY3wltef3Gl9AB6yV
	 u/zastnobdO+nfa3TGA/80QwNOz56a+rYwhQwtyj7LFCOb8RlQvr6RBqxHCYdExE/Q
	 PezHiNA1NXNKxHrC599bGmUNFDuNiJqO7DkbqGaewGRtW9VHrQaSCL1tbKVkJSRJHi
	 hYu5eWSIZa0pEvyMNwsziSzIiUjaZYQyHcCwOVIeayEp3wYUlSrb78G/7kgiCuiF11
	 KERYAWp7xNZfvh+Nr/cEbwFB6MnKLVEs9yhsF8gJ16T4rl02gT0yMsSVpQYLu0+RcL
	 e8lR+uAU6fl+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B47B0600B3;
	Sun, 14 Jul 2024 14:23:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75C5C1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 627B460621
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrBFGcnQWpF7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jul 2024 14:23:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90D3560610
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90D3560610
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90D3560610
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2024 14:23:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5176ECE04F0;
 Sun, 14 Jul 2024 14:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DA85C116B1;
 Sun, 14 Jul 2024 14:23:34 +0000 (UTC)
Date: Sun, 14 Jul 2024 07:23:33 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240714072333.2fff045c@kernel.org>
In-Reply-To: <20240712093251.18683-4-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
 <20240712093251.18683-4-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720967014;
 bh=UHj/nSLZ+PQOVweVrGhu6rnTn6njZLQzzk92qwM/x2k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ass0/dJtFHwm57kcENeTqdaVj368yIZDCvYYWzlYEh5svG1OAEGOyO32cqBuOY8G3
 fHgVwtYghIFMvkM+cssnN+KaWX1GS5Vu2piX6u6dt1OK9aaN213vUvp9NhGZx3pmAe
 NlC4Gh5OcBZ+ZRhqzOxmjBn4rNBKc23KlUiyVC50qEpCP3MiVmWsCF8/w/LAOoCMkN
 WLtGW0udmCnPElz12GeHAgu+lFWxo9WG6Rk7RxSggHBtOprF5lNvvi/jp3cjiBpJ8x
 8RtkuXGakTIa9juStZFmlCgQu7zFnl0t6w+Yw7bBWJtDvFLHnreTTXD+TYag4iIhH6
 Ai4q4t6sRuQ7g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ass0/dJt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ice: add Tx hang
 devlink health reporter
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, joe@perches.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 12 Jul 2024 05:32:48 -0400 Mateusz Polchlopek wrote:
> +	err = devlink_health_report(reporter, msg, priv_ctx);
> +	if (err) {
> +		struct ice_pf *pf = devlink_health_reporter_priv(reporter);
> +
> +		dev_err(ice_pf_to_dev(pf),
> +			"failed to report %s via devlink health, err %d\n",
> +			msg, err);

My knee-jerk reaction is - why not put it in devlink_health_report()?
Also, I'd rate limit the message.
