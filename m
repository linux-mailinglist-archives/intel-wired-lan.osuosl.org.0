Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E028B3116
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 09:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57E5D8349A;
	Fri, 26 Apr 2024 07:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YX5e2FHSuQ1W; Fri, 26 Apr 2024 07:10:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9313834BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714115436;
	bh=hBtXuHAJ4otz2hqkKXeXuHHZ4NRvPizZ3qOHTCtx7p4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=ZhTyLBryRyVkvqwpXaHT2polsM/GF5V5C5NrSfTsPkYt4CwiK/nt7JPV7nYyZImO9
	 GPN38HUljYr+lKNc5FgTX7l1b8zO6vgxdN1X9cdRpK/jCNkzPcQPcrPkEzBCr0xSMY
	 2717cbNbtT843CAgAbiNtviLy9ZxWDeequ4HooQ2B/CKBfuGstwMUBnspn2xcNBJS3
	 eg6odwJlmsQTVEUNIdvuBZ3MrPISChpsFw+kXDtB/UXdiBgsvVLsiEmGOwhd3qZC0R
	 85pxdEZgu9JrgPYDtr7wDFEQZyGu3XMK7tT7azKlRWetrMMrZK9bSsIYydyjkS65nE
	 CUvCn08vzFcPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9313834BB;
	Fri, 26 Apr 2024 07:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6DB41BF292
 for <intel-wired-lan@osuosl.org>; Fri, 26 Apr 2024 07:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFC81605C5
 for <intel-wired-lan@osuosl.org>; Fri, 26 Apr 2024 07:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LgTWJr109ri4 for <intel-wired-lan@osuosl.org>;
 Fri, 26 Apr 2024 07:10:32 +0000 (UTC)
X-Greylist: delayed 2703 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 26 Apr 2024 07:10:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E1B86059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E1B86059E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E1B86059E
 for <intel-wired-lan@osuosl.org>; Fri, 26 Apr 2024 07:10:32 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1s0F1Q-0002G7-Vx; Fri, 26 Apr 2024 08:25:25 +0200
Message-ID: <ded3e7ae-6a7d-48b2-8acc-c125874ee09f@leemhuis.info>
Date: Fri, 26 Apr 2024 08:25:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1714115432;
 f40b3195; 
X-HE-SMSGID: 1s0F1Q-0002G7-Vx
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 In-Reply-To:References; bh=hBtXuHAJ4otz2hqkKXeXuHHZ4NRvPizZ3qOHTCtx7p4=;
 t=1714115432; x=1714547432; b=XeQCACR4z5J9DP8gmzGddljzQmot0JWKf2wCEyR9CRy8ttU
 6kos6mqnELkvPNpoHshs6TJYXp6/Aj41w19jeFdBSMMu1yxMcQu+WNfRHl+fn+vSwuZ7/Yr95OiuL
 b0wgFQL4zhGr778dB+FxoxGXFcNhP+W7LTK8biMCa1zNV5z6mj/6d1tYlcI875cygP+RNlQNVvN1F
 VY0AgjmaJEMdJdqrs5Y6OSuRg+IY5vmiIbS33Gj9B+AtfwQqzLA2n8Gy8Q1WtSerZWsxVxUSOHesC
 GHnG2KuWZDjGviu7FD3Rra2MXEE2Rchb2XZDN5kgs3j0NysSyBlRWIUW9Xx1YleQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=XeQCACR4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change
 usleep_range to udelay in PHY mdic access
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Linux kernel regressions list <regressions@lists.linux.dev>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@osuosl.org,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[CCing the maintainers and a few lists]

On 17.04.24 21:03, Vitaly Lifshits wrote:
> This is a partial revert of commit 6dbdd4de0362 ("e1000e: Workaround
> for sporadic MDI error on Meteor Lake systems"). The referenced commit
> introduced an issue on vPro systems, where disconnecting and reconnecting
> the LAN cable might result in a kernel panic.
> 
> This was root caused to the usage of usleep_range in an atomic content
> while trying to access the PHY. Change back the usleep_range calls to
> udelay.
>
> Fixes: 6dbdd4de0362 ("e1000e: Workaround for sporadic MDI error on Meteor Lake systems")

Hi everyone. What's the status here? It seems like this regression fix
did not make any progress for about a week. Which is not really ideal,
as the issue afaics causes quite a few people headaches, as a quick and
rough search indicates (there might be some false positives in here):

https://bugzilla.kernel.org/show_bug.cgi?id=218740
https://bugzilla.suse.com/show_bug.cgi?id=1223109
https://bugzilla.suse.com/show_bug.cgi?id=1222945
https://bbs.archlinux.org/viewtopic.php?id=294913
https://bbs.archlinux.org/viewtopic.php?id=294828
https://forum.manjaro.org/t/networkmanager-stability-issues-since-latest-update/159960
https://discussion.fedoraproject.org/t/kernel-6-8-5-stops-at-splash-screen/113519
https://bugzilla.redhat.com/show_bug.cgi?id=2276325
https://bugzilla.redhat.com/show_bug.cgi?id=2276852
https://www.reddit.com/r/voidlinux/comments/1c9s8ut/bug_scheduling_while_atomic/

Side note: would be nice to add these tags to the patch
description, too:

 Reported-by: Jérôme Carretero <cJ@zougloub.eu>
 Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218740
 Closes: https://lore.kernel.org/lkml/a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu/ 

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.
