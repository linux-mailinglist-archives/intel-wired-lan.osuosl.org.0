Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB16A7E368
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4E4F810CC;
	Mon,  7 Apr 2025 15:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86bj-KAhzYCC; Mon,  7 Apr 2025 15:10:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13BFC80E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038658;
	bh=vjO3TAnFOqalGZ8xSYfbpH7cqt+Bfn6P2ZGcPBU9VrA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fWMskyl4L6A9sCON4FnngavRoZ75gMNt2djdEOu8fwqU19IYKg1rTjLn/Iywdt1vf
	 Xp7omytl4Z7BWgTADylnTykldl3Snszt4OzBQGLB25FEZohAfR9u3B1Texwc0MOZ/I
	 s7u1gXVJt+qFdM++4SuQyDee0E7aSs6SU9EkVjjXmNVk1WvMRYpIuDFUM95SuDBI0G
	 EiKbc+clTcfbdR0onuGhThLeem14mDj4yX6ZYrsvKusQB/vvJYovXNl7W8qrGPTBok
	 95VYtLY7PSewXSr0XSI/9u2KhqsNFp9NgKtiRKBbQp0DJsz/4uvsKHEbEtfylAZHqo
	 MpF97gLOpFtSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13BFC80E7B;
	Mon,  7 Apr 2025 15:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AA691DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 06:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03A2440712
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 06:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qKmlBX7a9t-F for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 06:30:46 +0000 (UTC)
X-Greylist: delayed 583 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Apr 2025 06:30:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F0824406FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0824406FE
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=199.247.17.104;
 helo=prime.voidband.net; envelope-from=oleksandr@natalenko.name;
 receiver=<UNKNOWN> 
Received: from prime.voidband.net (prime.voidband.net [199.247.17.104])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0824406FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 06:30:45 +0000 (UTC)
Received: from spock.localnet (unknown [212.20.115.26])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
 (No client certificate requested)
 by prime.voidband.net (Postfix) with ESMTPSA id CB416635B040;
 Mon, 07 Apr 2025 08:20:58 +0200 (CEST)
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@kernel.org>
Date: Mon, 07 Apr 2025 08:20:45 +0200
Message-ID: <4970551.GXAFRqVoOG@natalenko.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1916258.tdWV9SEqCh";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=natalenko.name; 
 s=dkim-20170712; t=1744006859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=vjO3TAnFOqalGZ8xSYfbpH7cqt+Bfn6P2ZGcPBU9VrA=;
 b=T67kECPfT42QpBEFPxPp59Fv0xiLmj2hM27rMbf3PfIKcxYgnmWvIuC9rghujRZRFdM0Lg
 OXW+pL+q8oqvHeq1MxJ33fg7ygvcgVzndpV6ERoQYM+RUooRVmY8vFRu0DRzGp9UfDT57I
 jR5vQAtmHZab6o88WIQahsLsJEnageU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=natalenko.name
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=natalenko.name header.i=@natalenko.name
 header.a=rsa-sha256 header.s=dkim-20170712 header.b=T67kECPf
Subject: [Intel-wired-lan] objtool warning in ice_free_prof_mask
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

--nextPart1916258.tdWV9SEqCh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Subject: objtool warning in ice_free_prof_mask
Date: Mon, 07 Apr 2025 08:20:45 +0200
Message-ID: <4970551.GXAFRqVoOG@natalenko.name>
MIME-Version: 1.0

Hello.

With v6.15-rc1, CONFIG_OBJTOOL_WERROR=y and gcc 14.2.1 the following happens:

```
drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0() falls through to next function ice_free_flow_profs.cold()
drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0.cold() is missing an ELF size annotation
```

If I mark ice_write_prof_mask_reg() as noinline, this warning disappears.

Any idea what's going wrong?

Thank you.

-- 
Oleksandr Natalenko, MSE
--nextPart1916258.tdWV9SEqCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmfzbr0ACgkQil/iNcg8
M0vZkhAA1tXUFHurvbvtwTDQNNs1ru9REB1w9TKVmN62Dgv9US35rAtlFot4wulq
43xzWuIcgR6OrHd9/39OZ9BJE2RVzOBIcBHYexgXCnX9BkH0A+y9LobJA8cMrLt+
bp/TNhJqxbobWt+YPLAWgIujNANpeepexdN/oJoW857M1dj2QQmLLHkPdAGyOhTv
jXPA+Ul+TJm4PN+u/q3WdWpUZHhXrWn5ICfyx+dzYqoYRpgQD84B/YMUasqA2R5d
ClWK5PTQq80ynDVdVLh1KKb3gXBornnQumLcalZijIz/Mwc8ELLfjt9Xv2XNdS5n
vlCw49IH2rvU+1zYhMx4DLkVh3n22pyL+Msp3UQt8klFlQ88ko8aK9Gh2Y5q+BLr
oHMokSoj92aZKjznihYWdsBst/QpFOmGTMOEtD0cHtxobZVfQnfHfd/i4yLPHWwS
ouogXxD5lx0Kx8SS4unDa4UtNP4ZQHcOmUt4l2EYeI0rnwus0NBDWGb7jdGgtuU7
1IJcJ+zs9uCEELgLDuPV67Q+2WBhqebZlJZC48vgLV47AuZ+r2XQP8BDl2F0Bh6J
cIDAiz07u3LBAaPByYdTQY0YZVr8z79MvNpGxKwNXt2LYE1yksOgpzmeUsYp+Mjb
gGBSJckC6a4KwNCG/i2gaYB/65jUaBVypebWMEGnDvF4qSLhFDw=
=UuCv
-----END PGP SIGNATURE-----

--nextPart1916258.tdWV9SEqCh--



