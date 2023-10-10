Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAE27C764A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:07:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3835C61160;
	Thu, 12 Oct 2023 19:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3835C61160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697137652;
	bh=xSMP6z0GjG1Z/vemAh0SikkTwkM8assqvbrSzqDxSNQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xoGt4glYjiFAh0Q7mCXViwgJ9pef6yYa6g07H0rLm6CbShJCECKjbGVG1qB4a89/O
	 /tfSr+19yehPdLrx0gjzXRpgznTWsMBt71aCrOQKiRiOI6lFXaNgBnfN9QjXv2huQL
	 yGu2CDL6W3frG92qrG4SUYd0ROAztpNrJOHurCE7EHI/mW5zueolNCW/Iw5zSripZe
	 kcVeQchCLwKJfVacoXCvQssnKfonEcgUFyvorAxSSC4djkgf8aL6euwMzs/xxZdcAR
	 u/2ssqvpNY4sOoucHuIBrtKDNZiznG/TPYJ/kArm+OAHU4FKx3q+qHSBpAU+8VN0lm
	 +TqUqU9QbDOOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShjJgTkwL185; Thu, 12 Oct 2023 19:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 164E861060;
	Thu, 12 Oct 2023 19:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 164E861060
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45D191BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2B1BE820BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B1BE820BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iv0ukcQ8ix2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 22:27:07 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC8DC820DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 22:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC8DC820DB
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-5a7a6fd18abso30554997b3.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 15:27:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696976826; x=1697581626;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mqff+9SvB3fBY25z9tL0cer8ihfSYj7+UyD+m2ojB+8=;
 b=CkVX5XiYqaWdLIpDq/lX+Cc1j+GDAwvDXW62OGtoaqdplN/iXqA/CXtmK1438sJgf2
 fepfO7CdS13mD1jaYj8TnivwZ/zW0sXUZLWCh/fx6EebKYauur8zaIJFLpDJ9AGPWuwd
 FsRnM73fi8bJb2qmsdqWcZG/Tx7yfJT1p8CN1K33EDGd6Duwjc1QDZmzZ2KJbQAxE0bH
 T9ry/cz5XuWfEhSUnD/gN6qLr3WTwfiRxLWQEHGkbdhUtkl1pGf7PqF4s3ZkB0nS5VHu
 rYf5G3evYQI0qNzh+8B7rk0ruIauYISAG+dCBlChqVXyijwI+dy/0urzwg92skfXW5Gq
 yMAQ==
X-Gm-Message-State: AOJu0YyM+SD46ruYCZIv4aYaiD7Tr02S7wp04le14og++ACtFe5GvWDV
 x9JXnWK61s3mbcn2w/qNheIzScUlIg99WYmdUQ==
X-Google-Smtp-Source: AGHT+IHraAII69a0aP4H4gUX+XoxQ3XrNIHW4Gwc/C6sng3MZIlHkz72ifEwjxe4Zr7sZuAZ7NQjtNagMZnt1yX0Dg==
X-Received: from jstitt-linux1.c.googlers.com
 ([fda3:e722:ac3:cc00:2b:ff92:c0a8:23b5])
 (user=justinstitt job=sendgmr) by 2002:a25:8a0d:0:b0:d81:7617:a397 with SMTP
 id g13-20020a258a0d000000b00d817617a397mr352834ybl.9.1696976825766; Tue, 10
 Oct 2023 15:27:05 -0700 (PDT)
Date: Tue, 10 Oct 2023 22:26:53 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK3PJWUC/yXNwQrCMBCE4Vcpe3YhaUHQVxEPMTtqQGLIhtBS+
 u7d6vGfwzcrKWqC0nVYqaInTd9s4U8DxXfIL3ASaxrdOHnnHWc0QeeK8gkRrK3mWBZrRRYOyn+
 QBbg4cfE8PYRMKxXPNP+ebtT9MRll3Nzovm07eajTV4kAAAA=
X-Developer-Key: i=justinstitt@google.com; a=ed25519;
 pk=tC3hNkJQTpNX/gLKxTNQKDmiQl6QjBNCGKJINqAdJsE=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1696976824; l=3112;
 i=justinstitt@google.com; s=20230717; h=from:subject:message-id;
 bh=xvGZD5tJaO6+F4XyQY6/aAG8nI/QHpdZbkaTXLOae38=;
 b=ZUNsueoPkwbd0dBafrZ61XOzzilo+aMtXgdstoGrSelvS82fo2raZLSDrWZAsbk+OrkDtUx4l
 P1sYqwtfcssAwA1lCB1wgfMwcezaDYwjJ0lWQ8ez5Nba0zkDIaIfHu4
X-Mailer: b4 0.12.3
Message-ID: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
From: Justin Stitt <justinstitt@google.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailman-Approved-At: Thu, 12 Oct 2023 19:06:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696976826; x=1697581626; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mqff+9SvB3fBY25z9tL0cer8ihfSYj7+UyD+m2ojB+8=;
 b=r+nVXWw303s14xaFiQc/fQ2TTOxhk4IkTG9826pUYh9oBdaAQmDu+nsOb3hPd8lIi5
 69ENrmx9MoXJHXkC9HbRMiHon6Ol7IvkcIyZTuoO85M+IA5HpNKqSsxP0V8sBpbWmY3W
 VaKKlGitvVKaOjfZJF4aQ6t6ngGBzviUQ7cT5MwLNrpX/jeogShzMBpQCRA/pePzxy0z
 BOdDqaFtWhzcxndm2VR63go+fpPmOEbo7kziE3sn4IljcEjxyROdUV+qcIxYrWeYL4lt
 /hKyyKLIc63P1ev7QgXcthWDaE3GBfrcbKaLbHj7HOit//euY+frQBuu3uV+JC6O8EBv
 2OkA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=r+nVXWw3
Subject: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: netdev@vger.kernel.org, Justin Stitt <justinstitt@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This series aims to eliminate uses of strncpy() as it is a deprecated
interface [1] with many viable replacements available.

Predominantly, strscpy() is the go-to replacement as it guarantees
NUL-termination on the destination buffer (which strncpy does not). With
that being said, I did not identify any buffer overread problems as the
size arguments were carefully measured to leave room for trailing
NUL-bytes. Nonetheless, we should favor more robust and less ambiguous
interfaces.

Previously, each of these patches was sent individually at:
1) https://lore.kernel.org/all/20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com/
2) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com/
3) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com/
4) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com/
5) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com/
6) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com/
7) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com/

Consider these dead as this series is their new home :)

I found all these instances with: $ rg "strncpy\("

This series may collide in a not-so-nice way with [3]. This series can
go in after that one with a rebase. I'll send a v2 if necessary.

[3]: https://lore.kernel.org/netdev/20231003183603.3887546-1-jesse.brandeburg@intel.com/

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
Link: https://github.com/KSPP/linux/issues/90
Signed-off-by: Justin Stitt <justinstitt@google.com>
---
Justin Stitt (7):
      e100: replace deprecated strncpy with strscpy
      e1000: replace deprecated strncpy with strscpy
      fm10k: replace deprecated strncpy with strscpy
      i40e: use scnprintf over strncpy+strncat
      igb: replace deprecated strncpy with strscpy
      igbvf: replace deprecated strncpy with strscpy
      igc: replace deprecated strncpy with strscpy

 drivers/net/ethernet/intel/e100.c                | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_main.c    | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 8 ++++----
 drivers/net/ethernet/intel/i40e/i40e_ddp.c       | 7 +++----
 drivers/net/ethernet/intel/igb/igb_main.c        | 2 +-
 drivers/net/ethernet/intel/igbvf/netdev.c        | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c        | 2 +-
 7 files changed, 12 insertions(+), 13 deletions(-)
---
base-commit: cbf3a2cb156a2c911d8f38d8247814b4c07f49a2
change-id: 20231010-netdev-replace-strncpy-resend-as-series-dee90d0c63bd

Best regards,
--
Justin Stitt <justinstitt@google.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
