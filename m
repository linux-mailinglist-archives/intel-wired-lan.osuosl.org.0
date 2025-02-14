Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F2FA36783
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 22:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 591D960900;
	Fri, 14 Feb 2025 21:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jX97mbcI16tV; Fri, 14 Feb 2025 21:29:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B00C96082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739568543;
	bh=9neQa3S5W3X8Xm9ahkzz4YjKHh5W3kB3IgJnbRI75yk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IVtsB35wzCllb4auzvtIQdWQq8a78hLMNy1lgtC1B8Tq9mum7q6PPmkytqyu+biSU
	 gesyJUQwIfoclvnacrvujoNRbBOI/A/W6ZFyCLOsA7WJzCg90guDg6CFN90xIoUuPp
	 /9aK/Uqfk6yw54fKLqk0s4iaQ6BB3u1SVkzMJzGioxrF8NVKqL4sg8na4iH4LOenjd
	 2s54DocSU+SBWtIkPOOH8EGS2iuPCaeMjtoLe28w4RpqmcDd0XoT2xEop2JLT2S7Ug
	 Aprehh8TgAB1FUfsYxPgX9h0vMDK4NB0/2VAe1nc19Y44GbzucaD+qsZ0fFDO1qho/
	 0yGkHSE+BCN+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B00C96082C;
	Fri, 14 Feb 2025 21:29:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 561C41E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 21:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 422BD4166F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4khSlGab8k0J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 21:29:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E86540451
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E86540451
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E86540451
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 21:29:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D14905C2F22;
 Fri, 14 Feb 2025 21:28:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBDA2C4CED1;
 Fri, 14 Feb 2025 21:28:59 +0000 (UTC)
Date: Fri, 14 Feb 2025 13:28:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <20250214132859.633e9d0d@kernel.org>
In-Reply-To: <20250214142332.600124-1-arkadiusz.kubalewski@intel.com>
References: <20250214142332.600124-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739568540;
 bh=9neQa3S5W3X8Xm9ahkzz4YjKHh5W3kB3IgJnbRI75yk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aIqFN++RrhjWCssG/+hKCEc5Zb7ncytCh4QvnEDufbemgOpf6p8kms+Q0LUU5V1gL
 chu9bO7eoU0g+JDzfFpQfBNKHXJldO7sOTsK6cLIoiL5PPGFp7gL7a7kebYYIYM/X8
 johP+hn/72keyR61E2cT4vSbFPPdmtYzl6NzPiV6fYnmK1Q4nunVI6rP+AAdEVMaSj
 M+or1U3oq8mLKKFXJ4XDxkBBWm5Ua3BnDcCoDdaH1lT085zuFZJqEygKMK3njT/QFB
 mCfWpI20yu9hpX4e+1lujWkmHfzbmrtAU//SutKL6aHJfjUjnhH3SAZnBsNiTkFobK
 WDXll3N0b4ljw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aIqFN++R
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: decouple control
 of SMA/U.FL/SDP pins
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

On Fri, 14 Feb 2025 15:23:29 +0100 Arkadiusz Kubalewski wrote:
> Previously control of the dpll SMA/U.FL pins was partially done through
> ptp API, decouple pins control from both interfaces (dpll and ptp).
> Allow the SMA/U.FL pins control over a dpll subsystem, and leave ptp
> related SDP pins control over a ptp subsystem.

When you're cross-posting to netdev please obey the 24h wait period.
Doesn't matter if patch targets net/net-next or another tree.
