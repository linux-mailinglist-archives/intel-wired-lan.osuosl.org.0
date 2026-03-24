Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODgUEqHAwmmjlQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:49:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 955363195F5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 17:49:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0AC04106D;
	Tue, 24 Mar 2026 16:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GESa0DgVIRRf; Tue, 24 Mar 2026 16:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBA574106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774370972;
	bh=LUyPHYFnDMu8hAARucm+50EyHryzQIeZaT9fhosOQIc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xzEHXU+uL7MybW7Vlfkpka7tQXoa1a66s80FS3q8J0X5M6ClmlEQZ5MZuwc41QO23
	 Qc2dCrSJRNWaWfoiUerfdb6Y4F+i6hws5c0CIWni47+r/XeKVuJXtSTla+TgGuS/rp
	 NHIShDt0xeo4N+SpMG6la4ENZy7mDYEUbtCelLvnuF09/EN3FDXKsJYqu10L8nsitD
	 cyFY9HNXxGi8ROO0EbjMzCgKvH/HBlmE4WS98vO0XSdT6zqyvwqyKZTXFptkKEC2af
	 5Bcc9t8Sbi2vVGFVOWsoKaNqc/L75VYpMkpE4DshLhafS5rOBaAPxQJs3jIv32sdZm
	 DD3v1AE5cmylQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBA574106E;
	Tue, 24 Mar 2026 16:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C50A4353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC49A60DE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ax6FCGFmXsnK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 16:49:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4AEF60DDF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4AEF60DDF
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4AEF60DDF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 16:49:29 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-b97ba4c2be2so207364266b.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 09:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774370968; cv=none;
 d=google.com; s=arc-20240605;
 b=a4KdlRdaUWoE0XqIoQDCpZPYJRvg8Xt/dh1fHcYvN4Jl9NJzP1DHtHSMURLzNMC0rr
 j8qkkClt/ciMDFRxDp19Mh5oBecX2hEOceHBVLscXP47Og6Kv86UyYSfYLhKoGkPv5Du
 LsVzLLJYbnooW9cbZMxI3wGwi0aOxOwuavXT7Qkk6uCw1myvBlWrpNrTEvEMhPxxkrTm
 C6p2MLqO1LUaGzWxgLt5JM9tlJ9ijJkm5yWS/04iciv7gvlw+Ax3DY0U4zOlzP0A7Zh4
 g6bssnv6esO/NOweJh1snFV37FLpxTJs8wPwYo04kciq5lRS4KUExGSLd/lBywcjbQJD
 C6gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :dkim-signature;
 bh=LUyPHYFnDMu8hAARucm+50EyHryzQIeZaT9fhosOQIc=;
 fh=1g8rnfTlp4pCpW/miUPwdI1kYDt9lqAmpgu3TLM6qv8=;
 b=PMNaWaSVaMXtG8S12GCiE7OKS+SaTkVnVBIWIlGp7kCoaRxzJATnpOJu4WbmBgDJ6q
 bttCeTBL4lbYliZRzXpWY4YgE9Q7KznRvjBENtJezyxGz00xXT795ZkzQPfHq63Jr9h1
 aK3u0xrtfYSlmyhKlebpKDF4LL2oQwt1lYdqLvrQByEDYMIrQ0eH+I74PsRwzIkUYQ0W
 NdSfkonKg8suV8DB3xr+tcXangQ8GSUSYxY1uh1cdiJPL5n21M7d822I/Yk5fnBAGlvj
 Gp2xLZfOQI021SaQuBAMzZ8P7nA9E+ThjDuMIW4/9HQGT2lXQNdV0gxEKotku5zjRmCF
 8/PQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774370968; x=1774975768;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LUyPHYFnDMu8hAARucm+50EyHryzQIeZaT9fhosOQIc=;
 b=iO60OCPwWsLc0EG70uADa1/6UcsAP5GXNvn+WKdhY5EqLEZGj6r9Qko59XqV+baHzP
 pczF8j1vTzSATHTvk8yxU1fwmlsqjaT+TQRnjiz+YfgAg10LOtQ9+0/gcu3jWHjoC7EI
 rlxDKJQnoDgg/HHJnJPSfi8544sRvDCv/4U3PeYcgpwHD0pLxZNXW1erP4HJuYIWHSvz
 TtICuc3w0RJ3TOpVG3yUjDb6OiphM2UgqjUydjszFWkO/QhsDjHyi0aZOoGeqPEfAQEi
 +Ii9CM9YcxQAJfcXmCjcbFurKh3HzWN00uo9sEi1HDjUSrItR2zJu9NBzhYG8RcVTyko
 hrnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVP1tPQncK5NSRCTcAyCZubJvPU8P6o/149DNhEel4RmBu0L2lAUW1OH8utpBIaAidHKH78k4B+pH5EiqmqMBk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyr6QWTaieKQSsAoEtXrVNB5GhnhbrhVomNiLcjiYRmoOnYWwq6
 5PTCi/VUOESxsfOYOvhgaq3OnwbrJFu6RPwP2/KB508t53x+DDqODmDtrXY+uvs5ChfdFvoo5e+
 mBnuvumz1pCImZ/LnuuUIfbaNaQHuckg=
X-Gm-Gg: ATEYQzwy4grlMjXmJnxdKkV8aJ+foDgPm4Z7w5By+X4+Luq1bRlA3jQhvVV2SKR2wCe
 9bcCSn6TAiZc00RtNV0IR2fdlBeJ+1lOZ9IA/jQj+V0m+tq2Dt7UQN9rhrkq7UQHYRwi/SF9Fcm
 aw6QmLdj1vEYEsJ7uC4r9irlcGlWEaxNkY0cz0WQjSE1oMqwL4A33n9k50KSN/ZfpYQsOimHn6w
 yLFzGq3esWcZnvCeh4yn7qnBJJR5fAVWBJY+No8dXWH6lo0rYo6/ZxquPsaA9eMg8VsCkN3IipJ
 eyY=
X-Received: by 2002:a17:907:8694:b0:b98:11cb:5fa9 with SMTP id
 a640c23a62f3a-b9a3f1ac473mr9080366b.22.1774370967348; Tue, 24 Mar 2026
 09:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260320132356.63194-1-teknoraver@meta.com>
 <20260320132356.63194-2-teknoraver@meta.com>
 <1d708196-7b89-431f-bb17-177564196894@gmail.com>
 <CAFnufp0LRVxwh50cLrg=hUe6itshTqrNy53HkvBWk6MQ7uL0KA@mail.gmail.com>
 <acK+z8Udlg1qyDeu@devvm20253.cco0.facebook.com>
In-Reply-To: <acK+z8Udlg1qyDeu@devvm20253.cco0.facebook.com>
From: Matteo Croce <technoboy85@gmail.com>
Date: Tue, 24 Mar 2026 17:48:51 +0100
X-Gm-Features: AQROBzA2_iW4WgzLGFh7V8V5wrdvQTwU5-3V6Nc152QQriQY_B9N3jAu42FUgtE
Message-ID: <CAFnufp0_xfO7XquPpWjHs3rJnPw=ygQgriGJXkss2nrrXq-UQw@mail.gmail.com>
To: Joe Damato <joe@dama.to>, Matteo Croce <technoboy85@gmail.com>, 
 Mohsin Bashir <mohsin.bashr@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774370968; x=1774975768; darn=lists.osuosl.org;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LUyPHYFnDMu8hAARucm+50EyHryzQIeZaT9fhosOQIc=;
 b=jWAnlqjWIYTXbYZn81A2foUHBHQEInuEx0AAvnd6/Ore6ZBFZMKPJt0r3X+AJrV5op
 aUMeeDqetLhmfre1pa6G7w+8PxZxV6Uokr3jTzcxQBZXW26LEsIf5PNLQQQt49uzoUX2
 wq6iMTivme5CSRcMznFtWVk1R1Dz6QhN6ZVYYedE+wxJdOqaj2xKeYYjnotIp2fth0BK
 3sFdHF/Vm7jDHf6wHOsK68Bkd1MqmVUKsw2q422YPCwdhyZP1ozFjKAXa8QeahPh4vQ8
 ekWSd1GfZNQeABOS8Ji5ys1geO9RjUe0rcu/kNMuNMt9FEIfDVpqlqFKxRUBapYuKmuE
 pgCA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=jWAnlqjW
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joe@dama.to,m:technoboy85@gmail.com,m:mohsin.bashr@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mohsinbashr@gmail.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[dama.to,gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,vger.kernel.org,lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,mail.gmail.com:mid,osuosl.org:dkim,dama.to:email];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 955363195F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno mar 24 mar 2026 alle ore 17:41 Joe Damato <joe@dama.to> ha scritto:
>
> On Sun, Mar 22, 2026 at 03:11:56AM +0100, Matteo Croce wrote:
> > Il giorno ven 20 mar 2026 alle ore 22:23 Mohsin Bashir
> > <mohsin.bashr@gmail.com> ha scritto:
>
> [...]
>
> > I addressed all the comments and I'll send a v4 soon, thanks!
>
> I was paging through the code last night and I was wondering: have you
> considered splitting this patch into multiple smaller patches?
>
> It would probably make it easier for reviewers to read and comment on.
>
> Just my 2 cents since you are sending a v4.

I thought that all features included in NETDEV_XDP_ACT_BASIC must be
submitted in a single commit.

-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
