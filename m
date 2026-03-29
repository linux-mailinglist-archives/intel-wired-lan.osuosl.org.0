Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOqnHlGXymlx+QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 17:31:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB92235DE36
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 17:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7016160BF7;
	Mon, 30 Mar 2026 15:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ouJhEYrNMSZj; Mon, 30 Mar 2026 15:31:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 273D160BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774884683;
	bh=Q3zHZR2nqCQ4BfQwwL3YtsGWqRQDle8jBml0c4WJz+U=;
	h=From:Date:Cc:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wGVJGEn/TxovWsWGRM7Ybj/UQLSka3kqNSBmJs/Sx+BoG4ZINsTRAG891C35f+RLy
	 jj9xLxTwgpun2fXKWL59DKi9x188Vun3eTIiD0B10t/2kGndmzP0yKER/KFzcyKAdZ
	 MH4ZiRlwGixDg3W0UNoZ+0xwnwyF5Djx7qDY+nLXF6wsPqJlZczGYGqJS3oE/uYRby
	 LteKwVOOLosmKmWCg+RWqnBv6LbbAEiEF8DdFk8BoD9b3qGtJ675CA2hPih6vpp/j9
	 Qm1GE8tQk9nGzs1rgjxeCDvJFIIdtT10sChDqQ/oWTzwLA1sqBBX1aoRbRAGLC2zGv
	 ContdoZKf1IKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 273D160BF8;
	Mon, 30 Mar 2026 15:31:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1677310F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 03:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 143AA408E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 03:25:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lVPVJZ3y9F_8 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Mar 2026 03:25:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::231; helo=mail-oi1-x231.google.com;
 envelope-from=bob@vanvalzah.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95977408DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95977408DB
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95977408DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 03:25:56 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id
 5614622812f47-467fd082ffeso2160099b6e.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2026 20:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774754755; x=1775359555;
 h=to:cc:date:message-id:subject:mime-version:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Q3zHZR2nqCQ4BfQwwL3YtsGWqRQDle8jBml0c4WJz+U=;
 b=jf8LRpZf41wuUXS25wbOg/XLKTEh3a0/5lWG01b5k1UHuYak3J+ZvZYF3b8sQzICqi
 qGBKBUAG7R5/w2SmOsveIebdr12VqEwlsfExca+N0T/R9Skx4fPL4cMqNznLY9KgssZ1
 zfE8cmp5CVZbIM25OJs5fxtyelTQpSNB7gun0H4J17rF2i7IUNWrt6zUIEc1uQuh8PMY
 Plb3hb+xj05fNdp8698kLh6nrng4iwsH94lobAvUJMQVCLOy60RiFVSLVK4vKMTZjSdA
 Hc9OLbTvEtsBwgpWA5In1EBveqhLO1tLwzhzcMMZTTbcV6cAM79qELNq2Zqp4/l2ZdQ+
 2xZA==
X-Gm-Message-State: AOJu0YzrXA0Yu0b6G2ia517u6sQW36QUkR7fkLjbzb8M77aKBZdwaJQO
 gtFdP3WfA5GuRoJQwldGzNkB3BZfVPckHIieGFxQHVBrsFz94xfoAlmYEyWIRefjIOnqUb0as3O
 nh6SZfk4=
X-Gm-Gg: ATEYQzyvR8n4SQKSuk2UQ1J2cUtFEpoG5geR7kHRKx4JPiaJlLwrtQ43YT1eTbLU5p3
 sGkwU62aZrBXVjhX187cTc+kn4Ul/slIy9RUtpHnwT7P8odg0DFWmqyNm7TJU/OtE9yl9yVDm6/
 sQCdF+he+qjVoAs9M2YEkpG2VP9tAG9XaIeCE6Ysb1qI9eLu7tuEU6OtZX7N0+xuu8bTJwqHNya
 k2Hp3lZLbOyqTJMLXKGANDRyfV6FgZcNx0xfg7s/QDdEMXz+hrnxwN1ruviKy34ZzGeezVnb/P8
 Ua14UW7pDbhk64+A7UzStDYVvgm8EYl5UNML5u96v4m6gp1MYMubA88qhQBqPfomE95ruMGEMRO
 L4ERYXo9c1ImW+BfZ6xvQkviXtnX/S9dPkWbkUsi83OszRsztjUMReZ4FVAKZIkV37YfVF5E99O
 H1uMQBwt9XBk/27H7yz1bP2xpzj1cul/7fq9EY/dkBXWoOK745aKxPXt7/rIInWXZdVCl/5R4Zg
 Q==
X-Received: by 2002:a05:6808:1928:b0:467:5571:7f3c with SMTP id
 5614622812f47-46a8a38f139mr3576274b6e.6.1774754754796; 
 Sat, 28 Mar 2026 20:25:54 -0700 (PDT)
Received: from smtpclient.apple (c-76-16-6-204.hsd1.il.comcast.net.
 [76.16.6.204]) by smtp.gmail.com with ESMTPSA id
 5614622812f47-46aa0efdb75sm2191961b6e.13.2026.03.28.20.25.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Mar 2026 20:25:53 -0700 (PDT)
From: Bob Van Valzah <bob@vanvalzah.com>
Content-Type: multipart/mixed;
 boundary="Apple-Mail=_DAE5922D-DCB8-444B-BD9A-99F8AE183AD2"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Message-Id: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
Date: Sat, 28 Mar 2026 22:25:41 -0500
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, julianstj@fb.com,
 jeff@jeffgeerling.com
To: intel-wired-lan@lists.osuosl.org
X-Mailer: Apple Mail (2.3864.400.21)
X-Mailman-Approved-At: Mon, 30 Mar 2026 15:31:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanvalzah-com.20230601.gappssmtp.com; s=20230601; t=1774754755; x=1775359555;
 darn=lists.osuosl.org; 
 h=to:cc:date:message-id:subject:mime-version:from:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Q3zHZR2nqCQ4BfQwwL3YtsGWqRQDle8jBml0c4WJz+U=;
 b=QyLzBgoVhdGc+Lu+13otaBD7woDCizviGr5zHHMV+y/88xPKKlUyqjESYe/NmgCcRN
 06d6cIkF2NhUiNKRmlmAgoCrm/9IiEBNGee9SNtb0OQE6vd2N6ItIuvYNo6pxOu43cbe
 md0Wf+uCZ9dAmnlBFt+Tc15oCubU1N7cThsgtdGkNoC2fIpfXf/AM9zAZwsnIYwvnOV7
 4juHNnr1ydQkDRwIaRJqYm5AbgsDfsThch/qIoU2vtQTW+KzHw57UPW9L4+Tlndq4jOG
 PEUJvhrrHKUyXF9N8Qz5NPHHcv+DCRbh3V85BlxA1U9jz+9qDMnZ6W4anvSgsRz/PNiI
 P1pw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=vanvalzah.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vanvalzah-com.20230601.gappssmtp.com
 header.i=@vanvalzah-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=QyLzBgoV
Subject: [Intel-wired-lan] [PATCH] igc: fix Tx timestamp timeout caused by
 unlocked TIMINCA write in adj fine
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
X-Spamd-Result: default: False [0.29 / 15.00];
	DATE_IN_PAST(1.00)[36];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-python-script];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:julianstj@fb.com,m:jeff@jeffgeerling.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[bob@vanvalzah.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[vanvalzah.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bob@vanvalzah.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	APPLE_MAILER_COMMON(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB92235DE36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--Apple-Mail=_DAE5922D-DCB8-444B-BD9A-99F8AE183AD2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

We found a race in igc_ptp_adjfine_i225() that causes "Tx timestamp
timeout" errors and eventually wedges EXTTS when a PTP grandmaster
(ptp4l with hardware timestamping) runs concurrently with PHC
frequency discipline (any GPSDO calling clock_adjtime ADJ_FREQUENCY).

Root cause: igc_ptp_adjfine_i225() writes IGC_TIMINCA without holding
any lock.  Every other PTP clock operation in igc_ptp.c (adjtime,
gettime, settime) holds tmreg_lock, but adjfine does not.  When the
increment rate changes while the hardware is capturing a TX timestamp,
the captured value is corrupt.  The driver retries for
IGC_PTP_TX_TIMEOUT (15s), then logs the timeout and frees the skb.
Repeated occurrences eventually prevent EXTTS from delivering events.

The attached reproducer (triggers in ~17 seconds on i226):

  One thread calling clock_adjtime(ADJ_FREQUENCY) at ~200k/s on the
  PHC, another sending UDP packets with SO_TIMESTAMPING requesting
  hardware TX timestamps at ~100k/s.  A Python reproducer is at:
  =
https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.=
py

  At realistic rates (1 Hz adjfine from a GPSDO + ptp4l at 128 Hz
  sync), the race triggers in ~30 minutes.

The attached patch holds ptp_tx_lock around the TIMINCA write and
skips the write if any TX timestamps are pending (tx_tstamp[i].skb
!=3D NULL), returning -EBUSY.  This doesn't fully close the hardware
race (a new TX capture can start between the check and the write),
but at realistic rates the residual probability gives ~25 year MTBF
vs ~30 minutes without the patch.

A complete fix would likely require either disabling TX timestamping
around TIMINCA writes (via TSYNCTXCTL), or making the timeout recovery
path more robust so a single corrupt timestamp doesn't wedge the
subsystem.  We'd welcome guidance from the igc maintainers on the
preferred approach.

Tested on:
  - Intel i226 (TimeHAT v5 board on Raspberry Pi 5)
  - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
  - Intel out-of-tree igc driver 5.4.0-7642.46
  - Stock upstream igc_ptp.c (same code, same bug)

	Bob

---

 drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c =
b/drivers/net/ethernet/intel/igc/igc_ptp.c
index XXXXXXX..XXXXXXX 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -47,8 +47,10 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info =
*ptp, long scaled_ppm)
 {
        struct igc_adapter *igc =3D container_of(ptp, struct =
igc_adapter,
                                               ptp_caps);
        struct igc_hw *hw =3D &igc->hw;
+       unsigned long flags;
        int neg_adj =3D 0;
        u64 rate;
        u32 inca;
+       int i;

        if (scaled_ppm < 0) {
                neg_adj =3D 1;
@@ -63,7 +65,21 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info =
*ptp, long scaled_ppm)
        if (neg_adj)
                inca |=3D ISGN;

-       wr32(IGC_TIMINCA, inca);
+       /* Changing the clock increment rate while a TX timestamp is =
being
+        * captured by the hardware can corrupt the timestamp, causing =
the
+        * driver to report "Tx timestamp timeout" and eventually =
wedging
+        * the EXTTS subsystem.  Serialize with pending TX timestamps:
+        * skip the rate change if any are in flight.
+        */
+       spin_lock_irqsave(&igc->ptp_tx_lock, flags);
+       for (i =3D 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
+               if (igc->tx_tstamp[i].skb) {
+                       spin_unlock_irqrestore(&igc->ptp_tx_lock, =
flags);
+                       return -EBUSY;
+               }
+       }
+       wr32(IGC_TIMINCA, inca);
+       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);

        return 0;
 }
--
2.39.2

--Apple-Mail=_DAE5922D-DCB8-444B-BD9A-99F8AE183AD2
Content-Disposition: attachment;
	filename=igc_tx_timeout_repro.py
Content-Type: text/x-python-script;
	x-unix-mode=0644;
	name="igc_tx_timeout_repro.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/env python3
"""Reproducer for igc driver Tx timestamp timeout bug.

The igc driver (Intel i225/i226) has a race between clock_adjtime
(ADJ_FREQUENCY) and hardware TX timestamping.  When adjfine() is
called while a TX timestamp is pending, the timestamp register can
wedge, producing "Tx timestamp timeout" errors in dmesg and eventually
breaking EXTTS (PPS capture).

This reproducer runs two threads:
  1. Hammers clock_adjtime(ADJ_FREQUENCY) on the PHC
  2. Sends UDP packets with SO_TIMESTAMPING (hardware TX timestamps)

On a vulnerable igc driver, "Tx timestamp timeout" appears in dmesg
within seconds.

Usage:
    sudo python3 tools/igc_tx_timeout_repro.py eth1 /dev/ptp0
    # Watch with: dmesg -w | grep "Tx timestamp"

Requires root for SO_TIMESTAMPING and clock_adjtime on PHC.
"""

import ctypes
import ctypes.util
import os
import socket
import struct
import sys
import threading
import time


def get_phc_clockid(fd):
    return (~fd << 3) | 3


def adjfine_loop(phc_fd, stop_event, stats):
    """Hammer adjfine() on the PHC."""
    librt =3D ctypes.CDLL(ctypes.util.find_library("rt"), =
use_errno=3DTrue)

    class Timeval(ctypes.Structure):
        _fields_ =3D [("tv_sec", ctypes.c_long), ("tv_usec", =
ctypes.c_long)]

    class Timex(ctypes.Structure):
        _fields_ =3D [
            ("modes", ctypes.c_uint),
            ("offset", ctypes.c_long),
            ("freq", ctypes.c_long),
            ("maxerror", ctypes.c_long),
            ("esterror", ctypes.c_long),
            ("status", ctypes.c_int),
            ("constant", ctypes.c_long),
            ("precision", ctypes.c_long),
            ("tolerance", ctypes.c_long),
            ("time", Timeval),
            ("tick", ctypes.c_long),
            ("ppsfreq", ctypes.c_long),
            ("jitter", ctypes.c_long),
            ("shift", ctypes.c_int),
            ("stabil", ctypes.c_long),
            ("jitcnt", ctypes.c_long),
            ("calcnt", ctypes.c_long),
            ("errcnt", ctypes.c_long),
            ("stbcnt", ctypes.c_long),
            ("tai", ctypes.c_int),
        ]

    ADJ_FREQUENCY =3D 0x0002
    clockid =3D get_phc_clockid(phc_fd)
    n =3D 0
    toggle =3D False

    while not stop_event.is_set():
        tx =3D Timex()
        tx.modes =3D ADJ_FREQUENCY
        # Alternate between two tiny frequency offsets
        tx.freq =3D 100 if toggle else -100  # ~0.0015 ppb
        toggle =3D not toggle
        ret =3D librt.clock_adjtime(ctypes.c_int32(clockid), =
ctypes.byref(tx))
        if ret < 0:
            print(f"adjfine error: {ctypes.get_errno()}")
            break
        n +=3D 1

    stats["adjfine_count"] =3D n


def tx_timestamp_loop(iface, stop_event, stats):
    """Send UDP packets requesting hardware TX timestamps."""
    # SOL_SOCKET options for timestamping
    SO_TIMESTAMPING =3D 37
    SOF_TIMESTAMPING_TX_HARDWARE =3D (1 << 0)
    SOF_TIMESTAMPING_RAW_HARDWARE =3D (1 << 6)
    SOF_TIMESTAMPING_OPT_TSONLY =3D (1 << 11)

    flags =3D (SOF_TIMESTAMPING_TX_HARDWARE |
             SOF_TIMESTAMPING_RAW_HARDWARE |
             SOF_TIMESTAMPING_OPT_TSONLY)

    sock =3D socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, SO_TIMESTAMPING, flags)
    # Bind to the specific interface
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_BINDTODEVICE,
                    iface.encode() + b'\0')
    sock.settimeout(0.01)

    # Send to a harmless destination (localhost or broadcast)
    dest =3D ("224.0.0.1", 9999)  # multicast, won't route
    payload =3D b"igc_repro" + b"\x00" * 32
    n =3D 0
    errors =3D 0

    while not stop_event.is_set():
        try:
            sock.sendto(payload, dest)
            n +=3D 1
        except OSError:
            errors +=3D 1
        # Don't sleep =E2=80=94 maximize collision probability
        # But yield to avoid starving the adjfine thread
        if n % 100 =3D=3D 0:
            time.sleep(0.0001)

    sock.close()
    stats["tx_count"] =3D n
    stats["tx_errors"] =3D errors


def check_dmesg_for_timeout():
    """Check if Tx timestamp timeout appeared in dmesg."""
    try:
        import subprocess
        result =3D subprocess.run(
            ["dmesg", "--since", "60 seconds ago"],
            capture_output=3DTrue, text=3DTrue, timeout=3D2
        )
        return "Tx timestamp timeout" in result.stdout
    except Exception:
        return False


def main():
    if len(sys.argv) < 3:
        print(f"Usage: sudo {sys.argv[0]} <interface> <ptp_device>")
        print(f"Example: sudo {sys.argv[0]} eth1 /dev/ptp0")
        sys.exit(1)

    iface =3D sys.argv[1]
    ptp_dev =3D sys.argv[2]
    duration =3D float(sys.argv[3]) if len(sys.argv) > 3 else 30.0

    if os.geteuid() !=3D 0:
        print("ERROR: must run as root (sudo)")
        sys.exit(1)

    phc_fd =3D os.open(ptp_dev, os.O_RDWR)
    print(f"Opened {ptp_dev} (fd=3D{phc_fd})")
    print(f"Interface: {iface}")
    print(f"Duration: {duration}s")
    print(f"Watch for: dmesg -w | grep 'Tx timestamp timeout'")
    print()

    stop =3D threading.Event()
    stats =3D {}

    t_adj =3D threading.Thread(target=3Dadjfine_loop, args=3D(phc_fd, =
stop, stats))
    t_tx =3D threading.Thread(target=3Dtx_timestamp_loop, args=3D(iface, =
stop, stats))

    t_adj.start()
    t_tx.start()

    start =3D time.monotonic()
    triggered =3D False
    while time.monotonic() - start < duration:
        time.sleep(1)
        elapsed =3D time.monotonic() - start
        if check_dmesg_for_timeout():
            print(f"\n*** Tx timestamp timeout detected after =
{elapsed:.1f}s ***")
            triggered =3D True
            break
        print(f"  {elapsed:.0f}s: running...", end=3D"\r")

    stop.set()
    t_adj.join(timeout=3D2)
    t_tx.join(timeout=3D2)
    os.close(phc_fd)

    adj_n =3D stats.get("adjfine_count", 0)
    tx_n =3D stats.get("tx_count", 0)
    tx_err =3D stats.get("tx_errors", 0)
    elapsed =3D time.monotonic() - start

    print(f"\nResults ({elapsed:.1f}s):")
    print(f"  adjfine calls: {adj_n} ({adj_n/elapsed:.0f}/s)")
    print(f"  TX packets:    {tx_n} ({tx_n/elapsed:.0f}/s), {tx_err} =
errors")

    if triggered:
        print(f"\n  BUG TRIGGERED: igc Tx timestamp timeout")
        print(f"  The igc driver's PTP timestamp register wedged due =
to")
        print(f"  concurrent adjfine() and hardware TX timestamping.")
        sys.exit(1)
    else:
        print(f"\n  No timeout detected in {duration}s")
        sys.exit(0)


if __name__ =3D=3D "__main__":
    main()

--Apple-Mail=_DAE5922D-DCB8-444B-BD9A-99F8AE183AD2--
