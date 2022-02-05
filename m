Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0294AC233
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 16:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C84D4042B;
	Mon,  7 Feb 2022 15:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9TbqKKU2c062; Mon,  7 Feb 2022 15:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20C5E4038D;
	Mon,  7 Feb 2022 15:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76E9D1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 09:57:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BDCF40205
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 09:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="mlxtq9YB";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="wDraDeu9"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtYVeBIVlQrw for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Feb 2022 09:57:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2B7C4017E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Feb 2022 09:57:57 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1644055074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rUzpOjcIclh+K4ustrBQhEISjpjgNHpUfwww4DPGBAc=;
 b=mlxtq9YB3wXo3XdyAZgmNqpOm8cXLX43sK+wwAfriHDfeFjdi+kmQYnrlNjKv4RptBI08X
 wkUctZPc9AzP2SEVH4k/L27Wq0BU9DHD4vaJcrnFB1fb0WR6o1PS5EbvWROhAP8ulr2+tX
 IHsVf/asEdsMrM6OEzvf/gE+HHidIlzmSWqE+N6dpVhIumpL1eqPD9uV7PPXahOjREs5QU
 1CN3YSr/bBQwr3jp0kToVKQWDYOoeQIQTcFHfJpvAoIi0fqzmJaGm2LriJjIXAgDmkqMdD
 CvU7Yl+a6zgVaj2KsBOa/vexm+Ew8iehKE7VSEQg9DUWnKPFBNYjuwshhF9urQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1644055074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rUzpOjcIclh+K4ustrBQhEISjpjgNHpUfwww4DPGBAc=;
 b=wDraDeu9LbVVE68bleXWhCjeujWLTEicQgnOZpkmeCVyF8/gfN+g/E2BC/p3R59t565Eli
 2O1Mt+4OBKe8PIAw==
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
In-Reply-To: <0f1e1c0fc4f555ef0eaaa983da6d8f012a0acf60.camel@intel.com>
References: <20220204080217.70054-1-kurt@linutronix.de>
 <0f1e1c0fc4f555ef0eaaa983da6d8f012a0acf60.camel@intel.com>
Date: Sat, 05 Feb 2022 10:57:52 +0100
Message-ID: <87iltttz33.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 07 Feb 2022 15:00:22 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Clear old XDP info when
 changing ring settings
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
Cc: "andre.guedes@intel.com" <andre.guedes@intel.com>,
 "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Joseph,
 Jithu" <jithu.joseph@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "vedang.patel@intel.com" <vedang.patel@intel.com>
Content-Type: multipart/mixed; boundary="===============2381781218009083517=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2381781218009083517==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Fri Feb 04 2022, Anthony L. Nguyen wrote:
> Thanks for the patch, but we have a patch[1] to resolve this issue in a
> more preferred method. igb is actually changing as well to this new
> solution [2].

OK, great.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmH+SiATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgrFSEACRiD2JcjOKtNMEMeuSLJicYnV0po2C
RvupFkgpPOgTJIL/yfTUXVoA38AQXRPC7PVuxYH+ScNa+NhjaTYvsQ5AVxd41QTx
wBonV2J7xp9WkDP8hO3sfu+hfVj15hNqKib4geNz+wnECAuNr9OVrHiUaWNU8T21
J+wO+z/b7So9p0aR9VGEUWXawM4hBnbACzMSdcLRIctdF7XSUttD07oF3yMbr7Hb
m3nMLVw8JyZXe3ooL89pwQv60yBu6eUJjFnkiJCPPZjYPCv4GiPKUYpNO9aMZocF
o6QWGxDL3E6xQ4GpVO3FfYFVPtyzOsPiZ31SiTpBKxzI9awo0nfnnna6kJY8SmOd
Wecc+e804Y54ISTIlyiPWmvbMSa73hjFPfUksJL1dg1Ti8cmh2uXEarvGUYfYwW6
B7jr+v18TBd0s4aTCRXHkX6LMNiikxvS8fypZH3fyB9bAQ1hN71oAv+w0O8k1PCm
AxKhowCmdqaof6Mbl6TI6n5Tre5HfZWXfO+VvaohVtpVR+Izae1bCwapvr8cmaRA
S2NGF2ZaBgr9LcYVdAcxqVCXC8gITmNPMZ14iyKzcfMADk/OueZLB5WL2h1oo2Oq
KlhzFVpmTI4/id071ImAuRiGod0TtgHJcZl9VLkKzmz2jcyg/4iEK+mVvYIF2P7r
190kHrW6fs6INw==
=Hw31
-----END PGP SIGNATURE-----
--=-=-=--

--===============2381781218009083517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2381781218009083517==--
