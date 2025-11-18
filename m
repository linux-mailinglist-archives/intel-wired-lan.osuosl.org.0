Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65190C69193
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 12:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E7C360609;
	Tue, 18 Nov 2025 11:32:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2sTiqceIzpZy; Tue, 18 Nov 2025 11:32:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21F4D60F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763465534;
	bh=Wj03nqtcPgmxcon+GCPvYB3CYWne1EFGms665/lYYBY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=j9GIHrszZjdOAbal1+YMAhP4wd8BGKixYUmhgRl2JcaasQEwscRII275d/sa+TIBR
	 sWaUqTxYm+Xu8zHLRwzpY3trqL8mHkX+tFlGFItx515J8Sbqtcze7Rq9Pg1wIHr7sF
	 EhKww8oO9V5a7teLWjI73jREIH1cQnWCj4dUAL1zIZhExN5FZ2BjGiczh+jgcdLkjJ
	 geigqCxuXI9HXA2Knc5YwDZHoHQwaf9dyto4IdJg+WjDsbE0aqTrTiS1VAH9fSAWbI
	 eJG25sNAE1QUrwwj7icQ+ROVzG4ibbSYKJlqWM3dJCOrDp00kGmwoiYqimxmrWnjK1
	 Fcqx9/gNUP9Pw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21F4D60F68;
	Tue, 18 Nov 2025 11:32:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 829591BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7463140B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zpe3IpRn8PDp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 11:32:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4D4F40B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4D4F40B3A
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4D4F40B3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 11:32:12 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-2981f9ce15cso67911125ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 03:32:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763465532; x=1764070332;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wj03nqtcPgmxcon+GCPvYB3CYWne1EFGms665/lYYBY=;
 b=m1anffGGi+cKz2vXvdgUB8xzJiClUlbRslNFNyjoJgy+OT58JacY+3oE6Ffp0WkMtZ
 04c+dBBlLqkSZXNdIvJIsmxZ5cronPMU91YSOxrvlBkVgDJ9f06LziX3GD8jaqqTACjG
 59sxVfWW9MblCP/bX1uYgpSsheraIg8CBuHjcDQIbJxFtThB+nOdZRWGwWhMnBQJDRUY
 Fgkpi9PByw5zYEiE089cXCJ5gSzaQ/sj+Kuxy/sOWx53ERyKF30lsl28N7aNZX6UpODm
 hMxXs5nBBHw2uorffpk4AMSMkpBg+WjciBxWIjCqKJYh/NnZFOy8nXkzBdOTbX3ceEyL
 sB6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyZ1D6UCLADQsnxpslE24G0GmxtnHfHlP0aXojE1ZvpmZ+fymXHMTlttlQPTiUOFzxKvYCKJIiX+J1iVEylWk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywy97SKe1vt01jkodgJi+oDmcx8EE3LMT1WN1Cjg0rJciBnSzw4
 0yMEyht376N1jHRHb4QtLhUQbZqBJKPbtuhy6Uiz++AKTVky6SJaKJKb
X-Gm-Gg: ASbGncsUBIPY7wdRnu3eoF9qFfzHW0VlUDFhLlVUdaCJqcPagU6hScXjpk+jKYd5Wb8
 GKeeWYaq0r2hfyY6TkjTCblOwIew0RGt3+As/OJf14a1FaweR1nvtElGDyMj0kTb6hMWNN6DZsG
 /c6nR2g1jPiBVnELuYO687/jwTTgTpNrZI5qdGnmRVnNmUEqS5I+MoiRVDxD8LADMvCf1qnbEZY
 OhRnnuWSupW9mlKE0S0igK8UB1PiRuakIPXKL0Ds2EmGOJUtFc1y6+kjYM8Ogh0cV5TdV3NQxge
 PFApbrfsAQtKJxhtQh+fIVablagw2qE5uORDwRpAxFJHNsvuy+z4eF2efnD/IXRKDe37lmbqriw
 CCjcGxGLoeagqnkO7MC40gJOo35w8fxX20UO8HhgMeYqcbq/ezbOhe+U8pbbAlFZSjJW3VDG57B
 PQxC7lI72AqpR4PlyPtMvuyBN5wOkal7DQM/eBWuMM1l/IXcO0/A==
X-Google-Smtp-Source: AGHT+IG5VaG6Q0GIZPMrPaqT5GuUqUFcmdC9/5IBvB6VhxiJ4DPZkDYWpqxjta4C8WIbFOkh7vfiXg==
X-Received: by 2002:a17:90b:3c90:b0:340:dd2c:a3d9 with SMTP id
 98e67ed59e1d1-343f9ec8d58mr19036285a91.12.1763465531943; 
 Tue, 18 Nov 2025 03:32:11 -0800 (PST)
Received: from localhost.localdomain ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3456516d4a9sm12583736a91.11.2025.11.18.03.32.05
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 18 Nov 2025 03:32:11 -0800 (PST)
From: Alessandro Decina <alessandro.d@gmail.com>
To: netdev@vger.kernel.org
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alessandro Decina <alessandro.d@gmail.com>
Date: Tue, 18 Nov 2025 22:31:16 +1100
Message-Id: <20251118113117.11567-1-alessandro.d@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763465532; x=1764070332; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Wj03nqtcPgmxcon+GCPvYB3CYWne1EFGms665/lYYBY=;
 b=N7G3nTB2pho+6eXa/hs36523IMT+bOmICdMmsOzzovrkB5ZFq/gabFKv8d9L322v0b
 +GVb9KeeNQYdgmCTVr2jIPhFkqXZaHEnz/oQ2TyscoDVT4fvBgYF8De+UTYk5WcfEkdo
 DmW7SHoqVASJCB8pkiNmwOAa7aOnxTgoOBDHmoR1kyXt0OSF5zJEmvNLwhVK4B+9UnTt
 vxHo7ctR2hWA9Js9+VpQEnPQ06Icy3YQ7coQaTExd+g8nd2ogDn9WWN7tBba4o5whphL
 XN+JdN2YwPHwmtAgudEpD573ececFngS9KUTqU+SRQfZDYviMiJUgGfV7W1tPgGJv0+H
 VZ1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=N7G3nTB2
Subject: [Intel-wired-lan] [PATCH net v4 0/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

Alright, hopefully last time I spam you with this.

The status descriptor handling code is now shared in
i40e_clean_programming_status. 

Changes since v3:

* move the shared code in i40e_clean_programming_status

Alessandro Decina (1):
  i40e: xsk: advance next_to_clean on status descriptors

 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 59 +++++++++++--------
 .../ethernet/intel/i40e/i40e_txrx_common.h    |  5 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 14 ++---
 3 files changed, 42 insertions(+), 36 deletions(-)


base-commit: 896f1a2493b59beb2b5ccdf990503dbb16cb2256
-- 
2.43.0

