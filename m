Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A4BF7EB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 19:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAB1A80EE7;
	Tue, 21 Oct 2025 17:34:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6e5u3qNiXedQ; Tue, 21 Oct 2025 17:34:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6F7280F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761068062;
	bh=W32bDqvyR7vujxfMeW9XwQgpRLc26l7oP7qKEtb01No=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qXNyh5CYwZB5jG1cUjsDs4D/BCne599MUeyFewFr5+1h+LIrYlZZLdiHCSWDKJTBZ
	 ZuSibRATmrSYkMzXF5oeAUmuvVE7dMToUmexAaPncDMu0/dcoe0zPcTipfqApkiW0p
	 mvgL2DRnckCMvk7OewBPJV6G0sZ1hyQXTQSrZPzpigt2xnZddzn8luX0cojccaSGfJ
	 re+0Dn682TZsXm2N4X9z5UvUQynzORmNYUI8/2MTIdVlN5sqO+dS5AejdK3u3JUATo
	 AxoAuL7xqcT3bURfg6Mu9WQORo+b45qojk5yzn5a/bFKppxqwmWaQPe55l6fgwQwY7
	 hCO0z4fb/c8KA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6F7280F3A;
	Tue, 21 Oct 2025 17:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AEB970A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D50F406E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H7HGWgOCBeHo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 17:32:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::434; helo=mail-pf1-x434.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C1DCE406CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1DCE406CE
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1DCE406CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:17 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-781001e3846so5416492b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 10:32:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761067937; x=1761672737;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W32bDqvyR7vujxfMeW9XwQgpRLc26l7oP7qKEtb01No=;
 b=BcljoX8rssGE+stlUJJUV/9r73DkiUDI/pq9Y6I3WPrxtGv/laiTRGbzcWmt9qiYn2
 3ah6lUxJGWTxAzjIgHfInCJfui24pKRK9LsxJqyE67MQ4on+IUYaINCjDg4QrdkBTQwt
 fe+yi8aqhrmER3BYqP/dTkr5DYIMQrBZs67ONFL1jxnTeXXrdPniLJBcxR1D+zdaEb8s
 VhHlxFEn7zagccWIlMX4MlzO+Q45F9aL6/q7JwKgfLPzDweQ54wPVzjscVOMwhy5Ky/L
 Q1oMnWUFi37vaZhV2/CQ5GW8qCb9dY+TR5fTWp/xdnojCZI6bZ0SphZrAG87YMk1RcNH
 bbCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVX6+1te8CppIOHP2MrYw9nBdLm/NZ7glXy71duwJuiXFDBm4Ea9RWPvJAPVedDvS73uOXjV+h6M+bnAJAV+30=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzlsuYX/rUF0Xw5Vl8vUOqMYj9ieAiEt/6/oDPDweqZkIlJTQFE
 UVzLjI3ERi5wIVWCpnch3N2dCKluA+repItYhIE5Z09lAZx//d2MbjC1
X-Gm-Gg: ASbGncv1gXZQbZ0ufRpBDAG7hn6EVoLmo0lIXnOuKyPLyh7g2HAszu2Phb0cvHO+ggk
 VJXfdH/yJu0C4Qn6eex0mQrhl9/SNJkOnd6/M5WIHQDv0bPzZRxi1aI3h+cjw/2dGcN1VJGVosE
 v9OjlH+BnQmjAxWjEQN0IhWj5H3PTNc5XmK8mxmIe5bNdkQDGvSUMuv0maD35ljg9G9UVZePOI9
 NfMKhO6l8tQ15IERndqWe4UhRA6Tp75pfb7QR3iVO8x2GJFRSshA826vZS0O3qVlx3nBAIEqXrA
 kHU3zODDANSUhzm2JRdhgM+3pAndaguGN1FIRlIOxZ7cP2ct3nvGwvjOdA1fRb40TXgpY/abOZc
 BqT58YAdYO3mOfVRkehiY19x6vge6mqhj7gMwYv4L4G8ksYAS5Ot6Sh2ccmERgE0UnT1CsK3Pdm
 izldlZokIlMDZy5A==
X-Google-Smtp-Source: AGHT+IGJnLDF4X5uEtsa2xDyV0cUHKx8VFYNG1No6zJf1JQmgFUvBau7xsPVnXixxXlAbB/zCJrVMg==
X-Received: by 2002:a05:6a21:9986:b0:320:3da8:34d7 with SMTP id
 adf61e73a8af0-334a85661b7mr22334007637.22.1761067936853; 
 Tue, 21 Oct 2025 10:32:16 -0700 (PDT)
Received: from 192.168.1.4 ([104.28.246.147]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b6a76b346aasm10941006a12.20.2025.10.21.10.32.11
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 21 Oct 2025 10:32:16 -0700 (PDT)
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
Date: Wed, 22 Oct 2025 00:32:00 +0700
Message-Id: <20251021173200.7908-2-alessandro.d@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <20251021173200.7908-1-alessandro.d@gmail.com>
References: <20251021173200.7908-1-alessandro.d@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 21 Oct 2025 17:34:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761067937; x=1761672737; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W32bDqvyR7vujxfMeW9XwQgpRLc26l7oP7qKEtb01No=;
 b=HaGegDu6oSriHG8PLu1oV7MFLFBsdG9nIHmc+pWs58zjYbXDlWgw9+VUziERTESPxT
 VDB5TyZLu2scpeX4R1W0eS2B3hZtLM89OylZDEuz02FFpu5IQ/pYQfsQEAT7q+4/r1di
 dl36JXOvRMDfKBELPTbKPuX4yE/plaqLn6ZkOQXCzUQLGwxQpLTx2R/zORB6VpE7REb0
 WWXvRhyNmy4tbDPoAAkaz+kDgq1zYCEZsL8TPXgO3diGLVRHliPpXq3esOMo9LtqojIT
 UxZIFdBt83l0jiHzhUtGEaB3z1rPQsEf/Jnz51XtWIQ59W75MIHmuPvilLaToBK3n0ox
 O1aA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=HaGegDu6
Subject: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
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

Whenever a status descriptor is received, i40e processes and skips over
it, correctly updating next_to_process but forgetting to update
next_to_clean. In the next iteration this accidentally causes the
creation of an invalid multi-buffer xdp_buff where the first fragment
is the status descriptor.

If then a skb is constructed from such an invalid buffer - because the
eBPF program returns XDP_PASS - a panic occurs:

[ 5866.367317] BUG: unable to handle page fault for address: ffd31c37eab1c980
[ 5866.375050] #PF: supervisor read access in kernel mode
[ 5866.380825] #PF: error_code(0x0000) - not-present page
[ 5866.386602] PGD 0
[ 5866.388867] Oops: Oops: 0000 [#1] SMP NOPTI
[ 5866.393575] CPU: 34 UID: 0 PID: 0 Comm: swapper/34 Not tainted 6.17.0-custom #1 PREEMPT(voluntary)
[ 5866.403740] Hardware name: Supermicro AS -2115GT-HNTR/H13SST-G, BIOS 3.2 03/20/2025
[ 5866.412339] RIP: 0010:memcpy+0x8/0x10
[ 5866.416454] Code: cc cc 90 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66 90 48 89 f8 48 89 d1 <f3> a4 e9 fc 26 c0 fe 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
[ 5866.437538] RSP: 0018:ff428d9ec0bb0ca8 EFLAGS: 00010286
[ 5866.443415] RAX: ff2dd26dbd8f0000 RBX: ff2dd265ad161400 RCX: 00000000000004e1
[ 5866.451435] RDX: 00000000000004e1 RSI: ffd31c37eab1c980 RDI: ff2dd26dbd8f0000
[ 5866.459454] RBP: ff428d9ec0bb0d40 R08: 0000000000000000 R09: 0000000000000000
[ 5866.467470] R10: 0000000000000000 R11: 0000000000000000 R12: ff428d9eec726ef8
[ 5866.475490] R13: ff2dd26dbd8f0000 R14: ff2dd265ca2f9fc0 R15: ff2dd26548548b80
[ 5866.483509] FS:  0000000000000000(0000) GS:ff2dd2c363592000(0000) knlGS:0000000000000000
[ 5866.492600] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 5866.499060] CR2: ffd31c37eab1c980 CR3: 0000000178d7b040 CR4: 0000000000f71ef0
[ 5866.507079] PKRU: 55555554
[ 5866.510125] Call Trace:
[ 5866.512867]  <IRQ>
[ 5866.515132]  ? i40e_clean_rx_irq_zc+0xc50/0xe60 [i40e]
[ 5866.520921]  i40e_napi_poll+0x2d8/0x1890 [i40e]
[ 5866.526022]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 5866.531408]  ? raise_softirq+0x24/0x70
[ 5866.535623]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 5866.541011]  ? srso_alias_return_thunk+0x5/0xfbef5
[ 5866.546397]  ? rcu_sched_clock_irq+0x225/0x1800
[ 5866.551493]  __napi_poll+0x30/0x230
[ 5866.555423]  net_rx_action+0x20b/0x3f0
[ 5866.559643]  handle_softirqs+0xe4/0x340
[ 5866.563962]  __irq_exit_rcu+0x10e/0x130
[ 5866.568283]  irq_exit_rcu+0xe/0x20
[ 5866.572110]  common_interrupt+0xb6/0xe0
[ 5866.576425]  </IRQ>
[ 5866.578791]  <TASK>

Advance next_to_clean to ensure invalid xdp_buff(s) aren't created.

Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
Signed-off-by: Alessandro Decina <alessandro.d@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..dbc19083bbb7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -441,13 +441,18 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		dma_rmb();
 
 		if (i40e_rx_is_programming_status(qword)) {
+			u16 ntp;
+
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
 			bi = *i40e_rx_bi(rx_ring, next_to_process);
 			xsk_buff_free(bi);
-			if (++next_to_process == count)
+			ntp = next_to_process++;
+			if (next_to_process == count)
 				next_to_process = 0;
+			if (next_to_clean == ntp)
+				next_to_clean = next_to_process;
 			continue;
 		}
 
-- 
2.43.0

