Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CE6B2F6E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 13:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CA208428E;
	Thu, 21 Aug 2025 11:38:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_4NkiVSNXxO; Thu, 21 Aug 2025 11:38:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47BC784259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755776334;
	bh=vot0hwlvDZbwBGJwdG2Otwy2FPYjUK+K6Sxb0As+xq4=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OItHKFIHfx3ORnYw8t+OvYZn94S8c+c/lyi/LJVWzJIvrfacpJJNdErWxmhMEDQPl
	 RvbUZMdaBHK3hjZSKL+0HjSN6DhktjeoiPZn764xL+WXov4ZvcegNQuqJVl/5Ei85g
	 h6utX42T545W9bUhz2ySp9aEzLzNjyS24lZxz6SQChpam5z594i/Jud4toR1mLlTCA
	 t6SZ4XGYlVT8jDc4qBYmWfV5Qd7TNQe635fmeU/eD2OhqO7Blzz47lTUMCJfs0MU3J
	 TonSAJep5IuOeU1wFcoZPIJraDscg4WPwuFUbTFpzxl8+Ll8ykFQ8pXLDovO5Sg555
	 DTB9s/vC5svig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47BC784259;
	Thu, 21 Aug 2025 11:38:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36B52D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 11:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3404F418C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 11:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmS6T-_PSPkQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 11:38:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F9CE418D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F9CE418D2
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F9CE418D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 11:38:51 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>, Miroslav Lichvar
 <mlichvar@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
 <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
Date: Thu, 21 Aug 2025 13:38:44 +0200
Message-ID: <87ldncoqez.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755776326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vot0hwlvDZbwBGJwdG2Otwy2FPYjUK+K6Sxb0As+xq4=;
 b=LNgmCmob6Np/IswX5WiAYffsHN2MgxsJ5jo8und+HPxRw9Oav2fMAE5c45x28OGJBk4Hqq
 lDwac4bOUHgirJjHbOY1aT08sv32OkUKXakhr13bnqo4BWe+clqGhijHRCtbG13RlcyTy/
 3/dmBIbBTX1dzYpuxURJayynuSrvwhY918CjKceBAICR2w/ejzNEC3jdyT2hYHS59rXAJc
 y70wE02y6iMgTH7B5dcNB/eG1obxDmwUTGSwBFFM9Jxei/u1iUpmdEiOMsHuCylqygOtrA
 TYL7iM1kPVGkopYcTZuRWnxmj0oc/TuomsD74Svc3ijBsXNA7oGOMeholrLnzg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755776326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vot0hwlvDZbwBGJwdG2Otwy2FPYjUK+K6Sxb0As+xq4=;
 b=QO8yfFEW0ezSCU42EFhc1WxmoSwf8AJBxEWMQY7J9iKBUGnAtiT6dk5TxT3UFZLxYSaXgQ
 bnz9F/+uSqljyQAw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=LNgmCmob; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=QO8yfFEW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Aug 20 2025, Jacob Keller wrote:
> On 8/20/2025 12:56 AM, Miroslav Lichvar wrote:
>> On Tue, Aug 19, 2025 at 04:31:49PM -0700, Jacob Keller wrote:
>>> I'm having trouble interpreting what exactly this data shows, as its
>>> quite a lot of data and numbers. I guess that it is showing when it
>>> switches over to software timestamps.. It would be nice if ntpperf
>>> showed number of events which were software vs hardware timestamping, as
>>> thats likely the culprit. igb hardare only has a single outstanding Tx
>>> timestamp at a time.
>>=20
>> The server doesn't have a way to tell the client (ntpperf) which
>> timestamps are HW or SW, we can only guess from the measured offset as
>> HW timestamps should be more accurate, but on the server side the
>> number of SW and HW TX timestamps provided to the client can be
>> monitored with the "chronyc serverstats" command. The server requests
>> both SW and HW TX timestamps and uses the better one it gets from the
>> kernel, if it can actually get one before it receives the next
>> request from the same client (ntpperf simulates up to 16384 concurrent
>> clients).
>>=20
>> When I run ntpperf at a fixed rate of 140000 requests per second
>> for 10 seconds (-r 140000 -t 10), I get the following numbers.
>>=20
>> Without the patch:
>> NTP daemon TX timestamps   : 28056
>> NTP kernel TX timestamps   : 1012864
>> NTP hardware TX timestamps : 387239
>>=20
>> With the patch:
>> NTP daemon TX timestamps   : 28047
>> NTP kernel TX timestamps   : 707674
>> NTP hardware TX timestamps : 692326
>>=20
>> The number of HW timestamps is significantly higher with the patch, so
>> that looks good.
>>=20
>> But when I increase the rate to 200000, I get this:
>>=20
>> Without the patch:
>> NTP daemon TX timestamps   : 35835
>> NTP kernel TX timestamps   : 1410956
>> NTP hardware TX timestamps : 581575=20=20=20=20=20=20=20=20=20=20=20=20
>>=20
>> With the patch:
>> NTP daemon TX timestamps   : 476908
>> NTP kernel TX timestamps   : 646146
>> NTP hardware TX timestamps : 412095
>>=20
>
> When does the NTP daemon decide to go with timestamping within the
> daemon vs timestamping in the kernel? It seems odd that we don't achieve
> 100% kernel timestamps...
>
>> With the patch, the server is now dropping requests and can provide
>> a smaller number of HW timestamps and also a smaller number of SW
>> timestamps, i.e. less work is done overall.
>>=20
>> Could the explanation be that a single CPU core now needs to do more
>> work, while it was better distributed before?
>>=20
>
> Hm. The interrupt vector may be fired on the same CPU maybe? The work
> items can go into the general pool which spreads to all CPUs, and I
> guess the amount of work to submit the timestamp is high enough that we
> do end up costing too much?
>
> Hmm.
>
> We could experiment with using a kthread via the ptp_aux_work setup and
> tuning to ensure that thread has good prioritization? I don't know what
> the best compromise is since its clear the interrupt is best if the
> timestamp volume isn't too high.

Miroslav, can you test the following patch? Does this help?

From=200b795f37fecd235bf4c9965148afaf33e4a5139c Mon Sep 17 00:00:00 2001
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Wed, 20 Aug 2025 14:01:45 +0200
Subject: [PATCH] igb: Convert Tx timestamping to PTP aux worker

The current implementation uses schedule_work() which is executed by the
system work queue to retrieve Tx timestamps. This increases latency and can
lead to timeouts in case of heavy system load.

Therefore, switch to the PTP aux worker which can be prioritized according
to use case.

Tested on Intel i210.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
=2D--
 drivers/net/ethernet/intel/igb/igb.h      |  1 -
 drivers/net/ethernet/intel/igb/igb_main.c |  6 +++---
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 26 ++++++++++++-----------
 3 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/in=
tel/igb/igb.h
index 43401c3c824f..0d2bdde47c32 100644
=2D-- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -624,7 +624,6 @@ struct igb_adapter {
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct delayed_work ptp_overflow_work;
=2D	struct work_struct ptp_tx_work;
 	struct sk_buff *ptp_tx_skb;
 	struct kernel_hwtstamp_config tstamp_config;
 	unsigned long ptp_tx_start;
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethern=
et/intel/igb/igb_main.c
index fe0c0a5caa85..5974180721b1 100644
=2D-- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6665,7 +6665,7 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 			adapter->ptp_tx_skb =3D skb_get(skb);
 			adapter->ptp_tx_start =3D jiffies;
 			if (adapter->hw.mac.type =3D=3D e1000_82576)
=2D				schedule_work(&adapter->ptp_tx_work);
+				ptp_schedule_worker(adapter->ptp_clock, 0);
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
@@ -6701,7 +6701,7 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 		dev_kfree_skb_any(adapter->ptp_tx_skb);
 		adapter->ptp_tx_skb =3D NULL;
 		if (adapter->hw.mac.type =3D=3D e1000_82576)
=2D			cancel_work_sync(&adapter->ptp_tx_work);
+			ptp_cancel_worker_sync(adapter->ptp_clock);
 		clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
 	}
=20
@@ -7169,7 +7169,7 @@ static void igb_tsync_interrupt(struct igb_adapter *a=
dapter)
=20
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
=2D		schedule_work(&adapter->ptp_tx_work);
+		ptp_schedule_worker(adapter->ptp_clock, 0);
 	}
=20
 	if (tsicr & TSINTR_TT0)
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/etherne=
t/intel/igb/igb_ptp.c
index a7876882aeaf..f0b08809cf91 100644
=2D-- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -803,15 +803,15 @@ static int igb_ptp_verify_pin(struct ptp_clock_info *=
ptp, unsigned int pin,
  * This work function polls the TSYNCTXCTL valid bit to determine when a
  * timestamp has been taken for the current stored skb.
  **/
=2Dstatic void igb_ptp_tx_work(struct work_struct *work)
+static long igb_ptp_tx_work(struct ptp_clock_info *ptp)
 {
=2D	struct igb_adapter *adapter =3D container_of(work, struct igb_adapter,
=2D						   ptp_tx_work);
+	struct igb_adapter *adapter =3D container_of(ptp, struct igb_adapter,
+						   ptp_caps);
 	struct e1000_hw *hw =3D &adapter->hw;
 	u32 tsynctxctl;
=20
 	if (!adapter->ptp_tx_skb)
=2D		return;
+		return -1;
=20
 	if (time_is_before_jiffies(adapter->ptp_tx_start +
 				   IGB_PTP_TX_TIMEOUT)) {
@@ -824,15 +824,17 @@ static void igb_ptp_tx_work(struct work_struct *work)
 		 */
 		rd32(E1000_TXSTMPH);
 		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
=2D		return;
+		return -1;
 	}
=20
 	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
=2D	if (tsynctxctl & E1000_TSYNCTXCTL_VALID)
+	if (tsynctxctl & E1000_TSYNCTXCTL_VALID) {
 		igb_ptp_tx_hwtstamp(adapter);
=2D	else
=2D		/* reschedule to check later */
=2D		schedule_work(&adapter->ptp_tx_work);
+		return -1;
+	}
+
+	/* reschedule to check later */
+	return 1;
 }
=20
 static void igb_ptp_overflow_check(struct work_struct *work)
@@ -915,7 +917,7 @@ void igb_ptp_tx_hang(struct igb_adapter *adapter)
 	 * timestamp bit when this occurs.
 	 */
 	if (timeout) {
=2D		cancel_work_sync(&adapter->ptp_tx_work);
+		ptp_cancel_worker_sync(adapter->ptp_clock);
 		dev_kfree_skb_any(adapter->ptp_tx_skb);
 		adapter->ptp_tx_skb =3D NULL;
 		clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
@@ -1381,6 +1383,7 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		return;
 	}
=20
+	adapter->ptp_caps.do_aux_work =3D igb_ptp_tx_work;
 	adapter->ptp_clock =3D ptp_clock_register(&adapter->ptp_caps,
 						&adapter->pdev->dev);
 	if (IS_ERR(adapter->ptp_clock)) {
@@ -1392,7 +1395,6 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		adapter->ptp_flags |=3D IGB_PTP_ENABLED;
=20
 		spin_lock_init(&adapter->tmreg_lock);
=2D		INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);
=20
 		if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
 			INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
@@ -1437,7 +1439,7 @@ void igb_ptp_suspend(struct igb_adapter *adapter)
 	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
 		cancel_delayed_work_sync(&adapter->ptp_overflow_work);
=20
=2D	cancel_work_sync(&adapter->ptp_tx_work);
+	ptp_cancel_worker_sync(adapter->ptp_clock);
 	if (adapter->ptp_tx_skb) {
 		dev_kfree_skb_any(adapter->ptp_tx_skb);
 		adapter->ptp_tx_skb =3D NULL;
=2D-=20
2.47.2


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAminBUQTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgpSdEAClAQ3VvRipEoxjNZt+bLiPpFmeHFfd
RXRCeO8s9o0rBk3IQXr58ExcIb33Pp2ti4ghu+guaPrx9Q61tG5OwDvwC7CXUXd/
A43k2XIF6PeDXAIRC5vOmSD1ip9Vq+Ztc9jaNCgT3FSNEI/MQ9MLhfcyM1IZxPz6
MqQVjdiiBswyvs/KowcS5Orvpk4S6LY9kDC9yXM1S60yTj1pFvP23q3K4vJPlKZo
y7wwUavZ7nnZWcOG11Xv4dJVZXDYGodt2YSHiCEQq92q81Wav6J20YxG8ScDinp2
LG4xZkwjwmCfZLTN4QBbGJbQCknvf78b8Pk9N9OtJuPPwEkTx9o4yPEYOXYe+VZl
jUAxNG2AGdTwwr7b7z0dVZoAlnlulcf26ALmBTqz3N9hwbTtiB4ZGwAejFze3D4K
HKwOnm6vEoAulhhZyHHWL1se3fTlbqiAhlY+h3agRedLrfTXwdZnibs/teUdgWWd
P080mSGGaab8Fww6LRKYU1/MRe6/QctXsfIhG2KZihjpjLwEVfiCOjuRnIit9FnJ
t6FYgclxiIEemxdQJryZ6zvhjPcs+fEakxBwpNkcWCATjmyfQzjtREk8y2cGa3XP
RmD0bQuP9DvSDCVT6mePN8InAIgH9ohbrHKOPGNrF9ZP9oIdDr3ImljnynUuCfX+
ewhucve10POfxg==
=XPwy
-----END PGP SIGNATURE-----
--=-=-=--
