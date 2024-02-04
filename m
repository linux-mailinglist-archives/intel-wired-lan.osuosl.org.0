Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C643C84906B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Feb 2024 21:39:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01F1A40620;
	Sun,  4 Feb 2024 20:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01F1A40620
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707079198;
	bh=EeCtIs7tMd/7cDNtFsjpNA4jUG2kYjpMRPaxUZyZda4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3SoeCfPdLujRUFLmVwMSyjyGHX/C395c6H/1+pfRUrYqcQUYDNmZk5/gu7Ack+aib
	 lA/k8xLnR/uyQnUlE+2XwjjAEqxU7DHcmspItbYxot4oQGc51egCxJvvjm08adSa+I
	 h8obTRXF++/oJBTech7xJTGYzKw4mea3LXEsjy/FQqRYh9ojRwRcxP51DMFrjXPXhX
	 2SlEKblqAGqTYdioa6wOyKTlzpLq9bpXFukNvaBTAh3JX/89Q7KFHBlicfbqnRg6Un
	 NZtAeHFA6mgW6Cc1rPV9pFI2nwjEpC3hmvsZCLWwE1ha0UxsSyqs1CXU0UJo8DKTMU
	 +9E5EN5KPI6ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSx9lqoB11_N; Sun,  4 Feb 2024 20:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 813784055F;
	Sun,  4 Feb 2024 20:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 813784055F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09A051BF335
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 20:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEE0A60776
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 20:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEE0A60776
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ji4MpNyvwbs1 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 20:39:50 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be
 [IPv6:2a02:1800:120:4::f00:14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B53E6076C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 20:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B53E6076C
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:603c:67a9:634f:3025])
 by xavier.telenet-ops.be with bizsmtp
 id j8fn2B0091jQqGJ018fndR; Sun, 04 Feb 2024 21:39:47 +0100
Received: from geert (helo=localhost)
 by ramsan.of.borg with local-esmtp (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1rWjHH-00HFOC-GI;
 Sun, 04 Feb 2024 21:39:47 +0100
Date: Sun, 4 Feb 2024 21:39:47 +0100 (CET)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: linux-kernel@vger.kernel.org
In-Reply-To: <20240204194607.3067634-1-geert@linux-m68k.org>
Message-ID: <f839ca42-c55-4850-28fe-cb198fa9db4d@linux-m68k.org>
References: <CAHk-=wisik=He=zySDRHq7fe6k_cOXZeZiCkR41TmbzK2KNZtg@mail.gmail.com>
 <20240204194607.3067634-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [Intel-wired-lan] Build regressions/improvements in v6.8-rc3
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
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 4 Feb 2024, Geert Uytterhoeven wrote:
> JFYI, when comparing v6.8-rc3[1] to v6.8-rc2[3], the summaries are:
>  - build errors: +4/-44

   + /kisskb/src/include/linux/compiler_types.h: error: call to '__compiletime_assert_1093' declared with attribute error: FIELD_GET: mask is not constant:  => 435:38

drivers/net/ethernet/intel/ice/ice_nvm.c: In function 'ice_get_orom_ver_info.isra.0':
powerpc-gcc5/ppc64_book3e_allmodconfig

   + /kisskb/src/include/linux/compiler_types.h: error: call to '__compiletime_assert_1104' declared with attribute error: FIELD_GET: mask is not constant:  => 435:38

In function 'ice_get_itr_intrl_gran.isra.2',
     inlined from 'ice_init_hw' at drivers/net/ethernet/intel/ice/ice_common.c:984:2:
powerpc-gcc5/ppc64_book3e_allmodconfig

   + {standard input}: Error: unknown pseudo-op: `.cfi':  => 605
   + {standard input}: Error: unknown pseudo-op: `.cfi_def_cfa_offse':  => 605

SH ICE crickets

> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/54be6c6c5ae8e0d93a6c4641cb7528eb0b6ba478/ (238 out of 239 configs)
> [3] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/41bccc98fb7931d63d03f326a746ac4d429c1dd3/ (all 239 configs)

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds
