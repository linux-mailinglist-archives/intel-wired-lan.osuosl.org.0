Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNCiMua/ymk//wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 20:24:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0A435FB96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 20:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F14D60DCD;
	Mon, 30 Mar 2026 18:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-wibHcQwlO7; Mon, 30 Mar 2026 18:24:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3EBC60DD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774895073;
	bh=H2fCyQVduMiMLHCG7iMXqslB+KxrIKaXOc8AoYNYZto=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wxA+0IQLEfT8jIYOIYTqB1T3czYIDOEORK6mtQXxMy8zZ7waww3aSSXjM88hmDzlA
	 okaxfmqIXyRg1jI+7QLju2AyBQxLGCqzrjAFXowFX2gQbM6pyCfIOthCeYHkMSomRQ
	 1ZohemJ8pCobQOUaJlYMe7MR8/+VaTV6ERxC5pt3bbes4TX/bU4WwSZUuIdUXmTsO8
	 7EVMczCbMyc52EmIQEHV9jHBhs7VMWM2spXxMN/GHLPisH4D3uk8VVNyRL9jzxhkMO
	 swLpiZqFXUVSZgzvi3Q6PznwdoQiG5uF5/l8eKOS6obgxZcfUEQLczGdd2Mw54TvQq
	 PT+/bsH6LK4QA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3EBC60DD2;
	Mon, 30 Mar 2026 18:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6617710F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 18:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49F2E40533
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 18:24:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y9Oh0YG02ctK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 18:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43F5640206
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43F5640206
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43F5640206
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 18:24:31 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-66a33f61d80so8098658a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 11:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774895069; cv=none;
 d=google.com; s=arc-20240605;
 b=bNyDGS3rUCoO3uDIw+FVt2MVS2MZWSTIHWzM2Z1MTcV7DAuQ39AAgvhe9EYaVhxZuR
 ISZ5K1usWM8LaW429PkuWEKK0kfYkN3b9j2ixoJKeI26sY34r0FZJCfjO5vPhqEeSGOi
 i8FqlDTwA5gkIWhF2WwZlehgtTGxgrTUZGzlLg8A+I7KcY1d1QWJpzKdFkQhqyqmNtAl
 EAWOcFqL9P23R+mYxs1le6dAtPUS9KbwYzxQNQmKaXUdjStNDYCaG4kF0VpzDZu4pyba
 u3mZR5MJkClEgxEEgfOW/9y5d4MVCXhXDWM9TAj8jNbAsxzsyPKrJrmlXha29vo9dqrI
 Q9/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=H2fCyQVduMiMLHCG7iMXqslB+KxrIKaXOc8AoYNYZto=;
 fh=P0Bf61HY6kfSF4yPvCSikHvkap6/bxuOKmmWd1C2zl4=;
 b=lIycuVpIG0dHbMiS5OslOB6Z9bRx8Lhq1KqLmigZgk8Gb8OZBhOHjwd0yINo1IaoGC
 UVXxhpuYqJqxzGpa2Y3ZsQGZ9tHogrOT+3FaOYJNY8P9FMGiWrDPzKXiO9IgEZIPr1/b
 y4g4vRNgklsK3a061PCSbiwlRFc99aL8ml9X+WZzkBF4HJz94S6WSNuxD+2zjgsbJa/T
 zdt5Nb3YB9zVAQPtDwvTYtlfI1bhRX20QD/pmJI/0F1n/aOB1f+i6eoOehGxMCf169RY
 UznWlf/9NE83cD+BUpKh1Lxx7xFsjjVgeRF2RGjaxwqFsu9dSAW7Od/ddHWd8gqQvdQf
 BKYw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774895069; x=1775499869;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H2fCyQVduMiMLHCG7iMXqslB+KxrIKaXOc8AoYNYZto=;
 b=YZyQbmgpd+QcErl0C8NiUsGZKxw3i3bGeN/N/8na/Ap/DhnqGRC+MunKnRgSddE6no
 o8YDjToDrOgBCy0E0s727F2Y/wyKzDHgMvjJ2LqHVMwGnuUBtoUW4PGw9vvIyZxYv0qw
 K2+hO4Y9luXqHBNuTja2suSrqTNx7l18g/8yUkK6jRJ8SwluFWSjDQ79ct/4y++tObAw
 p7bD5ywusMXyBccBM0rTAxdShpygQYkx7/QCCCcUHwzie6m9r84XoyASWIPqv4EwZ6aZ
 aby8QA47w8p7F4AV7XxwcF7hRfNUb9yk42skpPkoq9WvFgHtR+Zi1SslbWeqOc69x2IE
 LLEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNf6bIrXJULEA7/5IcD/3xYiN1Vpnf2VHgDOgNU0/sxA8a0YyTpx5CXe5u4P5RBIJf0G5gT80x1hH0vAHlif4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxCN7APEGQM4G4PWHL3vMtYE4hBQdueWA4Nb8bdvePBNysTmD/J
 /+zYM70xCWDg+NN3Y9rHcLfs81nRuB77aHU3MgGbjWDXhnT6uAHCKLYP3Fmwn+Zv4qEU01ryNtN
 +vVbnbXGftnHSfATrFZDcPB8OCJWKN24=
X-Gm-Gg: ATEYQzza7nQKaj72M/K8DnqZctR+tu0gX0FQyf3i2D+Forb2CsqceWnGygUN0UxDIp6
 wSoaPd5Er5MfJXm0UK+LfPWUo2H9MQgq6DlopadgJhPkZKysoWaKdZa7T5jtrqJ8Wodn0X/Coi5
 CA3keIGhJUZrifuBoYxOY2xe502d3P9ocIHM8h0+TmO6YkQaGYSJLQKPA+b4/JFsbGHTZH5aZ7x
 54BzPmwNknPmU7Ynrhqg61uf6dxFtg9jhhYRKhU7sdy4235g2Z/YTSlorQiWLl2n0EJ0Mky2Ap9
 DLko
X-Received: by 2002:a05:6402:144e:b0:66b:eb5a:36ba with SMTP id
 4fb4d7f45d1cf-66beb5a36e2mr3030460a12.0.1774895068601; Mon, 30 Mar 2026
 11:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260323182823.5813-1-teknoraver@meta.com>
 <acp4BblnJfpVClct@boxer>
In-Reply-To: <acp4BblnJfpVClct@boxer>
From: Matteo Croce <technoboy85@gmail.com>
Date: Mon, 30 Mar 2026 20:23:51 +0200
X-Gm-Features: AQROBzCzCACh_-BLvnQFRTSbj2uJ0Jgxs7I76lfgNyafJtAFK8kadBcN3cI9nxM
Message-ID: <CAFnufp3BRyJUH0J0Q14N0sj50YjC_OqmP49gZ=z75cYER2t-pA@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>,
 Mohsin Bashir <mohsin.bashr@gmail.com>, 
 netdev@vger.kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774895069; x=1775499869; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=H2fCyQVduMiMLHCG7iMXqslB+KxrIKaXOc8AoYNYZto=;
 b=C5TrJ5zFAQmgY1hsUFx/Ot+msfv8AuQLEN6qMrdmgVmFezFthBWo42oqWj1CpF/Fna
 dnksv9MlSz+1qTWyDzBKcZfa+vOY8ovQqRI7V+mUykB3qncKrjp7tC5rzIqpd2/SInkX
 S1WcKQwXTYkaXI0kowdF3vQf7qdXyV+hl8CqTT0VHwcsxUVw5V1Lb1oVRdnPMvSEzB3F
 p9nIGW+PbaLqBw0kbaq+I93pF1kdeuj4H7jKCNMowwoxe2RfoIyb7QGNmSqY5fZAjGnX
 t0lo04uYRm2tkekPJ+XTdj5Mf/ACwcVlxFRm1LPz1ZUcMqSwT+LHu7yelS1lIS9QDnYD
 78WQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=C5TrJ5zF
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/2] e1000e: add XDP
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.967];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: AD0A435FB96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno lun 30 mar 2026 alle ore 15:18 Maciej Fijalkowski
<maciej.fijalkowski@intel.com> ha scritto:
>
> On Mon, Mar 23, 2026 at 07:28:21PM +0100, Matteo Croce wrote:
> > Add XDP support to e1000e driver. First patch adds basic XDP support,
> > while the second one adds support for AF_XDP.
>
> This set has nothing to do with AF_XDP.
>

Should I mention XDP_REDIRECT instead?

-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
