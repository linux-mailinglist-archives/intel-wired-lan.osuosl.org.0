Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF776F8067
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 11:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CE73616C1;
	Fri,  5 May 2023 09:51:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CE73616C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683280302;
	bh=pyH1o9HBHtY+x+ft5mCxgzwO408Pv+3UZGYXWvv/3jI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oa6RPS1u3PufbAKhvTfcN05NlScx8Pb9iiKnYgcbRB4V8LjYUzQ62hru9kD3f/0ni
	 FbhZDbDDvZGmusmJBeTNccYGbI465HyuL68iOmMhXyUkGyDZcncXu/P3bZWgDG7XNd
	 YPCfUm9J961v9EjYqaDK8A90nvqxsJkabSKXHWNRxSFE4PJKz24Uyp9nWDh8u7nyuW
	 hJkUbphxCGAF2h9BuMQkTD/FrDwDV5W24ujSGw+g+VPUfFPYZqbb/toJZVeGl9EKkO
	 GWc6cD3zm0/gudSas2I8StS6fgXtae1bM9LdsvQfcChMbAnvswZKWu0UQRQEnzVAZp
	 //Bdc2t081xjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYYDFkF3VDFg; Fri,  5 May 2023 09:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F0A961140;
	Fri,  5 May 2023 09:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F0A961140
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CDB41BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BF9842754
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF9842754
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X7bNwnc277HZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 09:51:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 859BE42745
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 859BE42745
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:51:34 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230504235233.1850428-4-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <20230504235233.1850428-4-vinicius.gomes@intel.com>
Date: Fri, 05 May 2023 11:51:31 +0200
Message-ID: <87a5yjumvw.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1683280292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pPSUXo5cfXU9+lwV/31iLtof6DihS2H8OOK5Rc3op7Q=;
 b=KTqP0J2ctY3aBHnhBUwBZaXUhLlx/f5eCjVkBsJgl59LK+NJmvztqQBYD+TtLx0Ynz2U61
 qwJHbmBgAnOq8OikgQBzkdgL1riHPukA1wTbicXEoIJgEkTNYHpiYt7OHNQb3qtWtFJzXB
 +Iy+Rex0DCUDXZyQ5vrbAv8VXk+ZxZNmeZtHorTWvJ6bnvbZQ8b/e+bUHizlOwUOT2DioE
 PQTTv4cYUXgCaBBBQu3j/nsVSxrgfGykeLAGPrqCLLdzqtuHLTt9anZ2IuBnS+dzCXeBTE
 dSyuovWmnCjiFxhe6fMm1t+M1zPSdfVetJYQ3xn6gQ2TlJHC9fu3mnz8YEL6/Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1683280292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pPSUXo5cfXU9+lwV/31iLtof6DihS2H8OOK5Rc3op7Q=;
 b=6oIl6zaq6ekuKyNVYPrLLjkgkwhTo3VR1YEido/voZovM69Df6C0kW4pFdFENrIk+ZB482
 3PnOv7b9C9hCcdCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=KTqP0J2c; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=6oIl6zaq
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 3/5] igc: Fix checking for
 tstamp timeouts TX tstamp is off
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
Content-Type: multipart/mixed; boundary="===============5917026415418624947=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5917026415418624947==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Thu May 04 2023, Vinicius Costa Gomes wrote:
> When TX timestamping is disabled, there's no need to check for
> timestamp timeouts.
>
> We should only take care to free any pending timestamp when TX
> timestamping is disabled, as that skb would never be released
> otherwise.
>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmRU0aMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtckD/4gLT29g9Xx+9IcO+Yc6LYgAwI4P48y
zNenk4LUUpTHfA70JmSubkiqbpNWrgE+Vnhr6SUvuAkU1+9WHXSTgmoAnFhWcNKh
GDzZRNrSANfsnfxO6RmOfBxPZCxcr3nFrGFeeZbH/YjsSIUuze/h+vvMupjtXVc8
LIO8shz2Cg1r/Mi3qAsulIQBxp4lo5SIjzn+mC0lSYs7dVHhDrpt05qaynRDFaiM
lO8mlSwMAjg6RpCS0IV2f+EooP8bzHmU6dKkhEzUNNWQWZZGGotcXOFD9m4KVLio
iPitv6WRvJrExdfaUlAcAHL3edxspZOmXMSQOW1pabZRFX0KIJQlOnZPMTrREZte
y+GhFBeWrQOXnlRf7IptPUasgp5r1nBAX8G+3ZyZxuIGwsdKWFV36O9ck+xEjST3
erVnQciMQjOLVDtJyIyOnyR5nBYjKxgA+A65Xevjgx87nmMdQ3Qlywk1K+m7UtOK
Z+KgDyUk3IXhePJtIyTWqsn5+T64tK+x3eiDknhjIT/vAYjCDDJw6AXlk5EPw066
g6WnAGhsxHGcbny21gldFU2iOywqHvV9a1mM6CdHV94lfUo6DhtMnNf1mrBrS3xK
UoJsjyXb/o6+XTwWNNl9/Lb3U0x6WUf24ChS34Jg2rGN4bsP2RtPASHIxDdNa/2c
1sJUO/Zxf/JpTQ==
=4ffi
-----END PGP SIGNATURE-----
--=-=-=--

--===============5917026415418624947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5917026415418624947==--
