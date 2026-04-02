Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIyUERi9zWlmgQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:49:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E11D382148
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CAED40DB4;
	Thu,  2 Apr 2026 00:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLE_Y08WYyXh; Thu,  2 Apr 2026 00:49:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56AB340DC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775090963;
	bh=J0mm8Q+hlh6VRKVwIi/bFhcu/urWowNBuqerynEwGNc=;
	h=From:In-Reply-To:Date:Cc:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H7Kb7IMjK63mmRKeuvuYp15Vnhg5h1K8avMizQCI3vdzuM+S7MlOlHwyNp9lUiMmw
	 vBo9fVxe9M0k2xUKSVQvdSZJwb1xRWIAlOApBvqluOG5Jq8leqHkCy9vv+8GIWVveC
	 a0tFLW6jV6g+RVX1G8iNBBOzw+uc3+APaA27FI3RGRXfqcurF2ZcKkEywmdkevJUH9
	 mTg5BX1mX0APVZBDRXLo+M3moDpMPQeGGwnB/p/hCvY5X0ME/o26DAlf57wmC1i+WX
	 1ZR42nWzM7qRLjM10k70xi79jzXpWeyApHAMwxZ9p2+V23/UK9ysRRloi/w9mCBxa+
	 fB2fYePtcfNnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56AB340DC2;
	Thu,  2 Apr 2026 00:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DE2192E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFB37812F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79KbZb7u_O9q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 00:49:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122a; helo=mail-dl1-x122a.google.com;
 envelope-from=bob@vanvalzah.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B0A32812EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0A32812EA
Received: from mail-dl1-x122a.google.com (mail-dl1-x122a.google.com
 [IPv6:2607:f8b0:4864:20::122a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0A32812EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:49:19 +0000 (UTC)
Received: by mail-dl1-x122a.google.com with SMTP id
 a92af1059eb24-126ea4b77adso607462c88.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Apr 2026 17:49:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775090958; x=1775695758;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=J0mm8Q+hlh6VRKVwIi/bFhcu/urWowNBuqerynEwGNc=;
 b=G/FoONfh22CZIfWDmcxW5v8a6c1TAXdMpC4c09g5/YxzoTZaqHws5S2U5n6z7H+Ovd
 nfVTGntewgItBBPSfmkr+fhVnCYMiekb5aUA3V+ughhr2WOomzZ4igCSzSNxV4bPR6Ej
 b1eYaJ44nXJ7Tx4hzgTCYd3C1XNfMeoiDNbSTzXuBvEJxWKeG0TBA5OHWGvXYHUaAqZt
 v/3lLc2XF5Rgt2jCYdTT2FGQqqJI1C3bA5nQNIxPB7rBBrIJIiUD1FOjZG3k8NeLGsnK
 CKne/UxQmeWc0elWUAWpUDvtxQqJDK+/LzPT+cgOe0TmitynNwA+Sc6VMfruCa4GG+VP
 E9xQ==
X-Gm-Message-State: AOJu0Yw4qW4oLJ2CusTjJYWxC92DOsqeqoPI3Zb0rTQvu7Nvueufaoac
 v/gvx45ZTFAcBMWPlbk9zslP2XO4fysVEjW+l3+ETGZHLlfcuPnAsPjgl3P3m5uZqDA=
X-Gm-Gg: ATEYQzx1ckaKLySVQjOXVUzSU5hsP1af5e0Fl/LLKP7vvTaVgNfYcy9dpnWr1nszw3T
 G4KSv1lVZxybBjgpWTod8BgSPV0CgHbiIu53vEBWAZX36dL25YLYtVMI7FjAATQYAu4uf9Vua4H
 jo++OY1Fy413XanNhOTRkN6uI9DqImEq5u+Nli0F97rLxpFnV3YFWHNmgDtEqbT/eTHterKKY4I
 3+eT0HcEVRvY6CiF5Cd2Hdhd5EV5DX7YdIrdQ9G36VDTkjREDRzuwhFSfyBKFergqj/DSU8T3Zy
 zeii0lx3komlAQaOpXePElEHlSd0a5hg9aJYG7oXqDoApMFo3R0gZQd2I4y0gvp7vsoQD6dzQul
 QM/kM8FpQli9ZEPg76bqtfXG8k+AL7vTTyYryw5cfDMIdg7+g50tlt/rOQXXzdzuekFvaN/vgEk
 s7Emcq6KkEKWNGiYLJQLP4DfymMHD0OBNXLX8P1UzviFqVhkxt9kD6Q5dciR7j32S2AFxiLSism
 wGPz1r7
X-Received: by 2002:a05:7022:670a:b0:128:ce84:f68b with SMTP id
 a92af1059eb24-12bee5fbe77mr844804c88.4.1775090958271; 
 Wed, 01 Apr 2026 17:49:18 -0700 (PDT)
Received: from smtpclient.apple (syn-108-178-167-002.biz.spectrum.com.
 [108.178.167.2]) by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12bede5a225sm1898759c88.9.2026.04.01.17.49.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2026 17:49:17 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
From: Bob Van Valzah <bob@vanvalzah.com>
In-Reply-To: <CAD61B95-35BF-4BAC-AC26-6AC043DE6FC1@vanvalzah.com>
Date: Wed, 1 Apr 2026 17:49:03 -0700
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, julianstj@fb.com, jeff@jeffgeerling.com,
 Lasse Johnsen <lasse@timebeat.app>, Ian Gough <ian@timebeat.app>
Content-Transfer-Encoding: quoted-printable
Message-Id: <CDC20B85-E83B-4AC9-9261-24B3D967DCA6@vanvalzah.com>
References: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
 <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
 <B22CCB1A-15FE-4233-9F47-7FE522C8D6FF@VanValzah.Com>
 <CAD61B95-35BF-4BAC-AC26-6AC043DE6FC1@vanvalzah.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
X-Mailer: Apple Mail (2.3864.400.21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanvalzah-com.20230601.gappssmtp.com; s=20230601; t=1775090958; x=1775695758;
 darn=lists.osuosl.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J0mm8Q+hlh6VRKVwIi/bFhcu/urWowNBuqerynEwGNc=;
 b=0ux39O/nEpfHtvmR8+ZGlO4iz2q+3DmhX5I6pcbjEEv1lrbv+pH0Q4u/n7y9EpSFZO
 0gUSwEnI3tKl5x0Sysv3L4ZZxCiperVGtZqfU1cGa0a90qfHT2AlYj6gIeqhvVwCaXVE
 Jw6hw+WM9zN1ec3gmaDekn+TbiDwhElmajsOfIYzDs78S114+cDvxKqwwSw04f20b+Oc
 FGGXxpl0Qq9JzrIA8YRhaGp8JFmmx5kj+fM3JjCSnOkTFFdLOVTELY7HvqYzLLk6hPNZ
 y6Zkx33ga6j1LFeUXT2jTR1oHIVH2X7AuKj/kVdFicHS472p/9VeeW9PqEWEAYOAVy9Q
 9V9w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=vanvalzah.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vanvalzah-com.20230601.gappssmtp.com
 header.i=@vanvalzah-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=0ux39O/n
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix Tx timestamp timeout caused
 by unlocked TIMINCA write in adj fine]
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DMARC_NA(0.00)[vanvalzah.com];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[bob@vanvalzah.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0E11D382148
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Vadim,

Thanks for the feedback on our first patch. We've spent more time in
the lab studying the igc TX timestamp behavior under stress. We
understand the failure modes much better now.

You were right that ptp_tx_lock was the wrong lock =E2=80=94 it guards =
the TX
queue, not the timing registers. You suggested tmreg_lock instead. We
tested tmreg_lock alone (v2) and found it doesn't fix the bug: it =
appears
that the race is between the software TIMINCA write and the hardware=E2=80=
=99s
asynchronous TX timestamp capture pipeline, not between two software =
threads.
tmreg_lock serializes software register accesses but can't prevent the =
hardware
from reading TIMINCA at the instant software writes it.

Our v3 patch (attached) takes tmreg_lock as you suggested, and
additionally disables TX timestamping in hardware via TSYNCTXCTL around
the TIMINCA write. This prevents the hardware from starting new
timestamp captures during the rate change:

    spin_lock_irqsave(&igc->tmreg_lock, flags);
    txctl =3D rd32(IGC_TSYNCTXCTL);
    wr32(IGC_TSYNCTXCTL, txctl & ~IGC_TSYNCTXCTL_ENABLED);
    wr32(IGC_TIMINCA, inca);
    wr32(IGC_TSYNCTXCTL, txctl);
    spin_unlock_irqrestore(&igc->tmreg_lock, flags);

v3 doesn't return -EBUSY, so there's no risk of adjfine starvation
under TX load. It always completes the TIMINCA write.

This still isn't a complete fix. Under extreme stress (100k+ adjfine/s
concurrent with 100k+ TX timestamps/s), disabling TSYNCTXCTL can strand
an in-progress capture that started before the disable. The stranded
slot sits occupied for IGC_PTP_TX_TIMEOUT (15s) before the watchdog
clears it. However, these rates are far beyond any realistic PTP
deployment. At realistic rates (1 Hz adjfine + 128 Hz PTP sync), v3
passes all our tests cleanly.

We don't know of a way to prevent pathological system call patterns
from causing the hardware to lock up. The vulnerable window seems to
span the hardware's internal capture-to-latch pipeline, not just the
TIMINCA write instant, and there's no software-visible indication of
when a capture is mid-flight.

Test methodology
----------------

Our earlier multi-test runs gave misleading results because the
15-second timeout pipeline carried stranded slots from one test into
the next. We now reload the igc driver between each test to ensure
clean hardware state. The reproducer is the same one we submitted
previously:

  =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.=
py

We also have a single-test runner that reloads the driver automatically:

  =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_single_test.py=



Results (clean state, driver reloaded between each test)
--------------------------------------------------------

Stock driver (no patch):

  TX 100/s  + adj 1/s     : no timeout in 60s  (0 TO, 0 skip)
  TX 1k/s   + adj 1/s     : no timeout in 60s  (0 TO, 0 skip)
  TX 10k/s  + adj 1/s     : no timeout in 60s  (0 TO, 0 skip)
  TX 1k/s   + adj 10k/s   : no timeout in 60s  (0 TO, 0 skip)
  TX 10k/s  + adj 100k/s  : no timeout in 60s  (0 TO, 0 skip)
  TX 100k/s + adj 100k/s  : FAIL at 16s        (3 TO, 76 skip)
  TX 100k/s + no adj      : FAIL at 16s        (4 TO, 8M skip)

v3 (tmreg_lock + TSYNCTXCTL disable/enable):

  TX 128/s  + adj 1/s     : no timeout in 300s (0 TO, 0 skip)
  TX 100k/s + adj 100k/s  : FAIL at 17s        (12 TO, 1.7M skip)

Three distinct failure modes
----------------------------

1. TIMINCA corruption (the original bug):

   adjfine writes TIMINCA while a TX timestamp capture is in progress.
   The hardware latches a value computed with an inconsistent increment
   rate. The valid bit in TSYNCTXCTL is never set, the slot stays
   occupied, and the watchdog times out after 15 seconds.

   Signature: low skip count + moderate timeout count. The capture
   acquired a slot normally but the timestamp was corrupt.

   This is the bug that matters in practice. At 1 Hz adjfine + 128 Hz
   PTP sync, the collision probability per adjfine call is low but
   nonzero =E2=80=94 we measured ~30 minute MTBF empirically.

2. TX timestamp slot exhaustion:

   At extreme TX rates (100k+) without adjfine, all 4 timestamp slots
   (IGC_MAX_TX_TSTAMP_REGS) stay occupied because the interrupt/drain
   path can't keep up. New packets requesting timestamps are skipped
   (tx_hwtstamp_skipped). Eventually some slot's 15-second timeout
   fires.

   Signature: massive skip count (millions), timeout count =3D 4 (one
   per slot). This is unrelated to the TIMINCA race.

3. TSYNCTXCTL stranding (v3 side effect):

   When v3 disables TSYNCTXCTL_ENABLED, a capture that was already
   in progress may never complete =E2=80=94 the hardware won't set the =
valid
   bit for a capture started while timestamping was enabled if it
   finishes after timestamping is disabled. The slot stays occupied
   for 15 seconds.

   Signature: high skip count + high timeout count. At 100k adj/s,
   timestamping is disabled 100k times per second, frequently
   stranding captures.

   This doesn't occur at realistic rates because the 1 Hz adjfine
   only creates one brief (~1 =C2=B5s) disable window per second.


PTP GM scaling implications
---------------------------

With adjfine fixed at 1/s (realistic for any GPSDO), the adjfine race
is not the scaling bottleneck.  The limit is the 4-slot TX timestamp
queue (IGC_MAX_TX_TSTAMP_REGS).  We swept TX timestamp rates from
128/s to 150k/s with 1 Hz adjfine and driver reload between each
test (v3 patch):

  TX   128/s + adj 1/s : clean 60s   (1 PTP client at 128 Hz)
  TX  1024/s + adj 1/s : clean 60s   (~8 clients)
  TX  8192/s + adj 1/s : clean 60s   (~64 clients)
  TX 65536/s + adj 1/s : clean 60s   (~512 clients)
  TX 100k/s  + adj 1/s : FAIL 17s    (12 TO, 9M skip =E2=80=94 slot =
exhaustion)
  TX 100k/s  + NO adj  : FAIL 17s    (12 TO, 10M skip =E2=80=94 same =
without adj)

The 100k/s failure is slot exhaustion (identical with and without
adjfine), not the TIMINCA race.  The i225/i226 hardware can handle
roughly 65k TX timestamps per second before the 4-slot queue becomes
the bottleneck.  This limits the i226 to approximately 500 PTP
clients at logSyncInterval -7 (128 Hz sync).

The adjfine race itself has negligible probability at 1 Hz adjfine.
The TSYNCTXCTL disable window in v3 is ~1 =C2=B5s per second =E2=80=94 a =
duty
cycle of 10^-6.  Even at 65k TX timestamps/s, the probability of
a capture starting during that window is ~0.065 per second, giving
an estimated MTBF of many hours.


Note on igc_ptp_tx_hang
------------------------

We noticed that igc_ptp_tx_hang() does not check TSYNCTXCTL valid
bits before declaring a timeout. It only checks whether 15 seconds
have elapsed since the slot was assigned. If the hardware captured a
valid timestamp but the completion interrupt was lost or coalesced,
the valid timestamp is thrown away by the timeout handler (which reads
TXSTMPH_0 to clear all valid bits). A more robust timeout handler
could check TSYNCTXCTL and salvage valid-but-undelivered timestamps
before declaring a timeout. This wouldn't fix the TIMINCA race but
would make the system more resilient to lost interrupts.


Tested on:
  - Intel i226 (TimeHAT board on Raspberry Pi 5)
  - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
  - Intel out-of-tree igc driver 5.4.0-7642.46

Thanks,
Bob Van Valzah

=E2=80=94

 drivers/net/ethernet/intel/igc/igc_ptp.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c =
b/drivers/net/ethernet/int
el/igc/igc_ptp.c
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -47,6 +47,8 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info =
*ptp, lo
ng scaled_ppm)
 {
        struct igc_adapter *igc =3D container_of(ptp, struct =
igc_adapter,
                                               ptp_caps);
        struct igc_hw *hw =3D &igc->hw;
+       unsigned long flags;
+       u32 txctl;
        int neg_adj =3D 0;
        u64 rate;
        u32 inca;
@@ -63,7 +65,17 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info =
*ptp, l
ong scaled_ppm)
        if (neg_adj)
                inca |=3D ISGN;

-       wr32(IGC_TIMINCA, inca);
+       /* Changing TIMINCA while the hardware is capturing a TX =
timestamp
+        * corrupts the timestamp, causing "Tx timestamp timeout."
+        * Temporarily disable TX timestamping so no new capture can =
start
+        * during the rate change.
+        */
+       spin_lock_irqsave(&igc->tmreg_lock, flags);
+       txctl =3D rd32(IGC_TSYNCTXCTL);
+       wr32(IGC_TSYNCTXCTL, txctl & ~IGC_TSYNCTXCTL_ENABLED);
+       wr32(IGC_TIMINCA, inca);
+       wr32(IGC_TSYNCTXCTL, txctl);
+       spin_unlock_irqrestore(&igc->tmreg_lock, flags);

        return 0;
 }
--
2.39.2


> On Mar 31, 2026, at 6:14=E2=80=AFPM, Bob Van Valzah =
<Bob@VanValzah.Com> wrote:
>=20
> There is one other symptom of this bug that we neglected to report =
previously: PEROUT stops. That=E2=80=99s PPS OUT for us, so it=E2=80=99s =
how we first noticed the problem. Recovery was to unload and reload the =
igc driver.
>=20
> I take this as further evidence for my hunch that the hardware just =
reaches some internal =E2=80=9Cthis should never happen=E2=80=9D state =
and the PHC just stops ticking.
>=20
> Hoping this additional symptom report might help with diagnosis.
>=20
> Bob
>=20
>> On Mar 30, 2026, at 12:42=E2=80=AFPM, Bob Van Valzah =
<Bob@VanValzah.Com> wrote:
>>=20
>> Thanks for following up Vadim. To be clear, we do not see our patch =
as a solution to the problem, since it does not eliminate the underlying =
contention, it just reduces the likelihood.
>>=20
>> We now have a bit more hands-on time running the patch and can see =
its limitations. The driver just throws the timeout error less often =
now. Moreover, our code calling adjfine() has to be ready for an EBUSY. =
The patch is certainly not an elegant solution. It may well have worked =
better, or perhaps been a complete fix, if we had taken tmreg_lock. =
Sorry if we sent our patch prematurely.
>>=20
>> We think the contention happens when a system call made by a clock =
disciplining daemon like ts2phc changes a PHC's frequency, while a =
timestamping daemon like ptp4l has requested a timestamp against that =
same PHC. A plausible explanation is that the hardware fails to produce =
a timestamp for a packet when it collides with a PHC frequency =
adjustment, leading to the timestamp timeout. We see this contention =
128x more often than the average user because we cranked our PTP sync =
rate up to 128 Hz. We care about every ns here. The likelihood probably =
also scales with the number of PTP clients.
>>=20
>> Sorry, in retrospect, we may have overstated our case in declaring =
the root cause as the lack of locking, since our locking only reduces =
the likelihood of the timestamp timeout. Intel may provide insight to =
the underlying cause of the timeout, but my hunch is that the collision =
of a timestamp request against a PHC and a frequency change of the same =
PHC causes the timestamp request to fail, leading to the timeout. Our =
repro code makes this happen so reliably that it should be easy for the =
hardware guys to explain exactly what=E2=80=99s going on. Hopefully, =
they can advise on a more elegant avoidance strategy than our ham-handed =
lock.
>>=20
>> We have not tried recovering a timestamp following the error. We may =
have used the term =E2=80=9Ccorrupted=E2=80=9D poorly here. Since the =
error message says =E2=80=9Ctimeout," that could mean the hardware =
produced no timestamp at all, rather than a corrupted one.
>>=20
>> This isn=E2=80=99t a show-stopper for us, but we note that =
timekeeping daemons with imperfect error handling could react to this =
situation poorly and perhaps fail silently.
>>=20
>> Bob
>>=20
>>> On Mar 30, 2026, at 11:39=E2=80=AFAM, Vadim Fedorenko =
<vadim.fedorenko@linux.dev> wrote:
>>>=20
>>> On 29/03/2026 04:25, Bob Van Valzah wrote:
>>>> Hi,
>>>> We found a race in igc_ptp_adjfine_i225() that causes "Tx timestamp
>>>> timeout" errors and eventually wedges EXTTS when a PTP grandmaster
>>>> (ptp4l with hardware timestamping) runs concurrently with PHC
>>>> frequency discipline (any GPSDO calling clock_adjtime =
ADJ_FREQUENCY).
>>>> Root cause: igc_ptp_adjfine_i225() writes IGC_TIMINCA without =
holding
>>>> any lock.  Every other PTP clock operation in igc_ptp.c (adjtime,
>>>> gettime, settime) holds tmreg_lock, but adjfine does not.  When the
>>>> increment rate changes while the hardware is capturing a TX =
timestamp,
>>>> the captured value is corrupt.  The driver retries for
>>>> IGC_PTP_TX_TIMEOUT (15s), then logs the timeout and frees the skb.
>>>> Repeated occurrences eventually prevent EXTTS from delivering =
events.
>>>> The attached reproducer (triggers in ~17 seconds on i226):
>>>> One thread calling clock_adjtime(ADJ_FREQUENCY) at ~200k/s on the
>>>> PHC, another sending UDP packets with SO_TIMESTAMPING requesting
>>>> hardware TX timestamps at ~100k/s.  A Python reproducer is at:
>>>> =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.=
py
>>>> At realistic rates (1 Hz adjfine from a GPSDO + ptp4l at 128 Hz
>>>> sync), the race triggers in ~30 minutes.
>>>> The attached patch holds ptp_tx_lock around the TIMINCA write and
>>>> skips the write if any TX timestamps are pending (tx_tstamp[i].skb
>>>> !=3D NULL), returning -EBUSY.  This doesn't fully close the =
hardware
>>>> race (a new TX capture can start between the check and the write),
>>>> but at realistic rates the residual probability gives ~25 year MTBF
>>>> vs ~30 minutes without the patch.
>>>> A complete fix would likely require either disabling TX =
timestamping
>>>> around TIMINCA writes (via TSYNCTXCTL), or making the timeout =
recovery
>>>> path more robust so a single corrupt timestamp doesn't wedge the
>>>> subsystem.  We'd welcome guidance from the igc maintainers on the
>>>> preferred approach.
>>>> Tested on:
>>>> - Intel i226 (TimeHAT v5 board on Raspberry Pi 5)
>>>> - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
>>>> - Intel out-of-tree igc driver 5.4.0-7642.46
>>>> - Stock upstream igc_ptp.c (same code, same bug)
>>>> Bob
>>>> ---
>>>> drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++++++++++-
>>>> 1 file changed, 17 insertions(+), 1 deletion(-)
>>>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c =
b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>>> index XXXXXXX..XXXXXXX 100644
>>>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>>>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>>> @@ -47,8 +47,10 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>>> {
>>>>       struct igc_adapter *igc =3D container_of(ptp, struct =
igc_adapter,
>>>>                                              ptp_caps);
>>>>       struct igc_hw *hw =3D &igc->hw;
>>>> +       unsigned long flags;
>>>>       int neg_adj =3D 0;
>>>>       u64 rate;
>>>>       u32 inca;
>>>> +       int i;
>>>>       if (scaled_ppm < 0) {
>>>>               neg_adj =3D 1;
>>>> @@ -63,7 +65,21 @@ static int igc_ptp_adjfine_i225(struct =
ptp_clock_info *ptp, long scaled_ppm)
>>>>       if (neg_adj)
>>>>               inca |=3D ISGN;
>>>> -       wr32(IGC_TIMINCA, inca);
>>>> +       /* Changing the clock increment rate while a TX timestamp =
is being
>>>> +        * captured by the hardware can corrupt the timestamp, =
causing the
>>>> +        * driver to report "Tx timestamp timeout" and eventually =
wedging
>>>> +        * the EXTTS subsystem.  Serialize with pending TX =
timestamps:
>>>> +        * skip the rate change if any are in flight.
>>>> +        */
>>>> +       spin_lock_irqsave(&igc->ptp_tx_lock, flags);
>>>> +       for (i =3D 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>>>> +               if (igc->tx_tstamp[i].skb) {
>>>> +                       spin_unlock_irqrestore(&igc->ptp_tx_lock, =
flags);
>>>> +                       return -EBUSY;
>>>> +               }
>>>> +       }
>>>> +       wr32(IGC_TIMINCA, inca);
>>>> +       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);
>>>=20
>>> It's a bit weird solution, because in this case we may end up having =
no
>>> successful calls to adjfine with high amount of TX timestamp packets =
in flight. Another problem here is that access to timing registers is
>>> guarded by tmreg_lock, but here you use ptp_tx_lock, which protects
>>> queue.
>>>=20
>>> Were you able to recover "corrupted" time stamps to figure out why =
they
>>> are discarded?
>>>=20
>>>=20
>>>>       return 0;
>>>> }
>>>> --
>>>> 2.39.2
>>=20
>>=20
>=20

