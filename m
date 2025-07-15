Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F152B07968
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 17:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC9D783D69;
	Wed, 16 Jul 2025 15:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KrxWFY8e7pu; Wed, 16 Jul 2025 15:18:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C316F83D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752679124;
	bh=/ivYWRJa+wKbkzRo+gsTKC6oLT3ayg8U72Q+PNGL7LQ=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TlkKe6miD493llkyWapiDxT1f70FNVofqlVyrwPEsB2pYstHQ50QKThC7jm4UNGlz
	 fRVB9qe5MS4RhW+xdCf3i/+40OvTismEqGzBkzVxfYjRw3cv3ZDOz8RGkbOIrPGX+w
	 gmx82Pe4YkyRVAjPs4yHKkT6yjnG9iYqf1Yaipqbbe6BPUnV1s9myUVS9LMoLU+xrK
	 yjiqODBUEhPfjMTJ6ckWn0nWBuN5rJ05xHQxLX+4ZrvryDRub0LbvcxYyK7ffZ/iUh
	 4yFcRmXjUr94NNfGeCCuO1d4+fRecT7jeEJf0k4KoUy3j5yJ1DrN9DJX7+hul3hHIJ
	 iZosDE+j3eFOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C316F83D6B;
	Wed, 16 Jul 2025 15:18:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D143D11AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 22:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6984811B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 22:06:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ODWY1g7Vswiz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 22:06:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1049; helo=mail-pj1-x1049.google.com;
 envelope-from=3anf2aaykd8cx70vb7t11tyr.p1zv06ry-9v4rq-yn0yv565.15715y.14t@flex--kuniyu.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F25EB81279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F25EB81279
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F25EB81279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 22:06:56 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-313ff01d2a6so6515901a91.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 15:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752617216; x=1753222016;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/ivYWRJa+wKbkzRo+gsTKC6oLT3ayg8U72Q+PNGL7LQ=;
 b=GMYKQAHLkkl3ffVuuOyvfLK6uu/pGh3ztCKcK1vbfURivqQ8pRrpEb4lfODRZNWxAT
 m3ugL0bOu0/jE5sr2s/gZPFP9+1uAc58INJQJ+eXewuZm1eWC7S7U/9Y+aGpd4fjysbW
 CxaGpp9RM34peN5q9XnSnAlLKzNpNoNs4Y0vhUFpr3D4cZBUaeVIB0PNXo4hsjrDn1iE
 c1FgZ20ym9tqQLHF+DKMeXllZEOzoqSTXUZqjXUksQ+sASRN6w3YLH72ekNk2ArPJUMR
 k6GlU6vdNgS8SddR76D7Ivog81/zA9mAhjfmleFOLIl21i0uLq4W0YILEDn3tyXVLGNh
 ccxQ==
X-Gm-Message-State: AOJu0YwCJBB0j+Cm3g0r0VEBCHd67hjTZlsSQ3WQFJVXrdRvebEQVPJF
 tsOjDsyvMdEfe++2ykwINgMXgv1FaiZX2HtwQ6Dh7e3WrxnlvoTItKMySsnKrdyjye6L1ftIcbR
 PJXRu9g==
X-Google-Smtp-Source: AGHT+IFm+o492D+iYGYVXngXigmjJ56Ak7zLQn6QburTEMVEdENXrustG32q+qYj94bgOju10EwdS2remUI=
X-Received: from pjb7.prod.google.com ([2002:a17:90b:2f07:b0:31c:160d:e3be])
 (user=kuniyu job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:5281:b0:311:e8cc:4256
 with SMTP id 98e67ed59e1d1-31c9e758d15mr851933a91.22.1752617216290; Tue, 15
 Jul 2025 15:06:56 -0700 (PDT)
Date: Tue, 15 Jul 2025 22:05:39 +0000
In-Reply-To: <5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com>
Mime-Version: 1.0
References: <5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com>
X-Mailer: git-send-email 2.50.0.727.gbf7dc18ff4-goog
Message-ID: <20250715220654.1337102-1-kuniyu@google.com>
From: Kuniyuki Iwashima <kuniyu@google.com>
To: przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 kuniyu@google.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 16 Jul 2025 15:18:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1752617216; x=1753222016; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=/ivYWRJa+wKbkzRo+gsTKC6oLT3ayg8U72Q+PNGL7LQ=;
 b=RidI67WeGXvJOvzDX+DjUQjDwsdMnyiwtqay6VH+rDtKGuOnHmkPftFLK0BJ/nQimB
 QfDXC3bmE56BcyE6zR7Wq6RQYTeAMDiu6oF6X7/HzblSDId3RUgr2PubbgVJLr7qDZWf
 CxfvDglC8Zchij9gBjTkIMd/or8Bnn15TVQe/GEEcWQ3h3gHA28KseUlGKEdoG+g6l5e
 d/mdnj7bU9Il6RlwfiOBR7wDBRCm//iO020vJ4wcSGsVbppw423G0AIxhfxQ5EJi/60q
 CoZqr62keHopOEm53g3oMjTsDeR2EW8oIWy9iYi3UCupCyY3GRlY8cY4tW6XRqwXxoPV
 NrkQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=RidI67We
Subject: Re: [Intel-wired-lan] [RFC] Solution how to split a file in a way
 that git blame looks fine
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

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 15 Jul 2025 22:33:40 +0200
> Hi,
> 
> I have developed (or discovered ;)) how to split a file in a way that
> both old and new are nice in terms of git-blame
> 
> https://github.com/pkitszel/linux/commits/virtchnl-split/
> 
> The purpose of RFC is to ask if anyone is in strong disagreement with me
> 
> There is more commits needed to have it nice, so it forms a git-log vs
> git-blame tradeoff, but (after the brief moment that this is on the top)
> we spend orders of magnitude more time looking at the blame output (and
> commit messages linked from that) - so I find it much better to see
> actual logic changes instead of "move xx to yy" stuff (typical for
> "squashed/single-commit splits").

FWIW, git-blame has -M/C to track X-times line moves within/across files.


> 
> Cherry-picks/rebases work the same with this method as with simple
> "squashed/single-commit" approach (literally all commits squashed into
> one (to have better git-log, but shitty git-blame output).
> 
> Rationale for the split itself is, as usual, "file is big and we want to
> extend it".
> 
