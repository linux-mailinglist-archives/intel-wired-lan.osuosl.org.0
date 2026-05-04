Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHX1MQVy+mkDPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 679FD4D46AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C6E40CA2;
	Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1VQkgHDtjhCr; Tue,  5 May 2026 22:41:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B312A40C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778020863;
	bh=gfvrUqZPl7IK8aEaTm2E0KgpL5vRE9CMQj+nHgwI1uQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YtsAZsZcRP0q+Ij/vbo3AjYal6INw3hSZiPsZ9qIlxoAAFShT1GEj+lBG6miLAKk7
	 FqeRtYaI4jKg8OJjeRjchzWab3G9I5PRvIAsiiDz1GV7jzxgvtbaOacQx4iRIEkXeo
	 9as7fgZG9PFBRj0X7+X9f0r4bYiqT+UL/C0tFJtp8nljbJ6zDwzp4HVO9Py7eU79fR
	 GFQHnLzF1wAv+dX7wy+ykVrO8nnabaADoph3q3MuG6bPKs9KnLpCMib3jlW3uXI/ig
	 kBHHqk3cmv1wsRJ06dmBKYhQ53Pa61maC3uIyxGv8+OfwC5TLN4V+4je3Btvn60muh
	 BagDS6TxIwKuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B312A40C48;
	Tue,  5 May 2026 22:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0398190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A5C8184566
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZSOT7v2NVnP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:06:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:4860:4864:20::35; helo=mail-oa1-x35.google.com;
 envelope-from=devnexen@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0AB5844D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0AB5844D3
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com
 [IPv6:2001:4860:4864:20::35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0AB5844D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:06:09 +0000 (UTC)
Received: by mail-oa1-x35.google.com with SMTP id
 586e51a60fabf-43034c0fd27so1434315fac.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 May 2026 07:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777903569; cv=none;
 d=google.com; s=arc-20240605;
 b=gZspOg0FJB/roZ7Gr/34HkNER7KoAmWD7N6Pr42owgQietcCqnCAwOCawtL09Iozxi
 vpJf3Vuea0gK683xlQf3cSh5kMixN1IrXs7Cdhl1uNoowIcy2IcLt5oG0PnkrETSrTPC
 ucgwjpxZPDeaATSZG1B/wb9SPSYnvr8I8ASTfdQjJL//l2XWrxh8hl0SaZNflQ29jtNb
 10VagFssKdh2aiSagU17GXFPbclGtrrRl2ODAZRn4r3qEmINNpWM2GZEEKbEOJpJoIAC
 pXAoLN1jsbyQKfH6Hiio6paVy0H9i+c2k2YHXLdPX9hyriU5uASEhOOPKL7kN57WR1/n
 zfoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=gfvrUqZPl7IK8aEaTm2E0KgpL5vRE9CMQj+nHgwI1uQ=;
 fh=27I22fgwMyzGvvefKh/5d8mPzZd6sgX6uRAzGwYExpA=;
 b=YG4mNlrQxD4UZGZJFplVezWOgXo+ZZ9Z7raJ4shqv5DkYH7xiRYIayhJLsXC3ZR8wD
 Hj7lSUoCROFrrz001YYQiy1EcWmZeyPcozcA5HScZq+MOW3ZNSRPdvPhyuMejB4gXgXn
 w9f+6m/r4zUkubACHCcWjRat/Dn1Y6E59tTS5/ye0lXJ9EmhCWo5Sl7MrNdI+B5oR8Dg
 mLwYmT7CCvc5+rRYc8ozrOV0L+E++9UfMOpmxTboN9mQIjRtCbOZE2Ofh9emszF08qdW
 a924S1y7fk1ws1B9lwIweSA9jjGSLCBFaw7So3UDayS0CySl6ByUlhk0DJbbaxo3aMpM
 YWQw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777903569; x=1778508369;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gfvrUqZPl7IK8aEaTm2E0KgpL5vRE9CMQj+nHgwI1uQ=;
 b=PYfm8yDaviEoXCnz6eH/FGDUiUiMhzP599qCEc5oCaGly63u4DMqVV1pJJsItQqov0
 7JueM5/X+5OLFcCKp5jqsjgofkXbw26StF1OfwhzZk5TZ/TqpZHfs99egxLdO+PaX3Dy
 y4bNy94S/44dFxfUpDV14w9d8HFZWlKe85RdKjO6Wn/Jy0S69S1FOx65ghGFLGNvxxoX
 yEg/sKq9rDkAKV0c/yDD8HZzStz6INUppx6UFB1WEfJSY70+Ko1SemnyI5PFsE51i/Yo
 lxzqBd2UFc8QZsEat82jr56XluwkLm3fmL+brNTNm8u8eubc3XO0WDlzdoupaJhXRgLR
 umLQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/FMEz1h9fyIKO3nrTOuBP0kMFwbQ0MqG2gGwV6xA6WfJF3aIIcF0xFRFhlNTgId6CBXYK/IuavxMk2VN6aXpg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YznBd+kp8vOmdRVox6MelIzYnCe186atLX+emf9ZFU/9NoES8Ax
 EWEk+6ycsYLI0IMFiezIwr7CzJpc2rzHukSa3o0iKtrFuvCOWn0yNxbqei2MoAfAN8vig06QUxT
 xx3pEu377gdcsuqqBfrFakRwAHsmN5+Y=
X-Gm-Gg: AeBDiesNB1GXPktSjQKHiienGOq3oTRzj+sSGvE4Q7BYLt++fgu29S7kauC3gaqpQ/G
 SU1mDdrw09b7srPcYLnEtp6icV8Wvddj5N10gptyGwEIO+obQnmbDWf0B6ikTZbwyPiTMR4QApN
 Zppp3RMZoJev861JJkiom/gkWWVHR/+wypSj+e9YKUzxsZ1pglHJialMbG9DxKSszQ6/6MBg8PX
 z5myI0QzrGMQLPpGcpwjuCg3l600SCZysWEbtKkeX4YagwIyEqHIxfOMUIMPSlxMfmcNPioFf26
 38h4aREB0J4CxiVaS4k+9KTRnJYL/AlT8XhJx7YAkOEiRbiG
X-Received: by 2002:a05:6870:16f1:b0:417:435c:ba0a with SMTP id
 586e51a60fabf-43476271a2cmr4601230fac.33.1777903565307; Mon, 04 May 2026
 07:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260504062257.77460-1-devnexen@gmail.com>
 <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
In-Reply-To: <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
From: David CARLIER <devnexen@gmail.com>
Date: Mon, 4 May 2026 15:05:54 +0100
X-Gm-Features: AVHnY4LwHvTUwFkSxIZqjPr64tVI2rt-vWGl7Dm7NqH9VYh_y_KHOL51zrX-pI8
Message-ID: <CA+XhMqxjWOXVJXGUx5BE+U0S0SOOoSwaKu8eWigS=J5EfFejcQ@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 05 May 2026 22:41:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777903569; x=1778508369; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gfvrUqZPl7IK8aEaTm2E0KgpL5vRE9CMQj+nHgwI1uQ=;
 b=BBZVejpmm+pnJ4oobCZYeD3XC+sEr8DccfPYuFq5UMa0SrnDzaSP9bhRLDhuihnEoo
 nODQBaV32M1eAyJsRAKXlMt7yhMsfgWIQ5+hgpv2aschgIayQiNyfKfuksYSw/ykDw41
 2yFPq3WhYGcCVeouIYqJDkAwbFG98c8quIr2QgiG3rm1rKHJd8Xk8cxqeyutCr+s2q6+
 Zc8bCHEB11J1YzOf3o0uGc0HhFkSAOK97AT8pCAD0bs+2ZE/ER6wSUo8f/n5LzEcp5+r
 y30YP0to84B6B8F1mF30xvsMu0SroDruZ0ZtAloKcsVItrqk9uhVVR2twW8uV1ycDJow
 0Fug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=BBZVejpm
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: E610: do not fill EEE
 lp_advertised from local PHY caps
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
X-Rspamd-Queue-Id: 679FD4D46AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[32];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]

Hi Andrew,

  No E610 here, found it by reading the code - the X550 path
  (ixgbe_get_eee_fw) uses a separate FW_PHY_ACT_UD_2 activity and
  ixgbe_lp_map[] for partner data, the E610 path just feeds
  pcaps.eee_cap from REPORT_ACTIVE_CFG into lp_advertised. None of
  the IXGBE_ACI_REPORT_* modes return partner info so that field
  can't be right.

  The set path goes hw->mac.ops.setup_eee() ->
ixgbe_aci_set_phy_cfg(),
  so negotiation is in the firmware. eee_active / eee_enabled come
  from link.eee_status from the same FW, if those bits are right then
  negotiation works. Can't say more without hardware, Jedrzej or
  Aleksandr would know.

Cheers
