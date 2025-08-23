Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3125BB3276D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 09:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC7D280EB3;
	Sat, 23 Aug 2025 07:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNk0yWpa_2QQ; Sat, 23 Aug 2025 07:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE30E80DD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755934185;
	bh=dmrEX6c/xt+zlzACoXvBPVdXWpJelV17DivxJDQC/t8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nlFGDDbdkj3vgyzBj3ff8o2JjaHOsuMSO3BZ8RTwgGAYjcTy8tHU6eytC1UizZYY4
	 9VJcZyZ1vJaZ+n+pCVsY9jnEIV5iQq/tnx3hUYPCBhFeSQXZDvGTQqDOrLQOxoETMu
	 g4axASPfRQFbJFBrL72Fqf7MSjakOg7qPY5qEzzqAoS2cZXveifAxWGLrAyM3XCiVG
	 Nu+LZWhadl0kx/7WBQ4yhietBcPT94aSLt+vAjaWtBucvFMD6o63PEuWlKEeBvN023
	 GYOlXChJ1ZHehKIQHLy6F2Lze44mLRjgeFlVxMrZNTQFTZ/aHbzFAM5CZ0SRe7Zwr6
	 PtKpkyAhxzrKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE30E80DD3;
	Sat, 23 Aug 2025 07:29:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E516F19C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E234D80D78
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhljDKOq4f4L for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 07:29:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E64BD80D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E64BD80D62
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E64BD80D62
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 07:29:42 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
In-Reply-To: <20250822075200.L8_GUnk_@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
Date: Sat, 23 Aug 2025 09:29:36 +0200
Message-ID: <87ldna7axr.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755934178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dmrEX6c/xt+zlzACoXvBPVdXWpJelV17DivxJDQC/t8=;
 b=KZSRQajTnvzW0clRD9RUz1/IrSo5Pbgo5ru0LFaHRnbZJqViAA3L4KZb88KfMJrKK2Rq3g
 79m9I4NGkmve3uvvxTIXoDdHFFEVrZk75WwA5vcE+mW96VWbVsN2gojWHInHIcO4xZuPC7
 Z5ur+8T/o0giuKb0D8j15Loi055fcu4KjLtzmLubi9XZzizeQ9cE06XAvfSPygVzeqp0dT
 YRkoa0FkpIZpZPdgYjUfLVjjvA26TJ5yN2LD9Irth7iivKm2lviJp4WXEzWJAxUZdrGmSd
 jJRCLU6HIbJYbe0xuDvS2SP8xlmGac5Uu0axl2yGwMijxJl9jJ1BS24GVnSJvg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755934178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dmrEX6c/xt+zlzACoXvBPVdXWpJelV17DivxJDQC/t8=;
 b=x3FYBhyQyClhx66lvIleZcRz2eckqypt2oe3JAizqoGgUlibfO5aEcDE5ozNuj6zubAvsB
 rdGnloBobHqDINDQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=KZSRQajT; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=x3FYBhyQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Aug 22 2025, Sebastian Andrzej Siewior wrote:
> On 2025-08-22 09:28:10 [+0200], Kurt Kanzenbach wrote:
>> The current implementation uses schedule_work() which is executed by the
>> system work queue to retrieve Tx timestamps. This increases latency and =
can
>> lead to timeouts in case of heavy system load.
>>=20
>> Therefore, switch to the PTP aux worker which can be prioritized and pin=
ned
>> according to use case. Tested on Intel i210.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Switch from IRQ to PTP aux worker due to NTP performance regression (M=
iroslav)
>> - Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc03=
53422@linutronix.de
>
> For the i210 it makes sense to read it directly from IRQ avoiding the
> context switch and the delay resulting for it. For the e1000_82576 it
> makes sense to avoid the system workqueue and use a dedicated thread
> which is not CPU bound and could prioritized/ isolated further if
> needed.
> I don't understand *why* reading the TS in IRQ is causing this packet
> loss.

Me neither. I thought it could be the irqoff time. On my test systems
the TS IRQ takes about ~16us with reading the timestamp. In the
kworker/ptp aux thread scenario it takes about ~6us IRQ time + ~10us run
time for the threads. All of that looks reasonable to me.

Also I couldn't really see a performance degradation with ntpperf. In my
tests the IRQ variant reached an equal or higher rate. But sometimes I
get 'Could not send requests at rate X'. No idea what that means.

Anyway, this patch is basically a compromise. It works for Miroslav and
my use case.

> This is also what the igc does and the performance improved
> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling")
>
> and here it causes the opposite?

As said above, I'm out of ideas here.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmipbeETHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgoTREACTR0YHHDXeAfhog0YtHT7jucGWdCID
r99TTpdEJfQQvBSvDG1oSeDFEhBJRqHhv0BpuRKxiiCVB28K5eZM0rlDcf/434DG
7e96GevAI/FzEePC3nsUxAV3aF1fHlBjYXkOp62fFYIXmlRCH01rLrhsEaj6d7oy
aCzNILFGm0Q7RRsp53WrgMujZ/yszFMmKsTDA5ehkfvGWbF+3QnoIhnx28VZL47S
irzeiRkAMvEue+n/jii/osRibm6tKdfnAO3vfB3X3yfiMDee5HqkJxK+898XuHGg
a/nU4FQbMVNeLSulap0lyvyrYjygn8PbD1slg5W5HWsDd6sLOToTW7oiqDMIyDhx
MSlvOy52C6IpP1hgx/HEaDATN+vask736P/ouEZ8Bl8gCPQdMgqGVarYYHBC0Ibe
XNO2+0GDmkLImmM9uITafocQDQuHGlNHquOuw2y6xNS+47NUr6luxLvtK8bPBBnc
u9JLDESmWYFStLDzt/JneezAFgWkQTsShtlwlRyG/nzKE8PMDZTnXyxEh+cHyu5T
Kq54TvNPDk+Xhaz1NYd/vvjCoprpvvxX5mt05zoNjdODOdizk471TyohZjMyUAC8
jD+NZKDxPrgfgmIrG0uGPrRYLEHgcInOnwbTDM2AdABB3+5imulSSyGZQAmpO0O1
/Vh/6CzJb0qECg==
=4JqL
-----END PGP SIGNATURE-----
--=-=-=--
