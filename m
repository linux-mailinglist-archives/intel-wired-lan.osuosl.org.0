Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BACAB8FC4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 21:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30DBB4168F;
	Thu, 15 May 2025 19:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVttsU00-tOw; Thu, 15 May 2025 19:15:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B133241690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747336546;
	bh=9EmCe1q2Eg5oHsao11iqVbhKxJnm4mj5FEOLmpM563c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pTW7AnD0N7iyOK4+sCeBmCbiThFsY6nMsGeSOYYZI5Sn5w16zOfl/cCWQVY1+iuA8
	 ZrN1PiK3j0xF6eE2maXOuGqjcLwSJWuP4kXgV7piGn52mdoZhrUFECoaY6m5r9L+KW
	 QgDR9kJnJtkqrDPHxFzpqnkDDvn/DWzinkBz4so2QJb5JQ4wiv63AAl4S9haOl8I/E
	 gR+z3WvZCEEpfirDV2RETimIYu2HRKoO5+YCRwLRXZBdrmWRvunYIxlgSUtG9app7w
	 yB2HDGRHh2+KisH9+GEJTt9UxCNNipKVpB2LA3pQ2qhoqzaS3AObxok8xW5oSqg+1j
	 to3nh5pHdaQnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B133241690;
	Thu, 15 May 2025 19:15:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B9C5153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 19:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 605BF4156D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 19:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0YY40iN26Xs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 19:07:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.157;
 helo=fhigh-b6-smtp.messagingengine.com; envelope-from=vlad@ursu.me;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0ECE040CD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ECE040CD0
Received: from fhigh-b6-smtp.messagingengine.com
 (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0ECE040CD0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 19:07:51 +0000 (UTC)
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id C04EB254010A;
 Thu, 15 May 2025 15:07:50 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Thu, 15 May 2025 15:07:51 -0400
X-ME-Sender: <xms:hTsmaN0g_aYlY8Ko1aoTJ3bOLUnGwIUYGTmd0eLDwIHu-jgr6O5WCQ>
 <xme:hTsmaEGo_76ci5qz2_cUn1kemURGZBqcRULr3Rx1hkDPwYx31wfrAHMiXOtJWaqrt
 GVik_VU5oBvHt1zx0w>
X-ME-Received: <xmr:hTsmaN5hUXUIqi0q_ZMBFIUzhjn7W3oRY4fyZ6YaQP0rNfS6ZhLl5SQmHqXnRP2TWQgV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdefuddtieejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddt
 vdejnecuhfhrohhmpegglhgrugcufgftufgfuceovhhlrggusehurhhsuhdrmhgvqeenuc
 ggtffrrghtthgvrhhnpeekfeegveejvdefhfffieegffefgfeuudegieeludefudfguedu
 fedtfeeigfffgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehvlhgrugesuhhrshhurdhmvgdpnhgspghrtghpthhtohepuddvpdhmohguvgep
 shhmthhpohhuthdprhgtphhtthhopehvihhtrghlhidrlhhifhhshhhithhssehinhhtvg
 hlrdgtohhmpdhrtghpthhtohepjhgrtggvkhesjhgrtggvkhhkrdhinhhfohdprhgtphht
 thhopegrnhhthhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtth
 hopehprhiivghmhihslhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphht
 thhopegrnhgurhgvfidonhgvthguvghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvh
 gvmhesuggrvhgvmhhlohhfthdrnhgvthdprhgtphhtthhopegvughumhgriigvthesghho
 ohhglhgvrdgtohhmpdhrtghpthhtohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtph
 htthhopehprggsvghnihesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:hTsmaK2LHxMuV9OvaQ91t02qHfqDa66y-ylQyAStJLwr4HCjEKAggg>
 <xmx:hTsmaAGrq4G1xO-n7EBh0YfQ9vvJtW1rI5NtcBW6hq55O7BSCtnO8w>
 <xmx:hTsmaL9RjXX_wMYo8OWLr1lFHYnIZCDXEeDb5PjWxlG6Q3nn-kpkMg>
 <xmx:hTsmaNn5TnXJzx1doaASv2Qe0ULMp9Fxk6um8DZY2-AJHUji1UL-1Q>
 <xmx:hjsmaK6H808UxnCxvrM--v7a_lyXtpT1VHKSt3bvvS_8mT5CiJ6JvgSx>
Feedback-ID: i9ff147ff:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 May 2025 15:07:46 -0400 (EDT)
Message-ID: <47b2fe98-da85-4cef-9668-51c36ac66ce5@ursu.me>
Date: Thu, 15 May 2025 22:07:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
 <03216908-6675-4487-a7e1-4a42d169c401@intel.com>
Content-Language: en-US
From: Vlad URSU <vlad@ursu.me>
In-Reply-To: <03216908-6675-4487-a7e1-4a42d169c401@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 15 May 2025 19:15:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursu.me; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1747336070;
 x=1747422470; bh=9EmCe1q2Eg5oHsao11iqVbhKxJnm4mj5FEOLmpM563c=; b=
 LNec+Eb0Fc/7H3Guw0hyZjnAT8R30U9/Jg7wQ/GHiiNN1qoRKHv7LYfJA72cMumU
 s1+iCDeTaAVrTrso38AgeD9+3zVq6/7JMYDDzgIL/VQ19uNGzz3+OCuaL6oVh2Fp
 J7b1BdY9/lrJ5BjjfNbqHUbAmwoOgeW5mA0TIB7LltFIv2doi5+syGuRj+Q9lEqR
 XFkbvAV2sHKYr/NVROxsLpaG3OeVXQY6Dd0k7zJrkZOz9B0iyMKIIegOCqmlsIHE
 ylxmPZTnuHfz+LK2uBHPhdycRajCkmPhP6XMywR+QpHqtlPQASpnwCqXcW4wL7Q6
 HL3tHDHpZvsqjHTKGBTESA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1747336070; x=
 1747422470; bh=9EmCe1q2Eg5oHsao11iqVbhKxJnm4mj5FEOLmpM563c=; b=c
 Q3Z/hII0dV0Xp6WtMwspctWYjQv/IzGdBvZfxpkOiQeqKo6HHJUcnW98sHdNS2zh
 gf9LAOIHhXitr3/B6h9PCreSXda+2p4ZLcNwX573jvqxm5oY1HjOLGiH2jR3pMSc
 gwTeJzOX2adDfas7t36zRAJ/WUlQAj3RBPfXUy5vIILDnW+bJqSsu2/Cy+lN3s8q
 axGmgCurXw023TQTDWfbpsJHRNZ2bIKpyCZ5zzH22vw09CK2rTqlsukeh+KA25ji
 ZEJQzCyCQHoRYdmhnqh8z44IZH0eLkOb8U18SD96dNwVtbw/4Zrhjl/KmXSD6IrH
 5UqPCaFp6uFKTLNtOkq8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ursu.me
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ursu.me header.i=@ursu.me
 header.a=rsa-sha256 header.s=fm2 header.b=LNec+Eb0; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=cQ3Z/hII
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

On 15.05.2025 07:39, Lifshits, Vitaly wrote:
> Since the checksum word is 0xFFFF which is peculiar, can you dump the 
> whole NVM and share with us?

Sure, here's a dump of my NVM

Offset		Values
------		------
0x0000:		d0 8e 79 07 78 c8 01 08 ff ff 44 00 01 00 6c 00
0x0010:		ff ff ff ff c9 10 54 0a 28 10 f9 15 00 00 00 00
0x0020:		00 00 00 00 00 80 05 a7 30 30 00 16 00 00 00 0c
0x0030:		f3 08 00 0a 43 08 13 01 f9 15 ad ba f9 15 fa 15
0x0040:		ad ba f9 15 ad ba f9 15 00 00 80 80 00 4e 86 08
0x0050:		00 00 00 00 07 00 00 20 20 00 00 00 00 0e 00 00
0x0060:		00 00 00 40 28 12 07 40 ff ff ff ff ff ff ff ff
0x0070:		ff ff ff ff ff ff ff ff ff ff 00 02 ff ff ff ff
0x0080:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0090:		00 00 00 00 00 00 ff ff ff ff ff ff ff ff ff ff
0x00a0:		94 b0 00 08 0a 00 04 90 b0 47 40 24 c2 e1 21 c3
0x00b0:		3f 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x00c0:		80 60 1f 00 00 48 10 00 40 60 1f 00 04 d3 11 00
0x00d0:		03 0a 12 00 00 00 1f 00 04 b4 30 00 1c 00 31 00
0x00e0:		06 b4 30 00 09 00 31 00 07 b4 30 00 10 00 31 00
0x00f0:		0a b4 30 00 18 00 31 00 0c b4 30 00 18 00 31 00
0x0100:		0d b4 30 00 18 00 31 00 01 fd 30 00 2c 9c 31 00
0x0110:		4c b6 30 00 05 00 31 00 ff ff ff ff ff ff ff ff
0x0120:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0130:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0140:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0150:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0160:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0170:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0180:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0190:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x01f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0200:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0210:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0220:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0230:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0240:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0250:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0260:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0270:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0280:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0290:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x02f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0300:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0310:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0320:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0330:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0340:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0350:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0360:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0370:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0380:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0390:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x03f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0400:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0410:		69 53 84 03 01 00 00 00 00 00 00 00 00 00 00 00
0x0420:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0430:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0440:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0450:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0460:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0470:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0480:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0490:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04a0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04b0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04c0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04d0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04e0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x04f0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0500:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0510:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0520:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0530:		00 00 00 00 00 00 00 00 03 3d 00 00 00 00 00 00
0x0540:		00 00 00 00 00 00 00 00 00 00 00 00 bc 0c 00 00
0x0550:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0560:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0570:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0580:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0590:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05a0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05b0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05c0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05d0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05e0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x05f0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0600:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0610:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0620:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0630:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0640:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0650:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0660:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0670:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0680:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0690:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06a0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06b0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06c0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06d0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06e0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x06f0:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0700:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0710:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0720:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0730:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0740:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0750:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0760:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0770:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0780:		00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x0790:		00 00 00 00 ff ff ff ff ff ff ff ff ff ff ff ff
0x07a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x07b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x07c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x07d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x07e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x07f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0800:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0810:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0820:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0830:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0840:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0850:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0860:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0870:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0880:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0890:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x08f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0900:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0910:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0920:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0930:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0940:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0950:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0960:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0970:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0980:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0990:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09a0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09b0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09c0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09d0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09e0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x09f0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0a90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0aa0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ab0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ac0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ad0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ae0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0af0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0b90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ba0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0bb0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0bc0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0bd0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0be0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0bf0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0c90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ca0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0cb0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0cc0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0cd0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ce0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0cf0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0d90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0da0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0db0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0dc0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0dd0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0de0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0df0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0e90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ea0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0eb0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ec0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ed0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ee0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ef0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f00:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f10:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f20:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f30:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f40:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f50:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f60:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f70:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f80:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0f90:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0fa0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0fb0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0fc0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0fd0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0fe0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
0x0ff0:		ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff

