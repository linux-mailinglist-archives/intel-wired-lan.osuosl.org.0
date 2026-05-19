Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOBAK93FDGp2lwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 22:19:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBB3584961
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 22:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC6C760BC7;
	Tue, 19 May 2026 20:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48pnU-qEOzbC; Tue, 19 May 2026 20:19:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6252D60BC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779221977;
	bh=EDC3bKh8/p4QwHADrhgrb3dyAQ2dl37DGNBILQ8Vl0Y=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uypdv1FWbPIdlxCRddulQ3klo27EhO43M41wz178ay34F6gqcn6G9ikMHbb98/ml5
	 7f8Q22lNvNCqgxhG9cCZUzhK2MJ+3PQMskkaWiX7g00lJNNa9h/OX4dNlP56/tTOiP
	 9ZMErPkqCNZajf2japX48zcY27L7aLKb3J2HbjACcvPH07PgFB+rrMcOWStL83b+uv
	 d+9aOmV4vcUBzT9NJhciCWDvdy7tq4lkZziMrJR1nHa1SKbm/IUkRmUfrheDQ9UkXB
	 4bct0+ItBxH0ln7WLpmn4QwoPviZI3SvFd09/PCKsF3prRgWHOgjRQzHuj6x/RaR9C
	 z9FFlrmW23PUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6252D60BC3;
	Tue, 19 May 2026 20:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B4CD1B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CC6560BC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:19:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rzfV8pdrSZcB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 20:19:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c2a; helo=mail-oo1-xc2a.google.com;
 envelope-from=devnexen@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6B7F60BBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6B7F60BBD
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6B7F60BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 20:19:35 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 006d021491bc7-6969c864c89so2239524eaf.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 13:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779221974; cv=none;
 d=google.com; s=arc-20240605;
 b=OSZ7msQaQbNVx6bXxMyJZah525w4/ypmSFpxBQtiS/NlqxH3pKxM9pd6iStnPZ3Np3
 fV30dSt407rAWPK9t7gH4L5tEUJgyUmNoLvUmNJOr27p3KFhkeubxCRfroLDjKkcoZlj
 iAPn8xfT4nwtHH97PxNqmdd1y3NdQXfVhvkrrztFzhOamNf82gSQHpo4iFtoilelCTyt
 Ud773nJ6Mr99x2GwMDnKccFBQEBeyHwRV3Jqy95v3Q2gCn3JBdZpM2N3CcEZinITb8sG
 JsumRwX0NaXRFZiMe0fy7+cUnoHRRSVik7ZALvP6lmuDegbgXCFZAiJR/pGEr/+AiPjw
 7QbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=EDC3bKh8/p4QwHADrhgrb3dyAQ2dl37DGNBILQ8Vl0Y=;
 fh=clVyllgTPP/uqCd61xTbxg4AI3kh8U7RCMJGIZC3Yvg=;
 b=Pe5/42Ozj7LF1hwfMCFPCtoJ91WqsV/eW9HvtC7YPOHCkV0gFWVCMeor+NTqG0cuhL
 /uk7UZBspllZnplftASJfA+nfwE7E+sqPuMNNndsuQP5WeooLsFZUH/xkKCPgarl7vhc
 N7iG7tu9tj/NaQ1FfZvnb593hIf+FUcSo4VGY4EyTHCJCpWsweliu+7L6WMD5+vkXeap
 Gxltm+li749j/TKRTSqT8JjU/q+rBKAmTpWZFNIEY8yo8dS05p6IZvVnK/QNqJz1xf+m
 ab1xqtrOILlNE1/d+t1kDZlfvDszP/lrwTgXaUxfiAy9WpF3Qxf0cFZrJXWe5NkwroWn
 bZ8A==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779221974; x=1779826774;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EDC3bKh8/p4QwHADrhgrb3dyAQ2dl37DGNBILQ8Vl0Y=;
 b=NhlYMcUQkXSgonvmUTocsdIceJB/GowoFI9/2RaB4rPvK7nCyVYuDRs0OWzfIj6wnt
 5qFvtVReiLxznEnbRONDI+MNuFsCnP+m82UXwx5ef7JxK/f9NkYU2/h5q68mfVEt+4lb
 SF+JAYqR4GTq2IPlhAvqz6ZjwGpxRnnNggBpq4Vbja70VeCG8HvQWoXd13nsoOrOF+nR
 +zIuibMiMkxWuBbQgmFGgMX0PoGI90LF3rdkWZWUSPT3qZRBGtOt+/UT7j7OcXECJy0b
 vZRM3300c+P0r+KAVBfsO64J5CHNxo0mtC1HTUnJgcxCG1H7SEys8/yWficfiq0jcDxx
 QSlg==
X-Forwarded-Encrypted: i=1;
 AFNElJ91LkZ9QP3siYdM3noZeeiutTcjx+F/ccSxlr/bZ+om5CFo92bU4spD3n5h0SfAPxV73YelMNmJMrNnfpA1c10=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy2IPV0tCyYMWC3oWkYwkTPWpea0mx8ODlORWc06wSJYKhHwJob
 rHWQSqAk23TQtMrpmT42A+rVrBL6ShSJR2GoSWUr84Fccr7/l/DTNeUUWow9QUgg+rlKLZCW+Se
 RlN6I0FhYQVKKddvHYiJn8cTbPLEXaPQ=
X-Gm-Gg: Acq92OG6zaQume9iaUPHUAhQCqByoYXLaJtb2zJuVUDh+P2cpA8Ggi52M5h9BDDYXyL
 Xna9BNVieeQdkOfKC2wWEdghwna4XNYzIegUVur3ZzCVk5DsA0Tw7wptd6TPtm5MrtCp5T1omrh
 TU9YgkFA8V9VFtx6/7HPnNN7HCUA3UZaMm1vQygUHrRGjib1TcfWx/4tEEhLTzRbNgKEAP6jJ8i
 xFCXRrTNJR9+iwjRIejvUiA72UlMqm+w+pF8GLBGpxmFPrgM5sznGWkz9EPQzH7W6viWRXzfUYQ
 IOoBDQdLJMae1ntqnuvMftfSW3jDq0KlDrF6zQ==
X-Received: by 2002:a05:6820:8184:b0:696:15ed:69fa with SMTP id
 006d021491bc7-69c94588db6mr13429873eaf.48.1779221974374; Tue, 19 May 2026
 13:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260514183019.49527-1-devnexen@gmail.com>
 <20260519195734.982404-1-horms@kernel.org>
In-Reply-To: <20260519195734.982404-1-horms@kernel.org>
From: David CARLIER <devnexen@gmail.com>
Date: Tue, 19 May 2026 21:19:23 +0100
X-Gm-Features: AVHnY4JJ0Sk-6eRtWSkgzWM6vbD_3Px-KdWLRziSGPAucGEK3w1KDvkaEUsVkxI
Message-ID: <CA+XhMqxFmJm_fQ9aqRmwbG10+Bs8RgJ5kAff9-qtcrvgmfFMug@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1779221974; x=1779826774; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EDC3bKh8/p4QwHADrhgrb3dyAQ2dl37DGNBILQ8Vl0Y=;
 b=CZOdPvrM47L0UTeMwaaw5d6MZ+G3h9Z6C4SrV0deqGaMi/3gd0zOngQZxu7glxTLw8
 IZ/5uPqp5BPQf/J+y+xYtG7Y0OpQHEdllV2SLhK6fCFA+ygJQUbaV9MqBeh78wSw3WoT
 AoTJ0z+Ea0K1AflZkcoOQ4H/0atPha+5l3vVVSkG5wYQLJeC7QAsIWFmGrx6sPlrmhHT
 /wdRUMqmwVtvS21TydA1Q5cl9sPKZB2atYIBjkg8PmWa48zyp6cafsyPQ7Uc/V2BgbOt
 Waw3g59lEgQ7goApbK4FxkqAkstIK2a0MSDDdIQ1+xHQ1y9X9hsNQZoZiwJEShG8tZn7
 NLBg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=CZOdPvrM
Subject: Re: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1FBB3584961
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> This is an AI-generated review of your patch. The human sending this
  > email has considered the AI review valid, or at least plausible.

  Thanks for relaying this, Simon.

  The scenario this patch fixes is sequential, not concurrent:
  idpf_idc_vport_dev_ctrl(adapter, false) has already returned and
  vdev_info->adev is NULL by the time ndo_change_mtu reaches
  idpf_idc_vdev_mtu_event(). The original code dereferenced
  vdev_info->adev in device_lock() before the NULL check and oopses
  deterministically; READ_ONCE() + early-return resolves that.

  A truly concurrent idpf_idc_vport_dev_ctrl(_, false) racing an
  in-flight MTU event is a separate, pre-existing window: the original
  code took no reference between reading vdev_info->adev and
  dereferencing it either, so this patch neither introduces nor widens
  it. I haven't constructed a concrete interleaving against auxiliary-bus
  teardown and have no report of it triggering.

  Happy to post a follow-up bracketing the handler with
  get_device()/put_device() if you'd prefer, but I'd rather keep this
  one scoped to the Fixes: target.

Cheers.
