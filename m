Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7151258AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 01:40:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB37A87DDF;
	Thu, 19 Dec 2019 00:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xzm71squmq7J; Thu, 19 Dec 2019 00:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95E4287D98;
	Thu, 19 Dec 2019 00:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBE831BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E34DE88501
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNreZJRsKll3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 22:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
 [209.85.219.179])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E73668831B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:54:38 +0000 (UTC)
Received: by mail-yb1-f179.google.com with SMTP id f130so1466656ybb.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 14:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=Mg2pzNYGqFF/Ft759Ueb2ktYJjmAjxyMCayQDxpq8oU=;
 b=Vrvron5pdNZHzvlLnWmgGF3eITVqwNjucnOFgHQmjykLmxxi6/lPPiEwtVU41rJj9B
 qrP5XK9l5rbZ8e+L2gO6+4iGjqU9KxngfPXKUYwxoqbrXNQIiGUz0jp+fzNyy5z3zAMM
 hOSPRRNxJ2ylplMZKquDkBi06jS37Zb+ZTmq/Gh63+KWE04coYuxHWrwSaL5u+ylJgO4
 m2TVyiZ5dm127PnwHFqX828cx0kNRFXNz81ASzAvSIYHdGlTrmGlOP/prjjIhaVBXwhe
 dic+UYyo9SOrkKf6WMnB4Uymg9YnlEmgEHHVG9hW4hG0d61fhx8HDzvTgvOOwJ9yqXwt
 64Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=Mg2pzNYGqFF/Ft759Ueb2ktYJjmAjxyMCayQDxpq8oU=;
 b=t9GnsqB1E24PjBkmzbxSJuD+g4oZXi4fDtopfzMiZp4fWYYPZf7iyqmhuiWmkDkxmT
 AUMMcq7j6NvsZp06cWHa7M5PvGuHrh3rNTDGJJBwAij0q5j3wyiq+sCCxaRs84flF/hQ
 +62bYJusut2jMQdO+M1aZ3vq8fjLKQwP7KQpkK2KCuCaoHObrVp3ASazjGkISlIAk18w
 S1TbstMGd7nyYWKN+TJl8DSfSf7Rm62FP4M/EfQhuanV/ifkXWnjOr7od8APuK6xw+of
 fK5QqcmLM0plBuhf54nOjr6UAjqOeoWLYYKcKvNZBfxjdE6tFE4zE2nhwFPXdY5cMUFD
 iQrQ==
X-Gm-Message-State: APjAAAX4TtTByXQWR7pvf0CkIWy8EKrfWXI5h6c3QS044DanzqPwEA8p
 cJoTzHqDyK+DRSC5LEl7WM6f3audaca5+2lb29PMjGkpxDD5CQ==
X-Google-Smtp-Source: APXvYqxASg1AaxonjJQj5CrOQKqcSPaeb242+/YPlGMtaKpbhq/byEkEZvJRNxKgW2LVTUQh65JgoaCknfOM5ALBnkQ=
X-Received: by 2002:a25:3346:: with SMTP id z67mr3928120ybz.423.1576709677362; 
 Wed, 18 Dec 2019 14:54:37 -0800 (PST)
MIME-Version: 1.0
From: Paul Stewart <pstew@google.com>
Date: Wed, 18 Dec 2019 14:54:26 -0800
Message-ID: <CAMcMvsiZ72fGryE=Hrh0jg0Fdm35dcuwi--KW2-gRW6zX9-0NA@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Thu, 19 Dec 2019 00:40:01 +0000
Subject: [Intel-wired-lan] Setting PHY modes in ixgbe
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

We're creating a device that uses SGMII for communication.  The
C3000-based SOM we're using defaults to KX.   Intel's documentation
and drivers offers almost all we need.  The C3000 document refers to
the mode being configurable via the "the 2-bit Link Mode field (bits
[5:4]) of the Initialization Control 3 word, located at 16-bit word
offset 0x24 of the particular LAN-port base
address of the shared SPI Flash."  It then has a table with 11 entries
in it that show the various modes (VF, KR, KX, SFI, SGMII, etc) that
it can enter.  I have a couple questions though:

 - How does one map this "particular LAN-port base address" to an
actual byte offset in the EEPROM?
 - How do those two bits map to the 11 different options shown?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
