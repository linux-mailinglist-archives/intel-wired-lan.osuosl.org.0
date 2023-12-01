Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F37E2800C29
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 14:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B52926FA8A;
	Fri,  1 Dec 2023 13:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B52926FA8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701437518;
	bh=TwRrd9wPYHSEhgI8RiPICh9TSEP3I+6AUvVWG6Fd8/o=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CMSfQ4xDcQ6bMpztA4ibdv8r6s3Hj1OM8St7J5Z3DgYngJ/W82syZIm3Plwjuo9n4
	 bWDZ6VxjxNPsBSTsGwkDWVkmVL4Wrode9BpNjYUVe+MjAI9t2wZ5EZxAr0LFWG4AmW
	 S5aQKpVztNdSvs8Z4hUMYD8jqyi1LNxq5s4hxoT9tuiwmYv8+h7O5vfLMscaRQQSvw
	 DP+qSubpti7wvlfFhwp45owHweMee8BQaRaPmIIWpvfP13yI9vKEdhir4Z2O6YM3sZ
	 m8XrWvV0uU+dqsPVVGSuXjXlEhHtCQYOyBBUrP9s7fZ8KG5q37WmlewkCf5ZIDK9tX
	 UNxweGEH/HOcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ak81Ft2JZ6Hy; Fri,  1 Dec 2023 13:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 969E66FA15;
	Fri,  1 Dec 2023 13:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 969E66FA15
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D694C1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE27942143
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE27942143
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NeMdcp6Ayorw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 13:31:51 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09B3942142
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 13:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09B3942142
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Suman Ghosh <sumang@marvell.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
In-Reply-To: <SJ0PR18MB52163CF3D9F88A96707B0708DB81A@SJ0PR18MB5216.namprd18.prod.outlook.com>
References: <20231201075043.7822-1-kurt@linutronix.de>
 <20231201075043.7822-2-kurt@linutronix.de>
 <SJ0PR18MB52163CF3D9F88A96707B0708DB81A@SJ0PR18MB5216.namprd18.prod.outlook.com>
Date: Fri, 01 Dec 2023 14:31:45 +0100
Message-ID: <87fs0m2gn2.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701437507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UPBgS6HkYRkOkv21t9MfxwD13qsaPAeJ9zmSlmunmb4=;
 b=nHLOwjK6VqSE6j91L4KEZqxKl/P4Wu8TNhM5ZWgCihkFT9MGhkiuJRZji8e9B489+jkma4
 yYTSFXhEF3xMzpRAhm2Noy9EbTbthBVzGYgrt+gtN+KSf9F7WBLWBKTqBBbjhSsUtSXKhV
 Ci7cjxcifQzxDf3RhqCQoOdfg5dsHYKIEIl2tAxdXZtSUrVPPgw7iF0Igl8npmadtCNFxx
 nkaHUHwz9c0I9nwgMfORElqfP0lSwf6XBxtSglfb3L8pdvJpjEC+cqeWk1hHUOIfqY0D0P
 19oL9D0cTO/J+1D/G/zYbTzHOQ84a8PYhbwfOhxk9ji2IX6W0ghmBH9DSi1T5w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701437507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UPBgS6HkYRkOkv21t9MfxwD13qsaPAeJ9zmSlmunmb4=;
 b=7o4X1CACoAzwuWvHTrfkLltCTGL/Mq9vwEQevdUG3xY1yDVmpJC8Y5J/lhndAtpT5GsQS2
 a+vODSD9H8qbSCBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=nHLOwjK6; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=7o4X1CAC
Subject: Re: [Intel-wired-lan] [EXT] [PATCH iwl-net v2 1/2] igc: Report VLAN
 EtherType matching back to user
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============1897736211759465046=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1897736211759465046==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Hi Suman,

On Fri Dec 01 2023, Suman Ghosh wrote:
> Hi Kurt,
>
>
>>+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
>>+		fsp->flow_type |= FLOW_EXT;
>>+		fsp->h_ext.vlan_etype = rule->filter.vlan_etype;
>>+		fsp->m_ext.vlan_etype = ETHER_TYPE_FULL_MASK;
> [Suman] User can provide mask for vlan-etype as well. Why not take
> that rather than hard coding it? I checked you are already doing the
> same for TCI in the other patch.

Currently the driver allows/supports to match the VLAN EtherType only by
full mask. That is different from TCI, where two different mask values
are possible.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmVp4EETHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgiT6D/sGHAgkvZqoH10WUoVnaxUvE7W0RoEN
h6+7WS0BMVPOWK6dvsvP8QMm9ECJrGpI+BrA4StfbyJci/n2anUeYDPf67ozlInJ
Cw106cjEsIVMxQumY5YJKm/1/Hg3o2aZ1XzVRG5WIjDHJxn7A0qXSZ4FjWZxXEtu
QJ4JsfY7w7A7YAXJHOqXebqlc36OMdxtCjRufH7GDNT0aZHK1JXovOW8/nf70/7+
zz/3ygJvu7691hr+mUazQ0DB6FXFol41EjlITxumdqhdFYYF1Fts0uZ+g0wGdOVn
lAVZ5ss62dTQ3tnedxrADoU65U5LXqiGWg2Zp+R2mwvoUoyzRSmiwG1kq4VF5hWW
fV4xtxLNEUCW1ebQ5OLwYgIBrzGpaOrhnvW1IwRHR9OPa+qyTL8ENd6oMCfQICP2
aA0yrzGhNSy4Ew0P8XFFTfN21+FzziarG8iCtg5TYl6ev4hIfPSdLAKtEC8MbNZD
qB7c10GgGigEQIoPrtFrqSkd1LN/0hFUzPWJTWx/4RSNa18nZrHSHA5JxgsLX0Pp
l/qZChqVWrgphTRCjWvMysVF1DUPa3tkLlRqotACau0AxTXk2eZwFflmVK8AmQoN
Zx2Z3yNpvku3X8GvLHbTcSGqiicEgzCOMGAj/gU+jFvJ1fmx4JVkpwcDoHB0KTsV
E623CKidIznuOg==
=aGjs
-----END PGP SIGNATURE-----
--=-=-=--

--===============1897736211759465046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1897736211759465046==--
