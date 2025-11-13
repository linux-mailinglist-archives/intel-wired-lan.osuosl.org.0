Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 229D5C56400
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABDFC60F6C;
	Thu, 13 Nov 2025 08:25:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-SLX7h_w6mV; Thu, 13 Nov 2025 08:25:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F357A60F5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763022309;
	bh=c2Vq2BmnKQvLB9ANORATdvl80Wcge/HWspHRWqnzzDI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hfqWbG4Va1E9k1INixcr2ms3ULQXQ42Y8eCpE8jnvspyeeaad/jnNHLIjRqQoPHTl
	 F9TkVaWquePNUKbmcs01yWgrQ0+o3Lhj6yGsyAE5e1BYA19LREH+LPSFSfDluW0/lh
	 wCLwjam2EtWn8kdc/zY8a4k7DVwqVDdOdF03hg0HqbDMWgIGhLvbwCPpetPTMFEKw3
	 AP+Ibdpymhg3lmqi5MZXnqkAe8V6QbmdaLNlgaWvNwzoWnFVU6nSdZYmk3Dz+gwOic
	 BTnl6jVXJt3UYjxDCCldwwnb3VdM/MEsKGUES+wHDWdvugF0KFiVMRlK+zYpOQUOlm
	 0fbRG9JuSyQSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F357A60F5E;
	Thu, 13 Nov 2025 08:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 36821342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2705281B52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HLLh-PKrPFX8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BAD281E43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BAD281E43
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BAD281E43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:25:06 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-bc4b952cc9dso93119a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 00:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763022305; x=1763627105;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=c2Vq2BmnKQvLB9ANORATdvl80Wcge/HWspHRWqnzzDI=;
 b=xDwXUP25khVyaI2yYQBiYkBV5FWXdJbMvSTxZStSBx33CdKM5GkSYO5RJNRYRkyKZz
 mTAgtlvwmI0iOqTtZX1zOAqjiyXeaCBuF3OBr9m0OcErDr+9hlfdcVAbYvOE0UzDxEPu
 PaXNskOL7eooE5+WR3lXHcQbLI1dY8/X2iDhc/fUOpzZ5VyRmD+kLqaz5mHaz+PsSxSN
 omlXzWbnciHcLFVRNRa/a+Vg2JkPU4NUh5FUagJNd7iCJFP/Xp9kDnpqwG5DacgMEB25
 1U7kd1suAe2deJVF2alGOzC7jkcjJ8MwCLMe66kWmzXmW62bPH4DEiU/Y3OTAFQM4dz+
 k1MA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW26QM9yUJXtmXzP4JXAYYsNRvwKJ4BDu1vU2hZZdlKLlNhfWdiS2e1V/kPhXGwR2EYPWajGHu0rtdH827Sjsg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxHYA0UVao1qsYV8LTCoDvLAYJrGVExkedyzNd56FTppPJwdc2k
 PuyK9G9YmtUJBfS7X5v6OfJocA1aYBN31ALNGqYLn6lMK+CO6FnSgkax
X-Gm-Gg: ASbGncuyQmfumbEUGAR/yLWEk6e9ZL/b2JpuHnqkLrzMVq4w7+UPX9yaA7uRcqb1kTj
 F6VRynbQZYQnkb1MBv4yMUOwlK9d7QbuISM52WJUb5PGoB0iMB1HoX4av3yhPwNtJZkT9PtgRW3
 5Eiirc6y+r39r112H1ynmjCiJOz3mxOBs1tr4Pfs4u36vc6tNCl27e0K9H4XqssgnaxG/bLarsd
 Atzx2qWhOo9OA7vHKnBpxTRj09WKdK2JauGI0Z+70btA1jDEr1kNYWPyhMB4++qLjED3oe4Od4U
 /Jog3a+e7Qr5gf0/i0IgdPuOGqp8DgoobOtvIeSaanF4GKz2V1h2Wfgdy//L7ZC79nleg/D0RmT
 0zO4fkLRZAe2uFrcjn1VmgYi+54tiBeiBi55fQ7gIK9goGeAdbs04cmVF24LKmv7kZPekPIelic
 yNqGtoufymv/9kix/cNwT5N8v86UNE
X-Google-Smtp-Source: AGHT+IFXizcARCS/diK1PZXRsemIs1ftqhmJcVBI4KtunVNztQqrVg0rbzvArEDy3g5s3UcskoRzMA==
X-Received: by 2002:a17:902:ebd2:b0:298:43f4:cc4b with SMTP id
 d9443c01a7336-2984ed77d8bmr73236215ad.26.1763022305379; 
 Thu, 13 Nov 2025 00:25:05 -0800 (PST)
Received: from localhost.localdomain ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2985c2b1055sm16332635ad.59.2025.11.13.00.24.59
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 13 Nov 2025 00:25:05 -0800 (PST)
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
Date: Thu, 13 Nov 2025 19:24:38 +1100
Message-Id: <20251113082438.54154-2-alessandro.d@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <20251113082438.54154-1-alessandro.d@gmail.com>
References: <20251113082438.54154-1-alessandro.d@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763022305; x=1763627105; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c2Vq2BmnKQvLB9ANORATdvl80Wcge/HWspHRWqnzzDI=;
 b=UkYZjPGeZtNbQDXwM0lBEZjMj8TZeE2viVV7MsNBWN+8mu52MuT0VsxSNlPjCYCTgv
 KJDlz1uhuFtYjlJ0dsK0G1UFE2pQ6zUax7gggWdLl+GCd6G1twhFdHaHWemeRR5tSxYb
 Vr3nSXlAj2xc+TI34ZZSZJPwiBiujeCefsApMLnwSNMnXKCXkhjVQmdOevM2KooiLvqN
 RYkPdceYyGpQspGsuZzN23IWlD5Cx53AQoH4EvWAWhSiHSivnDeoTuqT12oXKkoGH/Vq
 TKVFJX9LmlWeuIRTEAkPmogwTtI6Vy0jEIDouxuPCxwuemyqbBH0EHFkPfFcwJhBFpHm
 PvFg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=UkYZjPGe
Subject: [Intel-wired-lan] [PATCH net v3 1/1] i40e: xsk: advance
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

Rename i40e_inc_ntp to i40e_inc_ntp_ntc. Make it take an optional
pointer to next_to_clean so it's harder for callers to accidentally
forget to advance it.

Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
Signed-off-by: Alessandro Decina <alessandro.d@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 33 ++++++++++++-------
 .../ethernet/intel/i40e/i40e_txrx_common.h    |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 17 ++++++----
 3 files changed, 34 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index cc0b9efc2637..d3dae895a058 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2359,15 +2359,24 @@ void i40e_finalize_xdp_rx(struct i40e_ring *rx_ring, unsigned int xdp_res)
 }
 
 /**
- * i40e_inc_ntp: Advance the next_to_process index
+ * i40e_inc_ntp_ntc: Advance the next_to_process and next_to_clean indexes
  * @rx_ring: Rx ring
+ * @next_to_process: Pointer to next_to_process
+ * @next_to_clean: Pointer to next_to_clean or NULL
+ *
+ * This function advances the next_to_process index. If next_to_clean is not
+ * NULL, it is advanced as well.
  **/
-static void i40e_inc_ntp(struct i40e_ring *rx_ring)
+void i40e_inc_ntp_ntc(struct i40e_ring *rx_ring, u16 *next_to_process,
+		      u16 *next_to_clean)
 {
-	u32 ntp = rx_ring->next_to_process + 1;
+	u16 ntp = *next_to_process + 1;
 
 	ntp = (ntp < rx_ring->count) ? ntp : 0;
-	rx_ring->next_to_process = ntp;
+	*next_to_process = ntp;
+	if (next_to_clean)
+		*next_to_clean = ntp;
+
 	prefetch(I40E_RX_DESC(rx_ring, ntp));
 }
 
@@ -2484,17 +2493,19 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
+			bool eop;
+
 			rx_buffer = i40e_rx_bi(rx_ring, ntp);
-			i40e_inc_ntp(rx_ring);
-			i40e_reuse_rx_page(rx_ring, rx_buffer);
 			/* Update ntc and bump cleaned count if not in the
 			 * middle of mb packet.
 			 */
-			if (rx_ring->next_to_clean == ntp) {
-				rx_ring->next_to_clean =
-					rx_ring->next_to_process;
+			eop = rx_ring->next_to_process ==
+			      rx_ring->next_to_clean;
+			i40e_inc_ntp_ntc(rx_ring, &rx_ring->next_to_process,
+					 eop ? &rx_ring->next_to_clean : NULL);
+			if (eop)
 				cleaned_count++;
-			}
+			i40e_reuse_rx_page(rx_ring, rx_buffer);
 			continue;
 		}
 
@@ -2507,7 +2518,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
 		rx_buffer = i40e_get_rx_buffer(rx_ring, size);
 
 		neop = i40e_is_non_eop(rx_ring, rx_desc);
-		i40e_inc_ntp(rx_ring);
+		i40e_inc_ntp_ntc(rx_ring, &rx_ring->next_to_process, NULL);
 
 		if (!xdp->data) {
 			unsigned char *hard_start;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h b/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
index e26807fd2123..3d7e4b3404f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
@@ -17,6 +17,8 @@ void i40e_update_rx_stats(struct i40e_ring *rx_ring,
 			  unsigned int total_rx_packets);
 void i40e_finalize_xdp_rx(struct i40e_ring *rx_ring, unsigned int xdp_res);
 void i40e_release_rx_desc(struct i40e_ring *rx_ring, u32 val);
+void i40e_inc_ntp_ntc(struct i40e_ring *rx_ring, u16 *next_to_process,
+		      u16 *next_to_clean);
 
 #define I40E_XDP_PASS		0
 #define I40E_XDP_CONSUMED	BIT(0)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..fdf72446ed67 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -410,7 +410,6 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	u16 next_to_clean = rx_ring->next_to_clean;
 	unsigned int xdp_res, xdp_xmit = 0;
 	struct xdp_buff *first = NULL;
-	u32 count = rx_ring->count;
 	struct bpf_prog *xdp_prog;
 	u32 entries_to_alloc;
 	bool failure = false;
@@ -430,6 +429,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		struct xdp_buff *bi;
 		unsigned int size;
 		u64 qword;
+		bool neop;
 
 		rx_desc = I40E_RX_DESC(rx_ring, next_to_process);
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
@@ -446,8 +446,10 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 						      qword);
 			bi = *i40e_rx_bi(rx_ring, next_to_process);
 			xsk_buff_free(bi);
-			if (++next_to_process == count)
-				next_to_process = 0;
+			i40e_inc_ntp_ntc(rx_ring, &next_to_process,
+					 next_to_process == next_to_clean ?
+						 &next_to_clean :
+						 NULL);
 			continue;
 		}
 
@@ -466,16 +468,17 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			break;
 		}
 
-		if (++next_to_process == count)
-			next_to_process = 0;
+		neop = i40e_is_non_eop(rx_ring, rx_desc);
+		// advance next_to_process. on EOP, advance next_to_clean as well.
+		i40e_inc_ntp_ntc(rx_ring, &next_to_process,
+				 !neop ? &next_to_clean : NULL);
 
-		if (i40e_is_non_eop(rx_ring, rx_desc))
+		if (neop)
 			continue;
 
 		xdp_res = i40e_run_xdp_zc(rx_ring, first, xdp_prog);
 		i40e_handle_xdp_result_zc(rx_ring, first, rx_desc, &rx_packets,
 					  &rx_bytes, xdp_res, &failure);
-		next_to_clean = next_to_process;
 		if (failure)
 			break;
 		total_rx_packets += rx_packets;
-- 
2.43.0

