Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15098597A7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 16:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 542E2404C9;
	Sun, 18 Feb 2024 15:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pxocuj3xDnjQ; Sun, 18 Feb 2024 15:40:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D86C404A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708270813;
	bh=NEJif3hMj92kb73ceaBTohocvuUtcBAZTK7BGKOZE+Q=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BMz6vSAXgXHvT1AGuNpZCPtNvkQu0x2R/lZg6ASkfy08lx/c9xiLMjC0rWC/5fG5c
	 CUE5LAsGxE1IDj1peJ7e1kdynw3HOOZ8OWpV+GFLwlXo9HrgDwtZ44KzfswtTNE+sM
	 /BvBfRnRdjB7f+UOqGxfRD8KV5hj2/g6EqBJRSHi1VtyQYNj/EoAVbGUdUGKEa4fYb
	 uteAfvE/bN/TjUfx1n1lWqwisrHXtcWHHIPgKe4SZkve7nxuPaUQRLjd7B47W21or7
	 +rIva1xmp6bL2V2pdAIpfBAmlWKppbCP/oxsfynCWmK5OpMkDuxn93lInNq/YXJfel
	 Nq5RPYDA81Amg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D86C404A6;
	Sun, 18 Feb 2024 15:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4241BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 15:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E8AA4059E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 15:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2W7LxWx2CCs for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 15:40:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B06B440598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B06B440598
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B06B440598
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 15:40:09 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240217010455.58258-2-vinicius.gomes@intel.com>
References: <20240217010455.58258-1-vinicius.gomes@intel.com>
 <20240217010455.58258-2-vinicius.gomes@intel.com>
Date: Sun, 18 Feb 2024 16:40:03 +0100
Message-ID: <87y1bhok6k.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1708270805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NEJif3hMj92kb73ceaBTohocvuUtcBAZTK7BGKOZE+Q=;
 b=lXRhXdkNdX+ISAqP2fFGBkuHzVWodImWzUguCT8cle1stmPgXETAOQYQyGh0kJsfbdVZlH
 lP5umO5oA48ugDMs54GKgfUQ8rj+gJ6Wn4tqCvewsvNY2p04fJm3S4fbK3Mal/rqL9POof
 /W0uQ8HUehEETD+zCL66+fWZAwmW2KXZzY7S1/8gFeUH1C3cz8vo/NOhBNhuMVzUgeGcaB
 vOaxK6Pfwy15tPB8MDNvtNuheqMIAAwFzsFJtN0Kh/ggThzy498k0xZT0qhArITDZ1kBbO
 chbcpG8ou749DBAoj1OkKZBvEH4tYO06y2Bbl73GLsDSpoq1TleMvx1Ftn9YUA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1708270805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NEJif3hMj92kb73ceaBTohocvuUtcBAZTK7BGKOZE+Q=;
 b=YKS1tbyq22HqyyPxlEs22q4Kv+dF6I+VqD5o5wqbJhV903xAPd2nf8NeyryEr09JsIxLak
 Nxz6OGQ6PbMfdJDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=lXRhXdkN; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=YKS1tbyq
Subject: Re: [Intel-wired-lan] [iwl-net v1 1/2] igc: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Fri Feb 16 2024, Vinicius Costa Gomes wrote:
> Fix "double" clearing of interrupts, which can cause external events
> or timestamps to be missed.
>
> The IGC_TSIRC Time Sync Interrupt Cause register can be cleared in two
> ways, by either reading it or by writing '1' into the specific cause
> bit. This is documented in section 8.16.1.
>
> The following flow was used:
>  1. read IGC_TSIRC into 'tsicr';
>  2. handle the interrupts present in 'tsirc' and mark them in 'ack';
>  3. write 'ack' into IGC_TSICR;
>
> As both (1) and (3) will clear the interrupt cause, if an interrupt
> happens between (1) and (3) it will be ignored, causing events to be
> missed.
>
> Remove the extra clear in (3).
>
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

No obvious issues found while testing.

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
Tested-by: Kurt Kanzenbach <kurt@linutronix.de> # Intel i225

Thanks!

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmXSJNMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgqkID/9avd4FGLjcAGfKe3PWGU1PuFudMwS2
Vz9yhldxyFlslH+r+ZfuTj4M86zxqisARzwRUMJnYeTL9cMsvNeJawndgmj4C95G
eivrJ5Rb8hq7E3+9GYUa83MJSI6o10fl6/ITV2Aj2aia/tayNO+BE2OjedzCScRi
b3euEN2EmD6kknJNSXj4aPMew4ZJHAjBxZBC6O1uHCGA8W17TVi/MsGUn0j4wmZj
WcaLhjHVS+hWB+1GPDIc/zJiwb8/ngz5XMJEEd00CLqaSSyVxpJN3K6Vlh8DlSoJ
SFw6m341bWupluxys8jNO6dV7cejuRMZER11EjY8FeU2BJzclnHDGGikLEvy9JEn
fQyfuOx/9WlQmHS1paP4Tddq+vqOEn0rrHKrAxuKPn5kE4Opy2RNgLfTzsolKGMb
zv5LPKqV17VdY5kx+6nh3/Ii2OksoyR/7BUquc+X0A33DE3sBfNe1TuYHpQ0PAqR
soq9P0JH8GWySm69txSje5I2kcCVcrHIZPw6lXoRuFxhzUi9h/NCGMuRHYvt8fdo
ll0lb2nB2DO2tRhhijN4ZvHPMtkAse5BLMNN6y6qzinOnt70VmSOi4uk5W2/lBQ/
vkeT8pnbvLNxpSkx94tKDuFwgOBVScgzLXYCgav+5GWn9dSAFBVXJUWdlQak7gDO
EtiRovM4mz0W/Q==
=qF6P
-----END PGP SIGNATURE-----
--=-=-=--
