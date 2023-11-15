Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A35AE7EBAC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 02:04:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FB88613B4;
	Wed, 15 Nov 2023 01:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FB88613B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700010279;
	bh=7z0cfCU7STwKul5mSiBG4FQBODXG5RDPpYjrzMengjQ=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t0+pEPQnIASFWW2qDPrGGXcaXYwIJ4lpy1qqacgzQIrKZOubyW34FgOfZ1AOc/Iek
	 KYGXXtpBhBEy0Ru4ULwTSR+Kvcbhd4dWXztbq/NAFTVLGUJeMhI5yJS+8AuHpPV1vl
	 KqmyFPE34zzl5W2ZYw3uRSbvh95T54wqAw1N2+AN4wHP0pkQlm76lUQCLpIx4BbCYE
	 jOruTGEhVvZWQ9X81mcxeQAvEgT1UGgdLoHEhJv2tb0qvy/eErd1HHP/b/ibaqFdf2
	 QKWh0tJIwLcvUKUOpmZjuBoRxnmt8QOW5KWgfV/MX3Fe6Og57U3HCnu5kgukbJ6Yrh
	 /wZQzT5uSNWew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQJYHG8Qcm6c; Wed, 15 Nov 2023 01:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B21E560A7B;
	Wed, 15 Nov 2023 01:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B21E560A7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7D61BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 01:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0047781A9C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 01:04:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0047781A9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eKsbmy_a4TFx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 01:04:31 +0000 (UTC)
X-Greylist: delayed 593 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 01:04:31 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95ACF81919
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95ACF81919
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 01:04:31 +0000 (UTC)
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2705E3F322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 00:54:36 +0000 (UTC)
Received: by mail-oo1-f69.google.com with SMTP id
 006d021491bc7-58a8142a7a7so362647eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 16:54:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700009675; x=1700614475;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WDpC+/TU8OYxwd/ov/BIBH/XSQn/0HPjA18j9hJej6Q=;
 b=OqKaWr48K/9MgUdhET23bRtaawqQ2kOHuC+/hUrNVQ2vlqMPCS+SjkhL//UnkTb6No
 g8wl1sMJkbXsQp1MB5GtlRa5u9WwYwWbtOBVsUejnTmBViY+9uanZTF2EeFuWRVl7MFv
 CcAx3uyl6ttRzB156waw4SAYAXM8WDgPwBSzguvHLA/2NZeTrbSPw2MCRs4AnsNzJSL3
 8BS9l4Xb0zqkyX6xhifluiETsFcw9dT/IBtrd6Su1dANeR8pub8waAGTkw46CVefXNl8
 dSoI0xYooJOnT+fPanYwnekAlNGhFl1jcl/1W4JKJyf6VSBmiy4JjmdC+j/mFlvjxjxj
 M2Ug==
X-Gm-Message-State: AOJu0YwBmg+eiKe6o+Be7S/8PEDkZbomc28F2mwL+s/eSryO/6rGQT2j
 u+5QloPM+d4O/Tq8YNKUElRe8rFwFSpD2XpoPwT+B6I/KNzg83xA9XHMwkjMPfi97h88GEr8JOn
 CfjA4Wx4qxoc5/JqyfcC2wuXOsNScpgCSiPTgYOOj2F9TPlA=
X-Received: by 2002:a05:6358:24a3:b0:16b:7049:e8f9 with SMTP id
 m35-20020a05635824a300b0016b7049e8f9mr4744191rwc.8.1700009675081; 
 Tue, 14 Nov 2023 16:54:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjS1Eza3HfJ+1w5VNAFHLX0iHyrhrcjQz7hpZTmu4fpoC03xWrJ7Vip0QyJP/Ynp1eP/c67g==
X-Received: by 2002:a05:6358:24a3:b0:16b:7049:e8f9 with SMTP id
 m35-20020a05635824a300b0016b7049e8f9mr4744177rwc.8.1700009674772; 
 Tue, 14 Nov 2023 16:54:34 -0800 (PST)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 a20-20020a634d14000000b005b83bc255fbsm136600pgb.71.2023.11.14.16.54.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Nov 2023 16:54:34 -0800 (PST)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 02DAE5FFF6; Tue, 14 Nov 2023 16:54:33 -0800 (PST)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id EFDF99F88E;
 Tue, 14 Nov 2023 16:54:33 -0800 (PST)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
In-reply-to: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
References: <986716ed-f898-4a02-a8f6-94f85b355a05@gmail.com>
Comments: In-reply-to Bagas Sanjaya <bagasdotme@gmail.com>
 message dated "Wed, 15 Nov 2023 06:59:06 +0700."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <32715.1700009673.1@famine>
Date: Tue, 14 Nov 2023 16:54:33 -0800
Message-ID: <32716.1700009673@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1700009676;
 bh=WDpC+/TU8OYxwd/ov/BIBH/XSQn/0HPjA18j9hJej6Q=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=TPHgo+LylhDCJ8i4MFjUMv/pvzb8ZhEiGPvRop6QHIWKT+lh/+hmwRLiMSVM/iUpB
 vzWWUylpPyJfaV7nt96tY5yLgYHVRoI5QRQ2UqZyGWjq1hvm+kzxSj5bG0ydFmKTEU
 s9ophOHZsOzArppr+yCSMksv5ufBB5jerCcuebGM2rTJgxwVEkkZocUCjdxm5yGdjQ
 oaaKvJN7Ee68ZO0w8oPKNQYqr8Xi6FPqn8r3ZYQ2tTNlJksQtu0VxGiINEii2jHuIn
 Pm0TNzZV5L6+0svzy6YafJ3D0Dxg3jhwt94UnOEtgauuPC4TrxIZD6Wpuboo/Vid4a
 G9vZWdrEpQiRw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=TPHgo+Ly
Subject: Re: [Intel-wired-lan] sr-iov related bonding regression (two
 regressions in one report)
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
Cc: Anil Choudhary <anilchabba@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>,
 Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Thorsten Leemhuis <regressions@leemhuis.info>,
 Linux Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Bagas Sanjaya <bagasdotme@gmail.com> wrote:

>Hi Thorsten and all,
>
>I come across LACP bonding regression on Bugzilla [1]. The reporter
>(Cc'ed) has two regressions. The first is actual LACP bonding
>regression (but terse):
>
>> Till linkx kernel 6.5.7 it is working fine, but after upgrading to 6.6.1 ping stop working with LACP bonding.
>> When we disable SR-IOV from bios , everything working fine
>
>And the second is out-of-tree module FTBFS:

[... skip OOT stuff ...]

>
>Should I add the first regression to regzbot (since the second one
>is obviously out-of-tree problem), or should I asked detailed regression
>info to the reporter?

	My vote is to get additional information.  Given the nature of
the workaround ("When we disable SR-IOV from bios , everything working
fine"), it's plausible that the underlying cause is something
platform-specific.

	Interestingly, we've been chasing internally an issue with
bonding LACP mode on ice (E810-XXV, I think) when running on the Ubuntu
kernel.  That manifests as occasional TX timeouts, and doesn't happen if
the Intel OOT driver is used, so I wonder if that bugzilla reporter is
also seeing TX timeouts that correlate with their ping failures.

	-J

>Thanks.
>
>[1]: https://bugzilla.kernel.org/show_bug.cgi?id=218139
>
>-- 
>An old man doll... just what I always wanted! - Clara

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
