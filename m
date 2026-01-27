Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGdBH2D7eGlfuQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 18:52:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E692898AA3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 18:52:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 262A261060;
	Tue, 27 Jan 2026 17:52:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s3WsfazdoN8d; Tue, 27 Jan 2026 17:52:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D37A61073
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769536348;
	bh=RL/HGZ7AUNdxSov+yggntAAQqajmYC8nRg6O8zAOw4c=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=C5+qAMRaIxzaAjPFEFxflgkNvQb9Dr4y9Hk9gooKGhAj4NSruJrMCuVSdn/B2i/0e
	 6dln2kgoGm4QQzdzMkHT8+1piE18Z3fNJp5Gb/bOXYBJ+ixGk1+wB1N1Sdgpggylp0
	 CEXpK3XFb4u/frObTtHkjPtPOCrhFmQzceX8C4NgFvBDMHl0ickRN5FQdcJDcuXe4E
	 8pbD9pRa5B4LulUdR3KuINulvaNxOwIbHZx3KNV5SGB1lYqzxZuUQ6/01Ij8HiGv2J
	 BW1hIzyBbzFft/jyEaMziBAv9xFaogW0YYU1nxRCyRNI0i+aJIDZTe6sKSChKaxWs9
	 J+VjnghSWGoww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D37A61073;
	Tue, 27 Jan 2026 17:52:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FBBC2F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 17:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24D9C60FEF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 17:52:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGgUwLDHk-Na for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 17:52:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::631; helo=mail-ej1-x631.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3DC4260FA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DC4260FA3
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DC4260FA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 17:52:25 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-b8876d1a39bso549863066b.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 09:52:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769536344; cv=none;
 d=google.com; s=arc-20240605;
 b=CU1306r3N5/bVerps1QBJXw0S8lpnNCfdiLxSZUCyg1y/0c2tOXnW7GoqTUsTCgNjY
 6tc7NghZ3RUi00FfgrTB8wp6opV35+3P4utT+hJgA2F6AkJtRJ+6ebKE1ij/4KnIO93h
 UMst/Lr3AxZXdZri7UEFtIbw0UGnzDJY/iJnvOEUFy5hEBIPcrWMQbvnqZU6UeCbMkUa
 z++VCiy7x9XYAaWh5g8nQ95HAZTs616JcLdr3BVMf5KeOx8Chv7AEdMTM8eip66OBNM/
 mFOlQZvex3fpxnPGrFPqux98iEzbci9GWvF4BZAlVlqnV2TYFctlDtC8K5M1dZJY+PUn
 b1LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=RL/HGZ7AUNdxSov+yggntAAQqajmYC8nRg6O8zAOw4c=;
 fh=SEjQgqscU1afGT4tLVxgVoyOYyUAuIcoDjvi5/q4wSM=;
 b=SpIISv1/5oRslG3swnGGb/9AExTHZcPpLa0sFlKXH/8QC84SlVaYI7zvPPutPnqXBj
 a61y54KI5Ripbv0zFgjNYGDnA+q5+cCIHuACo9AsQCKRrCaI+fLuunDtaFk7ZYlFXOxP
 x/KIrt9bXZ7RRkKSzez7A5KM7iBjKPj7j4lWTTnG0dexr7ml0ukVgOlxD/EmrGRvJ4GV
 tLMvv+51NgJI515X1fsb542+CEl9lemZWPwleYqO0YEW/hRigNYBWCrglwLC/doWYku7
 12bz0pCQF4CVX+/TX9QoE+WZjroC0UWCmBnJ6NeAs7WOks4j8DDeSyYlViLJK/CijD7f
 wRSA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769536344; x=1770141144;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RL/HGZ7AUNdxSov+yggntAAQqajmYC8nRg6O8zAOw4c=;
 b=Vfi/AiIomttW0MzvgPmxYtcrkl5PLjMkuNA/zY3L+D4Z/rH5eiWRASJIhR9NpEGt2+
 +fK9TqgkAJwVNsJqsU3unEhBnnG3IkUqDwg4VM/X3/mDqOzHeFnX/Z0+o4w5P6zu6a19
 fflisG7mlHENp6jErzUZ/7pP5+Z9rZWNm8yiPikkvZqnFXDJZneDSeMJliqfP6O0ohIW
 Sq4XlPfap6PqDhknS5wnZcNIFOi4UXhHESruu0CUWpx1B0AslR/ipJ1uKYaNHE6G8a2C
 c6WanVWlqiWVTt4jNVIkrDEESK+A3vRheAeXnwGv8g+rZcKb7b9BGHOH+tMmUcB+M+rP
 LhZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfbQ1WcbYGrohfh0b45biWRfGPpEA97YrrwnMWsUqHxByXZmOKOikseNKip8Mwnjo980OLburA11lhZVrInGM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzCRs781RQ0AfnX5YgBUTOYvD6aLznvP+W3c7yyxyah3+ERjmpn
 cg1MJxnNlR4VIXdOlbGTR16NtTGzOdkRlvWdMpQHDvtnN2aeOxWPyPh60uf5QAMtoX3XVLUKLMK
 StFptnToAnCISTj0xLqfeSYN///D4zcwGFZi23KjdpA==
X-Gm-Gg: AZuq6aK3SGSv2SoHD5MWY0KBS4RkOl7EJI2ubK+upVQFxvf5HBTzzUaX03iuRhkAk+G
 Arot0o3aXLo0vBosTZD8GAWjAUwcQEF3Ne6Nq63fJLByDuucvvkhA+QNQlGM6ikvkKjtFM8cDuy
 ZZcra2vIrm7CZvtzKizvrdbW+qfgx/XIVnluESy6sMhdk7+d/jqDJd7rLYlmndPlr3X1xA+iRc3
 uIIs7jJQeoepFHTrmDqha9bbsrYEqlmHM09RkDySMJGWZcnDcrktyJ57xHfHbXl5/1fi+8LSvbc
 mHVF0RRXPZY=
X-Received: by 2002:a17:907:3f0c:b0:b76:49ae:6ee6 with SMTP id
 a640c23a62f3a-b8dab1a3ff8mr209591366b.15.1769536343903; Tue, 27 Jan 2026
 09:52:23 -0800 (PST)
MIME-Version: 1.0
References: <20251201233853.15579-1-jbrandeb@kernel.org>
 <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <d6dcd835-7564-481a-a854-25b187893e6c@cloudflare.com>
 <IA3PR11MB898654344D883B1CC06A7636E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <a2abd596-f8fb-4c2b-9181-7c2c9f0b9936@cloudflare.com>
 <17575378-0c3a-481d-ae8f-e0136509defb@intel.com>
In-Reply-To: <17575378-0c3a-481d-ae8f-e0136509defb@intel.com>
Date: Tue, 27 Jan 2026 09:52:13 -0800
X-Gm-Features: AZwV_QjtxLVcpC7ROKzH-eaEz9ZG1GFQ9cIgDBqaeFV_thRRiLXMknF6DUViIRU
Message-ID: <CAB1XECXEQHuU29BaX4j0iMMsz_2SKkG_uV=4Py9FYVxfT0zeuQ@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, 
 Jesse Brandeburg <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 IWL <intel-wired-lan@lists.osuosl.org>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1769536344; x=1770141144;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RL/HGZ7AUNdxSov+yggntAAQqajmYC8nRg6O8zAOw4c=;
 b=UsBuZQHqiH7ymm3VEfIvDvKUniIXrlmLUZf302VNmrzA9MOkpiVZ95zDavQJhqiQtR
 Kf9k2tHAUo5C6mZ01LqbwaxXpLkHIc5F+cDh1Ae6EhDiDh9588pVW1d/caE7HpzxvAYa
 q5pI9le7KFjv8mdGCl1r78jWRDEdqmga3AzEczmcvRK+m/URz9EEuCuSzKsM+vEfvmTR
 jo/4iJsZu8+0G9C8h0WON39GjTNZTs9tEzRv3ZdvafWr5nbWwFAL1c4HQezgbbxGp1ov
 fruSpJChxGe5c1B97BVj3VOBJGGXZLjJod82JW6rWKwp/JS5NUlMuSNXTHHkDdaMZrAw
 YJ8w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=UsBuZQHq
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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
From: Jesse Brandeburg via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,cloudflare.com:replyto];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:jbrandeb@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[jbrandeburg@cloudflare.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: E692898AA3
X-Rspamd-Action: no action

On Mon, Dec 8, 2025 at 2:21=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.c=
om> wrote:
> Right. I agree with Jesse's proposed change. We still keep the stat for
> the ethtool but we don't report it as a full error to the standard
> statistics. This matches other drivers from our own products and other
> vendors.

Hi Tony, can I please get an update on the status of this patch? it's
been two months for a 1 liner "net" fix.
