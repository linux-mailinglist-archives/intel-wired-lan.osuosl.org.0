Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D2CC21D79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 19:57:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B46CB614C3;
	Thu, 30 Oct 2025 18:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vON7M5awHMss; Thu, 30 Oct 2025 18:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C3B5614CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761850643;
	bh=TK4Iow8IN552aUZ+XEVgkD9zMrWI5YkC7ri5CBIUbcE=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d760RzJCPrdbyCPoRSseiAY5smcQQpDEIJbZ1vVvLa/heWeL6tfXpIxuN6+GPmpi3
	 K3JPY6tqKirqFTn3+UQbW4B9rSkwJo4g2SjwrMwkFoq/JlVAaRfNETGzYDN1UoSQNt
	 /O7AgTvHkbhf26OtiQZIvEoalCPjweOvvCtVghpSoJ8ivcKa2pH0wTov0MBs7pgDuJ
	 Heigh0HvHYCmi5t7ElxfhEVm03cMs2+Mp1nG0KnvMJFLyuL/j+sWADjnzssXV5beYi
	 1RsOfHKSWyaQZ/ovnVASrMp2QMdBoxuXRQoxO0gINDFAFAAKsDVJ2/ZO87VGYkbOhz
	 C7OIAyeNEHNLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C3B5614CB;
	Thu, 30 Oct 2025 18:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 719B22A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 18:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 630C640C98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 18:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hk0Dlsma7RZc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 18:40:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112a; helo=mail-yw1-x112a.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6BFD040C46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BFD040C46
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BFD040C46
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 18:40:36 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-7815092cd0bso17685677b3.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 11:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761849636; x=1762454436;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=TK4Iow8IN552aUZ+XEVgkD9zMrWI5YkC7ri5CBIUbcE=;
 b=Eh+AvgnqBTHkuZ4cO+gOTv/33BXyO+jnIpAvdSbgY2PoQaF437J5IQgIjk/qCENtJ0
 Y3d5+CAw3XRxYGtzEHn+rs6yF8MHFbBscigJBA686s+AByxmG0vNgHurUbwaiTdis9tw
 h3gg/TiEGp9SOxEEa1496vHvg/VKaXjY5P3fppScRpe/N3W76/HJfKWKdav7aumcH41c
 AqAdM0pZNuvkm3sKkSJZ691OCpHDEsiLAyDSK/2rPxWKsUHJq/htUG46FVcaHmrwl0aO
 b+E5CeJ4rXqPnPNXtC5r6kMD0PcIcEfMxmTGtugDHN5CC+S3yYR4xXcEQt77G2uebBAJ
 OevA==
X-Gm-Message-State: AOJu0YxinnGgo24wuhsiIShwAHBDHdhClMQtlAqn1dCO/wV9Jk+horYq
 6h9djjj1IIZAslWnWZEv5JSXwsbTO1+tJKKLDwicMJKaBwqIkA8iNcpjQRjE0TXzS3MSxMeKukm
 rCyvo/5zOHHtT2wYr4ISEpPvcrvbtv30IQyiwJOw97d7ewdazd2niLIMmZw==
X-Gm-Gg: ASbGncuWTskyLCrg7P3nexjl4Ge9a45NFV8TPZ3srpr2CBi0hrEHjgR09ytqBK9fyVn
 JENVdfpj/AQU2aGcXuBoMy85ru6dg4jwWwbffkqgteR4vaHKDB5X0zYy7cXouvE3PPipI17amoK
 Gp2Din2tXzfk0185/1ZCfta0+6tXJ0i4Nzt7hh2/AjD755qLybQcxKp7lI0W+LEZdIjOHd0I1Wy
 aRGOJKdVeEl5PPQdI6E3nsdv1CDSWGJJgqP7kWSeaku/O5y4y8cPfqxuvL32tU=
X-Google-Smtp-Source: AGHT+IF3QjEOlaLgxDAYM8gjBUGYSMztn/UxVQtKsioq1kXaIiyEjxc8rOGMK+Xz/HIapZShPKVOUStVq+k6k7yQlYM=
X-Received: by 2002:a05:690c:338a:b0:77f:772e:6229 with SMTP id
 00721157ae682-786483e8a86mr9305347b3.1.1761849635575; Thu, 30 Oct 2025
 11:40:35 -0700 (PDT)
MIME-Version: 1.0
From: Cody Haas <chaas@riotgames.com>
Date: Thu, 30 Oct 2025 11:40:24 -0700
X-Gm-Features: AWmQ_bnmU7QRn6iR30TM3VeGjhbDrKl-F-vsCdHnZoL8wkgLakQg1XwpMGGwpOg
Message-ID: <CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 30 Oct 2025 18:57:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1761849636; x=1762454436; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=TK4Iow8IN552aUZ+XEVgkD9zMrWI5YkC7ri5CBIUbcE=;
 b=lBdbSMUiMrEypfDgH7sJjkYw8KoIKpnhGSSj17gqvvUCvjCUgFCVendjiwEAHPRLVx
 l85QW1Gxl3i1tcxVGGdGtS9SlcOQkaDq3mJx4C5NXMRdQTsgT0V+6PLoPIvzfaviXqVE
 Ot8Yh46mj78mJffV0nrNH+hpAXSOoXtX3qQh0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=lBdbSMUi
Subject: [Intel-wired-lan] [BUG] ethtool_get_rxfh_indir will always fail
 with EINVAL for ice driver devices
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

Hey there!

I believe I may have encountered a bug with the ice driver. I'm currently
evaluating a few e810 NICs using the ice in-tree driver for kernel
6.16.5-200.fc42.x86_64, and noticed I am unable to get the indirection table
using ethtool_get_rxfh_indir via ioctl. Doing some tracing it looks like
ethtool_get_rxfh_indir calls ice_get_rxfh, which then calls ice_get_rss_key.
In this call sequence the seed passed into ice_get_rss_key will always be null
as ethtool_get_rxfh_indir does not set the key in struct ethtool_rxfh_param
*rxfh and ice_get_rxfh passes the value through to ice_get_rss_key as
*seed without checking if it is null. Then ice_get_rss_key(..) will return
EINVAL when *seed is null.

I compared this to the behavior of the i40e driver, which is the driver we
currently use on our devices. It looks like this can happen on the i40e driver,
however since i40e_get_rxfh has the lookup table (lut) that it creates
locally it will be able to retrieve the indirection table via
ethtool_get_rxfh_indir.

Is this behavior in the ice driver intended? If no, I've got an idea on how to
go about fixing this. Do you have any documentation for creating a patch
for the ice driver? Also I've never done a kernel bisect before, and the
machine that's running the ice driver is quite slow at compiling the kernel.
If anyone knows when this might have been introduced that would be very
helpful.

We're currently evaluating these cards on a timeframe so any help would be
greatly appreciated.

Thanks!

Cody Haas
