Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6056F8066
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 11:51:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28DCD616CD;
	Fri,  5 May 2023 09:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28DCD616CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683280287;
	bh=M8lEKCdy5luBPv5ibpV+1RDe5t+2lqQ3K5991GeeXQ4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6nmFfkmkw6oajt2EuSKEo0eil4JwJM6IiUe9rvUSlcMoxcvgnDQtv2DhvWfzhAedH
	 0um4fKsTOuIvuV0OjN0IemOVatQmDflV7Us21R7bPg+QLZj+43GGHNP8nWGaBBlp9E
	 9SBx0jE9mChyan5qOUhcOE9Hj23xQVwmUVDzpyK3vMc4RSrwjpMiBtM+CdaTGTPqwp
	 OCfKLwRWuVpF8uJVSbZKYbzIo8FoNXO2Wbj7YunQjyFjijW6qszDkaaKSYvZPHnDFz
	 /SFMLgbKmJKrV3mvXLekq5bnA/s6h/c1wNW/WE7zLePdYniBJpbNdiiLIoH3iQStDP
	 fmoumTIAeJ1cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrVHJkYVtaZw; Fri,  5 May 2023 09:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FC05616BD;
	Fri,  5 May 2023 09:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FC05616BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12AAF1BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DCC42403A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCC42403A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wbqlXXsP6ltb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 09:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04CD141D8A
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04CD141D8A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:20 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230504235233.1850428-3-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <20230504235233.1850428-3-vinicius.gomes@intel.com>
Date: Fri, 05 May 2023 11:51:17 +0200
Message-ID: <87cz3fumwa.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1683280279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=klkyRU3gGIiTiFSAYEWfUeNOGWP+xTDvyKSn2bn9zGU=;
 b=OhFnOTuzEtF9ak+vpcy+gxtafYtlZbnpohNsjqIs9S8V2X8HfjUzu5YdqFDaJlPFmJlWc1
 d8dIqeAa3Ag6b05sO3r83VRIPHjhsJcQM7JJtsL2j8L3a5NVivRYqQXY+M2BZAF7jvursm
 H93ELXfKwXJ7fN9Jc3eeUBDkpz3qCngmyZrRt8n4kTbLI7Y0Sk8RNYU5GqpfZGMCKpjRXD
 LgD6Hdop5qkq0jedHbKPSs9t4q3BQuGlvg+4i0yoxzF4BQXabw7sPKUXSGRFMrsfKCSwyM
 xYZgJwxgcNll9y9I8oQUBc1qjtM3vTiV1WKfZ3ReHh+zlpGjygqJIkynsHFQOg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1683280279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=klkyRU3gGIiTiFSAYEWfUeNOGWP+xTDvyKSn2bn9zGU=;
 b=M4AqfghXkNI3FYTVKK57SHJ2TQve0DWrkMvImwNKGFcHVMYSRqtRv88roBRf80fnHh01lE
 JcCqjVlx0/XFriDg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=OhFnOTuz; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=M4AqfghX
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 2/5] igc: Fix race condition in
 PTP tx code
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
Cc: Andre Guedes <andre.guedes@intel.com>, vladimir.oltean@nxp.com,
 anthony.l.nguyen@intel.com
Content-Type: multipart/mixed; boundary="===============2726370613928180251=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2726370613928180251==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Thu May 04 2023, Vinicius Costa Gomes wrote:
> Currently, the igc driver supports timestamping only one tx packet at a
> time. During the transmission flow, the skb that requires hardware
> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
> adapter->ptp_tx_skb, and notify the network stack.
>
> While the thread executing the transmission flow (the user process
> running in kernel mode) and the thread executing ptp_tx_work don't
> access adapter->ptp_tx_skb concurrently, there are two other places
> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> igc_ptp_suspend().
>
> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
> thread which runs periodically so it is possible we have two threads
> accessing ptp_tx_skb at the same time. Consider the following scenario:
> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
> written yet, this is considered a timeout and adapter->ptp_tx_skb is
> cleaned up.
>
> This patch fixes the issue described above by adding the ptp_tx_lock to
> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
> Since igc_xmit_frame_ring() called in atomic context by the networking
> stack, ptp_tx_lock is defined as a spinlock.

... and you use the _irqsave/restore variants, because patch #4 is going
to retrieve the timestamp directly from the IRQ context.

>
> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
> flag doesn't provide much of a use anymore so this patch gets rid of it.
>
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmRU0ZUTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmJKD/0YNQg719HWYwhjIGWTU+fhBRyKEQDP
dGTOqEfQzjkIv41LfOE4t67CVceV4UHloLAV4ZVjaPXocQ5bHBjMByzo9i9q2CJ0
6CO4N5tGyeTW5JrrxGgn3LjD5MqKxZt3jGAqnJRpQEFB+XacCNSqXqnPHaAGM/dP
pvDKaQl+pYlthKBvDzxWw1Y080G4HGRcP/XaT31gzSHZXeM/qZRatNMmsgXZ/lDD
Qfyk6dJ8Wnw2Vdd/OSUdRKTmB6/Zd/ogGDvB32DubYS0XUTS/SsxEEKDbvDsVgnv
6EjYlrniZ7ke6vOneyjKx+JTghjyrSKII2HBXVgRr91p/KSJRkwmkUaOC9wJgSxk
kcC47ozHpWhlMq1ZyNcSNpG9/E3zH6/6DqCTZrlYsprBamGtC9OuUg6FagIrIK8V
mRXSXBgIsQotWaNhD+fx1q8g0KAIeFWGlAlfDZ0JLXAVUtOZSuJxi5fSow7Z8Agc
qeVc1y63iIj591BZGt2vlVIzpKCMMvKe+LHOa2Y8Uk1aZSJ9ewqd/BtHevB5aa4Y
+YfqyoqNpiCBKozLx9Zi/eMvw4qRpEDDCClku7LLIRXYjSdNDuCRbtKyZlFKLLOG
5trs6zwUzlSnCttXmqE+mTkMZskhE5ttVyruYRB4XZucpZ65lLrrEX0+y1lZL/7G
x1rfxB7t6hv6cg==
=OiYK
-----END PGP SIGNATURE-----
--=-=-=--

--===============2726370613928180251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2726370613928180251==--
