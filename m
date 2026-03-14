Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOt+Cn8Ltmnv8gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 02:29:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC5C28FC30
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 02:29:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ADDC410E7;
	Sun, 15 Mar 2026 01:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oirmj2ay0ntC; Sun, 15 Mar 2026 01:29:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E8E410E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773538171;
	bh=+9DjsqKn2tw/eLc6Maj+fVaa2roLgkbOUSwE8+V3Y00=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BT8AEpu7gzQoXLrGWD4SJuDv3PBnjHAWNW2QygaGpCcp/8E+EWEuGbdps4lS7mfR7
	 r9cOmtrW8WZ7HmSyQ/i9wiy7/KOiwgNPWz9merfpNfHDVGMrtXEA3qnj8sovXwjnJx
	 Gf18qJi2Seh0No82AfylXyrtbl/G2148RhUf1JB6xAs/qQBfT/P9bIDOel3ox2wS07
	 FVM+aWIguimLKiLKOL/pvlfvtqDqdHnS44m3Lu5jmPzxARKXHXO5n5va+pUA4WMKPL
	 Sydk+wrzJPRPrxQfFFKZnfqudKtW31T/2MBW2bMT8tow2WDdgrJFp/BoQxIk/mDvQe
	 tOfxQFDTO3Z5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9E8E410E8;
	Sun, 15 Mar 2026 01:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 833631B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 01:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 601688242D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 01:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LiSI-HIczSX2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 01:29:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4F36782428
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F36782428
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F36782428
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 01:29:29 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-661b08b04deso3758739a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773538167; cv=none;
 d=google.com; s=arc-20240605;
 b=MbR7hQe+bqzs0aPgizzE0Q63WOj//+wjUzPxOGel3oEb7RD5K7QIZl64FPwpgBfsae
 fnPvBpQXVQLpPTcNjRsah8JQ8tqmphdaIGXKzSS3z/yXClZF0N3YH70PSwDfA/GD7QF0
 dP82wi/6eWejJ+Za3mFRDu27CUbzxAMGwaiSEwScuHy3TbWOgSnj8EgTuYffhUanGkCy
 Sf305YS/SG3pVDA2SERMqdIFOTTI8/+J9EIj4rcbora3/TwYaeLjO+XOdrA714AbZ+ol
 2mmSdkyvkoGH13yJoGX+rFxsCy3D6UdQpIaOxN2+gYW37f4MSzKA4TipiremMfgfsebH
 o/Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=+9DjsqKn2tw/eLc6Maj+fVaa2roLgkbOUSwE8+V3Y00=;
 fh=XQwxUPMJeedPuJjWpWjNmZhy+YyUc+ND11UD8VAa9Rs=;
 b=UCQDM4juQw5y5Ob6Dm48TZpmcKtpRIyqacWilsy4LD8ys5pur8Yp4Z09r7aVbh8s//
 5JDjD53EQojMzwmWaPYp8jDO/Sqn+kmzjlvzjbH0tA4BH80jt+iN+MWFS8EIybkJuGv4
 77GqkJlaeS3NOKkIioKaWT8dxQmldRNncPs/iNY4SvzyA83+DSLc4X7auZy5HJPCcC6l
 rsbI4PanoW3+3SUIOC53EF19pM0icYMlxsPb6L5AUOzK4n4VRCnznxspCL8BpV/jTdds
 SasaBi7zgeaUQ3caIrABSDK8/QhgYvrk/0HblxcGVWtrgGdv46wJLeNWZXeMt5bWyX3G
 g9iA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773538167; x=1774142967;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+9DjsqKn2tw/eLc6Maj+fVaa2roLgkbOUSwE8+V3Y00=;
 b=RxE/CAyBb9SRrgac2Lg8IFV1d9PfNYnbryv1YwR3p1lHYbo/5RRgEb0/g8FHabvNOF
 sa8frJWyJ+9iq/jQUx5ZT2a4hOgOyOIHnDEvA1QeNIOA4ltbECXGvJztBQ+G4f1vzffs
 eHmjiTJtIUTwqxZjPPpaHDExkaOX8M6cycrHuupr8byrMSfJSDAOKst68M40ZFLXAEBj
 xBqVQOgUgvI7wSFlLngepsx2//qOK6bFPEiRh3l++ZuufkxyqSNJwmY9xvxYEYz3HDdq
 9di1c80SQmmBuz+dJ4hzxc3JPKX/z5hsOCi+Lo3eN1Bxz17Gn0X4J9jh6suG4X5HRW44
 hybQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUAUFB9qhL/qtyFd6yAhOrvnou5iyNX9r2AWeqg73ErZj63YrJyACkgVhcgxdLtH7OTBH/YckZg4abJcXM/1c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxtIdZRbyYmPpVm57zPv3NnRxEeOgELGSOm7F+xkSObMx/8Re6n
 mumkbw67B6hI468K6rics4Y8bgGjfT0Qd3oh2m+j2QaG8P8qUE/+dlo/46um2DouSm7NxmHt0rn
 iWvJVkPZAPu3AQfQMzG44Z28+PSGmpmw=
X-Gm-Gg: ATEYQzyfbvD9U94JirPCw6eS+IZCZ2s3nCtO1EJCtJyGQod3m6OF1RH7KcsqCmYoty/
 aQgBHp9ZgE2PXe1Phzjr3TlPV1wN6ctHToYhBeGWqyo5KHFakr1X04G9GdmkOT3Hh/YxJxlQRPH
 ldrcjoQdSkbcod4B89ysXjSSGT8ZpcGRGKjOTmLtokB+2M5mzHq14Nb3DlGOQJibxDCNYh6d2pH
 FukkqIcrJrYObaV5ng1hAQXXutDFPGOTEZBImmMji8qeJx7wS3kEJXsn6SpANuMn5gpfw7OZtCl
 hWuryP7zQlm/OZG7iRObhybQhWyYlllwadNJ4Uqkktwli9uSTilAWlR/kiIMshLBgYfHrBQfVw=
 =
X-Received: by 2002:a05:6402:2110:b0:663:a321:6f98 with SMTP id
 4fb4d7f45d1cf-663babbee24mr5371944a12.19.1773538166565; Sat, 14 Mar 2026
 18:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314130601.0ec7a534@kernel.org>
In-Reply-To: <20260314130601.0ec7a534@kernel.org>
From: I Viswanath <viswanathiyyappan@gmail.com>
Date: Sun, 15 Mar 2026 01:29:14 +0530
X-Gm-Features: AaiRm50zmYxyM6Qp4TsIFq_HWR2boNHuFSZpLkcLZjdTo2q7GFDvDFoktscwJvw
Message-ID: <CAPrAcgMBQsVAG3utAD=7dp5tU1jjEBPO5QQGpMUrDu+rMrDJaA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com, 
 pabeni@redhat.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 eperezma@redhat.com, xuanzhuo@linux.alibaba.com, jasowang@redhat.com, 
 mst@redhat.com, przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, 
 jacob.e.keller@intel.com, ronak.doshi@broadcom.com, pcnet32@frontier.com, 
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org, 
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773538167; x=1774142967; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+9DjsqKn2tw/eLc6Maj+fVaa2roLgkbOUSwE8+V3Y00=;
 b=bd99oTI1AEkx8M2FMd6V0119ikYX7sUbXjUtxHvyn3oo1KRs+TJn8S5BI9FDwfXigk
 PdKNP09Rz0VrOcGF2bX/F8Bd0mdP8gUvFRpBq8Vd1quQ2LUN8EZL6UveFxWHWj5+ixTr
 bVQ5/+3ysKLAmRFk45PG9Oa0XHvlKNZo4AX5WL0sPbAT5nwtW8L/9Mb5nYIt8Vdia90P
 7BK2RTw9mHc2fAscYssM2qOTXGuChMw30/M6onANIT7jyPXUfZvON25BLf8CAKm/EnTS
 EWfO9GyyS3TSJoOw2r/txAZ8kYkBLXDIQzUkaEv00dWeGuEVucWqly1K+raIHb4w2RbO
 2d4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bd99oTI1
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/7] Introduce async
 callback ndo_set_rx_mode_async
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
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1AC5C28FC30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 15 Mar 2026 at 01:36, Jakub Kicinski <kuba@kernel.org> wrote:
>
> Stan is actively working on this:
> https://lore.kernel.org/20260313145113.1424442-1-sdf@fomichev.me
> I feel like I spent enough time reviewing your attempts and Stan
> will not need as much maintainer attention to bring this to
> a closure so let him cook. Sorry.

Honestly, I should be thanking you for not throwing it out sooner. I
don't think I was skilled/experienced to actually make it work and
someone more qualified should handle this. On the bright side, That
means I am now much better at solving regular boring bugs and I think
that's what matters. Cheers

Thanks
I Viswanath
