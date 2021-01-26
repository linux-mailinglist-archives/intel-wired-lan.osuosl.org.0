Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411C304AB6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 21:56:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2036286FB2;
	Tue, 26 Jan 2021 20:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bb-tl8IUUmlC; Tue, 26 Jan 2021 20:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AD3F86FAD;
	Tue, 26 Jan 2021 20:56:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A32CD1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A1A82040B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWafdvkBuPbM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 20:56:24 +0000 (UTC)
X-Greylist: delayed 00:06:18 by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by silver.osuosl.org (Postfix) with ESMTPS id B74A520355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:56:24 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id a20so2732156pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 12:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=Mu9tN6AsBt6hm5TaGfWVwOd2skOhyaD6lKELefiqJLc=;
 b=h8KkKu47QLrzH1EnZOMy3VQ3ccF8ckaUzxcPli8o0Dt3UT0NVLjeV4e9KCKaWkES1f
 KiJDgdggwYfsU3MkltWw55THP5IwykAeCDmyW3cGydeXsVdajOY54kyQ0pXy8Tg2gSfj
 ZwVyvdWp/fbcbeypx1GPvdg46zm+8/iWq9AbGuvIXnQtBSQgm33/UmNbdB17fkyMpLaG
 PYaAQW9OOifcBBe3j15nMtTVZlw2xWCbTBopTpn+eomOWIhjBqmY3wSVNGZJq5Zl+/hb
 RhnYJXn3sUHSGhnnTQM2mVfG7tkYiiF6hep1hRqBlDTr0++gDoTEr+k7oQ2gRGPnWg7S
 T9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=Mu9tN6AsBt6hm5TaGfWVwOd2skOhyaD6lKELefiqJLc=;
 b=E8vEmAX0wb9oWqF0OwkkFOrbLDPw7jE3xszJ730J+jEnh8fSxyguMYF7qK6UPfrUPs
 8sg2rrJDMUu7E8DfX5WJzCBA6Ryz23Y8kpGqJC10S826FvC6uf3zMX6ESCxzq2Ytx3Qq
 us0Dv3iV7rxwM3jp0rQ4p8HWgPR8NoN6VOwVveDE2AMMxBZcHiQirqf/e2GzBGg6beol
 CfRUhY5WnM3mIOP/tyU7ng28NRmQgFLDL5t5ZWHtnsuYfNQYphKEqNIZIQKA2ZrA0jO7
 iqm7S/Z5ivKwSa7TfP7VCZPo8SdEnSyn+CqBDYmHp2ba3FxE9NvZSPVlJ+Gst+j/kY1j
 RCsw==
X-Gm-Message-State: AOAM530feHz7ASv2NXSrbYC/44f0AzpRRrVZZq8XD8LJ+Kqy4UVnJLAk
 KJbEelEwWHZbrsWHEyVrNe15Ljk5y2cSVg==
X-Google-Smtp-Source: ABdhPJy3ROap/GWcyFu8mRtZd9o5JzcfP8RZcOTLQVpRjRQ6UeRRGlmA5Ba3htmvr4aoTjWyW/7nNg==
X-Received: by 2002:a17:902:bb95:b029:dc:e7b:fd6e with SMTP id
 m21-20020a170902bb95b02900dc0e7bfd6emr7802610pls.12.1611694205212; 
 Tue, 26 Jan 2021 12:50:05 -0800 (PST)
Received: from hermes.local (76-14-222-244.or.wavecable.com. [76.14.222.244])
 by smtp.gmail.com with ESMTPSA id
 g10sm21902277pgn.0.2021.01.26.12.50.04
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 12:50:04 -0800 (PST)
Date: Tue, 26 Jan 2021 12:49:56 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20210126124956.72374445@hermes.local>
MIME-Version: 1.0
Subject: [Intel-wired-lan] Fw: [Bug 211363] New: i40e: WARNING from i40e
 when ethtool -S is run.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Begin forwarded message:

Date: Tue, 26 Jan 2021 19:23:29 +0000
From: bugzilla-daemon@bugzilla.kernel.org
To: stephen@networkplumber.org
Subject: [Bug 211363] New: i40e: WARNING from i40e when ethtool -S is run.


https://bugzilla.kernel.org/show_bug.cgi?id=211363

            Bug ID: 211363
           Summary: i40e: WARNING from i40e when ethtool -S is run.
           Product: Networking
           Version: 2.5
    Kernel Version: 5.10.10
          Hardware: All
                OS: Linux
              Tree: Mainline
            Status: NEW
          Severity: normal
          Priority: P1
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: wilder@us.ibm.com
        Regression: No

When veb-stats are enabled ethtool -S hits the WARN_ONCE in
i40e_add_one_ethtool_stat().

To reproduce:
ethtool --set-priv-flags <int> veb-stats on
ethtool -S <int>

unexpected stat size for veb.tc_%u_tx_packets
WARNING: CPU: 61 PID: 10113 at
drivers/net/ethernet/intel/i40e/i40e_ethtool.c:110
i40e_add_one_ethtool_stat+0x140/0x1a0 [i40e]
<cut>
[  649.377973] Call Trace:
[  649.377980] [c000003b6d937810] [c00800000debab54]
i40e_add_one_ethtool_stat+0x13c/0x1a0 [i40e] (unreliable)
[  649.377996] [c000003b6d937890] [c00800000def3b4c]
__i40e_add_ethtool_stats+0x84/0x6698 [i40e]
[  649.378010] [c000003b6d937920] [c00800000debe904]
i40e_get_ethtool_stats+0x2bc/0x4e0 [i40e]
[  649.378023] [c000003b6d937a20] [c000000000c99854] dev_ethtool+0x6c4/0x2be0
[  649.378033] [c000003b6d937b30] [c000000000c1340c] dev_ioctl+0x5ac/0xa50
[  649.378042] [c000003b6d937bc0] [c000000000b8ca7c] sock_do_ioctl+0xac/0x1b0
[  649.378051] [c000003b6d937c40] [c000000000b8d564] sock_ioctl+0x234/0x4a0
[  649.778238] [c000003b6d937d10] [c000000000559c40] do_vfs_ioctl+0xe0/0xbd0
[  649.778247] [c000003b6d937de0] [c00000000055a904] sys_ioctl+0xc4/0x160
[  649.778257] [c000003b6d937e30] [c00000000000b408] system_call+0x5c/0x70

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
