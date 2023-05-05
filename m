Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 611486F8079
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 12:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34A2616E2;
	Fri,  5 May 2023 10:01:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F34A2616E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683280915;
	bh=pGt8fZ7emWuayuJ/InEL5ZIuvCH3LJXjwxR8TcLv0Xo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b0kqc7z/s+OH7CktGLrenYq+w+U8Z5OT/nB44/+eEI5j3ZvGWIEE3+G8mWFH2Q0TA
	 zL3DJVD6ge4hEcVeC4d1iXwjScHEFP8yZZxFyWKbRlOWUcJUuET9N4NF/2G9MeT8GE
	 9Pg3BgjxnkN3MVGBWaoIvREHTBp16vVNfv4u4lCcjkqd6hvSQLgI69/SfszvPcaeSC
	 G28umcnoRcDjS196an4KAkjyF7n0ZBj06SWVRrnkubY68EJyxjlMMMsOsQcH19Vxhx
	 qg5K6itA4j2snh66n4kNsf1pt5GAd+vXtSwvQGFrH+D4JWEpFNCZN8Rvw+8R7ZcfXD
	 jbzao+UZtbPIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHxg-l9Danaj; Fri,  5 May 2023 10:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94A91616CD;
	Fri,  5 May 2023 10:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94A91616CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6D31BF869
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 10:01:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE92A402D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 10:01:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE92A402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ct4vIN6JGVk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 10:01:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F7B9400FF
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F7B9400FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 10:01:48 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230504235233.1850428-5-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <20230504235233.1850428-5-vinicius.gomes@intel.com>
Date: Fri, 05 May 2023 11:51:49 +0200
Message-ID: <877ctnumve.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1683280310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=erVi4LQ4PMq8WdS9Oke29YWNFu7kXhpRXvXBuGq1YUw=;
 b=Kwv0H+NFsJ93J1OzknEXL1dp6+CgwlrEHID1vRr7Et7aWgKgq/jFAcW47vnQfIrWHQIPtO
 SyUXgUUDeCAAXr7mIP+S9Fb8T6TOZ3UNywkcCR1E4aRRXWoQEo5fWxS8jtwsiIkve3F9m9
 9YTOuiXKZV+NMGX89cxGmRcF4+5JIDogk0KCe3nY4p//Y4ZrxSB2bar1tl3kWu6a97XFMv
 +mUp3a3vVhuSgIQpH/NDIntKGSlN9Jquas5OpREHswnFKVdL8aElPX+MrYEhVVxNrE9weN
 9rp/98lcVRxt0uBbrsqwfNzyQcdXAQ8ekCkreR0jfPhl8SaKIl1Soz+3U5S6SA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1683280310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=erVi4LQ4PMq8WdS9Oke29YWNFu7kXhpRXvXBuGq1YUw=;
 b=ZPLDjDhuin793Om4wmpTCQRzbHkc3yuHHsF73c3M4IlB8fB860DHRgRTCsAa9EXDlJGe4c
 V8CkW93ETS1X80DA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Kwv0H+NF; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ZPLDjDhu
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 4/5] igc: Retrieve TX timestamp
 during interrupt handling
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
Cc: vladimir.oltean@nxp.com, anthony.l.nguyen@intel.com
Content-Type: multipart/mixed; boundary="===============8285769900543162980=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8285769900543162980==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Thu May 04 2023, Vinicius Costa Gomes wrote:
> When the interrupt is handled, the TXTT_0 bit in the TSYNCTXCTL
> register should already be set and the timestamp value already loaded
> in the appropriate register.
>
> This simplifies the handling, and reduces the latency for retrieving
> the TX timestamp, which increase the amount of TX timestamps that can
> be handled in a given time period.
>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmRU0bUTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgrmLD/44sxaJ1dDTyILJut1aAmqlVaeOEuxn
vyGxseBQADJUwdXN1xN623y9l3eQrU50K0wI8qMZKR8HnT8z1mB+meVTqft9Bmj2
Ku9lTahlYhVQvRpE9xkq/Ekkhv3hpO156upUvHft9YhbzOGTwpchZVcxrRbQg+lj
znSKYSb4tMRNv4djWyz2qQH08uWQiM/5XgzM8IqT0U2VPwOPLA+mKtGAXxjvdQ0j
hkX0V8rysSlffdw76Wq0zIHLx/aMhRzkmCkJBRd4wPSs2Dkcm2lwb6wCQ12Vlwsv
rpyBsFGISWP8MhIuqH1HiwHQKOU83YpxvcJrpC84946bSySmbLF0Vr5zTOETnDdP
hxPQUjL5OhIffR0VhOzrYibe4tKW24LtTE9PgQnkr6wMJoWlSPiF+L1bCxmnW+nI
FKQqMVAl7Hu0ysBRgwRJtizJmQWdaelBpfHHruVyROzf0ZjlfVOirXybmtWxBMHG
YfsMc0k7ZaJtdeXonEZWBQ4Oj/jc0FUSh7MrJEotVgfIpH7mAVubEcqVY90zwFO7
FikN4F5lrn5MaKXGM0MpL9aR8ZCVCA7flW8GB+WYVsp1zxWjeGLLwjOAMKa2Nac/
WP77YT9X7zbwyrk+8eNENEz40bq2coXJN3CzLpzuUT0VVbX4wLxlnRzPu1sVx+Du
PM8wJyId+BY/Uw==
=c0wp
-----END PGP SIGNATURE-----
--=-=-=--

--===============8285769900543162980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8285769900543162980==--
