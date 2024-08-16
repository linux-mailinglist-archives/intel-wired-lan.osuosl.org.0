Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E729545EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 366AA60658;
	Fri, 16 Aug 2024 09:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XPkmDvhA7SvN; Fri, 16 Aug 2024 09:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 422E860B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723801183;
	bh=GCA8cQuwEwNBgoj9TYSkK4RVcQzIIkJrc8uQklmoBIc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QUGi+hzUknYp4IFKDVxSKnvjOYyyOkmItsa6MJEDyMr7+dc8rXewxrwgg0at+dtpp
	 YcqsGVJ4jO7rJ7vtl9R6DDXL1wb7q8+8sEXznBVDr24zAQLvw7jDAIo/ypDbQl0185
	 iJUn7pQbBYJOT8IO8eRsD0fGJv1s4z6oJBesrakofKJiuIde4lyqRwvpuglB7YSX6K
	 fZs5N9Y1qNxnutpUnO83gwrkXxydDiYE+gnwumDbCaS0fx285VnSN7OC3pok9hNvMo
	 Vj1W0K8uM59WsdIVEaDKgvjmUCGFVHblGfEu6mAhigAFCkVEQblwlcUj/W03Y1geev
	 ohKChpIstBYWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 422E860B23;
	Fri, 16 Aug 2024 09:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8615C1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7133740547
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ifLyx4SIwVN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:39:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1BFBA4051C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BFBA4051C
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BFBA4051C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:39:39 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Daiwei Li <daiweili@google.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240814045553.947331-1-daiweili@google.com>
References: <20240814045553.947331-1-daiweili@google.com>
Date: Fri, 16 Aug 2024 11:39:36 +0200
Message-ID: <8734n4vmav.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723801178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GCA8cQuwEwNBgoj9TYSkK4RVcQzIIkJrc8uQklmoBIc=;
 b=TQVy1hjVZkSV9/q3bVbtCwOGqJrYu9NfXUhRDEcF/rj044n1iOI+D5ozqLxJjTb3wPVS2p
 Q4NxufMC50XeV8nZw517pExjPCH8dO6lvINlDs/gcF9DZ0xc/KiILYNBDh/Lbnl/sgP5WW
 oi4BEZ4morJO7xfgRb/eOaX6SE1ZpoRga/ubc+KXJFrLBxHIW08BmdA/qdoIQM1wqZHQjY
 qfVWZEd7nbhp85hE3hgb5G9MuvFos7NOcE/sNMyNY5RbMMHizvuA0fytWYoh4Zgm80BGQp
 X8GIy+b4nogTfVweY+YAnbuj0xGFJKwbEZdCpTbQU/aTcbWXo5kDaWHPY7oeQw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723801178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GCA8cQuwEwNBgoj9TYSkK4RVcQzIIkJrc8uQklmoBIc=;
 b=gXgbqc0g0YJpJuzLSKYVMtDgr3vTyKl1EcypXECeHHO7pfQGIrqOMhanWq31iqn/dsobvw
 pe04TNc4f4K8ozCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=TQVy1hjV; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=gXgbqc0g
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: Daiwei Li <daiweili@google.com>, sasha.neftin@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Tue Aug 13 2024, Daiwei Li wrote:
> 82580 NICs have a hardware bug that makes it
> necessary to write into the TSICR (TimeSync Interrupt Cause) register
> to clear it:
> https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/
>
> Add a conditional so only for 82580 we write into the TSICR register,
> so we don't risk losing events for other models.
>
> Without this change, when running ptp4l with an Intel 82580 card,
> I get the following output:
>
>> timed out while polling for tx timestamp increasing tx_timestamp_timeout or
>> increasing kworker priority may correct this issue, but a driver bug likely
>> causes it
>
> This goes away with this change.
>
> This (partially) reverts commit ee14cc9ea19b ("igb: Fix missing time sync events").
>
> Fixes: ee14cc9ea19b ("igb: Fix missing time sync events")
> Closes: https://lore.kernel.org/intel-wired-lan/CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com/
> Tested-by: Daiwei Li <daiweili@google.com>
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Daiwei Li <daiweili@google.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAma/HlgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzghDCEACx8T5zGnmrBjeSsXzemRWluHVJI6Ub
7QnBxWCvIfrC8sUUzgsXYa08yMTXjTAkSh9pxTW0oVqpV01J+jd7NKJrz1qdZ1XV
RDRF178k4DPKLSrP1/XkMaFV5DI+56OzRoZgEudq5rmSVwqcdYNh+wRrO8Oh7ucx
xgQhXMhvzZruRCzsMNyStuqn3zF51M1YPBfgTLjk8UD9nnXGLRnwLFgv0OjUL89K
rhD5TXZ3seFW82RelaNorkC2ALLkPAQB7Pd2GVejrcWcj23Una2aPZV44uqV1VMI
iBnE1idHmJEO8/T4sLxwudHr1WJffb82PxadBdm7NGemqZh4OShc0GOWoWu2OEdY
UojoM8OGofudAfol8HdUHESETaR3gK5ZIlKEl22nPWN/rDpaUCl+se7Kv7UGpacc
vXd3AP+V/3oDb21evFjjqlQGsqodcTKD68C7OjvRZT0fSx7V0rnyxm4Lvou1zwWl
KbWG112CXPgx1YSJNiPfsYNhJMU8wmSjM9PABy1PLLgbesLfKIbj8o1lF54Aq2Nn
TyvhsWHYCnEPPfo2uRNtWX94h9uBZRo/Ll2kz4H4vVCD87RXkWMgNcdHcYzeiUIL
NLnNi7PHcQtpclrQVDLyh5c8m9VKCOCFtE2g4IdiMjOV/ecP/iCknnqf3Zxs5Piy
BTECwLhghJ5GKA==
=sPWN
-----END PGP SIGNATURE-----
--=-=-=--
