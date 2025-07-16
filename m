Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD51B06C67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 05:42:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC76741368;
	Wed, 16 Jul 2025 03:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EtQmFytvCnvA; Wed, 16 Jul 2025 03:42:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50364410C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752637342;
	bh=zK0LYgXvk8ioUzC1S2Ik9h3JQIJNRHwofmVViAm9Zrc=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gDStliHxsGrSLQK9v8wJozbdGogOpjxRT/gWU50EyMAx1DEWDZiiMYNXn9CC3sLiF
	 BMCw3Z/XQRJSJqibzUm7J6z6ZneojX9wLbBD+14c3sP+NTgPpRMnt0VPYNsP4DDydf
	 RN2/t8wyQWdTQ6vW9CvJ+zEfSNXpiAgLMP04dLoG8ZcKAyA8VB6z3SM9+E887i8l6k
	 VCAW30bN6o5ygt9oHRely6rsfqHXclLNXJKw1T9Iy1o5rYilbVWb3I1NKTXVIYi3wZ
	 YWKPgH/C7iHYx8DvrV1R2vd12WiX/BuNcClNobp3XkC2ZA/TJVHtuPiWqR6tGj6qtW
	 7JbfYZHAtQe+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50364410C8;
	Wed, 16 Jul 2025 03:42:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 66BAE1C62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 03:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5824683CC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 03:42:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f3qGe16GjRx1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 03:42:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::136; helo=mail-il1-x136.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7B9D83CBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7B9D83CBB
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7B9D83CBB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 03:42:19 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id
 e9e14a558f8ab-3e25355160dso16247855ab.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 20:42:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752637339; x=1753242139;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=zK0LYgXvk8ioUzC1S2Ik9h3JQIJNRHwofmVViAm9Zrc=;
 b=gtOHOtjB4mbfx8h/f2Ki4UoygatKu0psYNeyCCkSRDOTrE9+d1WaYu6XN8kNJpDlcS
 B2TCAfBs4CpSYcO6KlpdOxmqgSo1Luz0v7EdVRs058sUY23/P53kLKded83iV3J9y1J5
 fROjFyuafFdHyKRXBeekMLrfDpjR2Z6lPAYYKxtAF9ASRTAriaeucgSr/OY8cHz6zJM6
 QUi8XyS84EvjjPth28wR8FF/ZlRYrj8R6Ervm1wsVrosFfzb/TOeZdTTt9JSBEl/O2P+
 GsgMYehvhLpHcaKVLAxXZTTsXrLOVPILkNhbydhMmGUAjip1MOorKK+dcvEASZyPi4K+
 LI8g==
X-Gm-Message-State: AOJu0YxaiEjVURbeUPYjW3Sch8ue3g28+KdOeLJArDQSi4InvGn/UcNN
 MTeu1vZgygELasPCelkGi0x7yqdUTw3VaOcUV8GA1AnAFvL4qna5GK1A0H/FdxDx54AOZfUgI75
 4CkRKOhWi0MBZkwjw54UjiiMhe9L3NxxdZ4F60Kk=
X-Gm-Gg: ASbGncuvbc9TAkbRTTulV8S9YtUHRbxTJ5Xpwh3Wxa3EKSPUX30m4sAAEAgrArD1TbV
 HHPU7u2bwBahmcjyuW/AM+uS11WpL13CxwsR/EODN7K+Av+aCtSCm+bKS84MNwQ1LsZAfqLIxsd
 0/IvDdSqkb2d0inUdl7q210Cw1ceBkt44G3wOEzEQHlkiXvMR7WiqFwRjHnLyOZuTo0jMbW2FuW
 cbI5Cm5i+t8z/JS
X-Google-Smtp-Source: AGHT+IF5lPdD68qW+BJ9+XBjqLPHkHbS0EY1gMC0z9CI8MeTWYuTU9ZySq8wpzWIBNWOMZRTCZj9NT5b22STa9RKiuw=
X-Received: by 2002:a05:6e02:260f:b0:3e0:546c:bdc3 with SMTP id
 e9e14a558f8ab-3e282e29c9dmr13263225ab.11.1752637338679; Tue, 15 Jul 2025
 20:42:18 -0700 (PDT)
MIME-Version: 1.0
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 16 Jul 2025 11:41:42 +0800
X-Gm-Features: Ac12FXyj9mwSvcbXbbQHSKhEOCSBNqSHx-aIvgMPkMveKkGzcBng-JAan5szDoM
Message-ID: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752637339; x=1753242139; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=zK0LYgXvk8ioUzC1S2Ik9h3JQIJNRHwofmVViAm9Zrc=;
 b=K2oSex4rlSyL5Ha5STGkWPmzCOYY79yQCTw43Kunqx+SaDHXsM037S0E8WIZ3AxVjP
 3kyV2y6rNzSO6iWCob1pwbuGOIGjpxNxDB6vYUaBDnhA2I9jSi/0UMydU9aCVNsuzPNn
 WJzcD9rPHBB3r3XjWQSU2BLtakG9vYQ7Gzb3BMnxyG9Bi5axjqsJZLoS5jD0myt51hDX
 elKvS5INs/FvZUlPy6++ha+ewOXlSvBHS7Haznj6zRPVz6Lu1UJlRu/GJaZpulcpTiZk
 5V+S3dcHxv9uCNgb84HLfd7nkFiTdVApUHRx9stpE6gKnF+2iQoyrECdJ3FpwmPBpGcG
 NLIg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=K2oSex4r
Subject: [Intel-wired-lan] ixgbe driver stops sending normal data when using
 xsk
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

Hi all,

I'm currently faced with one tough issue caused by zero copy mode in
xsk with ixgbe driver loaded. The case is that if we use xdpsock to
send descs, nearly at the same time normal packets from other tx
queues cannot be transmitted/completed at all.

Here is how I try:
1. run iperf or ping to see if the transmission is successful.
2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"

You will obviously find the whole machine loses connection. It can
only recover as soon as the xdpsock is stopped due to timeout.

I tried a lot and then traced down to this line in ixgbe driver:
ixgbe_clean_tx_irq()
    -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
            break;
The above line always 'breaks' the sending process.

I also managed to make the external ixgbe 6.15 work and it turned out
to be the same issue as before.

I have no idea on how to analyze further in this driver. Could someone
point out a direction that I can take? Is it a known issue?

Thanks,
Jason
