Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF993AE2F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 10:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92C45608A7;
	Wed, 24 Jul 2024 08:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1BeXeU3OQJLI; Wed, 24 Jul 2024 08:57:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E3A7608B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721811440;
	bh=a09RrNU1F+fVmwep1n2NrhCMuBabpF9UyYl4Vp6fByY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WS2jUqPYzMNBWqgd6gbxmUIjzA/9OFIMmX4vwdHjEu9vWM/4vDgrUNi0WKS4pDUyS
	 P3XmKUWGAHBZzwPTDdsS8tm7aXdG+flEK+E72I2fdTrQDT5zI9kaQkrZ/p+lXzxVxY
	 gsTFmyVG74xir+wcalDSwx63L5HPOYmX4x4ky2LU6S8eV3JNw5GNQ9CW0ucvtyLDM/
	 OLzM7r/mJdBd3j3q6YasjMV5SruoSLvV/B6huh5N6V1FERvgbTNc0YnoUrUcDDwux+
	 6wO0/ZPA5VYBOfMKLoHWqMjmPPZyvW3Beq42KpDjI/gUVZTfJYJUaBYgkFpm7SynD9
	 6ASaGghtMSMVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E3A7608B1;
	Wed, 24 Jul 2024 08:57:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806061BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 08:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79608402E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 08:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pfiDjsYop6Vs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 08:57:18 +0000 (UTC)
X-Greylist: delayed 540 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Jul 2024 08:57:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 037E940246
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 037E940246
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt.kanzenbach@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 037E940246
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 08:57:17 +0000 (UTC)
From: Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>
To: Rodrigo Cataldo via B4 Relay
 <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, "Christopher S. Hall"
 <christopher.s.hall@intel.com>
In-Reply-To: <20240708-igc-flush-ptm-request-before-timeout-6-10-v1-1-70e5ebec9efe@l-acoustics.com>
References: <20240708-igc-flush-ptm-request-before-timeout-6-10-v1-1-70e5ebec9efe@l-acoustics.com>
Date: Wed, 24 Jul 2024 10:48:12 +0200
Message-ID: <874j8fjhv7.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1721810894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=a09RrNU1F+fVmwep1n2NrhCMuBabpF9UyYl4Vp6fByY=;
 b=v8Yhf6BbxoSh1ZjTczM5EGIflRsKSxgwWFHStE+z7YqtX5kq2kgYov8WU2Jrs4DPvIipOy
 egYv88enTN3WG/dRtqG36EVyVf6AfhZOsTolAaRJYOvt9Y5ZNVE1Y+pcNh3GPOjTVw1Yrb
 NDG70NVLkeBxLBYQeivmOyWwJPQOYgU09+flqV3/OLpvIVvhktEJDCy6RQYZiqQMO2qXMp
 JDmDJbv3u/i+50vW5gPbw76c6rkFMgkhbyUxrOx8/nZUE24wXEXnhV6ZSMm7cK8JplJZCV
 +bM2f/DaPrT41N8n890asf9DnmCqcwP2XnWqbi4/mateqAmZYZaln7ehnbyFVQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1721810894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=a09RrNU1F+fVmwep1n2NrhCMuBabpF9UyYl4Vp6fByY=;
 b=MzMhGLiu5kHdsIDeziOtvYQmhMNhh4/bGzAClUoZM+gdm0W/e4K+OEoN/c0VBQhCuYVrkQ
 0irI2p8K7jaAH4Dg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=v8Yhf6Bb; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=MzMhGLiu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Ensure PTM request is
 completed before timeout has started
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
Cc: netdev@vger.kernel.org, Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Mon Jul 08 2024, Rodrigo Cataldo via B4 Relay wrote:
> From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
>
> When a PTM is requested via wr32(IGC_PTM_STAT), the operation may only
> be completed by the next read operation (flush). Unfortunately, the next
> read operation in the PTM request loop happens after we have already
> started evaluating the response timeout.
>
> Thus, the following behavior has been observed::
>
>   phc2sys-1655  [010]   103.233752: funcgraph_entry:                    |  igc_ptp_getcrosststamp() {
>   phc2sys-1655  [010]   103.233754: funcgraph_entry:                    |    igc_phc_get_syncdevice_time() {
>   phc2sys-1655  [010]   103.233755: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1655  [010]   103.233931: preempt_disable: caller=irq_enter_rcu+0x14 parent=irq_enter_rcu+0x14
>   phc2sys-1655  [010]   103.233932: local_timer_entry: vector=236
>   phc2sys-1655  [010]   103.233932: hrtimer_cancel: hrtimer=0xffff8edeef526118
>   phc2sys-1655  [010]   103.233933: hrtimer_expire_entry: hrtimer=0xffff8edeef526118 now=103200127876 function=tick_nohz_handler/0x0
>
>   ... tick handler ...
>
>   phc2sys-1655  [010]   103.233971: funcgraph_exit:       !  215.559 us |      }
>   phc2sys-1655  [010]   103.233972: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1655  [010]   103.234135: funcgraph_exit:       !  164.370 us |      }
>   phc2sys-1655  [010]   103.234136: funcgraph_entry:         1.942 us   |      igc_rd32();
>   phc2sys-1655  [010]   103.234147: console:              igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
>
> Based on the (simplified) code::
>
> 	ctrl = rd32(IGC_PTM_CTRL);
>         /* simplified: multiple writes here */
> 	wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
>
> 	err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
> 				 stat, IGC_PTM_STAT_SLEEP,
> 				 IGC_PTM_STAT_TIMEOUT);
> 	if (err < 0) {
> 		netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
> 		return err;
> 	}
>
> Where readx_poll_timeout() starts the timeout evaluation before calling
> the rd32() parameter (rd32() is a macro for igc_rd32()).
>
> In the trace shown, the read operation of readx_poll_timeout() (second
> igc_rd32()) took so long that the timeout (IGC_PTM_STAT_VALID) has expired
> and no sleep has been performed.
>
> With this patch, a write flush is added (which is an additional
> igc_rd32() in practice) that can wait for the write before the timeout
> is evaluated::
>
>   phc2sys-1615  [010]    74.517954: funcgraph_entry:                    |  igc_ptp_getcrosststamp() {
>   phc2sys-1615  [010]    74.517956: funcgraph_entry:                    |    igc_phc_get_syncdevicetime() {
>   phc2sys-1615  [010]    74.517957: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1615  [010]    74.518127: preempt_disable: caller=irq_enter_rcu+0x14 parent=irq_enter_rcu+0x14
>   phc2sys-1615  [010]    74.518128: local_timer_entry: vector=236
>   phc2sys-1615  [010]    74.518128: hrtimer_cancel: hrtimer=0xffff96466f526118
>   phc2sys-1615  [010]    74.518128: hrtimer_expire_entry: hrtimer=0xffff96466f526118 now=74484007229 function=tick_nohz_handler/0x0
>
>   ... tick handler ...
>
>   phc2sys-1615  [010]    74.518180: funcgraph_exit:       !  222.282 us |      }
>   phc2sys-1615  [010]    74.518181: funcgraph_entry:                    |      igc_rd32() {
>   phc2sys-1615  [010]    74.518349: funcgraph_exit:       !  168.160 us |      }
>   phc2sys-1615  [010]    74.518349: funcgraph_entry:         1.970 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518352: hrtimer_init: hrtimer=0xffffa6f9413a3940 clockid=CLOCK_MONOTONIC mode=0x0
>   phc2sys-1615  [010]    74.518352: preempt_disable: caller=_raw_spin_lock_irqsave+0x28 parent=hrtimer_start_range_ns+0x56
>   phc2sys-1615  [010]    74.518353: hrtimer_start: hrtimer=0xffffa6f9413a3940 function=hrtimer_wakeup/0x0 expires=74484232878 softexpires=74484231878
>
>   .. hrtimer setup and return ...
>
>   kworker/10:1-242   [010]    74.518382: sched_switch: kworker/10:1:242 [120] W ==> phc2sys:1615 [120]
>   phc2sys-1615  [010]    74.518383: preempt_enable: caller=schedule+0x36 parent=schedule+0x36
>   phc2sys-1615  [010]    74.518384: funcgraph_entry:      !  100.088 us |      igc_rd32();
>   phc2sys-1615  [010]    74.518484: funcgraph_entry:         1.958 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518488: funcgraph_entry:         2.019 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518490: funcgraph_entry:         1.956 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518492: funcgraph_entry:         1.980 us   |      igc_rd32();
>   phc2sys-1615  [010]    74.518494: funcgraph_exit:       !  539.386 us |    }
>
> Now the sleep is called as expected, and the operation succeeds.
> Therefore, regardless of how long it will take for the write to be
> completed, we will poll+sleep at least for the time specified in
> IGC_PTM_STAT_TIMEOUT.
>
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>

Thanks for sending this upstream.

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJSBAEBCgA8FiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmagv8weHGt1cnQua2Fu
emVuYmFjaEBsaW51dHJvbml4LmRlAAoJEMGT0fKqRnOCuLUP/ib+0Vgkt4GIrTNy
Gh9EkFw+VPjRPEnxPMIHRWl9XJnHJfVbOZp6u05cBpXE5M32SicSPEhO2ZZzBrUp
NRlIlKhrlTLKa3m57duu2o0PY1572Ay0LyfiEF06joZUqX97kST26QlRYjdqVgzF
+PeQ9DTZ3wpltPMzmvXE6g8T02xumCbg6CgohmYjnVeCFG94ADr26+WPSoP0lX4o
9bCJg7J/5nMfUmORzQ6dvLmlkURk4n18wguSab0hJnMAvbbCxZIlch5sGicUxbka
AqcwWLz/CtpdoJ6VA5FR1aX0D2h597qDR6ULvsB8NjH942zRNr8akq00qS6tkGNp
WFYlu58gQhDr6Zr7yWYWUXiI/4/1OTko/pesir7knzODd0bVCbf7PJIf1vkim84s
00nfwkRBr/DBemxCbiOyV3F33sdntUe2Sx3iX8LqAwO8vcesltvED/xd18Ch6nj7
ZucOsd/2bMqD1Key/8lzFdiMebLJV/ywoWg9dde7tsatdeDokzX3QhJZcWXktkah
qcHremtXKQ7vzYn6yf3EV+oNBZlTULRoDar5MJWF6/EGnwl+2Y6xbfGEQh3t5uMB
kPpXNE9VXOop4N5fLhtQ1HE1gq/doCo1rtp99Uo5iz3VppHNWHi1za8E4GFmXvb3
kfWSE0TO7Z60rN2ANn9RS4QPj+hG
=hICY
-----END PGP SIGNATURE-----
--=-=-=--
