Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6729519D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 13:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6148C818DC;
	Wed, 14 Aug 2024 11:27:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCtpy1fg5mGO; Wed, 14 Aug 2024 11:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5180F819F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723634858;
	bh=oChSn+ddY3rawqfzReuNujffEuD1pwyybyXLWnykGyA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=Bd/oOey97XGMzozhmFnXIYfpDkX1rd8xqtuNmdSG2GLhbD/a0ngk35TSvMC7Qc/31
	 5VD+lrtergztMJ8a7H+iN79V2Ej3D7BGDy6aujsJ+PS52vv6CFukr34Z/IicaUJw/B
	 DGwa5U+pseMGdL3VPKzzr+WnCiyI9UIeKp/LyEyzCiwy8fKV/IrxJJPAim9qkonU58
	 jwXaJM8EQNoYSWmvRRZT1Glo3d7IvCOI0PQHqVdXApTXQReJgsYWRvSip0bIEChjIb
	 2Pqascxla8K94RkNVRUujfxCKcd7wbI2EzBBOiMruJm3yZj1XmIteq00XrLI7rO4oR
	 xp2lNz8wvHTrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5180F819F5;
	Wed, 14 Aug 2024 11:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A72D21BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 11:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91F5F818C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 11:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KUwMrNrjUFOV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 11:27:33 +0000 (UTC)
X-Greylist: delayed 2674 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 Aug 2024 11:27:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ACE2581886
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACE2581886
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.237.130.52;
 helo=wp530.webpack.hosteurope.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACE2581886
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 11:27:30 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1seBSt-0000u4-Nb; Wed, 14 Aug 2024 12:42:51 +0200
Message-ID: <acaa3e31-a6f4-4c45-b795-d12b0d2743da@leemhuis.info>
Date: Wed, 14 Aug 2024 12:42:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
Content-Language: en-US, de-DE
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Autocrypt: addr=linux@leemhuis.info; keydata=
 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 n7RI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1723634850;
 aef2d79c; 
X-HE-SMSGID: 1seBSt-0000u4-Nb
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 Reply-To:Subject:Cc:To:From:MIME-Version:Date:Message-ID:From:Sender:Reply-To
 :Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
 References; bh=oChSn+ddY3rawqfzReuNujffEuD1pwyybyXLWnykGyA=; t=1723634850;
 x=1724066850; b=1/kbgULAKW7s/mWJJkbvR7lF9Iw48M5tRUNWunD9AXzlQPketgmaEsiSvxRZc
 5RoJkVhPWPzUIeMXGDz+uilYn0AYRl9fm/FM27WyMC9VjOsmC8g7GdVZlHlcTE4dMu1PAOXapn6AV
 zHvcDdGGcd6FwG/DhJ0hussNNJMtLPJpzzZ6UI+S4jGr7J9ztF9GpRGFqQ87zQe0xn76SA1WKaZMh
 jJjbWeOlLR5vGgWt+6HAuvFc1wxjq4VAejJS4pIhM56crSrcQT/eCatK3n4QV63l7lc+eWud6KBWV
 EPR/a/dHMgkXXD0mriGnVUnL37WLnCUibta/gQjnYtH8XqXLTg==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=he214686 header.b=1/kbgULA
Subject: [Intel-wired-lan] [regression] igc does not function anymore after
 second resume from standby
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
Cc: netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux kernel regressions list <regressions@lists.linux.dev>,
 Martin <mwolf@adiumentum.com>, LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Tony, Przemek: lore did not find any mail from Sasha in the past few
weeks, so from here it looks like this might be something somebody else
needs to handle.]

Hi, Thorsten here, the Linux kernel's regression tracker.

Sasha, I noticed a report about a regression in bugzilla.kernel.org that
appears to be caused by this change of yours:
6f31d6b643a32c ("igc: Refactor runtime power management flow") [v6.10-rc1]

As many (most?) kernel developers don't keep an eye on the bug tracker,
I decided to write this mail. To quote from
https://bugzilla.kernel.org/show_bug.cgi?id=219143 :

>  Martin 2024-08-09 15:17:49 UTC
> 
> Starting with Kernel 6.10.x I experienced network connection
> problems after resuming my system for the second time.
> 
> My system contains two Intel I225-V (rev2 and rev3) cards.
> 
> I ran a bisection and got a hit: 6f31d6b643a32cc126cf86093fca1ea575948bf0
> 
> rmmod igc ; modprobe igc remedies the issue till the next but one resume.

See the ticket for more details. Martin, the reporter, is CCed.

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.

#regzbot duplicate: https://bugzilla.kernel.org/show_bug.cgi?id=219143
#regzbot from: Martin
